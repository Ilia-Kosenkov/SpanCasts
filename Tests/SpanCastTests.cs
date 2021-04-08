using System;
using System.Runtime.InteropServices;
using ILSpanCasts;
using Microsoft.Toolkit.HighPerformance;
using NUnit.Framework;

namespace Tests
{
    [TestFixture]
    public class SpanCastTests
    {
        [Test]
        public void Test_2DArray_Compacting()
        {
            var unused = new byte[1024];
            
            var array = new[,]
            {
                {1, 2, 3}, 
                {4, 5, 6}
            };

            var height = array.GetLength(0);
            var width = array.GetLength(1);

            Span<int> span = array.ToSpan();

            for (var i = 0; i < height; i++)
            {
                for (var j = 0; j < width; j++)
                {
                    Assert.AreEqual(array[i, j], span[i * width + j]);
                }
            }

            span[5] = 42;
            Assert.AreEqual(42, array[1, 2]);
            
            GC.Collect(GC.MaxGeneration, GCCollectionMode.Forced, true, true);
            GC.Collect(GC.MaxGeneration, GCCollectionMode.Forced, true, true);

            array[1, 2] = 6;
            
            for (var i = 0; i < height; i++)
            {
                for (var j = 0; j < width; j++)
                {
                    Assert.AreEqual(array[i, j], span[i * width + j]);
                }
            }

            array[1, 2] = 100500;
            Assert.AreEqual(100500, span[5]);
        }
        
        [Test]
        public void Test_2DArray_SpanVSpan2D()
        {
            var unused = new byte[1024];
            
            var array = new[,]
            {
                {1, 2, 3}, 
                {4, 5, 6}
            };

            var height = array.GetLength(0);
            var width = array.GetLength(1);

            Span<int> span = array.ToSpan();
            Span2D<int> span2D = array;
            for (var i = 0; i < height; i++)
            {
                for (var j = 0; j < width; j++)
                {
                    Assert.AreEqual(span2D[i, j], span[i * width + j]);
                }
            }

            span[5] = 42;
            Assert.AreEqual(42, span2D[1, 2]);
            
            GC.Collect(GC.MaxGeneration, GCCollectionMode.Forced, true, true);
            GC.Collect(GC.MaxGeneration, GCCollectionMode.Forced, true, true);

            span2D[1, 2] = 6;
            
            for (var i = 0; i < height; i++)
            {
                for (var j = 0; j < width; j++)
                {
                    Assert.AreEqual(span2D[i, j], span[i * width + j]);
                }
            }

            span2D[1, 2] = 100500;
            Assert.AreEqual(100500, span[5]);
        }
        
        [Test]
        public void Test_2DArray_Compacting_ReadOnly()
        {
            var unused = new byte[1024];
            
            var array = new[,]
            {
                {1, 2, 3}, 
                {4, 5, 6}
            };

            var height = array.GetLength(0);
            var width = array.GetLength(1);

            ReadOnlySpan<int> span = array.ToReadOnlySpan();

            for (var i = 0; i < height; i++)
            {
                for (var j = 0; j < width; j++)
                {
                    Assert.AreEqual(array[i, j], span[i * width + j]);
                }
            }

            array[1, 2] = 42;
            Assert.AreEqual(42, span[5]);
            
            GC.Collect(GC.MaxGeneration, GCCollectionMode.Forced, true, true);
            GC.Collect(GC.MaxGeneration, GCCollectionMode.Forced, true, true);

            array[1, 2] = 6;
            
            for (var i = 0; i < height; i++)
            {
                for (var j = 0; j < width; j++)
                {
                    Assert.AreEqual(array[i, j], span[i * width + j]);
                }
            }

            array[1, 2] = 100500;
            Assert.AreEqual(100500, span[5]);
        }
        
        [Test]
        public void Test_2DArray_SpanVSpan2D_ReadOnly()
        {
            var unused = new byte[1024];
            
            var array = new[,]
            {
                {1, 2, 3}, 
                {4, 5, 6}
            };

            var height = array.GetLength(0);
            var width = array.GetLength(1);

            ReadOnlySpan<int> span = array.ToReadOnlySpan();
            ReadOnlySpan2D<int> span2D = array;
            for (var i = 0; i < height; i++)
            {
                for (var j = 0; j < width; j++)
                {
                    Assert.AreEqual(span2D[i, j], span[i * width + j]);
                }
            }

            array[1, 2] = 42;
            Assert.AreEqual(42, span[5]);
            
            GC.Collect(GC.MaxGeneration, GCCollectionMode.Forced, true, true);
            GC.Collect(GC.MaxGeneration, GCCollectionMode.Forced, true, true);

            array[1, 2] = 6;
            
            for (var i = 0; i < height; i++)
            {
                for (var j = 0; j < width; j++)
                {
                    Assert.AreEqual(span2D[i, j], span[i * width + j]);
                }
            }

            array[1, 2] = 100500;
            Assert.AreEqual(100500, span[5]);
        }
    }
}