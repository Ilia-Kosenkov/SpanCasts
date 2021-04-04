using System;
using ILSpanCasts;
using Microsoft.Toolkit.HighPerformance;
using NUnit.Framework;

namespace Tests
{
    [TestFixture]
    [Parallelizable(ParallelScope.All)]
    public class Tests
    {
        [Test]
        public void Test_StackAlloc()
        {
            const int h = 17;
            const int w = 31;
            Span<int> buff = stackalloc int[h * w];

            for (var i = 0; i < 17; i++)
            {
                for (var j = 0; j < w; j++)
                {
                    buff[i * w + j] = i * 1000 + j;
                }
            }

            Span2D<int> span2d = buff.FromSpan(h, w);
            
            Assert.AreEqual(14022, span2d[14, 22]);
            Assert.AreEqual(05013, span2d[05, 13]);

            span2d[13, 11] = 100500;
            Assert.AreEqual(100500, buff[13 * w + 11]);
        }
        
        [Test]
        public void Test_HeapAlloc()
        {
            const int h = 17;
            const int w = 31;
            Span<int> buff = new int[h * w];

            for (var i = 0; i < 17; i++)
            {
                for (var j = 0; j < w; j++)
                {
                    buff[i * w + j] = i * 1000 + j;
                }
            }

            Span2D<int> span2d = buff.FromSpan(h, w);
            
            Assert.AreEqual(14022, span2d[14, 22]);
            Assert.AreEqual(05013, span2d[05, 13]);

            span2d[13, 11] = 100500;
            Assert.AreEqual(100500, buff[13 * w + 11]);
        }
        
        [Test]
        public void Test_HeapAlloc_WithCompaction()
        {
            const int h = 17;
            const int w = 31;

            var unused = new byte[1024];
            
            Span<int> buff = new int[h * w];

            for (var i = 0; i < 17; i++)
            {
                for (var j = 0; j < w; j++)
                {
                    buff[i * w + j] = i * 1000 + j; 
                }
            }

            Span2D<int> span2d = buff.FromSpan(h, w);
            
            Assert.AreEqual(14022, span2d[14, 22]);
            Assert.AreEqual(05013, span2d[05, 13]);

            span2d[13, 11] = 100500;
            Assert.AreEqual(100500, buff[13 * w + 11]);

            GC.Collect(GC.MaxGeneration, GCCollectionMode.Forced, true, true);
            GC.Collect(GC.MaxGeneration, GCCollectionMode.Forced, true, true);

            Assert.AreEqual(14022, span2d[14, 22]);
            Assert.AreEqual(05013, span2d[05, 13]);

            buff[13 * w + 11] = 500100;
            Assert.AreEqual(500100, span2d[13, 11]);
        }
    }
}