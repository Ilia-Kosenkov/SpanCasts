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
}
 
#include "ModuleInfo.il"
 
#include "EmbeddedAttributes.il"

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


.class public abstract auto ansi sealed beforefieldinit IK.ILSpanCasts.SpanExtensions
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
    IL_0019:  call       valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!0> IK.ILSpanCasts.Internal.Span2DView::FromSpan<!!0>(valuetype [System.Memory]System.Span`1<!!0>&,
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
    IL_0019:  call       valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!0> IK.ILSpanCasts.Internal.Span2DView::FromSpan<!!0>(valuetype [System.Memory]System.ReadOnlySpan`1<!!0>&,
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


  .method public hidebysig static valuetype [System.Memory]System.Span`1<!!T> 
          ToSpan<T>(!!T[0...,0...] 'array') cil managed
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .maxstack  3
    .locals init (valuetype IK.ILSpanCasts.Internal.SpanView V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    IK.ILSpanCasts.Internal.SpanView
    IL_0008:  ldloca.s   V_0
    IL_000a:  ldarg.0
    IL_000b:  stfld      object IK.ILSpanCasts.Internal.SpanView::Owner
    IL_0010:  ldloca.s   V_0
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       !!0& [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ArrayExtensions::DangerousGetReference<!!0>(!!0[0...,0...])
    IL_0019:  call       native int [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Helpers.ObjectMarshal::DangerousGetObjectDataByteOffset<!!0>(object, !!0&)
    IL_001e:  stfld      native int IK.ILSpanCasts.Internal.SpanView::Offset
    IL_0023:  ldloca.s   V_0
    IL_0025:  ldarg.0
    IL_0026:  callvirt   instance int32 [netstandard]System.Array::get_Length()
    IL_002b:  stfld      int32 IK.ILSpanCasts.Internal.SpanView::Length
    IL_0032:  ldloca.s   V_0
    IL_0034:  call       valuetype [System.Memory]System.Span`1<!!0>& IK.ILSpanCasts.Internal.SpanView::AsSpan<!!0>(valuetype IK.ILSpanCasts.Internal.SpanView&)
    IL_0039:  ldobj      valuetype [System.Memory]System.Span`1<!!T>
    IL_003e:  ret
  } 
  
  .method public hidebysig static valuetype [System.Memory]System.ReadOnlySpan`1<!!T> 
          ToReadOnlySpan<T>(!!T[0...,0...] 'array') cil managed
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .maxstack  3
    .locals init (valuetype IK.ILSpanCasts.Internal.SpanView V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    IK.ILSpanCasts.Internal.SpanView
    IL_0008:  ldloca.s   V_0
    IL_000a:  ldarg.0
    IL_000b:  stfld      object IK.ILSpanCasts.Internal.SpanView::Owner
    IL_0010:  ldloca.s   V_0
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       !!0& [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ArrayExtensions::DangerousGetReference<!!0>(!!0[0...,0...])
    IL_0019:  call       native int [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Helpers.ObjectMarshal::DangerousGetObjectDataByteOffset<!!0>(object, !!0&)
    IL_001e:  stfld      native int IK.ILSpanCasts.Internal.SpanView::Offset
    IL_0023:  ldloca.s   V_0
    IL_0025:  ldarg.0
    IL_0026:  callvirt   instance int32 [netstandard]System.Array::get_Length()
    IL_002b:  stfld      int32 IK.ILSpanCasts.Internal.SpanView::Length
    IL_0032:  ldloca.s   V_0
    IL_0034:  call       valuetype [System.Memory]System.ReadOnlySpan`1<!!0>& IK.ILSpanCasts.Internal.SpanView::AsReadOnlySpan<!!0>(valuetype IK.ILSpanCasts.Internal.SpanView&)
    IL_0039:  ldobj      valuetype [System.Memory]System.ReadOnlySpan`1<!!T>
    IL_003e:  ret
  } 
  
  .method public hidebysig static valuetype [System.Memory]System.Span`1<!!T> 
          GetRowMut<T>(!!T[0...,0...] 'array',
                       int32 row) cil managed aggressiveinlining
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  ldarg.0
    IL_0004:  brtrue.s   IL_0009

    IL_0006:  ldc.i4.0
    IL_0007:  br.s       IL_0010

    IL_0009:  ldarg.0
    IL_000a:  ldc.i4.1
    IL_000b:  call       instance int32 [netstandard]System.Array::GetLength(int32)
    IL_0010:  call       valuetype [System.Memory]System.Span`1<!!0> IK.ILSpanCasts.SpanExtensions::GetRowMut<!!0>(!!0[0...,0...],
                                                                                                                int32,
                                                                                                                int32,
                                                                                                                int32)
    IL_0015:  ret
  }
  
  .method public hidebysig static valuetype [System.Memory]System.Span`1<!!T> 
          GetRowMut<T>(!!T[0...,0...] 'array',
                       int32 row,
                       int32 start,
                       int32 length) cil managed
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .maxstack  5
    .locals init (valuetype IK.ILSpanCasts.Internal.SpanView V_0,
             valuetype IK.ILSpanCasts.Internal.SpanView V_1,
             valuetype [System.Memory]System.Span`1<!!T> V_2,
             valuetype [System.Memory]System.Span`1<!!T> V_3)
    IL_0000:  ldarg.0
    IL_0001:  brfalse    IL_0094

    IL_0006:  ldarg.1
    IL_0007:  ldc.i4.0
    IL_0008:  blt.s      IL_0089

    IL_000a:  ldarg.1
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.0
    IL_000d:  callvirt   instance int32 [netstandard]System.Array::GetLength(int32)
    IL_0012:  bge.s      IL_0089

    IL_0014:  ldarg.2
    IL_0015:  ldc.i4.0
    IL_0016:  blt.s      IL_007e

    IL_0018:  ldarg.3
    IL_0019:  ldc.i4.0
    IL_001a:  ble.s      IL_0062

    IL_001c:  ldarg.3
    IL_001d:  ldarg.0
    IL_001e:  ldc.i4.1
    IL_001f:  callvirt   instance int32 [netstandard]System.Array::GetLength(int32)
    IL_0024:  bgt.s      IL_0062

    IL_0026:  ldloca.s   V_1
    IL_0028:  initobj    IK.ILSpanCasts.Internal.SpanView
    IL_002e:  ldloca.s   V_1
    IL_0030:  ldarg.0
    IL_0031:  stfld      object IK.ILSpanCasts.Internal.SpanView::Owner
    IL_0036:  ldloca.s   V_1
    IL_0038:  ldarg.0
    IL_0039:  ldarg.0
    IL_003a:  ldarg.1
    IL_003b:  ldarg.2
    IL_003c:  call       !!0& [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ArrayExtensions::DangerousGetReferenceAt<!!0>(!!0[0...,0...],
                                                                                                                                                 int32,
                                                                                                                                                 int32)
    IL_0041:  call       native int [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Helpers.ObjectMarshal::DangerousGetObjectDataByteOffset<!!0>(object,
                                                                                                                                                                      !!0&)
    IL_0046:  stfld      native int IK.ILSpanCasts.Internal.SpanView::Offset
    IL_004b:  ldloca.s   V_1
    IL_004d:  ldarg.3
    IL_004e:  stfld      int32 IK.ILSpanCasts.Internal.SpanView::Length
    IL_0053:  ldloc.1
    IL_0054:  stloc.0
    IL_0055:  ldloca.s   V_0
    IL_0057:  call       valuetype [System.Memory]System.Span`1<!!0>& IK.ILSpanCasts.Internal.SpanView::AsSpan<!!0>(valuetype IK.ILSpanCasts.Internal.SpanView&)
    IL_005c:  ldobj      valuetype [System.Memory]System.Span`1<!!T>
    IL_0061:  ret

    IL_0062:  ldarg.3
    IL_0063:  brtrue.s   IL_0071

    IL_0065:  ldloca.s   V_3
    IL_0067:  initobj    valuetype [System.Memory]System.Span`1<!!T>
    IL_006d:  ldloc.3
    IL_006e:  stloc.2
    IL_006f:  br.s       IL_007c

    IL_0071:  ldstr      "length"
    IL_0076:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_007b:  throw

    IL_007c:  ldloc.2
    IL_007d:  ret

    IL_007e:  ldstr      "start"
    IL_0083:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_0088:  throw

    IL_0089:  ldstr      "array"
    IL_008e:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_0093:  throw

    IL_0094:  ldstr      "array"
    IL_0099:  newobj     instance void [netstandard]System.ArgumentNullException::.ctor(string)
    IL_009e:  throw
  }
  
  .method public hidebysig static valuetype [System.Memory]System.ReadOnlySpan`1<!!T> 
          GetRow<T>(!!T[0...,0...] 'array',
                       int32 row) cil managed aggressiveinlining
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  ldarg.0
    IL_0004:  brtrue.s   IL_0009

    IL_0006:  ldc.i4.0
    IL_0007:  br.s       IL_0010

    IL_0009:  ldarg.0
    IL_000a:  ldc.i4.1
    IL_000b:  call       instance int32 [netstandard]System.Array::GetLength(int32)
    IL_0010:  call       valuetype [System.Memory]System.ReadOnlySpan`1<!!0> IK.ILSpanCasts.SpanExtensions::GetRow<!!0>(!!0[0...,0...],
                                                                                                                int32,
                                                                                                                int32,
                                                                                                                int32)
    IL_0015:  ret
  }
  
  
  .method public hidebysig static valuetype [System.Memory]System.ReadOnlySpan`1<!!T> 
          GetRow<T>(!!T[0...,0...] 'array',
                       int32 row,
                       int32 start,
                       int32 length) cil managed
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .maxstack  5
    .locals init (valuetype IK.ILSpanCasts.Internal.SpanView V_0,
             valuetype IK.ILSpanCasts.Internal.SpanView V_1,
             valuetype [System.Memory]System.ReadOnlySpan`1<!!T> V_2,
             valuetype [System.Memory]System.ReadOnlySpan`1<!!T> V_3)
    IL_0000:  ldarg.0
    IL_0001:  brfalse    IL_0094

    IL_0006:  ldarg.1
    IL_0007:  ldc.i4.0
    IL_0008:  blt.s      IL_0089

    IL_000a:  ldarg.1
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4.0
    IL_000d:  callvirt   instance int32 [netstandard]System.Array::GetLength(int32)
    IL_0012:  bge.s      IL_0089

    IL_0014:  ldarg.2
    IL_0015:  ldc.i4.0
    IL_0016:  blt.s      IL_007e

    IL_0018:  ldarg.3
    IL_0019:  ldc.i4.0
    IL_001a:  ble.s      IL_0062

    IL_001c:  ldarg.3
    IL_001d:  ldarg.0
    IL_001e:  ldc.i4.1
    IL_001f:  callvirt   instance int32 [netstandard]System.Array::GetLength(int32)
    IL_0024:  bgt.s      IL_0062

    IL_0026:  ldloca.s   V_1
    IL_0028:  initobj    IK.ILSpanCasts.Internal.SpanView
    IL_002e:  ldloca.s   V_1
    IL_0030:  ldarg.0
    IL_0031:  stfld      object IK.ILSpanCasts.Internal.SpanView::Owner
    IL_0036:  ldloca.s   V_1
    IL_0038:  ldarg.0
    IL_0039:  ldarg.0
    IL_003a:  ldarg.1
    IL_003b:  ldarg.2
    IL_003c:  call       !!0& [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ArrayExtensions::DangerousGetReferenceAt<!!0>(!!0[0...,0...],
                                                                                                                                                 int32,
                                                                                                                                                 int32)
    IL_0041:  call       native int [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Helpers.ObjectMarshal::DangerousGetObjectDataByteOffset<!!0>(object,
                                                                                                                                                                      !!0&)
    IL_0046:  stfld      native int IK.ILSpanCasts.Internal.SpanView::Offset
    IL_004b:  ldloca.s   V_1
    IL_004d:  ldarg.3
    IL_004e:  stfld      int32 IK.ILSpanCasts.Internal.SpanView::Length
    IL_0053:  ldloc.1
    IL_0054:  stloc.0
    IL_0055:  ldloca.s   V_0
    IL_0057:  call       valuetype [System.Memory]System.ReadOnlySpan`1<!!0>& IK.ILSpanCasts.Internal.SpanView::AsReadOnlySpan<!!0>(valuetype IK.ILSpanCasts.Internal.SpanView&)
    IL_005c:  ldobj      valuetype [System.Memory]System.ReadOnlySpan`1<!!T>
    IL_0061:  ret

    IL_0062:  ldarg.3
    IL_0063:  brtrue.s   IL_0071

    IL_0065:  ldloca.s   V_3
    IL_0067:  initobj    valuetype [System.Memory]System.ReadOnlySpan`1<!!T>
    IL_006d:  ldloc.3
    IL_006e:  stloc.2
    IL_006f:  br.s       IL_007c

    IL_0071:  ldstr      "length"
    IL_0076:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_007b:  throw

    IL_007c:  ldloc.2
    IL_007d:  ret

    IL_007e:  ldstr      "start"
    IL_0083:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_0088:  throw

    IL_0089:  ldstr      "array"
    IL_008e:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_0093:  throw

    IL_0094:  ldstr      "array"
    IL_0099:  newobj     instance void [netstandard]System.ArgumentNullException::.ctor(string)
    IL_009e:  throw
  }
  
  .method public hidebysig static valuetype [System.Memory]System.Span`1<!!T> 
          GetRow<T>(valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T> span,
                       int32 row)  cil managed aggressiveinlining
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  ldarga.s   span
    IL_0005:  call       instance int32 valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>::get_Width()
    IL_000a:  call       valuetype [System.Memory]System.Span`1<!!0> IK.ILSpanCasts.SpanExtensions::GetRow<!!0>(valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!0>,
                                                                                                                int32,
                                                                                                                int32,
                                                                                                                int32)
    IL_000f:  ret
  }
   
   
  .method public hidebysig static valuetype [System.Memory]System.Span`1<!!T> 
          GetRow<T>(valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T> span,
                       int32 row,
                       int32 start,
                       int32 length) cil managed
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .maxstack  4
    .locals init (valuetype [System.Memory]System.Span`1<!!T> V_0,
             valuetype IK.ILSpanCasts.Internal.Span2DView& V_1,
             native int V_2,
             valuetype IK.ILSpanCasts.Internal.SpanView V_3,
             valuetype IK.ILSpanCasts.Internal.SpanView V_4)
    IL_0000:  ldarga.s   span
    IL_0002:  call       instance bool valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>::get_IsEmpty()
    IL_0007:  brtrue     IL_00de

    IL_000c:  ldarg.1
    IL_000d:  ldc.i4.0
    IL_000e:  blt        IL_00d3

    IL_0013:  ldarg.1
    IL_0014:  ldarga.s   span
    IL_0016:  call       instance int32 valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>::get_Height()
    IL_001b:  bge        IL_00d3

    IL_0020:  ldarg.2
    IL_0021:  ldc.i4.0
    IL_0022:  blt        IL_00c8

    IL_0027:  ldarg.2
    IL_0028:  ldarga.s   span
    IL_002a:  call       instance int32 valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>::get_Width()
    IL_002f:  bge        IL_00c8

    IL_0034:  ldarg.3
    IL_0035:  brtrue.s   IL_0041

    IL_0037:  ldloca.s   V_0
    IL_0039:  initobj    valuetype [System.Memory]System.Span`1<!!T>
    IL_003f:  ldloc.0
    IL_0040:  ret

    IL_0041:  ldarg.3
    IL_0042:  ldc.i4.0
    IL_0043:  ble.s      IL_00bd

    IL_0045:  ldarg.3
    IL_0046:  ldarga.s   span
    IL_0048:  call       instance int32 valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>::get_Width()
    IL_004d:  ldarg.2
    IL_004e:  sub
    IL_004f:  bgt.s      IL_00bd

    IL_0051:  ldarga.s   span
    IL_0053:  call       valuetype IK.ILSpanCasts.Internal.Span2DView& IK.ILSpanCasts.Internal.Span2DView::AsView<!!0>(valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!0>&)
    IL_0058:  stloc.1
    IL_0059:  ldarga.s   span
    IL_005b:  ldc.i4.0
    IL_005c:  ldc.i4.0
    IL_005d:  call       instance !0& valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>::get_Item(int32,
                                                                                                                                             int32)
    IL_0062:  ldarga.s   span
    IL_0064:  ldarg.1
    IL_0065:  ldarg.2
    IL_0066:  call       instance !0& valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>::get_Item(int32,
                                                                                                                                             int32)
    IL_006b:  call       native int IK.ILSpanCasts.SpanExtensions::ByteOffset<!!0>(!!0&, !!0&)
    IL_0070:  stloc.2
    IL_0071:  ldloca.s   V_4
    IL_0073:  initobj    IK.ILSpanCasts.Internal.SpanView
    IL_0079:  ldloca.s   V_4
    IL_007b:  ldloc.1
    IL_007c:  ldfld      object IK.ILSpanCasts.Internal.Span2DView::Owner
    IL_0081:  stfld      object IK.ILSpanCasts.Internal.SpanView::Owner
    IL_0086:  ldloca.s   V_4
    IL_0088:  ldarg.3
    IL_0089:  stfld      int32 IK.ILSpanCasts.Internal.SpanView::Length
    IL_008e:  ldloca.s   V_4
    IL_0090:  ldloc.1
    IL_0091:  ldflda     native int IK.ILSpanCasts.Internal.Span2DView::Offset
    IL_0096:  call       instance int64 [netstandard]System.IntPtr::ToInt64()
    IL_009b:  ldloca.s   V_2
    IL_009d:  call       instance int64 [netstandard]System.IntPtr::ToInt64()
    IL_00a2:  add
    IL_00a3:  newobj     instance void [netstandard]System.IntPtr::.ctor(int64)
    IL_00a8:  stfld      native int IK.ILSpanCasts.Internal.SpanView::Offset
    IL_00ad:  ldloc.s    V_4
    IL_00af:  stloc.3
    IL_00b0:  ldloca.s   V_3
    IL_00b2:  call       valuetype [System.Memory]System.Span`1<!!0>& IK.ILSpanCasts.Internal.SpanView::AsSpan<!!0>(valuetype IK.ILSpanCasts.Internal.SpanView&)
    IL_00b7:  ldobj      valuetype [System.Memory]System.Span`1<!!T>
    IL_00bc:  ret

    IL_00bd:  ldstr      "length"
    IL_00c2:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_00c7:  throw

    IL_00c8:  ldstr      "start"
    IL_00cd:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_00d2:  throw

    IL_00d3:  ldstr      "row"
    IL_00d8:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_00dd:  throw

    IL_00de:  ldloca.s   V_0
    IL_00e0:  initobj    valuetype [System.Memory]System.Span`1<!!T>
    IL_00e6:  ldloc.0
    IL_00e7:  ret
  }
  
  .method public hidebysig static valuetype [System.Memory]System.ReadOnlySpan`1<!!T> 
          GetRow<T>(valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T> span,
                       int32 row) cil managed aggressiveinlining
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  ldarga.s   span
    IL_0005:  call       instance int32 valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>::get_Width()
    IL_000a:  call       valuetype [System.Memory]System.ReadOnlySpan`1<!!0> IK.ILSpanCasts.SpanExtensions::GetRow<!!0>(valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!0>,
                                                                                                                int32,
                                                                                                                int32,
                                                                                                                int32)
    IL_000f:  ret
  }
   
  
  .method public hidebysig static valuetype [System.Memory]System.ReadOnlySpan`1<!!T> 
          GetRow<T>(valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T> span,
                       int32 row,
                       int32 start,
                       int32 length) cil managed
  {
    .custom instance void [netstandard]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    .maxstack  4
    .locals init (valuetype [System.Memory]System.ReadOnlySpan`1<!!T> V_0,
             valuetype IK.ILSpanCasts.Internal.Span2DView& V_1,
             native int V_2,
             valuetype IK.ILSpanCasts.Internal.SpanView V_3,
             valuetype IK.ILSpanCasts.Internal.SpanView V_4)
    IL_0000:  ldarga.s   span
    IL_0002:  call       instance bool valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>::get_IsEmpty()
    IL_0007:  brtrue     IL_00de

    IL_000c:  ldarg.1
    IL_000d:  ldc.i4.0
    IL_000e:  blt        IL_00d3

    IL_0013:  ldarg.1
    IL_0014:  ldarga.s   span
    IL_0016:  call       instance int32 valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>::get_Height()
    IL_001b:  bge        IL_00d3

    IL_0020:  ldarg.2
    IL_0021:  ldc.i4.0
    IL_0022:  blt        IL_00c8

    IL_0027:  ldarg.2
    IL_0028:  ldarga.s   span
    IL_002a:  call       instance int32 valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>::get_Width()
    IL_002f:  bge        IL_00c8

    IL_0034:  ldarg.3
    IL_0035:  brtrue.s   IL_0041

    IL_0037:  ldloca.s   V_0
    IL_0039:  initobj    valuetype [System.Memory]System.ReadOnlySpan`1<!!T>
    IL_003f:  ldloc.0
    IL_0040:  ret

    IL_0041:  ldarg.3
    IL_0042:  ldc.i4.0
    IL_0043:  ble.s      IL_00bd

    IL_0045:  ldarg.3
    IL_0046:  ldarga.s   span
    IL_0048:  call       instance int32 valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>::get_Width()
    IL_004d:  ldarg.2
    IL_004e:  sub
    IL_004f:  bgt.s      IL_00bd

    IL_0051:  ldarga.s   span
    IL_0053:  call       valuetype IK.ILSpanCasts.Internal.Span2DView& IK.ILSpanCasts.Internal.Span2DView::AsView<!!0>(valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!0>&)
    IL_0058:  stloc.1
    IL_0059:  ldarga.s   span
    IL_005b:  ldc.i4.0
    IL_005c:  ldc.i4.0
    IL_005d:  call       instance !0& modreq([netstandard]System.Runtime.InteropServices.InAttribute) valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>::get_Item(int32,
                                                                                                                                             int32)
    IL_0062:  ldarga.s   span
    IL_0064:  ldarg.1
    IL_0065:  ldarg.2
    IL_0066:  call       instance !0& modreq([netstandard]System.Runtime.InteropServices.InAttribute) valuetype  [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>::get_Item(int32,
                                                                                                                                             int32)
    IL_006b:  call       native int IK.ILSpanCasts.SpanExtensions::ByteOffset<!!0>(!!0&, !!0&)
    IL_0070:  stloc.2
    IL_0071:  ldloca.s   V_4
    IL_0073:  initobj    IK.ILSpanCasts.Internal.SpanView
    IL_0079:  ldloca.s   V_4
    IL_007b:  ldloc.1
    IL_007c:  ldfld      object IK.ILSpanCasts.Internal.Span2DView::Owner
    IL_0081:  stfld      object IK.ILSpanCasts.Internal.SpanView::Owner
    IL_0086:  ldloca.s   V_4
    IL_0088:  ldarg.3
    IL_0089:  stfld      int32 IK.ILSpanCasts.Internal.SpanView::Length
    IL_008e:  ldloca.s   V_4
    IL_0090:  ldloc.1
    IL_0091:  ldflda     native int IK.ILSpanCasts.Internal.Span2DView::Offset
    IL_0096:  call       instance int64 [netstandard]System.IntPtr::ToInt64()
    IL_009b:  ldloca.s   V_2
    IL_009d:  call       instance int64 [netstandard]System.IntPtr::ToInt64()
    IL_00a2:  add
    IL_00a3:  newobj     instance void [netstandard]System.IntPtr::.ctor(int64)
    IL_00a8:  stfld      native int IK.ILSpanCasts.Internal.SpanView::Offset
    IL_00ad:  ldloc.s    V_4
    IL_00af:  stloc.3
    IL_00b0:  ldloca.s   V_3
    IL_00b2:  call       valuetype [System.Memory]System.ReadOnlySpan`1<!!0>& IK.ILSpanCasts.Internal.SpanView::AsReadOnlySpan<!!0>(valuetype IK.ILSpanCasts.Internal.SpanView&)
    IL_00b7:  ldobj      valuetype [System.Memory]System.ReadOnlySpan`1<!!T>
    IL_00bc:  ret

    IL_00bd:  ldstr      "length"
    IL_00c2:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_00c7:  throw

    IL_00c8:  ldstr      "start"
    IL_00cd:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_00d2:  throw

    IL_00d3:  ldstr      "row"
    IL_00d8:  newobj     instance void [netstandard]System.ArgumentOutOfRangeException::.ctor(string)
    IL_00dd:  throw

    IL_00de:  ldloca.s   V_0
    IL_00e0:  initobj    valuetype [System.Memory]System.ReadOnlySpan`1<!!T>
    IL_00e6:  ldloc.0
    IL_00e7:  ret
  }
  
  .method private hidebysig static native int ByteOffset<T>(!!T& origin, !!T& target) cil managed aggressiveinlining
  {
        .maxstack 2
        ldarg.1
        ldarg.0
        sub
        ret
  }
}


