using System;
using System.Diagnostics.CodeAnalysis;
using IK.ILSpanCasts;
using Microsoft.Toolkit.HighPerformance;
using NUnit.Framework;
using SpanExtensions = IK.ILSpanCasts.SpanExtensions;

#if !NETCOREAPP_2_1
[AttributeUsage(AttributeTargets.Field | AttributeTargets.Parameter | AttributeTargets.Property | AttributeTargets.ReturnValue)]
public sealed class AllowNullAttribute : Attribute
{}

#endif

namespace Tests
{
    [TestFixture]
    [Parallelizable(ParallelScope.All)]
    public class DefaultValuesTests
    {
        
        [Test]
        public void Test_ToSpan2D()
        {
            Assert.Multiple(
                () =>
                {
                    Assert.IsTrue(Span<int>.Empty.ToSpan2D(1, 1) == Span2D<int>.Empty);
                    Assert.IsTrue(Span<sbyte>.Empty.ToSpan2D(1, 1) == Span2D<sbyte>.Empty);
                    Assert.IsTrue(Span<object>.Empty.ToSpan2D(1, 1) == Span2D<object>.Empty);
                    Assert.IsTrue(Span<double>.Empty.ToSpan2D(1, 1) == Span2D<double>.Empty);

                    Assert.IsTrue(stackalloc int[] {1}.ToSpan2D(0, 0) == Span2D<int>.Empty);
                    Assert.IsTrue(stackalloc sbyte[] {1}.ToSpan2D(0, 0) == Span2D<sbyte>.Empty);
                    Assert.IsTrue(((Span<object?>) new object?[] {null}).ToSpan2D(0, 0) == Span2D<object?>.Empty);
                    Assert.IsTrue(stackalloc double[] {double.NaN}.ToSpan2D(0, 0) == Span2D<double>.Empty);
                }
            );
        }
        
        [Test]
        public void Test_ToReadOnlySpan2D()
        {
            Assert.Multiple(
                () =>
                {
                    Assert.IsTrue(ReadOnlySpan<int>.Empty.ToReadOnlySpan2D(1, 1) == ReadOnlySpan2D<int>.Empty);
                    Assert.IsTrue(ReadOnlySpan<sbyte>.Empty.ToReadOnlySpan2D(1, 1) == ReadOnlySpan2D<sbyte>.Empty);
                    Assert.IsTrue(ReadOnlySpan<object>.Empty.ToReadOnlySpan2D(1, 1) == ReadOnlySpan2D<object>.Empty);
                    Assert.IsTrue(ReadOnlySpan<double>.Empty.ToReadOnlySpan2D(1, 1) == ReadOnlySpan2D<double>.Empty);

                    Assert.IsTrue(
                        ((ReadOnlySpan<int>) stackalloc int[] {1}).ToReadOnlySpan2D(0, 0) == ReadOnlySpan2D<int>.Empty
                    );
                    Assert.IsTrue(
                        ((ReadOnlySpan<sbyte>) stackalloc sbyte[] {1}).ToReadOnlySpan2D(0, 0) ==
                        ReadOnlySpan2D<sbyte>.Empty
                    );
                    Assert.IsTrue(
                        ((ReadOnlySpan<object?>) new object?[] {null}).ToReadOnlySpan2D(0, 0) ==
                        ReadOnlySpan2D<object?>.Empty
                    );
                    Assert.IsTrue(
                        ((ReadOnlySpan<double>) stackalloc double[] {double.NaN}).ToReadOnlySpan2D(0, 0) ==
                        ReadOnlySpan2D<double>.Empty
                    );
                }
            );
        }
        
        [Test]
        public void Test_ToSpan()
        {
            Assert.Multiple(
                () =>
                {
                    Assert.IsTrue(new int[0, 0].ToSpan() == Span<int>.Empty);
                    Assert.IsTrue(new sbyte[0, 0].ToSpan() == Span<sbyte>.Empty);
                    Assert.IsTrue(new object?[0, 0].ToSpan() == Span<object?>.Empty);
                    Assert.IsTrue(new double[0, 0].ToSpan() == Span<double>.Empty);
                }
            );
        }
        
