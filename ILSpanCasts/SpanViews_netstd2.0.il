.assembly extern netstandard
{
  .publickeytoken = (CC 7B 13 FF CD 2D DD 51 )                         
  .ver 2:0:0:0
}
.assembly extern Microsoft.Toolkit.HighPerformance
{
  .publickeytoken = (4A FF 67 A1 05 54 8E E2 )                         
  .ver 7:0:0:0
}
.assembly extern System.Memory
{
  .publickeytoken = (CC 7B 13 FF CD 2D DD 51 )                         
  .ver 4:0:1:1
}
.assembly ILSpanCasts
{
  .custom instance void [netstandard]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 19 2E 4E 45 54 53 74 61 6E 64 61 72 64 2C 
                                                                                                           56 65 72 73 69 6F 6E 3D 76 32 2E 30 01 00 54 0E  
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

.class private auto ansi sealed beforefieldinit System.Runtime.CompilerServices.IsByRefLikeAttribute
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
          ToSpan2D<T>(valuetype [System.Memory]System.Span`1<!!T> this,
                      int32 height,
                      int32 width) cil managed
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    
    .maxstack  8
    IL_0000:  ldarga.s   this
    IL_0002:  call       instance bool valuetype [System.Memory]System.Span`1<!!T>::get_IsEmpty()
    IL_0007:  brtrue.s   IL_002f

    IL_0009:  ldarg.2
    IL_000a:  ldarg.1
    IL_000b:  mul
    IL_000c:  ldarga.s   this
    IL_000e:  call       instance int32 valuetype [System.Memory]System.Span`1<!!T>::get_Length()
    IL_0013:  bgt.s      IL_001f

    IL_0015:  ldarga.s   this
    IL_0017:  ldarg.1
    IL_0018:  ldarg.2
    IL_0019:  call       valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!0> ILSpanCasts.Span2DView::FromSpan<!!0>(valuetype [System.Memory]System.Span`1<!!0>&,
                                                                                                                                                            int32,
                                                                                                                                                            int32)
    IL_001e:  ret

    IL_001f:  ldstr      "`width` * `height` > `this.Length`."
    IL_0024:  ldstr      "this"
    IL_0029:  newobj     instance void [netstandard]System.ArgumentException::.ctor(string,
                                                                                    string)
    IL_002e:  throw

    IL_002f:  call       valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!0> valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>::get_Empty()
    IL_0034:  ret
  } 

  .method public hidebysig static valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T> 
          ToReadOnlySpan2D<T>(valuetype [System.Memory]System.ReadOnlySpan`1<!!T> this,
                      int32 height,
                      int32 width) cil managed
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    
    .maxstack  8
    IL_0000:  ldarga.s   this
    IL_0002:  call       instance bool valuetype [System.Memory]System.ReadOnlySpan`1<!!T>::get_IsEmpty()
    IL_0007:  brtrue.s   IL_002f

    IL_0009:  ldarg.2
    IL_000a:  ldarg.1
    IL_000b:  mul
    IL_000c:  ldarga.s   this
    IL_000e:  call       instance int32 valuetype [System.Memory]System.ReadOnlySpan`1<!!T>::get_Length()
    IL_0013:  bgt.s      IL_001f

    IL_0015:  ldarga.s   this
    IL_0017:  ldarg.1
    IL_0018:  ldarg.2
    IL_0019:  call       valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!0> ILSpanCasts.Span2DView::FromSpan<!!0>(valuetype [System.Memory]System.ReadOnlySpan`1<!!0>&,
                                                                                                                                                            int32,
                                                                                                                                                            int32)
    IL_001e:  ret

    IL_001f:  ldstr      "`width` * `height` > `this.Length`."
    IL_0024:  ldstr      "this"
    IL_0029:  newobj     instance void [netstandard]System.ArgumentException::.ctor(string,
                                                                                    string)
    IL_002e:  throw

    IL_002f:  call       valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!0> valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>::get_Empty()
    IL_0034:  ret
  } 


} 

.class private sequential ansi sealed beforefieldinit ILSpanCasts.SpanView
       extends [netstandard]System.ValueType
{
  .custom instance void System.Runtime.CompilerServices.IsByRefLikeAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [netstandard]System.ObsoleteAttribute::.ctor(string,
                                                                     bool) = ( 01 00 52 54 79 70 65 73 20 77 69 74 68 20 65 6D   
                                                                               62 65 64 64 65 64 20 72 65 66 65 72 65 6E 63 65   
                                                                               73 20 61 72 65 20 6E 6F 74 20 73 75 70 70 6F 72   
                                                                               74 65 64 20 69 6E 20 74 68 69 73 20 76 65 72 73   
                                                                               69 6F 6E 20 6F 66 20 79 6F 75 72 20 63 6F 6D 70   
                                                                               69 6C 65 72 2E 01 00 00 )                         
  .field public object Owner
  .field public native int Offset
  .field public int32 Length
  .method public hidebysig static valuetype ILSpanCasts.SpanView& 
          AsView<T>(valuetype [System.Memory]System.Span`1<!!T>& span) cil managed aggressiveinlining
  {
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ret
  } 
  
  .method public hidebysig static valuetype ILSpanCasts.SpanView& 
          AsView<T>(valuetype [System.Memory]System.ReadOnlySpan`1<!!T>& span) cil managed aggressiveinlining
  {
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ret
  } 

  .method public hidebysig static valuetype [System.Memory]System.Span`1<!!T>& 
          AsSpan<T>(valuetype ILSpanCasts.SpanView& view) cil managed aggressiveinlining
  {
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ret
  } 
  
   .method public hidebysig static valuetype [System.Memory]System.ReadOnlySpan`1<!!T>& 
          AsReadOnlySpan<T>(valuetype ILSpanCasts.SpanView& view) cil managed aggressiveinlining
  {
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ret
  } 

} 

