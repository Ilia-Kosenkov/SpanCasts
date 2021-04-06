# SpanCasts
## `Span<T>` to `Span2D<T>` cast for .NETStandard 2.0 (and 2.1)

[[Microsoft.Toolkit.HighPerformance]::Span2D<T>](https://docs.microsoft.com/en-us/windows/communitytoolkit/high-performance/span2d) is a type similar to `System.Span<T>`.
It interprets a continuous block of memory as a 2D array and provides a view of a rectangular sub-array of this 2D array.
If a source array represents an image, `Span2D<T>` can point to any rectangular subimage.

Under the hood `Span2D<T>` uses the same technique as `Span<T>`. It also suffers from all the problems `Span<T>` has in .NETStandard 2.0 runtimes.
For .NETStandard 2.1, a special static method is provided:
```csharp
public static Span2D<T> DangerousCreate (ref T value, int height, int width, int pitch);
```
which can be used to construct `Span2D<T>` from an arbitrary managed reference `ref T`.
This effectively means that the following code is valid:
```csharp
Span<T> buff = stackalloc T[64];
Span2D<T> view2D = Span2D<T>.DangerousCreate(ref buff[0], 8, 8, 0);
```
This library is created to provide a similar functionality for .NETStandard 2.0 (of course, with some limitations).

## `Span<T>` in the legacy framework
Because of the limitations of managed pointers in the legacy frmework, `Span<T>` for .NETStandard 2.0 has the following design:
```csharp
public ref struct Span<T> 
{
    private object Owner;
    private IntPtr Offset;
    private int Length;
}
```

When `Span<T>` is created from an array, array is assigned to the `Owner`, and `Offset` is used to point to the beginning of the array slice within that managed array.
When `Span<T>` is created from an unmanaged pointer (like `T*` returned by `stackalloc T[]`), `Owner` is set to `null` and `Offset` contains the raw pointer value to the unmanaged memory/stack.

`Span2D<T>` is designed in a similar manner, but has a few extra fields. It uses `Owner` and `Offset` to determine the beginning of the viewed memory block and then `Width`/`Height`/`Stride` to correctly select columns and rows.
`Span<T>` is opaque, it is impossible to check wether it points to a manged object (`Owner is not null`) or to an unmanaged chunk (`Owner is null`), preventing construction of `Span2D<T>` from `Span<T>` in all cases.

So, to manually access `Owner` and `Offset` of span types, a trick can be utilized.
Spans are structs, so it is possible to create another struct type that mimicks internal memory representation of span type, but provides access to its fields.
An instance of, say, `Span<T>` can then be cast to that `SpanView` custom type with a method, similar to `Unsafe.As<Span<T>, SpanView>(ref span)`.
However, this is invalid `C#`, as `ref structs` are forbidden from being generic type arguments.

As a result, this cast has to be written by hand, and it can be done in the `IL`.
This project implements that.

## Unifying .NETStandard 2.0 and 2.1
The [2.1](https://github.com/Ilia-Kosenkov/SpanCasts/blob/master/ILSpanCasts/SpanViews_netstd2.1.il) version of this library is just a wrapper around `Span2D<T>.DangerousCreate` (with some additional checks).
The [2.0](https://github.com/Ilia-Kosenkov/SpanCasts/blob/master/ILSpanCasts/SpanViews_netstd2.0.il) relies on custom types that allow reading and writing internal span fields.
Both versions provide a single entry point, `Span2DExtensions`.
A static extension method has the following signature:
```csharp
public static Span2D<T> FromSpan<T>(this Span<T> span, int height, int width);
```
which allows to write the following valid `C#` expressions:
```csharp
Span2D<int> view = stackalloc int[12].FromSpan(3, 4);
```

## Testing
There are two cases that need verification:
- `Span<T>` constructed from unmanaged memory (pointed by some `T*` and which never moves)
- `Span<T>` created from a unpinned managed array, which can be moved in memory

The first test is trivial and is doen using `stackalloc`.
The second one is achieved by allocating a block of memory before the test arrray and then calling
`CG.Collect` with `compacting` set to `true`, several times in a row.
It can be shown (using some unsafe pointer arithmetic), that both .NET Framework and .NET actually move the underlying array in memory.
Successful tests indicate that even if the array has been moved, `Span2D<T>` points to a correct memory region.