.class private sequential ansi sealed beforefieldinit IK.ILSpanCasts.Internal.SpanView
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
  .method public hidebysig static valuetype IK.ILSpanCasts.Internal.SpanView& 
          AsView<T>(valuetype [System.Memory]System.Span`1<!!T>& span) cil managed aggressiveinlining
  {
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ret
  } 
  
  .method public hidebysig static valuetype IK.ILSpanCasts.Internal.SpanView& 
          AsView<T>(valuetype [System.Memory]System.ReadOnlySpan`1<!!T>& span) cil managed aggressiveinlining
  {
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ret
  } 

  .method public hidebysig static valuetype [System.Memory]System.Span`1<!!T>& 
          AsSpan<T>(valuetype IK.ILSpanCasts.Internal.SpanView& view) cil managed aggressiveinlining
  {
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ret
  } 
  
   .method public hidebysig static valuetype [System.Memory]System.ReadOnlySpan`1<!!T>& 
          AsReadOnlySpan<T>(valuetype IK.ILSpanCasts.Internal.SpanView& view) cil managed aggressiveinlining
  {
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ret
  } 

} 

.class private sequential ansi sealed beforefieldinit IK.ILSpanCasts.Internal.Span2DView
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
          instance void  .ctor(valuetype IK.ILSpanCasts.Internal.SpanView& view,
                               int32 height,
                               int32 width) cil managed
  {
    
    .maxstack  2
    .locals init (object V_0,
             native int V_1)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      object IK.ILSpanCasts.Internal.SpanView::Owner
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldfld      native int IK.ILSpanCasts.Internal.SpanView::Offset
    IL_000d:  stloc.1
    IL_000e:  ldarg.0
    IL_000f:  ldloc.0
    IL_0010:  stfld      object IK.ILSpanCasts.Internal.Span2DView::Owner
    IL_0015:  ldarg.0
    IL_0016:  ldloc.1
    IL_0017:  stfld      native int IK.ILSpanCasts.Internal.Span2DView::Offset
    IL_001c:  ldarg.0
    IL_001d:  ldarg.2
    IL_001e:  stfld      int32 IK.ILSpanCasts.Internal.Span2DView::Height
    IL_0023:  ldarg.0
    IL_0024:  ldarg.3
    IL_0025:  stfld      int32 IK.ILSpanCasts.Internal.Span2DView::Width
    IL_002a:  ldarg.0
    IL_002b:  ldarg.3
    IL_002c:  stfld      int32 IK.ILSpanCasts.Internal.Span2DView::Stride
    IL_0031:  ret
  } 

  .method public hidebysig static valuetype IK.ILSpanCasts.Internal.Span2DView& 
          AsView<T>(valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>& span) cil managed aggressiveinlining
  {
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ret
  } 

  .method public hidebysig static valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>& 
          AsSpan<T>(valuetype IK.ILSpanCasts.Internal.Span2DView& view) cil managed aggressiveinlining
  {
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ret
  } 
  
  .method public hidebysig static valuetype IK.ILSpanCasts.Internal.Span2DView& 
          AsView<T>(valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>& span) cil managed aggressiveinlining
  {
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ret
  } 
  
  .method public hidebysig static valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>& 
          AsReadOnlySpan<T>(valuetype IK.ILSpanCasts.Internal.Span2DView& view) cil managed aggressiveinlining
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
    .locals init (valuetype IK.ILSpanCasts.Internal.SpanView& V_0,
             valuetype IK.ILSpanCasts.Internal.Span2DView V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       valuetype IK.ILSpanCasts.Internal.SpanView& IK.ILSpanCasts.Internal.SpanView::AsView<!!0>(valuetype [System.Memory]System.Span`1<!!0>&)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.1
    IL_0009:  ldarg.2
    IL_000a:  newobj     instance void IK.ILSpanCasts.Internal.Span2DView::.ctor(valuetype IK.ILSpanCasts.Internal.SpanView&,
                                                                     int32,
                                                                     int32)
    IL_000f:  stloc.1
    IL_0010:  ldloca.s   V_1
    IL_0012:  call       valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!0>& IK.ILSpanCasts.Internal.Span2DView::AsSpan<!!0>(valuetype IK.ILSpanCasts.Internal.Span2DView&)
    IL_0017:  ldobj      valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.Span2D`1<!!T>
    IL_001c:  ret
  } 
    
  .method public hidebysig static valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T> 
          FromSpan<T>(valuetype [System.Memory]System.ReadOnlySpan`1<!!T>& span,
                      int32 height,
                      int32 width) cil managed aggressiveinlining
  {
    .maxstack  3
    .locals init (valuetype IK.ILSpanCasts.Internal.SpanView& V_0,
             valuetype IK.ILSpanCasts.Internal.Span2DView V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       valuetype IK.ILSpanCasts.Internal.SpanView& IK.ILSpanCasts.Internal.SpanView::AsView<!!0>(valuetype [System.Memory]System.ReadOnlySpan`1<!!0>&)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldarg.1
    IL_0009:  ldarg.2
    IL_000a:  newobj     instance void IK.ILSpanCasts.Internal.Span2DView::.ctor(valuetype IK.ILSpanCasts.Internal.SpanView&,
                                                                     int32,
                                                                     int32)
    IL_000f:  stloc.1
    IL_0010:  ldloca.s   V_1
    IL_0012:  call       valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!0>& IK.ILSpanCasts.Internal.Span2DView::AsReadOnlySpan<!!0>(valuetype IK.ILSpanCasts.Internal.Span2DView&)
    IL_0017:  ldobj      valuetype [Microsoft.Toolkit.HighPerformance]Microsoft.Toolkit.HighPerformance.ReadOnlySpan2D`1<!!T>
    IL_001c:  ret
  } 

} 