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
  
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module ILSpanCasts.dll

.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       
.corflags 0x00000001    


.class private auto ansi sealed beforefieldinit Microsoft.CodeAnalysis.EmbeddedAttribute
       extends [netstandard]System.Attribute
{
  .custom instance void [netstandard]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void Microsoft.CodeAnalysis.EmbeddedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [netstandard]System.Attribute::.ctor()
    IL_0006:  ret
  } 

} 

.class public abstract auto ansi sealed beforefieldinit ILSpanCasts.Span2DExtensions
       extends [netstandard]System.Object
{
  .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig static valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T> 
          FromSpan<T>(valuetype [netstandard]System.Span`1<!!T> this,
                      int32 height,
                      int32 width) cil managed
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
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
          FromSpan<T>(valuetype [netstandard]System.ReadOnlySpan`1<!!T> this,
                      int32 height,
                      int32 width) cil managed
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
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
    IL_0018:  call       instance !0& valuetype [netstandard]System.ReadOnlySpan`1<!!T>::get_Item(int32)
    IL_001d:  ldarg.1
    IL_001e:  ldarg.2
    IL_001f:  ldc.i4.0
    IL_0020:  call       valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!0> valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan`1<!!T>::DangerousCreate(!0&,
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

} 