        [Test]
        public void Test_ToSpan_FromNull()
        {
            Assert.Multiple(
                () =>
                {
                    Assert.IsTrue(((int[,]?) null).ToSpan() == Span<int>.Empty);
                    Assert.IsTrue(((sbyte[,]?) null).ToSpan() == Span<sbyte>.Empty);
                    Assert.IsTrue(((object?[,]?) null).ToSpan() == Span<object?>.Empty);
                    Assert.IsTrue(((double[,]?) null).ToSpan() == Span<double>.Empty);
                }
            );
        }
        
        [Test]
        public void Test_ToReadOnlySpan()
        {
            Assert.Multiple(
                () =>
                {
                    Assert.IsTrue(new int[0, 0].ToReadOnlySpan() == ReadOnlySpan<int>.Empty);
                    Assert.IsTrue(new sbyte[0, 0].ToReadOnlySpan() == ReadOnlySpan<sbyte>.Empty);
                    Assert.IsTrue(new object?[0, 0].ToReadOnlySpan() == ReadOnlySpan<object?>.Empty);
                    Assert.IsTrue(new double[0, 0].ToReadOnlySpan() == ReadOnlySpan<double>.Empty);
                }
            );
        }
        
        [Test]
        public void Test_ToReadOnlySpan_FromNull()
        {
            Assert.Multiple(
                () =>
                {
                    Assert.IsTrue(((int[,]?) null).ToReadOnlySpan() == ReadOnlySpan<int>.Empty);
                    Assert.IsTrue(((sbyte[,]?) null).ToReadOnlySpan() == ReadOnlySpan<sbyte>.Empty);
                    Assert.IsTrue(((object?[,]?) null).ToReadOnlySpan() == ReadOnlySpan<object?>.Empty);
                    Assert.IsTrue(((double[,]?) null).ToReadOnlySpan() == ReadOnlySpan<double>.Empty);
                }
            );
        }
        
        [Test]
        public void Test_GetRow_FromEmptyArray()
        {
            Assert.Multiple(
                () =>
                {
                    Assert.IsTrue(SpanExtensions.GetRow(new int[0, 0], 0) == ReadOnlySpan<int>.Empty);
                    Assert.IsTrue(SpanExtensions.GetRow(new sbyte[0, 0], 0) == ReadOnlySpan<sbyte>.Empty);
                    Assert.IsTrue(SpanExtensions.GetRow(new object?[0, 0], 0) == ReadOnlySpan<object?>.Empty);
                    Assert.IsTrue(SpanExtensions.GetRow(new double[0, 0], 0) == ReadOnlySpan<double>.Empty);
                }
            );
        }
        
        [Test]
        public void Test_GetRow_FromNullArray()
        {
            Assert.Multiple(
                () =>
                {
                    Assert.IsTrue(SpanExtensions.GetRow((int[,]?) null, 0) == ReadOnlySpan<int>.Empty);
                    Assert.IsTrue(SpanExtensions.GetRow((sbyte[,]?) null, 0) == ReadOnlySpan<sbyte>.Empty);
                    Assert.IsTrue(SpanExtensions.GetRow((object?[,]?) null, 0) == ReadOnlySpan<object?>.Empty);
                    Assert.IsTrue(SpanExtensions.GetRow((double[,]?) null, 0) == ReadOnlySpan<double>.Empty);
                }
            );
        }
        
        [Test]
        public void Test_GetRow_Args_FromEmptyArray_Or_Length()
        {
            Assert.Multiple(
                () =>
                {
                    Assert.IsTrue(new int[0, 0].GetRow(0, 0, 0) == ReadOnlySpan<int>.Empty);
                    Assert.IsTrue(new sbyte[0, 0].GetRow(0, 0, 0) == ReadOnlySpan<sbyte>.Empty);
                    Assert.IsTrue(new object?[0, 0].GetRow(0, 0, 0) == ReadOnlySpan<object?>.Empty);
                    Assert.IsTrue(new double[0, 0].GetRow(0, 0, 0) == ReadOnlySpan<double>.Empty);

                    Assert.IsTrue(new int[1, 1].GetRow(0, 0, 0) == ReadOnlySpan<int>.Empty);
                    Assert.IsTrue(new sbyte[1, 1].GetRow(0, 0, 0) == ReadOnlySpan<sbyte>.Empty);
                    Assert.IsTrue(new object?[1, 1].GetRow(0, 0, 0) == ReadOnlySpan<object?>.Empty);
                    Assert.IsTrue(new double[1, 1].GetRow(0, 0, 0) == ReadOnlySpan<double>.Empty);
                }
            );
        }
        
