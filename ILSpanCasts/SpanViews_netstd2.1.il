.assembly extern netstandard
{
  .publickeytoken = (CC 7B 13 FF CD 2D DD 51 )                         
  .ver 2:1:0:0
}
.assembly extern Microsoft.Toolkit.HighPerformance
{
  .publickeytoken = (4A FF 67 A1 05 54 8E E2 )                         
  .ver 7:0:0:0
}
.assembly ILSpanCasts
{
  .custom instance void [netstandard]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 19 2E 4E 45 54 53 74 61 6E 64 61 72 64 2C   
                                                                                                           56 65 72 73 69 6F 6E 3D 76 32 2E 31 01 00 54 0E   
                                                                                                           14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C 61   
                                                                                                           79 4E 61 6D 65 00 )                               
  #include "Metadata.il"
 }
 
#include "ModuleInfo.il"
 
#include "EmbeddedAttributes.il"

.class public abstract auto ansi sealed beforefieldinit IK.ILSpanCasts.SpanExtensions
       extends [netstandard]System.Object
{

  // 01 00 - Preamble
  // XX 00 00 00 - int32 number of params T[] elements (if present)
  // XX 00 - int16 Number of named arguments
  .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 )   // Empty ctor
  .custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = ( 01 00 02 00 00 )  // NullableContext((byte)2)
  .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = ( 01 00 00 00 00 )         // Nullable((byte) 0)
  
  .method public hidebysig static valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T> 
          ToSpan2D<T>(valuetype [netstandard]System.Span`1<!!T> this,
                      int32 height,
                      int32 width) cil managed
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [0] // Return type
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 )  // Span2D<T?>!
    .param [1] // First argument
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 )  // Span<T?>!
    
    .maxstack  8
    IL_0000:  ldarga.s   this
    IL_0002:  call       instance bool valuetype [netstandard]System.Span`1<!!T>::get_IsEmpty()
    IL_0007:  brtrue.s   IL_0036

    IL_0009:  ldarg.2
    IL_000a:  ldarg.1
    IL_000b:  mul
    IL_000c:  ldarga.s   this
    IL_000e:  call       instance int32 valuetype [netstandard]System.Span`1<!!T>::get_Length()
    IL_0013:  bgt.s      IL_0026

    IL_0015:  ldarga.s   this
    IL_0017:  ldc.i4.0
    IL_0018:  call       instance !0& valuetype [netstandard]System.Span`1<!!T>::get_Item(int32)
    IL_001d:  ldarg.1
    IL_001e:  ldarg.2
    IL_001f:  ldc.i4.0
    IL_0020:  call       valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!0> valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>::DangerousCreate(!0&,
                                                                                                                                                                                                                                   int32,
                                                                                                                                                                                                                                   int32,
                                                                                                                                                                                                                                   int32)
    IL_0025:  ret

    IL_0026:  ldstr      "`width` * `height` > `this.Length`."
    IL_002b:  ldstr      "this"
    IL_0030:  newobj     instance void [netstandard]System.ArgumentException::.ctor(string,
                                                                                    string)
    IL_0035:  throw

    IL_0036:  call       valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!0> valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>::get_Empty()
    IL_003b:  ret
  } 
  
  .method public hidebysig static valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T> 
          ToReadOnlySpan2D<T>(valuetype [netstandard]System.ReadOnlySpan`1<!!T> this,
                      int32 height,
                      int32 width) cil managed
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [0] // Return type
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 )  // ReadOnlySpan2D<T?>!
    .param [1] // First argument
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 )  // ReadOnlySpan<T?>!
    .maxstack  8
    IL_0000:  ldarga.s   this
    IL_0002:  call       instance bool valuetype [netstandard]System.ReadOnlySpan`1<!!T>::get_IsEmpty()
    IL_0007:  brtrue.s   IL_0036

    IL_0009:  ldarg.2
    IL_000a:  ldarg.1
    IL_000b:  mul
    IL_000c:  ldarga.s   this
    IL_000e:  call       instance int32 valuetype [netstandard]System.ReadOnlySpan`1<!!T>::get_Length()
    IL_0013:  bgt.s      IL_0026

    IL_0015:  ldarga.s   this
    IL_0017:  ldc.i4.0
    IL_0018:  call       instance !0&  modreq ([netstandard]System.Runtime.InteropServices.InAttribute) valuetype [netstandard]System.ReadOnlySpan`1<!!T>::get_Item(int32)
    IL_001d:  ldarg.1
    IL_001e:  ldarg.2
    IL_001f:  ldc.i4.0
    IL_0020:  call       valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!0> valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>::DangerousCreate(!0&,
                                                                                                                                                                                                                                   int32,
                                                                                                                                                                                                                                   int32,
                                                                                                                                                                                                                                   int32)
    IL_0025:  ret

    IL_0026:  ldstr      "`width` * `height` > `this.Length`."
    IL_002b:  ldstr      "this"
    IL_0030:  newobj     instance void [netstandard]System.ArgumentException::.ctor(string,
                                                                                    string)
    IL_0035:  throw

    IL_0036:  call       valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!0> valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>::get_Empty()
    IL_003b:  ret
  } 

  .method public hidebysig static valuetype [netstandard]System.Span`1<!!T> 
          ToSpan<T>(!!T[0...,0...] 'array') cil  aggressiveinlining
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [0] // Return type
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 )  // Span<T?>!
    .param [1] // First argument;
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 02 02 00 00 )  // T?[,]?
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  brfalse.s  IL_1000
    IL_0002:  ldarg.0
    IL_0003:  call       !!0& [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ArrayExtensions::DangerousGetReference<!!0>(!!0[0...,0...])
    IL_0004:  ldarg.0
    IL_0005:  callvirt   instance int32 [netstandard]System.Array::get_Length()
    IL_0006:  call       valuetype [netstandard]System.Span`1<!!0> [netstandard]System.Runtime.InteropServices.MemoryMarshal::CreateSpan<!!0>(!!0&, int32)
    IL_0007:  ret
    
    IL_1000: call       valuetype [netstandard]System.Span`1<!0> valuetype [netstandard]System.Span`1<!!T>::get_Empty()
    IL_1001: ret
  } 
  
  .method public hidebysig static valuetype [netstandard]System.ReadOnlySpan`1<!!T> 
          ToReadOnlySpan<T>(!!T[0...,0...] 'array') cil managed aggressiveinlining
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [0] // Return type
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 )  // ReadOnlySpan<T?>!
    .param [1] // First argument;
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 02 02 00 00 )  // T?[,]?
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  brfalse.s  IL_1000
    IL_0002:  ldarg.0
    IL_0003:  call       !!0& [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ArrayExtensions::DangerousGetReference<!!0>(!!0[0...,0...])
    IL_0004:  ldarg.0
    IL_0005:  callvirt   instance int32 [netstandard]System.Array::get_Length()
    IL_0006:  call       valuetype [netstandard]System.ReadOnlySpan`1<!!0> [netstandard]System.Runtime.InteropServices.MemoryMarshal::CreateReadOnlySpan<!!0>(!!0&, int32)
    IL_0007:  ret
    
    IL_1000: call       valuetype [netstandard]System.ReadOnlySpan`1<!0> valuetype [netstandard]System.ReadOnlySpan`1<!!T>::get_Empty()
    IL_1001: ret
  } 
  
 .method public hidebysig static valuetype [netstandard]System.Span`1<!!T> 
          GetRowMut<T>(!!T[0...,0...] 'array',
                       int32 row) cil managed aggressiveinlining
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [0] // Return type
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 )  // Span<T?>!
    .param [1] // First argument;
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 02 02 00 00 )  // T?[,]?
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  brfalse.s IL_1000
    
    IL_0002:  ldarg.0
    IL_0003:  ldarg.1
    IL_0004:  ldc.i4.0
    IL_0009:  ldarg.0
    IL_000a:  ldc.i4.1
    IL_000b:  call       instance int32 [netstandard]System.Array::GetLength(int32)
    IL_0010:  call       valuetype [netstandard]System.Span`1<!!0> IK.ILSpanCasts.SpanExtensions::GetRowMut<!!0>(!!0[0...,0...],
                                                                                                                int32,
                                                                                                                int32,
                                                                                                                int32)
    IL_0015:  ret
    
    IL_1000: call       valuetype [netstandard]System.Span`1<!0> valuetype [netstandard]System.Span`1<!!T>::get_Empty()
    IL_1001: ret
  }
  
  .method public hidebysig static valuetype [netstandard]System.Span`1<!!T> 
          GetRowMut<T>(!!T[0...,0...] 'array',
                       int32 row,
                       int32 start,
                       int32 length) cil managed
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [0] // Return type
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 )  // Span<T?>!
    .param [1] // First argument;
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 02 02 00 00 )  // T?[,]?
    .maxstack  3
    .locals init (valuetype [netstandard]System.Span`1<!!T> V_0,
             valuetype [netstandard]System.Span`1<!!T> V_1)
    IL_0000:  ldarg.0
    IL_0001:  brfalse.s  IL_1000

    IL_0003:  ldarg.1
    IL_0004:  ldc.i4.0
    IL_0005:  blt.s      IL_0059

    IL_0007:  ldarg.1
    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.0
    IL_000a:  callvirt   instance int32 [netstandard]System.Array::GetLength(int32)
    IL_000f:  bge.s      IL_0059

    IL_0011:  ldarg.2
    IL_0012:  ldc.i4.0
    IL_0013:  blt.s      IL_004e

    IL_0015:  ldarg.3
    IL_0016:  ldc.i4.0
    IL_0017:  ble.s      IL_0032

    IL_0019:  ldarg.3
    IL_001a:  ldarg.0
    IL_001b:  ldc.i4.1
    IL_001c:  callvirt   instance int32 [netstandard]System.Array::GetLength(int32)
    IL_0021:  bgt.s      IL_0032

    IL_0023:  ldarg.0
    IL_0024:  ldarg.1
    IL_0025:  ldarg.2
    IL_0026:  call       !!0& [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ArrayExtensions::DangerousGetReferenceAt<!!0>(!!0[0...,0...],
                                                                                                                                                 int32,
                                                                                                                                                 int32)
    IL_002b:  ldarg.3
    IL_002c:  call       valuetype [netstandard]System.Span`1<!!0> [netstandard]System.Runtime.InteropServices.MemoryMarshal::CreateSpan<!!0>(!!0&,
                                                                                                                                              int32)
    IL_0031:  ret

    IL_0032:  ldarg.3
    IL_0033:  brtrue.s   IL_0041

    IL_0035:  ldloca.s   V_1
    IL_0037:  initobj    valuetype [netstandard]System.Span`1<!!T>
    IL_003d:  ldloc.1
    IL_003e:  stloc.0
    IL_003f:  br.s       IL_004c

    IL_0041:  ldstr      "length"
    IL_0046:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_004b:  throw

    IL_004c:  ldloc.0
    IL_004d:  ret

    IL_004e:  ldstr      "start"
    IL_0053:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_0058:  throw

    IL_0059:  ldstr      "row"
    IL_005e:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_0063:  throw

    IL_1000: call       valuetype [netstandard]System.Span`1<!0> valuetype [netstandard]System.Span`1<!!T>::get_Empty()
    IL_1001: ret
  }
  
  .method public hidebysig static valuetype [netstandard]System.ReadOnlySpan`1<!!T> 
          GetRow<T>(!!T[0...,0...] 'array',
                       int32 row) cil managed aggressiveinlining
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [0] // Return type
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 )  // Span<T?>!
    .param [1] // First argument;
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 02 02 00 00 )  // T?[,]?
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  brfalse.s IL_1000
    
    IL_0002:  ldarg.0
    IL_0003:  ldarg.1
    IL_0004:  ldc.i4.0
    IL_0009:  ldarg.0
    IL_000a:  ldc.i4.1
    IL_000b:  call       instance int32 [netstandard]System.Array::GetLength(int32)
    IL_0010:  call       valuetype [netstandard]System.ReadOnlySpan`1<!!0> IK.ILSpanCasts.SpanExtensions::GetRow<!!0>(!!0[0...,0...],
                                                                                                                int32,
                                                                                                                int32,
                                                                                                                int32)
    IL_0015:  ret
    
    IL_1000: call       valuetype [netstandard]System.ReadOnlySpan`1<!0> valuetype [netstandard]System.ReadOnlySpan`1<!!T>::get_Empty()
    IL_1001: ret
  }
  
  .method public hidebysig static valuetype [netstandard]System.ReadOnlySpan`1<!!T> 
          GetRow<T>(!!T[0...,0...] 'array',
                       int32 row,
                       int32 start,
                       int32 length) cil managed
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [0] // Return type
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 )  // ReadOnlySpan<T?>!
    .param [1] // First argument;
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 02 02 00 00 )  // T?[,]?
    .maxstack  3
    .locals init (valuetype [netstandard]System.ReadOnlySpan`1<!!T> V_0,
             valuetype [netstandard]System.ReadOnlySpan`1<!!T> V_1)
    IL_0000:  ldarg.0
    IL_0001:  brfalse.s  IL_1000

    IL_0003:  ldarg.1
    IL_0004:  ldc.i4.0
    IL_0005:  blt.s      IL_0059

    IL_0007:  ldarg.1
    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.0
    IL_000a:  callvirt   instance int32 [netstandard]System.Array::GetLength(int32)
    IL_000f:  bge.s      IL_0059

    IL_0011:  ldarg.2
    IL_0012:  ldc.i4.0
    IL_0013:  blt.s      IL_004e

    IL_0015:  ldarg.3
    IL_0016:  ldc.i4.0
    IL_0017:  ble.s      IL_0032

    IL_0019:  ldarg.3
    IL_001a:  ldarg.0
    IL_001b:  ldc.i4.1
    IL_001c:  callvirt   instance int32 [netstandard]System.Array::GetLength(int32)
    IL_0021:  bgt.s      IL_0032

    IL_0023:  ldarg.0
    IL_0024:  ldarg.1
    IL_0025:  ldarg.2
    IL_0026:  call       !!0& [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ArrayExtensions::DangerousGetReferenceAt<!!0>(!!0[0...,0...],
                                                                                                                                                 int32,
                                                                                                                                                 int32)
    IL_002b:  ldarg.3
    IL_002c:  call       valuetype [netstandard]System.ReadOnlySpan`1<!!0> [netstandard]System.Runtime.InteropServices.MemoryMarshal::CreateReadOnlySpan<!!0>(!!0&,
                                                                                                                                              int32)
    IL_0031:  ret

    IL_0032:  ldarg.3
    IL_0033:  brtrue.s   IL_0041

    IL_0035:  ldloca.s   V_1
    IL_0037:  initobj    valuetype [netstandard]System.ReadOnlySpan`1<!!T>
    IL_003d:  ldloc.1
    IL_003e:  stloc.0
    IL_003f:  br.s       IL_004c

    IL_0041:  ldstr      "length"
    IL_0046:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_004b:  throw

    IL_004c:  ldloc.0
    IL_004d:  ret

    IL_004e:  ldstr      "start"
    IL_0053:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_0058:  throw

    IL_0059:  ldstr      "row"
    IL_005e:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_0063:  throw

    IL_1000: call       valuetype [netstandard]System.ReadOnlySpan`1<!0> valuetype [netstandard]System.ReadOnlySpan`1<!!T>::get_Empty()
    IL_1001: ret
  }
  
  .method public hidebysig static valuetype [netstandard]System.Span`1<!!T> 
          GetRow<T>(valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T> span,
                       int32 row) cil managed aggressiveinlining
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [0] // Return type
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 )  // Span<T?>!
    .param [1] // First argument;
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 )  // Span2D<T?>!
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  ldarga.s   span
    IL_0005:  call       instance int32 valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>::get_Width()
    IL_000a:  call       valuetype [netstandard]System.Span`1<!!0> IK.ILSpanCasts.SpanExtensions::GetRow<!!0>(valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!0>,
                                                                                                                int32,
                                                                                                                int32,
                                                                                                                int32)
    IL_000f:  ret
  }
  
  .method public hidebysig static valuetype [netstandard]System.Span`1<!!T> 
          GetRow<T>(valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T> span,
                       int32 row,
                       int32 start,
                       int32 length) cil managed
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [0]
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 )  // Span<T?>!
    .param [1] // First argument;
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 )  // Span2D<T?>!
    .maxstack  3
    .locals init (valuetype [netstandard]System.Span`1<!!T> V_0)
    IL_0000:  ldarga.s   span
    IL_0002:  call       instance bool valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>::get_IsEmpty()
    IL_0007:  brtrue.s   IL_0073

    IL_0009:  ldarg.1
    IL_000a:  ldc.i4.0
    IL_000b:  blt.s      IL_0068

    IL_000d:  ldarg.1
    IL_000e:  ldarga.s   span
    IL_0010:  call       instance int32 valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>::get_Height()
    IL_0015:  bge.s      IL_0068

    IL_0017:  ldarg.2
    IL_0018:  ldc.i4.0
    IL_0019:  blt.s      IL_005d

    IL_001b:  ldarg.2
    IL_001c:  ldarga.s   span
    IL_001e:  call       instance int32 valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>::get_Width()
    IL_0023:  bge.s      IL_005d

    IL_0025:  ldarg.3
    IL_0026:  brtrue.s   IL_0032

    IL_0028:  ldloca.s   V_0
    IL_002a:  initobj    valuetype [netstandard]System.Span`1<!!T>
    IL_0030:  ldloc.0
    IL_0031:  ret

    IL_0032:  ldarg.3
    IL_0033:  ldc.i4.0
    IL_0034:  ble.s      IL_0052

    IL_0036:  ldarg.3
    IL_0037:  ldarga.s   span
    IL_0039:  call       instance int32 valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>::get_Width()
    IL_003e:  ldarg.2
    IL_003f:  sub
    IL_0040:  bgt.s      IL_0052

    IL_0042:  ldarga.s   span
    IL_0044:  ldarg.1
    IL_0045:  ldarg.2
    IL_0046:  call       instance !0& valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>::get_Item(int32,
                                                                                                                                             int32)
    IL_004b:  ldarg.3
    IL_004c:  call       valuetype [netstandard]System.Span`1<!!0> [netstandard]System.Runtime.InteropServices.MemoryMarshal::CreateSpan<!!0>(!!0&,
                                                                                                                                              int32)
    IL_0051:  ret

    IL_0052:  ldstr      "length"
    IL_0057:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_005c:  throw

    IL_005d:  ldstr      "start"
    IL_0062:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_0067:  throw

    IL_0068:  ldstr      "row"
    IL_006d:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_0072:  throw

    IL_0073:  ldloca.s   V_0
    IL_0075:  initobj    valuetype [netstandard]System.Span`1<!!T>
    IL_007b:  ldloc.0
    IL_007c:  ret
  }
  
  .method public hidebysig static valuetype [netstandard]System.ReadOnlySpan`1<!!T> 
          GetRow<T>(valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T> span,
                       int32 row) cil managed aggressiveinlining
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [0]
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 )  // ReadOnlySpan<T?>!
    .param [1] // First argument;
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 )  // ReadOnlySpan2D<T?>!
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  ldarga.s   span
    IL_0005:  call       instance int32 valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>::get_Width()
    IL_000a:  call       valuetype [netstandard]System.ReadOnlySpan`1<!!0> IK.ILSpanCasts.SpanExtensions::GetRow<!!0>(valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!0>,
                                                                                                                int32,
                                                                                                                int32,
                                                                                                                int32)
    IL_000f:  ret
  }
  
  .method public hidebysig static valuetype [netstandard]System.ReadOnlySpan`1<!!T> 
          GetRow<T>(valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T> span,
                       int32 row,
                       int32 start,
                       int32 length) cil managed
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .param [0]
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 )  // ReadOnlySpan<T?>!
    .param [1] // First argument;
    .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = ( 01 00 02 00 00 00 01 02 00 00 )  // ReadOnlySpan2D<T?>!
    .maxstack  3
    .locals init (valuetype [netstandard]System.ReadOnlySpan`1<!!T> V_0)
    IL_0000:  ldarga.s   span
    IL_0002:  call       instance bool valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>::get_IsEmpty()
    IL_0007:  brtrue.s   IL_0073

    IL_0009:  ldarg.1
    IL_000a:  ldc.i4.0
    IL_000b:  blt.s      IL_0068

    IL_000d:  ldarg.1
    IL_000e:  ldarga.s   span
    IL_0010:  call       instance int32 valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>::get_Height()
    IL_0015:  bge.s      IL_0068

    IL_0017:  ldarg.2
    IL_0018:  ldc.i4.0
    IL_0019:  blt.s      IL_005d

    IL_001b:  ldarg.2
    IL_001c:  ldarga.s   span
    IL_001e:  call       instance int32 valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>::get_Width()
    IL_0023:  bge.s      IL_005d

    IL_0025:  ldarg.3
    IL_0026:  brtrue.s   IL_0032

    IL_0028:  ldloca.s   V_0
    IL_002a:  initobj    valuetype [netstandard]System.ReadOnlySpan`1<!!T>
    IL_0030:  ldloc.0
    IL_0031:  ret

    IL_0032:  ldarg.3
    IL_0033:  ldc.i4.0
    IL_0034:  ble.s      IL_0052

    IL_0036:  ldarg.3
    IL_0037:  ldarga.s   span
    IL_0039:  call       instance int32 valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>::get_Width()
    IL_003e:  ldarg.2
    IL_003f:  sub
    IL_0040:  bgt.s      IL_0052

    IL_0042:  ldarga.s   span
    IL_0044:  ldarg.1
    IL_0045:  ldarg.2
    IL_0046:  call       instance !0& modreq([netstandard]System.Runtime.InteropServices.InAttribute) valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>::get_Item(int32,
                                                                                                                                             int32)
    IL_004b:  ldarg.3
    IL_004c:  call       valuetype  [netstandard]System.ReadOnlySpan`1<!!0> [netstandard]System.Runtime.InteropServices.MemoryMarshal::CreateReadOnlySpan<!!0>(!!0&,
                                                                                                                                              int32)
    IL_0051:  ret

    IL_0052:  ldstr      "length"
    IL_0057:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_005c:  throw

    IL_005d:  ldstr      "start"
    IL_0062:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_0067:  throw

    IL_0068:  ldstr      "row"
    IL_006d:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_0072:  throw

    IL_0073:  ldloca.s   V_0
    IL_0075:  initobj    valuetype [netstandard]System.ReadOnlySpan`1<!!T>
    IL_007b:  ldloc.0
    IL_007c:  ret
  }
} 
