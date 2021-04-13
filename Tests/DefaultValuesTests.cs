using System;
using System.Diagnostics.CodeAnalysis;
using IK.ILSpanCasts;
using Microsoft.Toolkit.HighPerformance;
using NUnit.Framework;

#if !NETCOREAPP_2_1
[AttributeUsage(AttributeTargets.Field | AttributeTargets.Parameter | AttributeTargets.Property | AttributeTargets.ReturnValue)]
public sealed class AllowNullAttribute : Attribute
{}

#endif

namespace Tests
{
    [TestFixture]
    public class DefaultValuesTests
    {
        
        [Test]
        public void Test_ToSpan2D()
        {
            Assert.IsTrue(Span<int>.Empty.ToSpan2D(0, 0) == Span2D<int>.Empty);
            Assert.IsTrue(Span<sbyte>.Empty.ToSpan2D(0, 0) == Span2D<sbyte>.Empty);
            Assert.IsTrue(Span<object?>.Empty.ToSpan2D(0, 0) == Span2D<object?>.Empty);
            Assert.IsTrue(Span<double>.Empty.ToSpan2D(0, 0) == Span2D<double>.Empty);
            
            Assert.AreEqual(default(IntPtr), stackalloc int[] {1}.ToSpan2D(0, 0).Length);
            Assert.AreEqual(default(IntPtr), stackalloc sbyte[] {1}.ToSpan2D(0, 0).Length);
            Assert.AreEqual(default(IntPtr), ((Span<object?>) new object?[] { null }).ToSpan2D(0, 0).Length);
            Assert.AreEqual(default(IntPtr), stackalloc double[] {double.NaN}.ToSpan2D(0, 0).Length);
        }
        
        [Test]
        public void Test_ToReadOnlySpan2D()
        {
            Assert.IsTrue(ReadOnlySpan<int>.Empty.ToReadOnlySpan2D(0, 0) == ReadOnlySpan2D<int>.Empty);
            Assert.IsTrue(ReadOnlySpan<sbyte>.Empty.ToReadOnlySpan2D(0, 0) == ReadOnlySpan2D<sbyte>.Empty);
            Assert.IsTrue(ReadOnlySpan<object>.Empty.ToReadOnlySpan2D(0, 0) == ReadOnlySpan2D<object>.Empty);
            Assert.IsTrue(ReadOnlySpan<double>.Empty.ToReadOnlySpan2D(0, 0) == ReadOnlySpan2D<double>.Empty);
            
            Assert.AreEqual(default(IntPtr), ((ReadOnlySpan<int>)stackalloc int[] {1}).ToReadOnlySpan2D(0, 0).Length);
            Assert.AreEqual(default(IntPtr), ((ReadOnlySpan<sbyte>)stackalloc sbyte[] {1}).ToReadOnlySpan2D(0, 0).Length);
            Assert.AreEqual(default(IntPtr), ((ReadOnlySpan<object?>) new object?[] { null }).ToReadOnlySpan2D(0, 0).Length);
            Assert.AreEqual(default(IntPtr), ((ReadOnlySpan<double>)stackalloc double[] {double.NaN}).ToReadOnlySpan2D(0, 0).Length);
        }
    }
}