        [Test]
        public void Test_GetRow_Args_FromNullArray()
        {
            Assert.Multiple(
                () =>
                {
                    Assert.IsTrue(((int[,]?) null).GetRow(0, 0, 1) == ReadOnlySpan<int>.Empty);
                    Assert.IsTrue(((sbyte[,]?) null).GetRow(0, 0, 1) == ReadOnlySpan<sbyte>.Empty);
                    Assert.IsTrue(((object?[,]?) null).GetRow(0, 0, 1) == ReadOnlySpan<object?>.Empty);
                    Assert.IsTrue(((double[,]?) null).GetRow(0, 0, 1) == ReadOnlySpan<double>.Empty);
                }
            );
        }
        
        [Test]
        public void Test_GetRowMut_FromEmptyArray()
        {
            Assert.Multiple(
                () =>
                {
                    Assert.IsTrue(new int[0, 0].GetRowMut(0) == Span<int>.Empty);
                    Assert.IsTrue(new sbyte[0, 0].GetRowMut(0) == Span<sbyte>.Empty);
                    Assert.IsTrue(new object?[0, 0].GetRowMut(0) == Span<object?>.Empty);
                    Assert.IsTrue(new double[0, 0].GetRowMut(0) == Span<double>.Empty);
                }
            );
        }
        
        [Test]
        public void Test_GetRowMut_FromNullArray()
        {
            Assert.Multiple(
                () =>
                {
                    Assert.IsTrue(((int[,]?) null).GetRowMut(0) == Span<int>.Empty);
                    Assert.IsTrue(((sbyte[,]?) null).GetRowMut(0) == Span<sbyte>.Empty);
                    Assert.IsTrue(((object?[,]?) null).GetRowMut(0) == Span<object?>.Empty);
                    Assert.IsTrue(((double[,]?) null).GetRowMut(0) == Span<double>.Empty);
                }
            );
        }
        
        [Test]
        public void Test_GetRowMut_Args_FromEmptyArray_Or_Length()
        {
            Assert.Multiple(
                () =>
                {
                    Assert.IsTrue(((int[,]?) null).GetRowMut(0, 0, 1) == Span<int>.Empty);
                    Assert.IsTrue(((sbyte[,]?) null).GetRowMut(0, 0, 1) == Span<sbyte>.Empty);
                    Assert.IsTrue(((object?[,]?) null).GetRowMut(0, 0, 1) == Span<object?>.Empty);
                    Assert.IsTrue(((double[,]?) null).GetRowMut(0, 0, 1) == Span<double>.Empty);

                    Assert.IsTrue(new int[1, 1].GetRowMut(0, 0, 0) == Span<int>.Empty);
                    Assert.IsTrue(new sbyte[1, 1].GetRowMut(0, 0, 0) == Span<sbyte>.Empty);
                    Assert.IsTrue(new object?[1, 1].GetRowMut(0, 0, 0) == Span<object?>.Empty);
                    Assert.IsTrue(new double[1, 1].GetRowMut(0, 0, 0) == Span<double>.Empty);
                }
            );
        }
        
        [Test]
        public void Test_GetRowMut_Args_FromNullArray()
        {
            Assert.Multiple(
                () =>
                {
                    Assert.IsTrue(((int[,]?) null).GetRowMut(0, 0, 1) == Span<int>.Empty);
                    Assert.IsTrue(((sbyte[,]?) null).GetRowMut(0, 0, 1) == Span<sbyte>.Empty);
                    Assert.IsTrue(((object?[,]?) null).GetRowMut(0, 0, 1) == Span<object?>.Empty);
                    Assert.IsTrue(((double[,]?) null).GetRowMut(0, 0, 1) == Span<double>.Empty);
                }
            );
        }
        
        
        [Test]
        public void Test_GetRow_FromEmptyReadOnlySpan2D()
        {
            Assert.Multiple(
                () =>
                {
                    Assert.IsTrue(SpanExtensions.GetRow(ReadOnlySpan2D<int>.Empty, 0) == ReadOnlySpan<int>.Empty);
                    Assert.IsTrue(SpanExtensions.GetRow(ReadOnlySpan2D<sbyte>.Empty, 0) == ReadOnlySpan<sbyte>.Empty);
                    Assert.IsTrue(
                        SpanExtensions.GetRow(ReadOnlySpan2D<object?>.Empty, 0) == ReadOnlySpan<object?>.Empty
                    );
                    Assert.IsTrue(SpanExtensions.GetRow(ReadOnlySpan2D<double>.Empty, 0) == ReadOnlySpan<double>.Empty);
                }
            );
        }
        
