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

            Span<ulong> row = span2D.GetRowMut(rowId);

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

            ReadOnlySpan<ulong> row = span2D.GetRow<ulong>(rowId, 0, 3);

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
    }
}