; ModuleID = 'samples/374.bc'
source_filename = "genbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tms = type { i64, i64, i64, i64 }
%struct.leveldata = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.optionstruct = type { i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr }
%struct.dispatchvec = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.statsblk = type { double, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i64, i32 }

@writeny.ybit = internal global [6 x i8] c" \10\08\04\02\01", align 1
@bit = internal constant [32 x i32] [i32 -2147483648, i32 1073741824, i32 536870912, i32 268435456, i32 134217728, i32 67108864, i32 33554432, i32 16777216, i32 8388608, i32 4194304, i32 2097152, i32 1048576, i32 524288, i32 262144, i32 131072, i32 65536, i32 32768, i32 16384, i32 8192, i32 4096, i32 2048, i32 1024, i32 512, i32 256, i32 128, i32 64, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1], align 16
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [36 x i8] c">E writeny : error on writing file\0A\00", align 1
@writegre.atomname = internal global [91 x i8] c"123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!\22#$%&'()*-/:;<=>?@[\\]^_`{|}~\00", align 16
@.str.1 = private unnamed_addr constant [34 x i8] c">E genbg : error on writing file\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c">E writenauty : error on writing file\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"\0AUsage: %s\0A\0A%s\00", align 1
@.str.7 = private unnamed_addr constant [103 x i8] c"genbg [-c -ugs -vq -lzF] [-Z#] [-D#] [-A] [-d#|-d#:#] [-D#|-D#:#] n1 n2 [mine[:maxe]] [res/mod] [file]\00", align 1
@.str.8 = private unnamed_addr constant [1656 x i8] c" Find all bicoloured graphs of a specified class.\0A\0A  n1   : the number of vertices in the first class\0A  n2   : the number of vertices in the second class\0A mine:maxe : a range for the number of edges\0A              #:0 means '# or more' except in the case 0:0\0A  res/mod : only generate subset res out of subsets 0..mod-1\0A   file : the name of the output file (default stdout)\0A  -c    : only write connected graphs\0A  -z    : all the vertices in the second class must have\0A          different neighbourhoods\0A  -F    : the vertices in the second class must have at least two\0A          neighbours of degree at least 2\0A  -L    : there is no vertex in the first class whose removal leaves\0A          the vertices in the second class unreachable from each other\0A  -Z#   : two vertices in the second class may have at most # common nbrs\0A  -A    : no vertex in the second class has a neighbourhood whith is a\0A          subset of another vertex in the second class\0A  -D#   : specify an upper bound for the maximum degree\0A          Example: -D6.  You can also give separate maxima for the\0A          two parts, for example: -D5:6\0A  -d#   : specify a lower bound for the minimum degree.\0A          Again, you can specify it separately for the two parts: -d1:2\0A  -g    : use graph6 format for output (default)\0A  -s    : use sparse6 format for output\0A  -a    : use Greechie diagram format for output\0A  -u    : do not output any graphs, just generate and count them\0A  -v    : display counts by number of edges to stderr\0A  -l    : canonically label output graphs (using the 2-part colouring)\0A\0A  -q    : suppress auxiliary output\0A\0A  See program text for much more information.\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Nauty&Traces version %.4f (%d bits)\0A\00", align 1
@connec = internal global i32 0, align 4
@verbose = internal global i32 0, align 4
@nautyformat = dso_local global i32 0, align 4
@nooutput = dso_local global i32 0, align 4
@canonise = dso_local global i32 0, align 4
@greout = dso_local global i32 0, align 4
@simple = internal global i32 0, align 4
@graph6 = dso_local global i32 0, align 4
@sparse6 = dso_local global i32 0, align 4
@quiet = dso_local global i32 0, align 4
@footfree = dso_local global i32 0, align 4
@cutfree = dso_local global i32 0, align 4
@maxdeg2 = internal global i32 0, align 4
@maxdeg1 = internal global i32 0, align 4
@mindeg2 = internal global i32 0, align 4
@mindeg1 = internal global i32 0, align 4
@antichain = dso_local global i32 0, align 4
@maxcommon = dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"genbg -Z\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"geng -X\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c":-\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"genbg -D\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"genbg -d\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@n1 = internal global i32 0, align 4
@maxn2 = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1
@res = internal global i32 0, align 4
@mod = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@mine = internal global i32 0, align 4
@maxe = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"%d-%d\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c">E genbg: must have n1=1..%d, n1+n2=1..%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c">E genbg: impossible mine,maxe,maxdeg values\0A\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c">E genbg: impossible mine,maxe,mindeg,maxdeg values\0A\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c">E Usage: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [52 x i8] c"   Use %s -help to see more detailed instructions.\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c">E genbg: -ungsa are incompatible\0A\00", align 1
@outproc = internal global ptr null, align 8
@ecount = internal global [257 x i64] zeroinitializer, align 16
@stdout = external global ptr, align 8
@outfile = internal global ptr null, align 8
@.str.27 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c">E genbg: can't open %s for writing\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c">A %s\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c" n=%d+%d e=%d:%d\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c" d=%d:%d D=%d:%d \00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"Z%d\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c" class=%d/%d\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@class1size = dso_local global i32 0, align 4
@timebuffer = internal global %struct.tms zeroinitializer, align 8
@curres = internal global i32 0, align 4
@nprune = internal global i32 0, align 4
@xstart = internal global [33 x i32] zeroinitializer, align 16
@data = internal global [32 x %struct.leveldata] zeroinitializer, align 16
@.str.42 = private unnamed_addr constant [29 x i8] c">C %lu graphs with %d edges\0A\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c">Z %lu graphs generated in %3.2f sec\0A\00", align 1
@leftbit = internal constant <{ [128 x i32], [128 x i32] }> <{ [128 x i32] [i32 8, i32 7, i32 6, i32 6, i32 5, i32 5, i32 5, i32 5, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [128 x i32] zeroinitializer }>, align 16
@xset = internal global ptr null, align 8
@xcard = internal global ptr null, align 8
@xinv = internal global ptr null, align 8
@.str.45 = private unnamed_addr constant [44 x i8] c">E genbg: malloc failed in makeleveldata()\0A\00", align 1
@bytecount = internal constant [256 x i32] [i32 0, i32 1, i32 1, i32 2, i32 1, i32 2, i32 2, i32 3, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 6, i32 7, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 6, i32 7, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 6, i32 7, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 6, i32 7, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 6, i32 7, i32 5, i32 6, i32 6, i32 7, i32 6, i32 7, i32 7, i32 8], align 16
@.str.46 = private unnamed_addr constant [26 x i8] c">E genbg: j=%d mxsets=%d\0A\00", align 1
@xbit = internal global [24 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536, i32 131072, i32 262144, i32 524288, i32 1048576, i32 2097152, i32 4194304, i32 8388608], align 16
@xval = internal global [32 x i32] zeroinitializer, align 16
@gcan = internal global [32 x i32] zeroinitializer, align 16
@accept2.options = internal global %struct.optionstruct { i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 78, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 100, i32 0, i32 1, i32 0, ptr @dispatch_graph, i32 0, ptr null }, align 8
@dispatch_graph = external global %struct.dispatchvec, align 8
@makecanon.options = internal global %struct.optionstruct { i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 78, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 100, i32 0, i32 1, i32 0, ptr @dispatch_graph, i32 0, ptr null }, align 8
@accept1.options = internal global %struct.optionstruct { i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 78, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 100, i32 0, i32 1, i32 0, ptr @dispatch_graph, i32 0, ptr null }, align 8

; Function Attrs: nounwind uwtable
define dso_local void @writeny(ptr noundef %f, ptr noundef %g, i32 noundef %n1, i32 noundef %n2) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %n1.addr = alloca i32, align 4
  %n2.addr = alloca i32, align 4
  %s = alloca [87 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %y = alloca i8, align 1
  %sp = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !5
  store ptr %g, ptr %g.addr, align 8, !tbaa !5
  store i32 %n1, ptr %n1.addr, align 4, !tbaa !9
  store i32 %n2, ptr %n2.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 87, ptr %s) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr %y) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  %0 = load i32, ptr %n1.addr, align 4, !tbaa !9
  %1 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %add = add nsw i32 %0, %1
  store i32 %add, ptr %n, align 4, !tbaa !9
  %arraydecay = getelementptr inbounds [87 x i8], ptr %s, i64 0, i64 0
  store ptr %arraydecay, ptr %sp, align 8, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !9
  %or = or i32 64, %2
  %conv = trunc i32 %or to i8
  %3 = load ptr, ptr %sp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %sp, align 8, !tbaa !5
  store i8 %conv, ptr %3, align 1, !tbaa !11
  store i8 64, ptr %y, align 1, !tbaa !11
  store i32 -1, ptr %k, align 4, !tbaa !9
  store i32 1, ptr %j, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %4 = load i32, ptr %j, align 4, !tbaa !9
  %5 = load i32, ptr %n, align 4, !tbaa !9
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !9
  %7 = load i32, ptr %j, align 4, !tbaa !9
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %8 = load i32, ptr %k, align 4, !tbaa !9
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %k, align 4, !tbaa !9
  %cmp6 = icmp eq i32 %inc, 6
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  %9 = load i8, ptr %y, align 1, !tbaa !11
  %10 = load ptr, ptr %sp, align 8, !tbaa !5
  %incdec.ptr8 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr8, ptr %sp, align 8, !tbaa !5
  store i8 %9, ptr %10, align 1, !tbaa !11
  store i8 64, ptr %y, align 1, !tbaa !11
  store i32 0, ptr %k, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5
  %11 = load ptr, ptr %g.addr, align 8, !tbaa !5
  %12 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i32, ptr %11, i64 %idxprom
  %13 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %14 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom9
  %15 = load i32, ptr %arrayidx10, align 4, !tbaa !9
  %and = and i32 %13, %15
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end
  %16 = load i32, ptr %k, align 4, !tbaa !9
  %idxprom12 = sext i32 %16 to i64
  %arrayidx13 = getelementptr inbounds [6 x i8], ptr @writeny.ybit, i64 0, i64 %idxprom12
  %17 = load i8, ptr %arrayidx13, align 1, !tbaa !11
  %conv14 = sext i8 %17 to i32
  %18 = load i8, ptr %y, align 1, !tbaa !11
  %conv15 = sext i8 %18 to i32
  %or16 = or i32 %conv15, %conv14
  %conv17 = trunc i32 %or16 to i8
  store i8 %conv17, ptr %y, align 1, !tbaa !11
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %19 = load i32, ptr %i, align 4, !tbaa !9
  %inc19 = add nsw i32 %19, 1
  store i32 %inc19, ptr %i, align 4, !tbaa !9
  br label %for.cond2, !llvm.loop !12

for.end:                                          ; preds = %for.cond2
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %20 = load i32, ptr %j, align 4, !tbaa !9
  %inc21 = add nsw i32 %20, 1
  store i32 %inc21, ptr %j, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !15

for.end22:                                        ; preds = %for.cond
  %21 = load i32, ptr %n, align 4, !tbaa !9
  %cmp23 = icmp sge i32 %21, 2
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %for.end22
  %22 = load i8, ptr %y, align 1, !tbaa !11
  %23 = load ptr, ptr %sp, align 8, !tbaa !5
  %incdec.ptr26 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr26, ptr %sp, align 8, !tbaa !5
  store i8 %22, ptr %23, align 1, !tbaa !11
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.end22
  %24 = load ptr, ptr %sp, align 8, !tbaa !5
  %incdec.ptr28 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr28, ptr %sp, align 8, !tbaa !5
  store i8 10, ptr %24, align 1, !tbaa !11
  %25 = load ptr, ptr %sp, align 8, !tbaa !5
  store i8 0, ptr %25, align 1, !tbaa !11
  %arraydecay29 = getelementptr inbounds [87 x i8], ptr %s, i64 0, i64 0
  %26 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %call = call i32 @fputs(ptr noundef %arraydecay29, ptr noundef %26)
  %cmp30 = icmp eq i32 %call, -1
  br i1 %cmp30, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end27
  %27 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %call32 = call i32 @ferror(ptr noundef %27) #7
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %lor.lhs.false, %if.end27
  %28 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str)
  call void @exit(i32 noundef 2) #8
  unreachable

if.end36:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr %y) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 87, ptr %s) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @fputs(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @writeg6x(ptr noundef %f, ptr noundef %g, i32 noundef %n1, i32 noundef %n2) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %n1.addr = alloca i32, align 4
  %n2.addr = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !5
  store ptr %g, ptr %g.addr, align 8, !tbaa !5
  store i32 %n1, ptr %n1.addr, align 4, !tbaa !9
  store i32 %n2, ptr %n2.addr, align 4, !tbaa !9
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %g.addr, align 8, !tbaa !5
  %2 = load i32, ptr %n1.addr, align 4, !tbaa !9
  %3 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %add = add nsw i32 %2, %3
  call void @writeg6(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef %add)
  ret void
}

declare void @writeg6(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @writes6x(ptr noundef %f, ptr noundef %g, i32 noundef %n1, i32 noundef %n2) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %n1.addr = alloca i32, align 4
  %n2.addr = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !5
  store ptr %g, ptr %g.addr, align 8, !tbaa !5
  store i32 %n1, ptr %n1.addr, align 4, !tbaa !9
  store i32 %n2, ptr %n2.addr, align 4, !tbaa !9
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %g.addr, align 8, !tbaa !5
  %2 = load i32, ptr %n1.addr, align 4, !tbaa !9
  %3 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %add = add nsw i32 %2, %3
  call void @writes6(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef %add)
  ret void
}

declare void @writes6(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @writegre(ptr noundef %f, ptr noundef %g, i32 noundef %n1, i32 noundef %n2) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %n1.addr = alloca i32, align 4
  %n2.addr = alloca i32, align 4
  %grestr = alloca [1061 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %gi = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !5
  store ptr %g, ptr %g.addr, align 8, !tbaa !5
  store i32 %n1, ptr %n1.addr, align 4, !tbaa !9
  store i32 %n2, ptr %n2.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 1061, ptr %grestr) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %gi) #7
  store i32 0, ptr %k, align 4, !tbaa !9
  %0 = load i32, ptr %n1.addr, align 4, !tbaa !9
  store i32 %0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !9
  %2 = load i32, ptr %n1.addr, align 4, !tbaa !9
  %3 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %add = add nsw i32 %2, %3
  %cmp = icmp slt i32 %1, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !tbaa !9
  %5 = load i32, ptr %n1.addr, align 4, !tbaa !9
  %cmp1 = icmp sgt i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %k, align 4, !tbaa !9
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %k, align 4, !tbaa !9
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [1061 x i8], ptr %grestr, i64 0, i64 %idxprom
  store i8 44, ptr %arrayidx, align 1, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load ptr, ptr %g.addr, align 8, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %7, i64 %idxprom2
  %9 = load i32, ptr %arrayidx3, align 4, !tbaa !9
  store i32 %9, ptr %gi, align 4, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %cond.end29, %if.end
  %10 = load i32, ptr %gi, align 4, !tbaa !9
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, ptr %gi, align 4, !tbaa !9
  %and = and i32 %11, -65536
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %cond.true, label %cond.false15

cond.true:                                        ; preds = %while.body
  %12 = load i32, ptr %gi, align 4, !tbaa !9
  %and5 = and i32 %12, -16777216
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %cond.true7, label %cond.false

cond.true7:                                       ; preds = %cond.true
  %13 = load i32, ptr %gi, align 4, !tbaa !9
  %shr = lshr i32 %13, 24
  %and8 = and i32 %shr, 255
  %idxprom9 = zext i32 %and8 to i64
  %arrayidx10 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom9
  %14 = load i32, ptr %arrayidx10, align 4, !tbaa !9
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %15 = load i32, ptr %gi, align 4, !tbaa !9
  %shr11 = lshr i32 %15, 16
  %idxprom12 = zext i32 %shr11 to i64
  %arrayidx13 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom12
  %16 = load i32, ptr %arrayidx13, align 4, !tbaa !9
  %add14 = add nsw i32 8, %16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true7
  %cond = phi i32 [ %14, %cond.true7 ], [ %add14, %cond.false ]
  br label %cond.end29

cond.false15:                                     ; preds = %while.body
  %17 = load i32, ptr %gi, align 4, !tbaa !9
  %and16 = and i32 %17, 65280
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %cond.true18, label %cond.false23

cond.true18:                                      ; preds = %cond.false15
  %18 = load i32, ptr %gi, align 4, !tbaa !9
  %shr19 = lshr i32 %18, 8
  %idxprom20 = zext i32 %shr19 to i64
  %arrayidx21 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom20
  %19 = load i32, ptr %arrayidx21, align 4, !tbaa !9
  %add22 = add nsw i32 16, %19
  br label %cond.end27

cond.false23:                                     ; preds = %cond.false15
  %20 = load i32, ptr %gi, align 4, !tbaa !9
  %idxprom24 = zext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom24
  %21 = load i32, ptr %arrayidx25, align 4, !tbaa !9
  %add26 = add nsw i32 24, %21
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false23, %cond.true18
  %cond28 = phi i32 [ %add22, %cond.true18 ], [ %add26, %cond.false23 ]
  br label %cond.end29

cond.end29:                                       ; preds = %cond.end27, %cond.end
  %cond30 = phi i32 [ %cond, %cond.end ], [ %cond28, %cond.end27 ]
  store i32 %cond30, ptr %j, align 4, !tbaa !9
  %22 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom31 = sext i32 %22 to i64
  %arrayidx32 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom31
  %23 = load i32, ptr %arrayidx32, align 4, !tbaa !9
  %24 = load i32, ptr %gi, align 4, !tbaa !9
  %xor = xor i32 %24, %23
  store i32 %xor, ptr %gi, align 4, !tbaa !9
  %25 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom33 = sext i32 %25 to i64
  %arrayidx34 = getelementptr inbounds [91 x i8], ptr @writegre.atomname, i64 0, i64 %idxprom33
  %26 = load i8, ptr %arrayidx34, align 1, !tbaa !11
  %27 = load i32, ptr %k, align 4, !tbaa !9
  %inc35 = add nsw i32 %27, 1
  store i32 %inc35, ptr %k, align 4, !tbaa !9
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds [1061 x i8], ptr %grestr, i64 0, i64 %idxprom36
  store i8 %26, ptr %arrayidx37, align 1, !tbaa !11
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %28 = load i32, ptr %i, align 4, !tbaa !9
  %inc38 = add nsw i32 %28, 1
  store i32 %inc38, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %29 = load i32, ptr %k, align 4, !tbaa !9
  %inc39 = add nsw i32 %29, 1
  store i32 %inc39, ptr %k, align 4, !tbaa !9
  %idxprom40 = sext i32 %29 to i64
  %arrayidx41 = getelementptr inbounds [1061 x i8], ptr %grestr, i64 0, i64 %idxprom40
  store i8 46, ptr %arrayidx41, align 1, !tbaa !11
  %30 = load i32, ptr %k, align 4, !tbaa !9
  %inc42 = add nsw i32 %30, 1
  store i32 %inc42, ptr %k, align 4, !tbaa !9
  %idxprom43 = sext i32 %30 to i64
  %arrayidx44 = getelementptr inbounds [1061 x i8], ptr %grestr, i64 0, i64 %idxprom43
  store i8 10, ptr %arrayidx44, align 1, !tbaa !11
  %31 = load i32, ptr %k, align 4, !tbaa !9
  %idxprom45 = sext i32 %31 to i64
  %arrayidx46 = getelementptr inbounds [1061 x i8], ptr %grestr, i64 0, i64 %idxprom45
  store i8 0, ptr %arrayidx46, align 1, !tbaa !11
  %arraydecay = getelementptr inbounds [1061 x i8], ptr %grestr, i64 0, i64 0
  %32 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %call = call i32 @fputs(ptr noundef %arraydecay, ptr noundef %32)
  %cmp47 = icmp eq i32 %call, -1
  br i1 %cmp47, label %if.then50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %33 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %call48 = call i32 @ferror(ptr noundef %33) #7
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %lor.lhs.false, %for.end
  %34 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.1)
  call void @gt_abort(ptr noundef null)
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 4, ptr %gi) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 1061, ptr %grestr) #7
  ret void
}

declare void @gt_abort(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @writenauty(ptr noundef %f, ptr noundef %g, i32 noundef %n1, i32 noundef %n2) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %n1.addr = alloca i32, align 4
  %n2.addr = alloca i32, align 4
  %nn = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !5
  store ptr %g, ptr %g.addr, align 8, !tbaa !5
  store i32 %n1, ptr %n1.addr, align 4, !tbaa !9
  store i32 %n2, ptr %n2.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %nn) #7
  %0 = load i32, ptr %n1.addr, align 4, !tbaa !9
  %1 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %add = add nsw i32 %0, %1
  store i32 %add, ptr %nn, align 4, !tbaa !9
  %2 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %call = call i64 @fwrite(ptr noundef %nn, i64 noundef 4, i64 noundef 1, ptr noundef %2)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %g.addr, align 8, !tbaa !5
  %4 = load i32, ptr %nn, align 4, !tbaa !9
  %conv = sext i32 %4 to i64
  %5 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %call1 = call i64 @fwrite(ptr noundef %3, i64 noundef 4, i64 noundef %conv, ptr noundef %5)
  %6 = load i32, ptr %nn, align 4, !tbaa !9
  %conv2 = sext i32 %6 to i64
  %cmp3 = icmp ne i64 %call1, %conv2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.2)
  call void @exit(i32 noundef 2) #8
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 4, ptr %nn) #7
  ret void
}

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %arg = alloca ptr, align 8
  %badargs = alloca i32, align 4
  %gotD = alloca i32, align 4
  %gote = alloca i32, align 4
  %gotf = alloca i32, align 4
  %gotmr = alloca i32, align 4
  %gotZ = alloca i32, align 4
  %gotd = alloca i32, align 4
  %gotX = alloca i32, align 4
  %Dval1 = alloca i64, align 8
  %Dval2 = alloca i64, align 8
  %dval1 = alloca i64, align 8
  %dval2 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %imin = alloca i32, align 4
  %imax = alloca i32, align 4
  %argnum = alloca i32, align 4
  %sw = alloca i32, align 4
  %splitlevinc = alloca i32, align 4
  %g = alloca [24 x i32], align 16
  %deg = alloca [24 x i32], align 16
  %nout = alloca i64, align 8
  %t1 = alloca double, align 8
  %t2 = alloca double, align 8
  %outfilename = alloca ptr, align 8
  %msg = alloca [201 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !9
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %badargs) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %gotD) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %gote) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %gotf) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %gotmr) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %gotZ) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %gotd) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %gotX) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %Dval1) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %Dval2) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %dval1) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %dval2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %imin) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %imax) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %argnum) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %sw) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %splitlevinc) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr %g) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr %deg) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %nout) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %t1) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %t2) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %outfilename) #7
  call void @llvm.lifetime.start.p0(i64 201, ptr %msg) #7
  %0 = load i32, ptr %argc.addr, align 4, !tbaa !9
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %call = call i32 @strcmp(ptr noundef %2, ptr noundef @.str.3) #9
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx2, align 8, !tbaa !5
  %call3 = call i32 @strcmp(ptr noundef %4, ptr noundef @.str.4) #9
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %arrayidx6 = getelementptr inbounds ptr, ptr %5, i64 1
  %6 = load ptr, ptr %arrayidx6, align 8, !tbaa !5
  %call7 = call i32 @strcmp(ptr noundef %6, ptr noundef @.str.5) #9
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %land.lhs.true
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef @.str.7, ptr noundef @.str.8)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5, %entry
  %7 = load i32, ptr %argc.addr, align 4, !tbaa !9
  %cmp10 = icmp sgt i32 %7, 1
  br i1 %cmp10, label %land.lhs.true11, label %if.end21

land.lhs.true11:                                  ; preds = %if.end
  %8 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %arrayidx12 = getelementptr inbounds ptr, ptr %8, i64 1
  %9 = load ptr, ptr %arrayidx12, align 8, !tbaa !5
  %call13 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.9) #9
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then19, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %land.lhs.true11
  %10 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %arrayidx16 = getelementptr inbounds ptr, ptr %10, i64 1
  %11 = load ptr, ptr %arrayidx16, align 8, !tbaa !5
  %call17 = call i32 @strcmp(ptr noundef %11, ptr noundef @.str.10) #9
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %lor.lhs.false15, %land.lhs.true11
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef 2.604000e+00, i32 noundef 32)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false15, %if.end
  call void @nauty_check(i32 noundef 32, i32 noundef 1, i32 noundef 32, i32 noundef 26040)
  store i32 0, ptr %badargs, align 4, !tbaa !9
  store i32 0, ptr @connec, align 4, !tbaa !9
  store i32 0, ptr @verbose, align 4, !tbaa !9
  store i32 0, ptr @nautyformat, align 4, !tbaa !9
  store i32 0, ptr @nooutput, align 4, !tbaa !9
  store i32 0, ptr @canonise, align 4, !tbaa !9
  store i32 0, ptr @greout, align 4, !tbaa !9
  store i32 0, ptr @simple, align 4, !tbaa !9
  store i32 0, ptr @graph6, align 4, !tbaa !9
  store i32 0, ptr @sparse6, align 4, !tbaa !9
  store i32 0, ptr @quiet, align 4, !tbaa !9
  store i32 0, ptr @footfree, align 4, !tbaa !9
  store i32 0, ptr @cutfree, align 4, !tbaa !9
  store i32 0, ptr %gote, align 4, !tbaa !9
  store i32 0, ptr %gotf, align 4, !tbaa !9
  store i32 0, ptr %gotmr, align 4, !tbaa !9
  store i32 0, ptr %gotD, align 4, !tbaa !9
  store i32 0, ptr %gotd, align 4, !tbaa !9
  store i32 0, ptr %gotZ, align 4, !tbaa !9
  store i32 0, ptr %gotX, align 4, !tbaa !9
  store ptr null, ptr %outfilename, align 8, !tbaa !5
  store i32 32, ptr @maxdeg2, align 4, !tbaa !9
  store i32 32, ptr @maxdeg1, align 4, !tbaa !9
  store i32 0, ptr @mindeg2, align 4, !tbaa !9
  store i32 0, ptr @mindeg1, align 4, !tbaa !9
  store i32 0, ptr %argnum, align 4, !tbaa !9
  store i32 1, ptr %j, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end21
  %12 = load i32, ptr %badargs, align 4, !tbaa !9
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %13 = load i32, ptr %j, align 4, !tbaa !9
  %14 = load i32, ptr %argc.addr, align 4, !tbaa !9
  %cmp22 = icmp slt i32 %13, %14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %cmp22, %land.rhs ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %16 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %17 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom = sext i32 %17 to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %16, i64 %idxprom
  %18 = load ptr, ptr %arrayidx23, align 8, !tbaa !5
  store ptr %18, ptr %arg, align 8, !tbaa !5
  %19 = load ptr, ptr %arg, align 8, !tbaa !5
  %arrayidx24 = getelementptr inbounds i8, ptr %19, i64 0
  %20 = load i8, ptr %arrayidx24, align 1, !tbaa !11
  %conv = sext i8 %20 to i32
  %cmp25 = icmp eq i32 %conv, 45
  br i1 %cmp25, label %land.lhs.true27, label %if.else122

land.lhs.true27:                                  ; preds = %for.body
  %21 = load ptr, ptr %arg, align 8, !tbaa !5
  %arrayidx28 = getelementptr inbounds i8, ptr %21, i64 1
  %22 = load i8, ptr %arrayidx28, align 1, !tbaa !11
  %conv29 = sext i8 %22 to i32
  %cmp30 = icmp ne i32 %conv29, 0
  br i1 %cmp30, label %if.then32, label %if.else122

if.then32:                                        ; preds = %land.lhs.true27
  %23 = load ptr, ptr %arg, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr, ptr %arg, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end121, %if.then32
  %24 = load ptr, ptr %arg, align 8, !tbaa !5
  %25 = load i8, ptr %24, align 1, !tbaa !11
  %conv33 = sext i8 %25 to i32
  %cmp34 = icmp ne i32 %conv33, 0
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load ptr, ptr %arg, align 8, !tbaa !5
  %incdec.ptr36 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr36, ptr %arg, align 8, !tbaa !5
  %27 = load i8, ptr %26, align 1, !tbaa !11
  %conv37 = sext i8 %27 to i32
  store i32 %conv37, ptr %sw, align 4, !tbaa !9
  %28 = load i32, ptr %sw, align 4, !tbaa !9
  %cmp38 = icmp eq i32 %28, 110
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %while.body
  store i32 1, ptr @nautyformat, align 4, !tbaa !9
  br label %if.end121

if.else:                                          ; preds = %while.body
  %29 = load i32, ptr %sw, align 4, !tbaa !9
  %cmp41 = icmp eq i32 %29, 117
  br i1 %cmp41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.else
  store i32 1, ptr @nooutput, align 4, !tbaa !9
  br label %if.end120

if.else44:                                        ; preds = %if.else
  %30 = load i32, ptr %sw, align 4, !tbaa !9
  %cmp45 = icmp eq i32 %30, 113
  br i1 %cmp45, label %if.then47, label %if.else48

if.then47:                                        ; preds = %if.else44
  store i32 1, ptr @quiet, align 4, !tbaa !9
  br label %if.end119

if.else48:                                        ; preds = %if.else44
  %31 = load i32, ptr %sw, align 4, !tbaa !9
  %cmp49 = icmp eq i32 %31, 118
  br i1 %cmp49, label %if.then51, label %if.else52

if.then51:                                        ; preds = %if.else48
  store i32 1, ptr @verbose, align 4, !tbaa !9
  br label %if.end118

if.else52:                                        ; preds = %if.else48
  %32 = load i32, ptr %sw, align 4, !tbaa !9
  %cmp53 = icmp eq i32 %32, 122
  br i1 %cmp53, label %if.then55, label %if.else56

if.then55:                                        ; preds = %if.else52
  store i32 1, ptr @simple, align 4, !tbaa !9
  br label %if.end117

if.else56:                                        ; preds = %if.else52
  %33 = load i32, ptr %sw, align 4, !tbaa !9
  %cmp57 = icmp eq i32 %33, 70
  br i1 %cmp57, label %if.then59, label %if.else60

if.then59:                                        ; preds = %if.else56
  store i32 1, ptr @footfree, align 4, !tbaa !9
  br label %if.end116

if.else60:                                        ; preds = %if.else56
  %34 = load i32, ptr %sw, align 4, !tbaa !9
  %cmp61 = icmp eq i32 %34, 76
  br i1 %cmp61, label %if.then63, label %if.else64

if.then63:                                        ; preds = %if.else60
  store i32 1, ptr @cutfree, align 4, !tbaa !9
  br label %if.end115

if.else64:                                        ; preds = %if.else60
  %35 = load i32, ptr %sw, align 4, !tbaa !9
  %cmp65 = icmp eq i32 %35, 65
  br i1 %cmp65, label %if.then67, label %if.else68

if.then67:                                        ; preds = %if.else64
  store i32 1, ptr @antichain, align 4, !tbaa !9
  br label %if.end114

if.else68:                                        ; preds = %if.else64
  %36 = load i32, ptr %sw, align 4, !tbaa !9
  %cmp69 = icmp eq i32 %36, 108
  br i1 %cmp69, label %if.then71, label %if.else72

if.then71:                                        ; preds = %if.else68
  store i32 1, ptr @canonise, align 4, !tbaa !9
  br label %if.end113

if.else72:                                        ; preds = %if.else68
  %37 = load i32, ptr %sw, align 4, !tbaa !9
  %cmp73 = icmp eq i32 %37, 99
  br i1 %cmp73, label %if.then75, label %if.else76

if.then75:                                        ; preds = %if.else72
  store i32 1, ptr @connec, align 4, !tbaa !9
  br label %if.end112

if.else76:                                        ; preds = %if.else72
  %38 = load i32, ptr %sw, align 4, !tbaa !9
  %cmp77 = icmp eq i32 %38, 97
  br i1 %cmp77, label %if.then79, label %if.else80

if.then79:                                        ; preds = %if.else76
  store i32 1, ptr @greout, align 4, !tbaa !9
  br label %if.end111

if.else80:                                        ; preds = %if.else76
  %39 = load i32, ptr %sw, align 4, !tbaa !9
  %cmp81 = icmp eq i32 %39, 103
  br i1 %cmp81, label %if.then83, label %if.else84

if.then83:                                        ; preds = %if.else80
  store i32 1, ptr @graph6, align 4, !tbaa !9
  br label %if.end110

if.else84:                                        ; preds = %if.else80
  %40 = load i32, ptr %sw, align 4, !tbaa !9
  %cmp85 = icmp eq i32 %40, 115
  br i1 %cmp85, label %if.then87, label %if.else88

if.then87:                                        ; preds = %if.else84
  store i32 1, ptr @sparse6, align 4, !tbaa !9
  br label %if.end109

if.else88:                                        ; preds = %if.else84
  %41 = load i32, ptr %sw, align 4, !tbaa !9
  %cmp89 = icmp eq i32 %41, 90
  br i1 %cmp89, label %if.then91, label %if.else92

if.then91:                                        ; preds = %if.else88
  store i32 1, ptr %gotZ, align 4, !tbaa !9
  call void @arg_int(ptr noundef %arg, ptr noundef @maxcommon, ptr noundef @.str.12)
  br label %if.end108

if.else92:                                        ; preds = %if.else88
  %42 = load i32, ptr %sw, align 4, !tbaa !9
  %cmp93 = icmp eq i32 %42, 88
  br i1 %cmp93, label %if.then95, label %if.else96

if.then95:                                        ; preds = %if.else92
  store i32 1, ptr %gotX, align 4, !tbaa !9
  call void @arg_int(ptr noundef %arg, ptr noundef %splitlevinc, ptr noundef @.str.13)
  br label %if.end107

if.else96:                                        ; preds = %if.else92
  %43 = load i32, ptr %sw, align 4, !tbaa !9
  %cmp97 = icmp eq i32 %43, 68
  br i1 %cmp97, label %if.then99, label %if.else100

if.then99:                                        ; preds = %if.else96
  store i32 1, ptr %gotD, align 4, !tbaa !9
  call void @arg_range(ptr noundef %arg, ptr noundef @.str.14, ptr noundef %Dval1, ptr noundef %Dval2, ptr noundef @.str.15)
  br label %if.end106

if.else100:                                       ; preds = %if.else96
  %44 = load i32, ptr %sw, align 4, !tbaa !9
  %cmp101 = icmp eq i32 %44, 100
  br i1 %cmp101, label %if.then103, label %if.else104

if.then103:                                       ; preds = %if.else100
  store i32 1, ptr %gotd, align 4, !tbaa !9
  call void @arg_range(ptr noundef %arg, ptr noundef @.str.14, ptr noundef %dval1, ptr noundef %dval2, ptr noundef @.str.16)
  br label %if.end105

if.else104:                                       ; preds = %if.else100
  store i32 1, ptr %badargs, align 4, !tbaa !9
  br label %if.end105

if.end105:                                        ; preds = %if.else104, %if.then103
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.then99
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then95
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.then91
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.then87
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.then83
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.then79
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %if.then75
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.then71
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.then67
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.then63
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.then59
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.then55
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.then51
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %if.then47
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.then43
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.then40
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  br label %if.end196

if.else122:                                       ; preds = %land.lhs.true27, %for.body
  %45 = load ptr, ptr %arg, align 8, !tbaa !5
  %arrayidx123 = getelementptr inbounds i8, ptr %45, i64 0
  %46 = load i8, ptr %arrayidx123, align 1, !tbaa !11
  %conv124 = sext i8 %46 to i32
  %cmp125 = icmp eq i32 %conv124, 45
  br i1 %cmp125, label %land.lhs.true127, label %if.else133

land.lhs.true127:                                 ; preds = %if.else122
  %47 = load ptr, ptr %arg, align 8, !tbaa !5
  %arrayidx128 = getelementptr inbounds i8, ptr %47, i64 1
  %48 = load i8, ptr %arrayidx128, align 1, !tbaa !11
  %conv129 = sext i8 %48 to i32
  %cmp130 = icmp eq i32 %conv129, 0
  br i1 %cmp130, label %if.then132, label %if.else133

if.then132:                                       ; preds = %land.lhs.true127
  store i32 1, ptr %gotf, align 4, !tbaa !9
  br label %if.end195

if.else133:                                       ; preds = %land.lhs.true127, %if.else122
  %49 = load i32, ptr %argnum, align 4, !tbaa !9
  %cmp134 = icmp eq i32 %49, 0
  br i1 %cmp134, label %if.then136, label %if.else142

if.then136:                                       ; preds = %if.else133
  %50 = load ptr, ptr %arg, align 8, !tbaa !5
  %call137 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %50, ptr noundef @.str.17, ptr noundef @n1) #7
  %cmp138 = icmp ne i32 %call137, 1
  br i1 %cmp138, label %if.then140, label %if.end141

if.then140:                                       ; preds = %if.then136
  store i32 1, ptr %badargs, align 4, !tbaa !9
  br label %if.end141

if.end141:                                        ; preds = %if.then140, %if.then136
  %51 = load i32, ptr %argnum, align 4, !tbaa !9
  %inc = add nsw i32 %51, 1
  store i32 %inc, ptr %argnum, align 4, !tbaa !9
  br label %if.end194

if.else142:                                       ; preds = %if.else133
  %52 = load i32, ptr %argnum, align 4, !tbaa !9
  %cmp143 = icmp eq i32 %52, 1
  br i1 %cmp143, label %if.then145, label %if.else152

if.then145:                                       ; preds = %if.else142
  %53 = load ptr, ptr %arg, align 8, !tbaa !5
  %call146 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %53, ptr noundef @.str.17, ptr noundef @maxn2) #7
  %cmp147 = icmp ne i32 %call146, 1
  br i1 %cmp147, label %if.then149, label %if.end150

if.then149:                                       ; preds = %if.then145
  store i32 1, ptr %badargs, align 4, !tbaa !9
  br label %if.end150

if.end150:                                        ; preds = %if.then149, %if.then145
  %54 = load i32, ptr %argnum, align 4, !tbaa !9
  %inc151 = add nsw i32 %54, 1
  store i32 %inc151, ptr %argnum, align 4, !tbaa !9
  br label %if.end193

if.else152:                                       ; preds = %if.else142
  %55 = load i32, ptr %gotf, align 4, !tbaa !9
  %tobool153 = icmp ne i32 %55, 0
  br i1 %tobool153, label %if.then154, label %if.else155

if.then154:                                       ; preds = %if.else152
  store i32 1, ptr %badargs, align 4, !tbaa !9
  br label %if.end192

if.else155:                                       ; preds = %if.else152
  %56 = load i32, ptr %gotmr, align 4, !tbaa !9
  %tobool156 = icmp ne i32 %56, 0
  br i1 %tobool156, label %if.end163, label %if.then157

if.then157:                                       ; preds = %if.else155
  %57 = load ptr, ptr %arg, align 8, !tbaa !5
  %call158 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %57, ptr noundef @.str.18, ptr noundef @res, ptr noundef @mod) #7
  %cmp159 = icmp eq i32 %call158, 2
  br i1 %cmp159, label %if.then161, label %if.end162

if.then161:                                       ; preds = %if.then157
  store i32 1, ptr %gotmr, align 4, !tbaa !9
  br label %for.inc

if.end162:                                        ; preds = %if.then157
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.else155
  %58 = load i32, ptr %gote, align 4, !tbaa !9
  %tobool164 = icmp ne i32 %58, 0
  br i1 %tobool164, label %if.end188, label %if.then165

if.then165:                                       ; preds = %if.end163
  %59 = load ptr, ptr %arg, align 8, !tbaa !5
  %call166 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %59, ptr noundef @.str.19, ptr noundef @mine, ptr noundef @maxe) #7
  %cmp167 = icmp eq i32 %call166, 2
  br i1 %cmp167, label %if.then173, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %if.then165
  %60 = load ptr, ptr %arg, align 8, !tbaa !5
  %call170 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %60, ptr noundef @.str.20, ptr noundef @mine, ptr noundef @maxe) #7
  %cmp171 = icmp eq i32 %call170, 2
  br i1 %cmp171, label %if.then173, label %if.else181

if.then173:                                       ; preds = %lor.lhs.false169, %if.then165
  store i32 1, ptr %gote, align 4, !tbaa !9
  %61 = load i32, ptr @maxe, align 4, !tbaa !9
  %cmp174 = icmp eq i32 %61, 0
  br i1 %cmp174, label %land.lhs.true176, label %if.end180

land.lhs.true176:                                 ; preds = %if.then173
  %62 = load i32, ptr @mine, align 4, !tbaa !9
  %cmp177 = icmp sgt i32 %62, 0
  br i1 %cmp177, label %if.then179, label %if.end180

if.then179:                                       ; preds = %land.lhs.true176
  store i32 256, ptr @maxe, align 4, !tbaa !9
  br label %if.end180

if.end180:                                        ; preds = %if.then179, %land.lhs.true176, %if.then173
  br label %for.inc

if.else181:                                       ; preds = %lor.lhs.false169
  %63 = load ptr, ptr %arg, align 8, !tbaa !5
  %call182 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %63, ptr noundef @.str.17, ptr noundef @mine) #7
  %cmp183 = icmp eq i32 %call182, 1
  br i1 %cmp183, label %if.then185, label %if.end186

if.then185:                                       ; preds = %if.else181
  store i32 1, ptr %gote, align 4, !tbaa !9
  %64 = load i32, ptr @mine, align 4, !tbaa !9
  store i32 %64, ptr @maxe, align 4, !tbaa !9
  br label %for.inc

if.end186:                                        ; preds = %if.else181
  br label %if.end187

if.end187:                                        ; preds = %if.end186
  br label %if.end188

if.end188:                                        ; preds = %if.end187, %if.end163
  %65 = load i32, ptr %gotf, align 4, !tbaa !9
  %tobool189 = icmp ne i32 %65, 0
  br i1 %tobool189, label %if.end191, label %if.then190

if.then190:                                       ; preds = %if.end188
  %66 = load ptr, ptr %arg, align 8, !tbaa !5
  store ptr %66, ptr %outfilename, align 8, !tbaa !5
  store i32 1, ptr %gotf, align 4, !tbaa !9
  br label %for.inc

if.end191:                                        ; preds = %if.end188
  br label %if.end192

if.end192:                                        ; preds = %if.end191, %if.then154
  br label %if.end193

if.end193:                                        ; preds = %if.end192, %if.end150
  br label %if.end194

if.end194:                                        ; preds = %if.end193, %if.end141
  br label %if.end195

if.end195:                                        ; preds = %if.end194, %if.then132
  br label %if.end196

if.end196:                                        ; preds = %if.end195, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end196, %if.then190, %if.then185, %if.end180, %if.then161
  %67 = load i32, ptr %j, align 4, !tbaa !9
  %inc197 = add nsw i32 %67, 1
  store i32 %inc197, ptr %j, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %land.end
  %68 = load i32, ptr %argnum, align 4, !tbaa !9
  %cmp198 = icmp slt i32 %68, 2
  br i1 %cmp198, label %if.then200, label %if.else201

if.then200:                                       ; preds = %for.end
  store i32 1, ptr %badargs, align 4, !tbaa !9
  br label %if.end216

if.else201:                                       ; preds = %for.end
  %69 = load i32, ptr @n1, align 4, !tbaa !9
  %cmp202 = icmp slt i32 %69, 1
  br i1 %cmp202, label %if.then213, label %lor.lhs.false204

lor.lhs.false204:                                 ; preds = %if.else201
  %70 = load i32, ptr @maxn2, align 4, !tbaa !9
  %cmp205 = icmp slt i32 %70, 0
  br i1 %cmp205, label %if.then213, label %lor.lhs.false207

lor.lhs.false207:                                 ; preds = %lor.lhs.false204
  %71 = load i32, ptr @n1, align 4, !tbaa !9
  %cmp208 = icmp sgt i32 %71, 24
  br i1 %cmp208, label %if.then213, label %lor.lhs.false210

lor.lhs.false210:                                 ; preds = %lor.lhs.false207
  %72 = load i32, ptr @n1, align 4, !tbaa !9
  %73 = load i32, ptr @maxn2, align 4, !tbaa !9
  %add = add nsw i32 %72, %73
  %cmp211 = icmp sgt i32 %add, 32
  br i1 %cmp211, label %if.then213, label %if.end215

if.then213:                                       ; preds = %lor.lhs.false210, %lor.lhs.false207, %lor.lhs.false204, %if.else201
  %74 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call214 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef @.str.21, i32 noundef 24, i32 noundef 32)
  store i32 1, ptr %badargs, align 4, !tbaa !9
  br label %if.end215

if.end215:                                        ; preds = %if.then213, %lor.lhs.false210
  br label %if.end216

if.end216:                                        ; preds = %if.end215, %if.then200
  %75 = load i32, ptr %gote, align 4, !tbaa !9
  %tobool217 = icmp ne i32 %75, 0
  br i1 %tobool217, label %if.end219, label %if.then218

if.then218:                                       ; preds = %if.end216
  store i32 0, ptr @mine, align 4, !tbaa !9
  %76 = load i32, ptr @n1, align 4, !tbaa !9
  %77 = load i32, ptr @maxn2, align 4, !tbaa !9
  %mul = mul nsw i32 %76, %77
  store i32 %mul, ptr @maxe, align 4, !tbaa !9
  br label %if.end219

if.end219:                                        ; preds = %if.then218, %if.end216
  %78 = load i32, ptr %gotmr, align 4, !tbaa !9
  %tobool220 = icmp ne i32 %78, 0
  br i1 %tobool220, label %if.else222, label %if.then221

if.then221:                                       ; preds = %if.end219
  store i32 1, ptr @mod, align 4, !tbaa !9
  store i32 0, ptr @res, align 4, !tbaa !9
  br label %if.end230

if.else222:                                       ; preds = %if.end219
  %79 = load i32, ptr %argnum, align 4, !tbaa !9
  %cmp223 = icmp eq i32 %79, 5
  br i1 %cmp223, label %if.then228, label %lor.lhs.false225

lor.lhs.false225:                                 ; preds = %if.else222
  %80 = load i32, ptr %argnum, align 4, !tbaa !9
  %cmp226 = icmp sgt i32 %80, 6
  br i1 %cmp226, label %if.then228, label %if.end229

if.then228:                                       ; preds = %lor.lhs.false225, %if.else222
  store i32 1, ptr %badargs, align 4, !tbaa !9
  br label %if.end229

if.end229:                                        ; preds = %if.then228, %lor.lhs.false225
  br label %if.end230

if.end230:                                        ; preds = %if.end229, %if.then221
  %81 = load i32, ptr %gotd, align 4, !tbaa !9
  %tobool231 = icmp ne i32 %81, 0
  br i1 %tobool231, label %if.then232, label %if.end235

if.then232:                                       ; preds = %if.end230
  %82 = load i64, ptr %dval1, align 8, !tbaa !20
  %conv233 = trunc i64 %82 to i32
  store i32 %conv233, ptr @mindeg1, align 4, !tbaa !9
  %83 = load i64, ptr %dval2, align 8, !tbaa !20
  %conv234 = trunc i64 %83 to i32
  store i32 %conv234, ptr @mindeg2, align 4, !tbaa !9
  br label %if.end235

if.end235:                                        ; preds = %if.then232, %if.end230
  %84 = load i32, ptr %gotD, align 4, !tbaa !9
  %tobool236 = icmp ne i32 %84, 0
  br i1 %tobool236, label %if.then237, label %if.end240

if.then237:                                       ; preds = %if.end235
  %85 = load i64, ptr %Dval1, align 8, !tbaa !20
  %conv238 = trunc i64 %85 to i32
  store i32 %conv238, ptr @maxdeg1, align 4, !tbaa !9
  %86 = load i64, ptr %Dval2, align 8, !tbaa !20
  %conv239 = trunc i64 %86 to i32
  store i32 %conv239, ptr @maxdeg2, align 4, !tbaa !9
  br label %if.end240

if.end240:                                        ; preds = %if.then237, %if.end235
  %87 = load i32, ptr @maxdeg1, align 4, !tbaa !9
  %88 = load i32, ptr @maxn2, align 4, !tbaa !9
  %cmp241 = icmp sgt i32 %87, %88
  br i1 %cmp241, label %if.then243, label %if.end244

if.then243:                                       ; preds = %if.end240
  %89 = load i32, ptr @maxn2, align 4, !tbaa !9
  store i32 %89, ptr @maxdeg1, align 4, !tbaa !9
  br label %if.end244

if.end244:                                        ; preds = %if.then243, %if.end240
  %90 = load i32, ptr @maxdeg2, align 4, !tbaa !9
  %91 = load i32, ptr @n1, align 4, !tbaa !9
  %cmp245 = icmp sgt i32 %90, %91
  br i1 %cmp245, label %if.then247, label %if.end248

if.then247:                                       ; preds = %if.end244
  %92 = load i32, ptr @n1, align 4, !tbaa !9
  store i32 %92, ptr @maxdeg2, align 4, !tbaa !9
  br label %if.end248

if.end248:                                        ; preds = %if.then247, %if.end244
  %93 = load i32, ptr @connec, align 4, !tbaa !9
  %tobool249 = icmp ne i32 %93, 0
  br i1 %tobool249, label %land.lhs.true250, label %if.end257

land.lhs.true250:                                 ; preds = %if.end248
  %94 = load i32, ptr @mine, align 4, !tbaa !9
  %95 = load i32, ptr @n1, align 4, !tbaa !9
  %96 = load i32, ptr @maxn2, align 4, !tbaa !9
  %add251 = add nsw i32 %95, %96
  %sub = sub nsw i32 %add251, 1
  %cmp252 = icmp slt i32 %94, %sub
  br i1 %cmp252, label %if.then254, label %if.end257

if.then254:                                       ; preds = %land.lhs.true250
  %97 = load i32, ptr @n1, align 4, !tbaa !9
  %98 = load i32, ptr @maxn2, align 4, !tbaa !9
  %add255 = add nsw i32 %97, %98
  %sub256 = sub nsw i32 %add255, 1
  store i32 %sub256, ptr @mine, align 4, !tbaa !9
  br label %if.end257

if.end257:                                        ; preds = %if.then254, %land.lhs.true250, %if.end248
  %99 = load i32, ptr @connec, align 4, !tbaa !9
  %tobool258 = icmp ne i32 %99, 0
  br i1 %tobool258, label %land.lhs.true259, label %if.end263

land.lhs.true259:                                 ; preds = %if.end257
  %100 = load i32, ptr @mindeg1, align 4, !tbaa !9
  %cmp260 = icmp eq i32 %100, 0
  br i1 %cmp260, label %if.then262, label %if.end263

if.then262:                                       ; preds = %land.lhs.true259
  store i32 1, ptr @mindeg1, align 4, !tbaa !9
  br label %if.end263

if.end263:                                        ; preds = %if.then262, %land.lhs.true259, %if.end257
  %101 = load i32, ptr @connec, align 4, !tbaa !9
  %tobool264 = icmp ne i32 %101, 0
  br i1 %tobool264, label %land.lhs.true265, label %if.end269

land.lhs.true265:                                 ; preds = %if.end263
  %102 = load i32, ptr @mindeg2, align 4, !tbaa !9
  %cmp266 = icmp eq i32 %102, 0
  br i1 %cmp266, label %if.then268, label %if.end269

if.then268:                                       ; preds = %land.lhs.true265
  store i32 1, ptr @mindeg2, align 4, !tbaa !9
  br label %if.end269

if.end269:                                        ; preds = %if.then268, %land.lhs.true265, %if.end263
  %103 = load i32, ptr @maxe, align 4, !tbaa !9
  %104 = load i32, ptr @n1, align 4, !tbaa !9
  %105 = load i32, ptr @maxdeg1, align 4, !tbaa !9
  %mul270 = mul nsw i32 %104, %105
  %cmp271 = icmp sgt i32 %103, %mul270
  br i1 %cmp271, label %if.then273, label %if.end275

if.then273:                                       ; preds = %if.end269
  %106 = load i32, ptr @n1, align 4, !tbaa !9
  %107 = load i32, ptr @maxdeg1, align 4, !tbaa !9
  %mul274 = mul nsw i32 %106, %107
  store i32 %mul274, ptr @maxe, align 4, !tbaa !9
  br label %if.end275

if.end275:                                        ; preds = %if.then273, %if.end269
  %108 = load i32, ptr @maxe, align 4, !tbaa !9
  %109 = load i32, ptr @maxn2, align 4, !tbaa !9
  %110 = load i32, ptr @maxdeg2, align 4, !tbaa !9
  %mul276 = mul nsw i32 %109, %110
  %cmp277 = icmp sgt i32 %108, %mul276
  br i1 %cmp277, label %if.then279, label %if.end281

if.then279:                                       ; preds = %if.end275
  %111 = load i32, ptr @maxn2, align 4, !tbaa !9
  %112 = load i32, ptr @maxdeg2, align 4, !tbaa !9
  %mul280 = mul nsw i32 %111, %112
  store i32 %mul280, ptr @maxe, align 4, !tbaa !9
  br label %if.end281

if.end281:                                        ; preds = %if.then279, %if.end275
  %113 = load i32, ptr @mine, align 4, !tbaa !9
  %114 = load i32, ptr @n1, align 4, !tbaa !9
  %115 = load i32, ptr @mindeg1, align 4, !tbaa !9
  %mul282 = mul nsw i32 %114, %115
  %cmp283 = icmp slt i32 %113, %mul282
  br i1 %cmp283, label %if.then285, label %if.end287

if.then285:                                       ; preds = %if.end281
  %116 = load i32, ptr @n1, align 4, !tbaa !9
  %117 = load i32, ptr @mindeg1, align 4, !tbaa !9
  %mul286 = mul nsw i32 %116, %117
  store i32 %mul286, ptr @mine, align 4, !tbaa !9
  br label %if.end287

if.end287:                                        ; preds = %if.then285, %if.end281
  %118 = load i32, ptr @mine, align 4, !tbaa !9
  %119 = load i32, ptr @maxn2, align 4, !tbaa !9
  %120 = load i32, ptr @mindeg2, align 4, !tbaa !9
  %mul288 = mul nsw i32 %119, %120
  %cmp289 = icmp slt i32 %118, %mul288
  br i1 %cmp289, label %if.then291, label %if.end293

if.then291:                                       ; preds = %if.end287
  %121 = load i32, ptr @maxn2, align 4, !tbaa !9
  %122 = load i32, ptr @mindeg2, align 4, !tbaa !9
  %mul292 = mul nsw i32 %121, %122
  store i32 %mul292, ptr @mine, align 4, !tbaa !9
  br label %if.end293

if.end293:                                        ; preds = %if.then291, %if.end287
  %123 = load i32, ptr %badargs, align 4, !tbaa !9
  %tobool294 = icmp ne i32 %123, 0
  br i1 %tobool294, label %if.end309, label %land.lhs.true295

land.lhs.true295:                                 ; preds = %if.end293
  %124 = load i32, ptr @mine, align 4, !tbaa !9
  %125 = load i32, ptr @maxe, align 4, !tbaa !9
  %cmp296 = icmp sgt i32 %124, %125
  br i1 %cmp296, label %if.then307, label %lor.lhs.false298

lor.lhs.false298:                                 ; preds = %land.lhs.true295
  %126 = load i32, ptr @maxe, align 4, !tbaa !9
  %cmp299 = icmp slt i32 %126, 0
  br i1 %cmp299, label %if.then307, label %lor.lhs.false301

lor.lhs.false301:                                 ; preds = %lor.lhs.false298
  %127 = load i32, ptr @maxdeg1, align 4, !tbaa !9
  %cmp302 = icmp slt i32 %127, 0
  br i1 %cmp302, label %if.then307, label %lor.lhs.false304

lor.lhs.false304:                                 ; preds = %lor.lhs.false301
  %128 = load i32, ptr @maxdeg2, align 4, !tbaa !9
  %cmp305 = icmp slt i32 %128, 0
  br i1 %cmp305, label %if.then307, label %if.end309

if.then307:                                       ; preds = %lor.lhs.false304, %lor.lhs.false301, %lor.lhs.false298, %land.lhs.true295
  %129 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call308 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef @.str.22)
  store i32 1, ptr %badargs, align 4, !tbaa !9
  br label %if.end309

if.end309:                                        ; preds = %if.then307, %lor.lhs.false304, %if.end293
  %130 = load i32, ptr %gotZ, align 4, !tbaa !9
  %tobool310 = icmp ne i32 %130, 0
  br i1 %tobool310, label %if.end312, label %if.then311

if.then311:                                       ; preds = %if.end309
  store i32 -1, ptr @maxcommon, align 4, !tbaa !9
  br label %if.end312

if.end312:                                        ; preds = %if.then311, %if.end309
  %131 = load i32, ptr %badargs, align 4, !tbaa !9
  %tobool313 = icmp ne i32 %131, 0
  br i1 %tobool313, label %if.end328, label %land.lhs.true314

land.lhs.true314:                                 ; preds = %if.end312
  %132 = load i32, ptr @mine, align 4, !tbaa !9
  %133 = load i32, ptr @maxe, align 4, !tbaa !9
  %cmp315 = icmp sgt i32 %132, %133
  br i1 %cmp315, label %if.then326, label %lor.lhs.false317

lor.lhs.false317:                                 ; preds = %land.lhs.true314
  %134 = load i32, ptr @maxe, align 4, !tbaa !9
  %cmp318 = icmp slt i32 %134, 0
  br i1 %cmp318, label %if.then326, label %lor.lhs.false320

lor.lhs.false320:                                 ; preds = %lor.lhs.false317
  %135 = load i32, ptr @maxdeg1, align 4, !tbaa !9
  %cmp321 = icmp slt i32 %135, 0
  br i1 %cmp321, label %if.then326, label %lor.lhs.false323

lor.lhs.false323:                                 ; preds = %lor.lhs.false320
  %136 = load i32, ptr @maxdeg2, align 4, !tbaa !9
  %cmp324 = icmp slt i32 %136, 0
  br i1 %cmp324, label %if.then326, label %if.end328

if.then326:                                       ; preds = %lor.lhs.false323, %lor.lhs.false320, %lor.lhs.false317, %land.lhs.true314
  %137 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call327 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %137, ptr noundef @.str.23)
  store i32 1, ptr %badargs, align 4, !tbaa !9
  br label %if.end328

if.end328:                                        ; preds = %if.then326, %lor.lhs.false323, %if.end312
  %138 = load i32, ptr %badargs, align 4, !tbaa !9
  %tobool329 = icmp ne i32 %138, 0
  br i1 %tobool329, label %if.then330, label %if.end334

if.then330:                                       ; preds = %if.end328
  %139 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call331 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef @.str.24, ptr noundef @.str.7)
  %140 = load ptr, ptr @stderr, align 8, !tbaa !5
  %141 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %arrayidx332 = getelementptr inbounds ptr, ptr %141, i64 0
  %142 = load ptr, ptr %arrayidx332, align 8, !tbaa !5
  %call333 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef @.str.25, ptr noundef %142)
  call void @exit(i32 noundef 1) #8
  unreachable

if.end334:                                        ; preds = %if.end328
  %143 = load i32, ptr @nautyformat, align 4, !tbaa !9
  %cmp335 = icmp ne i32 %143, 0
  %conv336 = zext i1 %cmp335 to i32
  %144 = load i32, ptr @graph6, align 4, !tbaa !9
  %cmp337 = icmp ne i32 %144, 0
  %conv338 = zext i1 %cmp337 to i32
  %add339 = add nsw i32 %conv336, %conv338
  %145 = load i32, ptr @greout, align 4, !tbaa !9
  %cmp340 = icmp ne i32 %145, 0
  %conv341 = zext i1 %cmp340 to i32
  %add342 = add nsw i32 %add339, %conv341
  %146 = load i32, ptr @sparse6, align 4, !tbaa !9
  %cmp343 = icmp ne i32 %146, 0
  %conv344 = zext i1 %cmp343 to i32
  %add345 = add nsw i32 %add342, %conv344
  %147 = load i32, ptr @nooutput, align 4, !tbaa !9
  %cmp346 = icmp ne i32 %147, 0
  %conv347 = zext i1 %cmp346 to i32
  %add348 = add nsw i32 %add345, %conv347
  %cmp349 = icmp sgt i32 %add348, 1
  br i1 %cmp349, label %if.then351, label %if.end352

if.then351:                                       ; preds = %if.end334
  call void @gt_abort(ptr noundef @.str.26)
  br label %if.end352

if.end352:                                        ; preds = %if.then351, %if.end334
  %148 = load i32, ptr @nautyformat, align 4, !tbaa !9
  %tobool353 = icmp ne i32 %148, 0
  br i1 %tobool353, label %if.then354, label %if.else355

if.then354:                                       ; preds = %if.end352
  store ptr @writenauty, ptr @outproc, align 8, !tbaa !5
  br label %if.end368

if.else355:                                       ; preds = %if.end352
  %149 = load i32, ptr @nooutput, align 4, !tbaa !9
  %tobool356 = icmp ne i32 %149, 0
  br i1 %tobool356, label %if.then357, label %if.else358

if.then357:                                       ; preds = %if.else355
  store ptr @nullwrite, ptr @outproc, align 8, !tbaa !5
  br label %if.end367

if.else358:                                       ; preds = %if.else355
  %150 = load i32, ptr @sparse6, align 4, !tbaa !9
  %tobool359 = icmp ne i32 %150, 0
  br i1 %tobool359, label %if.then360, label %if.else361

if.then360:                                       ; preds = %if.else358
  store ptr @writes6x, ptr @outproc, align 8, !tbaa !5
  br label %if.end366

if.else361:                                       ; preds = %if.else358
  %151 = load i32, ptr @greout, align 4, !tbaa !9
  %tobool362 = icmp ne i32 %151, 0
  br i1 %tobool362, label %if.then363, label %if.else364

if.then363:                                       ; preds = %if.else361
  store ptr @writegre, ptr @outproc, align 8, !tbaa !5
  br label %if.end365

if.else364:                                       ; preds = %if.else361
  store ptr @writeg6x, ptr @outproc, align 8, !tbaa !5
  br label %if.end365

if.end365:                                        ; preds = %if.else364, %if.then363
  br label %if.end366

if.end366:                                        ; preds = %if.end365, %if.then360
  br label %if.end367

if.end367:                                        ; preds = %if.end366, %if.then357
  br label %if.end368

if.end368:                                        ; preds = %if.end367, %if.then354
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond369

for.cond369:                                      ; preds = %for.inc375, %if.end368
  %152 = load i32, ptr %i, align 4, !tbaa !9
  %153 = load i32, ptr @maxe, align 4, !tbaa !9
  %cmp370 = icmp sle i32 %152, %153
  br i1 %cmp370, label %for.body372, label %for.end377

for.body372:                                      ; preds = %for.cond369
  %154 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom373 = sext i32 %154 to i64
  %arrayidx374 = getelementptr inbounds [257 x i64], ptr @ecount, i64 0, i64 %idxprom373
  store i64 0, ptr %arrayidx374, align 8, !tbaa !20
  br label %for.inc375

for.inc375:                                       ; preds = %for.body372
  %155 = load i32, ptr %i, align 4, !tbaa !9
  %inc376 = add nsw i32 %155, 1
  store i32 %inc376, ptr %i, align 4, !tbaa !9
  br label %for.cond369, !llvm.loop !22

for.end377:                                       ; preds = %for.cond369
  %156 = load i32, ptr @nooutput, align 4, !tbaa !9
  %tobool378 = icmp ne i32 %156, 0
  br i1 %tobool378, label %if.then379, label %if.else380

if.then379:                                       ; preds = %for.end377
  %157 = load ptr, ptr @stdout, align 8, !tbaa !5
  store ptr %157, ptr @outfile, align 8, !tbaa !5
  br label %if.end395

if.else380:                                       ; preds = %for.end377
  %158 = load i32, ptr %gotf, align 4, !tbaa !9
  %tobool381 = icmp ne i32 %158, 0
  br i1 %tobool381, label %lor.lhs.false382, label %if.then385

lor.lhs.false382:                                 ; preds = %if.else380
  %159 = load ptr, ptr %outfilename, align 8, !tbaa !5
  %cmp383 = icmp eq ptr %159, null
  br i1 %cmp383, label %if.then385, label %if.else386

if.then385:                                       ; preds = %lor.lhs.false382, %if.else380
  store ptr @.str.27, ptr %outfilename, align 8, !tbaa !5
  %160 = load ptr, ptr @stdout, align 8, !tbaa !5
  store ptr %160, ptr @outfile, align 8, !tbaa !5
  br label %if.end394

if.else386:                                       ; preds = %lor.lhs.false382
  %161 = load ptr, ptr %outfilename, align 8, !tbaa !5
  %162 = load i32, ptr @nautyformat, align 4, !tbaa !9
  %tobool387 = icmp ne i32 %162, 0
  %163 = zext i1 %tobool387 to i64
  %cond = select i1 %tobool387, ptr @.str.28, ptr @.str.29
  %call388 = call noalias ptr @fopen(ptr noundef %161, ptr noundef %cond)
  store ptr %call388, ptr @outfile, align 8, !tbaa !5
  %cmp389 = icmp eq ptr %call388, null
  br i1 %cmp389, label %if.then391, label %if.end393

if.then391:                                       ; preds = %if.else386
  %164 = load ptr, ptr @stderr, align 8, !tbaa !5
  %165 = load ptr, ptr %outfilename, align 8, !tbaa !5
  %call392 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %164, ptr noundef @.str.30, ptr noundef %165)
  call void @gt_abort(ptr noundef null)
  br label %if.end393

if.end393:                                        ; preds = %if.then391, %if.else386
  br label %if.end394

if.end394:                                        ; preds = %if.end393, %if.then385
  br label %if.end395

if.end395:                                        ; preds = %if.end394, %if.then379
  %166 = load i32, ptr @quiet, align 4, !tbaa !9
  %tobool396 = icmp ne i32 %166, 0
  br i1 %tobool396, label %if.end488, label %if.then397

if.then397:                                       ; preds = %if.end395
  %arrayidx398 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  store i8 0, ptr %arrayidx398, align 16, !tbaa !11
  %167 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %arrayidx399 = getelementptr inbounds ptr, ptr %167, i64 0
  %168 = load ptr, ptr %arrayidx399, align 8, !tbaa !5
  %call400 = call i64 @strlen(ptr noundef %168) #9
  %cmp401 = icmp ugt i64 %call400, 75
  br i1 %cmp401, label %if.then403, label %if.else406

if.then403:                                       ; preds = %if.then397
  %169 = load ptr, ptr @stderr, align 8, !tbaa !5
  %170 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %arrayidx404 = getelementptr inbounds ptr, ptr %170, i64 0
  %171 = load ptr, ptr %arrayidx404, align 8, !tbaa !5
  %call405 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef @.str.31, ptr noundef %171)
  br label %if.end411

if.else406:                                       ; preds = %if.then397
  %arraydecay = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %arraydecay407 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %call408 = call i64 @strlen(ptr noundef %arraydecay407) #9
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 %call408
  %172 = load ptr, ptr %argv.addr, align 8, !tbaa !5
  %arrayidx409 = getelementptr inbounds ptr, ptr %172, i64 0
  %173 = load ptr, ptr %arrayidx409, align 8, !tbaa !5
  %call410 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef @.str.31, ptr noundef %173) #7
  br label %if.end411

if.end411:                                        ; preds = %if.else406, %if.then403
  %arraydecay412 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %arraydecay413 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %call414 = call i64 @strlen(ptr noundef %arraydecay413) #9
  %add.ptr415 = getelementptr inbounds i8, ptr %arraydecay412, i64 %call414
  %174 = load i32, ptr @n1, align 4, !tbaa !9
  %175 = load i32, ptr @maxn2, align 4, !tbaa !9
  %176 = load i32, ptr @mine, align 4, !tbaa !9
  %177 = load i32, ptr @maxe, align 4, !tbaa !9
  %call416 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr415, ptr noundef @.str.32, i32 noundef %174, i32 noundef %175, i32 noundef %176, i32 noundef %177) #7
  %arraydecay417 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %arraydecay418 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %call419 = call i64 @strlen(ptr noundef %arraydecay418) #9
  %add.ptr420 = getelementptr inbounds i8, ptr %arraydecay417, i64 %call419
  %178 = load i32, ptr @mindeg1, align 4, !tbaa !9
  %179 = load i32, ptr @mindeg2, align 4, !tbaa !9
  %180 = load i32, ptr @maxdeg1, align 4, !tbaa !9
  %181 = load i32, ptr @maxdeg2, align 4, !tbaa !9
  %call421 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr420, ptr noundef @.str.33, i32 noundef %178, i32 noundef %179, i32 noundef %180, i32 noundef %181) #7
  %182 = load i32, ptr @simple, align 4, !tbaa !9
  %tobool422 = icmp ne i32 %182, 0
  br i1 %tobool422, label %if.then423, label %if.end429

if.then423:                                       ; preds = %if.end411
  %arraydecay424 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %arraydecay425 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %call426 = call i64 @strlen(ptr noundef %arraydecay425) #9
  %add.ptr427 = getelementptr inbounds i8, ptr %arraydecay424, i64 %call426
  %call428 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr427, ptr noundef @.str.34) #7
  br label %if.end429

if.end429:                                        ; preds = %if.then423, %if.end411
  %183 = load i32, ptr @footfree, align 4, !tbaa !9
  %tobool430 = icmp ne i32 %183, 0
  br i1 %tobool430, label %if.then431, label %if.end437

if.then431:                                       ; preds = %if.end429
  %arraydecay432 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %arraydecay433 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %call434 = call i64 @strlen(ptr noundef %arraydecay433) #9
  %add.ptr435 = getelementptr inbounds i8, ptr %arraydecay432, i64 %call434
  %call436 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr435, ptr noundef @.str.35) #7
  br label %if.end437

if.end437:                                        ; preds = %if.then431, %if.end429
  %184 = load i32, ptr @antichain, align 4, !tbaa !9
  %tobool438 = icmp ne i32 %184, 0
  br i1 %tobool438, label %if.then439, label %if.end445

if.then439:                                       ; preds = %if.end437
  %arraydecay440 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %arraydecay441 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %call442 = call i64 @strlen(ptr noundef %arraydecay441) #9
  %add.ptr443 = getelementptr inbounds i8, ptr %arraydecay440, i64 %call442
  %call444 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr443, ptr noundef @.str.36) #7
  br label %if.end445

if.end445:                                        ; preds = %if.then439, %if.end437
  %185 = load i32, ptr @connec, align 4, !tbaa !9
  %tobool446 = icmp ne i32 %185, 0
  br i1 %tobool446, label %if.then447, label %if.end453

if.then447:                                       ; preds = %if.end445
  %arraydecay448 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %arraydecay449 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %call450 = call i64 @strlen(ptr noundef %arraydecay449) #9
  %add.ptr451 = getelementptr inbounds i8, ptr %arraydecay448, i64 %call450
  %call452 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr451, ptr noundef @.str.37) #7
  br label %if.end453

if.end453:                                        ; preds = %if.then447, %if.end445
  %186 = load i32, ptr @maxcommon, align 4, !tbaa !9
  %cmp454 = icmp sge i32 %186, 0
  br i1 %cmp454, label %if.then456, label %if.end462

if.then456:                                       ; preds = %if.end453
  %arraydecay457 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %arraydecay458 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %call459 = call i64 @strlen(ptr noundef %arraydecay458) #9
  %add.ptr460 = getelementptr inbounds i8, ptr %arraydecay457, i64 %call459
  %187 = load i32, ptr @maxcommon, align 4, !tbaa !9
  %call461 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr460, ptr noundef @.str.38, i32 noundef %187) #7
  br label %if.end462

if.end462:                                        ; preds = %if.then456, %if.end453
  %188 = load i32, ptr @cutfree, align 4, !tbaa !9
  %tobool463 = icmp ne i32 %188, 0
  br i1 %tobool463, label %if.then464, label %if.end470

if.then464:                                       ; preds = %if.end462
  %arraydecay465 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %arraydecay466 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %call467 = call i64 @strlen(ptr noundef %arraydecay466) #9
  %add.ptr468 = getelementptr inbounds i8, ptr %arraydecay465, i64 %call467
  %call469 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr468, ptr noundef @.str.39) #7
  br label %if.end470

if.end470:                                        ; preds = %if.then464, %if.end462
  %189 = load i32, ptr @mod, align 4, !tbaa !9
  %cmp471 = icmp sgt i32 %189, 1
  br i1 %cmp471, label %if.then473, label %if.end479

if.then473:                                       ; preds = %if.end470
  %arraydecay474 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %arraydecay475 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %call476 = call i64 @strlen(ptr noundef %arraydecay475) #9
  %add.ptr477 = getelementptr inbounds i8, ptr %arraydecay474, i64 %call476
  %190 = load i32, ptr @res, align 4, !tbaa !9
  %191 = load i32, ptr @mod, align 4, !tbaa !9
  %call478 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr477, ptr noundef @.str.40, i32 noundef %190, i32 noundef %191) #7
  br label %if.end479

if.end479:                                        ; preds = %if.then473, %if.end470
  %arraydecay480 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %arraydecay481 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %call482 = call i64 @strlen(ptr noundef %arraydecay481) #9
  %add.ptr483 = getelementptr inbounds i8, ptr %arraydecay480, i64 %call482
  %call484 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr483, ptr noundef @.str.41) #7
  %arraydecay485 = getelementptr inbounds [201 x i8], ptr %msg, i64 0, i64 0
  %192 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call486 = call i32 @fputs(ptr noundef %arraydecay485, ptr noundef %192)
  %193 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call487 = call i32 @fflush(ptr noundef %193)
  br label %if.end488

if.end488:                                        ; preds = %if.end479, %if.end395
  %194 = load i32, ptr @n1, align 4, !tbaa !9
  store i32 %194, ptr @class1size, align 4, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond489

for.cond489:                                      ; preds = %for.inc497, %if.end488
  %195 = load i32, ptr %i, align 4, !tbaa !9
  %196 = load i32, ptr @n1, align 4, !tbaa !9
  %cmp490 = icmp slt i32 %195, %196
  br i1 %cmp490, label %for.body492, label %for.end499

for.body492:                                      ; preds = %for.cond489
  %197 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom493 = sext i32 %197 to i64
  %arrayidx494 = getelementptr inbounds [24 x i32], ptr %g, i64 0, i64 %idxprom493
  store i32 0, ptr %arrayidx494, align 4, !tbaa !9
  %198 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom495 = sext i32 %198 to i64
  %arrayidx496 = getelementptr inbounds [24 x i32], ptr %deg, i64 0, i64 %idxprom495
  store i32 0, ptr %arrayidx496, align 4, !tbaa !9
  br label %for.inc497

for.inc497:                                       ; preds = %for.body492
  %199 = load i32, ptr %i, align 4, !tbaa !9
  %inc498 = add nsw i32 %199, 1
  store i32 %inc498, ptr %i, align 4, !tbaa !9
  br label %for.cond489, !llvm.loop !23

for.end499:                                       ; preds = %for.cond489
  %call500 = call i64 @times(ptr noundef @timebuffer) #7
  %200 = load i64, ptr @timebuffer, align 8, !tbaa !24
  %201 = load i64, ptr getelementptr inbounds (%struct.tms, ptr @timebuffer, i32 0, i32 1), align 8, !tbaa !26
  %add501 = add nsw i64 %200, %201
  %conv502 = sitofp i64 %add501 to double
  %call503 = call i64 @sysconf(i32 noundef 2) #7
  %conv504 = sitofp i64 %call503 to double
  %div = fdiv double %conv502, %conv504
  store double %div, ptr %t1, align 8, !tbaa !27
  %202 = load i32, ptr @maxn2, align 4, !tbaa !9
  %cmp505 = icmp eq i32 %202, 0
  br i1 %cmp505, label %if.then507, label %if.else514

if.then507:                                       ; preds = %for.end499
  %203 = load i32, ptr @res, align 4, !tbaa !9
  %cmp508 = icmp eq i32 %203, 0
  br i1 %cmp508, label %if.then510, label %if.end513

if.then510:                                       ; preds = %if.then507
  %204 = load i64, ptr @ecount, align 16, !tbaa !20
  %inc511 = add i64 %204, 1
  store i64 %inc511, ptr @ecount, align 16, !tbaa !20
  %205 = load ptr, ptr @outproc, align 8, !tbaa !5
  %206 = load ptr, ptr @outfile, align 8, !tbaa !5
  %arraydecay512 = getelementptr inbounds [24 x i32], ptr %g, i64 0, i64 0
  %207 = load i32, ptr @n1, align 4, !tbaa !9
  call void %205(ptr noundef %206, ptr noundef %arraydecay512, i32 noundef %207, i32 noundef 0)
  br label %if.end513

if.end513:                                        ; preds = %if.then510, %if.then507
  br label %if.end573

if.else514:                                       ; preds = %for.end499
  call void @makeleveldata()
  %208 = load i32, ptr @res, align 4, !tbaa !9
  store i32 %208, ptr @curres, align 4, !tbaa !9
  %209 = load i32, ptr @mod, align 4, !tbaa !9
  %cmp515 = icmp sle i32 %209, 1
  br i1 %cmp515, label %if.then517, label %if.else518

if.then517:                                       ; preds = %if.else514
  store i32 0, ptr @nprune, align 4, !tbaa !9
  br label %if.end531

if.else518:                                       ; preds = %if.else514
  %210 = load i32, ptr @maxn2, align 4, !tbaa !9
  %cmp519 = icmp sge i32 %210, 6
  br i1 %cmp519, label %if.then521, label %if.else523

if.then521:                                       ; preds = %if.else518
  %211 = load i32, ptr @maxn2, align 4, !tbaa !9
  %sub522 = sub nsw i32 %211, 2
  store i32 %sub522, ptr @nprune, align 4, !tbaa !9
  br label %if.end530

if.else523:                                       ; preds = %if.else518
  %212 = load i32, ptr @maxn2, align 4, !tbaa !9
  %cmp524 = icmp sge i32 %212, 3
  br i1 %cmp524, label %if.then526, label %if.else528

if.then526:                                       ; preds = %if.else523
  %213 = load i32, ptr @maxn2, align 4, !tbaa !9
  %sub527 = sub nsw i32 %213, 1
  store i32 %sub527, ptr @nprune, align 4, !tbaa !9
  br label %if.end529

if.else528:                                       ; preds = %if.else523
  %214 = load i32, ptr @maxn2, align 4, !tbaa !9
  store i32 %214, ptr @nprune, align 4, !tbaa !9
  br label %if.end529

if.end529:                                        ; preds = %if.else528, %if.then526
  br label %if.end530

if.end530:                                        ; preds = %if.end529, %if.then521
  br label %if.end531

if.end531:                                        ; preds = %if.end530, %if.then517
  %215 = load i32, ptr %gotX, align 4, !tbaa !9
  %tobool532 = icmp ne i32 %215, 0
  br i1 %tobool532, label %if.then533, label %if.end543

if.then533:                                       ; preds = %if.end531
  %216 = load i32, ptr %splitlevinc, align 4, !tbaa !9
  %217 = load i32, ptr @nprune, align 4, !tbaa !9
  %add534 = add nsw i32 %217, %216
  store i32 %add534, ptr @nprune, align 4, !tbaa !9
  %218 = load i32, ptr @nprune, align 4, !tbaa !9
  %219 = load i32, ptr @maxn2, align 4, !tbaa !9
  %cmp535 = icmp sgt i32 %218, %219
  br i1 %cmp535, label %if.then537, label %if.end538

if.then537:                                       ; preds = %if.then533
  %220 = load i32, ptr @maxn2, align 4, !tbaa !9
  store i32 %220, ptr @nprune, align 4, !tbaa !9
  br label %if.end538

if.end538:                                        ; preds = %if.then537, %if.then533
  %221 = load i32, ptr @nprune, align 4, !tbaa !9
  %cmp539 = icmp slt i32 %221, 0
  br i1 %cmp539, label %if.then541, label %if.end542

if.then541:                                       ; preds = %if.end538
  store i32 0, ptr @nprune, align 4, !tbaa !9
  br label %if.end542

if.end542:                                        ; preds = %if.then541, %if.end538
  br label %if.end543

if.end543:                                        ; preds = %if.end542, %if.end531
  call void @xbnds(i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %222 = load i32, ptr getelementptr inbounds (%struct.leveldata, ptr @data, i32 0, i32 2), align 8, !tbaa !29
  %idxprom544 = sext i32 %222 to i64
  %arrayidx545 = getelementptr inbounds [33 x i32], ptr @xstart, i64 0, i64 %idxprom544
  %223 = load i32, ptr %arrayidx545, align 4, !tbaa !9
  store i32 %223, ptr %imin, align 4, !tbaa !9
  %224 = load i32, ptr getelementptr inbounds (%struct.leveldata, ptr @data, i32 0, i32 3), align 4, !tbaa !31
  %add546 = add nsw i32 %224, 1
  %idxprom547 = sext i32 %add546 to i64
  %arrayidx548 = getelementptr inbounds [33 x i32], ptr @xstart, i64 0, i64 %idxprom547
  %225 = load i32, ptr %arrayidx548, align 4, !tbaa !9
  store i32 %225, ptr %imax, align 4, !tbaa !9
  %226 = load i32, ptr %imin, align 4, !tbaa !9
  store i32 %226, ptr %i, align 4, !tbaa !9
  br label %for.cond549

for.cond549:                                      ; preds = %for.inc555, %if.end543
  %227 = load i32, ptr %i, align 4, !tbaa !9
  %228 = load i32, ptr %imax, align 4, !tbaa !9
  %cmp550 = icmp slt i32 %227, %228
  br i1 %cmp550, label %for.body552, label %for.end557

for.body552:                                      ; preds = %for.cond549
  %229 = load ptr, ptr getelementptr inbounds (%struct.leveldata, ptr @data, i32 0, i32 6), align 8, !tbaa !32
  %230 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom553 = sext i32 %230 to i64
  %arrayidx554 = getelementptr inbounds i32, ptr %229, i64 %idxprom553
  store i32 -1, ptr %arrayidx554, align 4, !tbaa !9
  br label %for.inc555

for.inc555:                                       ; preds = %for.body552
  %231 = load i32, ptr %i, align 4, !tbaa !9
  %inc556 = add nsw i32 %231, 1
  store i32 %inc556, ptr %i, align 4, !tbaa !9
  br label %for.cond549, !llvm.loop !33

for.end557:                                       ; preds = %for.cond549
  %232 = load i32, ptr getelementptr inbounds (%struct.leveldata, ptr @data, i32 0, i32 2), align 8, !tbaa !29
  store i32 %232, ptr %i, align 4, !tbaa !9
  br label %for.cond558

for.cond558:                                      ; preds = %for.inc568, %for.end557
  %233 = load i32, ptr %i, align 4, !tbaa !9
  %234 = load i32, ptr getelementptr inbounds (%struct.leveldata, ptr @data, i32 0, i32 3), align 4, !tbaa !31
  %cmp559 = icmp sle i32 %233, %234
  br i1 %cmp559, label %for.body561, label %for.end570

for.body561:                                      ; preds = %for.cond558
  %235 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom562 = sext i32 %235 to i64
  %arrayidx563 = getelementptr inbounds [33 x i32], ptr @xstart, i64 0, i64 %idxprom562
  %236 = load i32, ptr %arrayidx563, align 4, !tbaa !9
  %237 = load ptr, ptr getelementptr inbounds (%struct.leveldata, ptr @data, i32 0, i32 6), align 8, !tbaa !32
  %238 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom564 = sext i32 %238 to i64
  %arrayidx565 = getelementptr inbounds [33 x i32], ptr @xstart, i64 0, i64 %idxprom564
  %239 = load i32, ptr %arrayidx565, align 4, !tbaa !9
  %idxprom566 = sext i32 %239 to i64
  %arrayidx567 = getelementptr inbounds i32, ptr %237, i64 %idxprom566
  store i32 %236, ptr %arrayidx567, align 4, !tbaa !9
  br label %for.inc568

for.inc568:                                       ; preds = %for.body561
  %240 = load i32, ptr %i, align 4, !tbaa !9
  %inc569 = add nsw i32 %240, 1
  store i32 %inc569, ptr %i, align 4, !tbaa !9
  br label %for.cond558, !llvm.loop !34

for.end570:                                       ; preds = %for.cond558
  %arraydecay571 = getelementptr inbounds [24 x i32], ptr %g, i64 0, i64 0
  %arraydecay572 = getelementptr inbounds [24 x i32], ptr %deg, i64 0, i64 0
  %241 = load i32, ptr getelementptr inbounds (%struct.leveldata, ptr @data, i32 0, i32 2), align 8, !tbaa !29
  %242 = load i32, ptr getelementptr inbounds (%struct.leveldata, ptr @data, i32 0, i32 3), align 4, !tbaa !31
  call void @genextend(ptr noundef %arraydecay571, i32 noundef 0, ptr noundef %arraydecay572, i32 noundef 0, i32 noundef 0, i32 noundef %241, i32 noundef %242)
  br label %if.end573

if.end573:                                        ; preds = %for.end570, %if.end513
  %call574 = call i64 @times(ptr noundef @timebuffer) #7
  %243 = load i64, ptr @timebuffer, align 8, !tbaa !24
  %244 = load i64, ptr getelementptr inbounds (%struct.tms, ptr @timebuffer, i32 0, i32 1), align 8, !tbaa !26
  %add575 = add nsw i64 %243, %244
  %conv576 = sitofp i64 %add575 to double
  %call577 = call i64 @sysconf(i32 noundef 2) #7
  %conv578 = sitofp i64 %call577 to double
  %div579 = fdiv double %conv576, %conv578
  store double %div579, ptr %t2, align 8, !tbaa !27
  store i64 0, ptr %nout, align 8, !tbaa !20
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond580

for.cond580:                                      ; preds = %for.inc587, %if.end573
  %245 = load i32, ptr %i, align 4, !tbaa !9
  %246 = load i32, ptr @maxe, align 4, !tbaa !9
  %cmp581 = icmp sle i32 %245, %246
  br i1 %cmp581, label %for.body583, label %for.end589

for.body583:                                      ; preds = %for.cond580
  %247 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom584 = sext i32 %247 to i64
  %arrayidx585 = getelementptr inbounds [257 x i64], ptr @ecount, i64 0, i64 %idxprom584
  %248 = load i64, ptr %arrayidx585, align 8, !tbaa !20
  %249 = load i64, ptr %nout, align 8, !tbaa !20
  %add586 = add i64 %249, %248
  store i64 %add586, ptr %nout, align 8, !tbaa !20
  br label %for.inc587

for.inc587:                                       ; preds = %for.body583
  %250 = load i32, ptr %i, align 4, !tbaa !9
  %inc588 = add nsw i32 %250, 1
  store i32 %inc588, ptr %i, align 4, !tbaa !9
  br label %for.cond580, !llvm.loop !35

for.end589:                                       ; preds = %for.cond580
  %251 = load i32, ptr @verbose, align 4, !tbaa !9
  %tobool590 = icmp ne i32 %251, 0
  br i1 %tobool590, label %if.then591, label %if.end608

if.then591:                                       ; preds = %for.end589
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond592

for.cond592:                                      ; preds = %for.inc605, %if.then591
  %252 = load i32, ptr %i, align 4, !tbaa !9
  %253 = load i32, ptr @maxe, align 4, !tbaa !9
  %cmp593 = icmp sle i32 %252, %253
  br i1 %cmp593, label %for.body595, label %for.end607

for.body595:                                      ; preds = %for.cond592
  %254 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom596 = sext i32 %254 to i64
  %arrayidx597 = getelementptr inbounds [257 x i64], ptr @ecount, i64 0, i64 %idxprom596
  %255 = load i64, ptr %arrayidx597, align 8, !tbaa !20
  %cmp598 = icmp ne i64 %255, 0
  br i1 %cmp598, label %if.then600, label %if.end604

if.then600:                                       ; preds = %for.body595
  %256 = load ptr, ptr @stderr, align 8, !tbaa !5
  %257 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom601 = sext i32 %257 to i64
  %arrayidx602 = getelementptr inbounds [257 x i64], ptr @ecount, i64 0, i64 %idxprom601
  %258 = load i64, ptr %arrayidx602, align 8, !tbaa !20
  %259 = load i32, ptr %i, align 4, !tbaa !9
  %call603 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %256, ptr noundef @.str.42, i64 noundef %258, i32 noundef %259)
  br label %if.end604

if.end604:                                        ; preds = %if.then600, %for.body595
  br label %for.inc605

for.inc605:                                       ; preds = %if.end604
  %260 = load i32, ptr %i, align 4, !tbaa !9
  %inc606 = add nsw i32 %260, 1
  store i32 %inc606, ptr %i, align 4, !tbaa !9
  br label %for.cond592, !llvm.loop !36

for.end607:                                       ; preds = %for.cond592
  br label %if.end608

if.end608:                                        ; preds = %for.end607, %for.end589
  %261 = load i32, ptr @quiet, align 4, !tbaa !9
  %tobool609 = icmp ne i32 %261, 0
  br i1 %tobool609, label %if.end613, label %if.then610

if.then610:                                       ; preds = %if.end608
  %262 = load ptr, ptr @stderr, align 8, !tbaa !5
  %263 = load i64, ptr %nout, align 8, !tbaa !20
  %264 = load double, ptr %t2, align 8, !tbaa !27
  %265 = load double, ptr %t1, align 8, !tbaa !27
  %sub611 = fsub double %264, %265
  %call612 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %262, ptr noundef @.str.43, i64 noundef %263, double noundef %sub611)
  br label %if.end613

if.end613:                                        ; preds = %if.then610, %if.end608
  call void @exit(i32 noundef 0) #8
  unreachable

cleanup:                                          ; preds = %if.then19, %if.then
  call void @llvm.lifetime.end.p0(i64 201, ptr %msg) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %outfilename) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %t2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %t1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %nout) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr %deg) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr %g) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %splitlevinc) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %sw) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %argnum) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %imax) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %imin) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %dval2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %dval1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Dval2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Dval1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %gotX) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %gotd) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %gotZ) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %gotmr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %gotf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %gote) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %gotD) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %badargs) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #7
  %266 = load i32, ptr %retval, align 4
  ret i32 %266
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #5

declare i32 @printf(ptr noundef, ...) #2

declare void @nauty_check(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare void @arg_int(ptr noundef, ptr noundef, ptr noundef) #2

declare void @arg_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind uwtable
define internal void @nullwrite(ptr noundef %f, ptr noundef %g, i32 noundef %n1, i32 noundef %n2) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %n1.addr = alloca i32, align 4
  %n2.addr = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !5
  store ptr %g, ptr %g.addr, align 8, !tbaa !5
  store i32 %n1, ptr %n1.addr, align 4, !tbaa !9
  store i32 %n2, ptr %n2.addr, align 4, !tbaa !9
  ret void
}

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #3

declare i32 @fflush(ptr noundef) #2

; Function Attrs: nounwind
declare i64 @times(ptr noundef) #3

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal void @makeleveldata() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %h = alloca i32, align 4
  %nn = alloca i32, align 4
  %nxsets = alloca i32, align 4
  %tttn = alloca i32, align 4
  %ncj = alloca i64, align 8
  %d = alloca ptr, align 8
  %xw = alloca i32, align 4
  %cw = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %nn) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %nxsets) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %tttn) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ncj) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %xw) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %cw) #7
  %0 = load i32, ptr @maxdeg2, align 4, !tbaa !9
  %1 = load i32, ptr @n1, align 4, !tbaa !9
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr @maxdeg2, align 4, !tbaa !9
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr @n1, align 4, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, ptr %nn, align 4, !tbaa !9
  store i32 1, ptr %nxsets, align 4, !tbaa !9
  store i64 1, ptr %ncj, align 8, !tbaa !20
  store i32 1, ptr %j, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %4 = load i32, ptr %j, align 4, !tbaa !9
  %5 = load i32, ptr %nn, align 4, !tbaa !9
  %cmp1 = icmp sle i32 %4, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, ptr %ncj, align 8, !tbaa !20
  %7 = load i32, ptr @n1, align 4, !tbaa !9
  %8 = load i32, ptr %j, align 4, !tbaa !9
  %sub = sub nsw i32 %7, %8
  %add = add nsw i32 %sub, 1
  %conv = sext i32 %add to i64
  %mul = mul nsw i64 %6, %conv
  %9 = load i32, ptr %j, align 4, !tbaa !9
  %conv2 = sext i32 %9 to i64
  %div = sdiv i64 %mul, %conv2
  store i64 %div, ptr %ncj, align 8, !tbaa !20
  %10 = load i64, ptr %ncj, align 8, !tbaa !20
  %11 = load i32, ptr %nxsets, align 4, !tbaa !9
  %conv3 = sext i32 %11 to i64
  %add4 = add nsw i64 %conv3, %10
  %conv5 = trunc i64 %add4 to i32
  store i32 %conv5, ptr %nxsets, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %j, align 4, !tbaa !9
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %j, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  %13 = load i32, ptr @n1, align 4, !tbaa !9
  %shl = shl i32 1, %13
  store i32 %shl, ptr %tttn, align 4, !tbaa !9
  %14 = load i32, ptr %nxsets, align 4, !tbaa !9
  %conv6 = sext i32 %14 to i64
  %mul7 = mul i64 %conv6, 4
  %call = call noalias ptr @malloc(i64 noundef %mul7) #10
  store ptr %call, ptr @xset, align 8, !tbaa !5
  %15 = load i32, ptr %nxsets, align 4, !tbaa !9
  %conv8 = sext i32 %15 to i64
  %mul9 = mul i64 %conv8, 4
  %call10 = call noalias ptr @malloc(i64 noundef %mul9) #10
  store ptr %call10, ptr @xcard, align 8, !tbaa !5
  %16 = load i32, ptr %tttn, align 4, !tbaa !9
  %conv11 = sext i32 %16 to i64
  %mul12 = mul i64 %conv11, 4
  %call13 = call noalias ptr @malloc(i64 noundef %mul12) #10
  store ptr %call13, ptr @xinv, align 8, !tbaa !5
  %17 = load ptr, ptr @xset, align 8, !tbaa !5
  %cmp14 = icmp eq ptr %17, null
  br i1 %cmp14, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %18 = load ptr, ptr @xcard, align 8, !tbaa !5
  %cmp16 = icmp eq ptr %18, null
  br i1 %cmp16, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %19 = load ptr, ptr @xinv, align 8, !tbaa !5
  %cmp19 = icmp eq ptr %19, null
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false18, %lor.lhs.false, %for.end
  %20 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.45)
  call void @exit(i32 noundef 2) #8
  unreachable

if.end:                                           ; preds = %lor.lhs.false18
  store i32 0, ptr %j, align 4, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc44, %if.end
  %21 = load i32, ptr %i, align 4, !tbaa !9
  %22 = load i32, ptr %tttn, align 4, !tbaa !9
  %cmp23 = icmp slt i32 %21, %22
  br i1 %cmp23, label %for.body25, label %for.end46

for.body25:                                       ; preds = %for.cond22
  %23 = load i32, ptr %i, align 4, !tbaa !9
  %shr = ashr i32 %23, 8
  %and = and i32 %shr, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom
  %24 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %25 = load i32, ptr %i, align 4, !tbaa !9
  %shr26 = ashr i32 %25, 16
  %and27 = and i32 %shr26, 255
  %idxprom28 = sext i32 %and27 to i64
  %arrayidx29 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom28
  %26 = load i32, ptr %arrayidx29, align 4, !tbaa !9
  %add30 = add nsw i32 %24, %26
  %27 = load i32, ptr %i, align 4, !tbaa !9
  %and31 = and i32 %27, 255
  %idxprom32 = sext i32 %and31 to i64
  %arrayidx33 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom32
  %28 = load i32, ptr %arrayidx33, align 4, !tbaa !9
  %add34 = add nsw i32 %add30, %28
  store i32 %add34, ptr %h, align 4, !tbaa !9
  %29 = load i32, ptr @maxdeg2, align 4, !tbaa !9
  %cmp35 = icmp sle i32 %add34, %29
  br i1 %cmp35, label %if.then37, label %if.end43

if.then37:                                        ; preds = %for.body25
  %30 = load i32, ptr %i, align 4, !tbaa !9
  %31 = load ptr, ptr @xset, align 8, !tbaa !5
  %32 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom38 = sext i32 %32 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %31, i64 %idxprom38
  store i32 %30, ptr %arrayidx39, align 4, !tbaa !9
  %33 = load i32, ptr %h, align 4, !tbaa !9
  %34 = load ptr, ptr @xcard, align 8, !tbaa !5
  %35 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom40 = sext i32 %35 to i64
  %arrayidx41 = getelementptr inbounds i32, ptr %34, i64 %idxprom40
  store i32 %33, ptr %arrayidx41, align 4, !tbaa !9
  %36 = load i32, ptr %j, align 4, !tbaa !9
  %inc42 = add nsw i32 %36, 1
  store i32 %inc42, ptr %j, align 4, !tbaa !9
  br label %if.end43

if.end43:                                         ; preds = %if.then37, %for.body25
  br label %for.inc44

for.inc44:                                        ; preds = %if.end43
  %37 = load i32, ptr %i, align 4, !tbaa !9
  %inc45 = add nsw i32 %37, 1
  store i32 %inc45, ptr %i, align 4, !tbaa !9
  br label %for.cond22, !llvm.loop !38

for.end46:                                        ; preds = %for.cond22
  %38 = load i32, ptr %j, align 4, !tbaa !9
  %39 = load i32, ptr %nxsets, align 4, !tbaa !9
  %cmp47 = icmp ne i32 %38, %39
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %for.end46
  %40 = load ptr, ptr @stderr, align 8, !tbaa !5
  %41 = load i32, ptr %j, align 4, !tbaa !9
  %42 = load i32, ptr %nxsets, align 4, !tbaa !9
  %call50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @.str.46, i32 noundef %41, i32 noundef %42)
  call void @exit(i32 noundef 2) #8
  unreachable

if.end51:                                         ; preds = %for.end46
  store i32 1, ptr %h, align 4, !tbaa !9
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end51
  %43 = load i32, ptr %h, align 4, !tbaa !9
  %mul52 = mul nsw i32 3, %43
  %add53 = add nsw i32 %mul52, 1
  store i32 %add53, ptr %h, align 4, !tbaa !9
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %44 = load i32, ptr %h, align 4, !tbaa !9
  %45 = load i32, ptr %nxsets, align 4, !tbaa !9
  %cmp54 = icmp slt i32 %44, %45
  br i1 %cmp54, label %do.body, label %do.end, !llvm.loop !39

do.end:                                           ; preds = %do.cond
  br label %do.body56

do.body56:                                        ; preds = %do.cond106, %do.end
  %46 = load i32, ptr %h, align 4, !tbaa !9
  store i32 %46, ptr %i, align 4, !tbaa !9
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc102, %do.body56
  %47 = load i32, ptr %i, align 4, !tbaa !9
  %48 = load i32, ptr %nxsets, align 4, !tbaa !9
  %cmp58 = icmp slt i32 %47, %48
  br i1 %cmp58, label %for.body60, label %for.end104

for.body60:                                       ; preds = %for.cond57
  %49 = load ptr, ptr @xset, align 8, !tbaa !5
  %50 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom61 = sext i32 %50 to i64
  %arrayidx62 = getelementptr inbounds i32, ptr %49, i64 %idxprom61
  %51 = load i32, ptr %arrayidx62, align 4, !tbaa !9
  store i32 %51, ptr %xw, align 4, !tbaa !9
  %52 = load ptr, ptr @xcard, align 8, !tbaa !5
  %53 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom63 = sext i32 %53 to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %52, i64 %idxprom63
  %54 = load i32, ptr %arrayidx64, align 4, !tbaa !9
  store i32 %54, ptr %cw, align 4, !tbaa !9
  %55 = load i32, ptr %i, align 4, !tbaa !9
  store i32 %55, ptr %j, align 4, !tbaa !9
  br label %for.cond65

for.cond65:                                       ; preds = %if.end96, %for.body60
  %56 = load ptr, ptr @xcard, align 8, !tbaa !5
  %57 = load i32, ptr %j, align 4, !tbaa !9
  %58 = load i32, ptr %h, align 4, !tbaa !9
  %sub66 = sub nsw i32 %57, %58
  %idxprom67 = sext i32 %sub66 to i64
  %arrayidx68 = getelementptr inbounds i32, ptr %56, i64 %idxprom67
  %59 = load i32, ptr %arrayidx68, align 4, !tbaa !9
  %60 = load i32, ptr %cw, align 4, !tbaa !9
  %cmp69 = icmp sgt i32 %59, %60
  br i1 %cmp69, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond65
  %61 = load ptr, ptr @xcard, align 8, !tbaa !5
  %62 = load i32, ptr %j, align 4, !tbaa !9
  %63 = load i32, ptr %h, align 4, !tbaa !9
  %sub71 = sub nsw i32 %62, %63
  %idxprom72 = sext i32 %sub71 to i64
  %arrayidx73 = getelementptr inbounds i32, ptr %61, i64 %idxprom72
  %64 = load i32, ptr %arrayidx73, align 4, !tbaa !9
  %65 = load i32, ptr %cw, align 4, !tbaa !9
  %cmp74 = icmp eq i32 %64, %65
  br i1 %cmp74, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %66 = load ptr, ptr @xset, align 8, !tbaa !5
  %67 = load i32, ptr %j, align 4, !tbaa !9
  %68 = load i32, ptr %h, align 4, !tbaa !9
  %sub76 = sub nsw i32 %67, %68
  %idxprom77 = sext i32 %sub76 to i64
  %arrayidx78 = getelementptr inbounds i32, ptr %66, i64 %idxprom77
  %69 = load i32, ptr %arrayidx78, align 4, !tbaa !9
  %70 = load i32, ptr %xw, align 4, !tbaa !9
  %cmp79 = icmp sgt i32 %69, %70
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %71 = phi i1 [ false, %lor.rhs ], [ %cmp79, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %for.cond65
  %72 = phi i1 [ true, %for.cond65 ], [ %71, %land.end ]
  br i1 %72, label %for.body81, label %for.end97

for.body81:                                       ; preds = %lor.end
  %73 = load ptr, ptr @xset, align 8, !tbaa !5
  %74 = load i32, ptr %j, align 4, !tbaa !9
  %75 = load i32, ptr %h, align 4, !tbaa !9
  %sub82 = sub nsw i32 %74, %75
  %idxprom83 = sext i32 %sub82 to i64
  %arrayidx84 = getelementptr inbounds i32, ptr %73, i64 %idxprom83
  %76 = load i32, ptr %arrayidx84, align 4, !tbaa !9
  %77 = load ptr, ptr @xset, align 8, !tbaa !5
  %78 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom85 = sext i32 %78 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %77, i64 %idxprom85
  store i32 %76, ptr %arrayidx86, align 4, !tbaa !9
  %79 = load ptr, ptr @xcard, align 8, !tbaa !5
  %80 = load i32, ptr %j, align 4, !tbaa !9
  %81 = load i32, ptr %h, align 4, !tbaa !9
  %sub87 = sub nsw i32 %80, %81
  %idxprom88 = sext i32 %sub87 to i64
  %arrayidx89 = getelementptr inbounds i32, ptr %79, i64 %idxprom88
  %82 = load i32, ptr %arrayidx89, align 4, !tbaa !9
  %83 = load ptr, ptr @xcard, align 8, !tbaa !5
  %84 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom90 = sext i32 %84 to i64
  %arrayidx91 = getelementptr inbounds i32, ptr %83, i64 %idxprom90
  store i32 %82, ptr %arrayidx91, align 4, !tbaa !9
  %85 = load i32, ptr %h, align 4, !tbaa !9
  %86 = load i32, ptr %j, align 4, !tbaa !9
  %sub92 = sub nsw i32 %86, %85
  store i32 %sub92, ptr %j, align 4, !tbaa !9
  %87 = load i32, ptr %h, align 4, !tbaa !9
  %cmp93 = icmp slt i32 %sub92, %87
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %for.body81
  br label %for.end97

if.end96:                                         ; preds = %for.body81
  br label %for.cond65, !llvm.loop !40

for.end97:                                        ; preds = %if.then95, %lor.end
  %88 = load i32, ptr %xw, align 4, !tbaa !9
  %89 = load ptr, ptr @xset, align 8, !tbaa !5
  %90 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom98 = sext i32 %90 to i64
  %arrayidx99 = getelementptr inbounds i32, ptr %89, i64 %idxprom98
  store i32 %88, ptr %arrayidx99, align 4, !tbaa !9
  %91 = load i32, ptr %cw, align 4, !tbaa !9
  %92 = load ptr, ptr @xcard, align 8, !tbaa !5
  %93 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom100 = sext i32 %93 to i64
  %arrayidx101 = getelementptr inbounds i32, ptr %92, i64 %idxprom100
  store i32 %91, ptr %arrayidx101, align 4, !tbaa !9
  br label %for.inc102

for.inc102:                                       ; preds = %for.end97
  %94 = load i32, ptr %i, align 4, !tbaa !9
  %inc103 = add nsw i32 %94, 1
  store i32 %inc103, ptr %i, align 4, !tbaa !9
  br label %for.cond57, !llvm.loop !41

for.end104:                                       ; preds = %for.cond57
  %95 = load i32, ptr %h, align 4, !tbaa !9
  %div105 = sdiv i32 %95, 3
  store i32 %div105, ptr %h, align 4, !tbaa !9
  br label %do.cond106

do.cond106:                                       ; preds = %for.end104
  %96 = load i32, ptr %h, align 4, !tbaa !9
  %cmp107 = icmp sgt i32 %96, 0
  br i1 %cmp107, label %do.body56, label %do.end109, !llvm.loop !42

do.end109:                                        ; preds = %do.cond106
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond110

for.cond110:                                      ; preds = %for.inc118, %do.end109
  %97 = load i32, ptr %i, align 4, !tbaa !9
  %98 = load i32, ptr %nxsets, align 4, !tbaa !9
  %cmp111 = icmp slt i32 %97, %98
  br i1 %cmp111, label %for.body113, label %for.end120

for.body113:                                      ; preds = %for.cond110
  %99 = load i32, ptr %i, align 4, !tbaa !9
  %100 = load ptr, ptr @xinv, align 8, !tbaa !5
  %101 = load ptr, ptr @xset, align 8, !tbaa !5
  %102 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom114 = sext i32 %102 to i64
  %arrayidx115 = getelementptr inbounds i32, ptr %101, i64 %idxprom114
  %103 = load i32, ptr %arrayidx115, align 4, !tbaa !9
  %idxprom116 = sext i32 %103 to i64
  %arrayidx117 = getelementptr inbounds i32, ptr %100, i64 %idxprom116
  store i32 %99, ptr %arrayidx117, align 4, !tbaa !9
  br label %for.inc118

for.inc118:                                       ; preds = %for.body113
  %104 = load i32, ptr %i, align 4, !tbaa !9
  %inc119 = add nsw i32 %104, 1
  store i32 %inc119, ptr %i, align 4, !tbaa !9
  br label %for.cond110, !llvm.loop !43

for.end120:                                       ; preds = %for.cond110
  store i32 0, ptr @xstart, align 16, !tbaa !9
  store i32 1, ptr %i, align 4, !tbaa !9
  br label %for.cond121

for.cond121:                                      ; preds = %for.inc138, %for.end120
  %105 = load i32, ptr %i, align 4, !tbaa !9
  %106 = load i32, ptr %nxsets, align 4, !tbaa !9
  %cmp122 = icmp slt i32 %105, %106
  br i1 %cmp122, label %for.body124, label %for.end140

for.body124:                                      ; preds = %for.cond121
  %107 = load ptr, ptr @xcard, align 8, !tbaa !5
  %108 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom125 = sext i32 %108 to i64
  %arrayidx126 = getelementptr inbounds i32, ptr %107, i64 %idxprom125
  %109 = load i32, ptr %arrayidx126, align 4, !tbaa !9
  %110 = load ptr, ptr @xcard, align 8, !tbaa !5
  %111 = load i32, ptr %i, align 4, !tbaa !9
  %sub127 = sub nsw i32 %111, 1
  %idxprom128 = sext i32 %sub127 to i64
  %arrayidx129 = getelementptr inbounds i32, ptr %110, i64 %idxprom128
  %112 = load i32, ptr %arrayidx129, align 4, !tbaa !9
  %cmp130 = icmp sgt i32 %109, %112
  br i1 %cmp130, label %if.then132, label %if.end137

if.then132:                                       ; preds = %for.body124
  %113 = load i32, ptr %i, align 4, !tbaa !9
  %114 = load ptr, ptr @xcard, align 8, !tbaa !5
  %115 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom133 = sext i32 %115 to i64
  %arrayidx134 = getelementptr inbounds i32, ptr %114, i64 %idxprom133
  %116 = load i32, ptr %arrayidx134, align 4, !tbaa !9
  %idxprom135 = sext i32 %116 to i64
  %arrayidx136 = getelementptr inbounds [33 x i32], ptr @xstart, i64 0, i64 %idxprom135
  store i32 %113, ptr %arrayidx136, align 4, !tbaa !9
  br label %if.end137

if.end137:                                        ; preds = %if.then132, %for.body124
  br label %for.inc138

for.inc138:                                       ; preds = %if.end137
  %117 = load i32, ptr %i, align 4, !tbaa !9
  %inc139 = add nsw i32 %117, 1
  store i32 %inc139, ptr %i, align 4, !tbaa !9
  br label %for.cond121, !llvm.loop !44

for.end140:                                       ; preds = %for.cond121
  %118 = load i32, ptr %nxsets, align 4, !tbaa !9
  %119 = load ptr, ptr @xcard, align 8, !tbaa !5
  %120 = load i32, ptr %nxsets, align 4, !tbaa !9
  %sub141 = sub nsw i32 %120, 1
  %idxprom142 = sext i32 %sub141 to i64
  %arrayidx143 = getelementptr inbounds i32, ptr %119, i64 %idxprom142
  %121 = load i32, ptr %arrayidx143, align 4, !tbaa !9
  %add144 = add nsw i32 %121, 1
  %idxprom145 = sext i32 %add144 to i64
  %arrayidx146 = getelementptr inbounds [33 x i32], ptr @xstart, i64 0, i64 %idxprom145
  store i32 %118, ptr %arrayidx146, align 4, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond147

for.cond147:                                      ; preds = %for.inc162, %for.end140
  %122 = load i32, ptr %i, align 4, !tbaa !9
  %123 = load i32, ptr @maxn2, align 4, !tbaa !9
  %cmp148 = icmp slt i32 %122, %123
  br i1 %cmp148, label %for.body150, label %for.end164

for.body150:                                      ; preds = %for.cond147
  %124 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom151 = sext i32 %124 to i64
  %arrayidx152 = getelementptr inbounds [32 x %struct.leveldata], ptr @data, i64 0, i64 %idxprom151
  store ptr %arrayidx152, ptr %d, align 8, !tbaa !5
  %125 = load i32, ptr %nxsets, align 4, !tbaa !9
  %conv153 = sext i32 %125 to i64
  %mul154 = mul i64 %conv153, 4
  %call155 = call noalias ptr @malloc(i64 noundef %mul154) #10
  %126 = load ptr, ptr %d, align 8, !tbaa !5
  %xorb = getelementptr inbounds %struct.leveldata, ptr %126, i32 0, i32 6
  store ptr %call155, ptr %xorb, align 8, !tbaa !32
  %127 = load ptr, ptr %d, align 8, !tbaa !5
  %xorb156 = getelementptr inbounds %struct.leveldata, ptr %127, i32 0, i32 6
  %128 = load ptr, ptr %xorb156, align 8, !tbaa !32
  %cmp157 = icmp eq ptr %128, null
  br i1 %cmp157, label %if.then159, label %if.end161

if.then159:                                       ; preds = %for.body150
  %129 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call160 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef @.str.45)
  call void @exit(i32 noundef 2) #8
  unreachable

if.end161:                                        ; preds = %for.body150
  %130 = load ptr, ptr %d, align 8, !tbaa !5
  %xub = getelementptr inbounds %struct.leveldata, ptr %130, i32 0, i32 3
  store i32 -1, ptr %xub, align 4, !tbaa !31
  %131 = load ptr, ptr %d, align 8, !tbaa !5
  %xlb = getelementptr inbounds %struct.leveldata, ptr %131, i32 0, i32 2
  store i32 -1, ptr %xlb, align 8, !tbaa !29
  %132 = load ptr, ptr %d, align 8, !tbaa !5
  %dmax = getelementptr inbounds %struct.leveldata, ptr %132, i32 0, i32 1
  store i32 -1, ptr %dmax, align 4, !tbaa !45
  %133 = load ptr, ptr %d, align 8, !tbaa !5
  %ne = getelementptr inbounds %struct.leveldata, ptr %133, i32 0, i32 0
  store i32 -1, ptr %ne, align 8, !tbaa !46
  br label %for.inc162

for.inc162:                                       ; preds = %if.end161
  %134 = load i32, ptr %i, align 4, !tbaa !9
  %inc163 = add nsw i32 %134, 1
  store i32 %inc163, ptr %i, align 4, !tbaa !9
  br label %for.cond147, !llvm.loop !47

for.end164:                                       ; preds = %for.cond147
  call void @llvm.lifetime.end.p0(i64 4, ptr %cw) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %xw) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ncj) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %tttn) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nxsets) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nn) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @xbnds(i32 noundef %n2, i32 noundef %ne, i32 noundef %dmax) #0 {
entry:
  %n2.addr = alloca i32, align 4
  %ne.addr = alloca i32, align 4
  %dmax.addr = alloca i32, align 4
  %xlb = alloca i32, align 4
  %xub = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %n2, ptr %n2.addr, align 4, !tbaa !9
  store i32 %ne, ptr %ne.addr, align 4, !tbaa !9
  store i32 %dmax, ptr %dmax.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %xlb) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %xub) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #7
  %0 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr @connec, align 4, !tbaa !9
  %tobool = icmp ne i32 %1, 0
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %dmax.addr, align 4, !tbaa !9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond1 = phi i32 [ %cond, %cond.true ], [ %3, %cond.false ]
  store i32 %cond1, ptr %xlb, align 4, !tbaa !9
  %4 = load i32, ptr %xlb, align 4, !tbaa !9
  %5 = load i32, ptr @mindeg2, align 4, !tbaa !9
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %6 = load i32, ptr @mindeg2, align 4, !tbaa !9
  store i32 %6, ptr %xlb, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %7 = load i32, ptr @mine, align 4, !tbaa !9
  %8 = load i32, ptr %ne.addr, align 4, !tbaa !9
  %sub = sub nsw i32 %7, %8
  %9 = load i32, ptr @maxn2, align 4, !tbaa !9
  %10 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %sub3 = sub nsw i32 %9, %10
  %sub4 = sub nsw i32 %sub3, 1
  %11 = load i32, ptr @maxdeg2, align 4, !tbaa !9
  %mul = mul nsw i32 %sub4, %11
  %sub5 = sub nsw i32 %sub, %mul
  store i32 %sub5, ptr %m, align 4, !tbaa !9
  %12 = load i32, ptr %m, align 4, !tbaa !9
  %13 = load i32, ptr %xlb, align 4, !tbaa !9
  %cmp6 = icmp sgt i32 %12, %13
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %14 = load i32, ptr %m, align 4, !tbaa !9
  store i32 %14, ptr %xlb, align 4, !tbaa !9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %15 = load i32, ptr @maxdeg2, align 4, !tbaa !9
  store i32 %15, ptr %xub, align 4, !tbaa !9
  %16 = load i32, ptr @maxe, align 4, !tbaa !9
  %17 = load i32, ptr %ne.addr, align 4, !tbaa !9
  %sub9 = sub nsw i32 %16, %17
  %18 = load i32, ptr @maxn2, align 4, !tbaa !9
  %19 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %sub10 = sub nsw i32 %18, %19
  %div = sdiv i32 %sub9, %sub10
  store i32 %div, ptr %m, align 4, !tbaa !9
  %20 = load i32, ptr %m, align 4, !tbaa !9
  %21 = load i32, ptr %xub, align 4, !tbaa !9
  %cmp11 = icmp slt i32 %20, %21
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  %22 = load i32, ptr %m, align 4, !tbaa !9
  store i32 %22, ptr %xub, align 4, !tbaa !9
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end8
  %23 = load i32, ptr %ne.addr, align 4, !tbaa !9
  %24 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [32 x %struct.leveldata], ptr @data, i64 0, i64 %idxprom
  %ne14 = getelementptr inbounds %struct.leveldata, ptr %arrayidx, i32 0, i32 0
  store i32 %23, ptr %ne14, align 16, !tbaa !46
  %25 = load i32, ptr %dmax.addr, align 4, !tbaa !9
  %26 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %idxprom15 = sext i32 %26 to i64
  %arrayidx16 = getelementptr inbounds [32 x %struct.leveldata], ptr @data, i64 0, i64 %idxprom15
  %dmax17 = getelementptr inbounds %struct.leveldata, ptr %arrayidx16, i32 0, i32 1
  store i32 %25, ptr %dmax17, align 4, !tbaa !45
  %27 = load i32, ptr %xlb, align 4, !tbaa !9
  %28 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %idxprom18 = sext i32 %28 to i64
  %arrayidx19 = getelementptr inbounds [32 x %struct.leveldata], ptr @data, i64 0, i64 %idxprom18
  %xlb20 = getelementptr inbounds %struct.leveldata, ptr %arrayidx19, i32 0, i32 2
  store i32 %27, ptr %xlb20, align 8, !tbaa !29
  %29 = load i32, ptr %xub, align 4, !tbaa !9
  %30 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %idxprom21 = sext i32 %30 to i64
  %arrayidx22 = getelementptr inbounds [32 x %struct.leveldata], ptr @data, i64 0, i64 %idxprom21
  %xub23 = getelementptr inbounds %struct.leveldata, ptr %arrayidx22, i32 0, i32 3
  store i32 %29, ptr %xub23, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %xub) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %xlb) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @genextend(ptr noundef %g, i32 noundef %n2, ptr noundef %deg, i32 noundef %ne, i32 noundef %rigid, i32 noundef %xlb, i32 noundef %xub) #0 {
entry:
  %g.addr = alloca ptr, align 8
  %n2.addr = alloca i32, align 4
  %deg.addr = alloca ptr, align 8
  %ne.addr = alloca i32, align 4
  %rigid.addr = alloca i32, align 4
  %xlb.addr = alloca i32, align 4
  %xub.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %d = alloca i32, align 4
  %xorb = alloca ptr, align 8
  %xc = alloca i32, align 4
  %nx = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %imin = alloca i32, align 4
  %imax = alloca i32, align 4
  %dmax = alloca i32, align 4
  %xlbx = alloca i32, align 4
  %xubx = alloca i32, align 4
  %n = alloca i32, align 4
  %gx = alloca [32 x i32], align 16
  %degx = alloca [32 x i32], align 16
  %rigidx = alloca i32, align 4
  %dneed = alloca i32, align 4
  %need = alloca i32, align 4
  %nfeet = alloca i32, align 4
  %hideg = alloca i32, align 4
  %deg1 = alloca i32, align 4
  %ft = alloca [32 x i32], align 16
  %nfrag = alloca i32, align 4
  %frag = alloca [32 x i32], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8, !tbaa !5
  store i32 %n2, ptr %n2.addr, align 4, !tbaa !9
  store ptr %deg, ptr %deg.addr, align 8, !tbaa !5
  store i32 %ne, ptr %ne.addr, align 4, !tbaa !9
  store i32 %rigid, ptr %rigid.addr, align 4, !tbaa !9
  store i32 %xlb, ptr %xlb.addr, align 4, !tbaa !9
  store i32 %xub, ptr %xub.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %xorb) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %xc) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %nx) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %imin) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %imax) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %dmax) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %xlbx) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %xubx) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr %gx) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr %degx) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %rigidx) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %dneed) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %need) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %nfeet) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %hideg) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %deg1) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr %ft) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %nfrag) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr %frag) #7
  %0 = load i32, ptr @n1, align 4, !tbaa !9
  %1 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %add = add nsw i32 %0, %1
  store i32 %add, ptr %n, align 4, !tbaa !9
  %2 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %add1 = add nsw i32 %2, 1
  store i32 %add1, ptr %nx, align 4, !tbaa !9
  %3 = load ptr, ptr %deg.addr, align 8, !tbaa !5
  %4 = load i32, ptr %n, align 4, !tbaa !9
  %sub = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !9
  store i32 %5, ptr %dmax, align 4, !tbaa !9
  store i32 0, ptr %d, align 4, !tbaa !9
  %6 = load i32, ptr @mindeg1, align 4, !tbaa !9
  %7 = load i32, ptr @maxn2, align 4, !tbaa !9
  %sub2 = sub nsw i32 %6, %7
  %8 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %add3 = add nsw i32 %sub2, %8
  store i32 %add3, ptr %dneed, align 4, !tbaa !9
  store i32 0, ptr %need, align 4, !tbaa !9
  store i32 0, ptr %hideg, align 4, !tbaa !9
  store i32 0, ptr %deg1, align 4, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, ptr %i, align 4, !tbaa !9
  %10 = load i32, ptr @n1, align 4, !tbaa !9
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %deg.addr, align 8, !tbaa !5
  %12 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %11, i64 %idxprom4
  %13 = load i32, ptr %arrayidx5, align 4, !tbaa !9
  %14 = load i32, ptr @maxdeg1, align 4, !tbaa !9
  %cmp6 = icmp eq i32 %13, %14
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds [24 x i32], ptr @xbit, i64 0, i64 %idxprom7
  %16 = load i32, ptr %arrayidx8, align 4, !tbaa !9
  %17 = load i32, ptr %d, align 4, !tbaa !9
  %or = or i32 %17, %16
  store i32 %or, ptr %d, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %18 = load ptr, ptr %deg.addr, align 8, !tbaa !5
  %19 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom9 = sext i32 %19 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %18, i64 %idxprom9
  %20 = load i32, ptr %arrayidx10, align 4, !tbaa !9
  %21 = load i32, ptr %dneed, align 4, !tbaa !9
  %cmp11 = icmp sle i32 %20, %21
  br i1 %cmp11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end
  %22 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom13 = sext i32 %22 to i64
  %arrayidx14 = getelementptr inbounds [24 x i32], ptr @xbit, i64 0, i64 %idxprom13
  %23 = load i32, ptr %arrayidx14, align 4, !tbaa !9
  %24 = load i32, ptr %need, align 4, !tbaa !9
  %or15 = or i32 %24, %23
  store i32 %or15, ptr %need, align 4, !tbaa !9
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end
  %25 = load ptr, ptr %deg.addr, align 8, !tbaa !5
  %26 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom17 = sext i32 %26 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %25, i64 %idxprom17
  %27 = load i32, ptr %arrayidx18, align 4, !tbaa !9
  %cmp19 = icmp sge i32 %27, 2
  br i1 %cmp19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.end16
  %28 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom21 = sext i32 %28 to i64
  %arrayidx22 = getelementptr inbounds [24 x i32], ptr @xbit, i64 0, i64 %idxprom21
  %29 = load i32, ptr %arrayidx22, align 4, !tbaa !9
  %30 = load i32, ptr %hideg, align 4, !tbaa !9
  %or23 = or i32 %30, %29
  store i32 %or23, ptr %hideg, align 4, !tbaa !9
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end16
  %31 = load ptr, ptr %deg.addr, align 8, !tbaa !5
  %32 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom25 = sext i32 %32 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %31, i64 %idxprom25
  %33 = load i32, ptr %arrayidx26, align 4, !tbaa !9
  %cmp27 = icmp eq i32 %33, 1
  br i1 %cmp27, label %if.then28, label %if.end32

if.then28:                                        ; preds = %if.end24
  %34 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom29 = sext i32 %34 to i64
  %arrayidx30 = getelementptr inbounds [24 x i32], ptr @xbit, i64 0, i64 %idxprom29
  %35 = load i32, ptr %arrayidx30, align 4, !tbaa !9
  %36 = load i32, ptr %deg1, align 4, !tbaa !9
  %or31 = or i32 %36, %35
  store i32 %or31, ptr %deg1, align 4, !tbaa !9
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.end24
  br label %for.inc

for.inc:                                          ; preds = %if.end32
  %37 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add nsw i32 %37, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  %38 = load i32, ptr %xlb.addr, align 4, !tbaa !9
  %39 = load i32, ptr %need, align 4, !tbaa !9
  %shr = ashr i32 %39, 8
  %and = and i32 %shr, 255
  %idxprom33 = sext i32 %and to i64
  %arrayidx34 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom33
  %40 = load i32, ptr %arrayidx34, align 4, !tbaa !9
  %41 = load i32, ptr %need, align 4, !tbaa !9
  %shr35 = ashr i32 %41, 16
  %and36 = and i32 %shr35, 255
  %idxprom37 = sext i32 %and36 to i64
  %arrayidx38 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom37
  %42 = load i32, ptr %arrayidx38, align 4, !tbaa !9
  %add39 = add nsw i32 %40, %42
  %43 = load i32, ptr %need, align 4, !tbaa !9
  %and40 = and i32 %43, 255
  %idxprom41 = sext i32 %and40 to i64
  %arrayidx42 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom41
  %44 = load i32, ptr %arrayidx42, align 4, !tbaa !9
  %add43 = add nsw i32 %add39, %44
  %cmp44 = icmp slt i32 %38, %add43
  br i1 %cmp44, label %if.then45, label %if.end59

if.then45:                                        ; preds = %for.end
  %45 = load i32, ptr %need, align 4, !tbaa !9
  %shr46 = ashr i32 %45, 8
  %and47 = and i32 %shr46, 255
  %idxprom48 = sext i32 %and47 to i64
  %arrayidx49 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom48
  %46 = load i32, ptr %arrayidx49, align 4, !tbaa !9
  %47 = load i32, ptr %need, align 4, !tbaa !9
  %shr50 = ashr i32 %47, 16
  %and51 = and i32 %shr50, 255
  %idxprom52 = sext i32 %and51 to i64
  %arrayidx53 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom52
  %48 = load i32, ptr %arrayidx53, align 4, !tbaa !9
  %add54 = add nsw i32 %46, %48
  %49 = load i32, ptr %need, align 4, !tbaa !9
  %and55 = and i32 %49, 255
  %idxprom56 = sext i32 %and55 to i64
  %arrayidx57 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom56
  %50 = load i32, ptr %arrayidx57, align 4, !tbaa !9
  %add58 = add nsw i32 %add54, %50
  store i32 %add58, ptr %xlb.addr, align 4, !tbaa !9
  br label %if.end59

if.end59:                                         ; preds = %if.then45, %for.end
  %51 = load i32, ptr %xlb.addr, align 4, !tbaa !9
  %52 = load i32, ptr %xub.addr, align 4, !tbaa !9
  %cmp60 = icmp sgt i32 %51, %52
  br i1 %cmp60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end59
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end62:                                         ; preds = %if.end59
  %53 = load i32, ptr %xlb.addr, align 4, !tbaa !9
  %idxprom63 = sext i32 %53 to i64
  %arrayidx64 = getelementptr inbounds [33 x i32], ptr @xstart, i64 0, i64 %idxprom63
  %54 = load i32, ptr %arrayidx64, align 4, !tbaa !9
  store i32 %54, ptr %imin, align 4, !tbaa !9
  %55 = load i32, ptr %xub.addr, align 4, !tbaa !9
  %add65 = add nsw i32 %55, 1
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds [33 x i32], ptr @xstart, i64 0, i64 %idxprom66
  %56 = load i32, ptr %arrayidx67, align 4, !tbaa !9
  store i32 %56, ptr %imax, align 4, !tbaa !9
  %57 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %idxprom68 = sext i32 %57 to i64
  %arrayidx69 = getelementptr inbounds [32 x %struct.leveldata], ptr @data, i64 0, i64 %idxprom68
  %xorb70 = getelementptr inbounds %struct.leveldata, ptr %arrayidx69, i32 0, i32 6
  %58 = load ptr, ptr %xorb70, align 8, !tbaa !32
  store ptr %58, ptr %xorb, align 8, !tbaa !5
  %59 = load i32, ptr %nx, align 4, !tbaa !9
  %60 = load i32, ptr @maxn2, align 4, !tbaa !9
  %cmp71 = icmp eq i32 %59, %60
  br i1 %cmp71, label %if.then72, label %if.else

if.then72:                                        ; preds = %if.end62
  %61 = load i32, ptr @footfree, align 4, !tbaa !9
  %tobool = icmp ne i32 %61, 0
  br i1 %tobool, label %if.then73, label %if.end94

if.then73:                                        ; preds = %if.then72
  store i32 0, ptr %nfeet, align 4, !tbaa !9
  store i32 0, ptr %j, align 4, !tbaa !9
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc91, %if.then73
  %62 = load i32, ptr %j, align 4, !tbaa !9
  %63 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %cmp75 = icmp slt i32 %62, %63
  br i1 %cmp75, label %for.body76, label %for.end93

for.body76:                                       ; preds = %for.cond74
  %64 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom77 = sext i32 %64 to i64
  %arrayidx78 = getelementptr inbounds [32 x i32], ptr @xval, i64 0, i64 %idxprom77
  %65 = load i32, ptr %arrayidx78, align 4, !tbaa !9
  %66 = load i32, ptr %hideg, align 4, !tbaa !9
  %and79 = and i32 %65, %66
  store i32 %and79, ptr %x, align 4, !tbaa !9
  %67 = load i32, ptr %x, align 4, !tbaa !9
  %68 = load i32, ptr %x, align 4, !tbaa !9
  %sub80 = sub nsw i32 %68, 1
  %and81 = and i32 %67, %sub80
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %if.end90, label %if.then83

if.then83:                                        ; preds = %for.body76
  %69 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom84 = sext i32 %69 to i64
  %arrayidx85 = getelementptr inbounds [32 x i32], ptr @xval, i64 0, i64 %idxprom84
  %70 = load i32, ptr %arrayidx85, align 4, !tbaa !9
  %71 = load i32, ptr %deg1, align 4, !tbaa !9
  %and86 = and i32 %70, %71
  %72 = load i32, ptr %nfeet, align 4, !tbaa !9
  %inc87 = add nsw i32 %72, 1
  store i32 %inc87, ptr %nfeet, align 4, !tbaa !9
  %idxprom88 = sext i32 %72 to i64
  %arrayidx89 = getelementptr inbounds [32 x i32], ptr %ft, i64 0, i64 %idxprom88
  store i32 %and86, ptr %arrayidx89, align 4, !tbaa !9
  br label %if.end90

if.end90:                                         ; preds = %if.then83, %for.body76
  br label %for.inc91

for.inc91:                                        ; preds = %if.end90
  %73 = load i32, ptr %j, align 4, !tbaa !9
  %inc92 = add nsw i32 %73, 1
  store i32 %inc92, ptr %j, align 4, !tbaa !9
  br label %for.cond74, !llvm.loop !49

for.end93:                                        ; preds = %for.cond74
  br label %if.end94

if.end94:                                         ; preds = %for.end93, %if.then72
  %74 = load i32, ptr @cutfree, align 4, !tbaa !9
  %tobool95 = icmp ne i32 %74, 0
  br i1 %tobool95, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end94
  %75 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %arraydecay = getelementptr inbounds [32 x i32], ptr %frag, i64 0, i64 0
  call void @fragments(ptr noundef @xval, i32 noundef %75, ptr noundef %arraydecay, ptr noundef %nfrag)
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end94
  %76 = load i32, ptr %imin, align 4, !tbaa !9
  store i32 %76, ptr %i, align 4, !tbaa !9
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc264, %if.end97
  %77 = load i32, ptr %i, align 4, !tbaa !9
  %78 = load i32, ptr %imax, align 4, !tbaa !9
  %cmp99 = icmp slt i32 %77, %78
  br i1 %cmp99, label %for.body100, label %for.end266

for.body100:                                      ; preds = %for.cond98
  %79 = load i32, ptr %rigid.addr, align 4, !tbaa !9
  %tobool101 = icmp ne i32 %79, 0
  br i1 %tobool101, label %if.end106, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body100
  %80 = load ptr, ptr %xorb, align 8, !tbaa !5
  %81 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom102 = sext i32 %81 to i64
  %arrayidx103 = getelementptr inbounds i32, ptr %80, i64 %idxprom102
  %82 = load i32, ptr %arrayidx103, align 4, !tbaa !9
  %83 = load i32, ptr %i, align 4, !tbaa !9
  %cmp104 = icmp ne i32 %82, %83
  br i1 %cmp104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %land.lhs.true
  br label %for.inc264

if.end106:                                        ; preds = %land.lhs.true, %for.body100
  %84 = load ptr, ptr @xset, align 8, !tbaa !5
  %85 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom107 = sext i32 %85 to i64
  %arrayidx108 = getelementptr inbounds i32, ptr %84, i64 %idxprom107
  %86 = load i32, ptr %arrayidx108, align 4, !tbaa !9
  store i32 %86, ptr %x, align 4, !tbaa !9
  %87 = load ptr, ptr @xcard, align 8, !tbaa !5
  %88 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom109 = sext i32 %88 to i64
  %arrayidx110 = getelementptr inbounds i32, ptr %87, i64 %idxprom109
  %89 = load i32, ptr %arrayidx110, align 4, !tbaa !9
  store i32 %89, ptr %xc, align 4, !tbaa !9
  %90 = load i32, ptr %x, align 4, !tbaa !9
  %91 = load i32, ptr %d, align 4, !tbaa !9
  %and111 = and i32 %90, %91
  %cmp112 = icmp ne i32 %and111, 0
  br i1 %cmp112, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.end106
  br label %for.inc264

if.end114:                                        ; preds = %if.end106
  %92 = load i32, ptr %need, align 4, !tbaa !9
  %93 = load i32, ptr %x, align 4, !tbaa !9
  %not = xor i32 %93, -1
  %and115 = and i32 %92, %not
  %cmp116 = icmp ne i32 %and115, 0
  br i1 %cmp116, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.end114
  br label %for.inc264

if.end118:                                        ; preds = %if.end114
  %94 = load i32, ptr @simple, align 4, !tbaa !9
  %tobool119 = icmp ne i32 %94, 0
  br i1 %tobool119, label %if.then120, label %if.end133

if.then120:                                       ; preds = %if.end118
  %95 = load i32, ptr %n2.addr, align 4, !tbaa !9
  store i32 %95, ptr %j, align 4, !tbaa !9
  br label %for.cond121

for.cond121:                                      ; preds = %if.end128, %if.then120
  %96 = load i32, ptr %j, align 4, !tbaa !9
  %dec = add nsw i32 %96, -1
  store i32 %dec, ptr %j, align 4, !tbaa !9
  %cmp122 = icmp sge i32 %dec, 0
  br i1 %cmp122, label %for.body123, label %for.end129

for.body123:                                      ; preds = %for.cond121
  %97 = load i32, ptr %x, align 4, !tbaa !9
  %98 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom124 = sext i32 %98 to i64
  %arrayidx125 = getelementptr inbounds [32 x i32], ptr @xval, i64 0, i64 %idxprom124
  %99 = load i32, ptr %arrayidx125, align 4, !tbaa !9
  %cmp126 = icmp eq i32 %97, %99
  br i1 %cmp126, label %if.then127, label %if.end128

if.then127:                                       ; preds = %for.body123
  br label %for.end129

if.end128:                                        ; preds = %for.body123
  br label %for.cond121, !llvm.loop !50

for.end129:                                       ; preds = %if.then127, %for.cond121
  %100 = load i32, ptr %j, align 4, !tbaa !9
  %cmp130 = icmp sge i32 %100, 0
  br i1 %cmp130, label %if.then131, label %if.end132

if.then131:                                       ; preds = %for.end129
  br label %for.inc264

if.end132:                                        ; preds = %for.end129
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %if.end118
  %101 = load i32, ptr @maxcommon, align 4, !tbaa !9
  %cmp134 = icmp sge i32 %101, 0
  br i1 %cmp134, label %if.then135, label %if.end163

if.then135:                                       ; preds = %if.end133
  %102 = load i32, ptr %n2.addr, align 4, !tbaa !9
  store i32 %102, ptr %j, align 4, !tbaa !9
  br label %for.cond136

for.cond136:                                      ; preds = %if.end158, %if.then135
  %103 = load i32, ptr %j, align 4, !tbaa !9
  %dec137 = add nsw i32 %103, -1
  store i32 %dec137, ptr %j, align 4, !tbaa !9
  %cmp138 = icmp sge i32 %dec137, 0
  br i1 %cmp138, label %for.body139, label %for.end159

for.body139:                                      ; preds = %for.cond136
  %104 = load i32, ptr %x, align 4, !tbaa !9
  %105 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom140 = sext i32 %105 to i64
  %arrayidx141 = getelementptr inbounds [32 x i32], ptr @xval, i64 0, i64 %idxprom140
  %106 = load i32, ptr %arrayidx141, align 4, !tbaa !9
  %and142 = and i32 %104, %106
  store i32 %and142, ptr %y, align 4, !tbaa !9
  %107 = load i32, ptr %y, align 4, !tbaa !9
  %shr143 = ashr i32 %107, 8
  %and144 = and i32 %shr143, 255
  %idxprom145 = sext i32 %and144 to i64
  %arrayidx146 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom145
  %108 = load i32, ptr %arrayidx146, align 4, !tbaa !9
  %109 = load i32, ptr %y, align 4, !tbaa !9
  %shr147 = ashr i32 %109, 16
  %and148 = and i32 %shr147, 255
  %idxprom149 = sext i32 %and148 to i64
  %arrayidx150 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom149
  %110 = load i32, ptr %arrayidx150, align 4, !tbaa !9
  %add151 = add nsw i32 %108, %110
  %111 = load i32, ptr %y, align 4, !tbaa !9
  %and152 = and i32 %111, 255
  %idxprom153 = sext i32 %and152 to i64
  %arrayidx154 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom153
  %112 = load i32, ptr %arrayidx154, align 4, !tbaa !9
  %add155 = add nsw i32 %add151, %112
  %113 = load i32, ptr @maxcommon, align 4, !tbaa !9
  %cmp156 = icmp sgt i32 %add155, %113
  br i1 %cmp156, label %if.then157, label %if.end158

if.then157:                                       ; preds = %for.body139
  br label %for.end159

if.end158:                                        ; preds = %for.body139
  br label %for.cond136, !llvm.loop !51

for.end159:                                       ; preds = %if.then157, %for.cond136
  %114 = load i32, ptr %j, align 4, !tbaa !9
  %cmp160 = icmp sge i32 %114, 0
  br i1 %cmp160, label %if.then161, label %if.end162

if.then161:                                       ; preds = %for.end159
  br label %for.inc264

if.end162:                                        ; preds = %for.end159
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.end133
  %115 = load i32, ptr @antichain, align 4, !tbaa !9
  %tobool164 = icmp ne i32 %115, 0
  br i1 %tobool164, label %if.then165, label %if.end182

if.then165:                                       ; preds = %if.end163
  store i32 0, ptr %j, align 4, !tbaa !9
  br label %for.cond166

for.cond166:                                      ; preds = %for.inc176, %if.then165
  %116 = load i32, ptr %j, align 4, !tbaa !9
  %117 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %cmp167 = icmp slt i32 %116, %117
  br i1 %cmp167, label %for.body168, label %for.end178

for.body168:                                      ; preds = %for.cond166
  %118 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom169 = sext i32 %118 to i64
  %arrayidx170 = getelementptr inbounds [32 x i32], ptr @xval, i64 0, i64 %idxprom169
  %119 = load i32, ptr %arrayidx170, align 4, !tbaa !9
  %120 = load i32, ptr %x, align 4, !tbaa !9
  %not171 = xor i32 %120, -1
  %and172 = and i32 %119, %not171
  %cmp173 = icmp eq i32 %and172, 0
  br i1 %cmp173, label %if.then174, label %if.end175

if.then174:                                       ; preds = %for.body168
  br label %for.end178

if.end175:                                        ; preds = %for.body168
  br label %for.inc176

for.inc176:                                       ; preds = %if.end175
  %121 = load i32, ptr %j, align 4, !tbaa !9
  %inc177 = add nsw i32 %121, 1
  store i32 %inc177, ptr %j, align 4, !tbaa !9
  br label %for.cond166, !llvm.loop !52

for.end178:                                       ; preds = %if.then174, %for.cond166
  %122 = load i32, ptr %j, align 4, !tbaa !9
  %123 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %cmp179 = icmp slt i32 %122, %123
  br i1 %cmp179, label %if.then180, label %if.end181

if.then180:                                       ; preds = %for.end178
  br label %for.inc264

if.end181:                                        ; preds = %for.end178
  br label %if.end182

if.end182:                                        ; preds = %if.end181, %if.end163
  %124 = load i32, ptr @footfree, align 4, !tbaa !9
  %tobool183 = icmp ne i32 %124, 0
  br i1 %tobool183, label %if.then184, label %if.end207

if.then184:                                       ; preds = %if.end182
  %125 = load i32, ptr %x, align 4, !tbaa !9
  %126 = load i32, ptr %hideg, align 4, !tbaa !9
  %127 = load i32, ptr %deg1, align 4, !tbaa !9
  %or185 = or i32 %126, %127
  %and186 = and i32 %125, %or185
  store i32 %and186, ptr %y, align 4, !tbaa !9
  %128 = load i32, ptr %y, align 4, !tbaa !9
  %129 = load i32, ptr %y, align 4, !tbaa !9
  %sub187 = sub nsw i32 %129, 1
  %and188 = and i32 %128, %sub187
  %tobool189 = icmp ne i32 %and188, 0
  br i1 %tobool189, label %if.end191, label %if.then190

if.then190:                                       ; preds = %if.then184
  br label %for.inc264

if.end191:                                        ; preds = %if.then184
  store i32 0, ptr %j, align 4, !tbaa !9
  br label %for.cond192

for.cond192:                                      ; preds = %for.inc201, %if.end191
  %130 = load i32, ptr %j, align 4, !tbaa !9
  %131 = load i32, ptr %nfeet, align 4, !tbaa !9
  %cmp193 = icmp slt i32 %130, %131
  br i1 %cmp193, label %for.body194, label %for.end203

for.body194:                                      ; preds = %for.cond192
  %132 = load i32, ptr %x, align 4, !tbaa !9
  %133 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom195 = sext i32 %133 to i64
  %arrayidx196 = getelementptr inbounds [32 x i32], ptr %ft, i64 0, i64 %idxprom195
  %134 = load i32, ptr %arrayidx196, align 4, !tbaa !9
  %and197 = and i32 %132, %134
  %cmp198 = icmp eq i32 %and197, 0
  br i1 %cmp198, label %if.then199, label %if.end200

if.then199:                                       ; preds = %for.body194
  br label %for.end203

if.end200:                                        ; preds = %for.body194
  br label %for.inc201

for.inc201:                                       ; preds = %if.end200
  %135 = load i32, ptr %j, align 4, !tbaa !9
  %inc202 = add nsw i32 %135, 1
  store i32 %inc202, ptr %j, align 4, !tbaa !9
  br label %for.cond192, !llvm.loop !53

for.end203:                                       ; preds = %if.then199, %for.cond192
  %136 = load i32, ptr %j, align 4, !tbaa !9
  %137 = load i32, ptr %nfeet, align 4, !tbaa !9
  %cmp204 = icmp slt i32 %136, %137
  br i1 %cmp204, label %if.then205, label %if.end206

if.then205:                                       ; preds = %for.end203
  br label %for.inc264

if.end206:                                        ; preds = %for.end203
  br label %if.end207

if.end207:                                        ; preds = %if.end206, %if.end182
  %138 = load i32, ptr @cutfree, align 4, !tbaa !9
  %tobool208 = icmp ne i32 %138, 0
  br i1 %tobool208, label %if.then209, label %if.end232

if.then209:                                       ; preds = %if.end207
  %139 = load i32, ptr %x, align 4, !tbaa !9
  %140 = load i32, ptr %hideg, align 4, !tbaa !9
  %141 = load i32, ptr %deg1, align 4, !tbaa !9
  %or210 = or i32 %140, %141
  %and211 = and i32 %139, %or210
  store i32 %and211, ptr %y, align 4, !tbaa !9
  %142 = load i32, ptr %y, align 4, !tbaa !9
  %143 = load i32, ptr %y, align 4, !tbaa !9
  %sub212 = sub nsw i32 %143, 1
  %and213 = and i32 %142, %sub212
  %tobool214 = icmp ne i32 %and213, 0
  br i1 %tobool214, label %if.end216, label %if.then215

if.then215:                                       ; preds = %if.then209
  br label %for.inc264

if.end216:                                        ; preds = %if.then209
  store i32 0, ptr %j, align 4, !tbaa !9
  br label %for.cond217

for.cond217:                                      ; preds = %for.inc226, %if.end216
  %144 = load i32, ptr %j, align 4, !tbaa !9
  %145 = load i32, ptr %nfrag, align 4, !tbaa !9
  %cmp218 = icmp slt i32 %144, %145
  br i1 %cmp218, label %for.body219, label %for.end228

for.body219:                                      ; preds = %for.cond217
  %146 = load i32, ptr %x, align 4, !tbaa !9
  %147 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom220 = sext i32 %147 to i64
  %arrayidx221 = getelementptr inbounds [32 x i32], ptr %frag, i64 0, i64 %idxprom220
  %148 = load i32, ptr %arrayidx221, align 4, !tbaa !9
  %and222 = and i32 %146, %148
  %cmp223 = icmp eq i32 %and222, 0
  br i1 %cmp223, label %if.then224, label %if.end225

if.then224:                                       ; preds = %for.body219
  br label %for.end228

if.end225:                                        ; preds = %for.body219
  br label %for.inc226

for.inc226:                                       ; preds = %if.end225
  %149 = load i32, ptr %j, align 4, !tbaa !9
  %inc227 = add nsw i32 %149, 1
  store i32 %inc227, ptr %j, align 4, !tbaa !9
  br label %for.cond217, !llvm.loop !54

for.end228:                                       ; preds = %if.then224, %for.cond217
  %150 = load i32, ptr %j, align 4, !tbaa !9
  %151 = load i32, ptr %nfrag, align 4, !tbaa !9
  %cmp229 = icmp slt i32 %150, %151
  br i1 %cmp229, label %if.then230, label %if.end231

if.then230:                                       ; preds = %for.end228
  br label %for.inc264

if.end231:                                        ; preds = %for.end228
  br label %if.end232

if.end232:                                        ; preds = %if.end231, %if.end207
  %152 = load i32, ptr %x, align 4, !tbaa !9
  %153 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %idxprom233 = sext i32 %153 to i64
  %arrayidx234 = getelementptr inbounds [32 x i32], ptr @xval, i64 0, i64 %idxprom233
  store i32 %152, ptr %arrayidx234, align 4, !tbaa !9
  %154 = load i32, ptr %nx, align 4, !tbaa !9
  %155 = load i32, ptr @nprune, align 4, !tbaa !9
  %cmp235 = icmp eq i32 %154, %155
  br i1 %cmp235, label %if.then236, label %if.end244

if.then236:                                       ; preds = %if.end232
  %156 = load i32, ptr @curres, align 4, !tbaa !9
  %cmp237 = icmp eq i32 %156, 0
  br i1 %cmp237, label %if.then238, label %if.end239

if.then238:                                       ; preds = %if.then236
  %157 = load i32, ptr @mod, align 4, !tbaa !9
  store i32 %157, ptr @curres, align 4, !tbaa !9
  br label %if.end239

if.end239:                                        ; preds = %if.then238, %if.then236
  %158 = load i32, ptr @curres, align 4, !tbaa !9
  %dec240 = add nsw i32 %158, -1
  store i32 %dec240, ptr @curres, align 4, !tbaa !9
  %cmp241 = icmp ne i32 %dec240, 0
  br i1 %cmp241, label %if.then242, label %if.end243

if.then242:                                       ; preds = %if.end239
  br label %for.inc264

if.end243:                                        ; preds = %if.end239
  br label %if.end244

if.end244:                                        ; preds = %if.end243, %if.end232
  %159 = load ptr, ptr %g.addr, align 8, !tbaa !5
  %160 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %161 = load i32, ptr %x, align 4, !tbaa !9
  %arraydecay245 = getelementptr inbounds [32 x i32], ptr %gx, i64 0, i64 0
  %162 = load ptr, ptr %deg.addr, align 8, !tbaa !5
  %163 = load i32, ptr %xc, align 4, !tbaa !9
  %164 = load i32, ptr %dmax, align 4, !tbaa !9
  %cmp246 = icmp sgt i32 %163, %164
  %conv = zext i1 %cmp246 to i32
  %call = call i32 @accept2(ptr noundef %159, i32 noundef %160, i32 noundef %161, ptr noundef %arraydecay245, ptr noundef %162, i32 noundef %conv)
  %tobool247 = icmp ne i32 %call, 0
  br i1 %tobool247, label %if.then248, label %if.end263

if.then248:                                       ; preds = %if.end244
  %165 = load i32, ptr @connec, align 4, !tbaa !9
  %tobool249 = icmp ne i32 %165, 0
  br i1 %tobool249, label %lor.lhs.false, label %if.then254

lor.lhs.false:                                    ; preds = %if.then248
  %arraydecay250 = getelementptr inbounds [32 x i32], ptr %gx, i64 0, i64 0
  %166 = load i32, ptr %n, align 4, !tbaa !9
  %add251 = add nsw i32 %166, 1
  %call252 = call i32 @isconnected(ptr noundef %arraydecay250, i32 noundef %add251)
  %tobool253 = icmp ne i32 %call252, 0
  br i1 %tobool253, label %if.then254, label %if.end262

if.then254:                                       ; preds = %lor.lhs.false, %if.then248
  %167 = load i32, ptr %ne.addr, align 4, !tbaa !9
  %168 = load i32, ptr %xc, align 4, !tbaa !9
  %add255 = add nsw i32 %167, %168
  %idxprom256 = sext i32 %add255 to i64
  %arrayidx257 = getelementptr inbounds [257 x i64], ptr @ecount, i64 0, i64 %idxprom256
  %169 = load i64, ptr %arrayidx257, align 8, !tbaa !20
  %inc258 = add i64 %169, 1
  store i64 %inc258, ptr %arrayidx257, align 8, !tbaa !20
  %170 = load ptr, ptr @outproc, align 8, !tbaa !5
  %171 = load ptr, ptr @outfile, align 8, !tbaa !5
  %172 = load i32, ptr @canonise, align 4, !tbaa !9
  %tobool259 = icmp ne i32 %172, 0
  br i1 %tobool259, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then254
  br label %cond.end

cond.false:                                       ; preds = %if.then254
  %arraydecay260 = getelementptr inbounds [32 x i32], ptr %gx, i64 0, i64 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ @gcan, %cond.true ], [ %arraydecay260, %cond.false ]
  %173 = load i32, ptr @n1, align 4, !tbaa !9
  %174 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %add261 = add nsw i32 %174, 1
  call void %170(ptr noundef %171, ptr noundef %cond, i32 noundef %173, i32 noundef %add261)
  br label %if.end262

if.end262:                                        ; preds = %cond.end, %lor.lhs.false
  br label %if.end263

if.end263:                                        ; preds = %if.end262, %if.end244
  br label %for.inc264

for.inc264:                                       ; preds = %if.end263, %if.then242, %if.then230, %if.then215, %if.then205, %if.then190, %if.then180, %if.then161, %if.then131, %if.then117, %if.then113, %if.then105
  %175 = load i32, ptr %i, align 4, !tbaa !9
  %inc265 = add nsw i32 %175, 1
  store i32 %inc265, ptr %i, align 4, !tbaa !9
  br label %for.cond98, !llvm.loop !55

for.end266:                                       ; preds = %for.cond98
  br label %if.end441

if.else:                                          ; preds = %if.end62
  %176 = load i32, ptr %imin, align 4, !tbaa !9
  store i32 %176, ptr %i, align 4, !tbaa !9
  br label %for.cond267

for.cond267:                                      ; preds = %for.inc438, %if.else
  %177 = load i32, ptr %i, align 4, !tbaa !9
  %178 = load i32, ptr %imax, align 4, !tbaa !9
  %cmp268 = icmp slt i32 %177, %178
  br i1 %cmp268, label %for.body270, label %for.end440

for.body270:                                      ; preds = %for.cond267
  %179 = load i32, ptr %rigid.addr, align 4, !tbaa !9
  %tobool271 = icmp ne i32 %179, 0
  br i1 %tobool271, label %if.end278, label %land.lhs.true272

land.lhs.true272:                                 ; preds = %for.body270
  %180 = load ptr, ptr %xorb, align 8, !tbaa !5
  %181 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom273 = sext i32 %181 to i64
  %arrayidx274 = getelementptr inbounds i32, ptr %180, i64 %idxprom273
  %182 = load i32, ptr %arrayidx274, align 4, !tbaa !9
  %183 = load i32, ptr %i, align 4, !tbaa !9
  %cmp275 = icmp ne i32 %182, %183
  br i1 %cmp275, label %if.then277, label %if.end278

if.then277:                                       ; preds = %land.lhs.true272
  br label %for.inc438

if.end278:                                        ; preds = %land.lhs.true272, %for.body270
  %184 = load ptr, ptr @xset, align 8, !tbaa !5
  %185 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom279 = sext i32 %185 to i64
  %arrayidx280 = getelementptr inbounds i32, ptr %184, i64 %idxprom279
  %186 = load i32, ptr %arrayidx280, align 4, !tbaa !9
  store i32 %186, ptr %x, align 4, !tbaa !9
  %187 = load ptr, ptr @xcard, align 8, !tbaa !5
  %188 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom281 = sext i32 %188 to i64
  %arrayidx282 = getelementptr inbounds i32, ptr %187, i64 %idxprom281
  %189 = load i32, ptr %arrayidx282, align 4, !tbaa !9
  store i32 %189, ptr %xc, align 4, !tbaa !9
  %190 = load i32, ptr %x, align 4, !tbaa !9
  %191 = load i32, ptr %d, align 4, !tbaa !9
  %and283 = and i32 %190, %191
  %cmp284 = icmp ne i32 %and283, 0
  br i1 %cmp284, label %if.then286, label %if.end287

if.then286:                                       ; preds = %if.end278
  br label %for.inc438

if.end287:                                        ; preds = %if.end278
  %192 = load i32, ptr %need, align 4, !tbaa !9
  %193 = load i32, ptr %x, align 4, !tbaa !9
  %not288 = xor i32 %193, -1
  %and289 = and i32 %192, %not288
  %cmp290 = icmp ne i32 %and289, 0
  br i1 %cmp290, label %if.then292, label %if.end293

if.then292:                                       ; preds = %if.end287
  br label %for.inc438

if.end293:                                        ; preds = %if.end287
  %194 = load i32, ptr %nx, align 4, !tbaa !9
  %195 = load i32, ptr @nprune, align 4, !tbaa !9
  %cmp294 = icmp eq i32 %194, %195
  br i1 %cmp294, label %if.then296, label %if.end306

if.then296:                                       ; preds = %if.end293
  %196 = load i32, ptr @curres, align 4, !tbaa !9
  %cmp297 = icmp eq i32 %196, 0
  br i1 %cmp297, label %if.then299, label %if.end300

if.then299:                                       ; preds = %if.then296
  %197 = load i32, ptr @mod, align 4, !tbaa !9
  store i32 %197, ptr @curres, align 4, !tbaa !9
  br label %if.end300

if.end300:                                        ; preds = %if.then299, %if.then296
  %198 = load i32, ptr @curres, align 4, !tbaa !9
  %dec301 = add nsw i32 %198, -1
  store i32 %dec301, ptr @curres, align 4, !tbaa !9
  %cmp302 = icmp ne i32 %dec301, 0
  br i1 %cmp302, label %if.then304, label %if.end305

if.then304:                                       ; preds = %if.end300
  br label %for.inc438

if.end305:                                        ; preds = %if.end300
  br label %if.end306

if.end306:                                        ; preds = %if.end305, %if.end293
  %199 = load i32, ptr @simple, align 4, !tbaa !9
  %tobool307 = icmp ne i32 %199, 0
  br i1 %tobool307, label %if.then308, label %if.end325

if.then308:                                       ; preds = %if.end306
  %200 = load i32, ptr %n2.addr, align 4, !tbaa !9
  store i32 %200, ptr %j, align 4, !tbaa !9
  br label %for.cond309

for.cond309:                                      ; preds = %if.end319, %if.then308
  %201 = load i32, ptr %j, align 4, !tbaa !9
  %dec310 = add nsw i32 %201, -1
  store i32 %dec310, ptr %j, align 4, !tbaa !9
  %cmp311 = icmp sge i32 %dec310, 0
  br i1 %cmp311, label %for.body313, label %for.end320

for.body313:                                      ; preds = %for.cond309
  %202 = load i32, ptr %x, align 4, !tbaa !9
  %203 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom314 = sext i32 %203 to i64
  %arrayidx315 = getelementptr inbounds [32 x i32], ptr @xval, i64 0, i64 %idxprom314
  %204 = load i32, ptr %arrayidx315, align 4, !tbaa !9
  %cmp316 = icmp eq i32 %202, %204
  br i1 %cmp316, label %if.then318, label %if.end319

if.then318:                                       ; preds = %for.body313
  br label %for.end320

if.end319:                                        ; preds = %for.body313
  br label %for.cond309, !llvm.loop !56

for.end320:                                       ; preds = %if.then318, %for.cond309
  %205 = load i32, ptr %j, align 4, !tbaa !9
  %cmp321 = icmp sge i32 %205, 0
  br i1 %cmp321, label %if.then323, label %if.end324

if.then323:                                       ; preds = %for.end320
  br label %for.inc438

if.end324:                                        ; preds = %for.end320
  br label %if.end325

if.end325:                                        ; preds = %if.end324, %if.end306
  %206 = load i32, ptr @maxcommon, align 4, !tbaa !9
  %cmp326 = icmp sge i32 %206, 0
  br i1 %cmp326, label %if.then328, label %if.end359

if.then328:                                       ; preds = %if.end325
  %207 = load i32, ptr %n2.addr, align 4, !tbaa !9
  store i32 %207, ptr %j, align 4, !tbaa !9
  br label %for.cond329

for.cond329:                                      ; preds = %if.end353, %if.then328
  %208 = load i32, ptr %j, align 4, !tbaa !9
  %dec330 = add nsw i32 %208, -1
  store i32 %dec330, ptr %j, align 4, !tbaa !9
  %cmp331 = icmp sge i32 %dec330, 0
  br i1 %cmp331, label %for.body333, label %for.end354

for.body333:                                      ; preds = %for.cond329
  %209 = load i32, ptr %x, align 4, !tbaa !9
  %210 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom334 = sext i32 %210 to i64
  %arrayidx335 = getelementptr inbounds [32 x i32], ptr @xval, i64 0, i64 %idxprom334
  %211 = load i32, ptr %arrayidx335, align 4, !tbaa !9
  %and336 = and i32 %209, %211
  store i32 %and336, ptr %y, align 4, !tbaa !9
  %212 = load i32, ptr %y, align 4, !tbaa !9
  %shr337 = ashr i32 %212, 8
  %and338 = and i32 %shr337, 255
  %idxprom339 = sext i32 %and338 to i64
  %arrayidx340 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom339
  %213 = load i32, ptr %arrayidx340, align 4, !tbaa !9
  %214 = load i32, ptr %y, align 4, !tbaa !9
  %shr341 = ashr i32 %214, 16
  %and342 = and i32 %shr341, 255
  %idxprom343 = sext i32 %and342 to i64
  %arrayidx344 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom343
  %215 = load i32, ptr %arrayidx344, align 4, !tbaa !9
  %add345 = add nsw i32 %213, %215
  %216 = load i32, ptr %y, align 4, !tbaa !9
  %and346 = and i32 %216, 255
  %idxprom347 = sext i32 %and346 to i64
  %arrayidx348 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom347
  %217 = load i32, ptr %arrayidx348, align 4, !tbaa !9
  %add349 = add nsw i32 %add345, %217
  %218 = load i32, ptr @maxcommon, align 4, !tbaa !9
  %cmp350 = icmp sgt i32 %add349, %218
  br i1 %cmp350, label %if.then352, label %if.end353

if.then352:                                       ; preds = %for.body333
  br label %for.end354

if.end353:                                        ; preds = %for.body333
  br label %for.cond329, !llvm.loop !57

for.end354:                                       ; preds = %if.then352, %for.cond329
  %219 = load i32, ptr %j, align 4, !tbaa !9
  %cmp355 = icmp sge i32 %219, 0
  br i1 %cmp355, label %if.then357, label %if.end358

if.then357:                                       ; preds = %for.end354
  br label %for.inc438

if.end358:                                        ; preds = %for.end354
  br label %if.end359

if.end359:                                        ; preds = %if.end358, %if.end325
  %220 = load i32, ptr @antichain, align 4, !tbaa !9
  %tobool360 = icmp ne i32 %220, 0
  br i1 %tobool360, label %if.then361, label %if.end381

if.then361:                                       ; preds = %if.end359
  store i32 0, ptr %j, align 4, !tbaa !9
  br label %for.cond362

for.cond362:                                      ; preds = %for.inc374, %if.then361
  %221 = load i32, ptr %j, align 4, !tbaa !9
  %222 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %cmp363 = icmp slt i32 %221, %222
  br i1 %cmp363, label %for.body365, label %for.end376

for.body365:                                      ; preds = %for.cond362
  %223 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom366 = sext i32 %223 to i64
  %arrayidx367 = getelementptr inbounds [32 x i32], ptr @xval, i64 0, i64 %idxprom366
  %224 = load i32, ptr %arrayidx367, align 4, !tbaa !9
  %225 = load i32, ptr %x, align 4, !tbaa !9
  %not368 = xor i32 %225, -1
  %and369 = and i32 %224, %not368
  %cmp370 = icmp eq i32 %and369, 0
  br i1 %cmp370, label %if.then372, label %if.end373

if.then372:                                       ; preds = %for.body365
  br label %for.end376

if.end373:                                        ; preds = %for.body365
  br label %for.inc374

for.inc374:                                       ; preds = %if.end373
  %226 = load i32, ptr %j, align 4, !tbaa !9
  %inc375 = add nsw i32 %226, 1
  store i32 %inc375, ptr %j, align 4, !tbaa !9
  br label %for.cond362, !llvm.loop !58

for.end376:                                       ; preds = %if.then372, %for.cond362
  %227 = load i32, ptr %j, align 4, !tbaa !9
  %228 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %cmp377 = icmp slt i32 %227, %228
  br i1 %cmp377, label %if.then379, label %if.end380

if.then379:                                       ; preds = %for.end376
  br label %for.inc438

if.end380:                                        ; preds = %for.end376
  br label %if.end381

if.end381:                                        ; preds = %if.end380, %if.end359
  %229 = load i32, ptr %x, align 4, !tbaa !9
  %230 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %idxprom382 = sext i32 %230 to i64
  %arrayidx383 = getelementptr inbounds [32 x i32], ptr @xval, i64 0, i64 %idxprom382
  store i32 %229, ptr %arrayidx383, align 4, !tbaa !9
  store i32 0, ptr %j, align 4, !tbaa !9
  br label %for.cond384

for.cond384:                                      ; preds = %for.inc392, %if.end381
  %231 = load i32, ptr %j, align 4, !tbaa !9
  %232 = load i32, ptr %n, align 4, !tbaa !9
  %cmp385 = icmp slt i32 %231, %232
  br i1 %cmp385, label %for.body387, label %for.end394

for.body387:                                      ; preds = %for.cond384
  %233 = load ptr, ptr %deg.addr, align 8, !tbaa !5
  %234 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom388 = sext i32 %234 to i64
  %arrayidx389 = getelementptr inbounds i32, ptr %233, i64 %idxprom388
  %235 = load i32, ptr %arrayidx389, align 4, !tbaa !9
  %236 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom390 = sext i32 %236 to i64
  %arrayidx391 = getelementptr inbounds [32 x i32], ptr %degx, i64 0, i64 %idxprom390
  store i32 %235, ptr %arrayidx391, align 4, !tbaa !9
  br label %for.inc392

for.inc392:                                       ; preds = %for.body387
  %237 = load i32, ptr %j, align 4, !tbaa !9
  %inc393 = add nsw i32 %237, 1
  store i32 %inc393, ptr %j, align 4, !tbaa !9
  br label %for.cond384, !llvm.loop !59

for.end394:                                       ; preds = %for.cond384
  %238 = load i32, ptr %nx, align 4, !tbaa !9
  %idxprom395 = sext i32 %238 to i64
  %arrayidx396 = getelementptr inbounds [32 x %struct.leveldata], ptr @data, i64 0, i64 %idxprom395
  %ne397 = getelementptr inbounds %struct.leveldata, ptr %arrayidx396, i32 0, i32 0
  %239 = load i32, ptr %ne397, align 16, !tbaa !46
  %240 = load i32, ptr %ne.addr, align 4, !tbaa !9
  %241 = load i32, ptr %xc, align 4, !tbaa !9
  %add398 = add nsw i32 %240, %241
  %cmp399 = icmp ne i32 %239, %add398
  br i1 %cmp399, label %if.then407, label %lor.lhs.false401

lor.lhs.false401:                                 ; preds = %for.end394
  %242 = load i32, ptr %nx, align 4, !tbaa !9
  %idxprom402 = sext i32 %242 to i64
  %arrayidx403 = getelementptr inbounds [32 x %struct.leveldata], ptr @data, i64 0, i64 %idxprom402
  %dmax404 = getelementptr inbounds %struct.leveldata, ptr %arrayidx403, i32 0, i32 1
  %243 = load i32, ptr %dmax404, align 4, !tbaa !45
  %244 = load i32, ptr %xc, align 4, !tbaa !9
  %cmp405 = icmp ne i32 %243, %244
  br i1 %cmp405, label %if.then407, label %if.end409

if.then407:                                       ; preds = %lor.lhs.false401, %for.end394
  %245 = load i32, ptr %nx, align 4, !tbaa !9
  %246 = load i32, ptr %ne.addr, align 4, !tbaa !9
  %247 = load i32, ptr %xc, align 4, !tbaa !9
  %add408 = add nsw i32 %246, %247
  %248 = load i32, ptr %xc, align 4, !tbaa !9
  call void @xbnds(i32 noundef %245, i32 noundef %add408, i32 noundef %248)
  br label %if.end409

if.end409:                                        ; preds = %if.then407, %lor.lhs.false401
  %249 = load i32, ptr %nx, align 4, !tbaa !9
  %idxprom410 = sext i32 %249 to i64
  %arrayidx411 = getelementptr inbounds [32 x %struct.leveldata], ptr @data, i64 0, i64 %idxprom410
  %xlb412 = getelementptr inbounds %struct.leveldata, ptr %arrayidx411, i32 0, i32 2
  %250 = load i32, ptr %xlb412, align 8, !tbaa !29
  store i32 %250, ptr %xlbx, align 4, !tbaa !9
  %251 = load i32, ptr %nx, align 4, !tbaa !9
  %idxprom413 = sext i32 %251 to i64
  %arrayidx414 = getelementptr inbounds [32 x %struct.leveldata], ptr @data, i64 0, i64 %idxprom413
  %xub415 = getelementptr inbounds %struct.leveldata, ptr %arrayidx414, i32 0, i32 3
  %252 = load i32, ptr %xub415, align 4, !tbaa !31
  store i32 %252, ptr %xubx, align 4, !tbaa !9
  %253 = load i32, ptr %xlbx, align 4, !tbaa !9
  %254 = load i32, ptr %xubx, align 4, !tbaa !9
  %cmp416 = icmp sgt i32 %253, %254
  br i1 %cmp416, label %if.then418, label %if.end419

if.then418:                                       ; preds = %if.end409
  br label %for.inc438

if.end419:                                        ; preds = %if.end409
  %255 = load i32, ptr %xlbx, align 4, !tbaa !9
  %idxprom420 = sext i32 %255 to i64
  %arrayidx421 = getelementptr inbounds [33 x i32], ptr @xstart, i64 0, i64 %idxprom420
  %256 = load i32, ptr %arrayidx421, align 4, !tbaa !9
  %257 = load i32, ptr %nx, align 4, !tbaa !9
  %idxprom422 = sext i32 %257 to i64
  %arrayidx423 = getelementptr inbounds [32 x %struct.leveldata], ptr @data, i64 0, i64 %idxprom422
  %lo = getelementptr inbounds %struct.leveldata, ptr %arrayidx423, i32 0, i32 4
  store i32 %256, ptr %lo, align 16, !tbaa !60
  %258 = load i32, ptr %xubx, align 4, !tbaa !9
  %add424 = add nsw i32 %258, 1
  %idxprom425 = sext i32 %add424 to i64
  %arrayidx426 = getelementptr inbounds [33 x i32], ptr @xstart, i64 0, i64 %idxprom425
  %259 = load i32, ptr %arrayidx426, align 4, !tbaa !9
  %260 = load i32, ptr %nx, align 4, !tbaa !9
  %idxprom427 = sext i32 %260 to i64
  %arrayidx428 = getelementptr inbounds [32 x %struct.leveldata], ptr @data, i64 0, i64 %idxprom427
  %hi = getelementptr inbounds %struct.leveldata, ptr %arrayidx428, i32 0, i32 5
  store i32 %259, ptr %hi, align 4, !tbaa !61
  %261 = load ptr, ptr %g.addr, align 8, !tbaa !5
  %262 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %263 = load i32, ptr %x, align 4, !tbaa !9
  %arraydecay429 = getelementptr inbounds [32 x i32], ptr %gx, i64 0, i64 0
  %arraydecay430 = getelementptr inbounds [32 x i32], ptr %degx, i64 0, i64 0
  %call431 = call i32 @accept1(ptr noundef %261, i32 noundef %262, i32 noundef %263, ptr noundef %arraydecay429, ptr noundef %arraydecay430, ptr noundef %rigidx)
  %tobool432 = icmp ne i32 %call431, 0
  br i1 %tobool432, label %if.then433, label %if.end437

if.then433:                                       ; preds = %if.end419
  %arraydecay434 = getelementptr inbounds [32 x i32], ptr %gx, i64 0, i64 0
  %264 = load i32, ptr %nx, align 4, !tbaa !9
  %arraydecay435 = getelementptr inbounds [32 x i32], ptr %degx, i64 0, i64 0
  %265 = load i32, ptr %ne.addr, align 4, !tbaa !9
  %266 = load i32, ptr %xc, align 4, !tbaa !9
  %add436 = add nsw i32 %265, %266
  %267 = load i32, ptr %rigidx, align 4, !tbaa !9
  %268 = load i32, ptr %xlbx, align 4, !tbaa !9
  %269 = load i32, ptr %xubx, align 4, !tbaa !9
  call void @genextend(ptr noundef %arraydecay434, i32 noundef %264, ptr noundef %arraydecay435, i32 noundef %add436, i32 noundef %267, i32 noundef %268, i32 noundef %269)
  br label %if.end437

if.end437:                                        ; preds = %if.then433, %if.end419
  br label %for.inc438

for.inc438:                                       ; preds = %if.end437, %if.then418, %if.then379, %if.then357, %if.then323, %if.then304, %if.then292, %if.then286, %if.then277
  %270 = load i32, ptr %i, align 4, !tbaa !9
  %inc439 = add nsw i32 %270, 1
  store i32 %inc439, ptr %i, align 4, !tbaa !9
  br label %for.cond267, !llvm.loop !62

for.end440:                                       ; preds = %for.cond267
  br label %if.end441

if.end441:                                        ; preds = %for.end440, %for.end266
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end441, %if.then61
  call void @llvm.lifetime.end.p0(i64 128, ptr %frag) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nfrag) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr %ft) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %deg1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %hideg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nfeet) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %need) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %dneed) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %rigidx) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr %degx) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr %gx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %xubx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %xlbx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %dmax) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %imax) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %imin) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %xc) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %xorb) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

; Function Attrs: nounwind uwtable
define internal void @fragments(ptr noundef %x, i32 noundef %nx, ptr noundef %frag, ptr noundef %nfrag) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %nx.addr = alloca i32, align 4
  %frag.addr = alloca ptr, align 8
  %nfrag.addr = alloca ptr, align 8
  %allx = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %v = alloca i32, align 4
  %vbit = alloca i32, align 4
  %nw = alloca i32, align 4
  %w = alloca [32 x i32], align 16
  %done = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  store i32 %nx, ptr %nx.addr, align 4, !tbaa !9
  store ptr %frag, ptr %frag.addr, align 8, !tbaa !5
  store ptr %nfrag, ptr %nfrag.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %allx) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %vbit) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %nw) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr %w) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %done) #7
  store i32 0, ptr %allx, align 4, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !9
  %1 = load i32, ptr %nx.addr, align 4, !tbaa !9
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %3 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %5 = load i32, ptr %allx, align 4, !tbaa !9
  %or = or i32 %5, %4
  store i32 %or, ptr %allx, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !63

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %nfrag.addr, align 8, !tbaa !5
  store i32 0, ptr %7, align 4, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %if.end80, %for.end
  %8 = load i32, ptr %allx, align 4, !tbaa !9
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %while.body, label %while.end81

while.body:                                       ; preds = %while.cond
  %9 = load i32, ptr %allx, align 4, !tbaa !9
  %and = and i32 %9, 255
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %10 = load i32, ptr %allx, align 4, !tbaa !9
  %and2 = and i32 %10, 255
  %idxprom3 = sext i32 %and2 to i64
  %arrayidx4 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom3
  %11 = load i32, ptr %arrayidx4, align 4, !tbaa !9
  %sub = sub nsw i32 7, %11
  br label %cond.end18

cond.false:                                       ; preds = %while.body
  %12 = load i32, ptr %allx, align 4, !tbaa !9
  %and5 = and i32 %12, 65280
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %cond.true7, label %cond.false12

cond.true7:                                       ; preds = %cond.false
  %13 = load i32, ptr %allx, align 4, !tbaa !9
  %shr = ashr i32 %13, 8
  %and8 = and i32 %shr, 255
  %idxprom9 = sext i32 %and8 to i64
  %arrayidx10 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom9
  %14 = load i32, ptr %arrayidx10, align 4, !tbaa !9
  %sub11 = sub nsw i32 15, %14
  br label %cond.end

cond.false12:                                     ; preds = %cond.false
  %15 = load i32, ptr %allx, align 4, !tbaa !9
  %shr13 = ashr i32 %15, 16
  %and14 = and i32 %shr13, 255
  %idxprom15 = sext i32 %and14 to i64
  %arrayidx16 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom15
  %16 = load i32, ptr %arrayidx16, align 4, !tbaa !9
  %sub17 = sub nsw i32 23, %16
  br label %cond.end

cond.end:                                         ; preds = %cond.false12, %cond.true7
  %cond = phi i32 [ %sub11, %cond.true7 ], [ %sub17, %cond.false12 ]
  br label %cond.end18

cond.end18:                                       ; preds = %cond.end, %cond.true
  %cond19 = phi i32 [ %sub, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond19, ptr %v, align 4, !tbaa !9
  %17 = load i32, ptr %v, align 4, !tbaa !9
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds [24 x i32], ptr @xbit, i64 0, i64 %idxprom20
  %18 = load i32, ptr %arrayidx21, align 4, !tbaa !9
  store i32 %18, ptr %vbit, align 4, !tbaa !9
  %19 = load i32, ptr %vbit, align 4, !tbaa !9
  %not = xor i32 %19, -1
  %20 = load i32, ptr %allx, align 4, !tbaa !9
  %and22 = and i32 %20, %not
  store i32 %and22, ptr %allx, align 4, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc32, %cond.end18
  %21 = load i32, ptr %i, align 4, !tbaa !9
  %22 = load i32, ptr %nx.addr, align 4, !tbaa !9
  %cmp24 = icmp slt i32 %21, %22
  br i1 %cmp24, label %for.body25, label %for.end34

for.body25:                                       ; preds = %for.cond23
  %23 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %24 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom26 = sext i32 %24 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %23, i64 %idxprom26
  %25 = load i32, ptr %arrayidx27, align 4, !tbaa !9
  %26 = load i32, ptr %vbit, align 4, !tbaa !9
  %not28 = xor i32 %26, -1
  %and29 = and i32 %25, %not28
  %27 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom30 = sext i32 %27 to i64
  %arrayidx31 = getelementptr inbounds [32 x i32], ptr %w, i64 0, i64 %idxprom30
  store i32 %and29, ptr %arrayidx31, align 4, !tbaa !9
  br label %for.inc32

for.inc32:                                        ; preds = %for.body25
  %28 = load i32, ptr %i, align 4, !tbaa !9
  %inc33 = add nsw i32 %28, 1
  store i32 %inc33, ptr %i, align 4, !tbaa !9
  br label %for.cond23, !llvm.loop !64

for.end34:                                        ; preds = %for.cond23
  %29 = load i32, ptr %nx.addr, align 4, !tbaa !9
  store i32 %29, ptr %nw, align 4, !tbaa !9
  store i32 0, ptr %done, align 4, !tbaa !9
  br label %while.cond35

while.cond35:                                     ; preds = %for.end66, %for.end34
  %30 = load i32, ptr %done, align 4, !tbaa !9
  %tobool36 = icmp ne i32 %30, 0
  br i1 %tobool36, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond35
  %31 = load i32, ptr %nw, align 4, !tbaa !9
  %cmp37 = icmp sgt i32 %31, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond35
  %32 = phi i1 [ false, %while.cond35 ], [ %cmp37, %land.rhs ]
  br i1 %32, label %while.body38, label %while.end

while.body38:                                     ; preds = %land.end
  store i32 1, ptr %done, align 4, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc64, %while.body38
  %33 = load i32, ptr %i, align 4, !tbaa !9
  %34 = load i32, ptr %nw, align 4, !tbaa !9
  %sub40 = sub nsw i32 %34, 1
  %cmp41 = icmp slt i32 %33, %sub40
  br i1 %cmp41, label %for.body42, label %for.end66

for.body42:                                       ; preds = %for.cond39
  %35 = load i32, ptr %i, align 4, !tbaa !9
  %add = add nsw i32 %35, 1
  store i32 %add, ptr %j, align 4, !tbaa !9
  br label %for.cond43

for.cond43:                                       ; preds = %if.end, %for.body42
  %36 = load i32, ptr %j, align 4, !tbaa !9
  %37 = load i32, ptr %nw, align 4, !tbaa !9
  %cmp44 = icmp slt i32 %36, %37
  br i1 %cmp44, label %for.body45, label %for.end63

for.body45:                                       ; preds = %for.cond43
  %38 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom46 = sext i32 %38 to i64
  %arrayidx47 = getelementptr inbounds [32 x i32], ptr %w, i64 0, i64 %idxprom46
  %39 = load i32, ptr %arrayidx47, align 4, !tbaa !9
  %40 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom48 = sext i32 %40 to i64
  %arrayidx49 = getelementptr inbounds [32 x i32], ptr %w, i64 0, i64 %idxprom48
  %41 = load i32, ptr %arrayidx49, align 4, !tbaa !9
  %and50 = and i32 %39, %41
  %cmp51 = icmp ne i32 %and50, 0
  br i1 %cmp51, label %if.then, label %if.else

if.then:                                          ; preds = %for.body45
  %42 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom52 = sext i32 %42 to i64
  %arrayidx53 = getelementptr inbounds [32 x i32], ptr %w, i64 0, i64 %idxprom52
  %43 = load i32, ptr %arrayidx53, align 4, !tbaa !9
  %44 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom54 = sext i32 %44 to i64
  %arrayidx55 = getelementptr inbounds [32 x i32], ptr %w, i64 0, i64 %idxprom54
  %45 = load i32, ptr %arrayidx55, align 4, !tbaa !9
  %or56 = or i32 %45, %43
  store i32 %or56, ptr %arrayidx55, align 4, !tbaa !9
  %46 = load i32, ptr %nw, align 4, !tbaa !9
  %sub57 = sub nsw i32 %46, 1
  %idxprom58 = sext i32 %sub57 to i64
  %arrayidx59 = getelementptr inbounds [32 x i32], ptr %w, i64 0, i64 %idxprom58
  %47 = load i32, ptr %arrayidx59, align 4, !tbaa !9
  %48 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom60 = sext i32 %48 to i64
  %arrayidx61 = getelementptr inbounds [32 x i32], ptr %w, i64 0, i64 %idxprom60
  store i32 %47, ptr %arrayidx61, align 4, !tbaa !9
  %49 = load i32, ptr %nw, align 4, !tbaa !9
  %dec = add nsw i32 %49, -1
  store i32 %dec, ptr %nw, align 4, !tbaa !9
  store i32 0, ptr %done, align 4, !tbaa !9
  br label %if.end

if.else:                                          ; preds = %for.body45
  %50 = load i32, ptr %j, align 4, !tbaa !9
  %inc62 = add nsw i32 %50, 1
  store i32 %inc62, ptr %j, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.cond43, !llvm.loop !65

for.end63:                                        ; preds = %for.cond43
  br label %for.inc64

for.inc64:                                        ; preds = %for.end63
  %51 = load i32, ptr %i, align 4, !tbaa !9
  %inc65 = add nsw i32 %51, 1
  store i32 %inc65, ptr %i, align 4, !tbaa !9
  br label %for.cond39, !llvm.loop !66

for.end66:                                        ; preds = %for.cond39
  br label %while.cond35, !llvm.loop !67

while.end:                                        ; preds = %land.end
  %52 = load i32, ptr %nw, align 4, !tbaa !9
  %cmp67 = icmp sgt i32 %52, 1
  br i1 %cmp67, label %if.then68, label %if.end80

if.then68:                                        ; preds = %while.end
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc77, %if.then68
  %53 = load i32, ptr %i, align 4, !tbaa !9
  %54 = load i32, ptr %nw, align 4, !tbaa !9
  %cmp70 = icmp slt i32 %53, %54
  br i1 %cmp70, label %for.body71, label %for.end79

for.body71:                                       ; preds = %for.cond69
  %55 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom72 = sext i32 %55 to i64
  %arrayidx73 = getelementptr inbounds [32 x i32], ptr %w, i64 0, i64 %idxprom72
  %56 = load i32, ptr %arrayidx73, align 4, !tbaa !9
  %57 = load ptr, ptr %frag.addr, align 8, !tbaa !5
  %58 = load ptr, ptr %nfrag.addr, align 8, !tbaa !5
  %59 = load i32, ptr %58, align 4, !tbaa !9
  %inc74 = add nsw i32 %59, 1
  store i32 %inc74, ptr %58, align 4, !tbaa !9
  %idxprom75 = sext i32 %59 to i64
  %arrayidx76 = getelementptr inbounds i32, ptr %57, i64 %idxprom75
  store i32 %56, ptr %arrayidx76, align 4, !tbaa !9
  br label %for.inc77

for.inc77:                                        ; preds = %for.body71
  %60 = load i32, ptr %i, align 4, !tbaa !9
  %inc78 = add nsw i32 %60, 1
  store i32 %inc78, ptr %i, align 4, !tbaa !9
  br label %for.cond69, !llvm.loop !68

for.end79:                                        ; preds = %for.cond69
  br label %if.end80

if.end80:                                         ; preds = %for.end79, %while.end
  br label %while.cond, !llvm.loop !69

while.end81:                                      ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %done) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr %w) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nw) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %vbit) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %allx) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @accept2(ptr noundef %g, i32 noundef %n2, i32 noundef %x, ptr noundef %gx, ptr noundef %deg, i32 noundef %nuniq) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca ptr, align 8
  %n2.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %gx.addr = alloca ptr, align 8
  %deg.addr = alloca ptr, align 8
  %nuniq.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %lab = alloca [32 x i32], align 16
  %ptn = alloca [32 x i32], align 16
  %orbits = alloca [32 x i32], align 16
  %degx = alloca [32 x i32], align 16
  %invar = alloca [32 x i32], align 16
  %vmax = alloca i32, align 4
  %gv = alloca i32, align 4
  %qn = alloca i32, align 4
  %qv = alloca i32, align 4
  %count = alloca [32 x i32], align 16
  %xw = alloca i32, align 4
  %nx = alloca i32, align 4
  %numcells = alloca i32, align 4
  %code = alloca i32, align 4
  %degn = alloca i32, align 4
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j = alloca i32, align 4
  %j0 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %active = alloca [1 x i32], align 4
  %stats = alloca %struct.statsblk, align 8
  %workspace = alloca [50 x i32], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8, !tbaa !5
  store i32 %n2, ptr %n2.addr, align 4, !tbaa !9
  store i32 %x, ptr %x.addr, align 4, !tbaa !9
  store ptr %gx, ptr %gx.addr, align 8, !tbaa !5
  store ptr %deg, ptr %deg.addr, align 8, !tbaa !5
  store i32 %nuniq, ptr %nuniq.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr %lab) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr %ptn) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr %orbits) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr %degx) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr %invar) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmax) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %gv) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %qn) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %qv) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr %count) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %xw) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %nx) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %numcells) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %code) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %degn) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %active) #7
  call void @llvm.lifetime.start.p0(i64 88, ptr %stats) #7
  call void @llvm.lifetime.start.p0(i64 200, ptr %workspace) #7
  %0 = load i32, ptr @n1, align 4, !tbaa !9
  %1 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %add = add nsw i32 %0, %1
  store i32 %add, ptr %n, align 4, !tbaa !9
  %2 = load i32, ptr %n, align 4, !tbaa !9
  %add1 = add nsw i32 %2, 1
  store i32 %add1, ptr %nx, align 4, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !tbaa !9
  %4 = load i32, ptr %n, align 4, !tbaa !9
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %g.addr, align 8, !tbaa !5
  %6 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %8 = load ptr, ptr %gx.addr, align 8, !tbaa !5
  %9 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %8, i64 %idxprom2
  store i32 %7, ptr %arrayidx3, align 4, !tbaa !9
  %10 = load ptr, ptr %deg.addr, align 8, !tbaa !5
  %11 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i64 %idxprom4
  %12 = load i32, ptr %arrayidx5, align 4, !tbaa !9
  %13 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds [32 x i32], ptr %degx, i64 0, i64 %idxprom6
  store i32 %12, ptr %arrayidx7, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !70

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %gx.addr, align 8, !tbaa !5
  %16 = load i32, ptr %n, align 4, !tbaa !9
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %15, i64 %idxprom8
  store i32 0, ptr %arrayidx9, align 4, !tbaa !9
  %17 = load i32, ptr %x.addr, align 4, !tbaa !9
  %shr = ashr i32 %17, 8
  %and = and i32 %shr, 255
  %idxprom10 = sext i32 %and to i64
  %arrayidx11 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom10
  %18 = load i32, ptr %arrayidx11, align 4, !tbaa !9
  %19 = load i32, ptr %x.addr, align 4, !tbaa !9
  %shr12 = ashr i32 %19, 16
  %and13 = and i32 %shr12, 255
  %idxprom14 = sext i32 %and13 to i64
  %arrayidx15 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom14
  %20 = load i32, ptr %arrayidx15, align 4, !tbaa !9
  %add16 = add nsw i32 %18, %20
  %21 = load i32, ptr %x.addr, align 4, !tbaa !9
  %and17 = and i32 %21, 255
  %idxprom18 = sext i32 %and17 to i64
  %arrayidx19 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom18
  %22 = load i32, ptr %arrayidx19, align 4, !tbaa !9
  %add20 = add nsw i32 %add16, %22
  store i32 %add20, ptr %degn, align 4, !tbaa !9
  %23 = load i32, ptr %n, align 4, !tbaa !9
  %idxprom21 = sext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds [32 x i32], ptr %degx, i64 0, i64 %idxprom21
  store i32 %add20, ptr %arrayidx22, align 4, !tbaa !9
  %24 = load i32, ptr %x.addr, align 4, !tbaa !9
  store i32 %24, ptr %xw, align 4, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %cond.end42, %for.end
  %25 = load i32, ptr %xw, align 4, !tbaa !9
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load i32, ptr %xw, align 4, !tbaa !9
  %and23 = and i32 %26, 255
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %27 = load i32, ptr %xw, align 4, !tbaa !9
  %and25 = and i32 %27, 255
  %idxprom26 = sext i32 %and25 to i64
  %arrayidx27 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom26
  %28 = load i32, ptr %arrayidx27, align 4, !tbaa !9
  %sub = sub nsw i32 7, %28
  br label %cond.end42

cond.false:                                       ; preds = %while.body
  %29 = load i32, ptr %xw, align 4, !tbaa !9
  %and28 = and i32 %29, 65280
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %cond.true30, label %cond.false36

cond.true30:                                      ; preds = %cond.false
  %30 = load i32, ptr %xw, align 4, !tbaa !9
  %shr31 = ashr i32 %30, 8
  %and32 = and i32 %shr31, 255
  %idxprom33 = sext i32 %and32 to i64
  %arrayidx34 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom33
  %31 = load i32, ptr %arrayidx34, align 4, !tbaa !9
  %sub35 = sub nsw i32 15, %31
  br label %cond.end

cond.false36:                                     ; preds = %cond.false
  %32 = load i32, ptr %xw, align 4, !tbaa !9
  %shr37 = ashr i32 %32, 16
  %and38 = and i32 %shr37, 255
  %idxprom39 = sext i32 %and38 to i64
  %arrayidx40 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom39
  %33 = load i32, ptr %arrayidx40, align 4, !tbaa !9
  %sub41 = sub nsw i32 23, %33
  br label %cond.end

cond.end:                                         ; preds = %cond.false36, %cond.true30
  %cond = phi i32 [ %sub35, %cond.true30 ], [ %sub41, %cond.false36 ]
  br label %cond.end42

cond.end42:                                       ; preds = %cond.end, %cond.true
  %cond43 = phi i32 [ %sub, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond43, ptr %i, align 4, !tbaa !9
  %34 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom44 = sext i32 %34 to i64
  %arrayidx45 = getelementptr inbounds [24 x i32], ptr @xbit, i64 0, i64 %idxprom44
  %35 = load i32, ptr %arrayidx45, align 4, !tbaa !9
  %not = xor i32 %35, -1
  %36 = load i32, ptr %xw, align 4, !tbaa !9
  %and46 = and i32 %36, %not
  store i32 %and46, ptr %xw, align 4, !tbaa !9
  %37 = load i32, ptr %n, align 4, !tbaa !9
  %idxprom47 = sext i32 %37 to i64
  %arrayidx48 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom47
  %38 = load i32, ptr %arrayidx48, align 4, !tbaa !9
  %39 = load ptr, ptr %gx.addr, align 8, !tbaa !5
  %40 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom49 = sext i32 %40 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %39, i64 %idxprom49
  %41 = load i32, ptr %arrayidx50, align 4, !tbaa !9
  %or = or i32 %41, %38
  store i32 %or, ptr %arrayidx50, align 4, !tbaa !9
  %42 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom51 = sext i32 %42 to i64
  %arrayidx52 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom51
  %43 = load i32, ptr %arrayidx52, align 4, !tbaa !9
  %44 = load ptr, ptr %gx.addr, align 8, !tbaa !5
  %45 = load i32, ptr %n, align 4, !tbaa !9
  %idxprom53 = sext i32 %45 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %44, i64 %idxprom53
  %46 = load i32, ptr %arrayidx54, align 4, !tbaa !9
  %or55 = or i32 %46, %43
  store i32 %or55, ptr %arrayidx54, align 4, !tbaa !9
  %47 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom56 = sext i32 %47 to i64
  %arrayidx57 = getelementptr inbounds [32 x i32], ptr %degx, i64 0, i64 %idxprom56
  %48 = load i32, ptr %arrayidx57, align 4, !tbaa !9
  %inc58 = add nsw i32 %48, 1
  store i32 %inc58, ptr %arrayidx57, align 4, !tbaa !9
  br label %while.cond, !llvm.loop !71

while.end:                                        ; preds = %while.cond
  %49 = load i32, ptr %nuniq.addr, align 4, !tbaa !9
  %tobool59 = icmp ne i32 %49, 0
  br i1 %tobool59, label %if.then, label %if.end63

if.then:                                          ; preds = %while.end
  %50 = load i32, ptr @canonise, align 4, !tbaa !9
  %tobool60 = icmp ne i32 %50, 0
  br i1 %tobool60, label %if.then61, label %if.end

if.then61:                                        ; preds = %if.then
  %51 = load ptr, ptr %gx.addr, align 8, !tbaa !5
  %52 = load i32, ptr @n1, align 4, !tbaa !9
  %53 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %add62 = add nsw i32 %53, 1
  call void @makecanon(ptr noundef %51, ptr noundef @gcan, i32 noundef %52, i32 noundef %add62)
  br label %if.end

if.end:                                           ; preds = %if.then61, %if.then
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end63:                                         ; preds = %while.end
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc71, %if.end63
  %54 = load i32, ptr %i, align 4, !tbaa !9
  %55 = load i32, ptr @n1, align 4, !tbaa !9
  %cmp65 = icmp slt i32 %54, %55
  br i1 %cmp65, label %for.body66, label %for.end73

for.body66:                                       ; preds = %for.cond64
  %56 = load i32, ptr %i, align 4, !tbaa !9
  %57 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom67 = sext i32 %57 to i64
  %arrayidx68 = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 %idxprom67
  store i32 %56, ptr %arrayidx68, align 4, !tbaa !9
  %58 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom69 = sext i32 %58 to i64
  %arrayidx70 = getelementptr inbounds [32 x i32], ptr %ptn, i64 0, i64 %idxprom69
  store i32 1, ptr %arrayidx70, align 4, !tbaa !9
  br label %for.inc71

for.inc71:                                        ; preds = %for.body66
  %59 = load i32, ptr %i, align 4, !tbaa !9
  %inc72 = add nsw i32 %59, 1
  store i32 %inc72, ptr %i, align 4, !tbaa !9
  br label %for.cond64, !llvm.loop !72

for.end73:                                        ; preds = %for.cond64
  %60 = load i32, ptr @n1, align 4, !tbaa !9
  %sub74 = sub nsw i32 %60, 1
  %idxprom75 = sext i32 %sub74 to i64
  %arrayidx76 = getelementptr inbounds [32 x i32], ptr %ptn, i64 0, i64 %idxprom75
  store i32 0, ptr %arrayidx76, align 4, !tbaa !9
  %61 = load i32, ptr @n1, align 4, !tbaa !9
  store i32 %61, ptr %i0, align 4, !tbaa !9
  %62 = load i32, ptr %n, align 4, !tbaa !9
  store i32 %62, ptr %i1, align 4, !tbaa !9
  %63 = load i32, ptr @n1, align 4, !tbaa !9
  store i32 %63, ptr %i, align 4, !tbaa !9
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc92, %for.end73
  %64 = load i32, ptr %i, align 4, !tbaa !9
  %65 = load i32, ptr %nx, align 4, !tbaa !9
  %cmp78 = icmp slt i32 %64, %65
  br i1 %cmp78, label %for.body79, label %for.end94

for.body79:                                       ; preds = %for.cond77
  %66 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom80 = sext i32 %66 to i64
  %arrayidx81 = getelementptr inbounds [32 x i32], ptr %degx, i64 0, i64 %idxprom80
  %67 = load i32, ptr %arrayidx81, align 4, !tbaa !9
  %68 = load i32, ptr %degn, align 4, !tbaa !9
  %cmp82 = icmp eq i32 %67, %68
  br i1 %cmp82, label %if.then83, label %if.else

if.then83:                                        ; preds = %for.body79
  %69 = load i32, ptr %i, align 4, !tbaa !9
  %70 = load i32, ptr %i1, align 4, !tbaa !9
  %dec = add nsw i32 %70, -1
  store i32 %dec, ptr %i1, align 4, !tbaa !9
  %idxprom84 = sext i32 %70 to i64
  %arrayidx85 = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 %idxprom84
  store i32 %69, ptr %arrayidx85, align 4, !tbaa !9
  br label %if.end89

if.else:                                          ; preds = %for.body79
  %71 = load i32, ptr %i, align 4, !tbaa !9
  %72 = load i32, ptr %i0, align 4, !tbaa !9
  %inc86 = add nsw i32 %72, 1
  store i32 %inc86, ptr %i0, align 4, !tbaa !9
  %idxprom87 = sext i32 %72 to i64
  %arrayidx88 = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 %idxprom87
  store i32 %71, ptr %arrayidx88, align 4, !tbaa !9
  br label %if.end89

if.end89:                                         ; preds = %if.else, %if.then83
  %73 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom90 = sext i32 %73 to i64
  %arrayidx91 = getelementptr inbounds [32 x i32], ptr %ptn, i64 0, i64 %idxprom90
  store i32 1, ptr %arrayidx91, align 4, !tbaa !9
  br label %for.inc92

for.inc92:                                        ; preds = %if.end89
  %74 = load i32, ptr %i, align 4, !tbaa !9
  %inc93 = add nsw i32 %74, 1
  store i32 %inc93, ptr %i, align 4, !tbaa !9
  br label %for.cond77, !llvm.loop !73

for.end94:                                        ; preds = %for.cond77
  %75 = load i32, ptr %n, align 4, !tbaa !9
  %idxprom95 = sext i32 %75 to i64
  %arrayidx96 = getelementptr inbounds [32 x i32], ptr %ptn, i64 0, i64 %idxprom95
  store i32 0, ptr %arrayidx96, align 4, !tbaa !9
  %76 = load i32, ptr %i0, align 4, !tbaa !9
  %77 = load i32, ptr @n1, align 4, !tbaa !9
  %cmp97 = icmp eq i32 %76, %77
  br i1 %cmp97, label %if.then98, label %if.else146

if.then98:                                        ; preds = %for.end94
  store i32 2, ptr %numcells, align 4, !tbaa !9
  %78 = load i32, ptr @bit, align 16, !tbaa !9
  %79 = load i32, ptr @n1, align 4, !tbaa !9
  %idxprom99 = sext i32 %79 to i64
  %arrayidx100 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom99
  %80 = load i32, ptr %arrayidx100, align 4, !tbaa !9
  %or101 = or i32 %78, %80
  %arrayidx102 = getelementptr inbounds [1 x i32], ptr %active, i64 0, i64 0
  store i32 %or101, ptr %arrayidx102, align 4, !tbaa !9
  %81 = load ptr, ptr %gx.addr, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [32 x i32], ptr %invar, i64 0, i64 0
  %82 = load i32, ptr @n1, align 4, !tbaa !9
  %83 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %add103 = add nsw i32 %83, 1
  %call = call i32 @distinvar(ptr noundef %81, ptr noundef %arraydecay, i32 noundef %82, i32 noundef %add103)
  %tobool104 = icmp ne i32 %call, 0
  br i1 %tobool104, label %if.end106, label %if.then105

if.then105:                                       ; preds = %if.then98
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end106:                                        ; preds = %if.then98
  %84 = load i32, ptr %n, align 4, !tbaa !9
  %idxprom107 = sext i32 %84 to i64
  %arrayidx108 = getelementptr inbounds [32 x i32], ptr %invar, i64 0, i64 %idxprom107
  %85 = load i32, ptr %arrayidx108, align 4, !tbaa !9
  store i32 %85, ptr %qn, align 4, !tbaa !9
  %86 = load i32, ptr @n1, align 4, !tbaa !9
  store i32 %86, ptr %j0, align 4, !tbaa !9
  %87 = load i32, ptr %n, align 4, !tbaa !9
  store i32 %87, ptr %j1, align 4, !tbaa !9
  br label %while.cond109

while.cond109:                                    ; preds = %if.end127, %if.end106
  %88 = load i32, ptr %j0, align 4, !tbaa !9
  %89 = load i32, ptr %j1, align 4, !tbaa !9
  %cmp110 = icmp sle i32 %88, %89
  br i1 %cmp110, label %while.body111, label %while.end128

while.body111:                                    ; preds = %while.cond109
  %90 = load i32, ptr %j0, align 4, !tbaa !9
  %idxprom112 = sext i32 %90 to i64
  %arrayidx113 = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 %idxprom112
  %91 = load i32, ptr %arrayidx113, align 4, !tbaa !9
  store i32 %91, ptr %j, align 4, !tbaa !9
  %92 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom114 = sext i32 %92 to i64
  %arrayidx115 = getelementptr inbounds [32 x i32], ptr %invar, i64 0, i64 %idxprom114
  %93 = load i32, ptr %arrayidx115, align 4, !tbaa !9
  store i32 %93, ptr %qv, align 4, !tbaa !9
  %94 = load i32, ptr %qv, align 4, !tbaa !9
  %95 = load i32, ptr %qn, align 4, !tbaa !9
  %cmp116 = icmp slt i32 %94, %95
  br i1 %cmp116, label %if.then117, label %if.else119

if.then117:                                       ; preds = %while.body111
  %96 = load i32, ptr %j0, align 4, !tbaa !9
  %inc118 = add nsw i32 %96, 1
  store i32 %inc118, ptr %j0, align 4, !tbaa !9
  br label %if.end127

if.else119:                                       ; preds = %while.body111
  %97 = load i32, ptr %j1, align 4, !tbaa !9
  %idxprom120 = sext i32 %97 to i64
  %arrayidx121 = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 %idxprom120
  %98 = load i32, ptr %arrayidx121, align 4, !tbaa !9
  %99 = load i32, ptr %j0, align 4, !tbaa !9
  %idxprom122 = sext i32 %99 to i64
  %arrayidx123 = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 %idxprom122
  store i32 %98, ptr %arrayidx123, align 4, !tbaa !9
  %100 = load i32, ptr %j, align 4, !tbaa !9
  %101 = load i32, ptr %j1, align 4, !tbaa !9
  %idxprom124 = sext i32 %101 to i64
  %arrayidx125 = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 %idxprom124
  store i32 %100, ptr %arrayidx125, align 4, !tbaa !9
  %102 = load i32, ptr %j1, align 4, !tbaa !9
  %dec126 = add nsw i32 %102, -1
  store i32 %dec126, ptr %j1, align 4, !tbaa !9
  br label %if.end127

if.end127:                                        ; preds = %if.else119, %if.then117
  br label %while.cond109, !llvm.loop !74

while.end128:                                     ; preds = %while.cond109
  %103 = load i32, ptr %j0, align 4, !tbaa !9
  %104 = load i32, ptr @n1, align 4, !tbaa !9
  %cmp129 = icmp sgt i32 %103, %104
  br i1 %cmp129, label %if.then130, label %if.end145

if.then130:                                       ; preds = %while.end128
  %105 = load i32, ptr %j0, align 4, !tbaa !9
  %106 = load i32, ptr %n, align 4, !tbaa !9
  %cmp131 = icmp eq i32 %105, %106
  br i1 %cmp131, label %if.then132, label %if.end137

if.then132:                                       ; preds = %if.then130
  %107 = load i32, ptr @canonise, align 4, !tbaa !9
  %tobool133 = icmp ne i32 %107, 0
  br i1 %tobool133, label %if.then134, label %if.end136

if.then134:                                       ; preds = %if.then132
  %108 = load ptr, ptr %gx.addr, align 8, !tbaa !5
  %109 = load i32, ptr @n1, align 4, !tbaa !9
  %110 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %add135 = add nsw i32 %110, 1
  call void @makecanon(ptr noundef %108, ptr noundef @gcan, i32 noundef %109, i32 noundef %add135)
  br label %if.end136

if.end136:                                        ; preds = %if.then134, %if.then132
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end137:                                        ; preds = %if.then130
  %111 = load i32, ptr %j1, align 4, !tbaa !9
  %idxprom138 = sext i32 %111 to i64
  %arrayidx139 = getelementptr inbounds [32 x i32], ptr %ptn, i64 0, i64 %idxprom138
  store i32 0, ptr %arrayidx139, align 4, !tbaa !9
  %112 = load i32, ptr %numcells, align 4, !tbaa !9
  %inc140 = add nsw i32 %112, 1
  store i32 %inc140, ptr %numcells, align 4, !tbaa !9
  %113 = load i32, ptr %j0, align 4, !tbaa !9
  %idxprom141 = sext i32 %113 to i64
  %arrayidx142 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom141
  %114 = load i32, ptr %arrayidx142, align 4, !tbaa !9
  %arrayidx143 = getelementptr inbounds [1 x i32], ptr %active, i64 0, i64 0
  %115 = load i32, ptr %arrayidx143, align 4, !tbaa !9
  %or144 = or i32 %115, %114
  store i32 %or144, ptr %arrayidx143, align 4, !tbaa !9
  br label %if.end145

if.end145:                                        ; preds = %if.end137, %while.end128
  br label %if.end267

if.else146:                                       ; preds = %for.end94
  store i32 3, ptr %numcells, align 4, !tbaa !9
  %116 = load i32, ptr %i1, align 4, !tbaa !9
  %idxprom147 = sext i32 %116 to i64
  %arrayidx148 = getelementptr inbounds [32 x i32], ptr %ptn, i64 0, i64 %idxprom147
  store i32 0, ptr %arrayidx148, align 4, !tbaa !9
  %117 = load i32, ptr @bit, align 16, !tbaa !9
  %118 = load i32, ptr @n1, align 4, !tbaa !9
  %idxprom149 = sext i32 %118 to i64
  %arrayidx150 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom149
  %119 = load i32, ptr %arrayidx150, align 4, !tbaa !9
  %or151 = or i32 %117, %119
  %120 = load i32, ptr %i1, align 4, !tbaa !9
  %add152 = add nsw i32 %120, 1
  %idxprom153 = sext i32 %add152 to i64
  %arrayidx154 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom153
  %121 = load i32, ptr %arrayidx154, align 4, !tbaa !9
  %or155 = or i32 %or151, %121
  %arrayidx156 = getelementptr inbounds [1 x i32], ptr %active, i64 0, i64 0
  store i32 %or155, ptr %arrayidx156, align 4, !tbaa !9
  store i32 0, ptr %vmax, align 4, !tbaa !9
  store i32 32, ptr %j, align 4, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond157

for.cond157:                                      ; preds = %for.inc181, %if.else146
  %122 = load i32, ptr %i, align 4, !tbaa !9
  %123 = load i32, ptr @n1, align 4, !tbaa !9
  %cmp158 = icmp slt i32 %122, %123
  br i1 %cmp158, label %for.body159, label %for.end183

for.body159:                                      ; preds = %for.cond157
  %124 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom160 = sext i32 %124 to i64
  %arrayidx161 = getelementptr inbounds [32 x i32], ptr %degx, i64 0, i64 %idxprom160
  %125 = load i32, ptr %arrayidx161, align 4, !tbaa !9
  %126 = load i32, ptr %j, align 4, !tbaa !9
  %cmp162 = icmp slt i32 %125, %126
  br i1 %cmp162, label %land.lhs.true, label %if.else171

land.lhs.true:                                    ; preds = %for.body159
  %127 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom163 = sext i32 %127 to i64
  %arrayidx164 = getelementptr inbounds [32 x i32], ptr %degx, i64 0, i64 %idxprom163
  %128 = load i32, ptr %arrayidx164, align 4, !tbaa !9
  %cmp165 = icmp sgt i32 %128, 0
  br i1 %cmp165, label %if.then166, label %if.else171

if.then166:                                       ; preds = %land.lhs.true
  %129 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom167 = sext i32 %129 to i64
  %arrayidx168 = getelementptr inbounds [32 x i32], ptr %degx, i64 0, i64 %idxprom167
  %130 = load i32, ptr %arrayidx168, align 4, !tbaa !9
  store i32 %130, ptr %j, align 4, !tbaa !9
  %131 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom169 = sext i32 %131 to i64
  %arrayidx170 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom169
  %132 = load i32, ptr %arrayidx170, align 4, !tbaa !9
  store i32 %132, ptr %vmax, align 4, !tbaa !9
  br label %if.end180

if.else171:                                       ; preds = %land.lhs.true, %for.body159
  %133 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom172 = sext i32 %133 to i64
  %arrayidx173 = getelementptr inbounds [32 x i32], ptr %degx, i64 0, i64 %idxprom172
  %134 = load i32, ptr %arrayidx173, align 4, !tbaa !9
  %135 = load i32, ptr %j, align 4, !tbaa !9
  %cmp174 = icmp eq i32 %134, %135
  br i1 %cmp174, label %if.then175, label %if.end179

if.then175:                                       ; preds = %if.else171
  %136 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom176 = sext i32 %136 to i64
  %arrayidx177 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom176
  %137 = load i32, ptr %arrayidx177, align 4, !tbaa !9
  %138 = load i32, ptr %vmax, align 4, !tbaa !9
  %or178 = or i32 %138, %137
  store i32 %or178, ptr %vmax, align 4, !tbaa !9
  br label %if.end179

if.end179:                                        ; preds = %if.then175, %if.else171
  br label %if.end180

if.end180:                                        ; preds = %if.end179, %if.then166
  br label %for.inc181

for.inc181:                                       ; preds = %if.end180
  %139 = load i32, ptr %i, align 4, !tbaa !9
  %inc182 = add nsw i32 %139, 1
  store i32 %inc182, ptr %i, align 4, !tbaa !9
  br label %for.cond157, !llvm.loop !75

for.end183:                                       ; preds = %for.cond157
  %140 = load ptr, ptr %gx.addr, align 8, !tbaa !5
  %141 = load i32, ptr %n, align 4, !tbaa !9
  %idxprom184 = sext i32 %141 to i64
  %arrayidx185 = getelementptr inbounds i32, ptr %140, i64 %idxprom184
  %142 = load i32, ptr %arrayidx185, align 4, !tbaa !9
  %143 = load i32, ptr %vmax, align 4, !tbaa !9
  %and186 = and i32 %142, %143
  store i32 %and186, ptr %gv, align 4, !tbaa !9
  %144 = load i32, ptr %gv, align 4, !tbaa !9
  %shr187 = lshr i32 %144, 24
  %and188 = and i32 %shr187, 255
  %idxprom189 = zext i32 %and188 to i64
  %arrayidx190 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom189
  %145 = load i32, ptr %arrayidx190, align 4, !tbaa !9
  %146 = load i32, ptr %gv, align 4, !tbaa !9
  %shr191 = lshr i32 %146, 16
  %and192 = and i32 %shr191, 255
  %idxprom193 = zext i32 %and192 to i64
  %arrayidx194 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom193
  %147 = load i32, ptr %arrayidx194, align 4, !tbaa !9
  %add195 = add nsw i32 %145, %147
  %148 = load i32, ptr %gv, align 4, !tbaa !9
  %shr196 = lshr i32 %148, 8
  %and197 = and i32 %shr196, 255
  %idxprom198 = zext i32 %and197 to i64
  %arrayidx199 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom198
  %149 = load i32, ptr %arrayidx199, align 4, !tbaa !9
  %add200 = add nsw i32 %add195, %149
  %150 = load i32, ptr %gv, align 4, !tbaa !9
  %and201 = and i32 %150, 255
  %idxprom202 = zext i32 %and201 to i64
  %arrayidx203 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom202
  %151 = load i32, ptr %arrayidx203, align 4, !tbaa !9
  %add204 = add nsw i32 %add200, %151
  store i32 %add204, ptr %qn, align 4, !tbaa !9
  %152 = load i32, ptr %i1, align 4, !tbaa !9
  %add205 = add nsw i32 %152, 1
  store i32 %add205, ptr %j0, align 4, !tbaa !9
  %153 = load i32, ptr %n, align 4, !tbaa !9
  store i32 %153, ptr %j1, align 4, !tbaa !9
  br label %while.cond206

while.cond206:                                    ; preds = %if.end247, %for.end183
  %154 = load i32, ptr %j0, align 4, !tbaa !9
  %155 = load i32, ptr %j1, align 4, !tbaa !9
  %cmp207 = icmp sle i32 %154, %155
  br i1 %cmp207, label %while.body208, label %while.end248

while.body208:                                    ; preds = %while.cond206
  %156 = load i32, ptr %j0, align 4, !tbaa !9
  %idxprom209 = sext i32 %156 to i64
  %arrayidx210 = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 %idxprom209
  %157 = load i32, ptr %arrayidx210, align 4, !tbaa !9
  store i32 %157, ptr %j, align 4, !tbaa !9
  %158 = load ptr, ptr %gx.addr, align 8, !tbaa !5
  %159 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom211 = sext i32 %159 to i64
  %arrayidx212 = getelementptr inbounds i32, ptr %158, i64 %idxprom211
  %160 = load i32, ptr %arrayidx212, align 4, !tbaa !9
  %161 = load i32, ptr %vmax, align 4, !tbaa !9
  %and213 = and i32 %160, %161
  store i32 %and213, ptr %gv, align 4, !tbaa !9
  %162 = load i32, ptr %gv, align 4, !tbaa !9
  %shr214 = lshr i32 %162, 24
  %and215 = and i32 %shr214, 255
  %idxprom216 = zext i32 %and215 to i64
  %arrayidx217 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom216
  %163 = load i32, ptr %arrayidx217, align 4, !tbaa !9
  %164 = load i32, ptr %gv, align 4, !tbaa !9
  %shr218 = lshr i32 %164, 16
  %and219 = and i32 %shr218, 255
  %idxprom220 = zext i32 %and219 to i64
  %arrayidx221 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom220
  %165 = load i32, ptr %arrayidx221, align 4, !tbaa !9
  %add222 = add nsw i32 %163, %165
  %166 = load i32, ptr %gv, align 4, !tbaa !9
  %shr223 = lshr i32 %166, 8
  %and224 = and i32 %shr223, 255
  %idxprom225 = zext i32 %and224 to i64
  %arrayidx226 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom225
  %167 = load i32, ptr %arrayidx226, align 4, !tbaa !9
  %add227 = add nsw i32 %add222, %167
  %168 = load i32, ptr %gv, align 4, !tbaa !9
  %and228 = and i32 %168, 255
  %idxprom229 = zext i32 %and228 to i64
  %arrayidx230 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom229
  %169 = load i32, ptr %arrayidx230, align 4, !tbaa !9
  %add231 = add nsw i32 %add227, %169
  store i32 %add231, ptr %qv, align 4, !tbaa !9
  %170 = load i32, ptr %qv, align 4, !tbaa !9
  %171 = load i32, ptr %qn, align 4, !tbaa !9
  %cmp232 = icmp sgt i32 %170, %171
  br i1 %cmp232, label %if.then233, label %if.else234

if.then233:                                       ; preds = %while.body208
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else234:                                       ; preds = %while.body208
  %172 = load i32, ptr %qv, align 4, !tbaa !9
  %173 = load i32, ptr %qn, align 4, !tbaa !9
  %cmp235 = icmp slt i32 %172, %173
  br i1 %cmp235, label %if.then236, label %if.else238

if.then236:                                       ; preds = %if.else234
  %174 = load i32, ptr %j0, align 4, !tbaa !9
  %inc237 = add nsw i32 %174, 1
  store i32 %inc237, ptr %j0, align 4, !tbaa !9
  br label %if.end246

if.else238:                                       ; preds = %if.else234
  %175 = load i32, ptr %j1, align 4, !tbaa !9
  %idxprom239 = sext i32 %175 to i64
  %arrayidx240 = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 %idxprom239
  %176 = load i32, ptr %arrayidx240, align 4, !tbaa !9
  %177 = load i32, ptr %j0, align 4, !tbaa !9
  %idxprom241 = sext i32 %177 to i64
  %arrayidx242 = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 %idxprom241
  store i32 %176, ptr %arrayidx242, align 4, !tbaa !9
  %178 = load i32, ptr %j, align 4, !tbaa !9
  %179 = load i32, ptr %j1, align 4, !tbaa !9
  %idxprom243 = sext i32 %179 to i64
  %arrayidx244 = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 %idxprom243
  store i32 %178, ptr %arrayidx244, align 4, !tbaa !9
  %180 = load i32, ptr %j1, align 4, !tbaa !9
  %dec245 = add nsw i32 %180, -1
  store i32 %dec245, ptr %j1, align 4, !tbaa !9
  br label %if.end246

if.end246:                                        ; preds = %if.else238, %if.then236
  br label %if.end247

if.end247:                                        ; preds = %if.end246
  br label %while.cond206, !llvm.loop !76

while.end248:                                     ; preds = %while.cond206
  %181 = load i32, ptr %j0, align 4, !tbaa !9
  %182 = load i32, ptr %i1, align 4, !tbaa !9
  %add249 = add nsw i32 %182, 1
  %cmp250 = icmp sgt i32 %181, %add249
  br i1 %cmp250, label %if.then251, label %if.end266

if.then251:                                       ; preds = %while.end248
  %183 = load i32, ptr %j0, align 4, !tbaa !9
  %184 = load i32, ptr %n, align 4, !tbaa !9
  %cmp252 = icmp eq i32 %183, %184
  br i1 %cmp252, label %if.then253, label %if.end258

if.then253:                                       ; preds = %if.then251
  %185 = load i32, ptr @canonise, align 4, !tbaa !9
  %tobool254 = icmp ne i32 %185, 0
  br i1 %tobool254, label %if.then255, label %if.end257

if.then255:                                       ; preds = %if.then253
  %186 = load ptr, ptr %gx.addr, align 8, !tbaa !5
  %187 = load i32, ptr @n1, align 4, !tbaa !9
  %188 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %add256 = add nsw i32 %188, 1
  call void @makecanon(ptr noundef %186, ptr noundef @gcan, i32 noundef %187, i32 noundef %add256)
  br label %if.end257

if.end257:                                        ; preds = %if.then255, %if.then253
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end258:                                        ; preds = %if.then251
  %189 = load i32, ptr %j1, align 4, !tbaa !9
  %idxprom259 = sext i32 %189 to i64
  %arrayidx260 = getelementptr inbounds [32 x i32], ptr %ptn, i64 0, i64 %idxprom259
  store i32 0, ptr %arrayidx260, align 4, !tbaa !9
  %190 = load i32, ptr %numcells, align 4, !tbaa !9
  %inc261 = add nsw i32 %190, 1
  store i32 %inc261, ptr %numcells, align 4, !tbaa !9
  %191 = load i32, ptr %j0, align 4, !tbaa !9
  %idxprom262 = sext i32 %191 to i64
  %arrayidx263 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom262
  %192 = load i32, ptr %arrayidx263, align 4, !tbaa !9
  %arrayidx264 = getelementptr inbounds [1 x i32], ptr %active, i64 0, i64 0
  %193 = load i32, ptr %arrayidx264, align 4, !tbaa !9
  %or265 = or i32 %193, %192
  store i32 %or265, ptr %arrayidx264, align 4, !tbaa !9
  br label %if.end266

if.end266:                                        ; preds = %if.end258, %while.end248
  br label %if.end267

if.end267:                                        ; preds = %if.end266, %if.end145
  %194 = load ptr, ptr %gx.addr, align 8, !tbaa !5
  %arraydecay268 = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 0
  %arraydecay269 = getelementptr inbounds [32 x i32], ptr %ptn, i64 0, i64 0
  %arraydecay270 = getelementptr inbounds [32 x i32], ptr %count, i64 0, i64 0
  %arraydecay271 = getelementptr inbounds [1 x i32], ptr %active, i64 0, i64 0
  %195 = load i32, ptr %nx, align 4, !tbaa !9
  call void @refinex(ptr noundef %194, ptr noundef %arraydecay268, ptr noundef %arraydecay269, i32 noundef 0, ptr noundef %numcells, ptr noundef %arraydecay270, ptr noundef %arraydecay271, i32 noundef 1, ptr noundef %code, i32 noundef 1, i32 noundef %195)
  %196 = load i32, ptr %code, align 4, !tbaa !9
  %cmp272 = icmp slt i32 %196, 0
  br i1 %cmp272, label %if.then273, label %if.else274

if.then273:                                       ; preds = %if.end267
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else274:                                       ; preds = %if.end267
  %197 = load i32, ptr %code, align 4, !tbaa !9
  %cmp275 = icmp sgt i32 %197, 0
  br i1 %cmp275, label %if.then278, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else274
  %198 = load i32, ptr %numcells, align 4, !tbaa !9
  %199 = load i32, ptr %nx, align 4, !tbaa !9
  %sub276 = sub nsw i32 %199, 4
  %cmp277 = icmp sge i32 %198, %sub276
  br i1 %cmp277, label %if.then278, label %if.end283

if.then278:                                       ; preds = %lor.lhs.false, %if.else274
  %200 = load i32, ptr @canonise, align 4, !tbaa !9
  %tobool279 = icmp ne i32 %200, 0
  br i1 %tobool279, label %if.then280, label %if.end282

if.then280:                                       ; preds = %if.then278
  %201 = load ptr, ptr %gx.addr, align 8, !tbaa !5
  %202 = load i32, ptr @n1, align 4, !tbaa !9
  %203 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %add281 = add nsw i32 %203, 1
  call void @makecanon(ptr noundef %201, ptr noundef @gcan, i32 noundef %202, i32 noundef %add281)
  br label %if.end282

if.end282:                                        ; preds = %if.then280, %if.then278
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end283:                                        ; preds = %lor.lhs.false
  br label %if.end284

if.end284:                                        ; preds = %if.end283
  store i32 0, ptr getelementptr inbounds (%struct.optionstruct, ptr @accept2.options, i32 0, i32 3), align 4, !tbaa !77
  store i32 0, ptr getelementptr inbounds (%struct.optionstruct, ptr @accept2.options, i32 0, i32 2), align 8, !tbaa !79
  store i32 1, ptr @accept2.options, align 8, !tbaa !80
  store i32 0, ptr getelementptr inbounds (%struct.optionstruct, ptr @accept2.options, i32 0, i32 4), align 8, !tbaa !81
  %arrayidx285 = getelementptr inbounds [1 x i32], ptr %active, i64 0, i64 0
  store i32 0, ptr %arrayidx285, align 4, !tbaa !9
  %204 = load ptr, ptr %gx.addr, align 8, !tbaa !5
  %arraydecay286 = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 0
  %arraydecay287 = getelementptr inbounds [32 x i32], ptr %ptn, i64 0, i64 0
  %arraydecay288 = getelementptr inbounds [1 x i32], ptr %active, i64 0, i64 0
  %arraydecay289 = getelementptr inbounds [32 x i32], ptr %orbits, i64 0, i64 0
  %arraydecay290 = getelementptr inbounds [50 x i32], ptr %workspace, i64 0, i64 0
  %205 = load i32, ptr %nx, align 4, !tbaa !9
  call void @nauty(ptr noundef %204, ptr noundef %arraydecay286, ptr noundef %arraydecay287, ptr noundef %arraydecay288, ptr noundef %arraydecay289, ptr noundef @accept2.options, ptr noundef %stats, ptr noundef %arraydecay290, i32 noundef 50, i32 noundef 1, i32 noundef %205, ptr noundef @gcan)
  %206 = load i32, ptr %n, align 4, !tbaa !9
  %idxprom291 = sext i32 %206 to i64
  %arrayidx292 = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 %idxprom291
  %207 = load i32, ptr %arrayidx292, align 4, !tbaa !9
  %idxprom293 = sext i32 %207 to i64
  %arrayidx294 = getelementptr inbounds [32 x i32], ptr %orbits, i64 0, i64 %idxprom293
  %208 = load i32, ptr %arrayidx294, align 4, !tbaa !9
  %209 = load i32, ptr %n, align 4, !tbaa !9
  %idxprom295 = sext i32 %209 to i64
  %arrayidx296 = getelementptr inbounds [32 x i32], ptr %orbits, i64 0, i64 %idxprom295
  %210 = load i32, ptr %arrayidx296, align 4, !tbaa !9
  %cmp297 = icmp eq i32 %208, %210
  br i1 %cmp297, label %if.then298, label %if.else303

if.then298:                                       ; preds = %if.end284
  %211 = load i32, ptr @canonise, align 4, !tbaa !9
  %tobool299 = icmp ne i32 %211, 0
  br i1 %tobool299, label %if.then300, label %if.end302

if.then300:                                       ; preds = %if.then298
  %212 = load ptr, ptr %gx.addr, align 8, !tbaa !5
  %213 = load i32, ptr @n1, align 4, !tbaa !9
  %214 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %add301 = add nsw i32 %214, 1
  call void @makecanon(ptr noundef %212, ptr noundef @gcan, i32 noundef %213, i32 noundef %add301)
  br label %if.end302

if.end302:                                        ; preds = %if.then300, %if.then298
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else303:                                       ; preds = %if.end284
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else303, %if.end302, %if.end282, %if.then273, %if.end257, %if.then233, %if.end136, %if.then105, %if.end
  call void @llvm.lifetime.end.p0(i64 200, ptr %workspace) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr %stats) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %active) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j0) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i0) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %degn) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %code) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %numcells) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %xw) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr %count) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %qv) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %qn) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %gv) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmax) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr %invar) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr %degx) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr %orbits) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr %ptn) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr %lab) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %215 = load i32, ptr %retval, align 4
  ret i32 %215
}

; Function Attrs: nounwind uwtable
define internal i32 @isconnected(ptr noundef %g, i32 noundef %n) #0 {
entry:
  %g.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %seen = alloca i32, align 4
  %expanded = alloca i32, align 4
  %toexpand = alloca i32, align 4
  %allbits = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %seen) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %expanded) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %toexpand) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %allbits) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  %0 = load i32, ptr %n.addr, align 4, !tbaa !9
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !tbaa !9
  %sub = sub nsw i32 %1, 1
  %shr = lshr i32 2147483647, %sub
  %not = xor i32 %shr, -1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %not, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %allbits, align 4, !tbaa !9
  %2 = load i32, ptr %n.addr, align 4, !tbaa !9
  %sub1 = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub1 to i64
  %arrayidx = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !9
  store i32 %3, ptr %expanded, align 4, !tbaa !9
  %4 = load i32, ptr %expanded, align 4, !tbaa !9
  %5 = load ptr, ptr %g.addr, align 8, !tbaa !5
  %6 = load i32, ptr %n.addr, align 4, !tbaa !9
  %sub2 = sub nsw i32 %6, 1
  %idxprom3 = sext i32 %sub2 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %5, i64 %idxprom3
  %7 = load i32, ptr %arrayidx4, align 4, !tbaa !9
  %or = or i32 %4, %7
  store i32 %or, ptr %seen, align 4, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %cond.end37, %cond.end
  %8 = load i32, ptr %seen, align 4, !tbaa !9
  %9 = load i32, ptr %allbits, align 4, !tbaa !9
  %cmp = icmp ne i32 %8, %9
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %10 = load i32, ptr %seen, align 4, !tbaa !9
  %11 = load i32, ptr %expanded, align 4, !tbaa !9
  %not5 = xor i32 %11, -1
  %and = and i32 %10, %not5
  store i32 %and, ptr %toexpand, align 4, !tbaa !9
  %tobool6 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %tobool6, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i32, ptr %toexpand, align 4, !tbaa !9
  %and7 = and i32 %13, -65536
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %cond.true9, label %cond.false23

cond.true9:                                       ; preds = %while.body
  %14 = load i32, ptr %toexpand, align 4, !tbaa !9
  %and10 = and i32 %14, -16777216
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %cond.true12, label %cond.false17

cond.true12:                                      ; preds = %cond.true9
  %15 = load i32, ptr %toexpand, align 4, !tbaa !9
  %shr13 = lshr i32 %15, 24
  %and14 = and i32 %shr13, 255
  %idxprom15 = zext i32 %and14 to i64
  %arrayidx16 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom15
  %16 = load i32, ptr %arrayidx16, align 4, !tbaa !9
  br label %cond.end21

cond.false17:                                     ; preds = %cond.true9
  %17 = load i32, ptr %toexpand, align 4, !tbaa !9
  %shr18 = lshr i32 %17, 16
  %idxprom19 = zext i32 %shr18 to i64
  %arrayidx20 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom19
  %18 = load i32, ptr %arrayidx20, align 4, !tbaa !9
  %add = add nsw i32 8, %18
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false17, %cond.true12
  %cond22 = phi i32 [ %16, %cond.true12 ], [ %add, %cond.false17 ]
  br label %cond.end37

cond.false23:                                     ; preds = %while.body
  %19 = load i32, ptr %toexpand, align 4, !tbaa !9
  %and24 = and i32 %19, 65280
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %cond.true26, label %cond.false31

cond.true26:                                      ; preds = %cond.false23
  %20 = load i32, ptr %toexpand, align 4, !tbaa !9
  %shr27 = lshr i32 %20, 8
  %idxprom28 = zext i32 %shr27 to i64
  %arrayidx29 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom28
  %21 = load i32, ptr %arrayidx29, align 4, !tbaa !9
  %add30 = add nsw i32 16, %21
  br label %cond.end35

cond.false31:                                     ; preds = %cond.false23
  %22 = load i32, ptr %toexpand, align 4, !tbaa !9
  %idxprom32 = zext i32 %22 to i64
  %arrayidx33 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom32
  %23 = load i32, ptr %arrayidx33, align 4, !tbaa !9
  %add34 = add nsw i32 24, %23
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false31, %cond.true26
  %cond36 = phi i32 [ %add30, %cond.true26 ], [ %add34, %cond.false31 ]
  br label %cond.end37

cond.end37:                                       ; preds = %cond.end35, %cond.end21
  %cond38 = phi i32 [ %cond22, %cond.end21 ], [ %cond36, %cond.end35 ]
  store i32 %cond38, ptr %i, align 4, !tbaa !9
  %24 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom39 = sext i32 %24 to i64
  %arrayidx40 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom39
  %25 = load i32, ptr %arrayidx40, align 4, !tbaa !9
  %26 = load i32, ptr %expanded, align 4, !tbaa !9
  %or41 = or i32 %26, %25
  store i32 %or41, ptr %expanded, align 4, !tbaa !9
  %27 = load ptr, ptr %g.addr, align 8, !tbaa !5
  %28 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom42 = sext i32 %28 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %27, i64 %idxprom42
  %29 = load i32, ptr %arrayidx43, align 4, !tbaa !9
  %30 = load i32, ptr %seen, align 4, !tbaa !9
  %or44 = or i32 %30, %29
  store i32 %or44, ptr %seen, align 4, !tbaa !9
  br label %while.cond, !llvm.loop !82

while.end:                                        ; preds = %land.end
  %31 = load i32, ptr %seen, align 4, !tbaa !9
  %32 = load i32, ptr %allbits, align 4, !tbaa !9
  %cmp45 = icmp eq i32 %31, %32
  %conv = zext i1 %cmp45 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %allbits) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %toexpand) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %expanded) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %seen) #7
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @accept1(ptr noundef %g, i32 noundef %n2, i32 noundef %x, ptr noundef %gx, ptr noundef %deg, ptr noundef %rigid) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca ptr, align 8
  %n2.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %gx.addr = alloca ptr, align 8
  %deg.addr = alloca ptr, align 8
  %rigid.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %lab = alloca [32 x i32], align 16
  %ptn = alloca [32 x i32], align 16
  %orbits = alloca [32 x i32], align 16
  %count = alloca [32 x i32], align 16
  %h = alloca [32 x i32], align 16
  %xw = alloca i32, align 4
  %nx = alloca i32, align 4
  %numcells = alloca i32, align 4
  %code = alloca i32, align 4
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %degn = alloca i32, align 4
  %active = alloca [1 x i32], align 4
  %stats = alloca %struct.statsblk, align 8
  %workspace = alloca [50 x i32], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8, !tbaa !5
  store i32 %n2, ptr %n2.addr, align 4, !tbaa !9
  store i32 %x, ptr %x.addr, align 4, !tbaa !9
  store ptr %gx, ptr %gx.addr, align 8, !tbaa !5
  store ptr %deg, ptr %deg.addr, align 8, !tbaa !5
  store ptr %rigid, ptr %rigid.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr %lab) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr %ptn) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr %orbits) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr %count) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr %h) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %xw) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %nx) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %numcells) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %code) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %degn) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %active) #7
  call void @llvm.lifetime.start.p0(i64 88, ptr %stats) #7
  call void @llvm.lifetime.start.p0(i64 200, ptr %workspace) #7
  %0 = load i32, ptr @n1, align 4, !tbaa !9
  %1 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %add = add nsw i32 %0, %1
  store i32 %add, ptr %n, align 4, !tbaa !9
  %2 = load i32, ptr %n, align 4, !tbaa !9
  %add1 = add nsw i32 %2, 1
  store i32 %add1, ptr %nx, align 4, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !tbaa !9
  %4 = load i32, ptr %n, align 4, !tbaa !9
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %g.addr, align 8, !tbaa !5
  %6 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %8 = load ptr, ptr %gx.addr, align 8, !tbaa !5
  %9 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %8, i64 %idxprom2
  store i32 %7, ptr %arrayidx3, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !83

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %gx.addr, align 8, !tbaa !5
  %12 = load i32, ptr %n, align 4, !tbaa !9
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %11, i64 %idxprom4
  store i32 0, ptr %arrayidx5, align 4, !tbaa !9
  %13 = load i32, ptr %x.addr, align 4, !tbaa !9
  %shr = ashr i32 %13, 8
  %and = and i32 %shr, 255
  %idxprom6 = sext i32 %and to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom6
  %14 = load i32, ptr %arrayidx7, align 4, !tbaa !9
  %15 = load i32, ptr %x.addr, align 4, !tbaa !9
  %shr8 = ashr i32 %15, 16
  %and9 = and i32 %shr8, 255
  %idxprom10 = sext i32 %and9 to i64
  %arrayidx11 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom10
  %16 = load i32, ptr %arrayidx11, align 4, !tbaa !9
  %add12 = add nsw i32 %14, %16
  %17 = load i32, ptr %x.addr, align 4, !tbaa !9
  %and13 = and i32 %17, 255
  %idxprom14 = sext i32 %and13 to i64
  %arrayidx15 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom14
  %18 = load i32, ptr %arrayidx15, align 4, !tbaa !9
  %add16 = add nsw i32 %add12, %18
  store i32 %add16, ptr %degn, align 4, !tbaa !9
  %19 = load ptr, ptr %deg.addr, align 8, !tbaa !5
  %20 = load i32, ptr %n, align 4, !tbaa !9
  %idxprom17 = sext i32 %20 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %19, i64 %idxprom17
  store i32 %add16, ptr %arrayidx18, align 4, !tbaa !9
  %21 = load i32, ptr %x.addr, align 4, !tbaa !9
  store i32 %21, ptr %xw, align 4, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %cond.end38, %for.end
  %22 = load i32, ptr %xw, align 4, !tbaa !9
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load i32, ptr %xw, align 4, !tbaa !9
  %and19 = and i32 %23, 255
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %24 = load i32, ptr %xw, align 4, !tbaa !9
  %and21 = and i32 %24, 255
  %idxprom22 = sext i32 %and21 to i64
  %arrayidx23 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom22
  %25 = load i32, ptr %arrayidx23, align 4, !tbaa !9
  %sub = sub nsw i32 7, %25
  br label %cond.end38

cond.false:                                       ; preds = %while.body
  %26 = load i32, ptr %xw, align 4, !tbaa !9
  %and24 = and i32 %26, 65280
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %cond.true26, label %cond.false32

cond.true26:                                      ; preds = %cond.false
  %27 = load i32, ptr %xw, align 4, !tbaa !9
  %shr27 = ashr i32 %27, 8
  %and28 = and i32 %shr27, 255
  %idxprom29 = sext i32 %and28 to i64
  %arrayidx30 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom29
  %28 = load i32, ptr %arrayidx30, align 4, !tbaa !9
  %sub31 = sub nsw i32 15, %28
  br label %cond.end

cond.false32:                                     ; preds = %cond.false
  %29 = load i32, ptr %xw, align 4, !tbaa !9
  %shr33 = ashr i32 %29, 16
  %and34 = and i32 %shr33, 255
  %idxprom35 = sext i32 %and34 to i64
  %arrayidx36 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom35
  %30 = load i32, ptr %arrayidx36, align 4, !tbaa !9
  %sub37 = sub nsw i32 23, %30
  br label %cond.end

cond.end:                                         ; preds = %cond.false32, %cond.true26
  %cond = phi i32 [ %sub31, %cond.true26 ], [ %sub37, %cond.false32 ]
  br label %cond.end38

cond.end38:                                       ; preds = %cond.end, %cond.true
  %cond39 = phi i32 [ %sub, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond39, ptr %i, align 4, !tbaa !9
  %31 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom40 = sext i32 %31 to i64
  %arrayidx41 = getelementptr inbounds [24 x i32], ptr @xbit, i64 0, i64 %idxprom40
  %32 = load i32, ptr %arrayidx41, align 4, !tbaa !9
  %not = xor i32 %32, -1
  %33 = load i32, ptr %xw, align 4, !tbaa !9
  %and42 = and i32 %33, %not
  store i32 %and42, ptr %xw, align 4, !tbaa !9
  %34 = load i32, ptr %n, align 4, !tbaa !9
  %idxprom43 = sext i32 %34 to i64
  %arrayidx44 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom43
  %35 = load i32, ptr %arrayidx44, align 4, !tbaa !9
  %36 = load ptr, ptr %gx.addr, align 8, !tbaa !5
  %37 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom45 = sext i32 %37 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %36, i64 %idxprom45
  %38 = load i32, ptr %arrayidx46, align 4, !tbaa !9
  %or = or i32 %38, %35
  store i32 %or, ptr %arrayidx46, align 4, !tbaa !9
  %39 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom47 = sext i32 %39 to i64
  %arrayidx48 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom47
  %40 = load i32, ptr %arrayidx48, align 4, !tbaa !9
  %41 = load ptr, ptr %gx.addr, align 8, !tbaa !5
  %42 = load i32, ptr %n, align 4, !tbaa !9
  %idxprom49 = sext i32 %42 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %41, i64 %idxprom49
  %43 = load i32, ptr %arrayidx50, align 4, !tbaa !9
  %or51 = or i32 %43, %40
  store i32 %or51, ptr %arrayidx50, align 4, !tbaa !9
  %44 = load ptr, ptr %deg.addr, align 8, !tbaa !5
  %45 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom52 = sext i32 %45 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %44, i64 %idxprom52
  %46 = load i32, ptr %arrayidx53, align 4, !tbaa !9
  %inc54 = add nsw i32 %46, 1
  store i32 %inc54, ptr %arrayidx53, align 4, !tbaa !9
  br label %while.cond, !llvm.loop !84

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc62, %while.end
  %47 = load i32, ptr %i, align 4, !tbaa !9
  %48 = load i32, ptr @n1, align 4, !tbaa !9
  %cmp56 = icmp slt i32 %47, %48
  br i1 %cmp56, label %for.body57, label %for.end64

for.body57:                                       ; preds = %for.cond55
  %49 = load i32, ptr %i, align 4, !tbaa !9
  %50 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom58 = sext i32 %50 to i64
  %arrayidx59 = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 %idxprom58
  store i32 %49, ptr %arrayidx59, align 4, !tbaa !9
  %51 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom60 = sext i32 %51 to i64
  %arrayidx61 = getelementptr inbounds [32 x i32], ptr %ptn, i64 0, i64 %idxprom60
  store i32 1, ptr %arrayidx61, align 4, !tbaa !9
  br label %for.inc62

for.inc62:                                        ; preds = %for.body57
  %52 = load i32, ptr %i, align 4, !tbaa !9
  %inc63 = add nsw i32 %52, 1
  store i32 %inc63, ptr %i, align 4, !tbaa !9
  br label %for.cond55, !llvm.loop !85

for.end64:                                        ; preds = %for.cond55
  %53 = load i32, ptr @n1, align 4, !tbaa !9
  %sub65 = sub nsw i32 %53, 1
  %idxprom66 = sext i32 %sub65 to i64
  %arrayidx67 = getelementptr inbounds [32 x i32], ptr %ptn, i64 0, i64 %idxprom66
  store i32 0, ptr %arrayidx67, align 4, !tbaa !9
  %54 = load i32, ptr @n1, align 4, !tbaa !9
  store i32 %54, ptr %i0, align 4, !tbaa !9
  %55 = load i32, ptr %n, align 4, !tbaa !9
  store i32 %55, ptr %i1, align 4, !tbaa !9
  %56 = load i32, ptr @n1, align 4, !tbaa !9
  store i32 %56, ptr %i, align 4, !tbaa !9
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc81, %for.end64
  %57 = load i32, ptr %i, align 4, !tbaa !9
  %58 = load i32, ptr %nx, align 4, !tbaa !9
  %cmp69 = icmp slt i32 %57, %58
  br i1 %cmp69, label %for.body70, label %for.end83

for.body70:                                       ; preds = %for.cond68
  %59 = load ptr, ptr %deg.addr, align 8, !tbaa !5
  %60 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom71 = sext i32 %60 to i64
  %arrayidx72 = getelementptr inbounds i32, ptr %59, i64 %idxprom71
  %61 = load i32, ptr %arrayidx72, align 4, !tbaa !9
  %62 = load i32, ptr %degn, align 4, !tbaa !9
  %cmp73 = icmp eq i32 %61, %62
  br i1 %cmp73, label %if.then, label %if.else

if.then:                                          ; preds = %for.body70
  %63 = load i32, ptr %i, align 4, !tbaa !9
  %64 = load i32, ptr %i1, align 4, !tbaa !9
  %dec = add nsw i32 %64, -1
  store i32 %dec, ptr %i1, align 4, !tbaa !9
  %idxprom74 = sext i32 %64 to i64
  %arrayidx75 = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 %idxprom74
  store i32 %63, ptr %arrayidx75, align 4, !tbaa !9
  br label %if.end

if.else:                                          ; preds = %for.body70
  %65 = load i32, ptr %i, align 4, !tbaa !9
  %66 = load i32, ptr %i0, align 4, !tbaa !9
  %inc76 = add nsw i32 %66, 1
  store i32 %inc76, ptr %i0, align 4, !tbaa !9
  %idxprom77 = sext i32 %66 to i64
  %arrayidx78 = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 %idxprom77
  store i32 %65, ptr %arrayidx78, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %67 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom79 = sext i32 %67 to i64
  %arrayidx80 = getelementptr inbounds [32 x i32], ptr %ptn, i64 0, i64 %idxprom79
  store i32 1, ptr %arrayidx80, align 4, !tbaa !9
  br label %for.inc81

for.inc81:                                        ; preds = %if.end
  %68 = load i32, ptr %i, align 4, !tbaa !9
  %inc82 = add nsw i32 %68, 1
  store i32 %inc82, ptr %i, align 4, !tbaa !9
  br label %for.cond68, !llvm.loop !86

for.end83:                                        ; preds = %for.cond68
  %69 = load i32, ptr %n, align 4, !tbaa !9
  %idxprom84 = sext i32 %69 to i64
  %arrayidx85 = getelementptr inbounds [32 x i32], ptr %ptn, i64 0, i64 %idxprom84
  store i32 0, ptr %arrayidx85, align 4, !tbaa !9
  %70 = load i32, ptr %i0, align 4, !tbaa !9
  %71 = load i32, ptr @n1, align 4, !tbaa !9
  %cmp86 = icmp eq i32 %70, %71
  br i1 %cmp86, label %if.then87, label %if.else92

if.then87:                                        ; preds = %for.end83
  store i32 2, ptr %numcells, align 4, !tbaa !9
  %72 = load i32, ptr @bit, align 16, !tbaa !9
  %73 = load i32, ptr @n1, align 4, !tbaa !9
  %idxprom88 = sext i32 %73 to i64
  %arrayidx89 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom88
  %74 = load i32, ptr %arrayidx89, align 4, !tbaa !9
  %or90 = or i32 %72, %74
  %arrayidx91 = getelementptr inbounds [1 x i32], ptr %active, i64 0, i64 0
  store i32 %or90, ptr %arrayidx91, align 4, !tbaa !9
  br label %if.end103

if.else92:                                        ; preds = %for.end83
  store i32 3, ptr %numcells, align 4, !tbaa !9
  %75 = load i32, ptr @bit, align 16, !tbaa !9
  %76 = load i32, ptr @n1, align 4, !tbaa !9
  %idxprom93 = sext i32 %76 to i64
  %arrayidx94 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom93
  %77 = load i32, ptr %arrayidx94, align 4, !tbaa !9
  %or95 = or i32 %75, %77
  %78 = load i32, ptr %i1, align 4, !tbaa !9
  %add96 = add nsw i32 %78, 1
  %idxprom97 = sext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom97
  %79 = load i32, ptr %arrayidx98, align 4, !tbaa !9
  %or99 = or i32 %or95, %79
  %arrayidx100 = getelementptr inbounds [1 x i32], ptr %active, i64 0, i64 0
  store i32 %or99, ptr %arrayidx100, align 4, !tbaa !9
  %80 = load i32, ptr %i1, align 4, !tbaa !9
  %idxprom101 = sext i32 %80 to i64
  %arrayidx102 = getelementptr inbounds [32 x i32], ptr %ptn, i64 0, i64 %idxprom101
  store i32 0, ptr %arrayidx102, align 4, !tbaa !9
  br label %if.end103

if.end103:                                        ; preds = %if.else92, %if.then87
  %81 = load ptr, ptr %gx.addr, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 0
  %arraydecay104 = getelementptr inbounds [32 x i32], ptr %ptn, i64 0, i64 0
  %arraydecay105 = getelementptr inbounds [32 x i32], ptr %count, i64 0, i64 0
  %arraydecay106 = getelementptr inbounds [1 x i32], ptr %active, i64 0, i64 0
  %82 = load i32, ptr %nx, align 4, !tbaa !9
  call void @refinex(ptr noundef %81, ptr noundef %arraydecay, ptr noundef %arraydecay104, i32 noundef 0, ptr noundef %numcells, ptr noundef %arraydecay105, ptr noundef %arraydecay106, i32 noundef 0, ptr noundef %code, i32 noundef 1, i32 noundef %82)
  %83 = load i32, ptr %code, align 4, !tbaa !9
  %cmp107 = icmp slt i32 %83, 0
  br i1 %cmp107, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.end103
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end109:                                        ; preds = %if.end103
  %84 = load i32, ptr %numcells, align 4, !tbaa !9
  %85 = load i32, ptr %nx, align 4, !tbaa !9
  %cmp110 = icmp eq i32 %84, %85
  br i1 %cmp110, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end109
  %86 = load ptr, ptr %rigid.addr, align 8, !tbaa !5
  store i32 1, ptr %86, align 4, !tbaa !9
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end112:                                        ; preds = %if.end109
  store i32 0, ptr getelementptr inbounds (%struct.optionstruct, ptr @accept1.options, i32 0, i32 3), align 4, !tbaa !77
  store i32 0, ptr getelementptr inbounds (%struct.optionstruct, ptr @accept1.options, i32 0, i32 2), align 8, !tbaa !79
  store i32 1, ptr @accept1.options, align 8, !tbaa !80
  store i32 0, ptr getelementptr inbounds (%struct.optionstruct, ptr @accept1.options, i32 0, i32 4), align 8, !tbaa !81
  store ptr @userautomproc, ptr getelementptr inbounds (%struct.optionstruct, ptr @accept1.options, i32 0, i32 9), align 8, !tbaa !87
  %arrayidx113 = getelementptr inbounds [1 x i32], ptr %active, i64 0, i64 0
  store i32 0, ptr %arrayidx113, align 4, !tbaa !9
  %87 = load ptr, ptr %gx.addr, align 8, !tbaa !5
  %arraydecay114 = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 0
  %arraydecay115 = getelementptr inbounds [32 x i32], ptr %ptn, i64 0, i64 0
  %arraydecay116 = getelementptr inbounds [1 x i32], ptr %active, i64 0, i64 0
  %arraydecay117 = getelementptr inbounds [32 x i32], ptr %orbits, i64 0, i64 0
  %arraydecay118 = getelementptr inbounds [50 x i32], ptr %workspace, i64 0, i64 0
  %88 = load i32, ptr %nx, align 4, !tbaa !9
  %arraydecay119 = getelementptr inbounds [32 x i32], ptr %h, i64 0, i64 0
  call void @nauty(ptr noundef %87, ptr noundef %arraydecay114, ptr noundef %arraydecay115, ptr noundef %arraydecay116, ptr noundef %arraydecay117, ptr noundef @accept1.options, ptr noundef %stats, ptr noundef %arraydecay118, i32 noundef 50, i32 noundef 1, i32 noundef %88, ptr noundef %arraydecay119)
  %89 = load i32, ptr %n, align 4, !tbaa !9
  %idxprom120 = sext i32 %89 to i64
  %arrayidx121 = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 %idxprom120
  %90 = load i32, ptr %arrayidx121, align 4, !tbaa !9
  %idxprom122 = sext i32 %90 to i64
  %arrayidx123 = getelementptr inbounds [32 x i32], ptr %orbits, i64 0, i64 %idxprom122
  %91 = load i32, ptr %arrayidx123, align 4, !tbaa !9
  %92 = load i32, ptr %n, align 4, !tbaa !9
  %idxprom124 = sext i32 %92 to i64
  %arrayidx125 = getelementptr inbounds [32 x i32], ptr %orbits, i64 0, i64 %idxprom124
  %93 = load i32, ptr %arrayidx125, align 4, !tbaa !9
  %cmp126 = icmp eq i32 %91, %93
  br i1 %cmp126, label %if.then127, label %if.else129

if.then127:                                       ; preds = %if.end112
  %numorbits = getelementptr inbounds %struct.statsblk, ptr %stats, i32 0, i32 2
  %94 = load i32, ptr %numorbits, align 4, !tbaa !88
  %95 = load i32, ptr %nx, align 4, !tbaa !9
  %cmp128 = icmp eq i32 %94, %95
  %conv = zext i1 %cmp128 to i32
  %96 = load ptr, ptr %rigid.addr, align 8, !tbaa !5
  store i32 %conv, ptr %96, align 4, !tbaa !9
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else129:                                       ; preds = %if.end112
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else129, %if.then127, %if.then111, %if.then108
  call void @llvm.lifetime.end.p0(i64 200, ptr %workspace) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr %stats) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %active) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %degn) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i0) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %code) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %numcells) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nx) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %xw) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr %h) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr %count) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr %orbits) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr %ptn) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr %lab) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %97 = load i32, ptr %retval, align 4
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define internal void @makecanon(ptr noundef %g, ptr noundef %gcan, i32 noundef %n1, i32 noundef %n2) #0 {
entry:
  %g.addr = alloca ptr, align 8
  %gcan.addr = alloca ptr, align 8
  %n1.addr = alloca i32, align 4
  %n2.addr = alloca i32, align 4
  %lab = alloca [32 x i32], align 16
  %ptn = alloca [32 x i32], align 16
  %orbits = alloca [32 x i32], align 16
  %active = alloca [1 x i32], align 4
  %i = alloca i32, align 4
  %stats = alloca %struct.statsblk, align 8
  %workspace = alloca [50 x i32], align 16
  store ptr %g, ptr %g.addr, align 8, !tbaa !5
  store ptr %gcan, ptr %gcan.addr, align 8, !tbaa !5
  store i32 %n1, ptr %n1.addr, align 4, !tbaa !9
  store i32 %n2, ptr %n2.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 128, ptr %lab) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr %ptn) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr %orbits) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %active) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 88, ptr %stats) #7
  call void @llvm.lifetime.start.p0(i64 200, ptr %workspace) #7
  store i32 0, ptr getelementptr inbounds (%struct.optionstruct, ptr @makecanon.options, i32 0, i32 3), align 4, !tbaa !77
  store i32 0, ptr getelementptr inbounds (%struct.optionstruct, ptr @makecanon.options, i32 0, i32 2), align 8, !tbaa !79
  store i32 1, ptr @makecanon.options, align 8, !tbaa !80
  store i32 0, ptr getelementptr inbounds (%struct.optionstruct, ptr @makecanon.options, i32 0, i32 4), align 8, !tbaa !81
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !9
  %1 = load i32, ptr %n1.addr, align 4, !tbaa !9
  %2 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %add = add nsw i32 %1, %2
  %cmp = icmp slt i32 %0, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !tbaa !9
  %4 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 %idxprom
  store i32 %3, ptr %arrayidx, align 4, !tbaa !9
  %5 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [32 x i32], ptr %ptn, i64 0, i64 %idxprom1
  store i32 1, ptr %arrayidx2, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !90

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %n1.addr, align 4, !tbaa !9
  %8 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %add3 = add nsw i32 %7, %8
  %sub = sub nsw i32 %add3, 1
  %idxprom4 = sext i32 %sub to i64
  %arrayidx5 = getelementptr inbounds [32 x i32], ptr %ptn, i64 0, i64 %idxprom4
  store i32 0, ptr %arrayidx5, align 4, !tbaa !9
  %9 = load i32, ptr %n1.addr, align 4, !tbaa !9
  %sub6 = sub nsw i32 %9, 1
  %idxprom7 = sext i32 %sub6 to i64
  %arrayidx8 = getelementptr inbounds [32 x i32], ptr %ptn, i64 0, i64 %idxprom7
  store i32 0, ptr %arrayidx8, align 4, !tbaa !9
  %arraydecay = getelementptr inbounds [1 x i32], ptr %active, i64 0, i64 0
  store i32 0, ptr %arraydecay, align 4, !tbaa !9
  %10 = load i32, ptr @bit, align 16, !tbaa !9
  %arraydecay9 = getelementptr inbounds [1 x i32], ptr %active, i64 0, i64 0
  %11 = load i32, ptr %arraydecay9, align 4, !tbaa !9
  %or = or i32 %11, %10
  store i32 %or, ptr %arraydecay9, align 4, !tbaa !9
  %12 = load i32, ptr %n1.addr, align 4, !tbaa !9
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom10
  %13 = load i32, ptr %arrayidx11, align 4, !tbaa !9
  %arraydecay12 = getelementptr inbounds [1 x i32], ptr %active, i64 0, i64 0
  %14 = load i32, ptr %arraydecay12, align 4, !tbaa !9
  %or13 = or i32 %14, %13
  store i32 %or13, ptr %arraydecay12, align 4, !tbaa !9
  %15 = load ptr, ptr %g.addr, align 8, !tbaa !5
  %arraydecay14 = getelementptr inbounds [32 x i32], ptr %lab, i64 0, i64 0
  %arraydecay15 = getelementptr inbounds [32 x i32], ptr %ptn, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [1 x i32], ptr %active, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [32 x i32], ptr %orbits, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [50 x i32], ptr %workspace, i64 0, i64 0
  %16 = load i32, ptr %n1.addr, align 4, !tbaa !9
  %17 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %add19 = add nsw i32 %16, %17
  %18 = load ptr, ptr %gcan.addr, align 8, !tbaa !5
  call void @nauty(ptr noundef %15, ptr noundef %arraydecay14, ptr noundef %arraydecay15, ptr noundef %arraydecay16, ptr noundef %arraydecay17, ptr noundef @makecanon.options, ptr noundef %stats, ptr noundef %arraydecay18, i32 noundef 50, i32 noundef 1, i32 noundef %add19, ptr noundef %18)
  call void @llvm.lifetime.end.p0(i64 200, ptr %workspace) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr %stats) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %active) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr %orbits) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr %ptn) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr %lab) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @distinvar(ptr noundef %g, ptr noundef %invar, i32 noundef %n1, i32 noundef %n2) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca ptr, align 8
  %invar.addr = alloca ptr, align 8
  %n1.addr = alloca i32, align 4
  %n2.addr = alloca i32, align 4
  %w = alloca i32, align 4
  %n = alloca i32, align 4
  %workset = alloca i32, align 4
  %frontier = alloca i32, align 4
  %sofar = alloca i32, align 4
  %inv = alloca i32, align 4
  %d = alloca i32, align 4
  %v = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8, !tbaa !5
  store ptr %invar, ptr %invar.addr, align 8, !tbaa !5
  store i32 %n1, ptr %n1.addr, align 4, !tbaa !9
  store i32 %n2, ptr %n2.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %workset) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %frontier) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %sofar) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %inv) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #7
  %0 = load i32, ptr %n1.addr, align 4, !tbaa !9
  %1 = load i32, ptr %n2.addr, align 4, !tbaa !9
  %add = add nsw i32 %0, %1
  store i32 %add, ptr %n, align 4, !tbaa !9
  %2 = load i32, ptr %n, align 4, !tbaa !9
  %sub = sub nsw i32 %2, 1
  store i32 %sub, ptr %v, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc67, %entry
  %3 = load i32, ptr %v, align 4, !tbaa !9
  %4 = load i32, ptr %n1.addr, align 4, !tbaa !9
  %cmp = icmp sge i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end68

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %inv, align 4, !tbaa !9
  %5 = load i32, ptr %v, align 4, !tbaa !9
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !9
  store i32 %6, ptr %frontier, align 4, !tbaa !9
  store i32 %6, ptr %sofar, align 4, !tbaa !9
  store i32 1, ptr %d, align 4, !tbaa !9
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %7 = load i32, ptr %frontier, align 4, !tbaa !9
  %cmp2 = icmp ne i32 %7, 0
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %workset, align 4, !tbaa !9
  %8 = load i32, ptr %frontier, align 4, !tbaa !9
  %shr = lshr i32 %8, 24
  %and = and i32 %shr, 255
  %idxprom4 = zext i32 %and to i64
  %arrayidx5 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom4
  %9 = load i32, ptr %arrayidx5, align 4, !tbaa !9
  %10 = load i32, ptr %frontier, align 4, !tbaa !9
  %shr6 = lshr i32 %10, 16
  %and7 = and i32 %shr6, 255
  %idxprom8 = zext i32 %and7 to i64
  %arrayidx9 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom8
  %11 = load i32, ptr %arrayidx9, align 4, !tbaa !9
  %add10 = add nsw i32 %9, %11
  %12 = load i32, ptr %frontier, align 4, !tbaa !9
  %shr11 = lshr i32 %12, 8
  %and12 = and i32 %shr11, 255
  %idxprom13 = zext i32 %and12 to i64
  %arrayidx14 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom13
  %13 = load i32, ptr %arrayidx14, align 4, !tbaa !9
  %add15 = add nsw i32 %add10, %13
  %14 = load i32, ptr %frontier, align 4, !tbaa !9
  %and16 = and i32 %14, 255
  %idxprom17 = zext i32 %and16 to i64
  %arrayidx18 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom17
  %15 = load i32, ptr %arrayidx18, align 4, !tbaa !9
  %add19 = add nsw i32 %add15, %15
  %16 = load i32, ptr %d, align 4, !tbaa !9
  %add20 = add nsw i32 87, %16
  %xor = xor i32 %add19, %add20
  %17 = load i32, ptr %inv, align 4, !tbaa !9
  %add21 = add nsw i32 %17, %xor
  store i32 %add21, ptr %inv, align 4, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %cond.end49, %for.body3
  %18 = load i32, ptr %frontier, align 4, !tbaa !9
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i32, ptr %frontier, align 4, !tbaa !9
  %and22 = and i32 %19, -65536
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %cond.true, label %cond.false35

cond.true:                                        ; preds = %while.body
  %20 = load i32, ptr %frontier, align 4, !tbaa !9
  %and24 = and i32 %20, -16777216
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %cond.true26, label %cond.false

cond.true26:                                      ; preds = %cond.true
  %21 = load i32, ptr %frontier, align 4, !tbaa !9
  %shr27 = lshr i32 %21, 24
  %and28 = and i32 %shr27, 255
  %idxprom29 = zext i32 %and28 to i64
  %arrayidx30 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom29
  %22 = load i32, ptr %arrayidx30, align 4, !tbaa !9
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %23 = load i32, ptr %frontier, align 4, !tbaa !9
  %shr31 = lshr i32 %23, 16
  %idxprom32 = zext i32 %shr31 to i64
  %arrayidx33 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom32
  %24 = load i32, ptr %arrayidx33, align 4, !tbaa !9
  %add34 = add nsw i32 8, %24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true26
  %cond = phi i32 [ %22, %cond.true26 ], [ %add34, %cond.false ]
  br label %cond.end49

cond.false35:                                     ; preds = %while.body
  %25 = load i32, ptr %frontier, align 4, !tbaa !9
  %and36 = and i32 %25, 65280
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %cond.true38, label %cond.false43

cond.true38:                                      ; preds = %cond.false35
  %26 = load i32, ptr %frontier, align 4, !tbaa !9
  %shr39 = lshr i32 %26, 8
  %idxprom40 = zext i32 %shr39 to i64
  %arrayidx41 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom40
  %27 = load i32, ptr %arrayidx41, align 4, !tbaa !9
  %add42 = add nsw i32 16, %27
  br label %cond.end47

cond.false43:                                     ; preds = %cond.false35
  %28 = load i32, ptr %frontier, align 4, !tbaa !9
  %idxprom44 = zext i32 %28 to i64
  %arrayidx45 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom44
  %29 = load i32, ptr %arrayidx45, align 4, !tbaa !9
  %add46 = add nsw i32 24, %29
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false43, %cond.true38
  %cond48 = phi i32 [ %add42, %cond.true38 ], [ %add46, %cond.false43 ]
  br label %cond.end49

cond.end49:                                       ; preds = %cond.end47, %cond.end
  %cond50 = phi i32 [ %cond, %cond.end ], [ %cond48, %cond.end47 ]
  store i32 %cond50, ptr %w, align 4, !tbaa !9
  %30 = load i32, ptr %w, align 4, !tbaa !9
  %idxprom51 = sext i32 %30 to i64
  %arrayidx52 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom51
  %31 = load i32, ptr %arrayidx52, align 4, !tbaa !9
  %not = xor i32 %31, -1
  %32 = load i32, ptr %frontier, align 4, !tbaa !9
  %and53 = and i32 %32, %not
  store i32 %and53, ptr %frontier, align 4, !tbaa !9
  %33 = load ptr, ptr %g.addr, align 8, !tbaa !5
  %34 = load i32, ptr %w, align 4, !tbaa !9
  %idxprom54 = sext i32 %34 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %33, i64 %idxprom54
  %35 = load i32, ptr %arrayidx55, align 4, !tbaa !9
  %36 = load i32, ptr %workset, align 4, !tbaa !9
  %or = or i32 %36, %35
  store i32 %or, ptr %workset, align 4, !tbaa !9
  br label %while.cond, !llvm.loop !91

while.end:                                        ; preds = %while.cond
  %37 = load i32, ptr %workset, align 4, !tbaa !9
  %38 = load i32, ptr %sofar, align 4, !tbaa !9
  %not56 = xor i32 %38, -1
  %and57 = and i32 %37, %not56
  store i32 %and57, ptr %frontier, align 4, !tbaa !9
  %39 = load i32, ptr %frontier, align 4, !tbaa !9
  %40 = load i32, ptr %sofar, align 4, !tbaa !9
  %or58 = or i32 %40, %39
  store i32 %or58, ptr %sofar, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %41 = load i32, ptr %d, align 4, !tbaa !9
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %d, align 4, !tbaa !9
  br label %for.cond1, !llvm.loop !92

for.end:                                          ; preds = %for.cond1
  %42 = load i32, ptr %inv, align 4, !tbaa !9
  %43 = load ptr, ptr %invar.addr, align 8, !tbaa !5
  %44 = load i32, ptr %v, align 4, !tbaa !9
  %idxprom59 = sext i32 %44 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %43, i64 %idxprom59
  store i32 %42, ptr %arrayidx60, align 4, !tbaa !9
  %45 = load i32, ptr %v, align 4, !tbaa !9
  %46 = load i32, ptr %n, align 4, !tbaa !9
  %sub61 = sub nsw i32 %46, 1
  %cmp62 = icmp slt i32 %45, %sub61
  br i1 %cmp62, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %47 = load i32, ptr %inv, align 4, !tbaa !9
  %48 = load ptr, ptr %invar.addr, align 8, !tbaa !5
  %49 = load i32, ptr %n, align 4, !tbaa !9
  %sub63 = sub nsw i32 %49, 1
  %idxprom64 = sext i32 %sub63 to i64
  %arrayidx65 = getelementptr inbounds i32, ptr %48, i64 %idxprom64
  %50 = load i32, ptr %arrayidx65, align 4, !tbaa !9
  %cmp66 = icmp sgt i32 %47, %50
  br i1 %cmp66, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %for.end
  br label %for.inc67

for.inc67:                                        ; preds = %if.end
  %51 = load i32, ptr %v, align 4, !tbaa !9
  %dec = add nsw i32 %51, -1
  store i32 %dec, ptr %v, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !93

for.end68:                                        ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end68, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %inv) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %sofar) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %frontier) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %workset) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #7
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal void @refinex(ptr noundef %g, ptr noundef %lab, ptr noundef %ptn, i32 noundef %level, ptr noundef %numcells, ptr noundef %count, ptr noundef %active, i32 noundef %goodret, ptr noundef %code, i32 noundef %m, i32 noundef %n) #0 {
entry:
  %g.addr = alloca ptr, align 8
  %lab.addr = alloca ptr, align 8
  %ptn.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %numcells.addr = alloca ptr, align 8
  %count.addr = alloca ptr, align 8
  %active.addr = alloca ptr, align 8
  %goodret.addr = alloca i32, align 4
  %code.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %labc1 = alloca i32, align 4
  %x = alloca i32, align 4
  %split1 = alloca i32, align 4
  %split2 = alloca i32, align 4
  %cell1 = alloca i32, align 4
  %cell2 = alloca i32, align 4
  %cnt = alloca i32, align 4
  %bmin = alloca i32, align 4
  %bmax = alloca i32, align 4
  %gptr = alloca ptr, align 8
  %workset = alloca i32, align 4
  %workperm = alloca [32 x i32], align 16
  %bucket = alloca [34 x i32], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8, !tbaa !5
  store ptr %lab, ptr %lab.addr, align 8, !tbaa !5
  store ptr %ptn, ptr %ptn.addr, align 8, !tbaa !5
  store i32 %level, ptr %level.addr, align 4, !tbaa !9
  store ptr %numcells, ptr %numcells.addr, align 8, !tbaa !5
  store ptr %count, ptr %count.addr, align 8, !tbaa !5
  store ptr %active, ptr %active.addr, align 8, !tbaa !5
  store i32 %goodret, ptr %goodret.addr, align 4, !tbaa !9
  store ptr %code, ptr %code.addr, align 8, !tbaa !5
  store i32 %m, ptr %m.addr, align 4, !tbaa !9
  store i32 %n, ptr %n.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %c1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %c2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %labc1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %split1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %split2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %cell1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %cell2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %bmin) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %bmax) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gptr) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %workset) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr %workperm) #7
  call void @llvm.lifetime.start.p0(i64 136, ptr %bucket) #7
  %0 = load i32, ptr %n.addr, align 4, !tbaa !9
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %code.addr, align 8, !tbaa !5
  store i32 1, ptr %1, align 4, !tbaa !9
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %code.addr, align 8, !tbaa !5
  store i32 0, ptr %2, align 4, !tbaa !9
  store i32 -1, ptr %split1, align 4, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %if.end254, %if.end
  %3 = load ptr, ptr %numcells.addr, align 8, !tbaa !5
  %4 = load i32, ptr %3, align 4, !tbaa !9
  %5 = load i32, ptr %n.addr, align 4, !tbaa !9
  %cmp1 = icmp slt i32 %4, %5
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %active.addr, align 8, !tbaa !5
  %7 = load i32, ptr %split1, align 4, !tbaa !9
  %call = call i32 @nextelement(ptr noundef %6, i32 noundef 1, i32 noundef %7)
  store i32 %call, ptr %split1, align 4, !tbaa !9
  %cmp2 = icmp sge i32 %call, 0
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %8 = load ptr, ptr %active.addr, align 8, !tbaa !5
  %call3 = call i32 @nextelement(ptr noundef %8, i32 noundef 1, i32 noundef -1)
  store i32 %call3, ptr %split1, align 4, !tbaa !9
  %cmp4 = icmp sge i32 %call3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %9 = phi i1 [ true, %land.rhs ], [ %cmp4, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %9, %lor.end ]
  br i1 %10, label %while.body, label %while.end255

while.body:                                       ; preds = %land.end
  %11 = load i32, ptr %split1, align 4, !tbaa !9
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom
  %12 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %not = xor i32 %12, -1
  %13 = load ptr, ptr %active.addr, align 8, !tbaa !5
  %14 = load i32, ptr %13, align 4, !tbaa !9
  %and = and i32 %14, %not
  store i32 %and, ptr %13, align 4, !tbaa !9
  %15 = load i32, ptr %split1, align 4, !tbaa !9
  store i32 %15, ptr %split2, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %16 = load ptr, ptr %ptn.addr, align 8, !tbaa !5
  %17 = load i32, ptr %split2, align 4, !tbaa !9
  %idxprom5 = sext i32 %17 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %16, i64 %idxprom5
  %18 = load i32, ptr %arrayidx6, align 4, !tbaa !9
  %cmp7 = icmp sgt i32 %18, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %split2, align 4, !tbaa !9
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %split2, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !94

for.end:                                          ; preds = %for.cond
  %20 = load i32, ptr %split1, align 4, !tbaa !9
  %21 = load i32, ptr %split2, align 4, !tbaa !9
  %cmp8 = icmp eq i32 %20, %21
  br i1 %cmp8, label %if.then9, label %if.else55

if.then9:                                         ; preds = %for.end
  %22 = load ptr, ptr %g.addr, align 8, !tbaa !5
  %23 = load ptr, ptr %lab.addr, align 8, !tbaa !5
  %24 = load i32, ptr %split1, align 4, !tbaa !9
  %idxprom10 = sext i32 %24 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %23, i64 %idxprom10
  %25 = load i32, ptr %arrayidx11, align 4, !tbaa !9
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i32, ptr %22, i64 %idx.ext
  store ptr %add.ptr, ptr %gptr, align 8, !tbaa !5
  store i32 0, ptr %cell1, align 4, !tbaa !9
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc53, %if.then9
  %26 = load i32, ptr %cell1, align 4, !tbaa !9
  %27 = load i32, ptr %n.addr, align 4, !tbaa !9
  %cmp13 = icmp slt i32 %26, %27
  br i1 %cmp13, label %for.body14, label %for.end54

for.body14:                                       ; preds = %for.cond12
  %28 = load i32, ptr %cell1, align 4, !tbaa !9
  store i32 %28, ptr %cell2, align 4, !tbaa !9
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc20, %for.body14
  %29 = load ptr, ptr %ptn.addr, align 8, !tbaa !5
  %30 = load i32, ptr %cell2, align 4, !tbaa !9
  %idxprom16 = sext i32 %30 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %29, i64 %idxprom16
  %31 = load i32, ptr %arrayidx17, align 4, !tbaa !9
  %cmp18 = icmp sgt i32 %31, 0
  br i1 %cmp18, label %for.body19, label %for.end22

for.body19:                                       ; preds = %for.cond15
  br label %for.inc20

for.inc20:                                        ; preds = %for.body19
  %32 = load i32, ptr %cell2, align 4, !tbaa !9
  %inc21 = add nsw i32 %32, 1
  store i32 %inc21, ptr %cell2, align 4, !tbaa !9
  br label %for.cond15, !llvm.loop !95

for.end22:                                        ; preds = %for.cond15
  %33 = load i32, ptr %cell1, align 4, !tbaa !9
  %34 = load i32, ptr %cell2, align 4, !tbaa !9
  %cmp23 = icmp eq i32 %33, %34
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.end22
  br label %for.inc53

if.end25:                                         ; preds = %for.end22
  %35 = load i32, ptr %cell1, align 4, !tbaa !9
  store i32 %35, ptr %c1, align 4, !tbaa !9
  %36 = load i32, ptr %cell2, align 4, !tbaa !9
  store i32 %36, ptr %c2, align 4, !tbaa !9
  br label %while.cond26

while.cond26:                                     ; preds = %if.end43, %if.end25
  %37 = load i32, ptr %c1, align 4, !tbaa !9
  %38 = load i32, ptr %c2, align 4, !tbaa !9
  %cmp27 = icmp sle i32 %37, %38
  br i1 %cmp27, label %while.body28, label %while.end

while.body28:                                     ; preds = %while.cond26
  %39 = load ptr, ptr %lab.addr, align 8, !tbaa !5
  %40 = load i32, ptr %c1, align 4, !tbaa !9
  %idxprom29 = sext i32 %40 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %39, i64 %idxprom29
  %41 = load i32, ptr %arrayidx30, align 4, !tbaa !9
  store i32 %41, ptr %labc1, align 4, !tbaa !9
  %42 = load ptr, ptr %gptr, align 8, !tbaa !5
  %43 = load i32, ptr %42, align 4, !tbaa !9
  %44 = load i32, ptr %labc1, align 4, !tbaa !9
  %idxprom31 = sext i32 %44 to i64
  %arrayidx32 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom31
  %45 = load i32, ptr %arrayidx32, align 4, !tbaa !9
  %and33 = and i32 %43, %45
  %cmp34 = icmp ne i32 %and33, 0
  br i1 %cmp34, label %if.then35, label %if.else

if.then35:                                        ; preds = %while.body28
  %46 = load i32, ptr %c1, align 4, !tbaa !9
  %inc36 = add nsw i32 %46, 1
  store i32 %inc36, ptr %c1, align 4, !tbaa !9
  br label %if.end43

if.else:                                          ; preds = %while.body28
  %47 = load ptr, ptr %lab.addr, align 8, !tbaa !5
  %48 = load i32, ptr %c2, align 4, !tbaa !9
  %idxprom37 = sext i32 %48 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %47, i64 %idxprom37
  %49 = load i32, ptr %arrayidx38, align 4, !tbaa !9
  %50 = load ptr, ptr %lab.addr, align 8, !tbaa !5
  %51 = load i32, ptr %c1, align 4, !tbaa !9
  %idxprom39 = sext i32 %51 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %50, i64 %idxprom39
  store i32 %49, ptr %arrayidx40, align 4, !tbaa !9
  %52 = load i32, ptr %labc1, align 4, !tbaa !9
  %53 = load ptr, ptr %lab.addr, align 8, !tbaa !5
  %54 = load i32, ptr %c2, align 4, !tbaa !9
  %idxprom41 = sext i32 %54 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %53, i64 %idxprom41
  store i32 %52, ptr %arrayidx42, align 4, !tbaa !9
  %55 = load i32, ptr %c2, align 4, !tbaa !9
  %dec = add nsw i32 %55, -1
  store i32 %dec, ptr %c2, align 4, !tbaa !9
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then35
  br label %while.cond26, !llvm.loop !96

while.end:                                        ; preds = %while.cond26
  %56 = load i32, ptr %c2, align 4, !tbaa !9
  %57 = load i32, ptr %cell1, align 4, !tbaa !9
  %cmp44 = icmp sge i32 %56, %57
  br i1 %cmp44, label %land.lhs.true, label %if.end52

land.lhs.true:                                    ; preds = %while.end
  %58 = load i32, ptr %c1, align 4, !tbaa !9
  %59 = load i32, ptr %cell2, align 4, !tbaa !9
  %cmp45 = icmp sle i32 %58, %59
  br i1 %cmp45, label %if.then46, label %if.end52

if.then46:                                        ; preds = %land.lhs.true
  %60 = load ptr, ptr %ptn.addr, align 8, !tbaa !5
  %61 = load i32, ptr %c2, align 4, !tbaa !9
  %idxprom47 = sext i32 %61 to i64
  %arrayidx48 = getelementptr inbounds i32, ptr %60, i64 %idxprom47
  store i32 0, ptr %arrayidx48, align 4, !tbaa !9
  %62 = load ptr, ptr %numcells.addr, align 8, !tbaa !5
  %63 = load i32, ptr %62, align 4, !tbaa !9
  %inc49 = add nsw i32 %63, 1
  store i32 %inc49, ptr %62, align 4, !tbaa !9
  %64 = load i32, ptr %c1, align 4, !tbaa !9
  %idxprom50 = sext i32 %64 to i64
  %arrayidx51 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom50
  %65 = load i32, ptr %arrayidx51, align 4, !tbaa !9
  %66 = load ptr, ptr %active.addr, align 8, !tbaa !5
  %67 = load i32, ptr %66, align 4, !tbaa !9
  %or = or i32 %67, %65
  store i32 %or, ptr %66, align 4, !tbaa !9
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %land.lhs.true, %while.end
  br label %for.inc53

for.inc53:                                        ; preds = %if.end52, %if.then24
  %68 = load i32, ptr %cell2, align 4, !tbaa !9
  %add = add nsw i32 %68, 1
  store i32 %add, ptr %cell1, align 4, !tbaa !9
  br label %for.cond12, !llvm.loop !97

for.end54:                                        ; preds = %for.cond12
  br label %if.end220

if.else55:                                        ; preds = %for.end
  store i32 0, ptr %workset, align 4, !tbaa !9
  %69 = load i32, ptr %split1, align 4, !tbaa !9
  store i32 %69, ptr %i, align 4, !tbaa !9
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc64, %if.else55
  %70 = load i32, ptr %i, align 4, !tbaa !9
  %71 = load i32, ptr %split2, align 4, !tbaa !9
  %cmp57 = icmp sle i32 %70, %71
  br i1 %cmp57, label %for.body58, label %for.end66

for.body58:                                       ; preds = %for.cond56
  %72 = load ptr, ptr %lab.addr, align 8, !tbaa !5
  %73 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom59 = sext i32 %73 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %72, i64 %idxprom59
  %74 = load i32, ptr %arrayidx60, align 4, !tbaa !9
  %idxprom61 = sext i32 %74 to i64
  %arrayidx62 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom61
  %75 = load i32, ptr %arrayidx62, align 4, !tbaa !9
  %76 = load i32, ptr %workset, align 4, !tbaa !9
  %or63 = or i32 %76, %75
  store i32 %or63, ptr %workset, align 4, !tbaa !9
  br label %for.inc64

for.inc64:                                        ; preds = %for.body58
  %77 = load i32, ptr %i, align 4, !tbaa !9
  %inc65 = add nsw i32 %77, 1
  store i32 %inc65, ptr %i, align 4, !tbaa !9
  br label %for.cond56, !llvm.loop !98

for.end66:                                        ; preds = %for.cond56
  store i32 0, ptr %cell1, align 4, !tbaa !9
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc217, %for.end66
  %78 = load i32, ptr %cell1, align 4, !tbaa !9
  %79 = load i32, ptr %n.addr, align 4, !tbaa !9
  %cmp68 = icmp slt i32 %78, %79
  br i1 %cmp68, label %for.body69, label %for.end219

for.body69:                                       ; preds = %for.cond67
  %80 = load i32, ptr %cell1, align 4, !tbaa !9
  store i32 %80, ptr %cell2, align 4, !tbaa !9
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc75, %for.body69
  %81 = load ptr, ptr %ptn.addr, align 8, !tbaa !5
  %82 = load i32, ptr %cell2, align 4, !tbaa !9
  %idxprom71 = sext i32 %82 to i64
  %arrayidx72 = getelementptr inbounds i32, ptr %81, i64 %idxprom71
  %83 = load i32, ptr %arrayidx72, align 4, !tbaa !9
  %cmp73 = icmp sgt i32 %83, 0
  br i1 %cmp73, label %for.body74, label %for.end77

for.body74:                                       ; preds = %for.cond70
  br label %for.inc75

for.inc75:                                        ; preds = %for.body74
  %84 = load i32, ptr %cell2, align 4, !tbaa !9
  %inc76 = add nsw i32 %84, 1
  store i32 %inc76, ptr %cell2, align 4, !tbaa !9
  br label %for.cond70, !llvm.loop !99

for.end77:                                        ; preds = %for.cond70
  %85 = load i32, ptr %cell1, align 4, !tbaa !9
  %86 = load i32, ptr %cell2, align 4, !tbaa !9
  %cmp78 = icmp eq i32 %85, %86
  br i1 %cmp78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %for.end77
  br label %for.inc217

if.end80:                                         ; preds = %for.end77
  %87 = load i32, ptr %cell1, align 4, !tbaa !9
  store i32 %87, ptr %i, align 4, !tbaa !9
  %88 = load i32, ptr %workset, align 4, !tbaa !9
  %89 = load ptr, ptr %g.addr, align 8, !tbaa !5
  %90 = load ptr, ptr %lab.addr, align 8, !tbaa !5
  %91 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom81 = sext i32 %91 to i64
  %arrayidx82 = getelementptr inbounds i32, ptr %90, i64 %idxprom81
  %92 = load i32, ptr %arrayidx82, align 4, !tbaa !9
  %idxprom83 = sext i32 %92 to i64
  %arrayidx84 = getelementptr inbounds i32, ptr %89, i64 %idxprom83
  %93 = load i32, ptr %arrayidx84, align 4, !tbaa !9
  %and85 = and i32 %88, %93
  store i32 %and85, ptr %x, align 4, !tbaa !9
  %tobool = icmp ne i32 %and85, 0
  br i1 %tobool, label %if.then86, label %if.else104

if.then86:                                        ; preds = %if.end80
  %94 = load i32, ptr %x, align 4, !tbaa !9
  %shr = lshr i32 %94, 24
  %and87 = and i32 %shr, 255
  %idxprom88 = zext i32 %and87 to i64
  %arrayidx89 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom88
  %95 = load i32, ptr %arrayidx89, align 4, !tbaa !9
  %96 = load i32, ptr %x, align 4, !tbaa !9
  %shr90 = lshr i32 %96, 16
  %and91 = and i32 %shr90, 255
  %idxprom92 = zext i32 %and91 to i64
  %arrayidx93 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom92
  %97 = load i32, ptr %arrayidx93, align 4, !tbaa !9
  %add94 = add nsw i32 %95, %97
  %98 = load i32, ptr %x, align 4, !tbaa !9
  %shr95 = lshr i32 %98, 8
  %and96 = and i32 %shr95, 255
  %idxprom97 = zext i32 %and96 to i64
  %arrayidx98 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom97
  %99 = load i32, ptr %arrayidx98, align 4, !tbaa !9
  %add99 = add nsw i32 %add94, %99
  %100 = load i32, ptr %x, align 4, !tbaa !9
  %and100 = and i32 %100, 255
  %idxprom101 = zext i32 %and100 to i64
  %arrayidx102 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom101
  %101 = load i32, ptr %arrayidx102, align 4, !tbaa !9
  %add103 = add nsw i32 %add99, %101
  store i32 %add103, ptr %cnt, align 4, !tbaa !9
  br label %if.end105

if.else104:                                       ; preds = %if.end80
  store i32 0, ptr %cnt, align 4, !tbaa !9
  br label %if.end105

if.end105:                                        ; preds = %if.else104, %if.then86
  %102 = load i32, ptr %cnt, align 4, !tbaa !9
  store i32 %102, ptr %bmax, align 4, !tbaa !9
  store i32 %102, ptr %bmin, align 4, !tbaa !9
  %103 = load ptr, ptr %count.addr, align 8, !tbaa !5
  %104 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom106 = sext i32 %104 to i64
  %arrayidx107 = getelementptr inbounds i32, ptr %103, i64 %idxprom106
  store i32 %102, ptr %arrayidx107, align 4, !tbaa !9
  %105 = load i32, ptr %cnt, align 4, !tbaa !9
  %idxprom108 = sext i32 %105 to i64
  %arrayidx109 = getelementptr inbounds [34 x i32], ptr %bucket, i64 0, i64 %idxprom108
  store i32 1, ptr %arrayidx109, align 4, !tbaa !9
  br label %while.cond110

while.cond110:                                    ; preds = %while.end154, %if.end105
  %106 = load i32, ptr %i, align 4, !tbaa !9
  %inc111 = add nsw i32 %106, 1
  store i32 %inc111, ptr %i, align 4, !tbaa !9
  %107 = load i32, ptr %cell2, align 4, !tbaa !9
  %cmp112 = icmp sle i32 %inc111, %107
  br i1 %cmp112, label %while.body113, label %while.end160

while.body113:                                    ; preds = %while.cond110
  %108 = load i32, ptr %workset, align 4, !tbaa !9
  %109 = load ptr, ptr %g.addr, align 8, !tbaa !5
  %110 = load ptr, ptr %lab.addr, align 8, !tbaa !5
  %111 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom114 = sext i32 %111 to i64
  %arrayidx115 = getelementptr inbounds i32, ptr %110, i64 %idxprom114
  %112 = load i32, ptr %arrayidx115, align 4, !tbaa !9
  %idxprom116 = sext i32 %112 to i64
  %arrayidx117 = getelementptr inbounds i32, ptr %109, i64 %idxprom116
  %113 = load i32, ptr %arrayidx117, align 4, !tbaa !9
  %and118 = and i32 %108, %113
  store i32 %and118, ptr %x, align 4, !tbaa !9
  %tobool119 = icmp ne i32 %and118, 0
  br i1 %tobool119, label %if.then120, label %if.else139

if.then120:                                       ; preds = %while.body113
  %114 = load i32, ptr %x, align 4, !tbaa !9
  %shr121 = lshr i32 %114, 24
  %and122 = and i32 %shr121, 255
  %idxprom123 = zext i32 %and122 to i64
  %arrayidx124 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom123
  %115 = load i32, ptr %arrayidx124, align 4, !tbaa !9
  %116 = load i32, ptr %x, align 4, !tbaa !9
  %shr125 = lshr i32 %116, 16
  %and126 = and i32 %shr125, 255
  %idxprom127 = zext i32 %and126 to i64
  %arrayidx128 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom127
  %117 = load i32, ptr %arrayidx128, align 4, !tbaa !9
  %add129 = add nsw i32 %115, %117
  %118 = load i32, ptr %x, align 4, !tbaa !9
  %shr130 = lshr i32 %118, 8
  %and131 = and i32 %shr130, 255
  %idxprom132 = zext i32 %and131 to i64
  %arrayidx133 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom132
  %119 = load i32, ptr %arrayidx133, align 4, !tbaa !9
  %add134 = add nsw i32 %add129, %119
  %120 = load i32, ptr %x, align 4, !tbaa !9
  %and135 = and i32 %120, 255
  %idxprom136 = zext i32 %and135 to i64
  %arrayidx137 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom136
  %121 = load i32, ptr %arrayidx137, align 4, !tbaa !9
  %add138 = add nsw i32 %add134, %121
  store i32 %add138, ptr %cnt, align 4, !tbaa !9
  br label %if.end140

if.else139:                                       ; preds = %while.body113
  store i32 0, ptr %cnt, align 4, !tbaa !9
  br label %if.end140

if.end140:                                        ; preds = %if.else139, %if.then120
  br label %while.cond141

while.cond141:                                    ; preds = %while.body143, %if.end140
  %122 = load i32, ptr %bmin, align 4, !tbaa !9
  %123 = load i32, ptr %cnt, align 4, !tbaa !9
  %cmp142 = icmp sgt i32 %122, %123
  br i1 %cmp142, label %while.body143, label %while.end147

while.body143:                                    ; preds = %while.cond141
  %124 = load i32, ptr %bmin, align 4, !tbaa !9
  %dec144 = add nsw i32 %124, -1
  store i32 %dec144, ptr %bmin, align 4, !tbaa !9
  %idxprom145 = sext i32 %dec144 to i64
  %arrayidx146 = getelementptr inbounds [34 x i32], ptr %bucket, i64 0, i64 %idxprom145
  store i32 0, ptr %arrayidx146, align 4, !tbaa !9
  br label %while.cond141, !llvm.loop !100

while.end147:                                     ; preds = %while.cond141
  br label %while.cond148

while.cond148:                                    ; preds = %while.body150, %while.end147
  %125 = load i32, ptr %bmax, align 4, !tbaa !9
  %126 = load i32, ptr %cnt, align 4, !tbaa !9
  %cmp149 = icmp slt i32 %125, %126
  br i1 %cmp149, label %while.body150, label %while.end154

while.body150:                                    ; preds = %while.cond148
  %127 = load i32, ptr %bmax, align 4, !tbaa !9
  %inc151 = add nsw i32 %127, 1
  store i32 %inc151, ptr %bmax, align 4, !tbaa !9
  %idxprom152 = sext i32 %inc151 to i64
  %arrayidx153 = getelementptr inbounds [34 x i32], ptr %bucket, i64 0, i64 %idxprom152
  store i32 0, ptr %arrayidx153, align 4, !tbaa !9
  br label %while.cond148, !llvm.loop !101

while.end154:                                     ; preds = %while.cond148
  %128 = load i32, ptr %cnt, align 4, !tbaa !9
  %idxprom155 = sext i32 %128 to i64
  %arrayidx156 = getelementptr inbounds [34 x i32], ptr %bucket, i64 0, i64 %idxprom155
  %129 = load i32, ptr %arrayidx156, align 4, !tbaa !9
  %inc157 = add nsw i32 %129, 1
  store i32 %inc157, ptr %arrayidx156, align 4, !tbaa !9
  %130 = load i32, ptr %cnt, align 4, !tbaa !9
  %131 = load ptr, ptr %count.addr, align 8, !tbaa !5
  %132 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom158 = sext i32 %132 to i64
  %arrayidx159 = getelementptr inbounds i32, ptr %131, i64 %idxprom158
  store i32 %130, ptr %arrayidx159, align 4, !tbaa !9
  br label %while.cond110, !llvm.loop !102

while.end160:                                     ; preds = %while.cond110
  %133 = load i32, ptr %bmin, align 4, !tbaa !9
  %134 = load i32, ptr %bmax, align 4, !tbaa !9
  %cmp161 = icmp eq i32 %133, %134
  br i1 %cmp161, label %if.then162, label %if.end163

if.then162:                                       ; preds = %while.end160
  br label %for.inc217

if.end163:                                        ; preds = %while.end160
  %135 = load i32, ptr %cell1, align 4, !tbaa !9
  store i32 %135, ptr %c1, align 4, !tbaa !9
  %136 = load i32, ptr %bmin, align 4, !tbaa !9
  store i32 %136, ptr %i, align 4, !tbaa !9
  br label %for.cond164

for.cond164:                                      ; preds = %for.inc189, %if.end163
  %137 = load i32, ptr %i, align 4, !tbaa !9
  %138 = load i32, ptr %bmax, align 4, !tbaa !9
  %cmp165 = icmp sle i32 %137, %138
  br i1 %cmp165, label %for.body166, label %for.end191

for.body166:                                      ; preds = %for.cond164
  %139 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom167 = sext i32 %139 to i64
  %arrayidx168 = getelementptr inbounds [34 x i32], ptr %bucket, i64 0, i64 %idxprom167
  %140 = load i32, ptr %arrayidx168, align 4, !tbaa !9
  %tobool169 = icmp ne i32 %140, 0
  br i1 %tobool169, label %if.then170, label %if.end188

if.then170:                                       ; preds = %for.body166
  %141 = load i32, ptr %c1, align 4, !tbaa !9
  %142 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom171 = sext i32 %142 to i64
  %arrayidx172 = getelementptr inbounds [34 x i32], ptr %bucket, i64 0, i64 %idxprom171
  %143 = load i32, ptr %arrayidx172, align 4, !tbaa !9
  %add173 = add nsw i32 %141, %143
  store i32 %add173, ptr %c2, align 4, !tbaa !9
  %144 = load i32, ptr %c1, align 4, !tbaa !9
  %145 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom174 = sext i32 %145 to i64
  %arrayidx175 = getelementptr inbounds [34 x i32], ptr %bucket, i64 0, i64 %idxprom174
  store i32 %144, ptr %arrayidx175, align 4, !tbaa !9
  %146 = load i32, ptr %c1, align 4, !tbaa !9
  %147 = load i32, ptr %cell1, align 4, !tbaa !9
  %cmp176 = icmp ne i32 %146, %147
  br i1 %cmp176, label %if.then177, label %if.end182

if.then177:                                       ; preds = %if.then170
  %148 = load i32, ptr %c1, align 4, !tbaa !9
  %idxprom178 = sext i32 %148 to i64
  %arrayidx179 = getelementptr inbounds [32 x i32], ptr @bit, i64 0, i64 %idxprom178
  %149 = load i32, ptr %arrayidx179, align 4, !tbaa !9
  %150 = load ptr, ptr %active.addr, align 8, !tbaa !5
  %151 = load i32, ptr %150, align 4, !tbaa !9
  %or180 = or i32 %151, %149
  store i32 %or180, ptr %150, align 4, !tbaa !9
  %152 = load ptr, ptr %numcells.addr, align 8, !tbaa !5
  %153 = load i32, ptr %152, align 4, !tbaa !9
  %inc181 = add nsw i32 %153, 1
  store i32 %inc181, ptr %152, align 4, !tbaa !9
  br label %if.end182

if.end182:                                        ; preds = %if.then177, %if.then170
  %154 = load i32, ptr %c2, align 4, !tbaa !9
  %155 = load i32, ptr %cell2, align 4, !tbaa !9
  %cmp183 = icmp sle i32 %154, %155
  br i1 %cmp183, label %if.then184, label %if.end187

if.then184:                                       ; preds = %if.end182
  %156 = load ptr, ptr %ptn.addr, align 8, !tbaa !5
  %157 = load i32, ptr %c2, align 4, !tbaa !9
  %sub = sub nsw i32 %157, 1
  %idxprom185 = sext i32 %sub to i64
  %arrayidx186 = getelementptr inbounds i32, ptr %156, i64 %idxprom185
  store i32 0, ptr %arrayidx186, align 4, !tbaa !9
  br label %if.end187

if.end187:                                        ; preds = %if.then184, %if.end182
  %158 = load i32, ptr %c2, align 4, !tbaa !9
  store i32 %158, ptr %c1, align 4, !tbaa !9
  br label %if.end188

if.end188:                                        ; preds = %if.end187, %for.body166
  br label %for.inc189

for.inc189:                                       ; preds = %if.end188
  %159 = load i32, ptr %i, align 4, !tbaa !9
  %inc190 = add nsw i32 %159, 1
  store i32 %inc190, ptr %i, align 4, !tbaa !9
  br label %for.cond164, !llvm.loop !103

for.end191:                                       ; preds = %for.cond164
  %160 = load i32, ptr %cell1, align 4, !tbaa !9
  store i32 %160, ptr %i, align 4, !tbaa !9
  br label %for.cond192

for.cond192:                                      ; preds = %for.inc204, %for.end191
  %161 = load i32, ptr %i, align 4, !tbaa !9
  %162 = load i32, ptr %cell2, align 4, !tbaa !9
  %cmp193 = icmp sle i32 %161, %162
  br i1 %cmp193, label %for.body194, label %for.end206

for.body194:                                      ; preds = %for.cond192
  %163 = load ptr, ptr %lab.addr, align 8, !tbaa !5
  %164 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom195 = sext i32 %164 to i64
  %arrayidx196 = getelementptr inbounds i32, ptr %163, i64 %idxprom195
  %165 = load i32, ptr %arrayidx196, align 4, !tbaa !9
  %166 = load ptr, ptr %count.addr, align 8, !tbaa !5
  %167 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom197 = sext i32 %167 to i64
  %arrayidx198 = getelementptr inbounds i32, ptr %166, i64 %idxprom197
  %168 = load i32, ptr %arrayidx198, align 4, !tbaa !9
  %idxprom199 = sext i32 %168 to i64
  %arrayidx200 = getelementptr inbounds [34 x i32], ptr %bucket, i64 0, i64 %idxprom199
  %169 = load i32, ptr %arrayidx200, align 4, !tbaa !9
  %inc201 = add nsw i32 %169, 1
  store i32 %inc201, ptr %arrayidx200, align 4, !tbaa !9
  %idxprom202 = sext i32 %169 to i64
  %arrayidx203 = getelementptr inbounds [32 x i32], ptr %workperm, i64 0, i64 %idxprom202
  store i32 %165, ptr %arrayidx203, align 4, !tbaa !9
  br label %for.inc204

for.inc204:                                       ; preds = %for.body194
  %170 = load i32, ptr %i, align 4, !tbaa !9
  %inc205 = add nsw i32 %170, 1
  store i32 %inc205, ptr %i, align 4, !tbaa !9
  br label %for.cond192, !llvm.loop !104

for.end206:                                       ; preds = %for.cond192
  %171 = load i32, ptr %cell1, align 4, !tbaa !9
  store i32 %171, ptr %i, align 4, !tbaa !9
  br label %for.cond207

for.cond207:                                      ; preds = %for.inc214, %for.end206
  %172 = load i32, ptr %i, align 4, !tbaa !9
  %173 = load i32, ptr %cell2, align 4, !tbaa !9
  %cmp208 = icmp sle i32 %172, %173
  br i1 %cmp208, label %for.body209, label %for.end216

for.body209:                                      ; preds = %for.cond207
  %174 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom210 = sext i32 %174 to i64
  %arrayidx211 = getelementptr inbounds [32 x i32], ptr %workperm, i64 0, i64 %idxprom210
  %175 = load i32, ptr %arrayidx211, align 4, !tbaa !9
  %176 = load ptr, ptr %lab.addr, align 8, !tbaa !5
  %177 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom212 = sext i32 %177 to i64
  %arrayidx213 = getelementptr inbounds i32, ptr %176, i64 %idxprom212
  store i32 %175, ptr %arrayidx213, align 4, !tbaa !9
  br label %for.inc214

for.inc214:                                       ; preds = %for.body209
  %178 = load i32, ptr %i, align 4, !tbaa !9
  %inc215 = add nsw i32 %178, 1
  store i32 %inc215, ptr %i, align 4, !tbaa !9
  br label %for.cond207, !llvm.loop !105

for.end216:                                       ; preds = %for.cond207
  br label %for.inc217

for.inc217:                                       ; preds = %for.end216, %if.then162, %if.then79
  %179 = load i32, ptr %cell2, align 4, !tbaa !9
  %add218 = add nsw i32 %179, 1
  store i32 %add218, ptr %cell1, align 4, !tbaa !9
  br label %for.cond67, !llvm.loop !106

for.end219:                                       ; preds = %for.cond67
  br label %if.end220

if.end220:                                        ; preds = %for.end219, %for.end54
  %180 = load ptr, ptr %ptn.addr, align 8, !tbaa !5
  %181 = load i32, ptr %n.addr, align 4, !tbaa !9
  %sub221 = sub nsw i32 %181, 2
  %idxprom222 = sext i32 %sub221 to i64
  %arrayidx223 = getelementptr inbounds i32, ptr %180, i64 %idxprom222
  %182 = load i32, ptr %arrayidx223, align 4, !tbaa !9
  %cmp224 = icmp eq i32 %182, 0
  br i1 %cmp224, label %if.then225, label %if.else237

if.then225:                                       ; preds = %if.end220
  %183 = load ptr, ptr %lab.addr, align 8, !tbaa !5
  %184 = load i32, ptr %n.addr, align 4, !tbaa !9
  %sub226 = sub nsw i32 %184, 1
  %idxprom227 = sext i32 %sub226 to i64
  %arrayidx228 = getelementptr inbounds i32, ptr %183, i64 %idxprom227
  %185 = load i32, ptr %arrayidx228, align 4, !tbaa !9
  %186 = load i32, ptr %n.addr, align 4, !tbaa !9
  %sub229 = sub nsw i32 %186, 1
  %cmp230 = icmp eq i32 %185, %sub229
  br i1 %cmp230, label %if.then231, label %if.else235

if.then231:                                       ; preds = %if.then225
  %187 = load ptr, ptr %code.addr, align 8, !tbaa !5
  store i32 1, ptr %187, align 4, !tbaa !9
  %188 = load i32, ptr %goodret.addr, align 4, !tbaa !9
  %tobool232 = icmp ne i32 %188, 0
  br i1 %tobool232, label %if.then233, label %if.end234

if.then233:                                       ; preds = %if.then231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end234:                                        ; preds = %if.then231
  br label %if.end236

if.else235:                                       ; preds = %if.then225
  %189 = load ptr, ptr %code.addr, align 8, !tbaa !5
  store i32 -1, ptr %189, align 4, !tbaa !9
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end236:                                        ; preds = %if.end234
  br label %if.end254

if.else237:                                       ; preds = %if.end220
  %190 = load i32, ptr %n.addr, align 4, !tbaa !9
  %sub238 = sub nsw i32 %190, 1
  store i32 %sub238, ptr %i, align 4, !tbaa !9
  br label %while.cond239

while.cond239:                                    ; preds = %if.end252, %if.else237
  br label %while.body240

while.body240:                                    ; preds = %while.cond239
  %191 = load ptr, ptr %lab.addr, align 8, !tbaa !5
  %192 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom241 = sext i32 %192 to i64
  %arrayidx242 = getelementptr inbounds i32, ptr %191, i64 %idxprom241
  %193 = load i32, ptr %arrayidx242, align 4, !tbaa !9
  %194 = load i32, ptr %n.addr, align 4, !tbaa !9
  %sub243 = sub nsw i32 %194, 1
  %cmp244 = icmp eq i32 %193, %sub243
  br i1 %cmp244, label %if.then245, label %if.end246

if.then245:                                       ; preds = %while.body240
  br label %while.end253

if.end246:                                        ; preds = %while.body240
  %195 = load i32, ptr %i, align 4, !tbaa !9
  %dec247 = add nsw i32 %195, -1
  store i32 %dec247, ptr %i, align 4, !tbaa !9
  %196 = load ptr, ptr %ptn.addr, align 8, !tbaa !5
  %197 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom248 = sext i32 %197 to i64
  %arrayidx249 = getelementptr inbounds i32, ptr %196, i64 %idxprom248
  %198 = load i32, ptr %arrayidx249, align 4, !tbaa !9
  %cmp250 = icmp eq i32 %198, 0
  br i1 %cmp250, label %if.then251, label %if.end252

if.then251:                                       ; preds = %if.end246
  %199 = load ptr, ptr %code.addr, align 8, !tbaa !5
  store i32 -1, ptr %199, align 4, !tbaa !9
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end252:                                        ; preds = %if.end246
  br label %while.cond239, !llvm.loop !107

while.end253:                                     ; preds = %if.then245
  br label %if.end254

if.end254:                                        ; preds = %while.end253, %if.end236
  br label %while.cond, !llvm.loop !108

while.end255:                                     ; preds = %land.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end255, %if.then251, %if.else235, %if.then233, %if.then
  call void @llvm.lifetime.end.p0(i64 136, ptr %bucket) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr %workperm) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %workset) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gptr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %bmax) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %bmin) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %cell2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %cell1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %split2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %split1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %labc1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %c2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %c1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare void @nauty(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare i32 @nextelement(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @userautomproc(i32 noundef %count, ptr noundef %p, ptr noundef %orbits, i32 noundef %numorbits, i32 noundef %stabvertex, i32 noundef %n) #0 {
entry:
  %count.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %orbits.addr = alloca ptr, align 8
  %numorbits.addr = alloca i32, align 4
  %stabvertex.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %moved = alloca i32, align 4
  %pxi = alloca i32, align 4
  %pi = alloca i32, align 4
  %w = alloca i32, align 4
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %xorb = alloca ptr, align 8
  store i32 %count, ptr %count.addr, align 4, !tbaa !9
  store ptr %p, ptr %p.addr, align 8, !tbaa !5
  store ptr %orbits, ptr %orbits.addr, align 8, !tbaa !5
  store i32 %numorbits, ptr %numorbits.addr, align 4, !tbaa !9
  store i32 %stabvertex, ptr %stabvertex.addr, align 4, !tbaa !9
  store i32 %n, ptr %n.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %moved) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %pxi) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %pi) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %xorb) #7
  %0 = load i32, ptr %n.addr, align 4, !tbaa !9
  %1 = load i32, ptr @n1, align 4, !tbaa !9
  %sub = sub nsw i32 %0, %1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [32 x %struct.leveldata], ptr @data, i64 0, i64 %idxprom
  %xorb1 = getelementptr inbounds %struct.leveldata, ptr %arrayidx, i32 0, i32 6
  %2 = load ptr, ptr %xorb1, align 8, !tbaa !32
  store ptr %2, ptr %xorb, align 8, !tbaa !5
  %3 = load i32, ptr %n.addr, align 4, !tbaa !9
  %4 = load i32, ptr @n1, align 4, !tbaa !9
  %sub2 = sub nsw i32 %3, %4
  %idxprom3 = sext i32 %sub2 to i64
  %arrayidx4 = getelementptr inbounds [32 x %struct.leveldata], ptr @data, i64 0, i64 %idxprom3
  %lo5 = getelementptr inbounds %struct.leveldata, ptr %arrayidx4, i32 0, i32 4
  %5 = load i32, ptr %lo5, align 16, !tbaa !60
  store i32 %5, ptr %lo, align 4, !tbaa !9
  %6 = load i32, ptr %n.addr, align 4, !tbaa !9
  %7 = load i32, ptr @n1, align 4, !tbaa !9
  %sub6 = sub nsw i32 %6, %7
  %idxprom7 = sext i32 %sub6 to i64
  %arrayidx8 = getelementptr inbounds [32 x %struct.leveldata], ptr @data, i64 0, i64 %idxprom7
  %hi9 = getelementptr inbounds %struct.leveldata, ptr %arrayidx8, i32 0, i32 5
  %8 = load i32, ptr %hi9, align 4, !tbaa !61
  store i32 %8, ptr %hi, align 4, !tbaa !9
  %9 = load i32, ptr %count.addr, align 4, !tbaa !9
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, ptr %lo, align 4, !tbaa !9
  store i32 %10, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32, ptr %i, align 4, !tbaa !9
  %12 = load i32, ptr %hi, align 4, !tbaa !9
  %cmp10 = icmp slt i32 %11, %12
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, ptr %i, align 4, !tbaa !9
  %14 = load ptr, ptr %xorb, align 8, !tbaa !5
  %15 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %14, i64 %idxprom11
  store i32 %13, ptr %arrayidx12, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !109

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  store i32 0, ptr %moved, align 4, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc23, %if.end
  %17 = load i32, ptr %i, align 4, !tbaa !9
  %18 = load i32, ptr %n.addr, align 4, !tbaa !9
  %cmp14 = icmp slt i32 %17, %18
  br i1 %cmp14, label %for.body15, label %for.end25

for.body15:                                       ; preds = %for.cond13
  %19 = load ptr, ptr %p.addr, align 8, !tbaa !5
  %20 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %19, i64 %idxprom16
  %21 = load i32, ptr %arrayidx17, align 4, !tbaa !9
  %22 = load i32, ptr %i, align 4, !tbaa !9
  %cmp18 = icmp ne i32 %21, %22
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %for.body15
  %23 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom20 = sext i32 %23 to i64
  %arrayidx21 = getelementptr inbounds [24 x i32], ptr @xbit, i64 0, i64 %idxprom20
  %24 = load i32, ptr %arrayidx21, align 4, !tbaa !9
  %25 = load i32, ptr %moved, align 4, !tbaa !9
  %or = or i32 %25, %24
  store i32 %or, ptr %moved, align 4, !tbaa !9
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %for.body15
  br label %for.inc23

for.inc23:                                        ; preds = %if.end22
  %26 = load i32, ptr %i, align 4, !tbaa !9
  %inc24 = add nsw i32 %26, 1
  store i32 %inc24, ptr %i, align 4, !tbaa !9
  br label %for.cond13, !llvm.loop !110

for.end25:                                        ; preds = %for.cond13
  %27 = load i32, ptr %lo, align 4, !tbaa !9
  store i32 %27, ptr %i, align 4, !tbaa !9
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc107, %for.end25
  %28 = load i32, ptr %i, align 4, !tbaa !9
  %29 = load i32, ptr %hi, align 4, !tbaa !9
  %cmp27 = icmp slt i32 %28, %29
  br i1 %cmp27, label %for.body28, label %for.end109

for.body28:                                       ; preds = %for.cond26
  %30 = load ptr, ptr @xset, align 8, !tbaa !5
  %31 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom29 = sext i32 %31 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %30, i64 %idxprom29
  %32 = load i32, ptr %arrayidx30, align 4, !tbaa !9
  %33 = load i32, ptr %moved, align 4, !tbaa !9
  %and = and i32 %32, %33
  store i32 %and, ptr %w, align 4, !tbaa !9
  %cmp31 = icmp eq i32 %and, 0
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %for.body28
  br label %for.inc107

if.end33:                                         ; preds = %for.body28
  %34 = load ptr, ptr @xset, align 8, !tbaa !5
  %35 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom34 = sext i32 %35 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %34, i64 %idxprom34
  %36 = load i32, ptr %arrayidx35, align 4, !tbaa !9
  %37 = load i32, ptr %moved, align 4, !tbaa !9
  %not = xor i32 %37, -1
  %and36 = and i32 %36, %not
  store i32 %and36, ptr %pxi, align 4, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %cond.end56, %if.end33
  %38 = load i32, ptr %w, align 4, !tbaa !9
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load i32, ptr %w, align 4, !tbaa !9
  %and37 = and i32 %39, 255
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %40 = load i32, ptr %w, align 4, !tbaa !9
  %and39 = and i32 %40, 255
  %idxprom40 = sext i32 %and39 to i64
  %arrayidx41 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom40
  %41 = load i32, ptr %arrayidx41, align 4, !tbaa !9
  %sub42 = sub nsw i32 7, %41
  br label %cond.end56

cond.false:                                       ; preds = %while.body
  %42 = load i32, ptr %w, align 4, !tbaa !9
  %and43 = and i32 %42, 65280
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %cond.true45, label %cond.false50

cond.true45:                                      ; preds = %cond.false
  %43 = load i32, ptr %w, align 4, !tbaa !9
  %shr = ashr i32 %43, 8
  %and46 = and i32 %shr, 255
  %idxprom47 = sext i32 %and46 to i64
  %arrayidx48 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom47
  %44 = load i32, ptr %arrayidx48, align 4, !tbaa !9
  %sub49 = sub nsw i32 15, %44
  br label %cond.end

cond.false50:                                     ; preds = %cond.false
  %45 = load i32, ptr %w, align 4, !tbaa !9
  %shr51 = ashr i32 %45, 16
  %and52 = and i32 %shr51, 255
  %idxprom53 = sext i32 %and52 to i64
  %arrayidx54 = getelementptr inbounds [256 x i32], ptr @leftbit, i64 0, i64 %idxprom53
  %46 = load i32, ptr %arrayidx54, align 4, !tbaa !9
  %sub55 = sub nsw i32 23, %46
  br label %cond.end

cond.end:                                         ; preds = %cond.false50, %cond.true45
  %cond = phi i32 [ %sub49, %cond.true45 ], [ %sub55, %cond.false50 ]
  br label %cond.end56

cond.end56:                                       ; preds = %cond.end, %cond.true
  %cond57 = phi i32 [ %sub42, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond57, ptr %j1, align 4, !tbaa !9
  %47 = load i32, ptr %j1, align 4, !tbaa !9
  %idxprom58 = sext i32 %47 to i64
  %arrayidx59 = getelementptr inbounds [24 x i32], ptr @xbit, i64 0, i64 %idxprom58
  %48 = load i32, ptr %arrayidx59, align 4, !tbaa !9
  %not60 = xor i32 %48, -1
  %49 = load i32, ptr %w, align 4, !tbaa !9
  %and61 = and i32 %49, %not60
  store i32 %and61, ptr %w, align 4, !tbaa !9
  %50 = load ptr, ptr %p.addr, align 8, !tbaa !5
  %51 = load i32, ptr %j1, align 4, !tbaa !9
  %idxprom62 = sext i32 %51 to i64
  %arrayidx63 = getelementptr inbounds i32, ptr %50, i64 %idxprom62
  %52 = load i32, ptr %arrayidx63, align 4, !tbaa !9
  %idxprom64 = sext i32 %52 to i64
  %arrayidx65 = getelementptr inbounds [24 x i32], ptr @xbit, i64 0, i64 %idxprom64
  %53 = load i32, ptr %arrayidx65, align 4, !tbaa !9
  %54 = load i32, ptr %pxi, align 4, !tbaa !9
  %or66 = or i32 %54, %53
  store i32 %or66, ptr %pxi, align 4, !tbaa !9
  br label %while.cond, !llvm.loop !111

while.end:                                        ; preds = %while.cond
  %55 = load ptr, ptr @xinv, align 8, !tbaa !5
  %56 = load i32, ptr %pxi, align 4, !tbaa !9
  %idxprom67 = sext i32 %56 to i64
  %arrayidx68 = getelementptr inbounds i32, ptr %55, i64 %idxprom67
  %57 = load i32, ptr %arrayidx68, align 4, !tbaa !9
  store i32 %57, ptr %pi, align 4, !tbaa !9
  %58 = load ptr, ptr %xorb, align 8, !tbaa !5
  %59 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom69 = sext i32 %59 to i64
  %arrayidx70 = getelementptr inbounds i32, ptr %58, i64 %idxprom69
  %60 = load i32, ptr %arrayidx70, align 4, !tbaa !9
  store i32 %60, ptr %j1, align 4, !tbaa !9
  br label %while.cond71

while.cond71:                                     ; preds = %while.body75, %while.end
  %61 = load ptr, ptr %xorb, align 8, !tbaa !5
  %62 = load i32, ptr %j1, align 4, !tbaa !9
  %idxprom72 = sext i32 %62 to i64
  %arrayidx73 = getelementptr inbounds i32, ptr %61, i64 %idxprom72
  %63 = load i32, ptr %arrayidx73, align 4, !tbaa !9
  %64 = load i32, ptr %j1, align 4, !tbaa !9
  %cmp74 = icmp ne i32 %63, %64
  br i1 %cmp74, label %while.body75, label %while.end78

while.body75:                                     ; preds = %while.cond71
  %65 = load ptr, ptr %xorb, align 8, !tbaa !5
  %66 = load i32, ptr %j1, align 4, !tbaa !9
  %idxprom76 = sext i32 %66 to i64
  %arrayidx77 = getelementptr inbounds i32, ptr %65, i64 %idxprom76
  %67 = load i32, ptr %arrayidx77, align 4, !tbaa !9
  store i32 %67, ptr %j1, align 4, !tbaa !9
  br label %while.cond71, !llvm.loop !112

while.end78:                                      ; preds = %while.cond71
  %68 = load ptr, ptr %xorb, align 8, !tbaa !5
  %69 = load i32, ptr %pi, align 4, !tbaa !9
  %idxprom79 = sext i32 %69 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %68, i64 %idxprom79
  %70 = load i32, ptr %arrayidx80, align 4, !tbaa !9
  store i32 %70, ptr %j2, align 4, !tbaa !9
  br label %while.cond81

while.cond81:                                     ; preds = %while.body85, %while.end78
  %71 = load ptr, ptr %xorb, align 8, !tbaa !5
  %72 = load i32, ptr %j2, align 4, !tbaa !9
  %idxprom82 = sext i32 %72 to i64
  %arrayidx83 = getelementptr inbounds i32, ptr %71, i64 %idxprom82
  %73 = load i32, ptr %arrayidx83, align 4, !tbaa !9
  %74 = load i32, ptr %j2, align 4, !tbaa !9
  %cmp84 = icmp ne i32 %73, %74
  br i1 %cmp84, label %while.body85, label %while.end88

while.body85:                                     ; preds = %while.cond81
  %75 = load ptr, ptr %xorb, align 8, !tbaa !5
  %76 = load i32, ptr %j2, align 4, !tbaa !9
  %idxprom86 = sext i32 %76 to i64
  %arrayidx87 = getelementptr inbounds i32, ptr %75, i64 %idxprom86
  %77 = load i32, ptr %arrayidx87, align 4, !tbaa !9
  store i32 %77, ptr %j2, align 4, !tbaa !9
  br label %while.cond81, !llvm.loop !113

while.end88:                                      ; preds = %while.cond81
  %78 = load i32, ptr %j1, align 4, !tbaa !9
  %79 = load i32, ptr %j2, align 4, !tbaa !9
  %cmp89 = icmp slt i32 %78, %79
  br i1 %cmp89, label %if.then90, label %if.else

if.then90:                                        ; preds = %while.end88
  %80 = load i32, ptr %j1, align 4, !tbaa !9
  %81 = load ptr, ptr %xorb, align 8, !tbaa !5
  %82 = load i32, ptr %pi, align 4, !tbaa !9
  %idxprom91 = sext i32 %82 to i64
  %arrayidx92 = getelementptr inbounds i32, ptr %81, i64 %idxprom91
  store i32 %80, ptr %arrayidx92, align 4, !tbaa !9
  %83 = load ptr, ptr %xorb, align 8, !tbaa !5
  %84 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom93 = sext i32 %84 to i64
  %arrayidx94 = getelementptr inbounds i32, ptr %83, i64 %idxprom93
  store i32 %80, ptr %arrayidx94, align 4, !tbaa !9
  %85 = load ptr, ptr %xorb, align 8, !tbaa !5
  %86 = load i32, ptr %j2, align 4, !tbaa !9
  %idxprom95 = sext i32 %86 to i64
  %arrayidx96 = getelementptr inbounds i32, ptr %85, i64 %idxprom95
  store i32 %80, ptr %arrayidx96, align 4, !tbaa !9
  br label %if.end106

if.else:                                          ; preds = %while.end88
  %87 = load i32, ptr %j1, align 4, !tbaa !9
  %88 = load i32, ptr %j2, align 4, !tbaa !9
  %cmp97 = icmp sgt i32 %87, %88
  br i1 %cmp97, label %if.then98, label %if.end105

if.then98:                                        ; preds = %if.else
  %89 = load i32, ptr %j2, align 4, !tbaa !9
  %90 = load ptr, ptr %xorb, align 8, !tbaa !5
  %91 = load i32, ptr %pi, align 4, !tbaa !9
  %idxprom99 = sext i32 %91 to i64
  %arrayidx100 = getelementptr inbounds i32, ptr %90, i64 %idxprom99
  store i32 %89, ptr %arrayidx100, align 4, !tbaa !9
  %92 = load ptr, ptr %xorb, align 8, !tbaa !5
  %93 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom101 = sext i32 %93 to i64
  %arrayidx102 = getelementptr inbounds i32, ptr %92, i64 %idxprom101
  store i32 %89, ptr %arrayidx102, align 4, !tbaa !9
  %94 = load ptr, ptr %xorb, align 8, !tbaa !5
  %95 = load i32, ptr %j1, align 4, !tbaa !9
  %idxprom103 = sext i32 %95 to i64
  %arrayidx104 = getelementptr inbounds i32, ptr %94, i64 %idxprom103
  store i32 %89, ptr %arrayidx104, align 4, !tbaa !9
  br label %if.end105

if.end105:                                        ; preds = %if.then98, %if.else
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.then90
  br label %for.inc107

for.inc107:                                       ; preds = %if.end106, %if.then32
  %96 = load i32, ptr %i, align 4, !tbaa !9
  %inc108 = add nsw i32 %96, 1
  store i32 %inc108, ptr %i, align 4, !tbaa !9
  br label %for.cond26, !llvm.loop !114

for.end109:                                       ; preds = %for.cond26
  call void @llvm.lifetime.end.p0(i64 8, ptr %xorb) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %pi) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %pxi) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %moved) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !13, !14}
!18 = distinct !{!18, !13, !14}
!19 = distinct !{!19, !13, !14}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = distinct !{!22, !13, !14}
!23 = distinct !{!23, !13, !14}
!24 = !{!25, !21, i64 0}
!25 = !{!"tms", !21, i64 0, !21, i64 8, !21, i64 16, !21, i64 24}
!26 = !{!25, !21, i64 8}
!27 = !{!28, !28, i64 0}
!28 = !{!"double", !7, i64 0}
!29 = !{!30, !10, i64 8}
!30 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !6, i64 24}
!31 = !{!30, !10, i64 12}
!32 = !{!30, !6, i64 24}
!33 = distinct !{!33, !13, !14}
!34 = distinct !{!34, !13, !14}
!35 = distinct !{!35, !13, !14}
!36 = distinct !{!36, !13, !14}
!37 = distinct !{!37, !13, !14}
!38 = distinct !{!38, !13, !14}
!39 = distinct !{!39, !13, !14}
!40 = distinct !{!40, !13, !14}
!41 = distinct !{!41, !13, !14}
!42 = distinct !{!42, !13, !14}
!43 = distinct !{!43, !13, !14}
!44 = distinct !{!44, !13, !14}
!45 = !{!30, !10, i64 4}
!46 = !{!30, !10, i64 0}
!47 = distinct !{!47, !13, !14}
!48 = distinct !{!48, !13, !14}
!49 = distinct !{!49, !13, !14}
!50 = distinct !{!50, !13, !14}
!51 = distinct !{!51, !13, !14}
!52 = distinct !{!52, !13, !14}
!53 = distinct !{!53, !13, !14}
!54 = distinct !{!54, !13, !14}
!55 = distinct !{!55, !13, !14}
!56 = distinct !{!56, !13, !14}
!57 = distinct !{!57, !13, !14}
!58 = distinct !{!58, !13, !14}
!59 = distinct !{!59, !13, !14}
!60 = !{!30, !10, i64 16}
!61 = !{!30, !10, i64 20}
!62 = distinct !{!62, !13, !14}
!63 = distinct !{!63, !13, !14}
!64 = distinct !{!64, !13, !14}
!65 = distinct !{!65, !13, !14}
!66 = distinct !{!66, !13, !14}
!67 = distinct !{!67, !13, !14}
!68 = distinct !{!68, !13, !14}
!69 = distinct !{!69, !13, !14}
!70 = distinct !{!70, !13, !14}
!71 = distinct !{!71, !13, !14}
!72 = distinct !{!72, !13, !14}
!73 = distinct !{!73, !13, !14}
!74 = distinct !{!74, !13, !14}
!75 = distinct !{!75, !13, !14}
!76 = distinct !{!76, !13, !14}
!77 = !{!78, !10, i64 12}
!78 = !{!"optionstruct", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !6, i64 104, !10, i64 112, !6, i64 120}
!79 = !{!78, !10, i64 8}
!80 = !{!78, !10, i64 0}
!81 = !{!78, !10, i64 16}
!82 = distinct !{!82, !13, !14}
!83 = distinct !{!83, !13, !14}
!84 = distinct !{!84, !13, !14}
!85 = distinct !{!85, !13, !14}
!86 = distinct !{!86, !13, !14}
!87 = !{!78, !6, i64 48}
!88 = !{!89, !10, i64 12}
!89 = !{!"", !28, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !21, i64 24, !21, i64 32, !10, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !10, i64 80}
!90 = distinct !{!90, !13, !14}
!91 = distinct !{!91, !13, !14}
!92 = distinct !{!92, !13, !14}
!93 = distinct !{!93, !13, !14}
!94 = distinct !{!94, !13, !14}
!95 = distinct !{!95, !13, !14}
!96 = distinct !{!96, !13, !14}
!97 = distinct !{!97, !13, !14}
!98 = distinct !{!98, !13, !14}
!99 = distinct !{!99, !13, !14}
!100 = distinct !{!100, !13, !14}
!101 = distinct !{!101, !13, !14}
!102 = distinct !{!102, !13, !14}
!103 = distinct !{!103, !13, !14}
!104 = distinct !{!104, !13, !14}
!105 = distinct !{!105, !13, !14}
!106 = distinct !{!106, !13, !14}
!107 = distinct !{!107, !14}
!108 = distinct !{!108, !13, !14}
!109 = distinct !{!109, !13, !14}
!110 = distinct !{!110, !13, !14}
!111 = distinct !{!111, !13, !14}
!112 = distinct !{!112, !13, !14}
!113 = distinct !{!113, !13, !14}
!114 = distinct !{!114, !13, !14}