        [Test]
        public void Test_GetRow_FromEmptySpan2D()
        {
            Assert.Multiple(
                () =>
                {
                    Assert.IsTrue(SpanExtensions.GetRow(Span2D<int>.Empty, 0) == Span<int>.Empty);
                    Assert.IsTrue(SpanExtensions.GetRow(Span2D<sbyte>.Empty, 0) == Span<sbyte>.Empty);
                    Assert.IsTrue(SpanExtensions.GetRow(Span2D<object?>.Empty, 0) == Span<object?>.Empty);
                    Assert.IsTrue(SpanExtensions.GetRow(Span2D<double>.Empty, 0) == Span<double>.Empty);
                }
            );
        }
        
        [Test]
        public void Test_GetRow_Args_FromEmptyReadOnlySpan2D_Or_Length()
        {
            Assert.Multiple(
                () =>
                {
                    Assert.IsTrue(ReadOnlySpan2D<int>.Empty.GetRow(0, 0, 1) == ReadOnlySpan<int>.Empty);
                    Assert.IsTrue(ReadOnlySpan2D<sbyte>.Empty.GetRow(0, 0, 1) == ReadOnlySpan<sbyte>.Empty);
                    Assert.IsTrue(ReadOnlySpan2D<object?>.Empty.GetRow(0, 0, 1) == ReadOnlySpan<object?>.Empty);
                    Assert.IsTrue(ReadOnlySpan2D<double>.Empty.GetRow(0, 0, 1) == ReadOnlySpan<double>.Empty);
                    
                    Assert.IsTrue(new ReadOnlySpan2D<int>(new int[1], 1, 1).GetRow(0, 0, 0) == ReadOnlySpan<int>.Empty);
                    Assert.IsTrue(new ReadOnlySpan2D<sbyte>(new sbyte[1], 1, 1).GetRow(0, 0, 0) == ReadOnlySpan<sbyte>.Empty);
                    Assert.IsTrue(new ReadOnlySpan2D<object?>(new object?[1], 1, 1).GetRow(0, 0, 0) == ReadOnlySpan<object?>.Empty);
                    Assert.IsTrue(new ReadOnlySpan2D<double>(new double[1], 1, 1).GetRow(0, 0, 0) == ReadOnlySpan<double>.Empty);
                }
            );
        }
        
        [Test]
        public void Test_GetRow_Args_FromEmptySpan2D_Or_Length()
        {
            Assert.Multiple(
                () =>
                {
                    Assert.IsTrue(Span2D<int>.Empty.GetRow(0, 0, 1) == Span<int>.Empty);
                    Assert.IsTrue(Span2D<sbyte>.Empty.GetRow(0, 0, 1) == Span<sbyte>.Empty);
                    Assert.IsTrue(Span2D<object?>.Empty.GetRow(0, 0, 1) == Span<object?>.Empty);
                    Assert.IsTrue(Span2D<double>.Empty.GetRow(0, 0, 1) == Span<double>.Empty);
                    
                    Assert.IsTrue(new Span2D<int>(new int[1], 1, 1).GetRow(0, 0, 0) == Span<int>.Empty);
                    Assert.IsTrue(new Span2D<sbyte>(new sbyte[1], 1, 1).GetRow(0, 0, 0) == Span<sbyte>.Empty);
                    Assert.IsTrue(new Span2D<object?>(new object?[1], 1, 1).GetRow(0, 0, 0) == Span<object?>.Empty);
                    Assert.IsTrue(new Span2D<double>(new double[1], 1, 1).GetRow(0, 0, 0) == Span<double>.Empty);
                }
            );
        }
    }
}