.class private sequential ansi sealed beforefieldinit ILSpanCasts.Span2DView
       extends [netstandard]System.ValueType
{
  .custom instance void System.Runtime.CompilerServices.IsByRefLikeAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [netstandard]System.ObsoleteAttribute::.ctor(string,
                                                                     bool) = ( 01 00 52 54 79 70 65 73 20 77 69 74 68 20 65 6D   
                                                                               62 65 64 64 65 64 20 72 65 66 65 72 65 6E 63 65   
                                                                               73 20 61 72 65 20 6E 6F 74 20 73 75 70 70 6F 72   
                                                                               74 65 64 20 69 6E 20 74 68 69 73 20 76 65 72 73   
                                                                               69 6F 6E 20 6F 66 20 79 6F 75 72 20 63 6F 6D 70   
                                                                               69 6C 65 72 2E 01 00 00 )                         
  .field public object Owner
  .field public native int Offset
  .field public int32 Height
  .field public int32 Width
  .field public int32 Stride
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(valuetype ILSpanCasts.SpanView& view,
                               int32 height,
                               int32 width) cil managed
  {
    
    .maxstack  2
    .locals init (object V_0,
             native int V_1)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      object ILSpanCasts.SpanView::Owner
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldfld      native int ILSpanCasts.SpanView::Offset
    IL_000d:  stloc.1
    IL_000e:  ldarg.0
    IL_000f:  ldloc.0
    IL_0010:  stfld      object ILSpanCasts.Span2DView::Owner
    IL_0015:  ldarg.0
    IL_0016:  ldloc.1
    IL_0017:  stfld      native int ILSpanCasts.Span2DView::Offset
    IL_001c:  ldarg.0
    IL_001d:  ldarg.2
    IL_001e:  stfld      int32 ILSpanCasts.Span2DView::Height
    IL_0023:  ldarg.0
    IL_0024:  ldarg.3
    IL_0025:  stfld      int32 ILSpanCasts.Span2DView::Width
    IL_002a:  ldarg.0
    IL_002b:  ldarg.3
    IL_002c:  stfld      int32 ILSpanCasts.Span2DView::Stride
    IL_0031:  ret
  } 

  .method public hidebysig static valuetype ILSpanCasts.Span2DView& 
          AsView<T>(valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>& span) cil managed aggressiveinlining
  {
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ret
  } 

  .method public hidebysig static valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>& 
          AsSpan<T>(valuetype ILSpanCasts.Span2DView& view) cil managed aggressiveinlining
  {
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ret
  } 
  
  .method public hidebysig static valuetype ILSpanCasts.Span2DView& 
          AsView<T>(valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>& span) cil managed aggressiveinlining
  {
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ret
  } 
  
  .method public hidebysig static valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>& 
          AsReadOnlySpan<T>(valuetype ILSpanCasts.Span2DView& view) cil managed aggressiveinlining
  {
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ret
  } 
  

  .method public hidebysig static valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T> 
          FromSpan<T>(valuetype [System.Memory]System.Span`1<!!T>& span,
                      int32 height,
                      int32 width) cil managed aggressiveinlining
  {
    .maxstack  3
    .locals init (valuetype ILSpanCasts.SpanView& V_0,
             valuetype ILSpanCasts.Span2DView V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       valuetype ILSpanCasts.SpanView& ILSpanCasts.SpanView::AsView<!!0>(valuetype [System.Memory]System.Span`1<!!0>&)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.1
    IL_0009:  ldarg.2
    IL_000a:  newobj     instance void ILSpanCasts.Span2DView::.ctor(valuetype ILSpanCasts.SpanView&,
                                                                     int32,
                                                                     int32)
    IL_000f:  stloc.1
    IL_0010:  ldloca.s   V_1
    IL_0012:  call       valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!0>& ILSpanCasts.Span2DView::AsSpan<!!0>(valuetype ILSpanCasts.Span2DView&)
    IL_0017:  ldobj      valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>
    IL_001c:  ret
  } 
    
  .method public hidebysig static valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T> 
          FromSpan<T>(valuetype [System.Memory]System.ReadOnlySpan`1<!!T>& span,
                      int32 height,
                      int32 width) cil managed aggressiveinlining
  {
    .maxstack  3
    .locals init (valuetype ILSpanCasts.SpanView& V_0,
             valuetype ILSpanCasts.Span2DView V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       valuetype ILSpanCasts.SpanView& ILSpanCasts.SpanView::AsView<!!0>(valuetype [System.Memory]System.ReadOnlySpan`1<!!0>&)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.1
    IL_0009:  ldarg.2
    IL_000a:  newobj     instance void ILSpanCasts.Span2DView::.ctor(valuetype ILSpanCasts.SpanView&,
                                                                     int32,
                                                                     int32)
    IL_000f:  stloc.1
    IL_0010:  ldloca.s   V_1
    IL_0012:  call       valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!0>& ILSpanCasts.Span2DView::AsReadOnlySpan<!!0>(valuetype ILSpanCasts.Span2DView&)
    IL_0017:  ldobj      valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>
    IL_001c:  ret
  } 

} 