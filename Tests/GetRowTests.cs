using System;
using IK.ILSpanCasts;
using Microsoft.Toolkit.HighPerformance;
using NUnit.Framework;
using SpanExtensions = IK.ILSpanCasts.SpanExtensions;

namespace Tests
{
    [TestFixture]
    public class GetRowTests
    {
        [Test]
        [TestCase(0)]
        [TestCase(1)]
        public void Test_MutableArray_Compacting(int rowId)
        {
            var unused = new byte[1024];
            var array = new ulong[,]
            {
                {1, 2, 3},
                {4, 5, 6}
            };

            Span<ulong> row = array.GetRowMut(rowId);

            for (var i = 0; i < row.Length; i++)
            {
                Assert.AreEqual(array[rowId, i], row[i]);
            }
            
            GC.Collect(GC.MaxGeneration, GCCollectionMode.Forced, true, true);
            GC.Collect(GC.MaxGeneration, GCCollectionMode.Forced, true, true);

            for (var i = 0; i < row.Length; i++)
            {
                Assert.AreEqual(array[rowId, i], row[i]);
            }

            row[2] = 30;
            Assert.AreEqual(30, array[rowId, 2]);
        }
        
        [Test]
        [TestCase(0)]
        [TestCase(1)]
        public void Test_Array_Compacting(int rowId)
        {
            var unused = new byte[1024];
            var array = new ulong[,]
            {
                {1, 2, 3},
                {4, 5, 6}
            };

            ReadOnlySpan<ulong> row = SpanExtensions.GetRow(array, rowId);

            for (var i = 0; i < row.Length; i++)
            {
                Assert.AreEqual(array[rowId, i], row[i]);
            }
            
            GC.Collect(GC.MaxGeneration, GCCollectionMode.Forced, true, true);
            GC.Collect(GC.MaxGeneration, GCCollectionMode.Forced, true, true);

            for (var i = 0; i < row.Length; i++)
            {
                Assert.AreEqual(array[rowId, i], row[i]);
            }

            array[rowId, 2] = 30;
            Assert.AreEqual(30, row[2]);
        }
        
        [Test]
        [TestCase(0)]
        [TestCase(1)]
        public void Test_MutableSpan2D_Compacting(int rowId)
        {
            var unused = new byte[1024];
            var array = new ulong[,]
            {
                {1, 2, 3},
                {4, 5, 6}
            };

            Span2D<ulong> span2D = array.AsSpan2D();

            Span<ulong> row = SpanExtensions.GetRow(span2D, rowId);

            for (var i = 0; i < row.Length; i++)
            {
                Assert.AreEqual(array[rowId, i], row[i]);
            }
            
            GC.Collect(GC.MaxGeneration, GCCollectionMode.Forced, true, true);
            GC.Collect(GC.MaxGeneration, GCCollectionMode.Forced, true, true);

            for (var i = 0; i < row.Length; i++)
            {
                Assert.AreEqual(array[rowId, i], row[i]);
            }

            row[2] = 30;
            Assert.AreEqual(30, array[rowId, 2]);
        }
        
        [Test]
        [TestCase(0)]
        [TestCase(1)]
        public void Test_Span2D_Compacting(int rowId)
        {
            var unused = new byte[1024];
            var array = new ulong[,]
            {
                {1, 2, 3},
                {4, 5, 6}
            };

            ReadOnlySpan2D<ulong> span2D = array.AsSpan2D();

            ReadOnlySpan<ulong> row = span2D.GetRow(rowId, 0, 3);

            for (var i = 0; i < row.Length; i++)
            {
                Assert.AreEqual(array[rowId, i], row[i]);
            }
            
            GC.Collect(GC.MaxGeneration, GCCollectionMode.Forced, true, true);
            GC.Collect(GC.MaxGeneration, GCCollectionMode.Forced, true, true);

            for (var i = 0; i < row.Length; i++)
            {
                Assert.AreEqual(array[rowId, i], row[i]);
            }

            array[rowId, 2] = 30;
            Assert.AreEqual(30, row[2]);
        }

        [Test]
        public void Test_Span2D_Stack()
        {
            Span<long> span1 = stackalloc long[] {1, 2, 3, 4, 5, 6};
            Span2D<long> span2D = span1.ToSpan2D(2, 3);
            Span<long> span2 = SpanExtensions.GetRow(span2D, 0);
            Span<long> span3 = SpanExtensions.GetRow(span2D, 1);

            Assert.IsTrue(span1.Slice(0, 3) == span2);
            Assert.IsTrue(span1.Slice(3, 3) == span3);


            span2[1] = 20;
            span3[1] = 50;
            Assert.AreEqual(20, span1[1]);
            Assert.AreEqual(50, span1[4]);
            Assert.IsTrue(span1.Slice(0, 3) == span2);
            Assert.IsTrue(span1.Slice(3, 3) == span3);
        }
        
        [Test]
        public void Test_ReadOnlySpan2D_Stack()
        {
            Span<long> span1 = stackalloc long[] {1, 2, 3, 4, 5, 6};
            ReadOnlySpan2D<long> span2D = ((ReadOnlySpan<long>)span1).ToReadOnlySpan2D(2, 3);
            ReadOnlySpan<long> span2 = SpanExtensions.GetRow(span2D, 0);
            ReadOnlySpan<long> span3 = SpanExtensions.GetRow(span2D, 1);

            Assert.IsTrue(span1.Slice(0, 3) == span2);
            Assert.IsTrue(span1.Slice(3, 3) == span3);


            span1[1] = 20;
            span1[4] = 50;
            Assert.AreEqual(20, span2[1]);
            Assert.AreEqual(50, span3[1]);
            Assert.IsTrue(span1.Slice(0, 3) == span2);
            Assert.IsTrue(span1.Slice(3, 3) == span3);
        }
        
    }
}