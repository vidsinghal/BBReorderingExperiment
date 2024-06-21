; ModuleID = 'samples/456.bc'
source_filename = "cubhamg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tms = type { i64, i64, i64, i64 }
%struct.nodedata = type { [229 x i32], [152 x i32], [152 x i32], [152 x i32] }
%struct.sparsegraph = type { i64, ptr, i32, ptr, ptr, ptr, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"\0AUsage: %s\0A\0A%s\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"cubhamg [-#] [-v|-V] [-n#-#|-y#-#|-i|-I|-o|-x|-e|-E] [-b|-t] [infile [outfile]]\00", align 1
@.str.5 = private unnamed_addr constant [2107 x i8] c" Pick those inputs that are nonhamiltonian and have max degree <= 3.\0A\0A infile is the name of the input file in graph6/sparse6 format (default: stdin)\0A\0A outfile is the name of the output file in the same format (default: stdout)\0A\0A The output file will have a header >>graph6<< or >>sparse6<< if the input file does.\0A\0AOptions:\0A\09-#  A parameter useful for tuning (default 100)\0A\09-v  Report nonhamiltonian graphs and noncubic graphs\0A\09-V  .. in addition give a cycle for the hamiltonian ones\0A\09-n#-#  If the two numbers are v and i, then the i-th edge\0A\09       out of vertex v is required to be not in the cycle.\0A\09       It must be that i=1..3 and v=0..n-1.\0A\09-y#-#  If the two numbers are v and i, then the i-th edge\0A\09       out of vertex v is required to be in the cycle.\0A\09       It must be that i=1..3 and v=0..n-1.\0A\09       You can use any number of -n/-y switches to force\0A\09       edges.  Out of range first arguments are ignored.\0A\09       If -y and -n give same edge, -y wins.\0A\09-i  Test + property: for each edge e, there is a hamiltonian cycle using e.\0A\09-I  Test ++ property: for each pair of edges e,e', there is\0A\09    a hamiltonian cycle which uses both e and e'.\0A\09-o  Test - property: for each edge e, there is a hamiltonian cycle avoiding e.\0A\09-x  Test +- property: for each pair of edges e,e', there is\0A\09    a hamiltonian cycle which uses e but avoids e'.\0A\09-e  Test 3/4 property: for each edge e, at least 3 of the 4\0A\09    paths of length 3 passing through e lie on hamiltonian cycles.\0A\09-E  Test 3/4+ property: for each edge e failing the 3/4 property,\0A\09    all three ways of joining e to the rest of the graph are\0A\09    hamiltonian avoiding e.\0A\09-T#  Specify a timeout, being a limit on how many search tree\0A\09     nodes are made.  If the timeout occurs, the graph is\0A\09     written to the output as if it is nonhamiltonian.\0A\09-R#  Specify the number of repeat attempts for each stage.\0A\09-F  Analyze covering paths from 2 or 4 vertices of degree 2.\0A\0A\09-b  Require biconnectivity\0A\09-t  Require triconnectivity  (note: quadratic algorithm)\0A\0AComments:\0A\09-y, -n, -#, -R and -T are ignored for -i, -I, -x, -o, -e, -E, -F\0A\00", align 1
@verbose = internal global i32 0, align 4
@timeout = internal global i64 0, align 8
@repeats = internal global i64 0, align 8
@stderr = external global ptr, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c">E cubhamg : too many -n switches\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%d-%d\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c">E cubhamg : second arg of -n must be 1..3\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c">E cubhamg : too many -y switches\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c">E cubhamg : second arg of -y must be 1..3\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c">E cubhamg : bad -T value\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c">E cubhamg : bad -R value\0A\00", align 1
@.str.15 = private unnamed_addr constant [91 x i8] c">E Usage: cubhamg [-#] [-v|-V] [-n#-#|-y#-#|-i|-I|-o|-x|-e|-E] [-b|-t] [infile [outfile]]\0A\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"   Use %s -help to see more detailed instructions.\0A\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c">E Sorry, this program doesn't support digraphs yet.\0A\00", align 1
@stdout = external global ptr, align 8
@.str.19 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c">E cubhamg: can't open %s for writing\0A\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c">E cubhamg\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c">>sparse6<<\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c">>graph6<<\00", align 1
@timebuffer = internal global %struct.tms zeroinitializer, align 8
@.str.25 = private unnamed_addr constant [31 x i8] c">E cubhamg: input %lu too big\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"Input %lu has maxdeg>3.\0A\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"Input %lu fails property e34%s:\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [13 x i8] c" %d-%d[%02x]\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c" %d-%d\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"Input %lu fails property -+:\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c" %d-%d/%d-%d\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"Input %lu fails property ++:\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"Input %lu timed out\0A\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"Input %lu is nonhamiltonian\0A\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"Input %lu fails property -:\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"Input %lu fails property +:\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"Input %lu is not hamiltonian.\0A\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"Input %lu timed out.\0A\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"Cycle in input %lu:\0A\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"\0A \00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c">C %lu graphs read from %s\0A\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c">C %lu graphs with maxdeg > 3\0A\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c">C %lu graphs not %sconnected\0A\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"bi\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"tri\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c">C %lu graphs timed out\0A\00", align 1
@.str.51 = private unnamed_addr constant [43 x i8] c">Z %lu %s graphs written to %s; %3.2f sec\0A\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"non-e34+\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"non-e34\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"non-inout\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"non-out\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"non-in\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"nonhamiltonian\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"Tries:\00", align 1
@numtries = internal global [20 x i64] zeroinitializer, align 16
@.str.59 = private unnamed_addr constant [5 x i8] c" %lu\00", align 1
@bit = internal constant [64 x i64] [i64 -9223372036854775808, i64 4611686018427387904, i64 2305843009213693952, i64 1152921504606846976, i64 576460752303423488, i64 288230376151711744, i64 144115188075855872, i64 72057594037927936, i64 36028797018963968, i64 18014398509481984, i64 9007199254740992, i64 4503599627370496, i64 2251799813685248, i64 1125899906842624, i64 562949953421312, i64 281474976710656, i64 140737488355328, i64 70368744177664, i64 35184372088832, i64 17592186044416, i64 8796093022208, i64 4398046511104, i64 2199023255552, i64 1099511627776, i64 549755813888, i64 274877906944, i64 137438953472, i64 68719476736, i64 34359738368, i64 17179869184, i64 8589934592, i64 4294967296, i64 2147483648, i64 1073741824, i64 536870912, i64 268435456, i64 134217728, i64 67108864, i64 33554432, i64 16777216, i64 8388608, i64 4194304, i64 2097152, i64 1048576, i64 524288, i64 262144, i64 131072, i64 65536, i64 32768, i64 16384, i64 8192, i64 4096, i64 2048, i64 1024, i64 512, i64 256, i64 128, i64 64, i64 32, i64 16, i64 8, i64 4, i64 2, i64 1], align 16
@hase34.pop = internal global [16 x i32] [i32 0, i32 1, i32 1, i32 2, i32 1, i32 2, i32 2, i32 3, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4], align 16
@.str.60 = private unnamed_addr constant [55 x i8] c"cubhamg: hase34() not implemented for noncubic graphs\0A\00", align 1
@eno = internal global [152 x [4 x i32]] zeroinitializer, align 16
@maxnodes = internal global i64 0, align 8
@.str.61 = private unnamed_addr constant [33 x i8] c"%% cubinit got en=%d when ne=%d\0A\00", align 1
@hcnodat = internal global %struct.nodedata zeroinitializer, align 4
@onstack = internal global [152 x i32] zeroinitializer, align 16
@stacklev = internal global i32 0, align 4
@stack = internal global [152 x i32] zeroinitializer, align 16
@stackptr = internal global ptr null, align 8
@classstack = internal global [912 x i32] zeroinitializer, align 16
@classstackptr = internal global ptr null, align 8
@nodecount = internal global i64 0, align 8
@.str.62 = private unnamed_addr constant [44 x i8] c"hamnode returning DUNNO, this can't happen\0A\00", align 1
@.str.63 = private unnamed_addr constant [54 x i8] c"cubhamg: eplus() not implemented for noncubic graphs\0A\00", align 1
@hasinout.done = internal global ptr null, align 8
@hasinout.done_sz = internal global i64 0, align 8
@.str.64 = private unnamed_addr constant [9 x i8] c"hasinout\00", align 1
@hasinin.done = internal global ptr null, align 8
@hasinin.done_sz = internal global i64 0, align 8
@.str.65 = private unnamed_addr constant [8 x i8] c"hasinin\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c">E -F forbids degree 0,1\0A\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"Input %lu:\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c" Pairs: \00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c" T%d-%d\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c" N%d-%d\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c" Y%d-%d\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c" Quartets: \00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c" T%d-%d,%d-%d\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c" N%d-%d,%d-%d\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c" Y%d-%d,%d-%d\00", align 1
@standard = internal global [19 x i64] [i64 30, i64 40, i64 50, i64 60, i64 100, i64 200, i64 300, i64 400, i64 500, i64 1000, i64 2000, i64 3000, i64 5000, i64 10000, i64 20000, i64 30000, i64 100000, i64 300000, i64 1000000], align 16
@totalnodes = internal global i64 0, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %infilename = alloca ptr, align 8
  %outfilename = alloca ptr, align 8
  %infile = alloca ptr, align 8
  %outfile = alloca ptr, align 8
  %msgfile = alloca ptr, align 8
  %badargs = alloca i32, align 4
  %biconn = alloca i32, align 4
  %triconn = alloca i32, align 4
  %fragment = alloca i32, align 4
  %in = alloca i32, align 4
  %out = alloca i32, align 4
  %inin = alloca i32, align 4
  %inout = alloca i32, align 4
  %e34 = alloca i32, align 4
  %e34plus = alloca i32, align 4
  %testing = alloca i32, align 4
  %numread = alloca i64, align 8
  %noncub = alloca i64, align 8
  %nonham = alloca i64, align 8
  %nonconn = alloca i64, align 8
  %numto = alloca i64, align 8
  %ch = alloca i32, align 4
  %weight = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %ne = alloca i32, align 4
  %i = alloca i32, align 4
  %namesgot = alloca i32, align 4
  %nl = alloca i32, align 4
  %nbad = alloca i32, align 4
  %limit = alloca i32, align 4
  %x0 = alloca [100 x i32], align 16
  %x1 = alloca [100 x i32], align 16
  %y0 = alloca [100 x i32], align 16
  %y1 = alloca [100 x i32], align 16
  %sg = alloca %struct.sparsegraph, align 8
  %vv = alloca [100 x i32], align 16
  %vi = alloca [100 x i32], align 16
  %nvv = alloca i32, align 4
  %cyc = alloca [152 x i32], align 16
  %yy = alloca [100 x i32], align 16
  %yi = alloca [100 x i32], align 16
  %nyy = alloca i32, align 4
  %t0 = alloca double, align 8
  %t1 = alloca double, align 8
  %cub = alloca [152 x [4 x i32]], align 16
  %arg = alloca ptr, align 8
  %codetype = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %infilename) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %outfilename) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %infile) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %outfile) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %msgfile) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %badargs) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %biconn) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %triconn) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %fragment) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %in) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %out) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %inin) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %inout) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %e34) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %e34plus) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %testing) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %numread) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %noncub) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %nonham) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %nonconn) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %numto) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ch) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %weight) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ne) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %namesgot) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nl) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbad) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %limit) #8
  call void @llvm.lifetime.start.p0(i64 400, ptr %x0) #8
  call void @llvm.lifetime.start.p0(i64 400, ptr %x1) #8
  call void @llvm.lifetime.start.p0(i64 400, ptr %y0) #8
  call void @llvm.lifetime.start.p0(i64 400, ptr %y1) #8
  call void @llvm.lifetime.start.p0(i64 80, ptr %sg) #8
  call void @llvm.lifetime.start.p0(i64 400, ptr %vv) #8
  call void @llvm.lifetime.start.p0(i64 400, ptr %vi) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nvv) #8
  call void @llvm.lifetime.start.p0(i64 608, ptr %cyc) #8
  call void @llvm.lifetime.start.p0(i64 400, ptr %yy) #8
  call void @llvm.lifetime.start.p0(i64 400, ptr %yi) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nyy) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %t0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %t1) #8
  call void @llvm.lifetime.start.p0(i64 2432, ptr %cub) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %codetype) #8
  %0 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %call = call i32 @strcmp(ptr noundef %2, ptr noundef @.str) #9
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx2 = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx2, align 8, !tbaa !9
  %call3 = call i32 @strcmp(ptr noundef %4, ptr noundef @.str.1) #9
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx6 = getelementptr inbounds ptr, ptr %5, i64 1
  %6 = load ptr, ptr %arrayidx6, align 8, !tbaa !9
  %call7 = call i32 @strcmp(ptr noundef %6, ptr noundef @.str.2) #9
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %land.lhs.true
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.5)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5, %entry
  store ptr null, ptr %outfilename, align 8, !tbaa !9
  store ptr null, ptr %infilename, align 8, !tbaa !9
  store i32 0, ptr %badargs, align 4, !tbaa !5
  store i32 0, ptr %inout, align 4, !tbaa !5
  store i32 0, ptr %inin, align 4, !tbaa !5
  store i32 0, ptr %out, align 4, !tbaa !5
  store i32 0, ptr %in, align 4, !tbaa !5
  store i32 0, ptr %e34, align 4, !tbaa !5
  store i32 0, ptr %e34plus, align 4, !tbaa !5
  store i32 0, ptr %testing, align 4, !tbaa !5
  store i32 0, ptr %triconn, align 4, !tbaa !5
  store i32 0, ptr %biconn, align 4, !tbaa !5
  store i32 0, ptr %fragment, align 4, !tbaa !5
  store i32 0, ptr @verbose, align 4, !tbaa !5
  store i32 100, ptr %weight, align 4, !tbaa !5
  store i32 0, ptr %nyy, align 4, !tbaa !5
  store i32 0, ptr %nvv, align 4, !tbaa !5
  store i64 0, ptr @timeout, align 8, !tbaa !11
  store i64 1, ptr @repeats, align 8, !tbaa !11
  store i32 0, ptr %namesgot, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %8 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %7, %8
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load i32, ptr %badargs, align 4, !tbaa !5
  %tobool = icmp ne i32 %9, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %11 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds ptr, ptr %11, i64 %idxprom
  %13 = load ptr, ptr %arrayidx11, align 8, !tbaa !9
  store ptr %13, ptr %arg, align 8, !tbaa !9
  %14 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx12 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx12, align 1, !tbaa !13
  %conv = sext i8 %15 to i32
  %cmp13 = icmp eq i32 %conv, 45
  br i1 %cmp13, label %land.lhs.true15, label %if.else229

land.lhs.true15:                                  ; preds = %for.body
  %16 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx16 = getelementptr inbounds i8, ptr %16, i64 1
  %17 = load i8, ptr %arrayidx16, align 1, !tbaa !13
  %conv17 = sext i8 %17 to i32
  %cmp18 = icmp ne i32 %conv17, 0
  br i1 %cmp18, label %if.then20, label %if.else229

if.then20:                                        ; preds = %land.lhs.true15
  %18 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx21 = getelementptr inbounds i8, ptr %18, i64 1
  %19 = load i8, ptr %arrayidx21, align 1, !tbaa !13
  %conv22 = sext i8 %19 to i32
  %cmp23 = icmp eq i32 %conv22, 118
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then20
  %20 = load i32, ptr @verbose, align 4, !tbaa !5
  %cmp26 = icmp eq i32 %20, 0
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then25
  br label %cond.end

cond.false:                                       ; preds = %if.then25
  %21 = load i32, ptr @verbose, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %21, %cond.false ]
  store i32 %cond, ptr @verbose, align 4, !tbaa !5
  br label %if.end228

if.else:                                          ; preds = %if.then20
  %22 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx28 = getelementptr inbounds i8, ptr %22, i64 1
  %23 = load i8, ptr %arrayidx28, align 1, !tbaa !13
  %conv29 = sext i8 %23 to i32
  %cmp30 = icmp eq i32 %conv29, 86
  br i1 %cmp30, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.else
  store i32 2, ptr @verbose, align 4, !tbaa !5
  br label %if.end227

if.else33:                                        ; preds = %if.else
  %24 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx34 = getelementptr inbounds i8, ptr %24, i64 1
  %25 = load i8, ptr %arrayidx34, align 1, !tbaa !13
  %conv35 = sext i8 %25 to i32
  %cmp36 = icmp eq i32 %conv35, 105
  br i1 %cmp36, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.else33
  store i32 1, ptr %in, align 4, !tbaa !5
  br label %if.end226

if.else39:                                        ; preds = %if.else33
  %26 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx40 = getelementptr inbounds i8, ptr %26, i64 1
  %27 = load i8, ptr %arrayidx40, align 1, !tbaa !13
  %conv41 = sext i8 %27 to i32
  %cmp42 = icmp eq i32 %conv41, 73
  br i1 %cmp42, label %if.then44, label %if.else45

if.then44:                                        ; preds = %if.else39
  store i32 1, ptr %inin, align 4, !tbaa !5
  br label %if.end225

if.else45:                                        ; preds = %if.else39
  %28 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx46 = getelementptr inbounds i8, ptr %28, i64 1
  %29 = load i8, ptr %arrayidx46, align 1, !tbaa !13
  %conv47 = sext i8 %29 to i32
  %cmp48 = icmp eq i32 %conv47, 111
  br i1 %cmp48, label %if.then50, label %if.else51

if.then50:                                        ; preds = %if.else45
  store i32 1, ptr %out, align 4, !tbaa !5
  br label %if.end224

if.else51:                                        ; preds = %if.else45
  %30 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx52 = getelementptr inbounds i8, ptr %30, i64 1
  %31 = load i8, ptr %arrayidx52, align 1, !tbaa !13
  %conv53 = sext i8 %31 to i32
  %cmp54 = icmp eq i32 %conv53, 120
  br i1 %cmp54, label %if.then56, label %if.else57

if.then56:                                        ; preds = %if.else51
  store i32 1, ptr %inout, align 4, !tbaa !5
  br label %if.end223

if.else57:                                        ; preds = %if.else51
  %32 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx58 = getelementptr inbounds i8, ptr %32, i64 1
  %33 = load i8, ptr %arrayidx58, align 1, !tbaa !13
  %conv59 = sext i8 %33 to i32
  %cmp60 = icmp eq i32 %conv59, 101
  br i1 %cmp60, label %if.then62, label %if.else63

if.then62:                                        ; preds = %if.else57
  store i32 1, ptr %e34, align 4, !tbaa !5
  br label %if.end222

if.else63:                                        ; preds = %if.else57
  %34 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx64 = getelementptr inbounds i8, ptr %34, i64 1
  %35 = load i8, ptr %arrayidx64, align 1, !tbaa !13
  %conv65 = sext i8 %35 to i32
  %cmp66 = icmp eq i32 %conv65, 69
  br i1 %cmp66, label %if.then68, label %if.else69

if.then68:                                        ; preds = %if.else63
  store i32 1, ptr %e34plus, align 4, !tbaa !5
  store i32 1, ptr %e34, align 4, !tbaa !5
  br label %if.end221

if.else69:                                        ; preds = %if.else63
  %36 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx70 = getelementptr inbounds i8, ptr %36, i64 1
  %37 = load i8, ptr %arrayidx70, align 1, !tbaa !13
  %conv71 = sext i8 %37 to i32
  %cmp72 = icmp eq i32 %conv71, 98
  br i1 %cmp72, label %if.then74, label %if.else75

if.then74:                                        ; preds = %if.else69
  store i32 1, ptr %biconn, align 4, !tbaa !5
  br label %if.end220

if.else75:                                        ; preds = %if.else69
  %38 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx76 = getelementptr inbounds i8, ptr %38, i64 1
  %39 = load i8, ptr %arrayidx76, align 1, !tbaa !13
  %conv77 = sext i8 %39 to i32
  %cmp78 = icmp eq i32 %conv77, 116
  br i1 %cmp78, label %if.then80, label %if.else81

if.then80:                                        ; preds = %if.else75
  store i32 1, ptr %triconn, align 4, !tbaa !5
  br label %if.end219

if.else81:                                        ; preds = %if.else75
  %40 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx82 = getelementptr inbounds i8, ptr %40, i64 1
  %41 = load i8, ptr %arrayidx82, align 1, !tbaa !13
  %conv83 = sext i8 %41 to i32
  %cmp84 = icmp eq i32 %conv83, 81
  br i1 %cmp84, label %if.then86, label %if.else87

if.then86:                                        ; preds = %if.else81
  store i32 1, ptr %testing, align 4, !tbaa !5
  br label %if.end218

if.else87:                                        ; preds = %if.else81
  %42 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx88 = getelementptr inbounds i8, ptr %42, i64 1
  %43 = load i8, ptr %arrayidx88, align 1, !tbaa !13
  %conv89 = sext i8 %43 to i32
  %cmp90 = icmp eq i32 %conv89, 70
  br i1 %cmp90, label %if.then92, label %if.else93

if.then92:                                        ; preds = %if.else87
  store i32 1, ptr %fragment, align 4, !tbaa !5
  br label %if.end217

if.else93:                                        ; preds = %if.else87
  %44 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx94 = getelementptr inbounds i8, ptr %44, i64 1
  %45 = load i8, ptr %arrayidx94, align 1, !tbaa !13
  %conv95 = sext i8 %45 to i32
  %cmp96 = icmp eq i32 %conv95, 110
  br i1 %cmp96, label %if.then98, label %if.else126

if.then98:                                        ; preds = %if.else93
  %46 = load i32, ptr %nvv, align 4, !tbaa !5
  %cmp99 = icmp eq i32 %46, 100
  br i1 %cmp99, label %if.then101, label %if.end103

if.then101:                                       ; preds = %if.then98
  %47 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef @.str.6)
  call void @exit(i32 noundef 1) #10
  unreachable

if.end103:                                        ; preds = %if.then98
  %48 = load ptr, ptr %arg, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i8, ptr %48, i64 2
  %49 = load i32, ptr %nvv, align 4, !tbaa !5
  %idxprom104 = sext i32 %49 to i64
  %arrayidx105 = getelementptr inbounds [100 x i32], ptr %vv, i64 0, i64 %idxprom104
  %50 = load i32, ptr %nvv, align 4, !tbaa !5
  %idxprom106 = sext i32 %50 to i64
  %arrayidx107 = getelementptr inbounds [100 x i32], ptr %vi, i64 0, i64 %idxprom106
  %call108 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %add.ptr, ptr noundef @.str.7, ptr noundef %arrayidx105, ptr noundef %arrayidx107) #8
  %cmp109 = icmp ne i32 %call108, 2
  br i1 %cmp109, label %if.then111, label %if.else112

if.then111:                                       ; preds = %if.end103
  store i32 1, ptr %badargs, align 4, !tbaa !5
  br label %if.end125

if.else112:                                       ; preds = %if.end103
  %51 = load i32, ptr %nvv, align 4, !tbaa !5
  %idxprom113 = sext i32 %51 to i64
  %arrayidx114 = getelementptr inbounds [100 x i32], ptr %vi, i64 0, i64 %idxprom113
  %52 = load i32, ptr %arrayidx114, align 4, !tbaa !5
  %cmp115 = icmp slt i32 %52, 1
  br i1 %cmp115, label %if.then122, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %if.else112
  %53 = load i32, ptr %nvv, align 4, !tbaa !5
  %idxprom118 = sext i32 %53 to i64
  %arrayidx119 = getelementptr inbounds [100 x i32], ptr %vi, i64 0, i64 %idxprom118
  %54 = load i32, ptr %arrayidx119, align 4, !tbaa !5
  %cmp120 = icmp sgt i32 %54, 3
  br i1 %cmp120, label %if.then122, label %if.end124

if.then122:                                       ; preds = %lor.lhs.false117, %if.else112
  %55 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @.str.8)
  call void @exit(i32 noundef 1) #10
  unreachable

if.end124:                                        ; preds = %lor.lhs.false117
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.then111
  %56 = load i32, ptr %nvv, align 4, !tbaa !5
  %inc = add nsw i32 %56, 1
  store i32 %inc, ptr %nvv, align 4, !tbaa !5
  br label %if.end216

if.else126:                                       ; preds = %if.else93
  %57 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx127 = getelementptr inbounds i8, ptr %57, i64 1
  %58 = load i8, ptr %arrayidx127, align 1, !tbaa !13
  %conv128 = sext i8 %58 to i32
  %cmp129 = icmp eq i32 %conv128, 121
  br i1 %cmp129, label %if.then131, label %if.else161

if.then131:                                       ; preds = %if.else126
  %59 = load i32, ptr %nyy, align 4, !tbaa !5
  %cmp132 = icmp eq i32 %59, 100
  br i1 %cmp132, label %if.then134, label %if.end136

if.then134:                                       ; preds = %if.then131
  %60 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @.str.9)
  call void @exit(i32 noundef 1) #10
  unreachable

if.end136:                                        ; preds = %if.then131
  %61 = load ptr, ptr %arg, align 8, !tbaa !9
  %add.ptr137 = getelementptr inbounds i8, ptr %61, i64 2
  %62 = load i32, ptr %nyy, align 4, !tbaa !5
  %idxprom138 = sext i32 %62 to i64
  %arrayidx139 = getelementptr inbounds [100 x i32], ptr %yy, i64 0, i64 %idxprom138
  %63 = load i32, ptr %nyy, align 4, !tbaa !5
  %idxprom140 = sext i32 %63 to i64
  %arrayidx141 = getelementptr inbounds [100 x i32], ptr %yi, i64 0, i64 %idxprom140
  %call142 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %add.ptr137, ptr noundef @.str.7, ptr noundef %arrayidx139, ptr noundef %arrayidx141) #8
  %cmp143 = icmp ne i32 %call142, 2
  br i1 %cmp143, label %if.then145, label %if.else146

if.then145:                                       ; preds = %if.end136
  store i32 1, ptr %badargs, align 4, !tbaa !5
  br label %if.end159

if.else146:                                       ; preds = %if.end136
  %64 = load i32, ptr %nyy, align 4, !tbaa !5
  %idxprom147 = sext i32 %64 to i64
  %arrayidx148 = getelementptr inbounds [100 x i32], ptr %yi, i64 0, i64 %idxprom147
  %65 = load i32, ptr %arrayidx148, align 4, !tbaa !5
  %cmp149 = icmp slt i32 %65, 1
  br i1 %cmp149, label %if.then156, label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %if.else146
  %66 = load i32, ptr %nyy, align 4, !tbaa !5
  %idxprom152 = sext i32 %66 to i64
  %arrayidx153 = getelementptr inbounds [100 x i32], ptr %yi, i64 0, i64 %idxprom152
  %67 = load i32, ptr %arrayidx153, align 4, !tbaa !5
  %cmp154 = icmp sgt i32 %67, 3
  br i1 %cmp154, label %if.then156, label %if.end158

if.then156:                                       ; preds = %lor.lhs.false151, %if.else146
  %68 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call157 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef @.str.10)
  call void @exit(i32 noundef 1) #10
  unreachable

if.end158:                                        ; preds = %lor.lhs.false151
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %if.then145
  %69 = load i32, ptr %nyy, align 4, !tbaa !5
  %inc160 = add nsw i32 %69, 1
  store i32 %inc160, ptr %nyy, align 4, !tbaa !5
  br label %if.end215

if.else161:                                       ; preds = %if.else126
  %70 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx162 = getelementptr inbounds i8, ptr %70, i64 1
  %71 = load i8, ptr %arrayidx162, align 1, !tbaa !13
  %conv163 = sext i8 %71 to i32
  %cmp164 = icmp sge i32 %conv163, 48
  br i1 %cmp164, label %land.lhs.true166, label %if.else174

land.lhs.true166:                                 ; preds = %if.else161
  %72 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx167 = getelementptr inbounds i8, ptr %72, i64 1
  %73 = load i8, ptr %arrayidx167, align 1, !tbaa !13
  %conv168 = sext i8 %73 to i32
  %cmp169 = icmp sle i32 %conv168, 57
  br i1 %cmp169, label %if.then171, label %if.else174

if.then171:                                       ; preds = %land.lhs.true166
  %74 = load ptr, ptr %arg, align 8, !tbaa !9
  %add.ptr172 = getelementptr inbounds i8, ptr %74, i64 1
  %call173 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %add.ptr172, ptr noundef @.str.11, ptr noundef %weight) #8
  br label %if.end214

if.else174:                                       ; preds = %land.lhs.true166, %if.else161
  %75 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx175 = getelementptr inbounds i8, ptr %75, i64 1
  %76 = load i8, ptr %arrayidx175, align 1, !tbaa !13
  %conv176 = sext i8 %76 to i32
  %cmp177 = icmp eq i32 %conv176, 84
  br i1 %cmp177, label %if.then179, label %if.else195

if.then179:                                       ; preds = %if.else174
  %77 = load ptr, ptr %arg, align 8, !tbaa !9
  %add.ptr180 = getelementptr inbounds i8, ptr %77, i64 2
  %call181 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %add.ptr180, ptr noundef @.str.12, ptr noundef @timeout) #8
  %cmp182 = icmp ne i32 %call181, 1
  br i1 %cmp182, label %if.then187, label %lor.lhs.false184

lor.lhs.false184:                                 ; preds = %if.then179
  %78 = load i64, ptr @timeout, align 8, !tbaa !11
  %cmp185 = icmp slt i64 %78, 0
  br i1 %cmp185, label %if.then187, label %if.else189

if.then187:                                       ; preds = %lor.lhs.false184, %if.then179
  %79 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call188 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef @.str.13)
  call void @exit(i32 noundef 1) #10
  unreachable

if.else189:                                       ; preds = %lor.lhs.false184
  %80 = load i64, ptr @timeout, align 8, !tbaa !11
  %cmp190 = icmp sgt i64 %80, 2147483646
  br i1 %cmp190, label %if.then192, label %if.end193

if.then192:                                       ; preds = %if.else189
  store i64 2147483646, ptr @timeout, align 8, !tbaa !11
  br label %if.end193

if.end193:                                        ; preds = %if.then192, %if.else189
  br label %if.end194

if.end194:                                        ; preds = %if.end193
  br label %if.end213

if.else195:                                       ; preds = %if.else174
  %81 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx196 = getelementptr inbounds i8, ptr %81, i64 1
  %82 = load i8, ptr %arrayidx196, align 1, !tbaa !13
  %conv197 = sext i8 %82 to i32
  %cmp198 = icmp eq i32 %conv197, 82
  br i1 %cmp198, label %if.then200, label %if.else211

if.then200:                                       ; preds = %if.else195
  %83 = load ptr, ptr %arg, align 8, !tbaa !9
  %add.ptr201 = getelementptr inbounds i8, ptr %83, i64 2
  %call202 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %add.ptr201, ptr noundef @.str.12, ptr noundef @repeats) #8
  %cmp203 = icmp ne i32 %call202, 1
  br i1 %cmp203, label %if.then208, label %lor.lhs.false205

lor.lhs.false205:                                 ; preds = %if.then200
  %84 = load i64, ptr @repeats, align 8, !tbaa !11
  %cmp206 = icmp slt i64 %84, 1
  br i1 %cmp206, label %if.then208, label %if.end210

if.then208:                                       ; preds = %lor.lhs.false205, %if.then200
  %85 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call209 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef @.str.14)
  call void @exit(i32 noundef 1) #10
  unreachable

if.end210:                                        ; preds = %lor.lhs.false205
  br label %if.end212

if.else211:                                       ; preds = %if.else195
  store i32 1, ptr %badargs, align 4, !tbaa !5
  br label %if.end212

if.end212:                                        ; preds = %if.else211, %if.end210
  br label %if.end213

if.end213:                                        ; preds = %if.end212, %if.end194
  br label %if.end214

if.end214:                                        ; preds = %if.end213, %if.then171
  br label %if.end215

if.end215:                                        ; preds = %if.end214, %if.end159
  br label %if.end216

if.end216:                                        ; preds = %if.end215, %if.end125
  br label %if.end217

if.end217:                                        ; preds = %if.end216, %if.then92
  br label %if.end218

if.end218:                                        ; preds = %if.end217, %if.then86
  br label %if.end219

if.end219:                                        ; preds = %if.end218, %if.then80
  br label %if.end220

if.end220:                                        ; preds = %if.end219, %if.then74
  br label %if.end221

if.end221:                                        ; preds = %if.end220, %if.then68
  br label %if.end222

if.end222:                                        ; preds = %if.end221, %if.then62
  br label %if.end223

if.end223:                                        ; preds = %if.end222, %if.then56
  br label %if.end224

if.end224:                                        ; preds = %if.end223, %if.then50
  br label %if.end225

if.end225:                                        ; preds = %if.end224, %if.then44
  br label %if.end226

if.end226:                                        ; preds = %if.end225, %if.then38
  br label %if.end227

if.end227:                                        ; preds = %if.end226, %if.then32
  br label %if.end228

if.end228:                                        ; preds = %if.end227, %cond.end
  br label %if.end240

if.else229:                                       ; preds = %land.lhs.true15, %for.body
  %86 = load i32, ptr %namesgot, align 4, !tbaa !5
  %cmp230 = icmp eq i32 %86, 0
  br i1 %cmp230, label %if.then232, label %if.else233

if.then232:                                       ; preds = %if.else229
  store i32 1, ptr %namesgot, align 4, !tbaa !5
  %87 = load ptr, ptr %arg, align 8, !tbaa !9
  store ptr %87, ptr %infilename, align 8, !tbaa !9
  br label %if.end239

if.else233:                                       ; preds = %if.else229
  %88 = load i32, ptr %namesgot, align 4, !tbaa !5
  %cmp234 = icmp eq i32 %88, 1
  br i1 %cmp234, label %if.then236, label %if.else237

if.then236:                                       ; preds = %if.else233
  store i32 2, ptr %namesgot, align 4, !tbaa !5
  %89 = load ptr, ptr %arg, align 8, !tbaa !9
  store ptr %89, ptr %outfilename, align 8, !tbaa !9
  br label %if.end238

if.else237:                                       ; preds = %if.else233
  store i32 1, ptr %badargs, align 4, !tbaa !5
  br label %if.end238

if.end238:                                        ; preds = %if.else237, %if.then236
  br label %if.end239

if.end239:                                        ; preds = %if.end238, %if.then232
  br label %if.end240

if.end240:                                        ; preds = %if.end239, %if.end228
  br label %for.inc

for.inc:                                          ; preds = %if.end240
  %90 = load i32, ptr %i, align 4, !tbaa !5
  %inc241 = add nsw i32 %90, 1
  store i32 %inc241, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %land.end
  %91 = load i32, ptr %badargs, align 4, !tbaa !5
  %tobool242 = icmp ne i32 %91, 0
  br i1 %tobool242, label %if.then243, label %if.end247

if.then243:                                       ; preds = %for.end
  %92 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call244 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef @.str.15)
  %93 = load ptr, ptr @stderr, align 8, !tbaa !9
  %94 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx245 = getelementptr inbounds ptr, ptr %94, i64 0
  %95 = load ptr, ptr %arrayidx245, align 8, !tbaa !9
  %call246 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef @.str.16, ptr noundef %95)
  call void @exit(i32 noundef 1) #10
  unreachable

if.end247:                                        ; preds = %for.end
  %96 = load ptr, ptr %infilename, align 8, !tbaa !9
  %tobool248 = icmp ne ptr %96, null
  br i1 %tobool248, label %land.lhs.true249, label %if.end255

land.lhs.true249:                                 ; preds = %if.end247
  %97 = load ptr, ptr %infilename, align 8, !tbaa !9
  %arrayidx250 = getelementptr inbounds i8, ptr %97, i64 0
  %98 = load i8, ptr %arrayidx250, align 1, !tbaa !13
  %conv251 = sext i8 %98 to i32
  %cmp252 = icmp eq i32 %conv251, 45
  br i1 %cmp252, label %if.then254, label %if.end255

if.then254:                                       ; preds = %land.lhs.true249
  store ptr null, ptr %infilename, align 8, !tbaa !9
  br label %if.end255

if.end255:                                        ; preds = %if.then254, %land.lhs.true249, %if.end247
  %99 = load ptr, ptr %infilename, align 8, !tbaa !9
  %call256 = call ptr @opengraphfile(ptr noundef %99, ptr noundef %codetype, i32 noundef 0, i64 noundef 1)
  store ptr %call256, ptr %infile, align 8, !tbaa !9
  %100 = load ptr, ptr %infile, align 8, !tbaa !9
  %tobool257 = icmp ne ptr %100, null
  br i1 %tobool257, label %if.end259, label %if.then258

if.then258:                                       ; preds = %if.end255
  call void @exit(i32 noundef 1) #10
  unreachable

if.end259:                                        ; preds = %if.end255
  %101 = load ptr, ptr %infilename, align 8, !tbaa !9
  %tobool260 = icmp ne ptr %101, null
  br i1 %tobool260, label %if.end262, label %if.then261

if.then261:                                       ; preds = %if.end259
  store ptr @.str.17, ptr %infilename, align 8, !tbaa !9
  br label %if.end262

if.end262:                                        ; preds = %if.then261, %if.end259
  %102 = load ptr, ptr %infilename, align 8, !tbaa !9
  %cmp263 = icmp eq ptr %102, null
  br i1 %cmp263, label %if.then265, label %if.end266

if.then265:                                       ; preds = %if.end262
  store ptr @.str.17, ptr %infilename, align 8, !tbaa !9
  br label %if.end266

if.end266:                                        ; preds = %if.then265, %if.end262
  %103 = load i32, ptr %codetype, align 4, !tbaa !5
  %and = and i32 %103, 128
  %tobool267 = icmp ne i32 %and, 0
  br i1 %tobool267, label %if.then268, label %if.end269

if.then268:                                       ; preds = %if.end266
  call void @gt_abort(ptr noundef @.str.18)
  br label %if.end269

if.end269:                                        ; preds = %if.then268, %if.end266
  %104 = load ptr, ptr %outfilename, align 8, !tbaa !9
  %cmp270 = icmp eq ptr %104, null
  br i1 %cmp270, label %if.then277, label %lor.lhs.false272

lor.lhs.false272:                                 ; preds = %if.end269
  %105 = load ptr, ptr %outfilename, align 8, !tbaa !9
  %arrayidx273 = getelementptr inbounds i8, ptr %105, i64 0
  %106 = load i8, ptr %arrayidx273, align 1, !tbaa !13
  %conv274 = sext i8 %106 to i32
  %cmp275 = icmp eq i32 %conv274, 45
  br i1 %cmp275, label %if.then277, label %if.else278

if.then277:                                       ; preds = %lor.lhs.false272, %if.end269
  %107 = load ptr, ptr @stdout, align 8, !tbaa !9
  store ptr %107, ptr %outfile, align 8, !tbaa !9
  store ptr @.str.19, ptr %outfilename, align 8, !tbaa !9
  %108 = load ptr, ptr @stderr, align 8, !tbaa !9
  store ptr %108, ptr %msgfile, align 8, !tbaa !9
  br label %if.end290

if.else278:                                       ; preds = %lor.lhs.false272
  %109 = load ptr, ptr @stdout, align 8, !tbaa !9
  store ptr %109, ptr %msgfile, align 8, !tbaa !9
  %110 = load ptr, ptr %outfilename, align 8, !tbaa !9
  %call279 = call noalias ptr @fopen(ptr noundef %110, ptr noundef @.str.20)
  store ptr %call279, ptr %outfile, align 8, !tbaa !9
  %cmp280 = icmp eq ptr %call279, null
  br i1 %cmp280, label %if.then282, label %if.end289

if.then282:                                       ; preds = %if.else278
  %111 = load ptr, ptr @stderr, align 8, !tbaa !9
  %112 = load ptr, ptr %outfilename, align 8, !tbaa !9
  %call283 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef @.str.21, ptr noundef %112)
  br label %do.body

do.body:                                          ; preds = %if.then282
  %call284 = call ptr @__errno_location() #11
  %113 = load i32, ptr %call284, align 4, !tbaa !5
  %cmp285 = icmp ne i32 %113, 0
  br i1 %cmp285, label %if.then287, label %if.end288

if.then287:                                       ; preds = %do.body
  call void @perror(ptr noundef @.str.22)
  br label %if.end288

if.end288:                                        ; preds = %if.then287, %do.body
  call void @exit(i32 noundef 1) #10
  unreachable

do.cond:                                          ; No predecessors!
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end289

if.end289:                                        ; preds = %do.end, %if.else278
  br label %if.end290

if.end290:                                        ; preds = %if.end289, %if.then277
  %114 = load i32, ptr %triconn, align 4, !tbaa !5
  %tobool291 = icmp ne i32 %114, 0
  br i1 %tobool291, label %if.then292, label %if.end293

if.then292:                                       ; preds = %if.end290
  store i32 0, ptr %biconn, align 4, !tbaa !5
  br label %if.end293

if.end293:                                        ; preds = %if.then292, %if.end290
  %115 = load i32, ptr %e34, align 4, !tbaa !5
  %tobool294 = icmp ne i32 %115, 0
  br i1 %tobool294, label %if.then295, label %if.end296

if.then295:                                       ; preds = %if.end293
  store i32 0, ptr %inout, align 4, !tbaa !5
  store i32 0, ptr %inin, align 4, !tbaa !5
  store i32 0, ptr %out, align 4, !tbaa !5
  store i32 0, ptr %in, align 4, !tbaa !5
  br label %if.end296

if.end296:                                        ; preds = %if.then295, %if.end293
  %116 = load i32, ptr %inout, align 4, !tbaa !5
  %tobool297 = icmp ne i32 %116, 0
  br i1 %tobool297, label %if.then298, label %if.end299

if.then298:                                       ; preds = %if.end296
  store i32 0, ptr %inin, align 4, !tbaa !5
  store i32 0, ptr %out, align 4, !tbaa !5
  store i32 0, ptr %in, align 4, !tbaa !5
  br label %if.end299

if.end299:                                        ; preds = %if.then298, %if.end296
  %117 = load i32, ptr %inin, align 4, !tbaa !5
  %tobool300 = icmp ne i32 %117, 0
  br i1 %tobool300, label %if.then301, label %if.end302

if.then301:                                       ; preds = %if.end299
  store i32 0, ptr %out, align 4, !tbaa !5
  store i32 0, ptr %in, align 4, !tbaa !5
  br label %if.end302

if.end302:                                        ; preds = %if.then301, %if.end299
  %118 = load i32, ptr %out, align 4, !tbaa !5
  %tobool303 = icmp ne i32 %118, 0
  br i1 %tobool303, label %if.then304, label %if.end305

if.then304:                                       ; preds = %if.end302
  store i32 0, ptr %in, align 4, !tbaa !5
  br label %if.end305

if.end305:                                        ; preds = %if.then304, %if.end302
  %119 = load i32, ptr %testing, align 4, !tbaa !5
  %tobool306 = icmp ne i32 %119, 0
  br i1 %tobool306, label %if.then307, label %if.end308

if.then307:                                       ; preds = %if.end305
  store i32 1, ptr %out, align 4, !tbaa !5
  br label %if.end308

if.end308:                                        ; preds = %if.then307, %if.end305
  %120 = load i32, ptr %codetype, align 4, !tbaa !5
  %and309 = and i32 %120, 512
  %tobool310 = icmp ne i32 %and309, 0
  br i1 %tobool310, label %if.then311, label %if.end317

if.then311:                                       ; preds = %if.end308
  %121 = load i32, ptr %codetype, align 4, !tbaa !5
  %and312 = and i32 %121, 2
  %tobool313 = icmp ne i32 %and312, 0
  br i1 %tobool313, label %if.then314, label %if.else315

if.then314:                                       ; preds = %if.then311
  %122 = load ptr, ptr %outfile, align 8, !tbaa !9
  call void @writeline(ptr noundef %122, ptr noundef @.str.23)
  br label %if.end316

if.else315:                                       ; preds = %if.then311
  %123 = load ptr, ptr %outfile, align 8, !tbaa !9
  call void @writeline(ptr noundef %123, ptr noundef @.str.24)
  br label %if.end316

if.end316:                                        ; preds = %if.else315, %if.then314
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end308
  store i64 0, ptr %nonconn, align 8, !tbaa !11
  store i64 0, ptr %nonham, align 8, !tbaa !11
  store i64 0, ptr %noncub, align 8, !tbaa !11
  store i64 0, ptr %numread, align 8, !tbaa !11
  store i64 0, ptr %numto, align 8, !tbaa !11
  %call318 = call i64 @time(ptr noundef null) #8
  call void @ran_init(i64 noundef %call318)
  %call319 = call i64 @times(ptr noundef @timebuffer) #8
  %124 = load i64, ptr @timebuffer, align 8, !tbaa !17
  %125 = load i64, ptr getelementptr inbounds (%struct.tms, ptr @timebuffer, i32 0, i32 1), align 8, !tbaa !19
  %add = add nsw i64 %124, %125
  %conv320 = sitofp i64 %add to double
  %call321 = call i64 @sysconf(i32 noundef 2) #8
  %conv322 = sitofp i64 %call321 to double
  %div = fdiv double %conv320, %conv322
  store double %div, ptr %t0, align 8, !tbaa !20
  %126 = load i32, ptr @verbose, align 4, !tbaa !5
  %tobool323 = icmp ne i32 %126, 0
  %127 = zext i1 %tobool323 to i64
  %cond324 = select i1 %tobool323, i32 100, i32 1
  store i32 %cond324, ptr %limit, align 4, !tbaa !5
  br label %do.body325

do.body325:                                       ; preds = %if.end317
  %v = getelementptr inbounds %struct.sparsegraph, ptr %sg, i32 0, i32 1
  store ptr null, ptr %v, align 8, !tbaa !22
  %w = getelementptr inbounds %struct.sparsegraph, ptr %sg, i32 0, i32 5
  store ptr null, ptr %w, align 8, !tbaa !24
  %e = getelementptr inbounds %struct.sparsegraph, ptr %sg, i32 0, i32 4
  store ptr null, ptr %e, align 8, !tbaa !25
  %d = getelementptr inbounds %struct.sparsegraph, ptr %sg, i32 0, i32 3
  store ptr null, ptr %d, align 8, !tbaa !26
  %wlen = getelementptr inbounds %struct.sparsegraph, ptr %sg, i32 0, i32 9
  store i64 0, ptr %wlen, align 8, !tbaa !27
  %elen = getelementptr inbounds %struct.sparsegraph, ptr %sg, i32 0, i32 8
  store i64 0, ptr %elen, align 8, !tbaa !28
  %dlen = getelementptr inbounds %struct.sparsegraph, ptr %sg, i32 0, i32 7
  store i64 0, ptr %dlen, align 8, !tbaa !29
  %vlen = getelementptr inbounds %struct.sparsegraph, ptr %sg, i32 0, i32 6
  store i64 0, ptr %vlen, align 8, !tbaa !30
  br label %do.cond326

do.cond326:                                       ; preds = %do.body325
  br label %do.end327

do.end327:                                        ; preds = %do.cond326
  br label %while.cond

while.cond:                                       ; preds = %if.end623, %do.end327
  %128 = load ptr, ptr %infile, align 8, !tbaa !9
  %call328 = call ptr @read_sg(ptr noundef %128, ptr noundef %sg)
  %tobool329 = icmp ne ptr %call328, null
  br i1 %tobool329, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %129 = load i64, ptr %numread, align 8, !tbaa !11
  %inc330 = add i64 %129, 1
  store i64 %inc330, ptr %numread, align 8, !tbaa !11
  %nv = getelementptr inbounds %struct.sparsegraph, ptr %sg, i32 0, i32 2
  %130 = load i32, ptr %nv, align 8, !tbaa !31
  store i32 %130, ptr %n, align 4, !tbaa !5
  %131 = load i32, ptr %n, align 4, !tbaa !5
  %cmp331 = icmp sge i32 %131, 151
  br i1 %cmp331, label %if.then333, label %if.end335

if.then333:                                       ; preds = %while.body
  %132 = load ptr, ptr @stderr, align 8, !tbaa !9
  %133 = load i64, ptr %numread, align 8, !tbaa !11
  %call334 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef @.str.25, i64 noundef %133)
  call void @exit(i32 noundef 1) #10
  unreachable

if.end335:                                        ; preds = %while.body
  %arraydecay = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 0
  %call336 = call i32 @sgtocub(ptr noundef %sg, ptr noundef %arraydecay, ptr noundef %ne)
  %tobool337 = icmp ne i32 %call336, 0
  br i1 %tobool337, label %if.else344, label %if.then338

if.then338:                                       ; preds = %if.end335
  %134 = load i32, ptr @verbose, align 4, !tbaa !5
  %tobool339 = icmp ne i32 %134, 0
  br i1 %tobool339, label %if.then340, label %if.end342

if.then340:                                       ; preds = %if.then338
  %135 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %136 = load i64, ptr %numread, align 8, !tbaa !11
  %call341 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef @.str.26, i64 noundef %136)
  br label %if.end342

if.end342:                                        ; preds = %if.then340, %if.then338
  %137 = load i64, ptr %noncub, align 8, !tbaa !11
  %inc343 = add i64 %137, 1
  store i64 %inc343, ptr %noncub, align 8, !tbaa !11
  br label %if.end623

if.else344:                                       ; preds = %if.end335
  %138 = load i32, ptr %biconn, align 4, !tbaa !5
  %tobool345 = icmp ne i32 %138, 0
  br i1 %tobool345, label %land.lhs.true346, label %if.else352

land.lhs.true346:                                 ; preds = %if.else344
  %arraydecay347 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 0
  %139 = load i32, ptr %n, align 4, !tbaa !5
  %call348 = call i32 @biconnected_cub(ptr noundef %arraydecay347, i32 noundef %139)
  %tobool349 = icmp ne i32 %call348, 0
  br i1 %tobool349, label %if.else352, label %if.then350

if.then350:                                       ; preds = %land.lhs.true346
  %140 = load i64, ptr %nonconn, align 8, !tbaa !11
  %inc351 = add i64 %140, 1
  store i64 %inc351, ptr %nonconn, align 8, !tbaa !11
  br label %if.end622

if.else352:                                       ; preds = %land.lhs.true346, %if.else344
  %141 = load i32, ptr %triconn, align 4, !tbaa !5
  %tobool353 = icmp ne i32 %141, 0
  br i1 %tobool353, label %land.lhs.true354, label %if.else360

land.lhs.true354:                                 ; preds = %if.else352
  %arraydecay355 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 0
  %142 = load i32, ptr %n, align 4, !tbaa !5
  %call356 = call i32 @triconnected_cub(ptr noundef %arraydecay355, i32 noundef %142)
  %tobool357 = icmp ne i32 %call356, 0
  br i1 %tobool357, label %if.else360, label %if.then358

if.then358:                                       ; preds = %land.lhs.true354
  %143 = load i64, ptr %nonconn, align 8, !tbaa !11
  %inc359 = add i64 %143, 1
  store i64 %inc359, ptr %nonconn, align 8, !tbaa !11
  br label %if.end621

if.else360:                                       ; preds = %land.lhs.true354, %if.else352
  %144 = load i32, ptr %e34, align 4, !tbaa !5
  %tobool361 = icmp ne i32 %144, 0
  br i1 %tobool361, label %if.then362, label %if.else410

if.then362:                                       ; preds = %if.else360
  %arraydecay363 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 0
  %145 = load i32, ptr %n, align 4, !tbaa !5
  %146 = load i32, ptr %ne, align 4, !tbaa !5
  %arraydecay364 = getelementptr inbounds [100 x i32], ptr %x0, i64 0, i64 0
  %arraydecay365 = getelementptr inbounds [100 x i32], ptr %x1, i64 0, i64 0
  %arraydecay366 = getelementptr inbounds [100 x i32], ptr %y0, i64 0, i64 0
  %147 = load i32, ptr %e34plus, align 4, !tbaa !5
  %148 = load i32, ptr %limit, align 4, !tbaa !5
  %call367 = call i32 @hase34(ptr noundef %arraydecay363, i32 noundef %145, i32 noundef %146, ptr noundef %arraydecay364, ptr noundef %arraydecay365, ptr noundef %arraydecay366, i32 noundef %147, i32 noundef %148)
  store i32 %call367, ptr %nbad, align 4, !tbaa !5
  %cmp368 = icmp sgt i32 %call367, 0
  br i1 %cmp368, label %if.then370, label %if.end409

if.then370:                                       ; preds = %if.then362
  %149 = load i32, ptr @verbose, align 4, !tbaa !5
  %tobool371 = icmp ne i32 %149, 0
  br i1 %tobool371, label %if.then372, label %if.end407

if.then372:                                       ; preds = %if.then370
  %150 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %151 = load i64, ptr %numread, align 8, !tbaa !11
  %152 = load i32, ptr %e34plus, align 4, !tbaa !5
  %tobool373 = icmp ne i32 %152, 0
  %153 = zext i1 %tobool373 to i64
  %cond374 = select i1 %tobool373, ptr @.str.28, ptr @.str.29
  %call375 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %150, ptr noundef @.str.27, i64 noundef %151, ptr noundef %cond374)
  %154 = load i32, ptr %e34plus, align 4, !tbaa !5
  %tobool376 = icmp ne i32 %154, 0
  br i1 %tobool376, label %if.then377, label %if.else392

if.then377:                                       ; preds = %if.then372
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond378

for.cond378:                                      ; preds = %for.inc389, %if.then377
  %155 = load i32, ptr %i, align 4, !tbaa !5
  %156 = load i32, ptr %nbad, align 4, !tbaa !5
  %cmp379 = icmp slt i32 %155, %156
  br i1 %cmp379, label %for.body381, label %for.end391

for.body381:                                      ; preds = %for.cond378
  %157 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %158 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom382 = sext i32 %158 to i64
  %arrayidx383 = getelementptr inbounds [100 x i32], ptr %x0, i64 0, i64 %idxprom382
  %159 = load i32, ptr %arrayidx383, align 4, !tbaa !5
  %160 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom384 = sext i32 %160 to i64
  %arrayidx385 = getelementptr inbounds [100 x i32], ptr %x1, i64 0, i64 %idxprom384
  %161 = load i32, ptr %arrayidx385, align 4, !tbaa !5
  %162 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom386 = sext i32 %162 to i64
  %arrayidx387 = getelementptr inbounds [100 x i32], ptr %y0, i64 0, i64 %idxprom386
  %163 = load i32, ptr %arrayidx387, align 4, !tbaa !5
  %call388 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %157, ptr noundef @.str.30, i32 noundef %159, i32 noundef %161, i32 noundef %163)
  br label %for.inc389

for.inc389:                                       ; preds = %for.body381
  %164 = load i32, ptr %i, align 4, !tbaa !5
  %inc390 = add nsw i32 %164, 1
  store i32 %inc390, ptr %i, align 4, !tbaa !5
  br label %for.cond378, !llvm.loop !32

for.end391:                                       ; preds = %for.cond378
  br label %if.end405

if.else392:                                       ; preds = %if.then372
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond393

for.cond393:                                      ; preds = %for.inc402, %if.else392
  %165 = load i32, ptr %i, align 4, !tbaa !5
  %166 = load i32, ptr %nbad, align 4, !tbaa !5
  %cmp394 = icmp slt i32 %165, %166
  br i1 %cmp394, label %for.body396, label %for.end404

for.body396:                                      ; preds = %for.cond393
  %167 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %168 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom397 = sext i32 %168 to i64
  %arrayidx398 = getelementptr inbounds [100 x i32], ptr %x0, i64 0, i64 %idxprom397
  %169 = load i32, ptr %arrayidx398, align 4, !tbaa !5
  %170 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom399 = sext i32 %170 to i64
  %arrayidx400 = getelementptr inbounds [100 x i32], ptr %x1, i64 0, i64 %idxprom399
  %171 = load i32, ptr %arrayidx400, align 4, !tbaa !5
  %call401 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef @.str.31, i32 noundef %169, i32 noundef %171)
  br label %for.inc402

for.inc402:                                       ; preds = %for.body396
  %172 = load i32, ptr %i, align 4, !tbaa !5
  %inc403 = add nsw i32 %172, 1
  store i32 %inc403, ptr %i, align 4, !tbaa !5
  br label %for.cond393, !llvm.loop !33

for.end404:                                       ; preds = %for.cond393
  br label %if.end405

if.end405:                                        ; preds = %for.end404, %for.end391
  %173 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %call406 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %173, ptr noundef @.str.32)
  br label %if.end407

if.end407:                                        ; preds = %if.end405, %if.then370
  %174 = load i64, ptr %nonham, align 8, !tbaa !11
  %inc408 = add i64 %174, 1
  store i64 %inc408, ptr %nonham, align 8, !tbaa !11
  %175 = load ptr, ptr %outfile, align 8, !tbaa !9
  call void @writelast(ptr noundef %175)
  br label %if.end409

if.end409:                                        ; preds = %if.end407, %if.then362
  br label %if.end620

if.else410:                                       ; preds = %if.else360
  %176 = load i32, ptr %inout, align 4, !tbaa !5
  %tobool411 = icmp ne i32 %176, 0
  br i1 %tobool411, label %if.then412, label %if.else445

if.then412:                                       ; preds = %if.else410
  %arraydecay413 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 0
  %177 = load i32, ptr %n, align 4, !tbaa !5
  %178 = load i32, ptr %ne, align 4, !tbaa !5
  %arraydecay414 = getelementptr inbounds [100 x i32], ptr %x0, i64 0, i64 0
  %arraydecay415 = getelementptr inbounds [100 x i32], ptr %x1, i64 0, i64 0
  %arraydecay416 = getelementptr inbounds [100 x i32], ptr %y0, i64 0, i64 0
  %arraydecay417 = getelementptr inbounds [100 x i32], ptr %y1, i64 0, i64 0
  %179 = load i32, ptr %limit, align 4, !tbaa !5
  %call418 = call i32 @hasinout(ptr noundef %arraydecay413, i32 noundef %177, i32 noundef %178, ptr noundef %arraydecay414, ptr noundef %arraydecay415, ptr noundef %arraydecay416, ptr noundef %arraydecay417, i32 noundef %179)
  store i32 %call418, ptr %nbad, align 4, !tbaa !5
  %cmp419 = icmp sgt i32 %call418, 0
  br i1 %cmp419, label %if.then421, label %if.end444

if.then421:                                       ; preds = %if.then412
  %180 = load i32, ptr @verbose, align 4, !tbaa !5
  %tobool422 = icmp ne i32 %180, 0
  br i1 %tobool422, label %if.then423, label %if.end442

if.then423:                                       ; preds = %if.then421
  %181 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %182 = load i64, ptr %numread, align 8, !tbaa !11
  %call424 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %181, ptr noundef @.str.33, i64 noundef %182)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond425

for.cond425:                                      ; preds = %for.inc438, %if.then423
  %183 = load i32, ptr %i, align 4, !tbaa !5
  %184 = load i32, ptr %nbad, align 4, !tbaa !5
  %cmp426 = icmp slt i32 %183, %184
  br i1 %cmp426, label %for.body428, label %for.end440

for.body428:                                      ; preds = %for.cond425
  %185 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %186 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom429 = sext i32 %186 to i64
  %arrayidx430 = getelementptr inbounds [100 x i32], ptr %x0, i64 0, i64 %idxprom429
  %187 = load i32, ptr %arrayidx430, align 4, !tbaa !5
  %188 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom431 = sext i32 %188 to i64
  %arrayidx432 = getelementptr inbounds [100 x i32], ptr %x1, i64 0, i64 %idxprom431
  %189 = load i32, ptr %arrayidx432, align 4, !tbaa !5
  %190 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom433 = sext i32 %190 to i64
  %arrayidx434 = getelementptr inbounds [100 x i32], ptr %y0, i64 0, i64 %idxprom433
  %191 = load i32, ptr %arrayidx434, align 4, !tbaa !5
  %192 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom435 = sext i32 %192 to i64
  %arrayidx436 = getelementptr inbounds [100 x i32], ptr %y1, i64 0, i64 %idxprom435
  %193 = load i32, ptr %arrayidx436, align 4, !tbaa !5
  %call437 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %185, ptr noundef @.str.34, i32 noundef %187, i32 noundef %189, i32 noundef %191, i32 noundef %193)
  br label %for.inc438

for.inc438:                                       ; preds = %for.body428
  %194 = load i32, ptr %i, align 4, !tbaa !5
  %inc439 = add nsw i32 %194, 1
  store i32 %inc439, ptr %i, align 4, !tbaa !5
  br label %for.cond425, !llvm.loop !34

for.end440:                                       ; preds = %for.cond425
  %195 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %call441 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %195, ptr noundef @.str.32)
  br label %if.end442

if.end442:                                        ; preds = %for.end440, %if.then421
  %196 = load i64, ptr %nonham, align 8, !tbaa !11
  %inc443 = add i64 %196, 1
  store i64 %inc443, ptr %nonham, align 8, !tbaa !11
  %197 = load ptr, ptr %outfile, align 8, !tbaa !9
  call void @writelast(ptr noundef %197)
  br label %if.end444

if.end444:                                        ; preds = %if.end442, %if.then412
  br label %if.end619

if.else445:                                       ; preds = %if.else410
  %198 = load i32, ptr %inin, align 4, !tbaa !5
  %tobool446 = icmp ne i32 %198, 0
  br i1 %tobool446, label %if.then447, label %if.else480

if.then447:                                       ; preds = %if.else445
  %arraydecay448 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 0
  %199 = load i32, ptr %n, align 4, !tbaa !5
  %200 = load i32, ptr %ne, align 4, !tbaa !5
  %arraydecay449 = getelementptr inbounds [100 x i32], ptr %x0, i64 0, i64 0
  %arraydecay450 = getelementptr inbounds [100 x i32], ptr %x1, i64 0, i64 0
  %arraydecay451 = getelementptr inbounds [100 x i32], ptr %y0, i64 0, i64 0
  %arraydecay452 = getelementptr inbounds [100 x i32], ptr %y1, i64 0, i64 0
  %201 = load i32, ptr %limit, align 4, !tbaa !5
  %call453 = call i32 @hasinin(ptr noundef %arraydecay448, i32 noundef %199, i32 noundef %200, ptr noundef %arraydecay449, ptr noundef %arraydecay450, ptr noundef %arraydecay451, ptr noundef %arraydecay452, i32 noundef %201)
  store i32 %call453, ptr %nbad, align 4, !tbaa !5
  %cmp454 = icmp sgt i32 %call453, 0
  br i1 %cmp454, label %if.then456, label %if.end479

if.then456:                                       ; preds = %if.then447
  %202 = load i32, ptr @verbose, align 4, !tbaa !5
  %tobool457 = icmp ne i32 %202, 0
  br i1 %tobool457, label %if.then458, label %if.end477

if.then458:                                       ; preds = %if.then456
  %203 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %204 = load i64, ptr %numread, align 8, !tbaa !11
  %call459 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef @.str.35, i64 noundef %204)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond460

for.cond460:                                      ; preds = %for.inc473, %if.then458
  %205 = load i32, ptr %i, align 4, !tbaa !5
  %206 = load i32, ptr %nbad, align 4, !tbaa !5
  %cmp461 = icmp slt i32 %205, %206
  br i1 %cmp461, label %for.body463, label %for.end475

for.body463:                                      ; preds = %for.cond460
  %207 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %208 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom464 = sext i32 %208 to i64
  %arrayidx465 = getelementptr inbounds [100 x i32], ptr %x0, i64 0, i64 %idxprom464
  %209 = load i32, ptr %arrayidx465, align 4, !tbaa !5
  %210 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom466 = sext i32 %210 to i64
  %arrayidx467 = getelementptr inbounds [100 x i32], ptr %x1, i64 0, i64 %idxprom466
  %211 = load i32, ptr %arrayidx467, align 4, !tbaa !5
  %212 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom468 = sext i32 %212 to i64
  %arrayidx469 = getelementptr inbounds [100 x i32], ptr %y0, i64 0, i64 %idxprom468
  %213 = load i32, ptr %arrayidx469, align 4, !tbaa !5
  %214 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom470 = sext i32 %214 to i64
  %arrayidx471 = getelementptr inbounds [100 x i32], ptr %y1, i64 0, i64 %idxprom470
  %215 = load i32, ptr %arrayidx471, align 4, !tbaa !5
  %call472 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %207, ptr noundef @.str.34, i32 noundef %209, i32 noundef %211, i32 noundef %213, i32 noundef %215)
  br label %for.inc473

for.inc473:                                       ; preds = %for.body463
  %216 = load i32, ptr %i, align 4, !tbaa !5
  %inc474 = add nsw i32 %216, 1
  store i32 %inc474, ptr %i, align 4, !tbaa !5
  br label %for.cond460, !llvm.loop !35

for.end475:                                       ; preds = %for.cond460
  %217 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %call476 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %217, ptr noundef @.str.32)
  br label %if.end477

if.end477:                                        ; preds = %for.end475, %if.then456
  %218 = load i64, ptr %nonham, align 8, !tbaa !11
  %inc478 = add i64 %218, 1
  store i64 %inc478, ptr %nonham, align 8, !tbaa !11
  %219 = load ptr, ptr %outfile, align 8, !tbaa !9
  call void @writelast(ptr noundef %219)
  br label %if.end479

if.end479:                                        ; preds = %if.end477, %if.then447
  br label %if.end618

if.else480:                                       ; preds = %if.else445
  %220 = load i32, ptr %out, align 4, !tbaa !5
  %tobool481 = icmp ne i32 %220, 0
  br i1 %tobool481, label %if.then482, label %if.else525

if.then482:                                       ; preds = %if.else480
  %arraydecay483 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 0
  %221 = load i32, ptr %n, align 4, !tbaa !5
  %222 = load i32, ptr %ne, align 4, !tbaa !5
  %223 = load i32, ptr %weight, align 4, !tbaa !5
  %arraydecay484 = getelementptr inbounds [100 x i32], ptr %x0, i64 0, i64 0
  %arraydecay485 = getelementptr inbounds [100 x i32], ptr %x1, i64 0, i64 0
  %224 = load i32, ptr %limit, align 4, !tbaa !5
  %call486 = call i32 @hasout(ptr noundef %arraydecay483, i32 noundef %221, i32 noundef %222, i32 noundef %223, ptr noundef %arraydecay484, ptr noundef %arraydecay485, i32 noundef %224)
  store i32 %call486, ptr %nbad, align 4, !tbaa !5
  %cmp487 = icmp ne i32 %call486, 0
  br i1 %cmp487, label %if.then489, label %if.end524

if.then489:                                       ; preds = %if.then482
  %225 = load i32, ptr @verbose, align 4, !tbaa !5
  %tobool490 = icmp ne i32 %225, 0
  br i1 %tobool490, label %if.then491, label %if.end518

if.then491:                                       ; preds = %if.then489
  %226 = load i32, ptr %nbad, align 4, !tbaa !5
  %cmp492 = icmp eq i32 %226, -2
  br i1 %cmp492, label %if.then494, label %if.else496

if.then494:                                       ; preds = %if.then491
  %227 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %228 = load i64, ptr %numread, align 8, !tbaa !11
  %call495 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %227, ptr noundef @.str.36, i64 noundef %228)
  br label %if.end517

if.else496:                                       ; preds = %if.then491
  %229 = load i32, ptr %nbad, align 4, !tbaa !5
  %cmp497 = icmp eq i32 %229, -1
  br i1 %cmp497, label %if.then499, label %if.else501

if.then499:                                       ; preds = %if.else496
  %230 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %231 = load i64, ptr %numread, align 8, !tbaa !11
  %call500 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %230, ptr noundef @.str.37, i64 noundef %231)
  br label %if.end516

if.else501:                                       ; preds = %if.else496
  %232 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %233 = load i64, ptr %numread, align 8, !tbaa !11
  %call502 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %232, ptr noundef @.str.38, i64 noundef %233)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond503

for.cond503:                                      ; preds = %for.inc512, %if.else501
  %234 = load i32, ptr %i, align 4, !tbaa !5
  %235 = load i32, ptr %nbad, align 4, !tbaa !5
  %cmp504 = icmp slt i32 %234, %235
  br i1 %cmp504, label %for.body506, label %for.end514

for.body506:                                      ; preds = %for.cond503
  %236 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %237 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom507 = sext i32 %237 to i64
  %arrayidx508 = getelementptr inbounds [100 x i32], ptr %x0, i64 0, i64 %idxprom507
  %238 = load i32, ptr %arrayidx508, align 4, !tbaa !5
  %239 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom509 = sext i32 %239 to i64
  %arrayidx510 = getelementptr inbounds [100 x i32], ptr %x1, i64 0, i64 %idxprom509
  %240 = load i32, ptr %arrayidx510, align 4, !tbaa !5
  %call511 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %236, ptr noundef @.str.31, i32 noundef %238, i32 noundef %240)
  br label %for.inc512

for.inc512:                                       ; preds = %for.body506
  %241 = load i32, ptr %i, align 4, !tbaa !5
  %inc513 = add nsw i32 %241, 1
  store i32 %inc513, ptr %i, align 4, !tbaa !5
  br label %for.cond503, !llvm.loop !36

for.end514:                                       ; preds = %for.cond503
  %242 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %call515 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %242, ptr noundef @.str.32)
  br label %if.end516

if.end516:                                        ; preds = %for.end514, %if.then499
  br label %if.end517

if.end517:                                        ; preds = %if.end516, %if.then494
  br label %if.end518

if.end518:                                        ; preds = %if.end517, %if.then489
  %243 = load i32, ptr %nbad, align 4, !tbaa !5
  %cmp519 = icmp ne i32 %243, -1
  br i1 %cmp519, label %if.then521, label %if.end523

if.then521:                                       ; preds = %if.end518
  %244 = load i64, ptr %nonham, align 8, !tbaa !11
  %inc522 = add i64 %244, 1
  store i64 %inc522, ptr %nonham, align 8, !tbaa !11
  %245 = load ptr, ptr %outfile, align 8, !tbaa !9
  call void @writelast(ptr noundef %245)
  br label %if.end523

if.end523:                                        ; preds = %if.then521, %if.end518
  br label %if.end524

if.end524:                                        ; preds = %if.end523, %if.then482
  br label %if.end617

if.else525:                                       ; preds = %if.else480
  %246 = load i32, ptr %in, align 4, !tbaa !5
  %tobool526 = icmp ne i32 %246, 0
  br i1 %tobool526, label %if.then527, label %if.else554

if.then527:                                       ; preds = %if.else525
  %arraydecay528 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 0
  %247 = load i32, ptr %n, align 4, !tbaa !5
  %248 = load i32, ptr %ne, align 4, !tbaa !5
  %arraydecay529 = getelementptr inbounds [100 x i32], ptr %x0, i64 0, i64 0
  %arraydecay530 = getelementptr inbounds [100 x i32], ptr %x1, i64 0, i64 0
  %249 = load i32, ptr %limit, align 4, !tbaa !5
  %call531 = call i32 @hasin(ptr noundef %arraydecay528, i32 noundef %247, i32 noundef %248, ptr noundef %arraydecay529, ptr noundef %arraydecay530, i32 noundef %249)
  store i32 %call531, ptr %nbad, align 4, !tbaa !5
  %cmp532 = icmp sgt i32 %call531, 0
  br i1 %cmp532, label %if.then534, label %if.end553

if.then534:                                       ; preds = %if.then527
  %250 = load i32, ptr @verbose, align 4, !tbaa !5
  %tobool535 = icmp ne i32 %250, 0
  br i1 %tobool535, label %if.then536, label %if.end551

if.then536:                                       ; preds = %if.then534
  %251 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %252 = load i64, ptr %numread, align 8, !tbaa !11
  %call537 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %251, ptr noundef @.str.39, i64 noundef %252)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond538

for.cond538:                                      ; preds = %for.inc547, %if.then536
  %253 = load i32, ptr %i, align 4, !tbaa !5
  %254 = load i32, ptr %nbad, align 4, !tbaa !5
  %cmp539 = icmp slt i32 %253, %254
  br i1 %cmp539, label %for.body541, label %for.end549

for.body541:                                      ; preds = %for.cond538
  %255 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %256 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom542 = sext i32 %256 to i64
  %arrayidx543 = getelementptr inbounds [100 x i32], ptr %x0, i64 0, i64 %idxprom542
  %257 = load i32, ptr %arrayidx543, align 4, !tbaa !5
  %258 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom544 = sext i32 %258 to i64
  %arrayidx545 = getelementptr inbounds [100 x i32], ptr %x1, i64 0, i64 %idxprom544
  %259 = load i32, ptr %arrayidx545, align 4, !tbaa !5
  %call546 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %255, ptr noundef @.str.31, i32 noundef %257, i32 noundef %259)
  br label %for.inc547

for.inc547:                                       ; preds = %for.body541
  %260 = load i32, ptr %i, align 4, !tbaa !5
  %inc548 = add nsw i32 %260, 1
  store i32 %inc548, ptr %i, align 4, !tbaa !5
  br label %for.cond538, !llvm.loop !37

for.end549:                                       ; preds = %for.cond538
  %261 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %call550 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %261, ptr noundef @.str.32)
  br label %if.end551

if.end551:                                        ; preds = %for.end549, %if.then534
  %262 = load i64, ptr %nonham, align 8, !tbaa !11
  %inc552 = add i64 %262, 1
  store i64 %inc552, ptr %nonham, align 8, !tbaa !11
  %263 = load ptr, ptr %outfile, align 8, !tbaa !9
  call void @writelast(ptr noundef %263)
  br label %if.end553

if.end553:                                        ; preds = %if.end551, %if.then527
  br label %if.end616

if.else554:                                       ; preds = %if.else525
  %264 = load i32, ptr %fragment, align 4, !tbaa !5
  %tobool555 = icmp ne i32 %264, 0
  br i1 %tobool555, label %if.then556, label %if.else558

if.then556:                                       ; preds = %if.else554
  %265 = load i64, ptr %numread, align 8, !tbaa !11
  %arraydecay557 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 0
  %266 = load i32, ptr %n, align 4, !tbaa !5
  %267 = load i32, ptr %ne, align 4, !tbaa !5
  %268 = load i32, ptr %weight, align 4, !tbaa !5
  call void @dofragment(i64 noundef %265, ptr noundef %arraydecay557, i32 noundef %266, i32 noundef %267, i32 noundef %268)
  br label %if.end615

if.else558:                                       ; preds = %if.else554
  %arraydecay559 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 0
  %269 = load i32, ptr %n, align 4, !tbaa !5
  %270 = load i32, ptr %ne, align 4, !tbaa !5
  %271 = load i32, ptr %weight, align 4, !tbaa !5
  %arraydecay560 = getelementptr inbounds [100 x i32], ptr %vv, i64 0, i64 0
  %arraydecay561 = getelementptr inbounds [100 x i32], ptr %vi, i64 0, i64 0
  %272 = load i32, ptr %nvv, align 4, !tbaa !5
  %arraydecay562 = getelementptr inbounds [100 x i32], ptr %yy, i64 0, i64 0
  %arraydecay563 = getelementptr inbounds [100 x i32], ptr %yi, i64 0, i64 0
  %273 = load i32, ptr %nyy, align 4, !tbaa !5
  %arraydecay564 = getelementptr inbounds [152 x i32], ptr %cyc, i64 0, i64 0
  %call565 = call i32 @isham(ptr noundef %arraydecay559, i32 noundef %269, i32 noundef %270, i32 noundef %271, ptr noundef %arraydecay560, ptr noundef %arraydecay561, i32 noundef %272, ptr noundef %arraydecay562, ptr noundef %arraydecay563, i32 noundef %273, ptr noundef %arraydecay564)
  store i32 %call565, ptr %ch, align 4, !tbaa !5
  %cmp566 = icmp eq i32 %call565, -1
  br i1 %cmp566, label %if.then568, label %if.else574

if.then568:                                       ; preds = %if.else558
  %274 = load i32, ptr @verbose, align 4, !tbaa !5
  %tobool569 = icmp ne i32 %274, 0
  br i1 %tobool569, label %if.then570, label %if.end572

if.then570:                                       ; preds = %if.then568
  %275 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %276 = load i64, ptr %numread, align 8, !tbaa !11
  %call571 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %275, ptr noundef @.str.40, i64 noundef %276)
  br label %if.end572

if.end572:                                        ; preds = %if.then570, %if.then568
  %277 = load i64, ptr %nonham, align 8, !tbaa !11
  %inc573 = add i64 %277, 1
  store i64 %inc573, ptr %nonham, align 8, !tbaa !11
  %278 = load ptr, ptr %outfile, align 8, !tbaa !9
  call void @writelast(ptr noundef %278)
  br label %if.end614

if.else574:                                       ; preds = %if.else558
  %279 = load i32, ptr %ch, align 4, !tbaa !5
  %cmp575 = icmp eq i32 %279, 5
  br i1 %cmp575, label %if.then577, label %if.else583

if.then577:                                       ; preds = %if.else574
  %280 = load i32, ptr @verbose, align 4, !tbaa !5
  %tobool578 = icmp ne i32 %280, 0
  br i1 %tobool578, label %if.then579, label %if.end581

if.then579:                                       ; preds = %if.then577
  %281 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %282 = load i64, ptr %numread, align 8, !tbaa !11
  %call580 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %281, ptr noundef @.str.41, i64 noundef %282)
  br label %if.end581

if.end581:                                        ; preds = %if.then579, %if.then577
  %283 = load i64, ptr %numto, align 8, !tbaa !11
  %inc582 = add i64 %283, 1
  store i64 %inc582, ptr %numto, align 8, !tbaa !11
  %284 = load ptr, ptr %outfile, align 8, !tbaa !9
  call void @writelast(ptr noundef %284)
  br label %if.end613

if.else583:                                       ; preds = %if.else574
  %285 = load i32, ptr @verbose, align 4, !tbaa !5
  %cmp584 = icmp sge i32 %285, 2
  br i1 %cmp584, label %if.then586, label %if.end612

if.then586:                                       ; preds = %if.else583
  %286 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %287 = load i64, ptr %numread, align 8, !tbaa !11
  %call587 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %286, ptr noundef @.str.42, i64 noundef %287)
  %288 = load i32, ptr %n, align 4, !tbaa !5
  %cmp588 = icmp sle i32 %288, 100
  br i1 %cmp588, label %if.then590, label %if.else591

if.then590:                                       ; preds = %if.then586
  store i32 26, ptr %nl, align 4, !tbaa !5
  br label %if.end592

if.else591:                                       ; preds = %if.then586
  store i32 19, ptr %nl, align 4, !tbaa !5
  br label %if.end592

if.end592:                                        ; preds = %if.else591, %if.then590
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond593

for.cond593:                                      ; preds = %for.inc608, %if.end592
  %289 = load i32, ptr %i, align 4, !tbaa !5
  %290 = load i32, ptr %n, align 4, !tbaa !5
  %cmp594 = icmp slt i32 %289, %290
  br i1 %cmp594, label %for.body596, label %for.end610

for.body596:                                      ; preds = %for.cond593
  %291 = load i32, ptr %i, align 4, !tbaa !5
  %cmp597 = icmp sgt i32 %291, 0
  br i1 %cmp597, label %land.lhs.true599, label %if.end604

land.lhs.true599:                                 ; preds = %for.body596
  %292 = load i32, ptr %i, align 4, !tbaa !5
  %293 = load i32, ptr %nl, align 4, !tbaa !5
  %rem = srem i32 %292, %293
  %cmp600 = icmp eq i32 %rem, 0
  br i1 %cmp600, label %if.then602, label %if.end604

if.then602:                                       ; preds = %land.lhs.true599
  %294 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %call603 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %294, ptr noundef @.str.43)
  br label %if.end604

if.end604:                                        ; preds = %if.then602, %land.lhs.true599, %for.body596
  %295 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %296 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom605 = sext i32 %296 to i64
  %arrayidx606 = getelementptr inbounds [152 x i32], ptr %cyc, i64 0, i64 %idxprom605
  %297 = load i32, ptr %arrayidx606, align 4, !tbaa !5
  %call607 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %295, ptr noundef @.str.44, i32 noundef %297)
  br label %for.inc608

for.inc608:                                       ; preds = %if.end604
  %298 = load i32, ptr %i, align 4, !tbaa !5
  %inc609 = add nsw i32 %298, 1
  store i32 %inc609, ptr %i, align 4, !tbaa !5
  br label %for.cond593, !llvm.loop !38

for.end610:                                       ; preds = %for.cond593
  %299 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %call611 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %299, ptr noundef @.str.32)
  br label %if.end612

if.end612:                                        ; preds = %for.end610, %if.else583
  br label %if.end613

if.end613:                                        ; preds = %if.end612, %if.end581
  br label %if.end614

if.end614:                                        ; preds = %if.end613, %if.end572
  br label %if.end615

if.end615:                                        ; preds = %if.end614, %if.then556
  br label %if.end616

if.end616:                                        ; preds = %if.end615, %if.end553
  br label %if.end617

if.end617:                                        ; preds = %if.end616, %if.end524
  br label %if.end618

if.end618:                                        ; preds = %if.end617, %if.end479
  br label %if.end619

if.end619:                                        ; preds = %if.end618, %if.end444
  br label %if.end620

if.end620:                                        ; preds = %if.end619, %if.end409
  br label %if.end621

if.end621:                                        ; preds = %if.end620, %if.then358
  br label %if.end622

if.end622:                                        ; preds = %if.end621, %if.then350
  br label %if.end623

if.end623:                                        ; preds = %if.end622, %if.end342
  br label %while.cond, !llvm.loop !39

while.end:                                        ; preds = %while.cond
  %call624 = call i64 @times(ptr noundef @timebuffer) #8
  %300 = load i64, ptr @timebuffer, align 8, !tbaa !17
  %301 = load i64, ptr getelementptr inbounds (%struct.tms, ptr @timebuffer, i32 0, i32 1), align 8, !tbaa !19
  %add625 = add nsw i64 %300, %301
  %conv626 = sitofp i64 %add625 to double
  %call627 = call i64 @sysconf(i32 noundef 2) #8
  %conv628 = sitofp i64 %call627 to double
  %div629 = fdiv double %conv626, %conv628
  store double %div629, ptr %t1, align 8, !tbaa !20
  %302 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %303 = load i64, ptr %numread, align 8, !tbaa !11
  %304 = load ptr, ptr %infilename, align 8, !tbaa !9
  %call630 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %302, ptr noundef @.str.45, i64 noundef %303, ptr noundef %304)
  %305 = load i64, ptr %noncub, align 8, !tbaa !11
  %cmp631 = icmp ugt i64 %305, 0
  br i1 %cmp631, label %if.then633, label %if.end635

if.then633:                                       ; preds = %while.end
  %306 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %307 = load i64, ptr %noncub, align 8, !tbaa !11
  %call634 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %306, ptr noundef @.str.46, i64 noundef %307)
  br label %if.end635

if.end635:                                        ; preds = %if.then633, %while.end
  %308 = load i64, ptr %nonconn, align 8, !tbaa !11
  %cmp636 = icmp ugt i64 %308, 0
  br i1 %cmp636, label %if.then638, label %if.end642

if.then638:                                       ; preds = %if.end635
  %309 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %310 = load i64, ptr %nonconn, align 8, !tbaa !11
  %311 = load i32, ptr %biconn, align 4, !tbaa !5
  %tobool639 = icmp ne i32 %311, 0
  %312 = zext i1 %tobool639 to i64
  %cond640 = select i1 %tobool639, ptr @.str.48, ptr @.str.49
  %call641 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %309, ptr noundef @.str.47, i64 noundef %310, ptr noundef %cond640)
  br label %if.end642

if.end642:                                        ; preds = %if.then638, %if.end635
  %313 = load i64, ptr %numto, align 8, !tbaa !11
  %cmp643 = icmp ugt i64 %313, 0
  br i1 %cmp643, label %if.then645, label %if.end647

if.then645:                                       ; preds = %if.end642
  %314 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %315 = load i64, ptr %numto, align 8, !tbaa !11
  %call646 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %314, ptr noundef @.str.50, i64 noundef %315)
  br label %if.end647

if.end647:                                        ; preds = %if.then645, %if.end642
  %316 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %317 = load i64, ptr %nonham, align 8, !tbaa !11
  %318 = load i64, ptr %numto, align 8, !tbaa !11
  %add648 = add i64 %317, %318
  %319 = load i32, ptr %e34, align 4, !tbaa !5
  %tobool649 = icmp ne i32 %319, 0
  br i1 %tobool649, label %cond.true650, label %cond.false653

cond.true650:                                     ; preds = %if.end647
  %320 = load i32, ptr %e34plus, align 4, !tbaa !5
  %tobool651 = icmp ne i32 %320, 0
  %321 = zext i1 %tobool651 to i64
  %cond652 = select i1 %tobool651, ptr @.str.52, ptr @.str.53
  br label %cond.end666

cond.false653:                                    ; preds = %if.end647
  %322 = load i32, ptr %inout, align 4, !tbaa !5
  %tobool654 = icmp ne i32 %322, 0
  br i1 %tobool654, label %cond.true655, label %cond.false656

cond.true655:                                     ; preds = %cond.false653
  br label %cond.end664

cond.false656:                                    ; preds = %cond.false653
  %323 = load i32, ptr %out, align 4, !tbaa !5
  %tobool657 = icmp ne i32 %323, 0
  br i1 %tobool657, label %cond.true658, label %cond.false659

cond.true658:                                     ; preds = %cond.false656
  br label %cond.end662

cond.false659:                                    ; preds = %cond.false656
  %324 = load i32, ptr %in, align 4, !tbaa !5
  %tobool660 = icmp ne i32 %324, 0
  %325 = zext i1 %tobool660 to i64
  %cond661 = select i1 %tobool660, ptr @.str.56, ptr @.str.57
  br label %cond.end662

cond.end662:                                      ; preds = %cond.false659, %cond.true658
  %cond663 = phi ptr [ @.str.55, %cond.true658 ], [ %cond661, %cond.false659 ]
  br label %cond.end664

cond.end664:                                      ; preds = %cond.end662, %cond.true655
  %cond665 = phi ptr [ @.str.54, %cond.true655 ], [ %cond663, %cond.end662 ]
  br label %cond.end666

cond.end666:                                      ; preds = %cond.end664, %cond.true650
  %cond667 = phi ptr [ %cond652, %cond.true650 ], [ %cond665, %cond.end664 ]
  %326 = load ptr, ptr %outfilename, align 8, !tbaa !9
  %327 = load double, ptr %t1, align 8, !tbaa !20
  %328 = load double, ptr %t0, align 8, !tbaa !20
  %sub = fsub double %327, %328
  %call668 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %316, ptr noundef @.str.51, i64 noundef %add648, ptr noundef %cond667, ptr noundef %326, double noundef %sub)
  %329 = load i32, ptr @verbose, align 4, !tbaa !5
  %tobool669 = icmp ne i32 %329, 0
  br i1 %tobool669, label %if.then670, label %if.end690

if.then670:                                       ; preds = %cond.end666
  %330 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %call671 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %330, ptr noundef @.str.58)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond672

for.cond672:                                      ; preds = %for.inc686, %if.then670
  %331 = load i32, ptr %i, align 4, !tbaa !5
  %conv673 = sext i32 %331 to i64
  %cmp674 = icmp ule i64 %conv673, 19
  br i1 %cmp674, label %land.rhs676, label %land.end681

land.rhs676:                                      ; preds = %for.cond672
  %332 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom677 = sext i32 %332 to i64
  %arrayidx678 = getelementptr inbounds [20 x i64], ptr @numtries, i64 0, i64 %idxprom677
  %333 = load i64, ptr %arrayidx678, align 8, !tbaa !11
  %cmp679 = icmp ugt i64 %333, 0
  br label %land.end681

land.end681:                                      ; preds = %land.rhs676, %for.cond672
  %334 = phi i1 [ false, %for.cond672 ], [ %cmp679, %land.rhs676 ]
  br i1 %334, label %for.body682, label %for.end688

for.body682:                                      ; preds = %land.end681
  %335 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %336 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom683 = sext i32 %336 to i64
  %arrayidx684 = getelementptr inbounds [20 x i64], ptr @numtries, i64 0, i64 %idxprom683
  %337 = load i64, ptr %arrayidx684, align 8, !tbaa !11
  %call685 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %335, ptr noundef @.str.59, i64 noundef %337)
  br label %for.inc686

for.inc686:                                       ; preds = %for.body682
  %338 = load i32, ptr %i, align 4, !tbaa !5
  %inc687 = add nsw i32 %338, 1
  store i32 %inc687, ptr %i, align 4, !tbaa !5
  br label %for.cond672, !llvm.loop !40

for.end688:                                       ; preds = %land.end681
  %339 = load ptr, ptr %msgfile, align 8, !tbaa !9
  %call689 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %339, ptr noundef @.str.32)
  br label %if.end690

if.end690:                                        ; preds = %for.end688, %cond.end666
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end690, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %codetype) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #8
  call void @llvm.lifetime.end.p0(i64 2432, ptr %cub) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %t1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %t0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %nyy) #8
  call void @llvm.lifetime.end.p0(i64 400, ptr %yi) #8
  call void @llvm.lifetime.end.p0(i64 400, ptr %yy) #8
  call void @llvm.lifetime.end.p0(i64 608, ptr %cyc) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %nvv) #8
  call void @llvm.lifetime.end.p0(i64 400, ptr %vi) #8
  call void @llvm.lifetime.end.p0(i64 400, ptr %vv) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr %sg) #8
  call void @llvm.lifetime.end.p0(i64 400, ptr %y1) #8
  call void @llvm.lifetime.end.p0(i64 400, ptr %y0) #8
  call void @llvm.lifetime.end.p0(i64 400, ptr %x1) #8
  call void @llvm.lifetime.end.p0(i64 400, ptr %x0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %limit) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbad) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %nl) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %namesgot) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ne) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %weight) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ch) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %numto) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %nonconn) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %nonham) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %noncub) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %numread) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %testing) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %e34plus) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %e34) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %inout) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %inin) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %out) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %in) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %fragment) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %triconn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %biconn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %badargs) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %msgfile) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %outfile) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %infile) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %outfilename) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %infilename) #8
  %340 = load i32, ptr %retval, align 4
  ret i32 %340
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #5

declare ptr @opengraphfile(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #3

declare void @gt_abort(ptr noundef) #3

declare noalias ptr @fopen(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #6

declare void @perror(ptr noundef) #3

declare void @writeline(ptr noundef, ptr noundef) #3

declare void @ran_init(i64 noundef) #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #5

; Function Attrs: nounwind
declare i64 @times(ptr noundef) #5

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) #5

declare ptr @read_sg(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @sgtocub(ptr noundef %sg, ptr noundef %cub, ptr noundef %pne) #0 {
entry:
  %retval = alloca i32, align 4
  %sg.addr = alloca ptr, align 8
  %cub.addr = alloca ptr, align 8
  %pne.addr = alloca ptr, align 8
  %d = alloca ptr, align 8
  %e = alloca ptr, align 8
  %v = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %vi = alloca i32, align 4
  %nde = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sg, ptr %sg.addr, align 8, !tbaa !9
  store ptr %cub, ptr %cub.addr, align 8, !tbaa !9
  store ptr %pne, ptr %pne.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %nde) #8
  store i64 0, ptr %nde, align 8, !tbaa !11
  %0 = load ptr, ptr %sg.addr, align 8, !tbaa !9
  %nv = getelementptr inbounds %struct.sparsegraph, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %nv, align 8, !tbaa !31
  store i32 %1, ptr %n, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %sg.addr, align 8, !tbaa !9
  %v1 = getelementptr inbounds %struct.sparsegraph, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %v1, align 8, !tbaa !22
  store ptr %3, ptr %v, align 8, !tbaa !9
  %4 = load ptr, ptr %sg.addr, align 8, !tbaa !9
  %d2 = getelementptr inbounds %struct.sparsegraph, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %d2, align 8, !tbaa !26
  store ptr %5, ptr %d, align 8, !tbaa !9
  %6 = load ptr, ptr %sg.addr, align 8, !tbaa !9
  %e3 = getelementptr inbounds %struct.sparsegraph, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %e3, align 8, !tbaa !25
  store ptr %7, ptr %e, align 8, !tbaa !9
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %do.end
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %d, align 8, !tbaa !9
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i32, ptr %10, i64 %idxprom
  %12 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp4 = icmp sge i32 %12, 4
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  %13 = load ptr, ptr %v, align 8, !tbaa !9
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds i64, ptr %13, i64 %idxprom5
  %15 = load i64, ptr %arrayidx6, align 8, !tbaa !11
  %conv = trunc i64 %15 to i32
  store i32 %conv, ptr %vi, align 4, !tbaa !5
  %16 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds [4 x i32], ptr %16, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [4 x i32], ptr %arrayidx8, i64 0, i64 2
  store i32 -1, ptr %arrayidx9, align 4, !tbaa !5
  %18 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %19 to i64
  %arrayidx11 = getelementptr inbounds [4 x i32], ptr %18, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [4 x i32], ptr %arrayidx11, i64 0, i64 1
  store i32 -1, ptr %arrayidx12, align 4, !tbaa !5
  %20 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %21 to i64
  %arrayidx14 = getelementptr inbounds [4 x i32], ptr %20, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [4 x i32], ptr %arrayidx14, i64 0, i64 0
  store i32 -1, ptr %arrayidx15, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc, %if.end
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %23 = load ptr, ptr %d, align 8, !tbaa !9
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %24 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %23, i64 %idxprom17
  %25 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %22, %25
  br i1 %cmp19, label %for.body21, label %for.end

for.body21:                                       ; preds = %for.cond16
  %26 = load ptr, ptr %e, align 8, !tbaa !9
  %27 = load i32, ptr %vi, align 4, !tbaa !5
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %27, %28
  %idxprom22 = sext i32 %add to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %26, i64 %idxprom22
  %29 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %30 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom24 = sext i32 %31 to i64
  %arrayidx25 = getelementptr inbounds [4 x i32], ptr %30, i64 %idxprom24
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom26 = sext i32 %32 to i64
  %arrayidx27 = getelementptr inbounds [4 x i32], ptr %arrayidx25, i64 0, i64 %idxprom26
  store i32 %29, ptr %arrayidx27, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body21
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !41

for.end:                                          ; preds = %for.cond16
  %34 = load ptr, ptr %d, align 8, !tbaa !9
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %35 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %34, i64 %idxprom28
  %36 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %conv30 = sext i32 %36 to i64
  %37 = load i64, ptr %nde, align 8, !tbaa !11
  %add31 = add i64 %37, %conv30
  store i64 %add31, ptr %nde, align 8, !tbaa !11
  br label %for.inc32

for.inc32:                                        ; preds = %for.end
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %inc33 = add nsw i32 %38, 1
  store i32 %inc33, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !42

for.end34:                                        ; preds = %for.cond
  %39 = load i64, ptr %nde, align 8, !tbaa !11
  %div = udiv i64 %39, 2
  %conv35 = trunc i64 %div to i32
  %40 = load ptr, ptr %pne.addr, align 8, !tbaa !9
  store i32 %conv35, ptr %40, align 4, !tbaa !5
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end34, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nde) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #8
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @biconnected_cub(ptr noundef %cub, i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %cub.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %sp = alloca i32, align 4
  %v = alloca i32, align 4
  %w = alloca i32, align 4
  %x = alloca i32, align 4
  %visited = alloca [3 x i64], align 16
  %numvis = alloca i32, align 4
  %num = alloca [152 x i32], align 16
  %lp = alloca [152 x i32], align 16
  %stack = alloca [152 x i32], align 16
  %m = alloca i32, align 4
  %gv = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %es = alloca ptr, align 8
  store ptr %cub, ptr %cub.addr, align 8, !tbaa !9
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %sp) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr %visited) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %numvis) #8
  call void @llvm.lifetime.start.p0(i64 608, ptr %num) #8
  call void @llvm.lifetime.start.p0(i64 608, ptr %lp) #8
  call void @llvm.lifetime.start.p0(i64 608, ptr %stack) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %gv) #8
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %add = add nsw i32 %1, 64
  %sub = sub nsw i32 %add, 1
  %div = sdiv i32 %sub, 64
  store i32 %div, ptr %m, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %es) #8
  %arraydecay = getelementptr inbounds [3 x i64], ptr %visited, i64 0, i64 0
  %2 = load i32, ptr %m, align 4, !tbaa !5
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i64, ptr %arraydecay, i64 %idx.ext
  store ptr %add.ptr, ptr %es, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %3 = load ptr, ptr %es, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i64, ptr %3, i32 -1
  store ptr %incdec.ptr, ptr %es, align 8, !tbaa !9
  %arraydecay1 = getelementptr inbounds [3 x i64], ptr %visited, i64 0, i64 0
  %cmp2 = icmp uge ptr %incdec.ptr, %arraydecay1
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %es, align 8, !tbaa !9
  store i64 0, ptr %4, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %es) #8
  %5 = load i64, ptr @bit, align 16, !tbaa !11
  %arrayidx = getelementptr inbounds [3 x i64], ptr %visited, i64 0, i64 0
  %6 = load i64, ptr %arrayidx, align 16, !tbaa !11
  %or = or i64 %6, %5
  store i64 %or, ptr %arrayidx, align 16, !tbaa !11
  %arrayidx3 = getelementptr inbounds [152 x i32], ptr %stack, i64 0, i64 0
  store i32 0, ptr %arrayidx3, align 16, !tbaa !5
  %arrayidx4 = getelementptr inbounds [152 x i32], ptr %num, i64 0, i64 0
  store i32 0, ptr %arrayidx4, align 16, !tbaa !5
  %arrayidx5 = getelementptr inbounds [152 x i32], ptr %lp, i64 0, i64 0
  store i32 0, ptr %arrayidx5, align 16, !tbaa !5
  store i32 1, ptr %numvis, align 4, !tbaa !5
  store i32 0, ptr %sp, align 4, !tbaa !5
  store i32 0, ptr %v, align 4, !tbaa !5
  %7 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %8 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [4 x i32], ptr %7, i64 %idxprom
  %arraydecay7 = getelementptr inbounds [4 x i32], ptr %arrayidx6, i64 0, i64 0
  store ptr %arraydecay7, ptr %gv, align 8, !tbaa !9
  br label %for.cond8

for.cond8:                                        ; preds = %if.end112, %for.end
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.cond8
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %9, 3
  br i1 %cmp10, label %for.body11, label %for.end27

for.body11:                                       ; preds = %for.cond9
  %10 = load ptr, ptr %gv, align 8, !tbaa !9
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %10, i64 %idxprom12
  %12 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp sge i32 %12, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %for.body11
  %13 = load ptr, ptr %gv, align 8, !tbaa !9
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %13, i64 %idxprom15
  %15 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %shr = ashr i32 %15, 6
  %idxprom17 = sext i32 %shr to i64
  %arrayidx18 = getelementptr inbounds [3 x i64], ptr %visited, i64 0, i64 %idxprom17
  %16 = load i64, ptr %arrayidx18, align 8, !tbaa !11
  %17 = load ptr, ptr %gv, align 8, !tbaa !9
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %17, i64 %idxprom19
  %19 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %and = and i32 %19, 63
  %idxprom21 = sext i32 %and to i64
  %arrayidx22 = getelementptr inbounds [64 x i64], ptr @bit, i64 0, i64 %idxprom21
  %20 = load i64, ptr %arrayidx22, align 8, !tbaa !11
  %and23 = and i64 %16, %20
  %cmp24 = icmp ne i64 %and23, 0
  br i1 %cmp24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %land.lhs.true
  br label %for.end27

if.end26:                                         ; preds = %land.lhs.true, %for.body11
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond9, !llvm.loop !44

for.end27:                                        ; preds = %if.then25, %for.cond9
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %22, 3
  br i1 %cmp28, label %if.then29, label %if.else

if.then29:                                        ; preds = %for.end27
  %23 = load i32, ptr %v, align 4, !tbaa !5
  store i32 %23, ptr %w, align 4, !tbaa !5
  %24 = load ptr, ptr %gv, align 8, !tbaa !9
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %25 to i64
  %arrayidx31 = getelementptr inbounds i32, ptr %24, i64 %idxprom30
  %26 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  store i32 %26, ptr %v, align 4, !tbaa !5
  %27 = load i32, ptr %v, align 4, !tbaa !5
  %28 = load i32, ptr %sp, align 4, !tbaa !5
  %inc32 = add nsw i32 %28, 1
  store i32 %inc32, ptr %sp, align 4, !tbaa !5
  %idxprom33 = sext i32 %inc32 to i64
  %arrayidx34 = getelementptr inbounds [152 x i32], ptr %stack, i64 0, i64 %idxprom33
  store i32 %27, ptr %arrayidx34, align 4, !tbaa !5
  %29 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %30 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom35 = sext i32 %30 to i64
  %arrayidx36 = getelementptr inbounds [4 x i32], ptr %29, i64 %idxprom35
  %arraydecay37 = getelementptr inbounds [4 x i32], ptr %arrayidx36, i64 0, i64 0
  store ptr %arraydecay37, ptr %gv, align 8, !tbaa !9
  %31 = load i32, ptr %v, align 4, !tbaa !5
  %and38 = and i32 %31, 63
  %idxprom39 = sext i32 %and38 to i64
  %arrayidx40 = getelementptr inbounds [64 x i64], ptr @bit, i64 0, i64 %idxprom39
  %32 = load i64, ptr %arrayidx40, align 8, !tbaa !11
  %33 = load i32, ptr %v, align 4, !tbaa !5
  %shr41 = ashr i32 %33, 6
  %idxprom42 = sext i32 %shr41 to i64
  %arrayidx43 = getelementptr inbounds [3 x i64], ptr %visited, i64 0, i64 %idxprom42
  %34 = load i64, ptr %arrayidx43, align 8, !tbaa !11
  %or44 = or i64 %34, %32
  store i64 %or44, ptr %arrayidx43, align 8, !tbaa !11
  %35 = load i32, ptr %numvis, align 4, !tbaa !5
  %inc45 = add nsw i32 %35, 1
  store i32 %inc45, ptr %numvis, align 4, !tbaa !5
  %36 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom46 = sext i32 %36 to i64
  %arrayidx47 = getelementptr inbounds [152 x i32], ptr %num, i64 0, i64 %idxprom46
  store i32 %35, ptr %arrayidx47, align 4, !tbaa !5
  %37 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom48 = sext i32 %37 to i64
  %arrayidx49 = getelementptr inbounds [152 x i32], ptr %lp, i64 0, i64 %idxprom48
  store i32 %35, ptr %arrayidx49, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc80, %if.then29
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %38, 3
  br i1 %cmp51, label %for.body52, label %for.end82

for.body52:                                       ; preds = %for.cond50
  %39 = load ptr, ptr %gv, align 8, !tbaa !9
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %40 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %39, i64 %idxprom53
  %41 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  store i32 %41, ptr %x, align 4, !tbaa !5
  %42 = load i32, ptr %x, align 4, !tbaa !5
  %cmp55 = icmp sge i32 %42, 0
  br i1 %cmp55, label %land.lhs.true56, label %if.end79

land.lhs.true56:                                  ; preds = %for.body52
  %43 = load i32, ptr %x, align 4, !tbaa !5
  %44 = load i32, ptr %w, align 4, !tbaa !5
  %cmp57 = icmp ne i32 %43, %44
  br i1 %cmp57, label %land.lhs.true58, label %if.end79

land.lhs.true58:                                  ; preds = %land.lhs.true56
  %45 = load i32, ptr %x, align 4, !tbaa !5
  %shr59 = ashr i32 %45, 6
  %idxprom60 = sext i32 %shr59 to i64
  %arrayidx61 = getelementptr inbounds [3 x i64], ptr %visited, i64 0, i64 %idxprom60
  %46 = load i64, ptr %arrayidx61, align 8, !tbaa !11
  %47 = load i32, ptr %x, align 4, !tbaa !5
  %and62 = and i32 %47, 63
  %idxprom63 = sext i32 %and62 to i64
  %arrayidx64 = getelementptr inbounds [64 x i64], ptr @bit, i64 0, i64 %idxprom63
  %48 = load i64, ptr %arrayidx64, align 8, !tbaa !11
  %and65 = and i64 %46, %48
  %cmp66 = icmp ne i64 %and65, 0
  br i1 %cmp66, label %if.then67, label %if.end79

if.then67:                                        ; preds = %land.lhs.true58
  %49 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom68 = sext i32 %49 to i64
  %arrayidx69 = getelementptr inbounds [152 x i32], ptr %num, i64 0, i64 %idxprom68
  %50 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  %51 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom70 = sext i32 %51 to i64
  %arrayidx71 = getelementptr inbounds [152 x i32], ptr %lp, i64 0, i64 %idxprom70
  %52 = load i32, ptr %arrayidx71, align 4, !tbaa !5
  %cmp72 = icmp slt i32 %50, %52
  br i1 %cmp72, label %if.then73, label %if.end78

if.then73:                                        ; preds = %if.then67
  %53 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom74 = sext i32 %53 to i64
  %arrayidx75 = getelementptr inbounds [152 x i32], ptr %num, i64 0, i64 %idxprom74
  %54 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %55 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom76 = sext i32 %55 to i64
  %arrayidx77 = getelementptr inbounds [152 x i32], ptr %lp, i64 0, i64 %idxprom76
  store i32 %54, ptr %arrayidx77, align 4, !tbaa !5
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %if.then67
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %land.lhs.true58, %land.lhs.true56, %for.body52
  br label %for.inc80

for.inc80:                                        ; preds = %if.end79
  %56 = load i32, ptr %i, align 4, !tbaa !5
  %inc81 = add nsw i32 %56, 1
  store i32 %inc81, ptr %i, align 4, !tbaa !5
  br label %for.cond50, !llvm.loop !45

for.end82:                                        ; preds = %for.cond50
  br label %if.end112

if.else:                                          ; preds = %for.end27
  %57 = load i32, ptr %v, align 4, !tbaa !5
  store i32 %57, ptr %w, align 4, !tbaa !5
  %58 = load i32, ptr %sp, align 4, !tbaa !5
  %cmp83 = icmp sle i32 %58, 1
  br i1 %cmp83, label %if.then84, label %if.end86

if.then84:                                        ; preds = %if.else
  %59 = load i32, ptr %numvis, align 4, !tbaa !5
  %60 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp85 = icmp eq i32 %59, %60
  %conv = zext i1 %cmp85 to i32
  store i32 %conv, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end86:                                         ; preds = %if.else
  %61 = load i32, ptr %sp, align 4, !tbaa !5
  %dec = add nsw i32 %61, -1
  store i32 %dec, ptr %sp, align 4, !tbaa !5
  %idxprom87 = sext i32 %dec to i64
  %arrayidx88 = getelementptr inbounds [152 x i32], ptr %stack, i64 0, i64 %idxprom87
  %62 = load i32, ptr %arrayidx88, align 4, !tbaa !5
  store i32 %62, ptr %v, align 4, !tbaa !5
  %63 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %64 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom89 = sext i32 %64 to i64
  %arrayidx90 = getelementptr inbounds [4 x i32], ptr %63, i64 %idxprom89
  %arraydecay91 = getelementptr inbounds [4 x i32], ptr %arrayidx90, i64 0, i64 0
  store ptr %arraydecay91, ptr %gv, align 8, !tbaa !9
  %65 = load i32, ptr %w, align 4, !tbaa !5
  %idxprom92 = sext i32 %65 to i64
  %arrayidx93 = getelementptr inbounds [152 x i32], ptr %lp, i64 0, i64 %idxprom92
  %66 = load i32, ptr %arrayidx93, align 4, !tbaa !5
  %67 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom94 = sext i32 %67 to i64
  %arrayidx95 = getelementptr inbounds [152 x i32], ptr %num, i64 0, i64 %idxprom94
  %68 = load i32, ptr %arrayidx95, align 4, !tbaa !5
  %cmp96 = icmp sge i32 %66, %68
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end86
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end99:                                         ; preds = %if.end86
  %69 = load i32, ptr %w, align 4, !tbaa !5
  %idxprom100 = sext i32 %69 to i64
  %arrayidx101 = getelementptr inbounds [152 x i32], ptr %lp, i64 0, i64 %idxprom100
  %70 = load i32, ptr %arrayidx101, align 4, !tbaa !5
  %71 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom102 = sext i32 %71 to i64
  %arrayidx103 = getelementptr inbounds [152 x i32], ptr %lp, i64 0, i64 %idxprom102
  %72 = load i32, ptr %arrayidx103, align 4, !tbaa !5
  %cmp104 = icmp slt i32 %70, %72
  br i1 %cmp104, label %if.then106, label %if.end111

if.then106:                                       ; preds = %if.end99
  %73 = load i32, ptr %w, align 4, !tbaa !5
  %idxprom107 = sext i32 %73 to i64
  %arrayidx108 = getelementptr inbounds [152 x i32], ptr %lp, i64 0, i64 %idxprom107
  %74 = load i32, ptr %arrayidx108, align 4, !tbaa !5
  %75 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom109 = sext i32 %75 to i64
  %arrayidx110 = getelementptr inbounds [152 x i32], ptr %lp, i64 0, i64 %idxprom109
  store i32 %74, ptr %arrayidx110, align 4, !tbaa !5
  br label %if.end111

if.end111:                                        ; preds = %if.then106, %if.end99
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %for.end82
  br label %for.cond8, !llvm.loop !46

cleanup:                                          ; preds = %if.then98, %if.then84, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %gv) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #8
  call void @llvm.lifetime.end.p0(i64 608, ptr %stack) #8
  call void @llvm.lifetime.end.p0(i64 608, ptr %lp) #8
  call void @llvm.lifetime.end.p0(i64 608, ptr %num) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %numvis) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr %visited) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %sp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  %76 = load i32, ptr %retval, align 4
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define internal i32 @triconnected_cub(ptr noundef %cub, i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %cub.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %vv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cub, ptr %cub.addr, align 8, !tbaa !9
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %vv) #8
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  store i32 %sub, ptr %vv, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end3, %if.end
  %2 = load i32, ptr %vv, align 4, !tbaa !5
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %vv, align 4, !tbaa !5
  %cmp1 = icmp sge i32 %dec, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %4 = load i32, ptr %vv, align 4, !tbaa !5
  %5 = load i32, ptr %n.addr, align 4, !tbaa !5
  %call = call i32 @biconnected_cub_v(ptr noundef %3, i32 noundef %4, i32 noundef %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %for.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %for.body
  br label %for.cond, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %vv) #8
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @hase34(ptr noundef %cub, i32 noundef %n, i32 noundef %ne, ptr noundef %x0, ptr noundef %x1, ptr noundef %why, i32 noundef %plus, i32 noundef %limit) #0 {
entry:
  %retval = alloca i32, align 4
  %cub.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %ne.addr = alloca i32, align 4
  %x0.addr = alloca ptr, align 8
  %x1.addr = alloca ptr, align 8
  %why.addr = alloca ptr, align 8
  %plus.addr = alloca i32, align 4
  %limit.addr = alloca i32, align 4
  %v1 = alloca [229 x i32], align 16
  %v2 = alloca [229 x i32], align 16
  %initclass = alloca [229 x i32], align 16
  %outclass = alloca [229 x i32], align 16
  %ea = alloca [912 x i32], align 16
  %eb = alloca [912 x i32], align 16
  %ec = alloca [912 x i32], align 16
  %done = alloca [912 x i32], align 16
  %count = alloca [228 x i32], align 16
  %i = alloca i32, align 4
  %ii = alloca i32, align 4
  %vi = alloca i32, align 4
  %nbad = alloca i32, align 4
  %pluswhy = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cub, ptr %cub.addr, align 8, !tbaa !9
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store i32 %ne, ptr %ne.addr, align 4, !tbaa !5
  store ptr %x0, ptr %x0.addr, align 8, !tbaa !9
  store ptr %x1, ptr %x1.addr, align 8, !tbaa !9
  store ptr %why, ptr %why.addr, align 8, !tbaa !9
  store i32 %plus, ptr %plus.addr, align 4, !tbaa !5
  store i32 %limit, ptr %limit.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 916, ptr %v1) #8
  call void @llvm.lifetime.start.p0(i64 916, ptr %v2) #8
  call void @llvm.lifetime.start.p0(i64 916, ptr %initclass) #8
  call void @llvm.lifetime.start.p0(i64 916, ptr %outclass) #8
  call void @llvm.lifetime.start.p0(i64 3648, ptr %ea) #8
  call void @llvm.lifetime.start.p0(i64 3648, ptr %eb) #8
  call void @llvm.lifetime.start.p0(i64 3648, ptr %ec) #8
  call void @llvm.lifetime.start.p0(i64 3648, ptr %done) #8
  call void @llvm.lifetime.start.p0(i64 912, ptr %count) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ii) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %vi) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbad) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %pluswhy) #8
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %mul = mul nsw i32 3, %0
  %1 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %mul1 = mul nsw i32 2, %1
  %cmp = icmp ne i32 %mul, %mul1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.60)
  call void @exit(i32 noundef 1) #10
  unreachable

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %arraydecay = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 0
  %4 = load i32, ptr %n.addr, align 4, !tbaa !5
  %5 = load i32, ptr %ne.addr, align 4, !tbaa !5
  call void @cubinit(ptr noundef %3, ptr noundef @eno, ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef %4, i32 noundef %5)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [228 x i32], ptr %count, i64 0, i64 %idxprom4
  store i32 0, ptr %arrayidx5, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %ii, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc131, %for.end
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %12 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %11, %12
  br i1 %cmp7, label %for.body8, label %for.end133

for.body8:                                        ; preds = %for.cond6
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %14 = load i32, ptr %ii, align 4, !tbaa !5
  %add = add nsw i32 %14, 3
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds [912 x i32], ptr %eb, i64 0, i64 %idxprom9
  store i32 %13, ptr %arrayidx10, align 4, !tbaa !5
  %15 = load i32, ptr %ii, align 4, !tbaa !5
  %add11 = add nsw i32 %15, 2
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds [912 x i32], ptr %eb, i64 0, i64 %idxprom12
  store i32 %13, ptr %arrayidx13, align 4, !tbaa !5
  %16 = load i32, ptr %ii, align 4, !tbaa !5
  %add14 = add nsw i32 %16, 1
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds [912 x i32], ptr %eb, i64 0, i64 %idxprom15
  store i32 %13, ptr %arrayidx16, align 4, !tbaa !5
  %17 = load i32, ptr %ii, align 4, !tbaa !5
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds [912 x i32], ptr %eb, i64 0, i64 %idxprom17
  store i32 %13, ptr %arrayidx18, align 4, !tbaa !5
  %18 = load i32, ptr %ii, align 4, !tbaa !5
  %add19 = add nsw i32 %18, 3
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds [912 x i32], ptr %done, i64 0, i64 %idxprom20
  store i32 0, ptr %arrayidx21, align 4, !tbaa !5
  %19 = load i32, ptr %ii, align 4, !tbaa !5
  %add22 = add nsw i32 %19, 2
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [912 x i32], ptr %done, i64 0, i64 %idxprom23
  store i32 0, ptr %arrayidx24, align 4, !tbaa !5
  %20 = load i32, ptr %ii, align 4, !tbaa !5
  %add25 = add nsw i32 %20, 1
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds [912 x i32], ptr %done, i64 0, i64 %idxprom26
  store i32 0, ptr %arrayidx27, align 4, !tbaa !5
  %21 = load i32, ptr %ii, align 4, !tbaa !5
  %idxprom28 = sext i32 %21 to i64
  %arrayidx29 = getelementptr inbounds [912 x i32], ptr %done, i64 0, i64 %idxprom28
  store i32 0, ptr %arrayidx29, align 4, !tbaa !5
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %22 to i64
  %arrayidx31 = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 %idxprom30
  %23 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  store i32 %23, ptr %vi, align 4, !tbaa !5
  %24 = load i32, ptr %vi, align 4, !tbaa !5
  %idxprom32 = sext i32 %24 to i64
  %arrayidx33 = getelementptr inbounds [152 x [4 x i32]], ptr @eno, i64 0, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [4 x i32], ptr %arrayidx33, i64 0, i64 0
  %25 = load i32, ptr %arrayidx34, align 16, !tbaa !5
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %cmp35 = icmp ne i32 %25, %26
  br i1 %cmp35, label %if.then36, label %if.end43

if.then36:                                        ; preds = %for.body8
  %27 = load i32, ptr %vi, align 4, !tbaa !5
  %idxprom37 = sext i32 %27 to i64
  %arrayidx38 = getelementptr inbounds [152 x [4 x i32]], ptr @eno, i64 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [4 x i32], ptr %arrayidx38, i64 0, i64 0
  %28 = load i32, ptr %arrayidx39, align 16, !tbaa !5
  %29 = load i32, ptr %ii, align 4, !tbaa !5
  %inc40 = add nsw i32 %29, 1
  store i32 %inc40, ptr %ii, align 4, !tbaa !5
  %idxprom41 = sext i32 %29 to i64
  %arrayidx42 = getelementptr inbounds [912 x i32], ptr %ea, i64 0, i64 %idxprom41
  store i32 %28, ptr %arrayidx42, align 4, !tbaa !5
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %for.body8
  %30 = load i32, ptr %vi, align 4, !tbaa !5
  %idxprom44 = sext i32 %30 to i64
  %arrayidx45 = getelementptr inbounds [152 x [4 x i32]], ptr @eno, i64 0, i64 %idxprom44
  %arrayidx46 = getelementptr inbounds [4 x i32], ptr %arrayidx45, i64 0, i64 1
  %31 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %cmp47 = icmp ne i32 %31, %32
  br i1 %cmp47, label %if.then48, label %if.end55

if.then48:                                        ; preds = %if.end43
  %33 = load i32, ptr %vi, align 4, !tbaa !5
  %idxprom49 = sext i32 %33 to i64
  %arrayidx50 = getelementptr inbounds [152 x [4 x i32]], ptr @eno, i64 0, i64 %idxprom49
  %arrayidx51 = getelementptr inbounds [4 x i32], ptr %arrayidx50, i64 0, i64 1
  %34 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %35 = load i32, ptr %ii, align 4, !tbaa !5
  %inc52 = add nsw i32 %35, 1
  store i32 %inc52, ptr %ii, align 4, !tbaa !5
  %idxprom53 = sext i32 %35 to i64
  %arrayidx54 = getelementptr inbounds [912 x i32], ptr %ea, i64 0, i64 %idxprom53
  store i32 %34, ptr %arrayidx54, align 4, !tbaa !5
  br label %if.end55

if.end55:                                         ; preds = %if.then48, %if.end43
  %36 = load i32, ptr %vi, align 4, !tbaa !5
  %idxprom56 = sext i32 %36 to i64
  %arrayidx57 = getelementptr inbounds [152 x [4 x i32]], ptr @eno, i64 0, i64 %idxprom56
  %arrayidx58 = getelementptr inbounds [4 x i32], ptr %arrayidx57, i64 0, i64 2
  %37 = load i32, ptr %arrayidx58, align 8, !tbaa !5
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %cmp59 = icmp ne i32 %37, %38
  br i1 %cmp59, label %if.then60, label %if.end67

if.then60:                                        ; preds = %if.end55
  %39 = load i32, ptr %vi, align 4, !tbaa !5
  %idxprom61 = sext i32 %39 to i64
  %arrayidx62 = getelementptr inbounds [152 x [4 x i32]], ptr @eno, i64 0, i64 %idxprom61
  %arrayidx63 = getelementptr inbounds [4 x i32], ptr %arrayidx62, i64 0, i64 2
  %40 = load i32, ptr %arrayidx63, align 8, !tbaa !5
  %41 = load i32, ptr %ii, align 4, !tbaa !5
  %inc64 = add nsw i32 %41, 1
  store i32 %inc64, ptr %ii, align 4, !tbaa !5
  %idxprom65 = sext i32 %41 to i64
  %arrayidx66 = getelementptr inbounds [912 x i32], ptr %ea, i64 0, i64 %idxprom65
  store i32 %40, ptr %arrayidx66, align 4, !tbaa !5
  br label %if.end67

if.end67:                                         ; preds = %if.then60, %if.end55
  %42 = load i32, ptr %ii, align 4, !tbaa !5
  %sub = sub nsw i32 %42, 2
  %idxprom68 = sext i32 %sub to i64
  %arrayidx69 = getelementptr inbounds [912 x i32], ptr %ea, i64 0, i64 %idxprom68
  %43 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  %44 = load i32, ptr %ii, align 4, !tbaa !5
  %idxprom70 = sext i32 %44 to i64
  %arrayidx71 = getelementptr inbounds [912 x i32], ptr %ea, i64 0, i64 %idxprom70
  store i32 %43, ptr %arrayidx71, align 4, !tbaa !5
  %45 = load i32, ptr %ii, align 4, !tbaa !5
  %sub72 = sub nsw i32 %45, 1
  %idxprom73 = sext i32 %sub72 to i64
  %arrayidx74 = getelementptr inbounds [912 x i32], ptr %ea, i64 0, i64 %idxprom73
  %46 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  %47 = load i32, ptr %ii, align 4, !tbaa !5
  %add75 = add nsw i32 %47, 1
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds [912 x i32], ptr %ea, i64 0, i64 %idxprom76
  store i32 %46, ptr %arrayidx77, align 4, !tbaa !5
  %48 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom78 = sext i32 %48 to i64
  %arrayidx79 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 %idxprom78
  %49 = load i32, ptr %arrayidx79, align 4, !tbaa !5
  store i32 %49, ptr %vi, align 4, !tbaa !5
  %50 = load i32, ptr %vi, align 4, !tbaa !5
  %idxprom80 = sext i32 %50 to i64
  %arrayidx81 = getelementptr inbounds [152 x [4 x i32]], ptr @eno, i64 0, i64 %idxprom80
  %arrayidx82 = getelementptr inbounds [4 x i32], ptr %arrayidx81, i64 0, i64 0
  %51 = load i32, ptr %arrayidx82, align 16, !tbaa !5
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %cmp83 = icmp ne i32 %51, %52
  br i1 %cmp83, label %if.then84, label %if.end91

if.then84:                                        ; preds = %if.end67
  %53 = load i32, ptr %vi, align 4, !tbaa !5
  %idxprom85 = sext i32 %53 to i64
  %arrayidx86 = getelementptr inbounds [152 x [4 x i32]], ptr @eno, i64 0, i64 %idxprom85
  %arrayidx87 = getelementptr inbounds [4 x i32], ptr %arrayidx86, i64 0, i64 0
  %54 = load i32, ptr %arrayidx87, align 16, !tbaa !5
  %55 = load i32, ptr %ii, align 4, !tbaa !5
  %inc88 = add nsw i32 %55, 1
  store i32 %inc88, ptr %ii, align 4, !tbaa !5
  %idxprom89 = sext i32 %55 to i64
  %arrayidx90 = getelementptr inbounds [912 x i32], ptr %ec, i64 0, i64 %idxprom89
  store i32 %54, ptr %arrayidx90, align 4, !tbaa !5
  br label %if.end91

if.end91:                                         ; preds = %if.then84, %if.end67
  %56 = load i32, ptr %vi, align 4, !tbaa !5
  %idxprom92 = sext i32 %56 to i64
  %arrayidx93 = getelementptr inbounds [152 x [4 x i32]], ptr @eno, i64 0, i64 %idxprom92
  %arrayidx94 = getelementptr inbounds [4 x i32], ptr %arrayidx93, i64 0, i64 1
  %57 = load i32, ptr %arrayidx94, align 4, !tbaa !5
  %58 = load i32, ptr %i, align 4, !tbaa !5
  %cmp95 = icmp ne i32 %57, %58
  br i1 %cmp95, label %if.then96, label %if.end103

if.then96:                                        ; preds = %if.end91
  %59 = load i32, ptr %vi, align 4, !tbaa !5
  %idxprom97 = sext i32 %59 to i64
  %arrayidx98 = getelementptr inbounds [152 x [4 x i32]], ptr @eno, i64 0, i64 %idxprom97
  %arrayidx99 = getelementptr inbounds [4 x i32], ptr %arrayidx98, i64 0, i64 1
  %60 = load i32, ptr %arrayidx99, align 4, !tbaa !5
  %61 = load i32, ptr %ii, align 4, !tbaa !5
  %inc100 = add nsw i32 %61, 1
  store i32 %inc100, ptr %ii, align 4, !tbaa !5
  %idxprom101 = sext i32 %61 to i64
  %arrayidx102 = getelementptr inbounds [912 x i32], ptr %ec, i64 0, i64 %idxprom101
  store i32 %60, ptr %arrayidx102, align 4, !tbaa !5
  br label %if.end103

if.end103:                                        ; preds = %if.then96, %if.end91
  %62 = load i32, ptr %vi, align 4, !tbaa !5
  %idxprom104 = sext i32 %62 to i64
  %arrayidx105 = getelementptr inbounds [152 x [4 x i32]], ptr @eno, i64 0, i64 %idxprom104
  %arrayidx106 = getelementptr inbounds [4 x i32], ptr %arrayidx105, i64 0, i64 2
  %63 = load i32, ptr %arrayidx106, align 8, !tbaa !5
  %64 = load i32, ptr %i, align 4, !tbaa !5
  %cmp107 = icmp ne i32 %63, %64
  br i1 %cmp107, label %if.then108, label %if.end115

if.then108:                                       ; preds = %if.end103
  %65 = load i32, ptr %vi, align 4, !tbaa !5
  %idxprom109 = sext i32 %65 to i64
  %arrayidx110 = getelementptr inbounds [152 x [4 x i32]], ptr @eno, i64 0, i64 %idxprom109
  %arrayidx111 = getelementptr inbounds [4 x i32], ptr %arrayidx110, i64 0, i64 2
  %66 = load i32, ptr %arrayidx111, align 8, !tbaa !5
  %67 = load i32, ptr %ii, align 4, !tbaa !5
  %inc112 = add nsw i32 %67, 1
  store i32 %inc112, ptr %ii, align 4, !tbaa !5
  %idxprom113 = sext i32 %67 to i64
  %arrayidx114 = getelementptr inbounds [912 x i32], ptr %ec, i64 0, i64 %idxprom113
  store i32 %66, ptr %arrayidx114, align 4, !tbaa !5
  br label %if.end115

if.end115:                                        ; preds = %if.then108, %if.end103
  %68 = load i32, ptr %ii, align 4, !tbaa !5
  %sub116 = sub nsw i32 %68, 2
  %idxprom117 = sext i32 %sub116 to i64
  %arrayidx118 = getelementptr inbounds [912 x i32], ptr %ec, i64 0, i64 %idxprom117
  %69 = load i32, ptr %arrayidx118, align 4, !tbaa !5
  %70 = load i32, ptr %ii, align 4, !tbaa !5
  %sub119 = sub nsw i32 %70, 3
  %idxprom120 = sext i32 %sub119 to i64
  %arrayidx121 = getelementptr inbounds [912 x i32], ptr %ec, i64 0, i64 %idxprom120
  store i32 %69, ptr %arrayidx121, align 4, !tbaa !5
  %71 = load i32, ptr %ii, align 4, !tbaa !5
  %sub122 = sub nsw i32 %71, 4
  %idxprom123 = sext i32 %sub122 to i64
  %arrayidx124 = getelementptr inbounds [912 x i32], ptr %ec, i64 0, i64 %idxprom123
  store i32 %69, ptr %arrayidx124, align 4, !tbaa !5
  %72 = load i32, ptr %ii, align 4, !tbaa !5
  %sub125 = sub nsw i32 %72, 1
  %idxprom126 = sext i32 %sub125 to i64
  %arrayidx127 = getelementptr inbounds [912 x i32], ptr %ec, i64 0, i64 %idxprom126
  %73 = load i32, ptr %arrayidx127, align 4, !tbaa !5
  %74 = load i32, ptr %ii, align 4, !tbaa !5
  %sub128 = sub nsw i32 %74, 2
  %idxprom129 = sext i32 %sub128 to i64
  %arrayidx130 = getelementptr inbounds [912 x i32], ptr %ec, i64 0, i64 %idxprom129
  store i32 %73, ptr %arrayidx130, align 4, !tbaa !5
  br label %for.inc131

for.inc131:                                       ; preds = %if.end115
  %75 = load i32, ptr %i, align 4, !tbaa !5
  %inc132 = add nsw i32 %75, 1
  store i32 %inc132, ptr %i, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !49

for.end133:                                       ; preds = %for.cond6
  store i64 2147483647, ptr @maxnodes, align 8, !tbaa !11
  store i32 0, ptr %nbad, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond134

for.cond134:                                      ; preds = %for.inc211, %for.end133
  %76 = load i32, ptr %i, align 4, !tbaa !5
  %77 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %mul135 = mul nsw i32 4, %77
  %cmp136 = icmp slt i32 %76, %mul135
  br i1 %cmp136, label %for.body137, label %for.end213

for.body137:                                      ; preds = %for.cond134
  %78 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom138 = sext i32 %78 to i64
  %arrayidx139 = getelementptr inbounds [912 x i32], ptr %done, i64 0, i64 %idxprom138
  %79 = load i32, ptr %arrayidx139, align 4, !tbaa !5
  %tobool = icmp ne i32 %79, 0
  br i1 %tobool, label %if.end210, label %if.then140

if.then140:                                       ; preds = %for.body137
  %80 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom141 = sext i32 %80 to i64
  %arrayidx142 = getelementptr inbounds [912 x i32], ptr %ea, i64 0, i64 %idxprom141
  %81 = load i32, ptr %arrayidx142, align 4, !tbaa !5
  %idxprom143 = sext i32 %81 to i64
  %arrayidx144 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom143
  store i32 1, ptr %arrayidx144, align 4, !tbaa !5
  %82 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom145 = sext i32 %82 to i64
  %arrayidx146 = getelementptr inbounds [912 x i32], ptr %eb, i64 0, i64 %idxprom145
  %83 = load i32, ptr %arrayidx146, align 4, !tbaa !5
  %idxprom147 = sext i32 %83 to i64
  %arrayidx148 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom147
  store i32 1, ptr %arrayidx148, align 4, !tbaa !5
  %84 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom149 = sext i32 %84 to i64
  %arrayidx150 = getelementptr inbounds [912 x i32], ptr %ec, i64 0, i64 %idxprom149
  %85 = load i32, ptr %arrayidx150, align 4, !tbaa !5
  %idxprom151 = sext i32 %85 to i64
  %arrayidx152 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom151
  store i32 1, ptr %arrayidx152, align 4, !tbaa !5
  %86 = load i64, ptr @numtries, align 16, !tbaa !11
  %inc153 = add i64 %86, 1
  store i64 %inc153, ptr @numtries, align 16, !tbaa !11
  %87 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %arraydecay154 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 0
  %arraydecay155 = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 0
  %arraydecay156 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 0
  %arraydecay157 = getelementptr inbounds [229 x i32], ptr %outclass, i64 0, i64 0
  %88 = load i32, ptr %n.addr, align 4, !tbaa !5
  %89 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %call158 = call i32 @cubham(ptr noundef %87, ptr noundef @eno, ptr noundef %arraydecay154, ptr noundef %arraydecay155, ptr noundef %arraydecay156, ptr noundef null, ptr noundef %arraydecay157, i32 noundef %88, i32 noundef %89)
  %cmp159 = icmp eq i32 %call158, 1
  br i1 %cmp159, label %if.then160, label %if.end196

if.then160:                                       ; preds = %if.then140
  %90 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %90, ptr %ii, align 4, !tbaa !5
  br label %for.cond161

for.cond161:                                      ; preds = %for.inc193, %if.then160
  %91 = load i32, ptr %ii, align 4, !tbaa !5
  %92 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %mul162 = mul nsw i32 4, %92
  %cmp163 = icmp slt i32 %91, %mul162
  br i1 %cmp163, label %for.body164, label %for.end195

for.body164:                                      ; preds = %for.cond161
  %93 = load i32, ptr %ii, align 4, !tbaa !5
  %idxprom165 = sext i32 %93 to i64
  %arrayidx166 = getelementptr inbounds [912 x i32], ptr %done, i64 0, i64 %idxprom165
  %94 = load i32, ptr %arrayidx166, align 4, !tbaa !5
  %tobool167 = icmp ne i32 %94, 0
  br i1 %tobool167, label %if.end192, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body164
  %95 = load i32, ptr %ii, align 4, !tbaa !5
  %idxprom168 = sext i32 %95 to i64
  %arrayidx169 = getelementptr inbounds [912 x i32], ptr %ea, i64 0, i64 %idxprom168
  %96 = load i32, ptr %arrayidx169, align 4, !tbaa !5
  %idxprom170 = sext i32 %96 to i64
  %arrayidx171 = getelementptr inbounds [229 x i32], ptr %outclass, i64 0, i64 %idxprom170
  %97 = load i32, ptr %arrayidx171, align 4, !tbaa !5
  %cmp172 = icmp eq i32 %97, 1
  br i1 %cmp172, label %land.lhs.true173, label %if.end192

land.lhs.true173:                                 ; preds = %land.lhs.true
  %98 = load i32, ptr %ii, align 4, !tbaa !5
  %idxprom174 = sext i32 %98 to i64
  %arrayidx175 = getelementptr inbounds [912 x i32], ptr %eb, i64 0, i64 %idxprom174
  %99 = load i32, ptr %arrayidx175, align 4, !tbaa !5
  %idxprom176 = sext i32 %99 to i64
  %arrayidx177 = getelementptr inbounds [229 x i32], ptr %outclass, i64 0, i64 %idxprom176
  %100 = load i32, ptr %arrayidx177, align 4, !tbaa !5
  %cmp178 = icmp eq i32 %100, 1
  br i1 %cmp178, label %land.lhs.true179, label %if.end192

land.lhs.true179:                                 ; preds = %land.lhs.true173
  %101 = load i32, ptr %ii, align 4, !tbaa !5
  %idxprom180 = sext i32 %101 to i64
  %arrayidx181 = getelementptr inbounds [912 x i32], ptr %ec, i64 0, i64 %idxprom180
  %102 = load i32, ptr %arrayidx181, align 4, !tbaa !5
  %idxprom182 = sext i32 %102 to i64
  %arrayidx183 = getelementptr inbounds [229 x i32], ptr %outclass, i64 0, i64 %idxprom182
  %103 = load i32, ptr %arrayidx183, align 4, !tbaa !5
  %cmp184 = icmp eq i32 %103, 1
  br i1 %cmp184, label %if.then185, label %if.end192

if.then185:                                       ; preds = %land.lhs.true179
  %104 = load i32, ptr %ii, align 4, !tbaa !5
  %idxprom186 = sext i32 %104 to i64
  %arrayidx187 = getelementptr inbounds [912 x i32], ptr %done, i64 0, i64 %idxprom186
  store i32 1, ptr %arrayidx187, align 4, !tbaa !5
  %105 = load i32, ptr %ii, align 4, !tbaa !5
  %and = and i32 %105, 3
  %shl = shl i32 1, %and
  %106 = load i32, ptr %ii, align 4, !tbaa !5
  %idxprom188 = sext i32 %106 to i64
  %arrayidx189 = getelementptr inbounds [912 x i32], ptr %eb, i64 0, i64 %idxprom188
  %107 = load i32, ptr %arrayidx189, align 4, !tbaa !5
  %idxprom190 = sext i32 %107 to i64
  %arrayidx191 = getelementptr inbounds [228 x i32], ptr %count, i64 0, i64 %idxprom190
  %108 = load i32, ptr %arrayidx191, align 4, !tbaa !5
  %or = or i32 %108, %shl
  store i32 %or, ptr %arrayidx191, align 4, !tbaa !5
  br label %if.end192

if.end192:                                        ; preds = %if.then185, %land.lhs.true179, %land.lhs.true173, %land.lhs.true, %for.body164
  br label %for.inc193

for.inc193:                                       ; preds = %if.end192
  %109 = load i32, ptr %ii, align 4, !tbaa !5
  %inc194 = add nsw i32 %109, 1
  store i32 %inc194, ptr %ii, align 4, !tbaa !5
  br label %for.cond161, !llvm.loop !50

for.end195:                                       ; preds = %for.cond161
  br label %if.end196

if.end196:                                        ; preds = %for.end195, %if.then140
  %110 = load i64, ptr @numtries, align 16, !tbaa !11
  %inc197 = add i64 %110, 1
  store i64 %inc197, ptr @numtries, align 16, !tbaa !11
  %111 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom198 = sext i32 %111 to i64
  %arrayidx199 = getelementptr inbounds [912 x i32], ptr %ea, i64 0, i64 %idxprom198
  %112 = load i32, ptr %arrayidx199, align 4, !tbaa !5
  %idxprom200 = sext i32 %112 to i64
  %arrayidx201 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom200
  store i32 0, ptr %arrayidx201, align 4, !tbaa !5
  %113 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom202 = sext i32 %113 to i64
  %arrayidx203 = getelementptr inbounds [912 x i32], ptr %eb, i64 0, i64 %idxprom202
  %114 = load i32, ptr %arrayidx203, align 4, !tbaa !5
  %idxprom204 = sext i32 %114 to i64
  %arrayidx205 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom204
  store i32 0, ptr %arrayidx205, align 4, !tbaa !5
  %115 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom206 = sext i32 %115 to i64
  %arrayidx207 = getelementptr inbounds [912 x i32], ptr %ec, i64 0, i64 %idxprom206
  %116 = load i32, ptr %arrayidx207, align 4, !tbaa !5
  %idxprom208 = sext i32 %116 to i64
  %arrayidx209 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom208
  store i32 0, ptr %arrayidx209, align 4, !tbaa !5
  br label %if.end210

if.end210:                                        ; preds = %if.end196, %for.body137
  br label %for.inc211

for.inc211:                                       ; preds = %if.end210
  %117 = load i32, ptr %i, align 4, !tbaa !5
  %inc212 = add nsw i32 %117, 1
  store i32 %inc212, ptr %i, align 4, !tbaa !5
  br label %for.cond134, !llvm.loop !51

for.end213:                                       ; preds = %for.cond134
  store i32 0, ptr %pluswhy, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond214

for.cond214:                                      ; preds = %for.inc250, %for.end213
  %118 = load i32, ptr %i, align 4, !tbaa !5
  %119 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp215 = icmp slt i32 %118, %119
  br i1 %cmp215, label %for.body216, label %for.end252

for.body216:                                      ; preds = %for.cond214
  %120 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom217 = sext i32 %120 to i64
  %arrayidx218 = getelementptr inbounds [228 x i32], ptr %count, i64 0, i64 %idxprom217
  %121 = load i32, ptr %arrayidx218, align 4, !tbaa !5
  %idxprom219 = sext i32 %121 to i64
  %arrayidx220 = getelementptr inbounds [16 x i32], ptr @hase34.pop, i64 0, i64 %idxprom219
  %122 = load i32, ptr %arrayidx220, align 4, !tbaa !5
  %cmp221 = icmp slt i32 %122, 3
  br i1 %cmp221, label %land.lhs.true222, label %if.end249

land.lhs.true222:                                 ; preds = %for.body216
  %123 = load i32, ptr %plus.addr, align 4, !tbaa !5
  %tobool223 = icmp ne i32 %123, 0
  br i1 %tobool223, label %lor.lhs.false, label %if.then230

lor.lhs.false:                                    ; preds = %land.lhs.true222
  %124 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %125 = load i32, ptr %n.addr, align 4, !tbaa !5
  %126 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %127 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom224 = sext i32 %127 to i64
  %arrayidx225 = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 %idxprom224
  %128 = load i32, ptr %arrayidx225, align 4, !tbaa !5
  %129 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom226 = sext i32 %129 to i64
  %arrayidx227 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 %idxprom226
  %130 = load i32, ptr %arrayidx227, align 4, !tbaa !5
  %call228 = call i32 @eplus(ptr noundef %124, i32 noundef %125, i32 noundef %126, i32 noundef %128, i32 noundef %130, ptr noundef %pluswhy)
  %tobool229 = icmp ne i32 %call228, 0
  br i1 %tobool229, label %if.end249, label %if.then230

if.then230:                                       ; preds = %lor.lhs.false, %land.lhs.true222
  %131 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom231 = sext i32 %131 to i64
  %arrayidx232 = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 %idxprom231
  %132 = load i32, ptr %arrayidx232, align 4, !tbaa !5
  %133 = load ptr, ptr %x0.addr, align 8, !tbaa !9
  %134 = load i32, ptr %nbad, align 4, !tbaa !5
  %idxprom233 = sext i32 %134 to i64
  %arrayidx234 = getelementptr inbounds i32, ptr %133, i64 %idxprom233
  store i32 %132, ptr %arrayidx234, align 4, !tbaa !5
  %135 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom235 = sext i32 %135 to i64
  %arrayidx236 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 %idxprom235
  %136 = load i32, ptr %arrayidx236, align 4, !tbaa !5
  %137 = load ptr, ptr %x1.addr, align 8, !tbaa !9
  %138 = load i32, ptr %nbad, align 4, !tbaa !5
  %idxprom237 = sext i32 %138 to i64
  %arrayidx238 = getelementptr inbounds i32, ptr %137, i64 %idxprom237
  store i32 %136, ptr %arrayidx238, align 4, !tbaa !5
  %139 = load i32, ptr %pluswhy, align 4, !tbaa !5
  %shl239 = shl i32 %139, 4
  %140 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom240 = sext i32 %140 to i64
  %arrayidx241 = getelementptr inbounds [228 x i32], ptr %count, i64 0, i64 %idxprom240
  %141 = load i32, ptr %arrayidx241, align 4, !tbaa !5
  %or242 = or i32 %shl239, %141
  %142 = load ptr, ptr %why.addr, align 8, !tbaa !9
  %143 = load i32, ptr %nbad, align 4, !tbaa !5
  %idxprom243 = sext i32 %143 to i64
  %arrayidx244 = getelementptr inbounds i32, ptr %142, i64 %idxprom243
  store i32 %or242, ptr %arrayidx244, align 4, !tbaa !5
  %144 = load i32, ptr %nbad, align 4, !tbaa !5
  %inc245 = add nsw i32 %144, 1
  store i32 %inc245, ptr %nbad, align 4, !tbaa !5
  %145 = load i32, ptr %nbad, align 4, !tbaa !5
  %146 = load i32, ptr %limit.addr, align 4, !tbaa !5
  %cmp246 = icmp sge i32 %145, %146
  br i1 %cmp246, label %if.then247, label %if.end248

if.then247:                                       ; preds = %if.then230
  %147 = load i32, ptr %nbad, align 4, !tbaa !5
  store i32 %147, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end248:                                        ; preds = %if.then230
  br label %if.end249

if.end249:                                        ; preds = %if.end248, %lor.lhs.false, %for.body216
  br label %for.inc250

for.inc250:                                       ; preds = %if.end249
  %148 = load i32, ptr %i, align 4, !tbaa !5
  %inc251 = add nsw i32 %148, 1
  store i32 %inc251, ptr %i, align 4, !tbaa !5
  br label %for.cond214, !llvm.loop !52

for.end252:                                       ; preds = %for.cond214
  %149 = load i32, ptr %nbad, align 4, !tbaa !5
  store i32 %149, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end252, %if.then247
  call void @llvm.lifetime.end.p0(i64 4, ptr %pluswhy) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbad) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %vi) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ii) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 912, ptr %count) #8
  call void @llvm.lifetime.end.p0(i64 3648, ptr %done) #8
  call void @llvm.lifetime.end.p0(i64 3648, ptr %ec) #8
  call void @llvm.lifetime.end.p0(i64 3648, ptr %eb) #8
  call void @llvm.lifetime.end.p0(i64 3648, ptr %ea) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %outclass) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %initclass) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %v2) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %v1) #8
  %150 = load i32, ptr %retval, align 4
  ret i32 %150
}

declare void @writelast(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @hasinout(ptr noundef %cub, i32 noundef %n, i32 noundef %ne, ptr noundef %x0, ptr noundef %x1, ptr noundef %y0, ptr noundef %y1, i32 noundef %limit) #0 {
entry:
  %retval = alloca i32, align 4
  %cub.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %ne.addr = alloca i32, align 4
  %x0.addr = alloca ptr, align 8
  %x1.addr = alloca ptr, align 8
  %y0.addr = alloca ptr, align 8
  %y1.addr = alloca ptr, align 8
  %limit.addr = alloca i32, align 4
  %v1 = alloca [229 x i32], align 16
  %v2 = alloca [229 x i32], align 16
  %initclass = alloca [229 x i32], align 16
  %outclass = alloca [229 x i32], align 16
  %d0 = alloca ptr, align 8
  %di = alloca ptr, align 8
  %dii = alloca ptr, align 8
  %i = alloca i32, align 4
  %ii = alloca i32, align 4
  %j = alloca i32, align 4
  %jj = alloca i32, align 4
  %me = alloca i32, align 4
  %nbad = alloca i32, align 4
  %es = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cub, ptr %cub.addr, align 8, !tbaa !9
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store i32 %ne, ptr %ne.addr, align 4, !tbaa !5
  store ptr %x0, ptr %x0.addr, align 8, !tbaa !9
  store ptr %x1, ptr %x1.addr, align 8, !tbaa !9
  store ptr %y0, ptr %y0.addr, align 8, !tbaa !9
  store ptr %y1, ptr %y1.addr, align 8, !tbaa !9
  store i32 %limit, ptr %limit.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 916, ptr %v1) #8
  call void @llvm.lifetime.start.p0(i64 916, ptr %v2) #8
  call void @llvm.lifetime.start.p0(i64 916, ptr %initclass) #8
  call void @llvm.lifetime.start.p0(i64 916, ptr %outclass) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %d0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %di) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %dii) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ii) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %jj) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %me) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbad) #8
  %0 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %add = add nsw i32 %0, 64
  %sub = sub nsw i32 %add, 1
  %div = sdiv i32 %sub, 64
  store i32 %div, ptr %me, align 4, !tbaa !5
  %1 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %conv = sext i32 %1 to i64
  %2 = load i32, ptr %me, align 4, !tbaa !5
  %conv1 = sext i32 %2 to i64
  %mul = mul i64 %conv, %conv1
  %3 = load i64, ptr @hasinout.done_sz, align 8, !tbaa !11
  %cmp = icmp ugt i64 %mul, %3
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %4 = load i64, ptr @hasinout.done_sz, align 8, !tbaa !11
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %5 = load ptr, ptr @hasinout.done, align 8, !tbaa !9
  call void @free(ptr noundef %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %6 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %conv4 = sext i32 %6 to i64
  %7 = load i32, ptr %me, align 4, !tbaa !5
  %conv5 = sext i32 %7 to i64
  %mul6 = mul i64 %conv4, %conv5
  store i64 %mul6, ptr @hasinout.done_sz, align 8, !tbaa !11
  %8 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %conv7 = sext i32 %8 to i64
  %9 = load i32, ptr %me, align 4, !tbaa !5
  %conv8 = sext i32 %9 to i64
  %mul9 = mul i64 %conv8, 8
  %mul10 = mul i64 %conv7, %mul9
  %call = call noalias ptr @malloc(i64 noundef %mul10) #12
  store ptr %call, ptr @hasinout.done, align 8, !tbaa !9
  %cmp11 = icmp eq ptr %call, null
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  call void @gt_abort(ptr noundef @.str.64)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %entry
  %10 = load ptr, ptr @hasinout.done, align 8, !tbaa !9
  store ptr %10, ptr %d0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %es) #8
  %11 = load ptr, ptr %d0, align 8, !tbaa !9
  %12 = load i32, ptr %me, align 4, !tbaa !5
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i64, ptr %11, i64 %idx.ext
  store ptr %add.ptr, ptr %es, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end15
  %13 = load ptr, ptr %es, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i64, ptr %13, i32 -1
  store ptr %incdec.ptr, ptr %es, align 8, !tbaa !9
  %14 = load ptr, ptr %d0, align 8, !tbaa !9
  %cmp16 = icmp uge ptr %incdec.ptr, %14
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %es, align 8, !tbaa !9
  store i64 0, ptr %15, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !53

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %es) #8
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc, %for.end
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %17 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %16, %17
  br i1 %cmp19, label %for.body21, label %for.end24

for.body21:                                       ; preds = %for.cond18
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %and = and i32 %18, 63
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [64 x i64], ptr @bit, i64 0, i64 %idxprom
  %19 = load i64, ptr %arrayidx, align 8, !tbaa !11
  %20 = load ptr, ptr %d0, align 8, !tbaa !9
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %shr = ashr i32 %21, 6
  %idxprom22 = sext i32 %shr to i64
  %arrayidx23 = getelementptr inbounds i64, ptr %20, i64 %idxprom22
  %22 = load i64, ptr %arrayidx23, align 8, !tbaa !11
  %or = or i64 %22, %19
  store i64 %or, ptr %arrayidx23, align 8, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body21
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !54

for.end24:                                        ; preds = %for.cond18
  store i32 1, ptr %i, align 4, !tbaa !5
  %24 = load ptr, ptr %d0, align 8, !tbaa !9
  %25 = load i32, ptr %me, align 4, !tbaa !5
  %idx.ext25 = sext i32 %25 to i64
  %add.ptr26 = getelementptr inbounds i64, ptr %24, i64 %idx.ext25
  store ptr %add.ptr26, ptr %di, align 8, !tbaa !9
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc49, %for.end24
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %27 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %26, %27
  br i1 %cmp28, label %for.body30, label %for.end53

for.body30:                                       ; preds = %for.cond27
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc39, %for.body30
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %29 = load i32, ptr %me, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %28, %29
  br i1 %cmp32, label %for.body34, label %for.end41

for.body34:                                       ; preds = %for.cond31
  %30 = load ptr, ptr %d0, align 8, !tbaa !9
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom35 = sext i32 %31 to i64
  %arrayidx36 = getelementptr inbounds i64, ptr %30, i64 %idxprom35
  %32 = load i64, ptr %arrayidx36, align 8, !tbaa !11
  %33 = load ptr, ptr %di, align 8, !tbaa !9
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom37 = sext i32 %34 to i64
  %arrayidx38 = getelementptr inbounds i64, ptr %33, i64 %idxprom37
  store i64 %32, ptr %arrayidx38, align 8, !tbaa !11
  br label %for.inc39

for.inc39:                                        ; preds = %for.body34
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %inc40 = add nsw i32 %35, 1
  store i32 %inc40, ptr %j, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !55

for.end41:                                        ; preds = %for.cond31
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %and42 = and i32 %36, 63
  %idxprom43 = sext i32 %and42 to i64
  %arrayidx44 = getelementptr inbounds [64 x i64], ptr @bit, i64 0, i64 %idxprom43
  %37 = load i64, ptr %arrayidx44, align 8, !tbaa !11
  %not = xor i64 %37, -1
  %38 = load ptr, ptr %di, align 8, !tbaa !9
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %shr45 = ashr i32 %39, 6
  %idxprom46 = sext i32 %shr45 to i64
  %arrayidx47 = getelementptr inbounds i64, ptr %38, i64 %idxprom46
  %40 = load i64, ptr %arrayidx47, align 8, !tbaa !11
  %and48 = and i64 %40, %not
  store i64 %and48, ptr %arrayidx47, align 8, !tbaa !11
  br label %for.inc49

for.inc49:                                        ; preds = %for.end41
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %inc50 = add nsw i32 %41, 1
  store i32 %inc50, ptr %i, align 4, !tbaa !5
  %42 = load i32, ptr %me, align 4, !tbaa !5
  %43 = load ptr, ptr %di, align 8, !tbaa !9
  %idx.ext51 = sext i32 %42 to i64
  %add.ptr52 = getelementptr inbounds i64, ptr %43, i64 %idx.ext51
  store ptr %add.ptr52, ptr %di, align 8, !tbaa !9
  br label %for.cond27, !llvm.loop !56

for.end53:                                        ; preds = %for.cond27
  %44 = load i64, ptr @bit, align 16, !tbaa !11
  %not54 = xor i64 %44, -1
  %45 = load ptr, ptr %d0, align 8, !tbaa !9
  %arrayidx55 = getelementptr inbounds i64, ptr %45, i64 0
  %46 = load i64, ptr %arrayidx55, align 8, !tbaa !11
  %and56 = and i64 %46, %not54
  store i64 %and56, ptr %arrayidx55, align 8, !tbaa !11
  %47 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %arraydecay = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 0
  %arraydecay57 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 0
  %48 = load i32, ptr %n.addr, align 4, !tbaa !5
  %49 = load i32, ptr %ne.addr, align 4, !tbaa !5
  call void @cubinit(ptr noundef %47, ptr noundef @eno, ptr noundef %arraydecay, ptr noundef %arraydecay57, i32 noundef %48, i32 noundef %49)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc64, %for.end53
  %50 = load i32, ptr %i, align 4, !tbaa !5
  %51 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %50, %51
  br i1 %cmp59, label %for.body61, label %for.end66

for.body61:                                       ; preds = %for.cond58
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %52 to i64
  %arrayidx63 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom62
  store i32 0, ptr %arrayidx63, align 4, !tbaa !5
  br label %for.inc64

for.inc64:                                        ; preds = %for.body61
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %inc65 = add nsw i32 %53, 1
  store i32 %inc65, ptr %i, align 4, !tbaa !5
  br label %for.cond58, !llvm.loop !57

for.end66:                                        ; preds = %for.cond58
  store i64 2147483647, ptr @maxnodes, align 8, !tbaa !11
  store i32 0, ptr %nbad, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  %54 = load ptr, ptr @hasinout.done, align 8, !tbaa !9
  store ptr %54, ptr %di, align 8, !tbaa !9
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc152, %for.end66
  %55 = load i32, ptr %i, align 4, !tbaa !5
  %56 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %55, %56
  br i1 %cmp68, label %for.body70, label %for.end156

for.body70:                                       ; preds = %for.cond67
  store i32 -1, ptr %j, align 4, !tbaa !5
  br label %for.cond71

for.cond71:                                       ; preds = %if.end146, %for.body70
  %57 = load ptr, ptr %di, align 8, !tbaa !9
  %58 = load i32, ptr %me, align 4, !tbaa !5
  %59 = load i32, ptr %j, align 4, !tbaa !5
  %call72 = call i32 @nextelement(ptr noundef %57, i32 noundef %58, i32 noundef %59)
  store i32 %call72, ptr %j, align 4, !tbaa !5
  %cmp73 = icmp sge i32 %call72, 0
  br i1 %cmp73, label %for.body75, label %for.end151

for.body75:                                       ; preds = %for.cond71
  %60 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom76 = sext i32 %60 to i64
  %arrayidx77 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom76
  store i32 -1, ptr %arrayidx77, align 4, !tbaa !5
  %61 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom78 = sext i32 %61 to i64
  %arrayidx79 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom78
  store i32 1, ptr %arrayidx79, align 4, !tbaa !5
  %62 = load i64, ptr @numtries, align 16, !tbaa !11
  %inc80 = add i64 %62, 1
  store i64 %inc80, ptr @numtries, align 16, !tbaa !11
  %63 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %arraydecay81 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 0
  %arraydecay82 = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 0
  %arraydecay83 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 0
  %arraydecay84 = getelementptr inbounds [229 x i32], ptr %outclass, i64 0, i64 0
  %64 = load i32, ptr %n.addr, align 4, !tbaa !5
  %65 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %call85 = call i32 @cubham(ptr noundef %63, ptr noundef @eno, ptr noundef %arraydecay81, ptr noundef %arraydecay82, ptr noundef %arraydecay83, ptr noundef null, ptr noundef %arraydecay84, i32 noundef %64, i32 noundef %65)
  %cmp86 = icmp eq i32 %call85, -1
  br i1 %cmp86, label %if.then88, label %if.else

if.then88:                                        ; preds = %for.body75
  %66 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom89 = sext i32 %66 to i64
  %arrayidx90 = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 %idxprom89
  %67 = load i32, ptr %arrayidx90, align 4, !tbaa !5
  %68 = load ptr, ptr %x0.addr, align 8, !tbaa !9
  %69 = load i32, ptr %nbad, align 4, !tbaa !5
  %idxprom91 = sext i32 %69 to i64
  %arrayidx92 = getelementptr inbounds i32, ptr %68, i64 %idxprom91
  store i32 %67, ptr %arrayidx92, align 4, !tbaa !5
  %70 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom93 = sext i32 %70 to i64
  %arrayidx94 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 %idxprom93
  %71 = load i32, ptr %arrayidx94, align 4, !tbaa !5
  %72 = load ptr, ptr %x1.addr, align 8, !tbaa !9
  %73 = load i32, ptr %nbad, align 4, !tbaa !5
  %idxprom95 = sext i32 %73 to i64
  %arrayidx96 = getelementptr inbounds i32, ptr %72, i64 %idxprom95
  store i32 %71, ptr %arrayidx96, align 4, !tbaa !5
  %74 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom97 = sext i32 %74 to i64
  %arrayidx98 = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 %idxprom97
  %75 = load i32, ptr %arrayidx98, align 4, !tbaa !5
  %76 = load ptr, ptr %y0.addr, align 8, !tbaa !9
  %77 = load i32, ptr %nbad, align 4, !tbaa !5
  %idxprom99 = sext i32 %77 to i64
  %arrayidx100 = getelementptr inbounds i32, ptr %76, i64 %idxprom99
  store i32 %75, ptr %arrayidx100, align 4, !tbaa !5
  %78 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom101 = sext i32 %78 to i64
  %arrayidx102 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 %idxprom101
  %79 = load i32, ptr %arrayidx102, align 4, !tbaa !5
  %80 = load ptr, ptr %y1.addr, align 8, !tbaa !9
  %81 = load i32, ptr %nbad, align 4, !tbaa !5
  %idxprom103 = sext i32 %81 to i64
  %arrayidx104 = getelementptr inbounds i32, ptr %80, i64 %idxprom103
  store i32 %79, ptr %arrayidx104, align 4, !tbaa !5
  %82 = load i32, ptr %nbad, align 4, !tbaa !5
  %inc105 = add nsw i32 %82, 1
  store i32 %inc105, ptr %nbad, align 4, !tbaa !5
  %83 = load i32, ptr %nbad, align 4, !tbaa !5
  %84 = load i32, ptr %limit.addr, align 4, !tbaa !5
  %cmp106 = icmp sge i32 %83, %84
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.then88
  %85 = load i32, ptr %nbad, align 4, !tbaa !5
  store i32 %85, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end109:                                        ; preds = %if.then88
  br label %if.end146

if.else:                                          ; preds = %for.body75
  %86 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %86, ptr %ii, align 4, !tbaa !5
  %87 = load ptr, ptr %di, align 8, !tbaa !9
  store ptr %87, ptr %dii, align 8, !tbaa !9
  br label %for.cond110

for.cond110:                                      ; preds = %for.inc141, %if.else
  %88 = load i32, ptr %ii, align 4, !tbaa !5
  %89 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp111 = icmp slt i32 %88, %89
  br i1 %cmp111, label %for.body113, label %for.end145

for.body113:                                      ; preds = %for.cond110
  %90 = load i32, ptr %ii, align 4, !tbaa !5
  %idxprom114 = sext i32 %90 to i64
  %arrayidx115 = getelementptr inbounds [229 x i32], ptr %outclass, i64 0, i64 %idxprom114
  %91 = load i32, ptr %arrayidx115, align 4, !tbaa !5
  %cmp116 = icmp eq i32 %91, -1
  br i1 %cmp116, label %if.then118, label %if.end140

if.then118:                                       ; preds = %for.body113
  store i32 0, ptr %jj, align 4, !tbaa !5
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc137, %if.then118
  %92 = load i32, ptr %jj, align 4, !tbaa !5
  %93 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp120 = icmp slt i32 %92, %93
  br i1 %cmp120, label %for.body122, label %for.end139

for.body122:                                      ; preds = %for.cond119
  %94 = load i32, ptr %jj, align 4, !tbaa !5
  %idxprom123 = sext i32 %94 to i64
  %arrayidx124 = getelementptr inbounds [229 x i32], ptr %outclass, i64 0, i64 %idxprom123
  %95 = load i32, ptr %arrayidx124, align 4, !tbaa !5
  %cmp125 = icmp eq i32 %95, 1
  br i1 %cmp125, label %if.then127, label %if.end136

if.then127:                                       ; preds = %for.body122
  %96 = load i32, ptr %jj, align 4, !tbaa !5
  %and128 = and i32 %96, 63
  %idxprom129 = sext i32 %and128 to i64
  %arrayidx130 = getelementptr inbounds [64 x i64], ptr @bit, i64 0, i64 %idxprom129
  %97 = load i64, ptr %arrayidx130, align 8, !tbaa !11
  %not131 = xor i64 %97, -1
  %98 = load ptr, ptr %dii, align 8, !tbaa !9
  %99 = load i32, ptr %jj, align 4, !tbaa !5
  %shr132 = ashr i32 %99, 6
  %idxprom133 = sext i32 %shr132 to i64
  %arrayidx134 = getelementptr inbounds i64, ptr %98, i64 %idxprom133
  %100 = load i64, ptr %arrayidx134, align 8, !tbaa !11
  %and135 = and i64 %100, %not131
  store i64 %and135, ptr %arrayidx134, align 8, !tbaa !11
  br label %if.end136

if.end136:                                        ; preds = %if.then127, %for.body122
  br label %for.inc137

for.inc137:                                       ; preds = %if.end136
  %101 = load i32, ptr %jj, align 4, !tbaa !5
  %inc138 = add nsw i32 %101, 1
  store i32 %inc138, ptr %jj, align 4, !tbaa !5
  br label %for.cond119, !llvm.loop !58

for.end139:                                       ; preds = %for.cond119
  br label %if.end140

if.end140:                                        ; preds = %for.end139, %for.body113
  br label %for.inc141

for.inc141:                                       ; preds = %if.end140
  %102 = load i32, ptr %ii, align 4, !tbaa !5
  %inc142 = add nsw i32 %102, 1
  store i32 %inc142, ptr %ii, align 4, !tbaa !5
  %103 = load i32, ptr %me, align 4, !tbaa !5
  %104 = load ptr, ptr %dii, align 8, !tbaa !9
  %idx.ext143 = sext i32 %103 to i64
  %add.ptr144 = getelementptr inbounds i64, ptr %104, i64 %idx.ext143
  store ptr %add.ptr144, ptr %dii, align 8, !tbaa !9
  br label %for.cond110, !llvm.loop !59

for.end145:                                       ; preds = %for.cond110
  br label %if.end146

if.end146:                                        ; preds = %for.end145, %if.end109
  %105 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom147 = sext i32 %105 to i64
  %arrayidx148 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom147
  store i32 0, ptr %arrayidx148, align 4, !tbaa !5
  %106 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom149 = sext i32 %106 to i64
  %arrayidx150 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom149
  store i32 0, ptr %arrayidx150, align 4, !tbaa !5
  br label %for.cond71, !llvm.loop !60

for.end151:                                       ; preds = %for.cond71
  br label %for.inc152

for.inc152:                                       ; preds = %for.end151
  %107 = load i32, ptr %i, align 4, !tbaa !5
  %inc153 = add nsw i32 %107, 1
  store i32 %inc153, ptr %i, align 4, !tbaa !5
  %108 = load i32, ptr %me, align 4, !tbaa !5
  %109 = load ptr, ptr %di, align 8, !tbaa !9
  %idx.ext154 = sext i32 %108 to i64
  %add.ptr155 = getelementptr inbounds i64, ptr %109, i64 %idx.ext154
  store ptr %add.ptr155, ptr %di, align 8, !tbaa !9
  br label %for.cond67, !llvm.loop !61

for.end156:                                       ; preds = %for.cond67
  %110 = load i32, ptr %nbad, align 4, !tbaa !5
  store i32 %110, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end156, %if.then108
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbad) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %me) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %jj) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ii) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %dii) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %di) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %d0) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %outclass) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %initclass) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %v2) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %v1) #8
  %111 = load i32, ptr %retval, align 4
  ret i32 %111
}

; Function Attrs: nounwind uwtable
define internal i32 @hasinin(ptr noundef %cub, i32 noundef %n, i32 noundef %ne, ptr noundef %x0, ptr noundef %x1, ptr noundef %y0, ptr noundef %y1, i32 noundef %limit) #0 {
entry:
  %retval = alloca i32, align 4
  %cub.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %ne.addr = alloca i32, align 4
  %x0.addr = alloca ptr, align 8
  %x1.addr = alloca ptr, align 8
  %y0.addr = alloca ptr, align 8
  %y1.addr = alloca ptr, align 8
  %limit.addr = alloca i32, align 4
  %v1 = alloca [229 x i32], align 16
  %v2 = alloca [229 x i32], align 16
  %initclass = alloca [229 x i32], align 16
  %outclass = alloca [229 x i32], align 16
  %d0 = alloca ptr, align 8
  %di = alloca ptr, align 8
  %dii = alloca ptr, align 8
  %i = alloca i32, align 4
  %ii = alloca i32, align 4
  %j = alloca i32, align 4
  %jj = alloca i32, align 4
  %me = alloca i32, align 4
  %nbad = alloca i32, align 4
  %es = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cub, ptr %cub.addr, align 8, !tbaa !9
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store i32 %ne, ptr %ne.addr, align 4, !tbaa !5
  store ptr %x0, ptr %x0.addr, align 8, !tbaa !9
  store ptr %x1, ptr %x1.addr, align 8, !tbaa !9
  store ptr %y0, ptr %y0.addr, align 8, !tbaa !9
  store ptr %y1, ptr %y1.addr, align 8, !tbaa !9
  store i32 %limit, ptr %limit.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 916, ptr %v1) #8
  call void @llvm.lifetime.start.p0(i64 916, ptr %v2) #8
  call void @llvm.lifetime.start.p0(i64 916, ptr %initclass) #8
  call void @llvm.lifetime.start.p0(i64 916, ptr %outclass) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %d0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %di) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %dii) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ii) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %jj) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %me) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbad) #8
  %0 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %add = add nsw i32 %0, 64
  %sub = sub nsw i32 %add, 1
  %div = sdiv i32 %sub, 64
  store i32 %div, ptr %me, align 4, !tbaa !5
  %1 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %conv = sext i32 %1 to i64
  %2 = load i32, ptr %me, align 4, !tbaa !5
  %conv1 = sext i32 %2 to i64
  %mul = mul i64 %conv, %conv1
  %3 = load i64, ptr @hasinin.done_sz, align 8, !tbaa !11
  %cmp = icmp ugt i64 %mul, %3
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %4 = load i64, ptr @hasinin.done_sz, align 8, !tbaa !11
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %5 = load ptr, ptr @hasinin.done, align 8, !tbaa !9
  call void @free(ptr noundef %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %6 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %conv4 = sext i32 %6 to i64
  %7 = load i32, ptr %me, align 4, !tbaa !5
  %conv5 = sext i32 %7 to i64
  %mul6 = mul i64 %conv4, %conv5
  store i64 %mul6, ptr @hasinin.done_sz, align 8, !tbaa !11
  %8 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %conv7 = sext i32 %8 to i64
  %9 = load i32, ptr %me, align 4, !tbaa !5
  %conv8 = sext i32 %9 to i64
  %mul9 = mul i64 %conv8, 8
  %mul10 = mul i64 %conv7, %mul9
  %call = call noalias ptr @malloc(i64 noundef %mul10) #12
  store ptr %call, ptr @hasinin.done, align 8, !tbaa !9
  %cmp11 = icmp eq ptr %call, null
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  call void @gt_abort(ptr noundef @.str.65)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %entry
  %10 = load ptr, ptr @hasinin.done, align 8, !tbaa !9
  store ptr %10, ptr %d0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %es) #8
  %11 = load ptr, ptr %d0, align 8, !tbaa !9
  %12 = load i32, ptr %me, align 4, !tbaa !5
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i64, ptr %11, i64 %idx.ext
  store ptr %add.ptr, ptr %es, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end15
  %13 = load ptr, ptr %es, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i64, ptr %13, i32 -1
  store ptr %incdec.ptr, ptr %es, align 8, !tbaa !9
  %14 = load ptr, ptr %d0, align 8, !tbaa !9
  %cmp16 = icmp uge ptr %incdec.ptr, %14
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %es, align 8, !tbaa !9
  store i64 0, ptr %15, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !62

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %es) #8
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc, %for.end
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %17 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %16, %17
  br i1 %cmp19, label %for.body21, label %for.end24

for.body21:                                       ; preds = %for.cond18
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %and = and i32 %18, 63
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [64 x i64], ptr @bit, i64 0, i64 %idxprom
  %19 = load i64, ptr %arrayidx, align 8, !tbaa !11
  %20 = load ptr, ptr %d0, align 8, !tbaa !9
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %shr = ashr i32 %21, 6
  %idxprom22 = sext i32 %shr to i64
  %arrayidx23 = getelementptr inbounds i64, ptr %20, i64 %idxprom22
  %22 = load i64, ptr %arrayidx23, align 8, !tbaa !11
  %or = or i64 %22, %19
  store i64 %or, ptr %arrayidx23, align 8, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.body21
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !63

for.end24:                                        ; preds = %for.cond18
  store i32 1, ptr %i, align 4, !tbaa !5
  %24 = load ptr, ptr %d0, align 8, !tbaa !9
  %25 = load i32, ptr %me, align 4, !tbaa !5
  %idx.ext25 = sext i32 %25 to i64
  %add.ptr26 = getelementptr inbounds i64, ptr %24, i64 %idx.ext25
  store ptr %add.ptr26, ptr %di, align 8, !tbaa !9
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc49, %for.end24
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %27 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %26, %27
  br i1 %cmp28, label %for.body30, label %for.end53

for.body30:                                       ; preds = %for.cond27
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc39, %for.body30
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %29 = load i32, ptr %me, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %28, %29
  br i1 %cmp32, label %for.body34, label %for.end41

for.body34:                                       ; preds = %for.cond31
  %30 = load ptr, ptr %d0, align 8, !tbaa !9
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom35 = sext i32 %31 to i64
  %arrayidx36 = getelementptr inbounds i64, ptr %30, i64 %idxprom35
  %32 = load i64, ptr %arrayidx36, align 8, !tbaa !11
  %33 = load ptr, ptr %di, align 8, !tbaa !9
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom37 = sext i32 %34 to i64
  %arrayidx38 = getelementptr inbounds i64, ptr %33, i64 %idxprom37
  store i64 %32, ptr %arrayidx38, align 8, !tbaa !11
  br label %for.inc39

for.inc39:                                        ; preds = %for.body34
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %inc40 = add nsw i32 %35, 1
  store i32 %inc40, ptr %j, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !64

for.end41:                                        ; preds = %for.cond31
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %and42 = and i32 %36, 63
  %idxprom43 = sext i32 %and42 to i64
  %arrayidx44 = getelementptr inbounds [64 x i64], ptr @bit, i64 0, i64 %idxprom43
  %37 = load i64, ptr %arrayidx44, align 8, !tbaa !11
  %not = xor i64 %37, -1
  %38 = load ptr, ptr %di, align 8, !tbaa !9
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %shr45 = ashr i32 %39, 6
  %idxprom46 = sext i32 %shr45 to i64
  %arrayidx47 = getelementptr inbounds i64, ptr %38, i64 %idxprom46
  %40 = load i64, ptr %arrayidx47, align 8, !tbaa !11
  %and48 = and i64 %40, %not
  store i64 %and48, ptr %arrayidx47, align 8, !tbaa !11
  br label %for.inc49

for.inc49:                                        ; preds = %for.end41
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %inc50 = add nsw i32 %41, 1
  store i32 %inc50, ptr %i, align 4, !tbaa !5
  %42 = load i32, ptr %me, align 4, !tbaa !5
  %43 = load ptr, ptr %di, align 8, !tbaa !9
  %idx.ext51 = sext i32 %42 to i64
  %add.ptr52 = getelementptr inbounds i64, ptr %43, i64 %idx.ext51
  store ptr %add.ptr52, ptr %di, align 8, !tbaa !9
  br label %for.cond27, !llvm.loop !65

for.end53:                                        ; preds = %for.cond27
  %44 = load i64, ptr @bit, align 16, !tbaa !11
  %not54 = xor i64 %44, -1
  %45 = load ptr, ptr %d0, align 8, !tbaa !9
  %arrayidx55 = getelementptr inbounds i64, ptr %45, i64 0
  %46 = load i64, ptr %arrayidx55, align 8, !tbaa !11
  %and56 = and i64 %46, %not54
  store i64 %and56, ptr %arrayidx55, align 8, !tbaa !11
  %47 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %arraydecay = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 0
  %arraydecay57 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 0
  %48 = load i32, ptr %n.addr, align 4, !tbaa !5
  %49 = load i32, ptr %ne.addr, align 4, !tbaa !5
  call void @cubinit(ptr noundef %47, ptr noundef @eno, ptr noundef %arraydecay, ptr noundef %arraydecay57, i32 noundef %48, i32 noundef %49)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc64, %for.end53
  %50 = load i32, ptr %i, align 4, !tbaa !5
  %51 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %50, %51
  br i1 %cmp59, label %for.body61, label %for.end66

for.body61:                                       ; preds = %for.cond58
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %52 to i64
  %arrayidx63 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom62
  store i32 0, ptr %arrayidx63, align 4, !tbaa !5
  br label %for.inc64

for.inc64:                                        ; preds = %for.body61
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %inc65 = add nsw i32 %53, 1
  store i32 %inc65, ptr %i, align 4, !tbaa !5
  br label %for.cond58, !llvm.loop !66

for.end66:                                        ; preds = %for.cond58
  store i64 2147483647, ptr @maxnodes, align 8, !tbaa !11
  store i32 0, ptr %nbad, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  %54 = load ptr, ptr @hasinin.done, align 8, !tbaa !9
  store ptr %54, ptr %di, align 8, !tbaa !9
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc152, %for.end66
  %55 = load i32, ptr %i, align 4, !tbaa !5
  %56 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %55, %56
  br i1 %cmp68, label %for.body70, label %for.end156

for.body70:                                       ; preds = %for.cond67
  %57 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %57, ptr %j, align 4, !tbaa !5
  br label %for.cond71

for.cond71:                                       ; preds = %if.end146, %for.body70
  %58 = load ptr, ptr %di, align 8, !tbaa !9
  %59 = load i32, ptr %me, align 4, !tbaa !5
  %60 = load i32, ptr %j, align 4, !tbaa !5
  %call72 = call i32 @nextelement(ptr noundef %58, i32 noundef %59, i32 noundef %60)
  store i32 %call72, ptr %j, align 4, !tbaa !5
  %cmp73 = icmp sge i32 %call72, 0
  br i1 %cmp73, label %for.body75, label %for.end151

for.body75:                                       ; preds = %for.cond71
  %61 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom76 = sext i32 %61 to i64
  %arrayidx77 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom76
  store i32 1, ptr %arrayidx77, align 4, !tbaa !5
  %62 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom78 = sext i32 %62 to i64
  %arrayidx79 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom78
  store i32 1, ptr %arrayidx79, align 4, !tbaa !5
  %63 = load i64, ptr @numtries, align 16, !tbaa !11
  %inc80 = add i64 %63, 1
  store i64 %inc80, ptr @numtries, align 16, !tbaa !11
  %64 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %arraydecay81 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 0
  %arraydecay82 = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 0
  %arraydecay83 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 0
  %arraydecay84 = getelementptr inbounds [229 x i32], ptr %outclass, i64 0, i64 0
  %65 = load i32, ptr %n.addr, align 4, !tbaa !5
  %66 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %call85 = call i32 @cubham(ptr noundef %64, ptr noundef @eno, ptr noundef %arraydecay81, ptr noundef %arraydecay82, ptr noundef %arraydecay83, ptr noundef null, ptr noundef %arraydecay84, i32 noundef %65, i32 noundef %66)
  %cmp86 = icmp eq i32 %call85, -1
  br i1 %cmp86, label %if.then88, label %if.else

if.then88:                                        ; preds = %for.body75
  %67 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom89 = sext i32 %67 to i64
  %arrayidx90 = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 %idxprom89
  %68 = load i32, ptr %arrayidx90, align 4, !tbaa !5
  %69 = load ptr, ptr %x0.addr, align 8, !tbaa !9
  %70 = load i32, ptr %nbad, align 4, !tbaa !5
  %idxprom91 = sext i32 %70 to i64
  %arrayidx92 = getelementptr inbounds i32, ptr %69, i64 %idxprom91
  store i32 %68, ptr %arrayidx92, align 4, !tbaa !5
  %71 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom93 = sext i32 %71 to i64
  %arrayidx94 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 %idxprom93
  %72 = load i32, ptr %arrayidx94, align 4, !tbaa !5
  %73 = load ptr, ptr %x1.addr, align 8, !tbaa !9
  %74 = load i32, ptr %nbad, align 4, !tbaa !5
  %idxprom95 = sext i32 %74 to i64
  %arrayidx96 = getelementptr inbounds i32, ptr %73, i64 %idxprom95
  store i32 %72, ptr %arrayidx96, align 4, !tbaa !5
  %75 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom97 = sext i32 %75 to i64
  %arrayidx98 = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 %idxprom97
  %76 = load i32, ptr %arrayidx98, align 4, !tbaa !5
  %77 = load ptr, ptr %y0.addr, align 8, !tbaa !9
  %78 = load i32, ptr %nbad, align 4, !tbaa !5
  %idxprom99 = sext i32 %78 to i64
  %arrayidx100 = getelementptr inbounds i32, ptr %77, i64 %idxprom99
  store i32 %76, ptr %arrayidx100, align 4, !tbaa !5
  %79 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom101 = sext i32 %79 to i64
  %arrayidx102 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 %idxprom101
  %80 = load i32, ptr %arrayidx102, align 4, !tbaa !5
  %81 = load ptr, ptr %y1.addr, align 8, !tbaa !9
  %82 = load i32, ptr %nbad, align 4, !tbaa !5
  %idxprom103 = sext i32 %82 to i64
  %arrayidx104 = getelementptr inbounds i32, ptr %81, i64 %idxprom103
  store i32 %80, ptr %arrayidx104, align 4, !tbaa !5
  %83 = load i32, ptr %nbad, align 4, !tbaa !5
  %inc105 = add nsw i32 %83, 1
  store i32 %inc105, ptr %nbad, align 4, !tbaa !5
  %84 = load i32, ptr %nbad, align 4, !tbaa !5
  %85 = load i32, ptr %limit.addr, align 4, !tbaa !5
  %cmp106 = icmp sge i32 %84, %85
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.then88
  %86 = load i32, ptr %nbad, align 4, !tbaa !5
  store i32 %86, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end109:                                        ; preds = %if.then88
  br label %if.end146

if.else:                                          ; preds = %for.body75
  %87 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %87, ptr %ii, align 4, !tbaa !5
  %88 = load ptr, ptr %di, align 8, !tbaa !9
  store ptr %88, ptr %dii, align 8, !tbaa !9
  br label %for.cond110

for.cond110:                                      ; preds = %for.inc141, %if.else
  %89 = load i32, ptr %ii, align 4, !tbaa !5
  %90 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp111 = icmp slt i32 %89, %90
  br i1 %cmp111, label %for.body113, label %for.end145

for.body113:                                      ; preds = %for.cond110
  %91 = load i32, ptr %ii, align 4, !tbaa !5
  %idxprom114 = sext i32 %91 to i64
  %arrayidx115 = getelementptr inbounds [229 x i32], ptr %outclass, i64 0, i64 %idxprom114
  %92 = load i32, ptr %arrayidx115, align 4, !tbaa !5
  %cmp116 = icmp eq i32 %92, 1
  br i1 %cmp116, label %if.then118, label %if.end140

if.then118:                                       ; preds = %for.body113
  %93 = load i32, ptr %ii, align 4, !tbaa !5
  store i32 %93, ptr %jj, align 4, !tbaa !5
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc137, %if.then118
  %94 = load i32, ptr %jj, align 4, !tbaa !5
  %95 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp120 = icmp slt i32 %94, %95
  br i1 %cmp120, label %for.body122, label %for.end139

for.body122:                                      ; preds = %for.cond119
  %96 = load i32, ptr %jj, align 4, !tbaa !5
  %idxprom123 = sext i32 %96 to i64
  %arrayidx124 = getelementptr inbounds [229 x i32], ptr %outclass, i64 0, i64 %idxprom123
  %97 = load i32, ptr %arrayidx124, align 4, !tbaa !5
  %cmp125 = icmp eq i32 %97, 1
  br i1 %cmp125, label %if.then127, label %if.end136

if.then127:                                       ; preds = %for.body122
  %98 = load i32, ptr %jj, align 4, !tbaa !5
  %and128 = and i32 %98, 63
  %idxprom129 = sext i32 %and128 to i64
  %arrayidx130 = getelementptr inbounds [64 x i64], ptr @bit, i64 0, i64 %idxprom129
  %99 = load i64, ptr %arrayidx130, align 8, !tbaa !11
  %not131 = xor i64 %99, -1
  %100 = load ptr, ptr %dii, align 8, !tbaa !9
  %101 = load i32, ptr %jj, align 4, !tbaa !5
  %shr132 = ashr i32 %101, 6
  %idxprom133 = sext i32 %shr132 to i64
  %arrayidx134 = getelementptr inbounds i64, ptr %100, i64 %idxprom133
  %102 = load i64, ptr %arrayidx134, align 8, !tbaa !11
  %and135 = and i64 %102, %not131
  store i64 %and135, ptr %arrayidx134, align 8, !tbaa !11
  br label %if.end136

if.end136:                                        ; preds = %if.then127, %for.body122
  br label %for.inc137

for.inc137:                                       ; preds = %if.end136
  %103 = load i32, ptr %jj, align 4, !tbaa !5
  %inc138 = add nsw i32 %103, 1
  store i32 %inc138, ptr %jj, align 4, !tbaa !5
  br label %for.cond119, !llvm.loop !67

for.end139:                                       ; preds = %for.cond119
  br label %if.end140

if.end140:                                        ; preds = %for.end139, %for.body113
  br label %for.inc141

for.inc141:                                       ; preds = %if.end140
  %104 = load i32, ptr %ii, align 4, !tbaa !5
  %inc142 = add nsw i32 %104, 1
  store i32 %inc142, ptr %ii, align 4, !tbaa !5
  %105 = load i32, ptr %me, align 4, !tbaa !5
  %106 = load ptr, ptr %dii, align 8, !tbaa !9
  %idx.ext143 = sext i32 %105 to i64
  %add.ptr144 = getelementptr inbounds i64, ptr %106, i64 %idx.ext143
  store ptr %add.ptr144, ptr %dii, align 8, !tbaa !9
  br label %for.cond110, !llvm.loop !68

for.end145:                                       ; preds = %for.cond110
  br label %if.end146

if.end146:                                        ; preds = %for.end145, %if.end109
  %107 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom147 = sext i32 %107 to i64
  %arrayidx148 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom147
  store i32 0, ptr %arrayidx148, align 4, !tbaa !5
  %108 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom149 = sext i32 %108 to i64
  %arrayidx150 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom149
  store i32 0, ptr %arrayidx150, align 4, !tbaa !5
  br label %for.cond71, !llvm.loop !69

for.end151:                                       ; preds = %for.cond71
  br label %for.inc152

for.inc152:                                       ; preds = %for.end151
  %109 = load i32, ptr %i, align 4, !tbaa !5
  %inc153 = add nsw i32 %109, 1
  store i32 %inc153, ptr %i, align 4, !tbaa !5
  %110 = load i32, ptr %me, align 4, !tbaa !5
  %111 = load ptr, ptr %di, align 8, !tbaa !9
  %idx.ext154 = sext i32 %110 to i64
  %add.ptr155 = getelementptr inbounds i64, ptr %111, i64 %idx.ext154
  store ptr %add.ptr155, ptr %di, align 8, !tbaa !9
  br label %for.cond67, !llvm.loop !70

for.end156:                                       ; preds = %for.cond67
  %112 = load i32, ptr %nbad, align 4, !tbaa !5
  store i32 %112, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end156, %if.then108
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbad) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %me) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %jj) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ii) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %dii) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %di) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %d0) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %outclass) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %initclass) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %v2) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %v1) #8
  %113 = load i32, ptr %retval, align 4
  ret i32 %113
}

; Function Attrs: nounwind uwtable
define internal i32 @hasout(ptr noundef %cub, i32 noundef %n, i32 noundef %ne, i32 noundef %weight, ptr noundef %x0, ptr noundef %x1, i32 noundef %limit) #0 {
entry:
  %retval = alloca i32, align 4
  %cub.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %ne.addr = alloca i32, align 4
  %weight.addr = alloca i32, align 4
  %x0.addr = alloca ptr, align 8
  %x1.addr = alloca ptr, align 8
  %limit.addr = alloca i32, align 4
  %done = alloca [152 x [4 x i32]], align 16
  %cyc = alloca [152 x i32], align 16
  %vv = alloca [2 x i32], align 4
  %vi = alloca [2 x i32], align 4
  %nbad = alloca i32, align 4
  %ch = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cub, ptr %cub.addr, align 8, !tbaa !9
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store i32 %ne, ptr %ne.addr, align 4, !tbaa !5
  store i32 %weight, ptr %weight.addr, align 4, !tbaa !5
  store ptr %x0, ptr %x0.addr, align 8, !tbaa !9
  store ptr %x1, ptr %x1.addr, align 8, !tbaa !9
  store i32 %limit, ptr %limit.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2432, ptr %done) #8
  call void @llvm.lifetime.start.p0(i64 608, ptr %cyc) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %vv) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %vi) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbad) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ch) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ii) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %jj) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #8
  store i32 0, ptr %nbad, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [152 x [4 x i32]], ptr %done, i64 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [4 x i32], ptr %arrayidx, i64 0, i64 2
  store i32 0, ptr %arrayidx1, align 8, !tbaa !5
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [152 x [4 x i32]], ptr %done, i64 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [4 x i32], ptr %arrayidx3, i64 0, i64 1
  store i32 0, ptr %arrayidx4, align 4, !tbaa !5
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [152 x [4 x i32]], ptr %done, i64 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [4 x i32], ptr %arrayidx6, i64 0, i64 0
  store i32 0, ptr %arrayidx7, align 16, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !71

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %7 = load i32, ptr %n.addr, align 4, !tbaa !5
  %8 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %9 = load i32, ptr %weight.addr, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [2 x i32], ptr %vv, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [2 x i32], ptr %vi, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [152 x i32], ptr %cyc, i64 0, i64 0
  %call = call i32 @isham(ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %arraydecay, ptr noundef %arraydecay8, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %arraydecay9)
  store i32 %call, ptr %ch, align 4, !tbaa !5
  %10 = load i32, ptr %ch, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %10, 5
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.end
  %11 = load i32, ptr %ch, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %11, -1
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc62, %if.end13
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %13 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %12, %13
  br i1 %cmp15, label %for.body16, label %for.end64

for.body16:                                       ; preds = %for.cond14
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [152 x i32], ptr %cyc, i64 0, i64 %idxprom17
  %15 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  store i32 %15, ptr %x, align 4, !tbaa !5
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %17 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %17, 1
  %cmp19 = icmp eq i32 %16, %sub
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body16
  br label %cond.end

cond.false:                                       ; preds = %for.body16
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %18, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add, %cond.false ]
  %idxprom20 = sext i32 %cond to i64
  %arrayidx21 = getelementptr inbounds [152 x i32], ptr %cyc, i64 0, i64 %idxprom20
  %19 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  store i32 %19, ptr %y, align 4, !tbaa !5
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %20, 0
  br i1 %cmp22, label %cond.true23, label %cond.false25

cond.true23:                                      ; preds = %cond.end
  %21 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub24 = sub nsw i32 %21, 1
  br label %cond.end27

cond.false25:                                     ; preds = %cond.end
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %sub26 = sub nsw i32 %22, 1
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false25, %cond.true23
  %cond28 = phi i32 [ %sub24, %cond.true23 ], [ %sub26, %cond.false25 ]
  %idxprom29 = sext i32 %cond28 to i64
  %arrayidx30 = getelementptr inbounds [152 x i32], ptr %cyc, i64 0, i64 %idxprom29
  %23 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  store i32 %23, ptr %z, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc52, %cond.end27
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %24, 3
  br i1 %cmp32, label %for.body33, label %for.end54

for.body33:                                       ; preds = %for.cond31
  %25 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %26 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom34 = sext i32 %26 to i64
  %arrayidx35 = getelementptr inbounds [4 x i32], ptr %25, i64 %idxprom34
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds [4 x i32], ptr %arrayidx35, i64 0, i64 %idxprom36
  %28 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %cmp38 = icmp sge i32 %28, 0
  br i1 %cmp38, label %land.lhs.true, label %if.end51

land.lhs.true:                                    ; preds = %for.body33
  %29 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %30 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom39 = sext i32 %30 to i64
  %arrayidx40 = getelementptr inbounds [4 x i32], ptr %29, i64 %idxprom39
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom41 = sext i32 %31 to i64
  %arrayidx42 = getelementptr inbounds [4 x i32], ptr %arrayidx40, i64 0, i64 %idxprom41
  %32 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %33 = load i32, ptr %y, align 4, !tbaa !5
  %cmp43 = icmp ne i32 %32, %33
  br i1 %cmp43, label %land.lhs.true44, label %if.end51

land.lhs.true44:                                  ; preds = %land.lhs.true
  %34 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %35 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom45 = sext i32 %35 to i64
  %arrayidx46 = getelementptr inbounds [4 x i32], ptr %34, i64 %idxprom45
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom47 = sext i32 %36 to i64
  %arrayidx48 = getelementptr inbounds [4 x i32], ptr %arrayidx46, i64 0, i64 %idxprom47
  %37 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %38 = load i32, ptr %z, align 4, !tbaa !5
  %cmp49 = icmp ne i32 %37, %38
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %land.lhs.true44
  br label %for.end54

if.end51:                                         ; preds = %land.lhs.true44, %land.lhs.true, %for.body33
  br label %for.inc52

for.inc52:                                        ; preds = %if.end51
  %39 = load i32, ptr %j, align 4, !tbaa !5
  %inc53 = add nsw i32 %39, 1
  store i32 %inc53, ptr %j, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !72

for.end54:                                        ; preds = %if.then50, %for.cond31
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %40, 3
  br i1 %cmp55, label %if.then56, label %if.end61

if.then56:                                        ; preds = %for.end54
  %41 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom57 = sext i32 %41 to i64
  %arrayidx58 = getelementptr inbounds [152 x [4 x i32]], ptr %done, i64 0, i64 %idxprom57
  %42 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom59 = sext i32 %42 to i64
  %arrayidx60 = getelementptr inbounds [4 x i32], ptr %arrayidx58, i64 0, i64 %idxprom59
  store i32 1, ptr %arrayidx60, align 4, !tbaa !5
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %for.end54
  br label %for.inc62

for.inc62:                                        ; preds = %if.end61
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %inc63 = add nsw i32 %43, 1
  store i32 %inc63, ptr %i, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !73

for.end64:                                        ; preds = %for.cond14
  store i32 0, ptr %ii, align 4, !tbaa !5
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc166, %for.end64
  %44 = load i32, ptr %ii, align 4, !tbaa !5
  %45 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %44, %45
  br i1 %cmp66, label %for.body67, label %for.end168

for.body67:                                       ; preds = %for.cond65
  store i32 0, ptr %jj, align 4, !tbaa !5
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc163, %for.body67
  %46 = load i32, ptr %jj, align 4, !tbaa !5
  %cmp69 = icmp slt i32 %46, 3
  br i1 %cmp69, label %for.body70, label %for.end165

for.body70:                                       ; preds = %for.cond68
  %47 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %48 = load i32, ptr %ii, align 4, !tbaa !5
  %idxprom71 = sext i32 %48 to i64
  %arrayidx72 = getelementptr inbounds [4 x i32], ptr %47, i64 %idxprom71
  %49 = load i32, ptr %jj, align 4, !tbaa !5
  %idxprom73 = sext i32 %49 to i64
  %arrayidx74 = getelementptr inbounds [4 x i32], ptr %arrayidx72, i64 0, i64 %idxprom73
  %50 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  %51 = load i32, ptr %ii, align 4, !tbaa !5
  %cmp75 = icmp sgt i32 %50, %51
  br i1 %cmp75, label %land.lhs.true76, label %if.end162

land.lhs.true76:                                  ; preds = %for.body70
  %52 = load i32, ptr %ii, align 4, !tbaa !5
  %idxprom77 = sext i32 %52 to i64
  %arrayidx78 = getelementptr inbounds [152 x [4 x i32]], ptr %done, i64 0, i64 %idxprom77
  %53 = load i32, ptr %jj, align 4, !tbaa !5
  %idxprom79 = sext i32 %53 to i64
  %arrayidx80 = getelementptr inbounds [4 x i32], ptr %arrayidx78, i64 0, i64 %idxprom79
  %54 = load i32, ptr %arrayidx80, align 4, !tbaa !5
  %tobool = icmp ne i32 %54, 0
  br i1 %tobool, label %if.end162, label %if.then81

if.then81:                                        ; preds = %land.lhs.true76
  %55 = load i32, ptr %ii, align 4, !tbaa !5
  %arrayidx82 = getelementptr inbounds [2 x i32], ptr %vv, i64 0, i64 0
  store i32 %55, ptr %arrayidx82, align 4, !tbaa !5
  %56 = load i32, ptr %jj, align 4, !tbaa !5
  %add83 = add nsw i32 %56, 1
  %arrayidx84 = getelementptr inbounds [2 x i32], ptr %vi, i64 0, i64 0
  store i32 %add83, ptr %arrayidx84, align 4, !tbaa !5
  %57 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %58 = load i32, ptr %n.addr, align 4, !tbaa !5
  %59 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %60 = load i32, ptr %weight.addr, align 4, !tbaa !5
  %arraydecay85 = getelementptr inbounds [2 x i32], ptr %vv, i64 0, i64 0
  %arraydecay86 = getelementptr inbounds [2 x i32], ptr %vi, i64 0, i64 0
  %arraydecay87 = getelementptr inbounds [152 x i32], ptr %cyc, i64 0, i64 0
  %call88 = call i32 @isham(ptr noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef %60, ptr noundef %arraydecay85, ptr noundef %arraydecay86, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %arraydecay87)
  store i32 %call88, ptr %ch, align 4, !tbaa !5
  %61 = load i32, ptr %ch, align 4, !tbaa !5
  %cmp89 = icmp eq i32 %61, 5
  br i1 %cmp89, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.then81
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end91:                                         ; preds = %if.then81
  %62 = load i32, ptr %ch, align 4, !tbaa !5
  %cmp92 = icmp eq i32 %62, -1
  br i1 %cmp92, label %if.then93, label %if.else

if.then93:                                        ; preds = %if.end91
  %63 = load i32, ptr %ii, align 4, !tbaa !5
  %64 = load ptr, ptr %x0.addr, align 8, !tbaa !9
  %65 = load i32, ptr %nbad, align 4, !tbaa !5
  %idxprom94 = sext i32 %65 to i64
  %arrayidx95 = getelementptr inbounds i32, ptr %64, i64 %idxprom94
  store i32 %63, ptr %arrayidx95, align 4, !tbaa !5
  %66 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %67 = load i32, ptr %ii, align 4, !tbaa !5
  %idxprom96 = sext i32 %67 to i64
  %arrayidx97 = getelementptr inbounds [4 x i32], ptr %66, i64 %idxprom96
  %68 = load i32, ptr %jj, align 4, !tbaa !5
  %idxprom98 = sext i32 %68 to i64
  %arrayidx99 = getelementptr inbounds [4 x i32], ptr %arrayidx97, i64 0, i64 %idxprom98
  %69 = load i32, ptr %arrayidx99, align 4, !tbaa !5
  %70 = load ptr, ptr %x1.addr, align 8, !tbaa !9
  %71 = load i32, ptr %nbad, align 4, !tbaa !5
  %idxprom100 = sext i32 %71 to i64
  %arrayidx101 = getelementptr inbounds i32, ptr %70, i64 %idxprom100
  store i32 %69, ptr %arrayidx101, align 4, !tbaa !5
  %72 = load i32, ptr %nbad, align 4, !tbaa !5
  %inc102 = add nsw i32 %72, 1
  store i32 %inc102, ptr %nbad, align 4, !tbaa !5
  br label %if.end161

if.else:                                          ; preds = %if.end91
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc158, %if.else
  %73 = load i32, ptr %i, align 4, !tbaa !5
  %74 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp104 = icmp slt i32 %73, %74
  br i1 %cmp104, label %for.body105, label %for.end160

for.body105:                                      ; preds = %for.cond103
  %75 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom106 = sext i32 %75 to i64
  %arrayidx107 = getelementptr inbounds [152 x i32], ptr %cyc, i64 0, i64 %idxprom106
  %76 = load i32, ptr %arrayidx107, align 4, !tbaa !5
  store i32 %76, ptr %x, align 4, !tbaa !5
  %77 = load i32, ptr %i, align 4, !tbaa !5
  %78 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub108 = sub nsw i32 %78, 1
  %cmp109 = icmp eq i32 %77, %sub108
  br i1 %cmp109, label %cond.true110, label %cond.false111

cond.true110:                                     ; preds = %for.body105
  br label %cond.end113

cond.false111:                                    ; preds = %for.body105
  %79 = load i32, ptr %i, align 4, !tbaa !5
  %add112 = add nsw i32 %79, 1
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false111, %cond.true110
  %cond114 = phi i32 [ 0, %cond.true110 ], [ %add112, %cond.false111 ]
  %idxprom115 = sext i32 %cond114 to i64
  %arrayidx116 = getelementptr inbounds [152 x i32], ptr %cyc, i64 0, i64 %idxprom115
  %80 = load i32, ptr %arrayidx116, align 4, !tbaa !5
  store i32 %80, ptr %y, align 4, !tbaa !5
  %81 = load i32, ptr %i, align 4, !tbaa !5
  %cmp117 = icmp eq i32 %81, 0
  br i1 %cmp117, label %cond.true118, label %cond.false120

cond.true118:                                     ; preds = %cond.end113
  %82 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub119 = sub nsw i32 %82, 1
  br label %cond.end122

cond.false120:                                    ; preds = %cond.end113
  %83 = load i32, ptr %i, align 4, !tbaa !5
  %sub121 = sub nsw i32 %83, 1
  br label %cond.end122

cond.end122:                                      ; preds = %cond.false120, %cond.true118
  %cond123 = phi i32 [ %sub119, %cond.true118 ], [ %sub121, %cond.false120 ]
  %idxprom124 = sext i32 %cond123 to i64
  %arrayidx125 = getelementptr inbounds [152 x i32], ptr %cyc, i64 0, i64 %idxprom124
  %84 = load i32, ptr %arrayidx125, align 4, !tbaa !5
  store i32 %84, ptr %z, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond126

for.cond126:                                      ; preds = %for.inc148, %cond.end122
  %85 = load i32, ptr %j, align 4, !tbaa !5
  %cmp127 = icmp slt i32 %85, 3
  br i1 %cmp127, label %for.body128, label %for.end150

for.body128:                                      ; preds = %for.cond126
  %86 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %87 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom129 = sext i32 %87 to i64
  %arrayidx130 = getelementptr inbounds [4 x i32], ptr %86, i64 %idxprom129
  %88 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom131 = sext i32 %88 to i64
  %arrayidx132 = getelementptr inbounds [4 x i32], ptr %arrayidx130, i64 0, i64 %idxprom131
  %89 = load i32, ptr %arrayidx132, align 4, !tbaa !5
  %cmp133 = icmp sge i32 %89, 0
  br i1 %cmp133, label %land.lhs.true134, label %if.end147

land.lhs.true134:                                 ; preds = %for.body128
  %90 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %91 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom135 = sext i32 %91 to i64
  %arrayidx136 = getelementptr inbounds [4 x i32], ptr %90, i64 %idxprom135
  %92 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom137 = sext i32 %92 to i64
  %arrayidx138 = getelementptr inbounds [4 x i32], ptr %arrayidx136, i64 0, i64 %idxprom137
  %93 = load i32, ptr %arrayidx138, align 4, !tbaa !5
  %94 = load i32, ptr %y, align 4, !tbaa !5
  %cmp139 = icmp ne i32 %93, %94
  br i1 %cmp139, label %land.lhs.true140, label %if.end147

land.lhs.true140:                                 ; preds = %land.lhs.true134
  %95 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %96 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom141 = sext i32 %96 to i64
  %arrayidx142 = getelementptr inbounds [4 x i32], ptr %95, i64 %idxprom141
  %97 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom143 = sext i32 %97 to i64
  %arrayidx144 = getelementptr inbounds [4 x i32], ptr %arrayidx142, i64 0, i64 %idxprom143
  %98 = load i32, ptr %arrayidx144, align 4, !tbaa !5
  %99 = load i32, ptr %z, align 4, !tbaa !5
  %cmp145 = icmp ne i32 %98, %99
  br i1 %cmp145, label %if.then146, label %if.end147

if.then146:                                       ; preds = %land.lhs.true140
  br label %for.end150

if.end147:                                        ; preds = %land.lhs.true140, %land.lhs.true134, %for.body128
  br label %for.inc148

for.inc148:                                       ; preds = %if.end147
  %100 = load i32, ptr %j, align 4, !tbaa !5
  %inc149 = add nsw i32 %100, 1
  store i32 %inc149, ptr %j, align 4, !tbaa !5
  br label %for.cond126, !llvm.loop !74

for.end150:                                       ; preds = %if.then146, %for.cond126
  %101 = load i32, ptr %j, align 4, !tbaa !5
  %cmp151 = icmp slt i32 %101, 3
  br i1 %cmp151, label %if.then152, label %if.end157

if.then152:                                       ; preds = %for.end150
  %102 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom153 = sext i32 %102 to i64
  %arrayidx154 = getelementptr inbounds [152 x [4 x i32]], ptr %done, i64 0, i64 %idxprom153
  %103 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom155 = sext i32 %103 to i64
  %arrayidx156 = getelementptr inbounds [4 x i32], ptr %arrayidx154, i64 0, i64 %idxprom155
  store i32 1, ptr %arrayidx156, align 4, !tbaa !5
  br label %if.end157

if.end157:                                        ; preds = %if.then152, %for.end150
  br label %for.inc158

for.inc158:                                       ; preds = %if.end157
  %104 = load i32, ptr %i, align 4, !tbaa !5
  %inc159 = add nsw i32 %104, 1
  store i32 %inc159, ptr %i, align 4, !tbaa !5
  br label %for.cond103, !llvm.loop !75

for.end160:                                       ; preds = %for.cond103
  br label %if.end161

if.end161:                                        ; preds = %for.end160, %if.then93
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %land.lhs.true76, %for.body70
  br label %for.inc163

for.inc163:                                       ; preds = %if.end162
  %105 = load i32, ptr %jj, align 4, !tbaa !5
  %inc164 = add nsw i32 %105, 1
  store i32 %inc164, ptr %jj, align 4, !tbaa !5
  br label %for.cond68, !llvm.loop !76

for.end165:                                       ; preds = %for.cond68
  br label %for.inc166

for.inc166:                                       ; preds = %for.end165
  %106 = load i32, ptr %ii, align 4, !tbaa !5
  %inc167 = add nsw i32 %106, 1
  store i32 %inc167, ptr %ii, align 4, !tbaa !5
  br label %for.cond65, !llvm.loop !77

for.end168:                                       ; preds = %for.cond65
  %107 = load i32, ptr %nbad, align 4, !tbaa !5
  store i32 %107, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end168, %if.then90, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %jj) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ii) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ch) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbad) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %vi) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %vv) #8
  call void @llvm.lifetime.end.p0(i64 608, ptr %cyc) #8
  call void @llvm.lifetime.end.p0(i64 2432, ptr %done) #8
  %108 = load i32, ptr %retval, align 4
  ret i32 %108
}

; Function Attrs: nounwind uwtable
define internal i32 @hasin(ptr noundef %cub, i32 noundef %n, i32 noundef %ne, ptr noundef %x0, ptr noundef %x1, i32 noundef %limit) #0 {
entry:
  %retval = alloca i32, align 4
  %cub.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %ne.addr = alloca i32, align 4
  %x0.addr = alloca ptr, align 8
  %x1.addr = alloca ptr, align 8
  %limit.addr = alloca i32, align 4
  %v1 = alloca [229 x i32], align 16
  %v2 = alloca [229 x i32], align 16
  %initclass = alloca [229 x i32], align 16
  %outclass = alloca [229 x i32], align 16
  %done = alloca [228 x i32], align 16
  %i = alloca i32, align 4
  %ii = alloca i32, align 4
  %nbad = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cub, ptr %cub.addr, align 8, !tbaa !9
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store i32 %ne, ptr %ne.addr, align 4, !tbaa !5
  store ptr %x0, ptr %x0.addr, align 8, !tbaa !9
  store ptr %x1, ptr %x1.addr, align 8, !tbaa !9
  store i32 %limit, ptr %limit.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 916, ptr %v1) #8
  call void @llvm.lifetime.start.p0(i64 916, ptr %v2) #8
  call void @llvm.lifetime.start.p0(i64 916, ptr %initclass) #8
  call void @llvm.lifetime.start.p0(i64 916, ptr %outclass) #8
  call void @llvm.lifetime.start.p0(i64 912, ptr %done) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ii) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbad) #8
  %0 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %arraydecay = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 0
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %2 = load i32, ptr %ne.addr, align 4, !tbaa !5
  call void @cubinit(ptr noundef %0, ptr noundef @eno, ptr noundef %arraydecay, ptr noundef %arraydecay1, i32 noundef %1, i32 noundef %2)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %4 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [228 x i32], ptr %done, i64 0, i64 %idxprom2
  store i32 0, ptr %arrayidx3, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !78

for.end:                                          ; preds = %for.cond
  store i64 2147483647, ptr @maxnodes, align 8, !tbaa !11
  store i32 0, ptr %nbad, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc46, %for.end
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %for.body6, label %for.end48

for.body6:                                        ; preds = %for.cond4
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [228 x i32], ptr %done, i64 0, i64 %idxprom7
  %11 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.end45, label %if.then

if.then:                                          ; preds = %for.body6
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom9
  store i32 1, ptr %arrayidx10, align 4, !tbaa !5
  %13 = load i64, ptr @numtries, align 16, !tbaa !11
  %inc11 = add i64 %13, 1
  store i64 %inc11, ptr @numtries, align 16, !tbaa !11
  %14 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %arraydecay12 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 0
  %arraydecay15 = getelementptr inbounds [229 x i32], ptr %outclass, i64 0, i64 0
  %15 = load i32, ptr %n.addr, align 4, !tbaa !5
  %16 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %call = call i32 @cubham(ptr noundef %14, ptr noundef @eno, ptr noundef %arraydecay12, ptr noundef %arraydecay13, ptr noundef %arraydecay14, ptr noundef null, ptr noundef %arraydecay15, i32 noundef %15, i32 noundef %16)
  %cmp16 = icmp eq i32 %call, -1
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 %idxprom18
  %18 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %19 = load ptr, ptr %x0.addr, align 8, !tbaa !9
  %20 = load i32, ptr %nbad, align 4, !tbaa !5
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %19, i64 %idxprom20
  store i32 %18, ptr %arrayidx21, align 4, !tbaa !5
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 %idxprom22
  %22 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %23 = load ptr, ptr %x1.addr, align 8, !tbaa !9
  %24 = load i32, ptr %nbad, align 4, !tbaa !5
  %idxprom24 = sext i32 %24 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %23, i64 %idxprom24
  store i32 %22, ptr %arrayidx25, align 4, !tbaa !5
  %25 = load i32, ptr %nbad, align 4, !tbaa !5
  %inc26 = add nsw i32 %25, 1
  store i32 %inc26, ptr %nbad, align 4, !tbaa !5
  %26 = load i32, ptr %nbad, align 4, !tbaa !5
  %27 = load i32, ptr %limit.addr, align 4, !tbaa !5
  %cmp27 = icmp sge i32 %26, %27
  br i1 %cmp27, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.then17
  %28 = load i32, ptr %nbad, align 4, !tbaa !5
  store i32 %28, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then17
  br label %if.end42

if.else:                                          ; preds = %if.then
  %29 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %29, ptr %ii, align 4, !tbaa !5
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc39, %if.else
  %30 = load i32, ptr %ii, align 4, !tbaa !5
  %31 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %30, %31
  br i1 %cmp30, label %for.body31, label %for.end41

for.body31:                                       ; preds = %for.cond29
  %32 = load i32, ptr %ii, align 4, !tbaa !5
  %idxprom32 = sext i32 %32 to i64
  %arrayidx33 = getelementptr inbounds [229 x i32], ptr %outclass, i64 0, i64 %idxprom32
  %33 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %cmp34 = icmp eq i32 %33, 1
  br i1 %cmp34, label %if.then35, label %if.end38

if.then35:                                        ; preds = %for.body31
  %34 = load i32, ptr %ii, align 4, !tbaa !5
  %idxprom36 = sext i32 %34 to i64
  %arrayidx37 = getelementptr inbounds [228 x i32], ptr %done, i64 0, i64 %idxprom36
  store i32 1, ptr %arrayidx37, align 4, !tbaa !5
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %for.body31
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38
  %35 = load i32, ptr %ii, align 4, !tbaa !5
  %inc40 = add nsw i32 %35, 1
  store i32 %inc40, ptr %ii, align 4, !tbaa !5
  br label %for.cond29, !llvm.loop !79

for.end41:                                        ; preds = %for.cond29
  br label %if.end42

if.end42:                                         ; preds = %for.end41, %if.end
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %36 to i64
  %arrayidx44 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom43
  store i32 0, ptr %arrayidx44, align 4, !tbaa !5
  br label %if.end45

if.end45:                                         ; preds = %if.end42, %for.body6
  br label %for.inc46

for.inc46:                                        ; preds = %if.end45
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %inc47 = add nsw i32 %37, 1
  store i32 %inc47, ptr %i, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !80

for.end48:                                        ; preds = %for.cond4
  %38 = load i32, ptr %nbad, align 4, !tbaa !5
  store i32 %38, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end48, %if.then28
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbad) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ii) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 912, ptr %done) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %outclass) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %initclass) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %v2) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %v1) #8
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal void @dofragment(i64 noundef %id, ptr noundef %cub, i32 noundef %n, i32 noundef %ne, i32 noundef %weight) #0 {
entry:
  %id.addr = alloca i64, align 8
  %cub.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %ne.addr = alloca i32, align 4
  %weight.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %i4 = alloca i32, align 4
  %v1 = alloca i32, align 4
  %v2 = alloca i32, align 4
  %v3 = alloca i32, align 4
  %v4 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j3 = alloca i32, align 4
  %deg2 = alloca [152 x i32], align 16
  %ndeg2 = alloca i32, align 4
  %yy = alloca [3 x i32], align 4
  %yi = alloca [3 x i32], align 4
  %newne = alloca i32, align 4
  %cyc = alloca [152 x i32], align 16
  %status = alloca i32, align 4
  store i64 %id, ptr %id.addr, align 8, !tbaa !11
  store ptr %cub, ptr %cub.addr, align 8, !tbaa !9
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store i32 %ne, ptr %ne.addr, align 4, !tbaa !5
  store i32 %weight, ptr %weight.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %v1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %v2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %v3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %v4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j3) #8
  call void @llvm.lifetime.start.p0(i64 608, ptr %deg2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ndeg2) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr %yy) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr %yi) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %newne) #8
  call void @llvm.lifetime.start.p0(i64 608, ptr %cyc) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  store i32 0, ptr %ndeg2, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %2, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [4 x i32], ptr %arrayidx, i64 0, i64 0
  %4 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %4, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [4 x i32], ptr %5, i64 %idxprom3
  %arrayidx5 = getelementptr inbounds [4 x i32], ptr %arrayidx4, i64 0, i64 1
  %7 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %7, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  call void @gt_abort(ptr noundef @.str.66)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %8 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [4 x i32], ptr %8, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [4 x i32], ptr %arrayidx8, i64 0, i64 2
  %10 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %10, 0
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %12 = load i32, ptr %ndeg2, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %ndeg2, align 4, !tbaa !5
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [152 x i32], ptr %deg2, i64 0, i64 %idxprom12
  store i32 %11, ptr %arrayidx13, align 4, !tbaa !5
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %inc15 = add nsw i32 %13, 1
  store i32 %inc15, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  %14 = load i64, ptr %id.addr, align 8, !tbaa !11
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.67, i64 noundef %14)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc22, %for.end
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %16 = load i32, ptr %ndeg2, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %15, %16
  br i1 %cmp17, label %for.body18, label %for.end24

for.body18:                                       ; preds = %for.cond16
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [152 x i32], ptr %deg2, i64 0, i64 %idxprom19
  %18 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.44, i32 noundef %18)
  br label %for.inc22

for.inc22:                                        ; preds = %for.body18
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %inc23 = add nsw i32 %19, 1
  store i32 %inc23, ptr %i, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !82

for.end24:                                        ; preds = %for.cond16
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.32)
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.68)
  store i32 0, ptr %i1, align 4, !tbaa !5
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc82, %for.end24
  %20 = load i32, ptr %i1, align 4, !tbaa !5
  %21 = load i32, ptr %ndeg2, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %20, %21
  br i1 %cmp28, label %for.body29, label %for.end84

for.body29:                                       ; preds = %for.cond27
  %22 = load i32, ptr %i1, align 4, !tbaa !5
  %add = add nsw i32 %22, 1
  store i32 %add, ptr %i2, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc79, %for.body29
  %23 = load i32, ptr %i2, align 4, !tbaa !5
  %24 = load i32, ptr %ndeg2, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %23, %24
  br i1 %cmp31, label %for.body32, label %for.end81

for.body32:                                       ; preds = %for.cond30
  %25 = load i32, ptr %i1, align 4, !tbaa !5
  %idxprom33 = sext i32 %25 to i64
  %arrayidx34 = getelementptr inbounds [152 x i32], ptr %deg2, i64 0, i64 %idxprom33
  %26 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  store i32 %26, ptr %v1, align 4, !tbaa !5
  %27 = load i32, ptr %i2, align 4, !tbaa !5
  %idxprom35 = sext i32 %27 to i64
  %arrayidx36 = getelementptr inbounds [152 x i32], ptr %deg2, i64 0, i64 %idxprom35
  %28 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  store i32 %28, ptr %v2, align 4, !tbaa !5
  %29 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %30 = load i32, ptr %v1, align 4, !tbaa !5
  %31 = load i32, ptr %v2, align 4, !tbaa !5
  %call37 = call i32 @optadd(ptr noundef %29, i32 noundef %30, i32 noundef %31)
  store i32 %call37, ptr %j1, align 4, !tbaa !5
  %32 = load i32, ptr %v1, align 4, !tbaa !5
  %arrayidx38 = getelementptr inbounds [3 x i32], ptr %yy, i64 0, i64 0
  store i32 %32, ptr %arrayidx38, align 4, !tbaa !5
  %33 = load i32, ptr %j1, align 4, !tbaa !5
  %add39 = add nsw i32 %33, 1
  %arrayidx40 = getelementptr inbounds [3 x i32], ptr %yi, i64 0, i64 0
  store i32 %add39, ptr %arrayidx40, align 4, !tbaa !5
  %34 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %35 = load i32, ptr %j1, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %35, 2
  %conv = zext i1 %cmp41 to i32
  %add42 = add nsw i32 %34, %conv
  store i32 %add42, ptr %newne, align 4, !tbaa !5
  %36 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %37 = load i32, ptr %n.addr, align 4, !tbaa !5
  %38 = load i32, ptr %newne, align 4, !tbaa !5
  %39 = load i32, ptr %weight.addr, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [3 x i32], ptr %yy, i64 0, i64 0
  %arraydecay43 = getelementptr inbounds [3 x i32], ptr %yi, i64 0, i64 0
  %arraydecay44 = getelementptr inbounds [152 x i32], ptr %cyc, i64 0, i64 0
  %call45 = call i32 @isham(ptr noundef %36, i32 noundef %37, i32 noundef %38, i32 noundef %39, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %arraydecay, ptr noundef %arraydecay43, i32 noundef 1, ptr noundef %arraydecay44)
  store i32 %call45, ptr %status, align 4, !tbaa !5
  %40 = load i32, ptr %status, align 4, !tbaa !5
  %cmp46 = icmp eq i32 %40, 5
  br i1 %cmp46, label %if.then48, label %if.end50

if.then48:                                        ; preds = %for.body32
  %41 = load i32, ptr %v1, align 4, !tbaa !5
  %42 = load i32, ptr %v2, align 4, !tbaa !5
  %call49 = call i32 (ptr, ...) @printf(ptr noundef @.str.69, i32 noundef %41, i32 noundef %42)
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %for.body32
  %43 = load i32, ptr %status, align 4, !tbaa !5
  %cmp51 = icmp eq i32 %43, -1
  br i1 %cmp51, label %if.then53, label %if.else

if.then53:                                        ; preds = %if.end50
  %44 = load i32, ptr %v1, align 4, !tbaa !5
  %45 = load i32, ptr %v2, align 4, !tbaa !5
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str.70, i32 noundef %44, i32 noundef %45)
  br label %if.end72

if.else:                                          ; preds = %if.end50
  %46 = load i32, ptr %v1, align 4, !tbaa !5
  %47 = load i32, ptr %v2, align 4, !tbaa !5
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.71, i32 noundef %46, i32 noundef %47)
  %48 = load i32, ptr @verbose, align 4, !tbaa !5
  %cmp56 = icmp sgt i32 %48, 1
  br i1 %cmp56, label %if.then58, label %if.end71

if.then58:                                        ; preds = %if.else
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str.72)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc67, %if.then58
  %49 = load i32, ptr %i, align 4, !tbaa !5
  %50 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %49, %50
  br i1 %cmp61, label %for.body63, label %for.end69

for.body63:                                       ; preds = %for.cond60
  %51 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom64 = sext i32 %51 to i64
  %arrayidx65 = getelementptr inbounds [152 x i32], ptr %cyc, i64 0, i64 %idxprom64
  %52 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %call66 = call i32 (ptr, ...) @printf(ptr noundef @.str.44, i32 noundef %52)
  br label %for.inc67

for.inc67:                                        ; preds = %for.body63
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %inc68 = add nsw i32 %53, 1
  store i32 %inc68, ptr %i, align 4, !tbaa !5
  br label %for.cond60, !llvm.loop !83

for.end69:                                        ; preds = %for.cond60
  %call70 = call i32 (ptr, ...) @printf(ptr noundef @.str.73)
  br label %if.end71

if.end71:                                         ; preds = %for.end69, %if.else
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then53
  %54 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %55 = load i32, ptr %v2, align 4, !tbaa !5
  %idxprom73 = sext i32 %55 to i64
  %arrayidx74 = getelementptr inbounds [4 x i32], ptr %54, i64 %idxprom73
  %arrayidx75 = getelementptr inbounds [4 x i32], ptr %arrayidx74, i64 0, i64 2
  store i32 -1, ptr %arrayidx75, align 4, !tbaa !5
  %56 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %57 = load i32, ptr %v1, align 4, !tbaa !5
  %idxprom76 = sext i32 %57 to i64
  %arrayidx77 = getelementptr inbounds [4 x i32], ptr %56, i64 %idxprom76
  %arrayidx78 = getelementptr inbounds [4 x i32], ptr %arrayidx77, i64 0, i64 2
  store i32 -1, ptr %arrayidx78, align 4, !tbaa !5
  br label %for.inc79

for.inc79:                                        ; preds = %if.end72
  %58 = load i32, ptr %i2, align 4, !tbaa !5
  %inc80 = add nsw i32 %58, 1
  store i32 %inc80, ptr %i2, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !84

for.end81:                                        ; preds = %for.cond30
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %59 = load i32, ptr %i1, align 4, !tbaa !5
  %inc83 = add nsw i32 %59, 1
  store i32 %inc83, ptr %i1, align 4, !tbaa !5
  br label %for.cond27, !llvm.loop !85

for.end84:                                        ; preds = %for.cond27
  %call85 = call i32 (ptr, ...) @printf(ptr noundef @.str.32)
  %call86 = call i32 (ptr, ...) @printf(ptr noundef @.str.74)
  store i32 0, ptr %i1, align 4, !tbaa !5
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc188, %for.end84
  %60 = load i32, ptr %i1, align 4, !tbaa !5
  %61 = load i32, ptr %ndeg2, align 4, !tbaa !5
  %cmp88 = icmp slt i32 %60, %61
  br i1 %cmp88, label %for.body90, label %for.end190

for.body90:                                       ; preds = %for.cond87
  %62 = load i32, ptr %i1, align 4, !tbaa !5
  %add91 = add nsw i32 %62, 1
  store i32 %add91, ptr %i2, align 4, !tbaa !5
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc185, %for.body90
  %63 = load i32, ptr %i2, align 4, !tbaa !5
  %64 = load i32, ptr %ndeg2, align 4, !tbaa !5
  %cmp93 = icmp slt i32 %63, %64
  br i1 %cmp93, label %for.body95, label %for.end187

for.body95:                                       ; preds = %for.cond92
  %65 = load i32, ptr %i1, align 4, !tbaa !5
  %add96 = add nsw i32 %65, 1
  store i32 %add96, ptr %i3, align 4, !tbaa !5
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc182, %for.body95
  %66 = load i32, ptr %i3, align 4, !tbaa !5
  %67 = load i32, ptr %ndeg2, align 4, !tbaa !5
  %cmp98 = icmp slt i32 %66, %67
  br i1 %cmp98, label %for.body100, label %for.end184

for.body100:                                      ; preds = %for.cond97
  %68 = load i32, ptr %i3, align 4, !tbaa !5
  %add101 = add nsw i32 %68, 1
  store i32 %add101, ptr %i4, align 4, !tbaa !5
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc179, %for.body100
  %69 = load i32, ptr %i4, align 4, !tbaa !5
  %70 = load i32, ptr %ndeg2, align 4, !tbaa !5
  %cmp103 = icmp slt i32 %69, %70
  br i1 %cmp103, label %for.body105, label %for.end181

for.body105:                                      ; preds = %for.cond102
  %71 = load i32, ptr %i3, align 4, !tbaa !5
  %72 = load i32, ptr %i2, align 4, !tbaa !5
  %cmp106 = icmp eq i32 %71, %72
  br i1 %cmp106, label %if.then111, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %for.body105
  %73 = load i32, ptr %i4, align 4, !tbaa !5
  %74 = load i32, ptr %i2, align 4, !tbaa !5
  %cmp109 = icmp eq i32 %73, %74
  br i1 %cmp109, label %if.then111, label %if.end112

if.then111:                                       ; preds = %lor.lhs.false108, %for.body105
  br label %for.inc179

if.end112:                                        ; preds = %lor.lhs.false108
  %75 = load i32, ptr %i1, align 4, !tbaa !5
  %idxprom113 = sext i32 %75 to i64
  %arrayidx114 = getelementptr inbounds [152 x i32], ptr %deg2, i64 0, i64 %idxprom113
  %76 = load i32, ptr %arrayidx114, align 4, !tbaa !5
  store i32 %76, ptr %v1, align 4, !tbaa !5
  %77 = load i32, ptr %i2, align 4, !tbaa !5
  %idxprom115 = sext i32 %77 to i64
  %arrayidx116 = getelementptr inbounds [152 x i32], ptr %deg2, i64 0, i64 %idxprom115
  %78 = load i32, ptr %arrayidx116, align 4, !tbaa !5
  store i32 %78, ptr %v2, align 4, !tbaa !5
  %79 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %80 = load i32, ptr %v1, align 4, !tbaa !5
  %81 = load i32, ptr %v2, align 4, !tbaa !5
  %call117 = call i32 @optadd(ptr noundef %79, i32 noundef %80, i32 noundef %81)
  store i32 %call117, ptr %j1, align 4, !tbaa !5
  %82 = load i32, ptr %i3, align 4, !tbaa !5
  %idxprom118 = sext i32 %82 to i64
  %arrayidx119 = getelementptr inbounds [152 x i32], ptr %deg2, i64 0, i64 %idxprom118
  %83 = load i32, ptr %arrayidx119, align 4, !tbaa !5
  store i32 %83, ptr %v3, align 4, !tbaa !5
  %84 = load i32, ptr %i4, align 4, !tbaa !5
  %idxprom120 = sext i32 %84 to i64
  %arrayidx121 = getelementptr inbounds [152 x i32], ptr %deg2, i64 0, i64 %idxprom120
  %85 = load i32, ptr %arrayidx121, align 4, !tbaa !5
  store i32 %85, ptr %v4, align 4, !tbaa !5
  %86 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %87 = load i32, ptr %v3, align 4, !tbaa !5
  %88 = load i32, ptr %v4, align 4, !tbaa !5
  %call122 = call i32 @optadd(ptr noundef %86, i32 noundef %87, i32 noundef %88)
  store i32 %call122, ptr %j3, align 4, !tbaa !5
  %89 = load i32, ptr %v1, align 4, !tbaa !5
  %arrayidx123 = getelementptr inbounds [3 x i32], ptr %yy, i64 0, i64 0
  store i32 %89, ptr %arrayidx123, align 4, !tbaa !5
  %90 = load i32, ptr %j1, align 4, !tbaa !5
  %add124 = add nsw i32 %90, 1
  %arrayidx125 = getelementptr inbounds [3 x i32], ptr %yi, i64 0, i64 0
  store i32 %add124, ptr %arrayidx125, align 4, !tbaa !5
  %91 = load i32, ptr %v3, align 4, !tbaa !5
  %arrayidx126 = getelementptr inbounds [3 x i32], ptr %yy, i64 0, i64 1
  store i32 %91, ptr %arrayidx126, align 4, !tbaa !5
  %92 = load i32, ptr %j3, align 4, !tbaa !5
  %add127 = add nsw i32 %92, 1
  %arrayidx128 = getelementptr inbounds [3 x i32], ptr %yi, i64 0, i64 1
  store i32 %add127, ptr %arrayidx128, align 4, !tbaa !5
  %93 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %94 = load i32, ptr %j1, align 4, !tbaa !5
  %cmp129 = icmp eq i32 %94, 2
  %conv130 = zext i1 %cmp129 to i32
  %add131 = add nsw i32 %93, %conv130
  %95 = load i32, ptr %j3, align 4, !tbaa !5
  %cmp132 = icmp eq i32 %95, 2
  %conv133 = zext i1 %cmp132 to i32
  %add134 = add nsw i32 %add131, %conv133
  store i32 %add134, ptr %newne, align 4, !tbaa !5
  %96 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %97 = load i32, ptr %n.addr, align 4, !tbaa !5
  %98 = load i32, ptr %newne, align 4, !tbaa !5
  %99 = load i32, ptr %weight.addr, align 4, !tbaa !5
  %arraydecay135 = getelementptr inbounds [3 x i32], ptr %yy, i64 0, i64 0
  %arraydecay136 = getelementptr inbounds [3 x i32], ptr %yi, i64 0, i64 0
  %arraydecay137 = getelementptr inbounds [152 x i32], ptr %cyc, i64 0, i64 0
  %call138 = call i32 @isham(ptr noundef %96, i32 noundef %97, i32 noundef %98, i32 noundef %99, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %arraydecay135, ptr noundef %arraydecay136, i32 noundef 2, ptr noundef %arraydecay137)
  store i32 %call138, ptr %status, align 4, !tbaa !5
  %100 = load i32, ptr %status, align 4, !tbaa !5
  %cmp139 = icmp eq i32 %100, 5
  br i1 %cmp139, label %if.then141, label %if.end143

if.then141:                                       ; preds = %if.end112
  %101 = load i32, ptr %v1, align 4, !tbaa !5
  %102 = load i32, ptr %v2, align 4, !tbaa !5
  %103 = load i32, ptr %v3, align 4, !tbaa !5
  %104 = load i32, ptr %v4, align 4, !tbaa !5
  %call142 = call i32 (ptr, ...) @printf(ptr noundef @.str.75, i32 noundef %101, i32 noundef %102, i32 noundef %103, i32 noundef %104)
  br label %if.end143

if.end143:                                        ; preds = %if.then141, %if.end112
  %105 = load i32, ptr %status, align 4, !tbaa !5
  %cmp144 = icmp eq i32 %105, -1
  br i1 %cmp144, label %if.then146, label %if.else148

if.then146:                                       ; preds = %if.end143
  %106 = load i32, ptr %v1, align 4, !tbaa !5
  %107 = load i32, ptr %v2, align 4, !tbaa !5
  %108 = load i32, ptr %v3, align 4, !tbaa !5
  %109 = load i32, ptr %v4, align 4, !tbaa !5
  %call147 = call i32 (ptr, ...) @printf(ptr noundef @.str.76, i32 noundef %106, i32 noundef %107, i32 noundef %108, i32 noundef %109)
  br label %if.end166

if.else148:                                       ; preds = %if.end143
  %110 = load i32, ptr %v1, align 4, !tbaa !5
  %111 = load i32, ptr %v2, align 4, !tbaa !5
  %112 = load i32, ptr %v3, align 4, !tbaa !5
  %113 = load i32, ptr %v4, align 4, !tbaa !5
  %call149 = call i32 (ptr, ...) @printf(ptr noundef @.str.77, i32 noundef %110, i32 noundef %111, i32 noundef %112, i32 noundef %113)
  %114 = load i32, ptr @verbose, align 4, !tbaa !5
  %cmp150 = icmp sgt i32 %114, 1
  br i1 %cmp150, label %if.then152, label %if.end165

if.then152:                                       ; preds = %if.else148
  %call153 = call i32 (ptr, ...) @printf(ptr noundef @.str.72)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond154

for.cond154:                                      ; preds = %for.inc161, %if.then152
  %115 = load i32, ptr %i, align 4, !tbaa !5
  %116 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp155 = icmp slt i32 %115, %116
  br i1 %cmp155, label %for.body157, label %for.end163

for.body157:                                      ; preds = %for.cond154
  %117 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom158 = sext i32 %117 to i64
  %arrayidx159 = getelementptr inbounds [152 x i32], ptr %cyc, i64 0, i64 %idxprom158
  %118 = load i32, ptr %arrayidx159, align 4, !tbaa !5
  %call160 = call i32 (ptr, ...) @printf(ptr noundef @.str.44, i32 noundef %118)
  br label %for.inc161

for.inc161:                                       ; preds = %for.body157
  %119 = load i32, ptr %i, align 4, !tbaa !5
  %inc162 = add nsw i32 %119, 1
  store i32 %inc162, ptr %i, align 4, !tbaa !5
  br label %for.cond154, !llvm.loop !86

for.end163:                                       ; preds = %for.cond154
  %call164 = call i32 (ptr, ...) @printf(ptr noundef @.str.73)
  br label %if.end165

if.end165:                                        ; preds = %for.end163, %if.else148
  br label %if.end166

if.end166:                                        ; preds = %if.end165, %if.then146
  %120 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %121 = load i32, ptr %v2, align 4, !tbaa !5
  %idxprom167 = sext i32 %121 to i64
  %arrayidx168 = getelementptr inbounds [4 x i32], ptr %120, i64 %idxprom167
  %arrayidx169 = getelementptr inbounds [4 x i32], ptr %arrayidx168, i64 0, i64 2
  store i32 -1, ptr %arrayidx169, align 4, !tbaa !5
  %122 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %123 = load i32, ptr %v1, align 4, !tbaa !5
  %idxprom170 = sext i32 %123 to i64
  %arrayidx171 = getelementptr inbounds [4 x i32], ptr %122, i64 %idxprom170
  %arrayidx172 = getelementptr inbounds [4 x i32], ptr %arrayidx171, i64 0, i64 2
  store i32 -1, ptr %arrayidx172, align 4, !tbaa !5
  %124 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %125 = load i32, ptr %v4, align 4, !tbaa !5
  %idxprom173 = sext i32 %125 to i64
  %arrayidx174 = getelementptr inbounds [4 x i32], ptr %124, i64 %idxprom173
  %arrayidx175 = getelementptr inbounds [4 x i32], ptr %arrayidx174, i64 0, i64 2
  store i32 -1, ptr %arrayidx175, align 4, !tbaa !5
  %126 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %127 = load i32, ptr %v3, align 4, !tbaa !5
  %idxprom176 = sext i32 %127 to i64
  %arrayidx177 = getelementptr inbounds [4 x i32], ptr %126, i64 %idxprom176
  %arrayidx178 = getelementptr inbounds [4 x i32], ptr %arrayidx177, i64 0, i64 2
  store i32 -1, ptr %arrayidx178, align 4, !tbaa !5
  br label %for.inc179

for.inc179:                                       ; preds = %if.end166, %if.then111
  %128 = load i32, ptr %i4, align 4, !tbaa !5
  %inc180 = add nsw i32 %128, 1
  store i32 %inc180, ptr %i4, align 4, !tbaa !5
  br label %for.cond102, !llvm.loop !87

for.end181:                                       ; preds = %for.cond102
  br label %for.inc182

for.inc182:                                       ; preds = %for.end181
  %129 = load i32, ptr %i3, align 4, !tbaa !5
  %inc183 = add nsw i32 %129, 1
  store i32 %inc183, ptr %i3, align 4, !tbaa !5
  br label %for.cond97, !llvm.loop !88

for.end184:                                       ; preds = %for.cond97
  br label %for.inc185

for.inc185:                                       ; preds = %for.end184
  %130 = load i32, ptr %i2, align 4, !tbaa !5
  %inc186 = add nsw i32 %130, 1
  store i32 %inc186, ptr %i2, align 4, !tbaa !5
  br label %for.cond92, !llvm.loop !89

for.end187:                                       ; preds = %for.cond92
  br label %for.inc188

for.inc188:                                       ; preds = %for.end187
  %131 = load i32, ptr %i1, align 4, !tbaa !5
  %inc189 = add nsw i32 %131, 1
  store i32 %inc189, ptr %i1, align 4, !tbaa !5
  br label %for.cond87, !llvm.loop !90

for.end190:                                       ; preds = %for.cond87
  %call191 = call i32 (ptr, ...) @printf(ptr noundef @.str.32)
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  call void @llvm.lifetime.end.p0(i64 608, ptr %cyc) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %newne) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr %yi) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr %yy) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ndeg2) #8
  call void @llvm.lifetime.end.p0(i64 608, ptr %deg2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %v4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %v3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %v2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %v1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @isham(ptr noundef %cub, i32 noundef %n, i32 noundef %ne, i32 noundef %weight, ptr noundef %vv, ptr noundef %vi, i32 noundef %nvv, ptr noundef %yy, ptr noundef %yi, i32 noundef %nyy, ptr noundef %cyc) #0 {
entry:
  %cub.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %ne.addr = alloca i32, align 4
  %weight.addr = alloca i32, align 4
  %vv.addr = alloca ptr, align 8
  %vi.addr = alloca ptr, align 8
  %nvv.addr = alloca i32, align 4
  %yy.addr = alloca ptr, align 8
  %yi.addr = alloca ptr, align 8
  %nyy.addr = alloca i32, align 4
  %cyc.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nmax = alloca i32, align 4
  %ch = alloca i32, align 4
  %cubcopy = alloca [152 x [4 x i32]], align 16
  %v1 = alloca [229 x i32], align 16
  %v2 = alloca [229 x i32], align 16
  %initclass = alloca [229 x i32], align 16
  %outclass = alloca [229 x i32], align 16
  %perm = alloca [152 x i32], align 16
  %pinv = alloca [152 x i32], align 16
  %tmp = alloca double, align 8
  store ptr %cub, ptr %cub.addr, align 8, !tbaa !9
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store i32 %ne, ptr %ne.addr, align 4, !tbaa !5
  store i32 %weight, ptr %weight.addr, align 4, !tbaa !5
  store ptr %vv, ptr %vv.addr, align 8, !tbaa !9
  store ptr %vi, ptr %vi.addr, align 8, !tbaa !9
  store i32 %nvv, ptr %nvv.addr, align 4, !tbaa !5
  store ptr %yy, ptr %yy.addr, align 8, !tbaa !9
  store ptr %yi, ptr %yi.addr, align 8, !tbaa !9
  store i32 %nyy, ptr %nyy.addr, align 4, !tbaa !5
  store ptr %cyc, ptr %cyc.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmax) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ch) #8
  call void @llvm.lifetime.start.p0(i64 2432, ptr %cubcopy) #8
  call void @llvm.lifetime.start.p0(i64 916, ptr %v1) #8
  call void @llvm.lifetime.start.p0(i64 916, ptr %v2) #8
  call void @llvm.lifetime.start.p0(i64 916, ptr %initclass) #8
  call void @llvm.lifetime.start.p0(i64 916, ptr %outclass) #8
  call void @llvm.lifetime.start.p0(i64 608, ptr %perm) #8
  call void @llvm.lifetime.start.p0(i64 608, ptr %pinv) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #8
  store i32 5, ptr %ch, align 4, !tbaa !5
  store i64 -1, ptr @maxnodes, align 8, !tbaa !11
  store i32 0, ptr %nmax, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc182, %entry
  %0 = load i32, ptr %ch, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i64, ptr @maxnodes, align 8, !tbaa !11
  %2 = load i64, ptr @timeout, align 8, !tbaa !11
  %cmp1 = icmp ne i64 %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %for.body, label %for.end184

for.body:                                         ; preds = %land.end
  %4 = load i32, ptr %nmax, align 4, !tbaa !5
  %conv = sext i32 %4 to i64
  %5 = load i64, ptr @repeats, align 8, !tbaa !11
  %div = sdiv i64 %conv, %5
  %cmp2 = icmp ult i64 %div, 19
  br i1 %cmp2, label %if.then, label %if.else21

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %nmax, align 4, !tbaa !5
  %conv4 = sext i32 %6 to i64
  %7 = load i64, ptr @repeats, align 8, !tbaa !11
  %div5 = sdiv i64 %conv4, %7
  %arrayidx = getelementptr inbounds [19 x i64], ptr @standard, i64 0, i64 %div5
  %8 = load i64, ptr %arrayidx, align 8, !tbaa !11
  %conv6 = sitofp i64 %8 to double
  %9 = load i32, ptr %weight.addr, align 4, !tbaa !5
  %conv7 = sitofp i32 %9 to double
  %mul = fmul double %conv6, %conv7
  %10 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv8 = sitofp i32 %10 to double
  %mul9 = fmul double %mul, %conv8
  %div10 = fdiv double %mul9, 1.000000e+04
  store double %div10, ptr %tmp, align 8, !tbaa !20
  %11 = load double, ptr %tmp, align 8, !tbaa !20
  %cmp11 = fcmp oge double %11, 0x41DFFFFFFFC00000
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then
  store i64 2147483647, ptr @maxnodes, align 8, !tbaa !11
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load double, ptr %tmp, align 8, !tbaa !20
  %conv14 = fptosi double %12 to i64
  store i64 %conv14, ptr @maxnodes, align 8, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then13
  %13 = load i64, ptr @timeout, align 8, !tbaa !11
  %cmp15 = icmp sgt i64 %13, 0
  br i1 %cmp15, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.end
  %14 = load i64, ptr @timeout, align 8, !tbaa !11
  %15 = load i64, ptr @maxnodes, align 8, !tbaa !11
  %cmp17 = icmp slt i64 %14, %15
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %land.lhs.true
  %16 = load i64, ptr @timeout, align 8, !tbaa !11
  store i64 %16, ptr @maxnodes, align 8, !tbaa !11
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %land.lhs.true, %if.end
  br label %if.end27

if.else21:                                        ; preds = %for.body
  %17 = load i64, ptr @timeout, align 8, !tbaa !11
  %cmp22 = icmp sgt i64 %17, 0
  br i1 %cmp22, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else21
  %18 = load i64, ptr @timeout, align 8, !tbaa !11
  store i64 %18, ptr @maxnodes, align 8, !tbaa !11
  br label %if.end26

if.else25:                                        ; preds = %if.else21
  store i64 2147483647, ptr @maxnodes, align 8, !tbaa !11
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.then24
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end20
  %19 = load i32, ptr %nmax, align 4, !tbaa !5
  %cmp28 = icmp ne i32 %19, 0
  br i1 %cmp28, label %if.then30, label %if.else44

if.then30:                                        ; preds = %if.end27
  %20 = load i32, ptr %n.addr, align 4, !tbaa !5
  store i32 %20, ptr %i, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.body34, %if.then30
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %21, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  %cmp32 = icmp sgt i32 %dec, 0
  br i1 %cmp32, label %for.body34, label %for.end

for.body34:                                       ; preds = %for.cond31
  %call = call i64 @ran_nextran()
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %22, 1
  %conv35 = sext i32 %add to i64
  %rem = srem i64 %call, %conv35
  %conv36 = trunc i64 %rem to i32
  store i32 %conv36, ptr %k, align 4, !tbaa !5
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %23 to i64
  %arrayidx37 = getelementptr inbounds [152 x i32], ptr %perm, i64 0, i64 %idxprom
  %24 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  store i32 %24, ptr %j, align 4, !tbaa !5
  %25 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom38 = sext i32 %25 to i64
  %arrayidx39 = getelementptr inbounds [152 x i32], ptr %perm, i64 0, i64 %idxprom38
  %26 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %27 to i64
  %arrayidx41 = getelementptr inbounds [152 x i32], ptr %perm, i64 0, i64 %idxprom40
  store i32 %26, ptr %arrayidx41, align 4, !tbaa !5
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %29 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom42 = sext i32 %29 to i64
  %arrayidx43 = getelementptr inbounds [152 x i32], ptr %perm, i64 0, i64 %idxprom42
  store i32 %28, ptr %arrayidx43, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !91

for.end:                                          ; preds = %for.cond31
  br label %if.end52

if.else44:                                        ; preds = %if.end27
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc, %if.else44
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %31 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %30, %31
  br i1 %cmp46, label %for.body48, label %for.end51

for.body48:                                       ; preds = %for.cond45
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom49 = sext i32 %33 to i64
  %arrayidx50 = getelementptr inbounds [152 x i32], ptr %perm, i64 0, i64 %idxprom49
  store i32 %32, ptr %arrayidx50, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body48
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !92

for.end51:                                        ; preds = %for.cond45
  br label %if.end52

if.end52:                                         ; preds = %for.end51, %for.end
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc106, %if.end52
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %36 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %35, %36
  br i1 %cmp54, label %for.body56, label %for.end108

for.body56:                                       ; preds = %for.cond53
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom57 = sext i32 %37 to i64
  %arrayidx58 = getelementptr inbounds [152 x i32], ptr %perm, i64 0, i64 %idxprom57
  %38 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  store i32 %38, ptr %j, align 4, !tbaa !5
  %39 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom59 = sext i32 %40 to i64
  %arrayidx60 = getelementptr inbounds [4 x i32], ptr %39, i64 %idxprom59
  %arrayidx61 = getelementptr inbounds [4 x i32], ptr %arrayidx60, i64 0, i64 0
  %41 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %cmp62 = icmp slt i32 %41, 0
  br i1 %cmp62, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body56
  br label %cond.end

cond.false:                                       ; preds = %for.body56
  %42 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom64 = sext i32 %43 to i64
  %arrayidx65 = getelementptr inbounds [4 x i32], ptr %42, i64 %idxprom64
  %arrayidx66 = getelementptr inbounds [4 x i32], ptr %arrayidx65, i64 0, i64 0
  %44 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %idxprom67 = sext i32 %44 to i64
  %arrayidx68 = getelementptr inbounds [152 x i32], ptr %perm, i64 0, i64 %idxprom67
  %45 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %45, %cond.false ]
  %46 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom69 = sext i32 %46 to i64
  %arrayidx70 = getelementptr inbounds [152 x [4 x i32]], ptr %cubcopy, i64 0, i64 %idxprom69
  %arrayidx71 = getelementptr inbounds [4 x i32], ptr %arrayidx70, i64 0, i64 0
  store i32 %cond, ptr %arrayidx71, align 16, !tbaa !5
  %47 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %48 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom72 = sext i32 %48 to i64
  %arrayidx73 = getelementptr inbounds [4 x i32], ptr %47, i64 %idxprom72
  %arrayidx74 = getelementptr inbounds [4 x i32], ptr %arrayidx73, i64 0, i64 1
  %49 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  %cmp75 = icmp slt i32 %49, 0
  br i1 %cmp75, label %cond.true77, label %cond.false78

cond.true77:                                      ; preds = %cond.end
  br label %cond.end84

cond.false78:                                     ; preds = %cond.end
  %50 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %51 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom79 = sext i32 %51 to i64
  %arrayidx80 = getelementptr inbounds [4 x i32], ptr %50, i64 %idxprom79
  %arrayidx81 = getelementptr inbounds [4 x i32], ptr %arrayidx80, i64 0, i64 1
  %52 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %idxprom82 = sext i32 %52 to i64
  %arrayidx83 = getelementptr inbounds [152 x i32], ptr %perm, i64 0, i64 %idxprom82
  %53 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false78, %cond.true77
  %cond85 = phi i32 [ -1, %cond.true77 ], [ %53, %cond.false78 ]
  %54 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom86 = sext i32 %54 to i64
  %arrayidx87 = getelementptr inbounds [152 x [4 x i32]], ptr %cubcopy, i64 0, i64 %idxprom86
  %arrayidx88 = getelementptr inbounds [4 x i32], ptr %arrayidx87, i64 0, i64 1
  store i32 %cond85, ptr %arrayidx88, align 4, !tbaa !5
  %55 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %56 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom89 = sext i32 %56 to i64
  %arrayidx90 = getelementptr inbounds [4 x i32], ptr %55, i64 %idxprom89
  %arrayidx91 = getelementptr inbounds [4 x i32], ptr %arrayidx90, i64 0, i64 2
  %57 = load i32, ptr %arrayidx91, align 4, !tbaa !5
  %cmp92 = icmp slt i32 %57, 0
  br i1 %cmp92, label %cond.true94, label %cond.false95

cond.true94:                                      ; preds = %cond.end84
  br label %cond.end101

cond.false95:                                     ; preds = %cond.end84
  %58 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom96 = sext i32 %59 to i64
  %arrayidx97 = getelementptr inbounds [4 x i32], ptr %58, i64 %idxprom96
  %arrayidx98 = getelementptr inbounds [4 x i32], ptr %arrayidx97, i64 0, i64 2
  %60 = load i32, ptr %arrayidx98, align 4, !tbaa !5
  %idxprom99 = sext i32 %60 to i64
  %arrayidx100 = getelementptr inbounds [152 x i32], ptr %perm, i64 0, i64 %idxprom99
  %61 = load i32, ptr %arrayidx100, align 4, !tbaa !5
  br label %cond.end101

cond.end101:                                      ; preds = %cond.false95, %cond.true94
  %cond102 = phi i32 [ -1, %cond.true94 ], [ %61, %cond.false95 ]
  %62 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom103 = sext i32 %62 to i64
  %arrayidx104 = getelementptr inbounds [152 x [4 x i32]], ptr %cubcopy, i64 0, i64 %idxprom103
  %arrayidx105 = getelementptr inbounds [4 x i32], ptr %arrayidx104, i64 0, i64 2
  store i32 %cond102, ptr %arrayidx105, align 8, !tbaa !5
  br label %for.inc106

for.inc106:                                       ; preds = %cond.end101
  %63 = load i32, ptr %i, align 4, !tbaa !5
  %inc107 = add nsw i32 %63, 1
  store i32 %inc107, ptr %i, align 4, !tbaa !5
  br label %for.cond53, !llvm.loop !93

for.end108:                                       ; preds = %for.cond53
  %arraydecay = getelementptr inbounds [152 x [4 x i32]], ptr %cubcopy, i64 0, i64 0
  %arraydecay109 = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 0
  %arraydecay110 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 0
  %64 = load i32, ptr %n.addr, align 4, !tbaa !5
  %65 = load i32, ptr %ne.addr, align 4, !tbaa !5
  call void @cubinit(ptr noundef %arraydecay, ptr noundef @eno, ptr noundef %arraydecay109, ptr noundef %arraydecay110, i32 noundef %64, i32 noundef %65)
  store i64 0, ptr @nodecount, align 8, !tbaa !11
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond111

for.cond111:                                      ; preds = %for.inc117, %for.end108
  %66 = load i32, ptr %i, align 4, !tbaa !5
  %67 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp112 = icmp slt i32 %66, %67
  br i1 %cmp112, label %for.body114, label %for.end119

for.body114:                                      ; preds = %for.cond111
  %68 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom115 = sext i32 %68 to i64
  %arrayidx116 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom115
  store i32 0, ptr %arrayidx116, align 4, !tbaa !5
  br label %for.inc117

for.inc117:                                       ; preds = %for.body114
  %69 = load i32, ptr %i, align 4, !tbaa !5
  %inc118 = add nsw i32 %69, 1
  store i32 %inc118, ptr %i, align 4, !tbaa !5
  br label %for.cond111, !llvm.loop !94

for.end119:                                       ; preds = %for.cond111
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond120

for.cond120:                                      ; preds = %for.inc142, %for.end119
  %70 = load i32, ptr %i, align 4, !tbaa !5
  %71 = load i32, ptr %nvv.addr, align 4, !tbaa !5
  %cmp121 = icmp slt i32 %70, %71
  br i1 %cmp121, label %for.body123, label %for.end144

for.body123:                                      ; preds = %for.cond120
  %72 = load ptr, ptr %vv.addr, align 8, !tbaa !9
  %73 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom124 = sext i32 %73 to i64
  %arrayidx125 = getelementptr inbounds i32, ptr %72, i64 %idxprom124
  %74 = load i32, ptr %arrayidx125, align 4, !tbaa !5
  %75 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp126 = icmp slt i32 %74, %75
  br i1 %cmp126, label %if.then128, label %if.end141

if.then128:                                       ; preds = %for.body123
  %76 = load ptr, ptr %vv.addr, align 8, !tbaa !9
  %77 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom129 = sext i32 %77 to i64
  %arrayidx130 = getelementptr inbounds i32, ptr %76, i64 %idxprom129
  %78 = load i32, ptr %arrayidx130, align 4, !tbaa !5
  %idxprom131 = sext i32 %78 to i64
  %arrayidx132 = getelementptr inbounds [152 x i32], ptr %perm, i64 0, i64 %idxprom131
  %79 = load i32, ptr %arrayidx132, align 4, !tbaa !5
  %idxprom133 = sext i32 %79 to i64
  %arrayidx134 = getelementptr inbounds [152 x [4 x i32]], ptr @eno, i64 0, i64 %idxprom133
  %80 = load ptr, ptr %vi.addr, align 8, !tbaa !9
  %81 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom135 = sext i32 %81 to i64
  %arrayidx136 = getelementptr inbounds i32, ptr %80, i64 %idxprom135
  %82 = load i32, ptr %arrayidx136, align 4, !tbaa !5
  %sub = sub nsw i32 %82, 1
  %idxprom137 = sext i32 %sub to i64
  %arrayidx138 = getelementptr inbounds [4 x i32], ptr %arrayidx134, i64 0, i64 %idxprom137
  %83 = load i32, ptr %arrayidx138, align 4, !tbaa !5
  %idxprom139 = sext i32 %83 to i64
  %arrayidx140 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom139
  store i32 -1, ptr %arrayidx140, align 4, !tbaa !5
  br label %if.end141

if.end141:                                        ; preds = %if.then128, %for.body123
  br label %for.inc142

for.inc142:                                       ; preds = %if.end141
  %84 = load i32, ptr %i, align 4, !tbaa !5
  %inc143 = add nsw i32 %84, 1
  store i32 %inc143, ptr %i, align 4, !tbaa !5
  br label %for.cond120, !llvm.loop !95

for.end144:                                       ; preds = %for.cond120
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond145

for.cond145:                                      ; preds = %for.inc168, %for.end144
  %85 = load i32, ptr %i, align 4, !tbaa !5
  %86 = load i32, ptr %nyy.addr, align 4, !tbaa !5
  %cmp146 = icmp slt i32 %85, %86
  br i1 %cmp146, label %for.body148, label %for.end170

for.body148:                                      ; preds = %for.cond145
  %87 = load ptr, ptr %yy.addr, align 8, !tbaa !9
  %88 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom149 = sext i32 %88 to i64
  %arrayidx150 = getelementptr inbounds i32, ptr %87, i64 %idxprom149
  %89 = load i32, ptr %arrayidx150, align 4, !tbaa !5
  %90 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp151 = icmp slt i32 %89, %90
  br i1 %cmp151, label %if.then153, label %if.end167

if.then153:                                       ; preds = %for.body148
  %91 = load ptr, ptr %yy.addr, align 8, !tbaa !9
  %92 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom154 = sext i32 %92 to i64
  %arrayidx155 = getelementptr inbounds i32, ptr %91, i64 %idxprom154
  %93 = load i32, ptr %arrayidx155, align 4, !tbaa !5
  %idxprom156 = sext i32 %93 to i64
  %arrayidx157 = getelementptr inbounds [152 x i32], ptr %perm, i64 0, i64 %idxprom156
  %94 = load i32, ptr %arrayidx157, align 4, !tbaa !5
  %idxprom158 = sext i32 %94 to i64
  %arrayidx159 = getelementptr inbounds [152 x [4 x i32]], ptr @eno, i64 0, i64 %idxprom158
  %95 = load ptr, ptr %yi.addr, align 8, !tbaa !9
  %96 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom160 = sext i32 %96 to i64
  %arrayidx161 = getelementptr inbounds i32, ptr %95, i64 %idxprom160
  %97 = load i32, ptr %arrayidx161, align 4, !tbaa !5
  %sub162 = sub nsw i32 %97, 1
  %idxprom163 = sext i32 %sub162 to i64
  %arrayidx164 = getelementptr inbounds [4 x i32], ptr %arrayidx159, i64 0, i64 %idxprom163
  %98 = load i32, ptr %arrayidx164, align 4, !tbaa !5
  %idxprom165 = sext i32 %98 to i64
  %arrayidx166 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom165
  store i32 1, ptr %arrayidx166, align 4, !tbaa !5
  br label %if.end167

if.end167:                                        ; preds = %if.then153, %for.body148
  br label %for.inc168

for.inc168:                                       ; preds = %if.end167
  %99 = load i32, ptr %i, align 4, !tbaa !5
  %inc169 = add nsw i32 %99, 1
  store i32 %inc169, ptr %i, align 4, !tbaa !5
  br label %for.cond145, !llvm.loop !96

for.end170:                                       ; preds = %for.cond145
  %arraydecay171 = getelementptr inbounds [152 x [4 x i32]], ptr %cubcopy, i64 0, i64 0
  %arraydecay172 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 0
  %arraydecay173 = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 0
  %arraydecay174 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 0
  %100 = load ptr, ptr %cyc.addr, align 8, !tbaa !9
  %arraydecay175 = getelementptr inbounds [229 x i32], ptr %outclass, i64 0, i64 0
  %101 = load i32, ptr %n.addr, align 4, !tbaa !5
  %102 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %call176 = call i32 @cubham(ptr noundef %arraydecay171, ptr noundef @eno, ptr noundef %arraydecay172, ptr noundef %arraydecay173, ptr noundef %arraydecay174, ptr noundef %100, ptr noundef %arraydecay175, i32 noundef %101, i32 noundef %102)
  store i32 %call176, ptr %ch, align 4, !tbaa !5
  %103 = load i64, ptr @nodecount, align 8, !tbaa !11
  %104 = load i64, ptr @totalnodes, align 8, !tbaa !11
  %add177 = add nsw i64 %104, %103
  store i64 %add177, ptr @totalnodes, align 8, !tbaa !11
  %105 = load i32, ptr %nmax, align 4, !tbaa !5
  %conv178 = sext i32 %105 to i64
  %106 = load i64, ptr @repeats, align 8, !tbaa !11
  %div179 = sdiv i64 %conv178, %106
  %arrayidx180 = getelementptr inbounds [20 x i64], ptr @numtries, i64 0, i64 %div179
  %107 = load i64, ptr %arrayidx180, align 8, !tbaa !11
  %inc181 = add i64 %107, 1
  store i64 %inc181, ptr %arrayidx180, align 8, !tbaa !11
  br label %for.inc182

for.inc182:                                       ; preds = %for.end170
  %108 = load i32, ptr %nmax, align 4, !tbaa !5
  %inc183 = add nsw i32 %108, 1
  store i32 %inc183, ptr %nmax, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !97

for.end184:                                       ; preds = %land.end
  %109 = load ptr, ptr %cyc.addr, align 8, !tbaa !9
  %cmp185 = icmp ne ptr %109, null
  br i1 %cmp185, label %land.lhs.true187, label %if.end215

land.lhs.true187:                                 ; preds = %for.end184
  %110 = load i32, ptr %ch, align 4, !tbaa !5
  %cmp188 = icmp eq i32 %110, 1
  br i1 %cmp188, label %if.then190, label %if.end215

if.then190:                                       ; preds = %land.lhs.true187
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond191

for.cond191:                                      ; preds = %for.inc199, %if.then190
  %111 = load i32, ptr %i, align 4, !tbaa !5
  %112 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp192 = icmp slt i32 %111, %112
  br i1 %cmp192, label %for.body194, label %for.end201

for.body194:                                      ; preds = %for.cond191
  %113 = load i32, ptr %i, align 4, !tbaa !5
  %114 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom195 = sext i32 %114 to i64
  %arrayidx196 = getelementptr inbounds [152 x i32], ptr %perm, i64 0, i64 %idxprom195
  %115 = load i32, ptr %arrayidx196, align 4, !tbaa !5
  %idxprom197 = sext i32 %115 to i64
  %arrayidx198 = getelementptr inbounds [152 x i32], ptr %pinv, i64 0, i64 %idxprom197
  store i32 %113, ptr %arrayidx198, align 4, !tbaa !5
  br label %for.inc199

for.inc199:                                       ; preds = %for.body194
  %116 = load i32, ptr %i, align 4, !tbaa !5
  %inc200 = add nsw i32 %116, 1
  store i32 %inc200, ptr %i, align 4, !tbaa !5
  br label %for.cond191, !llvm.loop !98

for.end201:                                       ; preds = %for.cond191
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond202

for.cond202:                                      ; preds = %for.inc212, %for.end201
  %117 = load i32, ptr %i, align 4, !tbaa !5
  %118 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp203 = icmp slt i32 %117, %118
  br i1 %cmp203, label %for.body205, label %for.end214

for.body205:                                      ; preds = %for.cond202
  %119 = load ptr, ptr %cyc.addr, align 8, !tbaa !9
  %120 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom206 = sext i32 %120 to i64
  %arrayidx207 = getelementptr inbounds i32, ptr %119, i64 %idxprom206
  %121 = load i32, ptr %arrayidx207, align 4, !tbaa !5
  %idxprom208 = sext i32 %121 to i64
  %arrayidx209 = getelementptr inbounds [152 x i32], ptr %pinv, i64 0, i64 %idxprom208
  %122 = load i32, ptr %arrayidx209, align 4, !tbaa !5
  %123 = load ptr, ptr %cyc.addr, align 8, !tbaa !9
  %124 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom210 = sext i32 %124 to i64
  %arrayidx211 = getelementptr inbounds i32, ptr %123, i64 %idxprom210
  store i32 %122, ptr %arrayidx211, align 4, !tbaa !5
  br label %for.inc212

for.inc212:                                       ; preds = %for.body205
  %125 = load i32, ptr %i, align 4, !tbaa !5
  %inc213 = add nsw i32 %125, 1
  store i32 %inc213, ptr %i, align 4, !tbaa !5
  br label %for.cond202, !llvm.loop !99

for.end214:                                       ; preds = %for.cond202
  br label %if.end215

if.end215:                                        ; preds = %for.end214, %land.lhs.true187, %for.end184
  %126 = load i32, ptr %ch, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #8
  call void @llvm.lifetime.end.p0(i64 608, ptr %pinv) #8
  call void @llvm.lifetime.end.p0(i64 608, ptr %perm) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %outclass) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %initclass) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %v2) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %v1) #8
  call void @llvm.lifetime.end.p0(i64 2432, ptr %cubcopy) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ch) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmax) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  ret i32 %126
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @biconnected_cub_v(ptr noundef %cub, i32 noundef %vv, i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %cub.addr = alloca ptr, align 8
  %vv.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %sp = alloca i32, align 4
  %v = alloca i32, align 4
  %w = alloca i32, align 4
  %x = alloca i32, align 4
  %start = alloca i32, align 4
  %visited = alloca [3 x i64], align 16
  %numvis = alloca i32, align 4
  %num = alloca [152 x i32], align 16
  %lp = alloca [152 x i32], align 16
  %stack = alloca [152 x i32], align 16
  %m = alloca i32, align 4
  %gv = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %es = alloca ptr, align 8
  store ptr %cub, ptr %cub.addr, align 8, !tbaa !9
  store i32 %vv, ptr %vv.addr, align 4, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %sp) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %start) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr %visited) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %numvis) #8
  call void @llvm.lifetime.start.p0(i64 608, ptr %num) #8
  call void @llvm.lifetime.start.p0(i64 608, ptr %lp) #8
  call void @llvm.lifetime.start.p0(i64 608, ptr %stack) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %gv) #8
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %vv.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %1, 0
  %2 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i32 1, i32 0
  store i32 %cond, ptr %start, align 4, !tbaa !5
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %add = add nsw i32 %3, 64
  %sub = sub nsw i32 %add, 1
  %div = sdiv i32 %sub, 64
  store i32 %div, ptr %m, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %es) #8
  %arraydecay = getelementptr inbounds [3 x i64], ptr %visited, i64 0, i64 0
  %4 = load i32, ptr %m, align 4, !tbaa !5
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i64, ptr %arraydecay, i64 %idx.ext
  store ptr %add.ptr, ptr %es, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end
  %5 = load ptr, ptr %es, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i64, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %es, align 8, !tbaa !9
  %arraydecay2 = getelementptr inbounds [3 x i64], ptr %visited, i64 0, i64 0
  %cmp3 = icmp uge ptr %incdec.ptr, %arraydecay2
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %es, align 8, !tbaa !9
  store i64 0, ptr %6, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !100

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %es) #8
  %7 = load i32, ptr %start, align 4, !tbaa !5
  %and = and i32 %7, 63
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [64 x i64], ptr @bit, i64 0, i64 %idxprom
  %8 = load i64, ptr %arrayidx, align 8, !tbaa !11
  %9 = load i32, ptr %start, align 4, !tbaa !5
  %shr = ashr i32 %9, 6
  %idxprom4 = sext i32 %shr to i64
  %arrayidx5 = getelementptr inbounds [3 x i64], ptr %visited, i64 0, i64 %idxprom4
  %10 = load i64, ptr %arrayidx5, align 8, !tbaa !11
  %or = or i64 %10, %8
  store i64 %or, ptr %arrayidx5, align 8, !tbaa !11
  %11 = load i32, ptr %vv.addr, align 4, !tbaa !5
  %and6 = and i32 %11, 63
  %idxprom7 = sext i32 %and6 to i64
  %arrayidx8 = getelementptr inbounds [64 x i64], ptr @bit, i64 0, i64 %idxprom7
  %12 = load i64, ptr %arrayidx8, align 8, !tbaa !11
  %13 = load i32, ptr %vv.addr, align 4, !tbaa !5
  %shr9 = ashr i32 %13, 6
  %idxprom10 = sext i32 %shr9 to i64
  %arrayidx11 = getelementptr inbounds [3 x i64], ptr %visited, i64 0, i64 %idxprom10
  %14 = load i64, ptr %arrayidx11, align 8, !tbaa !11
  %or12 = or i64 %14, %12
  store i64 %or12, ptr %arrayidx11, align 8, !tbaa !11
  %15 = load i32, ptr %start, align 4, !tbaa !5
  %arrayidx13 = getelementptr inbounds [152 x i32], ptr %stack, i64 0, i64 0
  store i32 %15, ptr %arrayidx13, align 16, !tbaa !5
  %16 = load i32, ptr %start, align 4, !tbaa !5
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [152 x i32], ptr %num, i64 0, i64 %idxprom14
  store i32 0, ptr %arrayidx15, align 4, !tbaa !5
  %17 = load i32, ptr %start, align 4, !tbaa !5
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds [152 x i32], ptr %lp, i64 0, i64 %idxprom16
  store i32 0, ptr %arrayidx17, align 4, !tbaa !5
  store i32 1, ptr %numvis, align 4, !tbaa !5
  store i32 0, ptr %sp, align 4, !tbaa !5
  %18 = load i32, ptr %start, align 4, !tbaa !5
  store i32 %18, ptr %v, align 4, !tbaa !5
  %19 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %20 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom18 = sext i32 %20 to i64
  %arrayidx19 = getelementptr inbounds [4 x i32], ptr %19, i64 %idxprom18
  %arraydecay20 = getelementptr inbounds [4 x i32], ptr %arrayidx19, i64 0, i64 0
  store ptr %arraydecay20, ptr %gv, align 8, !tbaa !9
  br label %for.cond21

for.cond21:                                       ; preds = %if.end130, %for.end
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc, %for.cond21
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %21, 3
  br i1 %cmp23, label %for.body24, label %for.end42

for.body24:                                       ; preds = %for.cond22
  %22 = load ptr, ptr %gv, align 8, !tbaa !9
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %22, i64 %idxprom25
  %24 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp27 = icmp sge i32 %24, 0
  br i1 %cmp27, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %for.body24
  %25 = load ptr, ptr %gv, align 8, !tbaa !9
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %26 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %25, i64 %idxprom28
  %27 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %shr30 = ashr i32 %27, 6
  %idxprom31 = sext i32 %shr30 to i64
  %arrayidx32 = getelementptr inbounds [3 x i64], ptr %visited, i64 0, i64 %idxprom31
  %28 = load i64, ptr %arrayidx32, align 8, !tbaa !11
  %29 = load ptr, ptr %gv, align 8, !tbaa !9
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %30 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %29, i64 %idxprom33
  %31 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %and35 = and i32 %31, 63
  %idxprom36 = sext i32 %and35 to i64
  %arrayidx37 = getelementptr inbounds [64 x i64], ptr @bit, i64 0, i64 %idxprom36
  %32 = load i64, ptr %arrayidx37, align 8, !tbaa !11
  %and38 = and i64 %28, %32
  %cmp39 = icmp ne i64 %and38, 0
  br i1 %cmp39, label %if.end41, label %if.then40

if.then40:                                        ; preds = %land.lhs.true
  br label %for.end42

if.end41:                                         ; preds = %land.lhs.true, %for.body24
  br label %for.inc

for.inc:                                          ; preds = %if.end41
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !101

for.end42:                                        ; preds = %if.then40, %for.cond22
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %34, 3
  br i1 %cmp43, label %if.then44, label %if.else

if.then44:                                        ; preds = %for.end42
  %35 = load i32, ptr %v, align 4, !tbaa !5
  store i32 %35, ptr %w, align 4, !tbaa !5
  %36 = load ptr, ptr %gv, align 8, !tbaa !9
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom45 = sext i32 %37 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %36, i64 %idxprom45
  %38 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  store i32 %38, ptr %v, align 4, !tbaa !5
  %39 = load i32, ptr %v, align 4, !tbaa !5
  %40 = load i32, ptr %sp, align 4, !tbaa !5
  %inc47 = add nsw i32 %40, 1
  store i32 %inc47, ptr %sp, align 4, !tbaa !5
  %idxprom48 = sext i32 %inc47 to i64
  %arrayidx49 = getelementptr inbounds [152 x i32], ptr %stack, i64 0, i64 %idxprom48
  store i32 %39, ptr %arrayidx49, align 4, !tbaa !5
  %41 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %42 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom50 = sext i32 %42 to i64
  %arrayidx51 = getelementptr inbounds [4 x i32], ptr %41, i64 %idxprom50
  %arraydecay52 = getelementptr inbounds [4 x i32], ptr %arrayidx51, i64 0, i64 0
  store ptr %arraydecay52, ptr %gv, align 8, !tbaa !9
  %43 = load i32, ptr %v, align 4, !tbaa !5
  %and53 = and i32 %43, 63
  %idxprom54 = sext i32 %and53 to i64
  %arrayidx55 = getelementptr inbounds [64 x i64], ptr @bit, i64 0, i64 %idxprom54
  %44 = load i64, ptr %arrayidx55, align 8, !tbaa !11
  %45 = load i32, ptr %v, align 4, !tbaa !5
  %shr56 = ashr i32 %45, 6
  %idxprom57 = sext i32 %shr56 to i64
  %arrayidx58 = getelementptr inbounds [3 x i64], ptr %visited, i64 0, i64 %idxprom57
  %46 = load i64, ptr %arrayidx58, align 8, !tbaa !11
  %or59 = or i64 %46, %44
  store i64 %or59, ptr %arrayidx58, align 8, !tbaa !11
  %47 = load i32, ptr %numvis, align 4, !tbaa !5
  %inc60 = add nsw i32 %47, 1
  store i32 %inc60, ptr %numvis, align 4, !tbaa !5
  %48 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom61 = sext i32 %48 to i64
  %arrayidx62 = getelementptr inbounds [152 x i32], ptr %num, i64 0, i64 %idxprom61
  store i32 %47, ptr %arrayidx62, align 4, !tbaa !5
  %49 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom63 = sext i32 %49 to i64
  %arrayidx64 = getelementptr inbounds [152 x i32], ptr %lp, i64 0, i64 %idxprom63
  store i32 %47, ptr %arrayidx64, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc97, %if.then44
  %50 = load i32, ptr %i, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %50, 3
  br i1 %cmp66, label %for.body67, label %for.end99

for.body67:                                       ; preds = %for.cond65
  %51 = load ptr, ptr %gv, align 8, !tbaa !9
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom68 = sext i32 %52 to i64
  %arrayidx69 = getelementptr inbounds i32, ptr %51, i64 %idxprom68
  %53 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  store i32 %53, ptr %x, align 4, !tbaa !5
  %54 = load i32, ptr %x, align 4, !tbaa !5
  %cmp70 = icmp sge i32 %54, 0
  br i1 %cmp70, label %land.lhs.true71, label %if.end96

land.lhs.true71:                                  ; preds = %for.body67
  %55 = load i32, ptr %x, align 4, !tbaa !5
  %56 = load i32, ptr %w, align 4, !tbaa !5
  %cmp72 = icmp ne i32 %55, %56
  br i1 %cmp72, label %land.lhs.true73, label %if.end96

land.lhs.true73:                                  ; preds = %land.lhs.true71
  %57 = load i32, ptr %x, align 4, !tbaa !5
  %58 = load i32, ptr %vv.addr, align 4, !tbaa !5
  %cmp74 = icmp ne i32 %57, %58
  br i1 %cmp74, label %land.lhs.true75, label %if.end96

land.lhs.true75:                                  ; preds = %land.lhs.true73
  %59 = load i32, ptr %x, align 4, !tbaa !5
  %shr76 = ashr i32 %59, 6
  %idxprom77 = sext i32 %shr76 to i64
  %arrayidx78 = getelementptr inbounds [3 x i64], ptr %visited, i64 0, i64 %idxprom77
  %60 = load i64, ptr %arrayidx78, align 8, !tbaa !11
  %61 = load i32, ptr %x, align 4, !tbaa !5
  %and79 = and i32 %61, 63
  %idxprom80 = sext i32 %and79 to i64
  %arrayidx81 = getelementptr inbounds [64 x i64], ptr @bit, i64 0, i64 %idxprom80
  %62 = load i64, ptr %arrayidx81, align 8, !tbaa !11
  %and82 = and i64 %60, %62
  %cmp83 = icmp ne i64 %and82, 0
  br i1 %cmp83, label %if.then84, label %if.end96

if.then84:                                        ; preds = %land.lhs.true75
  %63 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom85 = sext i32 %63 to i64
  %arrayidx86 = getelementptr inbounds [152 x i32], ptr %num, i64 0, i64 %idxprom85
  %64 = load i32, ptr %arrayidx86, align 4, !tbaa !5
  %65 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom87 = sext i32 %65 to i64
  %arrayidx88 = getelementptr inbounds [152 x i32], ptr %lp, i64 0, i64 %idxprom87
  %66 = load i32, ptr %arrayidx88, align 4, !tbaa !5
  %cmp89 = icmp slt i32 %64, %66
  br i1 %cmp89, label %if.then90, label %if.end95

if.then90:                                        ; preds = %if.then84
  %67 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom91 = sext i32 %67 to i64
  %arrayidx92 = getelementptr inbounds [152 x i32], ptr %num, i64 0, i64 %idxprom91
  %68 = load i32, ptr %arrayidx92, align 4, !tbaa !5
  %69 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom93 = sext i32 %69 to i64
  %arrayidx94 = getelementptr inbounds [152 x i32], ptr %lp, i64 0, i64 %idxprom93
  store i32 %68, ptr %arrayidx94, align 4, !tbaa !5
  br label %if.end95

if.end95:                                         ; preds = %if.then90, %if.then84
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %land.lhs.true75, %land.lhs.true73, %land.lhs.true71, %for.body67
  br label %for.inc97

for.inc97:                                        ; preds = %if.end96
  %70 = load i32, ptr %i, align 4, !tbaa !5
  %inc98 = add nsw i32 %70, 1
  store i32 %inc98, ptr %i, align 4, !tbaa !5
  br label %for.cond65, !llvm.loop !102

for.end99:                                        ; preds = %for.cond65
  br label %if.end130

if.else:                                          ; preds = %for.end42
  %71 = load i32, ptr %v, align 4, !tbaa !5
  store i32 %71, ptr %w, align 4, !tbaa !5
  %72 = load i32, ptr %sp, align 4, !tbaa !5
  %cmp100 = icmp sle i32 %72, 1
  br i1 %cmp100, label %if.then101, label %if.end104

if.then101:                                       ; preds = %if.else
  %73 = load i32, ptr %numvis, align 4, !tbaa !5
  %74 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub102 = sub nsw i32 %74, 1
  %cmp103 = icmp eq i32 %73, %sub102
  %conv = zext i1 %cmp103 to i32
  store i32 %conv, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end104:                                        ; preds = %if.else
  %75 = load i32, ptr %sp, align 4, !tbaa !5
  %dec = add nsw i32 %75, -1
  store i32 %dec, ptr %sp, align 4, !tbaa !5
  %idxprom105 = sext i32 %dec to i64
  %arrayidx106 = getelementptr inbounds [152 x i32], ptr %stack, i64 0, i64 %idxprom105
  %76 = load i32, ptr %arrayidx106, align 4, !tbaa !5
  store i32 %76, ptr %v, align 4, !tbaa !5
  %77 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %78 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom107 = sext i32 %78 to i64
  %arrayidx108 = getelementptr inbounds [4 x i32], ptr %77, i64 %idxprom107
  %arraydecay109 = getelementptr inbounds [4 x i32], ptr %arrayidx108, i64 0, i64 0
  store ptr %arraydecay109, ptr %gv, align 8, !tbaa !9
  %79 = load i32, ptr %w, align 4, !tbaa !5
  %idxprom110 = sext i32 %79 to i64
  %arrayidx111 = getelementptr inbounds [152 x i32], ptr %lp, i64 0, i64 %idxprom110
  %80 = load i32, ptr %arrayidx111, align 4, !tbaa !5
  %81 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom112 = sext i32 %81 to i64
  %arrayidx113 = getelementptr inbounds [152 x i32], ptr %num, i64 0, i64 %idxprom112
  %82 = load i32, ptr %arrayidx113, align 4, !tbaa !5
  %cmp114 = icmp sge i32 %80, %82
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.end104
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end117:                                        ; preds = %if.end104
  %83 = load i32, ptr %w, align 4, !tbaa !5
  %idxprom118 = sext i32 %83 to i64
  %arrayidx119 = getelementptr inbounds [152 x i32], ptr %lp, i64 0, i64 %idxprom118
  %84 = load i32, ptr %arrayidx119, align 4, !tbaa !5
  %85 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom120 = sext i32 %85 to i64
  %arrayidx121 = getelementptr inbounds [152 x i32], ptr %lp, i64 0, i64 %idxprom120
  %86 = load i32, ptr %arrayidx121, align 4, !tbaa !5
  %cmp122 = icmp slt i32 %84, %86
  br i1 %cmp122, label %if.then124, label %if.end129

if.then124:                                       ; preds = %if.end117
  %87 = load i32, ptr %w, align 4, !tbaa !5
  %idxprom125 = sext i32 %87 to i64
  %arrayidx126 = getelementptr inbounds [152 x i32], ptr %lp, i64 0, i64 %idxprom125
  %88 = load i32, ptr %arrayidx126, align 4, !tbaa !5
  %89 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom127 = sext i32 %89 to i64
  %arrayidx128 = getelementptr inbounds [152 x i32], ptr %lp, i64 0, i64 %idxprom127
  store i32 %88, ptr %arrayidx128, align 4, !tbaa !5
  br label %if.end129

if.end129:                                        ; preds = %if.then124, %if.end117
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %for.end99
  br label %for.cond21, !llvm.loop !103

cleanup:                                          ; preds = %if.then116, %if.then101, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %gv) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #8
  call void @llvm.lifetime.end.p0(i64 608, ptr %stack) #8
  call void @llvm.lifetime.end.p0(i64 608, ptr %lp) #8
  call void @llvm.lifetime.end.p0(i64 608, ptr %num) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %numvis) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr %visited) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %start) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %sp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  %90 = load i32, ptr %retval, align 4
  ret i32 %90
}

; Function Attrs: nounwind uwtable
define internal void @cubinit(ptr noundef %g, ptr noundef %eno, ptr noundef %v1, ptr noundef %v2, i32 noundef %nv, i32 noundef %ne) #0 {
entry:
  %g.addr = alloca ptr, align 8
  %eno.addr = alloca ptr, align 8
  %v1.addr = alloca ptr, align 8
  %v2.addr = alloca ptr, align 8
  %nv.addr = alloca i32, align 4
  %ne.addr = alloca i32, align 4
  %gpx = alloca ptr, align 8
  %gpy = alloca ptr, align 8
  %enop = alloca ptr, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %en = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8, !tbaa !9
  store ptr %eno, ptr %eno.addr, align 8, !tbaa !9
  store ptr %v1, ptr %v1.addr, align 8, !tbaa !9
  store ptr %v2, ptr %v2.addr, align 8, !tbaa !9
  store i32 %nv, ptr %nv.addr, align 4, !tbaa !5
  store i32 %ne, ptr %ne.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpx) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpy) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %enop) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %en) #8
  %0 = load i32, ptr %nv.addr, align 4, !tbaa !5
  store i32 %0, ptr %n, align 4, !tbaa !5
  store i32 0, ptr %en, align 4, !tbaa !5
  store i32 0, ptr %x, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc40, %entry
  %1 = load i32, ptr %x, align 4, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end42

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %4 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %3, i64 %idxprom
  %arraydecay = getelementptr inbounds [4 x i32], ptr %arrayidx, i64 0, i64 0
  store ptr %arraydecay, ptr %gpx, align 8, !tbaa !9
  %5 = load ptr, ptr %eno.addr, align 8, !tbaa !9
  %6 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [4 x i32], ptr %5, i64 %idxprom1
  %arraydecay3 = getelementptr inbounds [4 x i32], ptr %arrayidx2, i64 0, i64 0
  store ptr %arraydecay3, ptr %enop, align 8, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc37, %for.body
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %7, 3
  br i1 %cmp5, label %for.body6, label %for.end39

for.body6:                                        ; preds = %for.cond4
  %8 = load ptr, ptr %gpx, align 8, !tbaa !9
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %8, i64 %idxprom7
  %10 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  store i32 %10, ptr %y, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %10, 0
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body6
  %11 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %12 = load ptr, ptr %enop, align 8, !tbaa !9
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %12, i64 %idxprom10
  store i32 %11, ptr %arrayidx11, align 4, !tbaa !5
  br label %if.end36

if.else:                                          ; preds = %for.body6
  %14 = load i32, ptr %y, align 4, !tbaa !5
  %15 = load i32, ptr %x, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %14, %15
  br i1 %cmp12, label %if.then13, label %if.else20

if.then13:                                        ; preds = %if.else
  %16 = load i32, ptr %x, align 4, !tbaa !5
  %17 = load ptr, ptr %v1.addr, align 8, !tbaa !9
  %18 = load i32, ptr %en, align 4, !tbaa !5
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %17, i64 %idxprom14
  store i32 %16, ptr %arrayidx15, align 4, !tbaa !5
  %19 = load i32, ptr %y, align 4, !tbaa !5
  %20 = load ptr, ptr %v2.addr, align 8, !tbaa !9
  %21 = load i32, ptr %en, align 4, !tbaa !5
  %idxprom16 = sext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %20, i64 %idxprom16
  store i32 %19, ptr %arrayidx17, align 4, !tbaa !5
  %22 = load i32, ptr %en, align 4, !tbaa !5
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %en, align 4, !tbaa !5
  %23 = load ptr, ptr %enop, align 8, !tbaa !9
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %23, i64 %idxprom18
  store i32 %22, ptr %arrayidx19, align 4, !tbaa !5
  br label %if.end

if.else20:                                        ; preds = %if.else
  %25 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %26 = load i32, ptr %y, align 4, !tbaa !5
  %idxprom21 = sext i32 %26 to i64
  %arrayidx22 = getelementptr inbounds [4 x i32], ptr %25, i64 %idxprom21
  %arraydecay23 = getelementptr inbounds [4 x i32], ptr %arrayidx22, i64 0, i64 0
  store ptr %arraydecay23, ptr %gpy, align 8, !tbaa !9
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc, %if.else20
  %27 = load ptr, ptr %gpy, align 8, !tbaa !9
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom25 = sext i32 %28 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %27, i64 %idxprom25
  %29 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %30 = load i32, ptr %x, align 4, !tbaa !5
  %cmp27 = icmp ne i32 %29, %30
  br i1 %cmp27, label %for.body28, label %for.end

for.body28:                                       ; preds = %for.cond24
  br label %for.inc

for.inc:                                          ; preds = %for.body28
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %inc29 = add nsw i32 %31, 1
  store i32 %inc29, ptr %j, align 4, !tbaa !5
  br label %for.cond24, !llvm.loop !104

for.end:                                          ; preds = %for.cond24
  %32 = load ptr, ptr %eno.addr, align 8, !tbaa !9
  %33 = load i32, ptr %y, align 4, !tbaa !5
  %idxprom30 = sext i32 %33 to i64
  %arrayidx31 = getelementptr inbounds [4 x i32], ptr %32, i64 %idxprom30
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom32 = sext i32 %34 to i64
  %arrayidx33 = getelementptr inbounds [4 x i32], ptr %arrayidx31, i64 0, i64 %idxprom32
  %35 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %36 = load ptr, ptr %enop, align 8, !tbaa !9
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %37 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %36, i64 %idxprom34
  store i32 %35, ptr %arrayidx35, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then13
  br label %if.end36

if.end36:                                         ; preds = %if.end, %if.then
  br label %for.inc37

for.inc37:                                        ; preds = %if.end36
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %inc38 = add nsw i32 %38, 1
  store i32 %inc38, ptr %i, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !105

for.end39:                                        ; preds = %for.cond4
  br label %for.inc40

for.inc40:                                        ; preds = %for.end39
  %39 = load i32, ptr %x, align 4, !tbaa !5
  %inc41 = add nsw i32 %39, 1
  store i32 %inc41, ptr %x, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !106

for.end42:                                        ; preds = %for.cond
  %40 = load i32, ptr %en, align 4, !tbaa !5
  %41 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp43 = icmp ne i32 %40, %41
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %for.end42
  %42 = load ptr, ptr @stderr, align 8, !tbaa !9
  %43 = load i32, ptr %en, align 4, !tbaa !5
  %44 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.61, i32 noundef %43, i32 noundef %44)
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %for.end42
  call void @llvm.lifetime.end.p0(i64 4, ptr %en) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %enop) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpy) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpx) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cubham(ptr noundef %g, ptr noundef %eno, ptr noundef %initclass, ptr noundef %v1, ptr noundef %v2, ptr noundef %cycle, ptr noundef %outclass, i32 noundef %nv, i32 noundef %ne) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca ptr, align 8
  %eno.addr = alloca ptr, align 8
  %initclass.addr = alloca ptr, align 8
  %v1.addr = alloca ptr, align 8
  %v2.addr = alloca ptr, align 8
  %cycle.addr = alloca ptr, align 8
  %outclass.addr = alloca ptr, align 8
  %nv.addr = alloca i32, align 4
  %ne.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %status = alloca i32, align 4
  %nin = alloca i32, align 4
  %v = alloca i32, align 4
  %w = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8, !tbaa !9
  store ptr %eno, ptr %eno.addr, align 8, !tbaa !9
  store ptr %initclass, ptr %initclass.addr, align 8, !tbaa !9
  store ptr %v1, ptr %v1.addr, align 8, !tbaa !9
  store ptr %v2, ptr %v2.addr, align 8, !tbaa !9
  store ptr %cycle, ptr %cycle.addr, align 8, !tbaa !9
  store ptr %outclass, ptr %outclass.addr, align 8, !tbaa !9
  store i32 %nv, ptr %nv.addr, align 4, !tbaa !5
  store i32 %ne, ptr %ne.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %nin) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #8
  %0 = load i32, ptr %ne.addr, align 4, !tbaa !5
  store i32 %0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [229 x i32], ptr @hcnodat, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !107

for.end:                                          ; preds = %for.cond
  %3 = load i32, ptr %nv.addr, align 4, !tbaa !5
  %mul = mul nsw i32 3, %3
  %4 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %mul1 = mul nsw i32 2, %4
  %cmp2 = icmp sgt i32 %mul, %mul1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %5 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [229 x i32], ptr @hcnodat, i64 0, i64 %idxprom3
  store i32 -1, ptr %arrayidx4, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %6 = load i32, ptr %nv.addr, align 4, !tbaa !5
  store i32 %6, ptr %i, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.body8, %if.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %dec6 = add nsw i32 %7, -1
  store i32 %dec6, ptr %i, align 4, !tbaa !5
  %cmp7 = icmp sge i32 %dec6, 0
  br i1 %cmp7, label %for.body8, label %for.end17

for.body8:                                        ; preds = %for.cond5
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [152 x i32], ptr getelementptr inbounds (%struct.nodedata, ptr @hcnodat, i32 0, i32 2), i64 0, i64 %idxprom9
  store i32 0, ptr %arrayidx10, align 4, !tbaa !5
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [152 x i32], ptr getelementptr inbounds (%struct.nodedata, ptr @hcnodat, i32 0, i32 1), i64 0, i64 %idxprom11
  store i32 0, ptr %arrayidx12, align 4, !tbaa !5
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [152 x i32], ptr getelementptr inbounds (%struct.nodedata, ptr @hcnodat, i32 0, i32 3), i64 0, i64 %idxprom13
  store i32 %10, ptr %arrayidx14, align 4, !tbaa !5
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom15
  store i32 0, ptr %arrayidx16, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !108

for.end17:                                        ; preds = %for.cond5
  store i32 0, ptr %nin, align 4, !tbaa !5
  store i32 0, ptr @stacklev, align 4, !tbaa !5
  %13 = load i32, ptr @stacklev, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr @stacklev, align 4, !tbaa !5
  store ptr @stack, ptr @stackptr, align 8, !tbaa !9
  %14 = load i32, ptr %nv.addr, align 4, !tbaa !5
  store i32 %14, ptr %i, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %if.end42, %for.end17
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %dec19 = add nsw i32 %15, -1
  store i32 %dec19, ptr %i, align 4, !tbaa !5
  %cmp20 = icmp sge i32 %dec19, 0
  br i1 %cmp20, label %for.body21, label %for.end43

for.body21:                                       ; preds = %for.cond18
  %16 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %17 to i64
  %arrayidx23 = getelementptr inbounds [4 x i32], ptr %16, i64 %idxprom22
  %arrayidx24 = getelementptr inbounds [4 x i32], ptr %arrayidx23, i64 0, i64 1
  %18 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %18, 0
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.body21
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end27:                                         ; preds = %for.body21
  %19 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %20 to i64
  %arrayidx29 = getelementptr inbounds [4 x i32], ptr %19, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds [4 x i32], ptr %arrayidx29, i64 0, i64 2
  %21 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %21, 0
  br i1 %cmp31, label %if.then32, label %if.end42

if.then32:                                        ; preds = %if.end27
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %22 to i64
  %arrayidx34 = getelementptr inbounds [152 x i32], ptr getelementptr inbounds (%struct.nodedata, ptr @hcnodat, i32 0, i32 2), i64 0, i64 %idxprom33
  store i32 1, ptr %arrayidx34, align 4, !tbaa !5
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %23 to i64
  %arrayidx36 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom35
  %24 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %25 = load i32, ptr @stacklev, align 4, !tbaa !5
  %cmp37 = icmp ne i32 %24, %25
  br i1 %cmp37, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.then32
  %26 = load i32, ptr @stacklev, align 4, !tbaa !5
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %27 to i64
  %arrayidx40 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom39
  store i32 %26, ptr %arrayidx40, align 4, !tbaa !5
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %29 = load ptr, ptr @stackptr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i32, ptr %29, i32 1
  store ptr %incdec.ptr, ptr @stackptr, align 8, !tbaa !9
  store i32 %28, ptr %29, align 4, !tbaa !5
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.then32
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end27
  br label %for.cond18, !llvm.loop !109

for.end43:                                        ; preds = %for.cond18
  store i32 0, ptr %status, align 4, !tbaa !5
  store ptr @classstack, ptr @classstackptr, align 8, !tbaa !9
  %30 = load ptr, ptr %initclass.addr, align 8, !tbaa !9
  %tobool = icmp ne ptr %30, null
  br i1 %tobool, label %if.then44, label %if.end139

if.then44:                                        ; preds = %for.end43
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc, %if.then44
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %32 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %31, %32
  br i1 %cmp46, label %for.body47, label %for.end138

for.body47:                                       ; preds = %for.cond45
  %33 = load ptr, ptr %initclass.addr, align 8, !tbaa !9
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %34 to i64
  %arrayidx49 = getelementptr inbounds i32, ptr %33, i64 %idxprom48
  %35 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %cmp50 = icmp ne i32 %35, 0
  br i1 %cmp50, label %if.then51, label %if.end136

if.then51:                                        ; preds = %for.body47
  %36 = load ptr, ptr %v1.addr, align 8, !tbaa !9
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom52 = sext i32 %37 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %36, i64 %idxprom52
  %38 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  store i32 %38, ptr %v, align 4, !tbaa !5
  %39 = load ptr, ptr %v2.addr, align 8, !tbaa !9
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom54 = sext i32 %40 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %39, i64 %idxprom54
  %41 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  store i32 %41, ptr %w, align 4, !tbaa !5
  %42 = load ptr, ptr %initclass.addr, align 8, !tbaa !9
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom56 = sext i32 %43 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %42, i64 %idxprom56
  %44 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %cmp58 = icmp eq i32 %44, -1
  br i1 %cmp58, label %if.then59, label %if.else92

if.then59:                                        ; preds = %if.then51
  %45 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom60 = sext i32 %45 to i64
  %arrayidx61 = getelementptr inbounds [229 x i32], ptr @hcnodat, i64 0, i64 %idxprom60
  %46 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %cmp62 = icmp eq i32 %46, 1
  br i1 %cmp62, label %if.then63, label %if.else

if.then63:                                        ; preds = %if.then59
  store i32 -1, ptr %status, align 4, !tbaa !5
  br label %if.end91

if.else:                                          ; preds = %if.then59
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom64 = sext i32 %47 to i64
  %arrayidx65 = getelementptr inbounds [229 x i32], ptr @hcnodat, i64 0, i64 %idxprom64
  %48 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %cmp66 = icmp eq i32 %48, 0
  br i1 %cmp66, label %if.then67, label %if.end90

if.then67:                                        ; preds = %if.else
  %49 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom68 = sext i32 %49 to i64
  %arrayidx69 = getelementptr inbounds [152 x i32], ptr getelementptr inbounds (%struct.nodedata, ptr @hcnodat, i32 0, i32 2), i64 0, i64 %idxprom68
  %50 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  %cmp70 = icmp eq i32 %50, 0
  br i1 %cmp70, label %if.then71, label %if.else88

if.then71:                                        ; preds = %if.then67
  %51 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %52 = load i32, ptr %v, align 4, !tbaa !5
  %53 = load i32, ptr %w, align 4, !tbaa !5
  %54 = load i32, ptr %i, align 4, !tbaa !5
  %call = call i32 @classout(ptr noundef %51, ptr noundef @hcnodat, i32 noundef %52, i32 noundef %53, i32 noundef %54)
  store i32 %call, ptr %status, align 4, !tbaa !5
  %55 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom72 = sext i32 %55 to i64
  %arrayidx73 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom72
  %56 = load i32, ptr %arrayidx73, align 4, !tbaa !5
  %57 = load i32, ptr @stacklev, align 4, !tbaa !5
  %cmp74 = icmp ne i32 %56, %57
  br i1 %cmp74, label %if.then75, label %if.end79

if.then75:                                        ; preds = %if.then71
  %58 = load i32, ptr @stacklev, align 4, !tbaa !5
  %59 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom76 = sext i32 %59 to i64
  %arrayidx77 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom76
  store i32 %58, ptr %arrayidx77, align 4, !tbaa !5
  %60 = load i32, ptr %v, align 4, !tbaa !5
  %61 = load ptr, ptr @stackptr, align 8, !tbaa !9
  %incdec.ptr78 = getelementptr inbounds i32, ptr %61, i32 1
  store ptr %incdec.ptr78, ptr @stackptr, align 8, !tbaa !9
  store i32 %60, ptr %61, align 4, !tbaa !5
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %if.then71
  %62 = load i32, ptr %w, align 4, !tbaa !5
  %idxprom80 = sext i32 %62 to i64
  %arrayidx81 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom80
  %63 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %64 = load i32, ptr @stacklev, align 4, !tbaa !5
  %cmp82 = icmp ne i32 %63, %64
  br i1 %cmp82, label %if.then83, label %if.end87

if.then83:                                        ; preds = %if.end79
  %65 = load i32, ptr @stacklev, align 4, !tbaa !5
  %66 = load i32, ptr %w, align 4, !tbaa !5
  %idxprom84 = sext i32 %66 to i64
  %arrayidx85 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom84
  store i32 %65, ptr %arrayidx85, align 4, !tbaa !5
  %67 = load i32, ptr %w, align 4, !tbaa !5
  %68 = load ptr, ptr @stackptr, align 8, !tbaa !9
  %incdec.ptr86 = getelementptr inbounds i32, ptr %68, i32 1
  store ptr %incdec.ptr86, ptr @stackptr, align 8, !tbaa !9
  store i32 %67, ptr %68, align 4, !tbaa !5
  br label %if.end87

if.end87:                                         ; preds = %if.then83, %if.end79
  br label %if.end89

if.else88:                                        ; preds = %if.then67
  store i32 -1, ptr %status, align 4, !tbaa !5
  br label %if.end89

if.end89:                                         ; preds = %if.else88, %if.end87
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.else
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then63
  br label %if.end132

if.else92:                                        ; preds = %if.then51
  %69 = load ptr, ptr %initclass.addr, align 8, !tbaa !9
  %70 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom93 = sext i32 %70 to i64
  %arrayidx94 = getelementptr inbounds i32, ptr %69, i64 %idxprom93
  %71 = load i32, ptr %arrayidx94, align 4, !tbaa !5
  %cmp95 = icmp eq i32 %71, 1
  br i1 %cmp95, label %if.then96, label %if.end131

if.then96:                                        ; preds = %if.else92
  %72 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom97 = sext i32 %72 to i64
  %arrayidx98 = getelementptr inbounds [229 x i32], ptr @hcnodat, i64 0, i64 %idxprom97
  %73 = load i32, ptr %arrayidx98, align 4, !tbaa !5
  %cmp99 = icmp eq i32 %73, -1
  br i1 %cmp99, label %if.then100, label %if.else101

if.then100:                                       ; preds = %if.then96
  store i32 -1, ptr %status, align 4, !tbaa !5
  br label %if.end130

if.else101:                                       ; preds = %if.then96
  %74 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom102 = sext i32 %74 to i64
  %arrayidx103 = getelementptr inbounds [229 x i32], ptr @hcnodat, i64 0, i64 %idxprom102
  %75 = load i32, ptr %arrayidx103, align 4, !tbaa !5
  %cmp104 = icmp eq i32 %75, 0
  br i1 %cmp104, label %if.then105, label %if.end129

if.then105:                                       ; preds = %if.else101
  %76 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom106 = sext i32 %76 to i64
  %arrayidx107 = getelementptr inbounds [152 x i32], ptr getelementptr inbounds (%struct.nodedata, ptr @hcnodat, i32 0, i32 1), i64 0, i64 %idxprom106
  %77 = load i32, ptr %arrayidx107, align 4, !tbaa !5
  %cmp108 = icmp slt i32 %77, 2
  br i1 %cmp108, label %if.then109, label %if.else127

if.then109:                                       ; preds = %if.then105
  %78 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %79 = load ptr, ptr %eno.addr, align 8, !tbaa !9
  %80 = load i32, ptr %v, align 4, !tbaa !5
  %81 = load i32, ptr %w, align 4, !tbaa !5
  %82 = load i32, ptr %i, align 4, !tbaa !5
  %83 = load i32, ptr %nv.addr, align 4, !tbaa !5
  %call110 = call i32 @classin(ptr noundef %78, ptr noundef %79, ptr noundef @hcnodat, i32 noundef %80, i32 noundef %81, i32 noundef %82, ptr noundef %nin, i32 noundef %83)
  store i32 %call110, ptr %status, align 4, !tbaa !5
  %84 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom111 = sext i32 %84 to i64
  %arrayidx112 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom111
  %85 = load i32, ptr %arrayidx112, align 4, !tbaa !5
  %86 = load i32, ptr @stacklev, align 4, !tbaa !5
  %cmp113 = icmp ne i32 %85, %86
  br i1 %cmp113, label %if.then114, label %if.end118

if.then114:                                       ; preds = %if.then109
  %87 = load i32, ptr @stacklev, align 4, !tbaa !5
  %88 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom115 = sext i32 %88 to i64
  %arrayidx116 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom115
  store i32 %87, ptr %arrayidx116, align 4, !tbaa !5
  %89 = load i32, ptr %v, align 4, !tbaa !5
  %90 = load ptr, ptr @stackptr, align 8, !tbaa !9
  %incdec.ptr117 = getelementptr inbounds i32, ptr %90, i32 1
  store ptr %incdec.ptr117, ptr @stackptr, align 8, !tbaa !9
  store i32 %89, ptr %90, align 4, !tbaa !5
  br label %if.end118

if.end118:                                        ; preds = %if.then114, %if.then109
  %91 = load i32, ptr %w, align 4, !tbaa !5
  %idxprom119 = sext i32 %91 to i64
  %arrayidx120 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom119
  %92 = load i32, ptr %arrayidx120, align 4, !tbaa !5
  %93 = load i32, ptr @stacklev, align 4, !tbaa !5
  %cmp121 = icmp ne i32 %92, %93
  br i1 %cmp121, label %if.then122, label %if.end126

if.then122:                                       ; preds = %if.end118
  %94 = load i32, ptr @stacklev, align 4, !tbaa !5
  %95 = load i32, ptr %w, align 4, !tbaa !5
  %idxprom123 = sext i32 %95 to i64
  %arrayidx124 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom123
  store i32 %94, ptr %arrayidx124, align 4, !tbaa !5
  %96 = load i32, ptr %w, align 4, !tbaa !5
  %97 = load ptr, ptr @stackptr, align 8, !tbaa !9
  %incdec.ptr125 = getelementptr inbounds i32, ptr %97, i32 1
  store ptr %incdec.ptr125, ptr @stackptr, align 8, !tbaa !9
  store i32 %96, ptr %97, align 4, !tbaa !5
  br label %if.end126

if.end126:                                        ; preds = %if.then122, %if.end118
  br label %if.end128

if.else127:                                       ; preds = %if.then105
  store i32 -1, ptr %status, align 4, !tbaa !5
  br label %if.end128

if.end128:                                        ; preds = %if.else127, %if.end126
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.else101
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %if.then100
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.else92
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %if.end91
  %98 = load i32, ptr %status, align 4, !tbaa !5
  %cmp133 = icmp ne i32 %98, 0
  br i1 %cmp133, label %if.then134, label %if.end135

if.then134:                                       ; preds = %if.end132
  br label %for.end138

if.end135:                                        ; preds = %if.end132
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %for.body47
  br label %for.inc

for.inc:                                          ; preds = %if.end136
  %99 = load i32, ptr %i, align 4, !tbaa !5
  %inc137 = add nsw i32 %99, 1
  store i32 %inc137, ptr %i, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !110

for.end138:                                       ; preds = %if.then134, %for.cond45
  br label %if.end139

if.end139:                                        ; preds = %for.end138, %for.end43
  %100 = load i32, ptr %status, align 4, !tbaa !5
  %cmp140 = icmp eq i32 %100, 0
  br i1 %cmp140, label %if.then141, label %if.end143

if.then141:                                       ; preds = %if.end139
  %101 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %102 = load ptr, ptr %eno.addr, align 8, !tbaa !9
  %103 = load ptr, ptr %v1.addr, align 8, !tbaa !9
  %104 = load ptr, ptr %v2.addr, align 8, !tbaa !9
  %105 = load i32, ptr %nin, align 4, !tbaa !5
  %106 = load i32, ptr %nv.addr, align 4, !tbaa !5
  %call142 = call i32 @hamnode(ptr noundef %101, ptr noundef %102, ptr noundef %103, ptr noundef %104, ptr noundef @hcnodat, i32 noundef 0, i32 noundef %105, i32 noundef %106)
  store i32 %call142, ptr %status, align 4, !tbaa !5
  br label %if.end143

if.end143:                                        ; preds = %if.then141, %if.end139
  %107 = load i32, ptr %status, align 4, !tbaa !5
  %cmp144 = icmp eq i32 %107, 1
  br i1 %cmp144, label %land.lhs.true, label %if.end177

land.lhs.true:                                    ; preds = %if.end143
  %108 = load ptr, ptr %cycle.addr, align 8, !tbaa !9
  %tobool145 = icmp ne ptr %108, null
  br i1 %tobool145, label %if.then146, label %if.end177

if.then146:                                       ; preds = %land.lhs.true
  store i32 -1, ptr %w, align 4, !tbaa !5
  store i32 0, ptr %v, align 4, !tbaa !5
  %109 = load ptr, ptr %cycle.addr, align 8, !tbaa !9
  %arrayidx147 = getelementptr inbounds i32, ptr %109, i64 0
  store i32 0, ptr %arrayidx147, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond148

for.cond148:                                      ; preds = %for.inc174, %if.then146
  %110 = load i32, ptr %i, align 4, !tbaa !5
  %111 = load i32, ptr %nv.addr, align 4, !tbaa !5
  %cmp149 = icmp slt i32 %110, %111
  br i1 %cmp149, label %for.body150, label %for.end176

for.body150:                                      ; preds = %for.cond148
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc165, %for.body150
  %112 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %113 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom152 = sext i32 %113 to i64
  %arrayidx153 = getelementptr inbounds [4 x i32], ptr %112, i64 %idxprom152
  %114 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom154 = sext i32 %114 to i64
  %arrayidx155 = getelementptr inbounds [4 x i32], ptr %arrayidx153, i64 0, i64 %idxprom154
  %115 = load i32, ptr %arrayidx155, align 4, !tbaa !5
  %116 = load i32, ptr %w, align 4, !tbaa !5
  %cmp156 = icmp eq i32 %115, %116
  br i1 %cmp156, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond151
  %117 = load ptr, ptr %eno.addr, align 8, !tbaa !9
  %118 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom157 = sext i32 %118 to i64
  %arrayidx158 = getelementptr inbounds [4 x i32], ptr %117, i64 %idxprom157
  %119 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom159 = sext i32 %119 to i64
  %arrayidx160 = getelementptr inbounds [4 x i32], ptr %arrayidx158, i64 0, i64 %idxprom159
  %120 = load i32, ptr %arrayidx160, align 4, !tbaa !5
  %idxprom161 = sext i32 %120 to i64
  %arrayidx162 = getelementptr inbounds [229 x i32], ptr @hcnodat, i64 0, i64 %idxprom161
  %121 = load i32, ptr %arrayidx162, align 4, !tbaa !5
  %cmp163 = icmp ne i32 %121, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond151
  %122 = phi i1 [ true, %for.cond151 ], [ %cmp163, %lor.rhs ]
  br i1 %122, label %for.body164, label %for.end167

for.body164:                                      ; preds = %lor.end
  br label %for.inc165

for.inc165:                                       ; preds = %for.body164
  %123 = load i32, ptr %j, align 4, !tbaa !5
  %inc166 = add nsw i32 %123, 1
  store i32 %inc166, ptr %j, align 4, !tbaa !5
  br label %for.cond151, !llvm.loop !111

for.end167:                                       ; preds = %lor.end
  %124 = load i32, ptr %v, align 4, !tbaa !5
  store i32 %124, ptr %w, align 4, !tbaa !5
  %125 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %126 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom168 = sext i32 %126 to i64
  %arrayidx169 = getelementptr inbounds [4 x i32], ptr %125, i64 %idxprom168
  %127 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom170 = sext i32 %127 to i64
  %arrayidx171 = getelementptr inbounds [4 x i32], ptr %arrayidx169, i64 0, i64 %idxprom170
  %128 = load i32, ptr %arrayidx171, align 4, !tbaa !5
  store i32 %128, ptr %v, align 4, !tbaa !5
  %129 = load i32, ptr %v, align 4, !tbaa !5
  %130 = load ptr, ptr %cycle.addr, align 8, !tbaa !9
  %131 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom172 = sext i32 %131 to i64
  %arrayidx173 = getelementptr inbounds i32, ptr %130, i64 %idxprom172
  store i32 %129, ptr %arrayidx173, align 4, !tbaa !5
  br label %for.inc174

for.inc174:                                       ; preds = %for.end167
  %132 = load i32, ptr %i, align 4, !tbaa !5
  %inc175 = add nsw i32 %132, 1
  store i32 %inc175, ptr %i, align 4, !tbaa !5
  br label %for.cond148, !llvm.loop !112

for.end176:                                       ; preds = %for.cond148
  br label %if.end177

if.end177:                                        ; preds = %for.end176, %land.lhs.true, %if.end143
  %133 = load i32, ptr %status, align 4, !tbaa !5
  %cmp178 = icmp eq i32 %133, 1
  br i1 %cmp178, label %land.lhs.true179, label %if.end192

land.lhs.true179:                                 ; preds = %if.end177
  %134 = load ptr, ptr %outclass.addr, align 8, !tbaa !9
  %tobool180 = icmp ne ptr %134, null
  br i1 %tobool180, label %if.then181, label %if.end192

if.then181:                                       ; preds = %land.lhs.true179
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond182

for.cond182:                                      ; preds = %for.inc189, %if.then181
  %135 = load i32, ptr %i, align 4, !tbaa !5
  %136 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp183 = icmp slt i32 %135, %136
  br i1 %cmp183, label %for.body184, label %for.end191

for.body184:                                      ; preds = %for.cond182
  %137 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom185 = sext i32 %137 to i64
  %arrayidx186 = getelementptr inbounds [229 x i32], ptr @hcnodat, i64 0, i64 %idxprom185
  %138 = load i32, ptr %arrayidx186, align 4, !tbaa !5
  %139 = load ptr, ptr %outclass.addr, align 8, !tbaa !9
  %140 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom187 = sext i32 %140 to i64
  %arrayidx188 = getelementptr inbounds i32, ptr %139, i64 %idxprom187
  store i32 %138, ptr %arrayidx188, align 4, !tbaa !5
  br label %for.inc189

for.inc189:                                       ; preds = %for.body184
  %141 = load i32, ptr %i, align 4, !tbaa !5
  %inc190 = add nsw i32 %141, 1
  store i32 %inc190, ptr %i, align 4, !tbaa !5
  br label %for.cond182, !llvm.loop !113

for.end191:                                       ; preds = %for.cond182
  br label %if.end192

if.end192:                                        ; preds = %for.end191, %land.lhs.true179, %if.end177
  %142 = load i32, ptr %status, align 4, !tbaa !5
  store i32 %142, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end192, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %nin) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  %143 = load i32, ptr %retval, align 4
  ret i32 %143
}

; Function Attrs: nounwind uwtable
define internal i32 @eplus(ptr noundef %acub, i32 noundef %n, i32 noundef %ne, i32 noundef %x, i32 noundef %y, ptr noundef %pwhy) #0 {
entry:
  %acub.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %ne.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pwhy.addr = alloca ptr, align 8
  %cub = alloca [152 x [4 x i32]], align 16
  %v1 = alloca [229 x i32], align 16
  %v2 = alloca [229 x i32], align 16
  %initclass = alloca [229 x i32], align 16
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %xy = alloca i32, align 4
  %why = alloca i32, align 4
  store ptr %acub, ptr %acub.addr, align 8, !tbaa !9
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store i32 %ne, ptr %ne.addr, align 4, !tbaa !5
  store i32 %x, ptr %x.addr, align 4, !tbaa !5
  store i32 %y, ptr %y.addr, align 4, !tbaa !5
  store ptr %pwhy, ptr %pwhy.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 2432, ptr %cub) #8
  call void @llvm.lifetime.start.p0(i64 916, ptr %v1) #8
  call void @llvm.lifetime.start.p0(i64 916, ptr %v2) #8
  call void @llvm.lifetime.start.p0(i64 916, ptr %initclass) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %xy) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %why) #8
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %mul = mul nsw i32 3, %0
  %1 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %mul1 = mul nsw i32 2, %1
  %cmp = icmp ne i32 %mul, %mul1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.63)
  call void @exit(i32 noundef 1) #10
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %4 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %acub.addr, align 8, !tbaa !9
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %5, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [4 x i32], ptr %arrayidx, i64 0, i64 0
  %7 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [4 x i32], ptr %arrayidx5, i64 0, i64 0
  store i32 %7, ptr %arrayidx6, align 16, !tbaa !5
  %9 = load ptr, ptr %acub.addr, align 8, !tbaa !9
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [4 x i32], ptr %9, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [4 x i32], ptr %arrayidx8, i64 0, i64 1
  %11 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [4 x i32], ptr %arrayidx11, i64 0, i64 1
  store i32 %11, ptr %arrayidx12, align 4, !tbaa !5
  %13 = load ptr, ptr %acub.addr, align 8, !tbaa !9
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [4 x i32], ptr %13, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [4 x i32], ptr %arrayidx14, i64 0, i64 2
  %15 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [4 x i32], ptr %arrayidx17, i64 0, i64 2
  store i32 %15, ptr %arrayidx18, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !114

for.end:                                          ; preds = %for.cond
  %18 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [4 x i32], ptr %arrayidx20, i64 0, i64 0
  %19 = load i32, ptr %arrayidx21, align 16, !tbaa !5
  %20 = load i32, ptr %y.addr, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %19, %20
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %for.end
  store i32 0, ptr %xy, align 4, !tbaa !5
  %21 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom24 = sext i32 %21 to i64
  %arrayidx25 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [4 x i32], ptr %arrayidx25, i64 0, i64 1
  %22 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  store i32 %22, ptr %a, align 4, !tbaa !5
  %23 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom27 = sext i32 %23 to i64
  %arrayidx28 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [4 x i32], ptr %arrayidx28, i64 0, i64 2
  %24 = load i32, ptr %arrayidx29, align 8, !tbaa !5
  store i32 %24, ptr %b, align 4, !tbaa !5
  br label %if.end49

if.else:                                          ; preds = %for.end
  %25 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom30 = sext i32 %25 to i64
  %arrayidx31 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds [4 x i32], ptr %arrayidx31, i64 0, i64 1
  %26 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %27 = load i32, ptr %y.addr, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %26, %27
  br i1 %cmp33, label %if.then34, label %if.else41

if.then34:                                        ; preds = %if.else
  store i32 1, ptr %xy, align 4, !tbaa !5
  %28 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom35 = sext i32 %28 to i64
  %arrayidx36 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [4 x i32], ptr %arrayidx36, i64 0, i64 0
  %29 = load i32, ptr %arrayidx37, align 16, !tbaa !5
  store i32 %29, ptr %a, align 4, !tbaa !5
  %30 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom38 = sext i32 %30 to i64
  %arrayidx39 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [4 x i32], ptr %arrayidx39, i64 0, i64 2
  %31 = load i32, ptr %arrayidx40, align 8, !tbaa !5
  store i32 %31, ptr %b, align 4, !tbaa !5
  br label %if.end48

if.else41:                                        ; preds = %if.else
  store i32 2, ptr %xy, align 4, !tbaa !5
  %32 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom42 = sext i32 %32 to i64
  %arrayidx43 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom42
  %arrayidx44 = getelementptr inbounds [4 x i32], ptr %arrayidx43, i64 0, i64 0
  %33 = load i32, ptr %arrayidx44, align 16, !tbaa !5
  store i32 %33, ptr %a, align 4, !tbaa !5
  %34 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom45 = sext i32 %34 to i64
  %arrayidx46 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom45
  %arrayidx47 = getelementptr inbounds [4 x i32], ptr %arrayidx46, i64 0, i64 1
  %35 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  store i32 %35, ptr %b, align 4, !tbaa !5
  br label %if.end48

if.end48:                                         ; preds = %if.else41, %if.then34
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then23
  %36 = load i32, ptr %y.addr, align 4, !tbaa !5
  %idxprom50 = sext i32 %36 to i64
  %arrayidx51 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom50
  %arrayidx52 = getelementptr inbounds [4 x i32], ptr %arrayidx51, i64 0, i64 0
  %37 = load i32, ptr %arrayidx52, align 16, !tbaa !5
  %38 = load i32, ptr %x.addr, align 4, !tbaa !5
  %cmp53 = icmp eq i32 %37, %38
  br i1 %cmp53, label %if.then54, label %if.else61

if.then54:                                        ; preds = %if.end49
  %39 = load i32, ptr %y.addr, align 4, !tbaa !5
  %idxprom55 = sext i32 %39 to i64
  %arrayidx56 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom55
  %arrayidx57 = getelementptr inbounds [4 x i32], ptr %arrayidx56, i64 0, i64 1
  %40 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  store i32 %40, ptr %c, align 4, !tbaa !5
  %41 = load i32, ptr %y.addr, align 4, !tbaa !5
  %idxprom58 = sext i32 %41 to i64
  %arrayidx59 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom58
  %arrayidx60 = getelementptr inbounds [4 x i32], ptr %arrayidx59, i64 0, i64 2
  %42 = load i32, ptr %arrayidx60, align 8, !tbaa !5
  store i32 %42, ptr %d, align 4, !tbaa !5
  br label %if.end81

if.else61:                                        ; preds = %if.end49
  %43 = load i32, ptr %y.addr, align 4, !tbaa !5
  %idxprom62 = sext i32 %43 to i64
  %arrayidx63 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [4 x i32], ptr %arrayidx63, i64 0, i64 1
  %44 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %45 = load i32, ptr %x.addr, align 4, !tbaa !5
  %cmp65 = icmp eq i32 %44, %45
  br i1 %cmp65, label %if.then66, label %if.else73

if.then66:                                        ; preds = %if.else61
  %46 = load i32, ptr %y.addr, align 4, !tbaa !5
  %idxprom67 = sext i32 %46 to i64
  %arrayidx68 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom67
  %arrayidx69 = getelementptr inbounds [4 x i32], ptr %arrayidx68, i64 0, i64 0
  %47 = load i32, ptr %arrayidx69, align 16, !tbaa !5
  store i32 %47, ptr %c, align 4, !tbaa !5
  %48 = load i32, ptr %y.addr, align 4, !tbaa !5
  %idxprom70 = sext i32 %48 to i64
  %arrayidx71 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom70
  %arrayidx72 = getelementptr inbounds [4 x i32], ptr %arrayidx71, i64 0, i64 2
  %49 = load i32, ptr %arrayidx72, align 8, !tbaa !5
  store i32 %49, ptr %d, align 4, !tbaa !5
  br label %if.end80

if.else73:                                        ; preds = %if.else61
  %50 = load i32, ptr %y.addr, align 4, !tbaa !5
  %idxprom74 = sext i32 %50 to i64
  %arrayidx75 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom74
  %arrayidx76 = getelementptr inbounds [4 x i32], ptr %arrayidx75, i64 0, i64 0
  %51 = load i32, ptr %arrayidx76, align 16, !tbaa !5
  store i32 %51, ptr %c, align 4, !tbaa !5
  %52 = load i32, ptr %y.addr, align 4, !tbaa !5
  %idxprom77 = sext i32 %52 to i64
  %arrayidx78 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom77
  %arrayidx79 = getelementptr inbounds [4 x i32], ptr %arrayidx78, i64 0, i64 1
  %53 = load i32, ptr %arrayidx79, align 4, !tbaa !5
  store i32 %53, ptr %d, align 4, !tbaa !5
  br label %if.end80

if.end80:                                         ; preds = %if.else73, %if.then66
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then54
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc87, %if.end81
  %54 = load i32, ptr %i, align 4, !tbaa !5
  %55 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %cmp83 = icmp slt i32 %54, %55
  br i1 %cmp83, label %for.body84, label %for.end89

for.body84:                                       ; preds = %for.cond82
  %56 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom85 = sext i32 %56 to i64
  %arrayidx86 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom85
  store i32 0, ptr %arrayidx86, align 4, !tbaa !5
  br label %for.inc87

for.inc87:                                        ; preds = %for.body84
  %57 = load i32, ptr %i, align 4, !tbaa !5
  %inc88 = add nsw i32 %57, 1
  store i32 %inc88, ptr %i, align 4, !tbaa !5
  br label %for.cond82, !llvm.loop !115

for.end89:                                        ; preds = %for.cond82
  store i32 0, ptr %why, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 0
  %arraydecay90 = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 0
  %arraydecay91 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 0
  %58 = load i32, ptr %n.addr, align 4, !tbaa !5
  %59 = load i32, ptr %ne.addr, align 4, !tbaa !5
  call void @cubinit(ptr noundef %arraydecay, ptr noundef @eno, ptr noundef %arraydecay90, ptr noundef %arraydecay91, i32 noundef %58, i32 noundef %59)
  %60 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom92 = sext i32 %60 to i64
  %arrayidx93 = getelementptr inbounds [152 x [4 x i32]], ptr @eno, i64 0, i64 %idxprom92
  %61 = load i32, ptr %xy, align 4, !tbaa !5
  %idxprom94 = sext i32 %61 to i64
  %arrayidx95 = getelementptr inbounds [4 x i32], ptr %arrayidx93, i64 0, i64 %idxprom94
  %62 = load i32, ptr %arrayidx95, align 4, !tbaa !5
  %idxprom96 = sext i32 %62 to i64
  %arrayidx97 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom96
  store i32 -1, ptr %arrayidx97, align 4, !tbaa !5
  %arraydecay98 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 0
  %arraydecay99 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 0
  %arraydecay100 = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 0
  %arraydecay101 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 0
  %63 = load i32, ptr %n.addr, align 4, !tbaa !5
  %64 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %call102 = call i32 @cubham(ptr noundef %arraydecay98, ptr noundef @eno, ptr noundef %arraydecay99, ptr noundef %arraydecay100, ptr noundef %arraydecay101, ptr noundef null, ptr noundef null, i32 noundef %63, i32 noundef %64)
  %cmp103 = icmp eq i32 %call102, 1
  br i1 %cmp103, label %if.then104, label %if.end105

if.then104:                                       ; preds = %for.end89
  %65 = load i32, ptr %why, align 4, !tbaa !5
  %or = or i32 %65, 1
  store i32 %or, ptr %why, align 4, !tbaa !5
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %for.end89
  %66 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom106 = sext i32 %66 to i64
  %arrayidx107 = getelementptr inbounds [152 x [4 x i32]], ptr @eno, i64 0, i64 %idxprom106
  %67 = load i32, ptr %xy, align 4, !tbaa !5
  %idxprom108 = sext i32 %67 to i64
  %arrayidx109 = getelementptr inbounds [4 x i32], ptr %arrayidx107, i64 0, i64 %idxprom108
  %68 = load i32, ptr %arrayidx109, align 4, !tbaa !5
  %idxprom110 = sext i32 %68 to i64
  %arrayidx111 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom110
  store i32 0, ptr %arrayidx111, align 4, !tbaa !5
  %69 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom112 = sext i32 %69 to i64
  %arrayidx113 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom112
  %arrayidx114 = getelementptr inbounds [4 x i32], ptr %arrayidx113, i64 0, i64 0
  %70 = load i32, ptr %arrayidx114, align 16, !tbaa !5
  %71 = load i32, ptr %b, align 4, !tbaa !5
  %cmp115 = icmp eq i32 %70, %71
  br i1 %cmp115, label %if.then116, label %if.else120

if.then116:                                       ; preds = %if.end105
  %72 = load i32, ptr %c, align 4, !tbaa !5
  %73 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom117 = sext i32 %73 to i64
  %arrayidx118 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom117
  %arrayidx119 = getelementptr inbounds [4 x i32], ptr %arrayidx118, i64 0, i64 0
  store i32 %72, ptr %arrayidx119, align 16, !tbaa !5
  br label %if.end134

if.else120:                                       ; preds = %if.end105
  %74 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom121 = sext i32 %74 to i64
  %arrayidx122 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom121
  %arrayidx123 = getelementptr inbounds [4 x i32], ptr %arrayidx122, i64 0, i64 1
  %75 = load i32, ptr %arrayidx123, align 4, !tbaa !5
  %76 = load i32, ptr %b, align 4, !tbaa !5
  %cmp124 = icmp eq i32 %75, %76
  br i1 %cmp124, label %if.then125, label %if.else129

if.then125:                                       ; preds = %if.else120
  %77 = load i32, ptr %c, align 4, !tbaa !5
  %78 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom126 = sext i32 %78 to i64
  %arrayidx127 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom126
  %arrayidx128 = getelementptr inbounds [4 x i32], ptr %arrayidx127, i64 0, i64 1
  store i32 %77, ptr %arrayidx128, align 4, !tbaa !5
  br label %if.end133

if.else129:                                       ; preds = %if.else120
  %79 = load i32, ptr %c, align 4, !tbaa !5
  %80 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom130 = sext i32 %80 to i64
  %arrayidx131 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom130
  %arrayidx132 = getelementptr inbounds [4 x i32], ptr %arrayidx131, i64 0, i64 2
  store i32 %79, ptr %arrayidx132, align 8, !tbaa !5
  br label %if.end133

if.end133:                                        ; preds = %if.else129, %if.then125
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.then116
  %81 = load i32, ptr %y.addr, align 4, !tbaa !5
  %idxprom135 = sext i32 %81 to i64
  %arrayidx136 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom135
  %arrayidx137 = getelementptr inbounds [4 x i32], ptr %arrayidx136, i64 0, i64 0
  %82 = load i32, ptr %arrayidx137, align 16, !tbaa !5
  %83 = load i32, ptr %c, align 4, !tbaa !5
  %cmp138 = icmp eq i32 %82, %83
  br i1 %cmp138, label %if.then139, label %if.else143

if.then139:                                       ; preds = %if.end134
  %84 = load i32, ptr %b, align 4, !tbaa !5
  %85 = load i32, ptr %y.addr, align 4, !tbaa !5
  %idxprom140 = sext i32 %85 to i64
  %arrayidx141 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom140
  %arrayidx142 = getelementptr inbounds [4 x i32], ptr %arrayidx141, i64 0, i64 0
  store i32 %84, ptr %arrayidx142, align 16, !tbaa !5
  br label %if.end157

if.else143:                                       ; preds = %if.end134
  %86 = load i32, ptr %y.addr, align 4, !tbaa !5
  %idxprom144 = sext i32 %86 to i64
  %arrayidx145 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom144
  %arrayidx146 = getelementptr inbounds [4 x i32], ptr %arrayidx145, i64 0, i64 1
  %87 = load i32, ptr %arrayidx146, align 4, !tbaa !5
  %88 = load i32, ptr %c, align 4, !tbaa !5
  %cmp147 = icmp eq i32 %87, %88
  br i1 %cmp147, label %if.then148, label %if.else152

if.then148:                                       ; preds = %if.else143
  %89 = load i32, ptr %b, align 4, !tbaa !5
  %90 = load i32, ptr %y.addr, align 4, !tbaa !5
  %idxprom149 = sext i32 %90 to i64
  %arrayidx150 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom149
  %arrayidx151 = getelementptr inbounds [4 x i32], ptr %arrayidx150, i64 0, i64 1
  store i32 %89, ptr %arrayidx151, align 4, !tbaa !5
  br label %if.end156

if.else152:                                       ; preds = %if.else143
  %91 = load i32, ptr %b, align 4, !tbaa !5
  %92 = load i32, ptr %y.addr, align 4, !tbaa !5
  %idxprom153 = sext i32 %92 to i64
  %arrayidx154 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom153
  %arrayidx155 = getelementptr inbounds [4 x i32], ptr %arrayidx154, i64 0, i64 2
  store i32 %91, ptr %arrayidx155, align 8, !tbaa !5
  br label %if.end156

if.end156:                                        ; preds = %if.else152, %if.then148
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.then139
  %93 = load i32, ptr %b, align 4, !tbaa !5
  %idxprom158 = sext i32 %93 to i64
  %arrayidx159 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom158
  %arrayidx160 = getelementptr inbounds [4 x i32], ptr %arrayidx159, i64 0, i64 0
  %94 = load i32, ptr %arrayidx160, align 16, !tbaa !5
  %95 = load i32, ptr %x.addr, align 4, !tbaa !5
  %cmp161 = icmp eq i32 %94, %95
  br i1 %cmp161, label %if.then162, label %if.else166

if.then162:                                       ; preds = %if.end157
  %96 = load i32, ptr %y.addr, align 4, !tbaa !5
  %97 = load i32, ptr %b, align 4, !tbaa !5
  %idxprom163 = sext i32 %97 to i64
  %arrayidx164 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom163
  %arrayidx165 = getelementptr inbounds [4 x i32], ptr %arrayidx164, i64 0, i64 0
  store i32 %96, ptr %arrayidx165, align 16, !tbaa !5
  br label %if.end180

if.else166:                                       ; preds = %if.end157
  %98 = load i32, ptr %b, align 4, !tbaa !5
  %idxprom167 = sext i32 %98 to i64
  %arrayidx168 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom167
  %arrayidx169 = getelementptr inbounds [4 x i32], ptr %arrayidx168, i64 0, i64 1
  %99 = load i32, ptr %arrayidx169, align 4, !tbaa !5
  %100 = load i32, ptr %x.addr, align 4, !tbaa !5
  %cmp170 = icmp eq i32 %99, %100
  br i1 %cmp170, label %if.then171, label %if.else175

if.then171:                                       ; preds = %if.else166
  %101 = load i32, ptr %y.addr, align 4, !tbaa !5
  %102 = load i32, ptr %b, align 4, !tbaa !5
  %idxprom172 = sext i32 %102 to i64
  %arrayidx173 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom172
  %arrayidx174 = getelementptr inbounds [4 x i32], ptr %arrayidx173, i64 0, i64 1
  store i32 %101, ptr %arrayidx174, align 4, !tbaa !5
  br label %if.end179

if.else175:                                       ; preds = %if.else166
  %103 = load i32, ptr %y.addr, align 4, !tbaa !5
  %104 = load i32, ptr %b, align 4, !tbaa !5
  %idxprom176 = sext i32 %104 to i64
  %arrayidx177 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom176
  %arrayidx178 = getelementptr inbounds [4 x i32], ptr %arrayidx177, i64 0, i64 2
  store i32 %103, ptr %arrayidx178, align 8, !tbaa !5
  br label %if.end179

if.end179:                                        ; preds = %if.else175, %if.then171
  br label %if.end180

if.end180:                                        ; preds = %if.end179, %if.then162
  %105 = load i32, ptr %c, align 4, !tbaa !5
  %idxprom181 = sext i32 %105 to i64
  %arrayidx182 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom181
  %arrayidx183 = getelementptr inbounds [4 x i32], ptr %arrayidx182, i64 0, i64 0
  %106 = load i32, ptr %arrayidx183, align 16, !tbaa !5
  %107 = load i32, ptr %y.addr, align 4, !tbaa !5
  %cmp184 = icmp eq i32 %106, %107
  br i1 %cmp184, label %if.then185, label %if.else189

if.then185:                                       ; preds = %if.end180
  %108 = load i32, ptr %x.addr, align 4, !tbaa !5
  %109 = load i32, ptr %c, align 4, !tbaa !5
  %idxprom186 = sext i32 %109 to i64
  %arrayidx187 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom186
  %arrayidx188 = getelementptr inbounds [4 x i32], ptr %arrayidx187, i64 0, i64 0
  store i32 %108, ptr %arrayidx188, align 16, !tbaa !5
  br label %if.end203

if.else189:                                       ; preds = %if.end180
  %110 = load i32, ptr %c, align 4, !tbaa !5
  %idxprom190 = sext i32 %110 to i64
  %arrayidx191 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom190
  %arrayidx192 = getelementptr inbounds [4 x i32], ptr %arrayidx191, i64 0, i64 1
  %111 = load i32, ptr %arrayidx192, align 4, !tbaa !5
  %112 = load i32, ptr %y.addr, align 4, !tbaa !5
  %cmp193 = icmp eq i32 %111, %112
  br i1 %cmp193, label %if.then194, label %if.else198

if.then194:                                       ; preds = %if.else189
  %113 = load i32, ptr %x.addr, align 4, !tbaa !5
  %114 = load i32, ptr %c, align 4, !tbaa !5
  %idxprom195 = sext i32 %114 to i64
  %arrayidx196 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom195
  %arrayidx197 = getelementptr inbounds [4 x i32], ptr %arrayidx196, i64 0, i64 1
  store i32 %113, ptr %arrayidx197, align 4, !tbaa !5
  br label %if.end202

if.else198:                                       ; preds = %if.else189
  %115 = load i32, ptr %x.addr, align 4, !tbaa !5
  %116 = load i32, ptr %c, align 4, !tbaa !5
  %idxprom199 = sext i32 %116 to i64
  %arrayidx200 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom199
  %arrayidx201 = getelementptr inbounds [4 x i32], ptr %arrayidx200, i64 0, i64 2
  store i32 %115, ptr %arrayidx201, align 8, !tbaa !5
  br label %if.end202

if.end202:                                        ; preds = %if.else198, %if.then194
  br label %if.end203

if.end203:                                        ; preds = %if.end202, %if.then185
  %arraydecay204 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 0
  %arraydecay205 = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 0
  %arraydecay206 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 0
  %117 = load i32, ptr %n.addr, align 4, !tbaa !5
  %118 = load i32, ptr %ne.addr, align 4, !tbaa !5
  call void @cubinit(ptr noundef %arraydecay204, ptr noundef @eno, ptr noundef %arraydecay205, ptr noundef %arraydecay206, i32 noundef %117, i32 noundef %118)
  %119 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom207 = sext i32 %119 to i64
  %arrayidx208 = getelementptr inbounds [152 x [4 x i32]], ptr @eno, i64 0, i64 %idxprom207
  %120 = load i32, ptr %xy, align 4, !tbaa !5
  %idxprom209 = sext i32 %120 to i64
  %arrayidx210 = getelementptr inbounds [4 x i32], ptr %arrayidx208, i64 0, i64 %idxprom209
  %121 = load i32, ptr %arrayidx210, align 4, !tbaa !5
  %idxprom211 = sext i32 %121 to i64
  %arrayidx212 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom211
  store i32 -1, ptr %arrayidx212, align 4, !tbaa !5
  %arraydecay213 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 0
  %arraydecay214 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 0
  %arraydecay215 = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 0
  %arraydecay216 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 0
  %122 = load i32, ptr %n.addr, align 4, !tbaa !5
  %123 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %call217 = call i32 @cubham(ptr noundef %arraydecay213, ptr noundef @eno, ptr noundef %arraydecay214, ptr noundef %arraydecay215, ptr noundef %arraydecay216, ptr noundef null, ptr noundef null, i32 noundef %122, i32 noundef %123)
  %cmp218 = icmp eq i32 %call217, 1
  br i1 %cmp218, label %if.then219, label %if.end221

if.then219:                                       ; preds = %if.end203
  %124 = load i32, ptr %why, align 4, !tbaa !5
  %or220 = or i32 %124, 2
  store i32 %or220, ptr %why, align 4, !tbaa !5
  br label %if.end221

if.end221:                                        ; preds = %if.then219, %if.end203
  %125 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom222 = sext i32 %125 to i64
  %arrayidx223 = getelementptr inbounds [152 x [4 x i32]], ptr @eno, i64 0, i64 %idxprom222
  %126 = load i32, ptr %xy, align 4, !tbaa !5
  %idxprom224 = sext i32 %126 to i64
  %arrayidx225 = getelementptr inbounds [4 x i32], ptr %arrayidx223, i64 0, i64 %idxprom224
  %127 = load i32, ptr %arrayidx225, align 4, !tbaa !5
  %idxprom226 = sext i32 %127 to i64
  %arrayidx227 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom226
  store i32 0, ptr %arrayidx227, align 4, !tbaa !5
  %128 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom228 = sext i32 %128 to i64
  %arrayidx229 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom228
  %arrayidx230 = getelementptr inbounds [4 x i32], ptr %arrayidx229, i64 0, i64 0
  %129 = load i32, ptr %arrayidx230, align 16, !tbaa !5
  %130 = load i32, ptr %c, align 4, !tbaa !5
  %cmp231 = icmp eq i32 %129, %130
  br i1 %cmp231, label %if.then232, label %if.else236

if.then232:                                       ; preds = %if.end221
  %131 = load i32, ptr %d, align 4, !tbaa !5
  %132 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom233 = sext i32 %132 to i64
  %arrayidx234 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom233
  %arrayidx235 = getelementptr inbounds [4 x i32], ptr %arrayidx234, i64 0, i64 0
  store i32 %131, ptr %arrayidx235, align 16, !tbaa !5
  br label %if.end250

if.else236:                                       ; preds = %if.end221
  %133 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom237 = sext i32 %133 to i64
  %arrayidx238 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom237
  %arrayidx239 = getelementptr inbounds [4 x i32], ptr %arrayidx238, i64 0, i64 1
  %134 = load i32, ptr %arrayidx239, align 4, !tbaa !5
  %135 = load i32, ptr %c, align 4, !tbaa !5
  %cmp240 = icmp eq i32 %134, %135
  br i1 %cmp240, label %if.then241, label %if.else245

if.then241:                                       ; preds = %if.else236
  %136 = load i32, ptr %d, align 4, !tbaa !5
  %137 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom242 = sext i32 %137 to i64
  %arrayidx243 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom242
  %arrayidx244 = getelementptr inbounds [4 x i32], ptr %arrayidx243, i64 0, i64 1
  store i32 %136, ptr %arrayidx244, align 4, !tbaa !5
  br label %if.end249

if.else245:                                       ; preds = %if.else236
  %138 = load i32, ptr %d, align 4, !tbaa !5
  %139 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom246 = sext i32 %139 to i64
  %arrayidx247 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom246
  %arrayidx248 = getelementptr inbounds [4 x i32], ptr %arrayidx247, i64 0, i64 2
  store i32 %138, ptr %arrayidx248, align 8, !tbaa !5
  br label %if.end249

if.end249:                                        ; preds = %if.else245, %if.then241
  br label %if.end250

if.end250:                                        ; preds = %if.end249, %if.then232
  %140 = load i32, ptr %y.addr, align 4, !tbaa !5
  %idxprom251 = sext i32 %140 to i64
  %arrayidx252 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom251
  %arrayidx253 = getelementptr inbounds [4 x i32], ptr %arrayidx252, i64 0, i64 0
  %141 = load i32, ptr %arrayidx253, align 16, !tbaa !5
  %142 = load i32, ptr %d, align 4, !tbaa !5
  %cmp254 = icmp eq i32 %141, %142
  br i1 %cmp254, label %if.then255, label %if.else259

if.then255:                                       ; preds = %if.end250
  %143 = load i32, ptr %c, align 4, !tbaa !5
  %144 = load i32, ptr %y.addr, align 4, !tbaa !5
  %idxprom256 = sext i32 %144 to i64
  %arrayidx257 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom256
  %arrayidx258 = getelementptr inbounds [4 x i32], ptr %arrayidx257, i64 0, i64 0
  store i32 %143, ptr %arrayidx258, align 16, !tbaa !5
  br label %if.end273

if.else259:                                       ; preds = %if.end250
  %145 = load i32, ptr %y.addr, align 4, !tbaa !5
  %idxprom260 = sext i32 %145 to i64
  %arrayidx261 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom260
  %arrayidx262 = getelementptr inbounds [4 x i32], ptr %arrayidx261, i64 0, i64 1
  %146 = load i32, ptr %arrayidx262, align 4, !tbaa !5
  %147 = load i32, ptr %d, align 4, !tbaa !5
  %cmp263 = icmp eq i32 %146, %147
  br i1 %cmp263, label %if.then264, label %if.else268

if.then264:                                       ; preds = %if.else259
  %148 = load i32, ptr %c, align 4, !tbaa !5
  %149 = load i32, ptr %y.addr, align 4, !tbaa !5
  %idxprom265 = sext i32 %149 to i64
  %arrayidx266 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom265
  %arrayidx267 = getelementptr inbounds [4 x i32], ptr %arrayidx266, i64 0, i64 1
  store i32 %148, ptr %arrayidx267, align 4, !tbaa !5
  br label %if.end272

if.else268:                                       ; preds = %if.else259
  %150 = load i32, ptr %c, align 4, !tbaa !5
  %151 = load i32, ptr %y.addr, align 4, !tbaa !5
  %idxprom269 = sext i32 %151 to i64
  %arrayidx270 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom269
  %arrayidx271 = getelementptr inbounds [4 x i32], ptr %arrayidx270, i64 0, i64 2
  store i32 %150, ptr %arrayidx271, align 8, !tbaa !5
  br label %if.end272

if.end272:                                        ; preds = %if.else268, %if.then264
  br label %if.end273

if.end273:                                        ; preds = %if.end272, %if.then255
  %152 = load i32, ptr %c, align 4, !tbaa !5
  %idxprom274 = sext i32 %152 to i64
  %arrayidx275 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom274
  %arrayidx276 = getelementptr inbounds [4 x i32], ptr %arrayidx275, i64 0, i64 0
  %153 = load i32, ptr %arrayidx276, align 16, !tbaa !5
  %154 = load i32, ptr %x.addr, align 4, !tbaa !5
  %cmp277 = icmp eq i32 %153, %154
  br i1 %cmp277, label %if.then278, label %if.else282

if.then278:                                       ; preds = %if.end273
  %155 = load i32, ptr %y.addr, align 4, !tbaa !5
  %156 = load i32, ptr %c, align 4, !tbaa !5
  %idxprom279 = sext i32 %156 to i64
  %arrayidx280 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom279
  %arrayidx281 = getelementptr inbounds [4 x i32], ptr %arrayidx280, i64 0, i64 0
  store i32 %155, ptr %arrayidx281, align 16, !tbaa !5
  br label %if.end296

if.else282:                                       ; preds = %if.end273
  %157 = load i32, ptr %c, align 4, !tbaa !5
  %idxprom283 = sext i32 %157 to i64
  %arrayidx284 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom283
  %arrayidx285 = getelementptr inbounds [4 x i32], ptr %arrayidx284, i64 0, i64 1
  %158 = load i32, ptr %arrayidx285, align 4, !tbaa !5
  %159 = load i32, ptr %x.addr, align 4, !tbaa !5
  %cmp286 = icmp eq i32 %158, %159
  br i1 %cmp286, label %if.then287, label %if.else291

if.then287:                                       ; preds = %if.else282
  %160 = load i32, ptr %y.addr, align 4, !tbaa !5
  %161 = load i32, ptr %c, align 4, !tbaa !5
  %idxprom288 = sext i32 %161 to i64
  %arrayidx289 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom288
  %arrayidx290 = getelementptr inbounds [4 x i32], ptr %arrayidx289, i64 0, i64 1
  store i32 %160, ptr %arrayidx290, align 4, !tbaa !5
  br label %if.end295

if.else291:                                       ; preds = %if.else282
  %162 = load i32, ptr %y.addr, align 4, !tbaa !5
  %163 = load i32, ptr %c, align 4, !tbaa !5
  %idxprom292 = sext i32 %163 to i64
  %arrayidx293 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom292
  %arrayidx294 = getelementptr inbounds [4 x i32], ptr %arrayidx293, i64 0, i64 2
  store i32 %162, ptr %arrayidx294, align 8, !tbaa !5
  br label %if.end295

if.end295:                                        ; preds = %if.else291, %if.then287
  br label %if.end296

if.end296:                                        ; preds = %if.end295, %if.then278
  %164 = load i32, ptr %d, align 4, !tbaa !5
  %idxprom297 = sext i32 %164 to i64
  %arrayidx298 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom297
  %arrayidx299 = getelementptr inbounds [4 x i32], ptr %arrayidx298, i64 0, i64 0
  %165 = load i32, ptr %arrayidx299, align 16, !tbaa !5
  %166 = load i32, ptr %y.addr, align 4, !tbaa !5
  %cmp300 = icmp eq i32 %165, %166
  br i1 %cmp300, label %if.then301, label %if.else305

if.then301:                                       ; preds = %if.end296
  %167 = load i32, ptr %x.addr, align 4, !tbaa !5
  %168 = load i32, ptr %d, align 4, !tbaa !5
  %idxprom302 = sext i32 %168 to i64
  %arrayidx303 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom302
  %arrayidx304 = getelementptr inbounds [4 x i32], ptr %arrayidx303, i64 0, i64 0
  store i32 %167, ptr %arrayidx304, align 16, !tbaa !5
  br label %if.end319

if.else305:                                       ; preds = %if.end296
  %169 = load i32, ptr %d, align 4, !tbaa !5
  %idxprom306 = sext i32 %169 to i64
  %arrayidx307 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom306
  %arrayidx308 = getelementptr inbounds [4 x i32], ptr %arrayidx307, i64 0, i64 1
  %170 = load i32, ptr %arrayidx308, align 4, !tbaa !5
  %171 = load i32, ptr %y.addr, align 4, !tbaa !5
  %cmp309 = icmp eq i32 %170, %171
  br i1 %cmp309, label %if.then310, label %if.else314

if.then310:                                       ; preds = %if.else305
  %172 = load i32, ptr %x.addr, align 4, !tbaa !5
  %173 = load i32, ptr %d, align 4, !tbaa !5
  %idxprom311 = sext i32 %173 to i64
  %arrayidx312 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom311
  %arrayidx313 = getelementptr inbounds [4 x i32], ptr %arrayidx312, i64 0, i64 1
  store i32 %172, ptr %arrayidx313, align 4, !tbaa !5
  br label %if.end318

if.else314:                                       ; preds = %if.else305
  %174 = load i32, ptr %x.addr, align 4, !tbaa !5
  %175 = load i32, ptr %d, align 4, !tbaa !5
  %idxprom315 = sext i32 %175 to i64
  %arrayidx316 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 %idxprom315
  %arrayidx317 = getelementptr inbounds [4 x i32], ptr %arrayidx316, i64 0, i64 2
  store i32 %174, ptr %arrayidx317, align 8, !tbaa !5
  br label %if.end318

if.end318:                                        ; preds = %if.else314, %if.then310
  br label %if.end319

if.end319:                                        ; preds = %if.end318, %if.then301
  %arraydecay320 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 0
  %arraydecay321 = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 0
  %arraydecay322 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 0
  %176 = load i32, ptr %n.addr, align 4, !tbaa !5
  %177 = load i32, ptr %ne.addr, align 4, !tbaa !5
  call void @cubinit(ptr noundef %arraydecay320, ptr noundef @eno, ptr noundef %arraydecay321, ptr noundef %arraydecay322, i32 noundef %176, i32 noundef %177)
  %178 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom323 = sext i32 %178 to i64
  %arrayidx324 = getelementptr inbounds [152 x [4 x i32]], ptr @eno, i64 0, i64 %idxprom323
  %179 = load i32, ptr %xy, align 4, !tbaa !5
  %idxprom325 = sext i32 %179 to i64
  %arrayidx326 = getelementptr inbounds [4 x i32], ptr %arrayidx324, i64 0, i64 %idxprom325
  %180 = load i32, ptr %arrayidx326, align 4, !tbaa !5
  %idxprom327 = sext i32 %180 to i64
  %arrayidx328 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 %idxprom327
  store i32 -1, ptr %arrayidx328, align 4, !tbaa !5
  %arraydecay329 = getelementptr inbounds [152 x [4 x i32]], ptr %cub, i64 0, i64 0
  %arraydecay330 = getelementptr inbounds [229 x i32], ptr %initclass, i64 0, i64 0
  %arraydecay331 = getelementptr inbounds [229 x i32], ptr %v1, i64 0, i64 0
  %arraydecay332 = getelementptr inbounds [229 x i32], ptr %v2, i64 0, i64 0
  %181 = load i32, ptr %n.addr, align 4, !tbaa !5
  %182 = load i32, ptr %ne.addr, align 4, !tbaa !5
  %call333 = call i32 @cubham(ptr noundef %arraydecay329, ptr noundef @eno, ptr noundef %arraydecay330, ptr noundef %arraydecay331, ptr noundef %arraydecay332, ptr noundef null, ptr noundef null, i32 noundef %181, i32 noundef %182)
  %cmp334 = icmp eq i32 %call333, 1
  br i1 %cmp334, label %if.then335, label %if.end337

if.then335:                                       ; preds = %if.end319
  %183 = load i32, ptr %why, align 4, !tbaa !5
  %or336 = or i32 %183, 4
  store i32 %or336, ptr %why, align 4, !tbaa !5
  br label %if.end337

if.end337:                                        ; preds = %if.then335, %if.end319
  %184 = load i32, ptr %why, align 4, !tbaa !5
  %185 = load ptr, ptr %pwhy.addr, align 8, !tbaa !9
  store i32 %184, ptr %185, align 4, !tbaa !5
  %186 = load i32, ptr %why, align 4, !tbaa !5
  %cmp338 = icmp eq i32 %186, 7
  %conv = zext i1 %cmp338 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr %why) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %xy) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %initclass) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %v2) #8
  call void @llvm.lifetime.end.p0(i64 916, ptr %v1) #8
  call void @llvm.lifetime.end.p0(i64 2432, ptr %cub) #8
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @classout(ptr noundef %g, ptr noundef %nodat, i32 noundef %v, i32 noundef %w, i32 noundef %en) #0 {
entry:
  %g.addr = alloca ptr, align 8
  %nodat.addr = alloca ptr, align 8
  %v.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %en.addr = alloca i32, align 4
  %np = alloca ptr, align 8
  store ptr %g, ptr %g.addr, align 8, !tbaa !9
  store ptr %nodat, ptr %nodat.addr, align 8, !tbaa !9
  store i32 %v, ptr %v.addr, align 4, !tbaa !5
  store i32 %w, ptr %w.addr, align 4, !tbaa !5
  store i32 %en, ptr %en.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %np) #8
  %0 = load ptr, ptr %nodat.addr, align 8, !tbaa !9
  store ptr %0, ptr %np, align 8, !tbaa !9
  %1 = load ptr, ptr %np, align 8, !tbaa !9
  %dout = getelementptr inbounds %struct.nodedata, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %v.addr, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [152 x i32], ptr %dout, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %arrayidx, align 4, !tbaa !5
  %4 = load ptr, ptr %np, align 8, !tbaa !9
  %dout1 = getelementptr inbounds %struct.nodedata, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %w.addr, align 4, !tbaa !5
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [152 x i32], ptr %dout1, i64 0, i64 %idxprom2
  %6 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %inc4 = add nsw i32 %6, 1
  store i32 %inc4, ptr %arrayidx3, align 4, !tbaa !5
  %7 = load ptr, ptr %np, align 8, !tbaa !9
  %class = getelementptr inbounds %struct.nodedata, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %en.addr, align 4, !tbaa !5
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [229 x i32], ptr %class, i64 0, i64 %idxprom5
  store i32 -1, ptr %arrayidx6, align 4, !tbaa !5
  %9 = load i32, ptr %en.addr, align 4, !tbaa !5
  %10 = load ptr, ptr @classstackptr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i32, ptr %10, i32 1
  store ptr %incdec.ptr, ptr @classstackptr, align 8, !tbaa !9
  store i32 %9, ptr %10, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %np) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @classin(ptr noundef %g, ptr noundef %eno, ptr noundef %nodat, i32 noundef %v, i32 noundef %w, i32 noundef %en, ptr noundef %nin, i32 noundef %nv) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca ptr, align 8
  %eno.addr = alloca ptr, align 8
  %nodat.addr = alloca ptr, align 8
  %v.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %en.addr = alloca i32, align 4
  %nin.addr = alloca ptr, align 8
  %nv.addr = alloca i32, align 4
  %np = alloca ptr, align 8
  %farend = alloca ptr, align 8
  %gp = alloca ptr, align 8
  %fv = alloca i32, align 4
  %fw = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8, !tbaa !9
  store ptr %eno, ptr %eno.addr, align 8, !tbaa !9
  store ptr %nodat, ptr %nodat.addr, align 8, !tbaa !9
  store i32 %v, ptr %v.addr, align 4, !tbaa !5
  store i32 %w, ptr %w.addr, align 4, !tbaa !5
  store i32 %en, ptr %en.addr, align 4, !tbaa !5
  store ptr %nin, ptr %nin.addr, align 8, !tbaa !9
  store i32 %nv, ptr %nv.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %np) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %farend) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %gp) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %fv) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %fw) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  %0 = load ptr, ptr %nodat.addr, align 8, !tbaa !9
  store ptr %0, ptr %np, align 8, !tbaa !9
  %1 = load ptr, ptr %np, align 8, !tbaa !9
  %din = getelementptr inbounds %struct.nodedata, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %v.addr, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [152 x i32], ptr %din, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %arrayidx, align 4, !tbaa !5
  %4 = load ptr, ptr %np, align 8, !tbaa !9
  %din1 = getelementptr inbounds %struct.nodedata, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %w.addr, align 4, !tbaa !5
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [152 x i32], ptr %din1, i64 0, i64 %idxprom2
  %6 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %inc4 = add nsw i32 %6, 1
  store i32 %inc4, ptr %arrayidx3, align 4, !tbaa !5
  %7 = load ptr, ptr %np, align 8, !tbaa !9
  %class = getelementptr inbounds %struct.nodedata, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %en.addr, align 4, !tbaa !5
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [229 x i32], ptr %class, i64 0, i64 %idxprom5
  store i32 1, ptr %arrayidx6, align 4, !tbaa !5
  %9 = load i32, ptr %en.addr, align 4, !tbaa !5
  %10 = load ptr, ptr @classstackptr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i32, ptr %10, i32 1
  store ptr %incdec.ptr, ptr @classstackptr, align 8, !tbaa !9
  store i32 %9, ptr %10, align 4, !tbaa !5
  %11 = load ptr, ptr %nin.addr, align 8, !tbaa !9
  %12 = load i32, ptr %11, align 4, !tbaa !5
  %inc7 = add nsw i32 %12, 1
  store i32 %inc7, ptr %11, align 4, !tbaa !5
  %13 = load ptr, ptr %nin.addr, align 8, !tbaa !9
  %14 = load i32, ptr %13, align 4, !tbaa !5
  %15 = load i32, ptr %nv.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %14, %15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = load ptr, ptr %np, align 8, !tbaa !9
  %farend8 = getelementptr inbounds %struct.nodedata, ptr %16, i32 0, i32 3
  %arraydecay = getelementptr inbounds [152 x i32], ptr %farend8, i64 0, i64 0
  store ptr %arraydecay, ptr %farend, align 8, !tbaa !9
  %17 = load ptr, ptr %farend, align 8, !tbaa !9
  %18 = load i32, ptr %v.addr, align 4, !tbaa !5
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %17, i64 %idxprom9
  %19 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  store i32 %19, ptr %fv, align 4, !tbaa !5
  %20 = load ptr, ptr %farend, align 8, !tbaa !9
  %21 = load i32, ptr %w.addr, align 4, !tbaa !5
  %idxprom11 = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %20, i64 %idxprom11
  %22 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  store i32 %22, ptr %fw, align 4, !tbaa !5
  %23 = load ptr, ptr %farend, align 8, !tbaa !9
  %24 = load i32, ptr %fv, align 4, !tbaa !5
  %idxprom13 = sext i32 %24 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %23, i64 %idxprom13
  %25 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %26 = load ptr, ptr @classstackptr, align 8, !tbaa !9
  %incdec.ptr15 = getelementptr inbounds i32, ptr %26, i32 1
  store ptr %incdec.ptr15, ptr @classstackptr, align 8, !tbaa !9
  store i32 %25, ptr %26, align 4, !tbaa !5
  %27 = load i32, ptr %fv, align 4, !tbaa !5
  %sub = sub nsw i32 0, %27
  %sub16 = sub nsw i32 %sub, 1
  %28 = load ptr, ptr @classstackptr, align 8, !tbaa !9
  %incdec.ptr17 = getelementptr inbounds i32, ptr %28, i32 1
  store ptr %incdec.ptr17, ptr @classstackptr, align 8, !tbaa !9
  store i32 %sub16, ptr %28, align 4, !tbaa !5
  %29 = load ptr, ptr %farend, align 8, !tbaa !9
  %30 = load i32, ptr %fw, align 4, !tbaa !5
  %idxprom18 = sext i32 %30 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %29, i64 %idxprom18
  %31 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %32 = load ptr, ptr @classstackptr, align 8, !tbaa !9
  %incdec.ptr20 = getelementptr inbounds i32, ptr %32, i32 1
  store ptr %incdec.ptr20, ptr @classstackptr, align 8, !tbaa !9
  store i32 %31, ptr %32, align 4, !tbaa !5
  %33 = load i32, ptr %fw, align 4, !tbaa !5
  %sub21 = sub nsw i32 0, %33
  %sub22 = sub nsw i32 %sub21, 1
  %34 = load ptr, ptr @classstackptr, align 8, !tbaa !9
  %incdec.ptr23 = getelementptr inbounds i32, ptr %34, i32 1
  store ptr %incdec.ptr23, ptr @classstackptr, align 8, !tbaa !9
  store i32 %sub22, ptr %34, align 4, !tbaa !5
  %35 = load i32, ptr %fw, align 4, !tbaa !5
  %36 = load ptr, ptr %farend, align 8, !tbaa !9
  %37 = load i32, ptr %fv, align 4, !tbaa !5
  %idxprom24 = sext i32 %37 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %36, i64 %idxprom24
  store i32 %35, ptr %arrayidx25, align 4, !tbaa !5
  %38 = load i32, ptr %fv, align 4, !tbaa !5
  %39 = load ptr, ptr %farend, align 8, !tbaa !9
  %40 = load i32, ptr %fw, align 4, !tbaa !5
  %idxprom26 = sext i32 %40 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %39, i64 %idxprom26
  store i32 %38, ptr %arrayidx27, align 4, !tbaa !5
  %41 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %42 = load i32, ptr %fv, align 4, !tbaa !5
  %idxprom28 = sext i32 %42 to i64
  %arrayidx29 = getelementptr inbounds [4 x i32], ptr %41, i64 %idxprom28
  %arraydecay30 = getelementptr inbounds [4 x i32], ptr %arrayidx29, i64 0, i64 0
  store ptr %arraydecay30, ptr %gp, align 8, !tbaa !9
  %43 = load ptr, ptr %gp, align 8, !tbaa !9
  %arrayidx31 = getelementptr inbounds i32, ptr %43, i64 0
  %44 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %45 = load i32, ptr %fw, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %44, %45
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %if.end44

if.else:                                          ; preds = %if.end
  %46 = load ptr, ptr %gp, align 8, !tbaa !9
  %arrayidx34 = getelementptr inbounds i32, ptr %46, i64 1
  %47 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %48 = load i32, ptr %fw, align 4, !tbaa !5
  %cmp35 = icmp eq i32 %47, %48
  br i1 %cmp35, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.else
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %if.end43

if.else37:                                        ; preds = %if.else
  %49 = load ptr, ptr %gp, align 8, !tbaa !9
  %arrayidx38 = getelementptr inbounds i32, ptr %49, i64 2
  %50 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %51 = load i32, ptr %fw, align 4, !tbaa !5
  %cmp39 = icmp eq i32 %50, %51
  br i1 %cmp39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.else37
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %if.end42

if.else41:                                        ; preds = %if.else37
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.then40
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then36
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then33
  %52 = load ptr, ptr %eno.addr, align 8, !tbaa !9
  %53 = load i32, ptr %fv, align 4, !tbaa !5
  %idxprom45 = sext i32 %53 to i64
  %arrayidx46 = getelementptr inbounds [4 x i32], ptr %52, i64 %idxprom45
  %54 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom47 = sext i32 %54 to i64
  %arrayidx48 = getelementptr inbounds [4 x i32], ptr %arrayidx46, i64 0, i64 %idxprom47
  %55 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  store i32 %55, ptr %i, align 4, !tbaa !5
  %56 = load ptr, ptr %np, align 8, !tbaa !9
  %class49 = getelementptr inbounds %struct.nodedata, ptr %56, i32 0, i32 0
  %57 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom50 = sext i32 %57 to i64
  %arrayidx51 = getelementptr inbounds [229 x i32], ptr %class49, i64 0, i64 %idxprom50
  %58 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %cmp52 = icmp eq i32 %58, 0
  br i1 %cmp52, label %if.then53, label %if.end75

if.then53:                                        ; preds = %if.end44
  %59 = load i32, ptr %fv, align 4, !tbaa !5
  %idxprom54 = sext i32 %59 to i64
  %arrayidx55 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom54
  %60 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %61 = load i32, ptr @stacklev, align 4, !tbaa !5
  %cmp56 = icmp ne i32 %60, %61
  br i1 %cmp56, label %if.then57, label %if.end61

if.then57:                                        ; preds = %if.then53
  %62 = load i32, ptr @stacklev, align 4, !tbaa !5
  %63 = load i32, ptr %fv, align 4, !tbaa !5
  %idxprom58 = sext i32 %63 to i64
  %arrayidx59 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom58
  store i32 %62, ptr %arrayidx59, align 4, !tbaa !5
  %64 = load i32, ptr %fv, align 4, !tbaa !5
  %65 = load ptr, ptr @stackptr, align 8, !tbaa !9
  %incdec.ptr60 = getelementptr inbounds i32, ptr %65, i32 1
  store ptr %incdec.ptr60, ptr @stackptr, align 8, !tbaa !9
  store i32 %64, ptr %65, align 4, !tbaa !5
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %if.then53
  %66 = load i32, ptr %fw, align 4, !tbaa !5
  %idxprom62 = sext i32 %66 to i64
  %arrayidx63 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom62
  %67 = load i32, ptr %arrayidx63, align 4, !tbaa !5
  %68 = load i32, ptr @stacklev, align 4, !tbaa !5
  %cmp64 = icmp ne i32 %67, %68
  br i1 %cmp64, label %if.then65, label %if.end69

if.then65:                                        ; preds = %if.end61
  %69 = load i32, ptr @stacklev, align 4, !tbaa !5
  %70 = load i32, ptr %fw, align 4, !tbaa !5
  %idxprom66 = sext i32 %70 to i64
  %arrayidx67 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom66
  store i32 %69, ptr %arrayidx67, align 4, !tbaa !5
  %71 = load i32, ptr %fw, align 4, !tbaa !5
  %72 = load ptr, ptr @stackptr, align 8, !tbaa !9
  %incdec.ptr68 = getelementptr inbounds i32, ptr %72, i32 1
  store ptr %incdec.ptr68, ptr @stackptr, align 8, !tbaa !9
  store i32 %71, ptr %72, align 4, !tbaa !5
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %if.end61
  %73 = load ptr, ptr %nin.addr, align 8, !tbaa !9
  %74 = load i32, ptr %73, align 4, !tbaa !5
  %75 = load i32, ptr %nv.addr, align 4, !tbaa !5
  %sub70 = sub nsw i32 %75, 1
  %cmp71 = icmp eq i32 %74, %sub70
  br i1 %cmp71, label %if.then72, label %if.else73

if.then72:                                        ; preds = %if.end69
  %76 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %77 = load ptr, ptr %eno.addr, align 8, !tbaa !9
  %78 = load ptr, ptr %np, align 8, !tbaa !9
  %79 = load i32, ptr %fv, align 4, !tbaa !5
  %80 = load i32, ptr %fw, align 4, !tbaa !5
  %81 = load i32, ptr %i, align 4, !tbaa !5
  %82 = load ptr, ptr %nin.addr, align 8, !tbaa !9
  %83 = load i32, ptr %nv.addr, align 4, !tbaa !5
  %call = call i32 @classin(ptr noundef %76, ptr noundef %77, ptr noundef %78, i32 noundef %79, i32 noundef %80, i32 noundef %81, ptr noundef %82, i32 noundef %83)
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else73:                                        ; preds = %if.end69
  %84 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %85 = load ptr, ptr %np, align 8, !tbaa !9
  %86 = load i32, ptr %fv, align 4, !tbaa !5
  %87 = load i32, ptr %fw, align 4, !tbaa !5
  %88 = load i32, ptr %i, align 4, !tbaa !5
  %call74 = call i32 @classout(ptr noundef %84, ptr noundef %85, i32 noundef %86, i32 noundef %87, i32 noundef %88)
  store i32 %call74, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end75:                                         ; preds = %if.end44
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.else73, %if.then72, %if.else41, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %fw) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %fv) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %gp) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %farend) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %np) #8
  %89 = load i32, ptr %retval, align 4
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define internal i32 @hamnode(ptr noundef %g, ptr noundef %eno, ptr noundef %v1, ptr noundef %v2, ptr noundef %nodat, i32 noundef %level, i32 noundef %nin, i32 noundef %nv) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca ptr, align 8
  %eno.addr = alloca ptr, align 8
  %v1.addr = alloca ptr, align 8
  %v2.addr = alloca ptr, align 8
  %nodat.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %nin.addr = alloca i32, align 4
  %nv.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %status = alloca i32, align 4
  %v = alloca i32, align 4
  %w = alloca i32, align 4
  %en = alloca i32, align 4
  %gv = alloca ptr, align 8
  %enov = alloca ptr, align 8
  %csptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8, !tbaa !9
  store ptr %eno, ptr %eno.addr, align 8, !tbaa !9
  store ptr %v1, ptr %v1.addr, align 8, !tbaa !9
  store ptr %v2, ptr %v2.addr, align 8, !tbaa !9
  store ptr %nodat, ptr %nodat.addr, align 8, !tbaa !9
  store i32 %level, ptr %level.addr, align 4, !tbaa !5
  store i32 %nin, ptr %nin.addr, align 4, !tbaa !5
  store i32 %nv, ptr %nv.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %en) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %gv) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %enov) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %csptr) #8
  %0 = load i64, ptr @nodecount, align 8, !tbaa !11
  %inc = add nsw i64 %0, 1
  store i64 %inc, ptr @nodecount, align 8, !tbaa !11
  %1 = load i64, ptr @maxnodes, align 8, !tbaa !11
  %cmp = icmp sgt i64 %inc, %1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr @maxnodes, align 8, !tbaa !11
  %cmp1 = icmp ne i64 %2, 2147483647
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %4 = load ptr, ptr %eno.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %nodat.addr, align 8, !tbaa !9
  %6 = load i32, ptr %nv.addr, align 4, !tbaa !5
  %call = call i32 @propagate(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %nin.addr, i32 noundef %6)
  store i32 %call, ptr %status, align 4, !tbaa !5
  %7 = load i32, ptr %status, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %7, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %8 = load i32, ptr %status, align 4, !tbaa !5
  store i32 %8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = load i32, ptr %nv.addr, align 4, !tbaa !5
  store i32 %9, ptr %v, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end8, %if.end4
  %10 = load i32, ptr %v, align 4, !tbaa !5
  %dec = add nsw i32 %10, -1
  store i32 %dec, ptr %v, align 4, !tbaa !5
  %cmp5 = icmp sge i32 %dec, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %nodat.addr, align 8, !tbaa !9
  %din = getelementptr inbounds %struct.nodedata, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [152 x i32], ptr %din, i64 0, i64 %idxprom
  %13 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %13, 1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.body
  br label %for.end

if.end8:                                          ; preds = %for.body
  br label %for.cond, !llvm.loop !116

for.end:                                          ; preds = %if.then7, %for.cond
  %14 = load i32, ptr %v, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %14, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.end
  store i32 0, ptr %v, align 4, !tbaa !5
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %for.end
  %15 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %16 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom12 = sext i32 %16 to i64
  %arrayidx13 = getelementptr inbounds [4 x i32], ptr %15, i64 %idxprom12
  %arraydecay = getelementptr inbounds [4 x i32], ptr %arrayidx13, i64 0, i64 0
  store ptr %arraydecay, ptr %gv, align 8, !tbaa !9
  %17 = load ptr, ptr %eno.addr, align 8, !tbaa !9
  %18 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds [4 x i32], ptr %17, i64 %idxprom14
  %arraydecay16 = getelementptr inbounds [4 x i32], ptr %arrayidx15, i64 0, i64 0
  store ptr %arraydecay16, ptr %enov, align 8, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %if.end11
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %19, 3
  br i1 %cmp18, label %for.body19, label %for.end151

for.body19:                                       ; preds = %for.cond17
  %20 = load ptr, ptr %enov, align 8, !tbaa !9
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %21 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %20, i64 %idxprom20
  %22 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  store i32 %22, ptr %en, align 4, !tbaa !5
  %23 = load ptr, ptr %nodat.addr, align 8, !tbaa !9
  %class = getelementptr inbounds %struct.nodedata, ptr %23, i32 0, i32 0
  %24 = load i32, ptr %en, align 4, !tbaa !5
  %idxprom22 = sext i32 %24 to i64
  %arrayidx23 = getelementptr inbounds [229 x i32], ptr %class, i64 0, i64 %idxprom22
  %25 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %25, 0
  br i1 %cmp24, label %if.then25, label %if.end149

if.then25:                                        ; preds = %for.body19
  %26 = load ptr, ptr %gv, align 8, !tbaa !9
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %27 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %26, i64 %idxprom26
  %28 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  store i32 %28, ptr %w, align 4, !tbaa !5
  %29 = load ptr, ptr @classstackptr, align 8, !tbaa !9
  store ptr %29, ptr %csptr, align 8, !tbaa !9
  %30 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %31 = load ptr, ptr %nodat.addr, align 8, !tbaa !9
  %32 = load i32, ptr %v, align 4, !tbaa !5
  %33 = load i32, ptr %w, align 4, !tbaa !5
  %34 = load i32, ptr %en, align 4, !tbaa !5
  %call28 = call i32 @classout(ptr noundef %30, ptr noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34)
  store i32 %call28, ptr %status, align 4, !tbaa !5
  %35 = load i32, ptr %status, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %35, 1
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then25
  br label %for.end151

if.end31:                                         ; preds = %if.then25
  %36 = load i32, ptr %status, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %36, -1
  br i1 %cmp32, label %if.then33, label %if.end75

if.then33:                                        ; preds = %if.end31
  br label %while.cond

while.cond:                                       ; preds = %if.end74, %if.then33
  %37 = load ptr, ptr @classstackptr, align 8, !tbaa !9
  %38 = load ptr, ptr %csptr, align 8, !tbaa !9
  %cmp34 = icmp ugt ptr %37, %38
  br i1 %cmp34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load ptr, ptr @classstackptr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i32, ptr %39, i32 -1
  store ptr %incdec.ptr, ptr @classstackptr, align 8, !tbaa !9
  %40 = load i32, ptr %incdec.ptr, align 4, !tbaa !5
  store i32 %40, ptr %p, align 4, !tbaa !5
  %41 = load i32, ptr %p, align 4, !tbaa !5
  %cmp35 = icmp sge i32 %41, 0
  br i1 %cmp35, label %if.then36, label %if.else69

if.then36:                                        ; preds = %while.body
  %42 = load ptr, ptr %nodat.addr, align 8, !tbaa !9
  %class37 = getelementptr inbounds %struct.nodedata, ptr %42, i32 0, i32 0
  %43 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom38 = sext i32 %43 to i64
  %arrayidx39 = getelementptr inbounds [229 x i32], ptr %class37, i64 0, i64 %idxprom38
  %44 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %44, 1
  br i1 %cmp40, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.then36
  %45 = load ptr, ptr %nodat.addr, align 8, !tbaa !9
  %din42 = getelementptr inbounds %struct.nodedata, ptr %45, i32 0, i32 1
  %46 = load ptr, ptr %v1.addr, align 8, !tbaa !9
  %47 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom43 = sext i32 %47 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %46, i64 %idxprom43
  %48 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %idxprom45 = sext i32 %48 to i64
  %arrayidx46 = getelementptr inbounds [152 x i32], ptr %din42, i64 0, i64 %idxprom45
  %49 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %dec47 = add nsw i32 %49, -1
  store i32 %dec47, ptr %arrayidx46, align 4, !tbaa !5
  %50 = load ptr, ptr %nodat.addr, align 8, !tbaa !9
  %din48 = getelementptr inbounds %struct.nodedata, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %v2.addr, align 8, !tbaa !9
  %52 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom49 = sext i32 %52 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %51, i64 %idxprom49
  %53 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %idxprom51 = sext i32 %53 to i64
  %arrayidx52 = getelementptr inbounds [152 x i32], ptr %din48, i64 0, i64 %idxprom51
  %54 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %dec53 = add nsw i32 %54, -1
  store i32 %dec53, ptr %arrayidx52, align 4, !tbaa !5
  br label %if.end65

if.else:                                          ; preds = %if.then36
  %55 = load ptr, ptr %nodat.addr, align 8, !tbaa !9
  %dout = getelementptr inbounds %struct.nodedata, ptr %55, i32 0, i32 2
  %56 = load ptr, ptr %v1.addr, align 8, !tbaa !9
  %57 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom54 = sext i32 %57 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %56, i64 %idxprom54
  %58 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %idxprom56 = sext i32 %58 to i64
  %arrayidx57 = getelementptr inbounds [152 x i32], ptr %dout, i64 0, i64 %idxprom56
  %59 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %dec58 = add nsw i32 %59, -1
  store i32 %dec58, ptr %arrayidx57, align 4, !tbaa !5
  %60 = load ptr, ptr %nodat.addr, align 8, !tbaa !9
  %dout59 = getelementptr inbounds %struct.nodedata, ptr %60, i32 0, i32 2
  %61 = load ptr, ptr %v2.addr, align 8, !tbaa !9
  %62 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom60 = sext i32 %62 to i64
  %arrayidx61 = getelementptr inbounds i32, ptr %61, i64 %idxprom60
  %63 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %idxprom62 = sext i32 %63 to i64
  %arrayidx63 = getelementptr inbounds [152 x i32], ptr %dout59, i64 0, i64 %idxprom62
  %64 = load i32, ptr %arrayidx63, align 4, !tbaa !5
  %dec64 = add nsw i32 %64, -1
  store i32 %dec64, ptr %arrayidx63, align 4, !tbaa !5
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then41
  %65 = load ptr, ptr %nodat.addr, align 8, !tbaa !9
  %class66 = getelementptr inbounds %struct.nodedata, ptr %65, i32 0, i32 0
  %66 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom67 = sext i32 %66 to i64
  %arrayidx68 = getelementptr inbounds [229 x i32], ptr %class66, i64 0, i64 %idxprom67
  store i32 0, ptr %arrayidx68, align 4, !tbaa !5
  br label %if.end74

if.else69:                                        ; preds = %while.body
  %67 = load ptr, ptr @classstackptr, align 8, !tbaa !9
  %incdec.ptr70 = getelementptr inbounds i32, ptr %67, i32 -1
  store ptr %incdec.ptr70, ptr @classstackptr, align 8, !tbaa !9
  %68 = load i32, ptr %incdec.ptr70, align 4, !tbaa !5
  store i32 %68, ptr %q, align 4, !tbaa !5
  %69 = load i32, ptr %q, align 4, !tbaa !5
  %70 = load ptr, ptr %nodat.addr, align 8, !tbaa !9
  %farend = getelementptr inbounds %struct.nodedata, ptr %70, i32 0, i32 3
  %71 = load i32, ptr %p, align 4, !tbaa !5
  %sub = sub nsw i32 0, %71
  %sub71 = sub nsw i32 %sub, 1
  %idxprom72 = sext i32 %sub71 to i64
  %arrayidx73 = getelementptr inbounds [152 x i32], ptr %farend, i64 0, i64 %idxprom72
  store i32 %69, ptr %arrayidx73, align 4, !tbaa !5
  br label %if.end74

if.end74:                                         ; preds = %if.else69, %if.end65
  br label %while.cond, !llvm.loop !117

while.end:                                        ; preds = %while.cond
  br label %for.inc

if.end75:                                         ; preds = %if.end31
  %72 = load i32, ptr @stacklev, align 4, !tbaa !5
  %inc76 = add nsw i32 %72, 1
  store i32 %inc76, ptr @stacklev, align 4, !tbaa !5
  store ptr @stack, ptr @stackptr, align 8, !tbaa !9
  %73 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom77 = sext i32 %73 to i64
  %arrayidx78 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom77
  %74 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %75 = load i32, ptr @stacklev, align 4, !tbaa !5
  %cmp79 = icmp ne i32 %74, %75
  br i1 %cmp79, label %if.then80, label %if.end84

if.then80:                                        ; preds = %if.end75
  %76 = load i32, ptr @stacklev, align 4, !tbaa !5
  %77 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom81 = sext i32 %77 to i64
  %arrayidx82 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom81
  store i32 %76, ptr %arrayidx82, align 4, !tbaa !5
  %78 = load i32, ptr %v, align 4, !tbaa !5
  %79 = load ptr, ptr @stackptr, align 8, !tbaa !9
  %incdec.ptr83 = getelementptr inbounds i32, ptr %79, i32 1
  store ptr %incdec.ptr83, ptr @stackptr, align 8, !tbaa !9
  store i32 %78, ptr %79, align 4, !tbaa !5
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %if.end75
  %80 = load i32, ptr %w, align 4, !tbaa !5
  %idxprom85 = sext i32 %80 to i64
  %arrayidx86 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom85
  %81 = load i32, ptr %arrayidx86, align 4, !tbaa !5
  %82 = load i32, ptr @stacklev, align 4, !tbaa !5
  %cmp87 = icmp ne i32 %81, %82
  br i1 %cmp87, label %if.then88, label %if.end92

if.then88:                                        ; preds = %if.end84
  %83 = load i32, ptr @stacklev, align 4, !tbaa !5
  %84 = load i32, ptr %w, align 4, !tbaa !5
  %idxprom89 = sext i32 %84 to i64
  %arrayidx90 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom89
  store i32 %83, ptr %arrayidx90, align 4, !tbaa !5
  %85 = load i32, ptr %w, align 4, !tbaa !5
  %86 = load ptr, ptr @stackptr, align 8, !tbaa !9
  %incdec.ptr91 = getelementptr inbounds i32, ptr %86, i32 1
  store ptr %incdec.ptr91, ptr @stackptr, align 8, !tbaa !9
  store i32 %85, ptr %86, align 4, !tbaa !5
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %if.end84
  %87 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %88 = load ptr, ptr %eno.addr, align 8, !tbaa !9
  %89 = load ptr, ptr %v1.addr, align 8, !tbaa !9
  %90 = load ptr, ptr %v2.addr, align 8, !tbaa !9
  %91 = load ptr, ptr %nodat.addr, align 8, !tbaa !9
  %92 = load i32, ptr %level.addr, align 4, !tbaa !5
  %add = add nsw i32 %92, 1
  %93 = load i32, ptr %nin.addr, align 4, !tbaa !5
  %94 = load i32, ptr %nv.addr, align 4, !tbaa !5
  %call93 = call i32 @hamnode(ptr noundef %87, ptr noundef %88, ptr noundef %89, ptr noundef %90, ptr noundef %91, i32 noundef %add, i32 noundef %93, i32 noundef %94)
  store i32 %call93, ptr %status, align 4, !tbaa !5
  %95 = load i32, ptr %status, align 4, !tbaa !5
  %cmp94 = icmp eq i32 %95, 1
  br i1 %cmp94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end92
  br label %for.end151

if.end96:                                         ; preds = %if.end92
  br label %while.cond97

while.cond97:                                     ; preds = %if.end144, %if.end96
  %96 = load ptr, ptr @classstackptr, align 8, !tbaa !9
  %97 = load ptr, ptr %csptr, align 8, !tbaa !9
  %cmp98 = icmp ugt ptr %96, %97
  br i1 %cmp98, label %while.body99, label %while.end145

while.body99:                                     ; preds = %while.cond97
  %98 = load ptr, ptr @classstackptr, align 8, !tbaa !9
  %incdec.ptr100 = getelementptr inbounds i32, ptr %98, i32 -1
  store ptr %incdec.ptr100, ptr @classstackptr, align 8, !tbaa !9
  %99 = load i32, ptr %incdec.ptr100, align 4, !tbaa !5
  store i32 %99, ptr %p, align 4, !tbaa !5
  %100 = load i32, ptr %p, align 4, !tbaa !5
  %cmp101 = icmp sge i32 %100, 0
  br i1 %cmp101, label %if.then102, label %if.else137

if.then102:                                       ; preds = %while.body99
  %101 = load ptr, ptr %nodat.addr, align 8, !tbaa !9
  %class103 = getelementptr inbounds %struct.nodedata, ptr %101, i32 0, i32 0
  %102 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom104 = sext i32 %102 to i64
  %arrayidx105 = getelementptr inbounds [229 x i32], ptr %class103, i64 0, i64 %idxprom104
  %103 = load i32, ptr %arrayidx105, align 4, !tbaa !5
  %cmp106 = icmp eq i32 %103, 1
  br i1 %cmp106, label %if.then107, label %if.else120

if.then107:                                       ; preds = %if.then102
  %104 = load ptr, ptr %nodat.addr, align 8, !tbaa !9
  %din108 = getelementptr inbounds %struct.nodedata, ptr %104, i32 0, i32 1
  %105 = load ptr, ptr %v1.addr, align 8, !tbaa !9
  %106 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom109 = sext i32 %106 to i64
  %arrayidx110 = getelementptr inbounds i32, ptr %105, i64 %idxprom109
  %107 = load i32, ptr %arrayidx110, align 4, !tbaa !5
  %idxprom111 = sext i32 %107 to i64
  %arrayidx112 = getelementptr inbounds [152 x i32], ptr %din108, i64 0, i64 %idxprom111
  %108 = load i32, ptr %arrayidx112, align 4, !tbaa !5
  %dec113 = add nsw i32 %108, -1
  store i32 %dec113, ptr %arrayidx112, align 4, !tbaa !5
  %109 = load ptr, ptr %nodat.addr, align 8, !tbaa !9
  %din114 = getelementptr inbounds %struct.nodedata, ptr %109, i32 0, i32 1
  %110 = load ptr, ptr %v2.addr, align 8, !tbaa !9
  %111 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom115 = sext i32 %111 to i64
  %arrayidx116 = getelementptr inbounds i32, ptr %110, i64 %idxprom115
  %112 = load i32, ptr %arrayidx116, align 4, !tbaa !5
  %idxprom117 = sext i32 %112 to i64
  %arrayidx118 = getelementptr inbounds [152 x i32], ptr %din114, i64 0, i64 %idxprom117
  %113 = load i32, ptr %arrayidx118, align 4, !tbaa !5
  %dec119 = add nsw i32 %113, -1
  store i32 %dec119, ptr %arrayidx118, align 4, !tbaa !5
  br label %if.end133

if.else120:                                       ; preds = %if.then102
  %114 = load ptr, ptr %nodat.addr, align 8, !tbaa !9
  %dout121 = getelementptr inbounds %struct.nodedata, ptr %114, i32 0, i32 2
  %115 = load ptr, ptr %v1.addr, align 8, !tbaa !9
  %116 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom122 = sext i32 %116 to i64
  %arrayidx123 = getelementptr inbounds i32, ptr %115, i64 %idxprom122
  %117 = load i32, ptr %arrayidx123, align 4, !tbaa !5
  %idxprom124 = sext i32 %117 to i64
  %arrayidx125 = getelementptr inbounds [152 x i32], ptr %dout121, i64 0, i64 %idxprom124
  %118 = load i32, ptr %arrayidx125, align 4, !tbaa !5
  %dec126 = add nsw i32 %118, -1
  store i32 %dec126, ptr %arrayidx125, align 4, !tbaa !5
  %119 = load ptr, ptr %nodat.addr, align 8, !tbaa !9
  %dout127 = getelementptr inbounds %struct.nodedata, ptr %119, i32 0, i32 2
  %120 = load ptr, ptr %v2.addr, align 8, !tbaa !9
  %121 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom128 = sext i32 %121 to i64
  %arrayidx129 = getelementptr inbounds i32, ptr %120, i64 %idxprom128
  %122 = load i32, ptr %arrayidx129, align 4, !tbaa !5
  %idxprom130 = sext i32 %122 to i64
  %arrayidx131 = getelementptr inbounds [152 x i32], ptr %dout127, i64 0, i64 %idxprom130
  %123 = load i32, ptr %arrayidx131, align 4, !tbaa !5
  %dec132 = add nsw i32 %123, -1
  store i32 %dec132, ptr %arrayidx131, align 4, !tbaa !5
  br label %if.end133

if.end133:                                        ; preds = %if.else120, %if.then107
  %124 = load ptr, ptr %nodat.addr, align 8, !tbaa !9
  %class134 = getelementptr inbounds %struct.nodedata, ptr %124, i32 0, i32 0
  %125 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom135 = sext i32 %125 to i64
  %arrayidx136 = getelementptr inbounds [229 x i32], ptr %class134, i64 0, i64 %idxprom135
  store i32 0, ptr %arrayidx136, align 4, !tbaa !5
  br label %if.end144

if.else137:                                       ; preds = %while.body99
  %126 = load ptr, ptr @classstackptr, align 8, !tbaa !9
  %incdec.ptr138 = getelementptr inbounds i32, ptr %126, i32 -1
  store ptr %incdec.ptr138, ptr @classstackptr, align 8, !tbaa !9
  %127 = load i32, ptr %incdec.ptr138, align 4, !tbaa !5
  store i32 %127, ptr %q, align 4, !tbaa !5
  %128 = load i32, ptr %q, align 4, !tbaa !5
  %129 = load ptr, ptr %nodat.addr, align 8, !tbaa !9
  %farend139 = getelementptr inbounds %struct.nodedata, ptr %129, i32 0, i32 3
  %130 = load i32, ptr %p, align 4, !tbaa !5
  %sub140 = sub nsw i32 0, %130
  %sub141 = sub nsw i32 %sub140, 1
  %idxprom142 = sext i32 %sub141 to i64
  %arrayidx143 = getelementptr inbounds [152 x i32], ptr %farend139, i64 0, i64 %idxprom142
  store i32 %128, ptr %arrayidx143, align 4, !tbaa !5
  br label %if.end144

if.end144:                                        ; preds = %if.else137, %if.end133
  br label %while.cond97, !llvm.loop !118

while.end145:                                     ; preds = %while.cond97
  %131 = load i32, ptr %status, align 4, !tbaa !5
  %cmp146 = icmp eq i32 %131, 5
  br i1 %cmp146, label %if.then147, label %if.end148

if.then147:                                       ; preds = %while.end145
  store i32 5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end148:                                        ; preds = %while.end145
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %for.body19
  br label %for.inc

for.inc:                                          ; preds = %if.end149, %while.end
  %132 = load i32, ptr %i, align 4, !tbaa !5
  %inc150 = add nsw i32 %132, 1
  store i32 %inc150, ptr %i, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !119

for.end151:                                       ; preds = %if.then95, %if.then30, %for.cond17
  %133 = load i32, ptr %status, align 4, !tbaa !5
  %cmp152 = icmp eq i32 %133, 0
  br i1 %cmp152, label %if.then153, label %if.end155

if.then153:                                       ; preds = %for.end151
  %134 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call154 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %134, ptr noundef @.str.62)
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %for.end151
  %135 = load i32, ptr %status, align 4, !tbaa !5
  store i32 %135, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end155, %if.then147, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %csptr) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %enov) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %gv) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %en) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  %136 = load i32, ptr %retval, align 4
  ret i32 %136
}

; Function Attrs: nounwind uwtable
define internal i32 @propagate(ptr noundef %g, ptr noundef %eno, ptr noundef %ndptr, ptr noundef %nin, i32 noundef %nv) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca ptr, align 8
  %eno.addr = alloca ptr, align 8
  %ndptr.addr = alloca ptr, align 8
  %nin.addr = alloca ptr, align 8
  %nv.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %w = alloca i32, align 4
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %np = alloca ptr, align 8
  %gp = alloca ptr, align 8
  %enop = alloca ptr, align 8
  %class = alloca ptr, align 8
  %din = alloca ptr, align 8
  %dout = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8, !tbaa !9
  store ptr %eno, ptr %eno.addr, align 8, !tbaa !9
  store ptr %ndptr, ptr %ndptr.addr, align 8, !tbaa !9
  store ptr %nin, ptr %nin.addr, align 8, !tbaa !9
  store i32 %nv, ptr %nv.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %np) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %gp) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %enop) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %class) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %din) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %dout) #8
  store i32 0, ptr %status, align 4, !tbaa !5
  %0 = load ptr, ptr %ndptr.addr, align 8, !tbaa !9
  store ptr %0, ptr %np, align 8, !tbaa !9
  %1 = load ptr, ptr %np, align 8, !tbaa !9
  %class1 = getelementptr inbounds %struct.nodedata, ptr %1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [229 x i32], ptr %class1, i64 0, i64 0
  store ptr %arraydecay, ptr %class, align 8, !tbaa !9
  %2 = load ptr, ptr %np, align 8, !tbaa !9
  %din2 = getelementptr inbounds %struct.nodedata, ptr %2, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [152 x i32], ptr %din2, i64 0, i64 0
  store ptr %arraydecay3, ptr %din, align 8, !tbaa !9
  %3 = load ptr, ptr %np, align 8, !tbaa !9
  %dout4 = getelementptr inbounds %struct.nodedata, ptr %3, i32 0, i32 2
  %arraydecay5 = getelementptr inbounds [152 x i32], ptr %dout4, i64 0, i64 0
  store ptr %arraydecay5, ptr %dout, align 8, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %if.end83, %entry
  %4 = load i32, ptr %status, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr @stackptr, align 8, !tbaa !9
  %cmp6 = icmp ugt ptr %5, @stack
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr @stackptr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i32, ptr %7, i32 -1
  store ptr %incdec.ptr, ptr @stackptr, align 8, !tbaa !9
  %8 = load i32, ptr %incdec.ptr, align 4, !tbaa !5
  store i32 %8, ptr %v, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %9 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %10 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [4 x i32], ptr %9, i64 %idxprom7
  %arraydecay9 = getelementptr inbounds [4 x i32], ptr %arrayidx8, i64 0, i64 0
  store ptr %arraydecay9, ptr %gp, align 8, !tbaa !9
  %11 = load ptr, ptr %eno.addr, align 8, !tbaa !9
  %12 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [4 x i32], ptr %11, i64 %idxprom10
  %arraydecay12 = getelementptr inbounds [4 x i32], ptr %arrayidx11, i64 0, i64 0
  store ptr %arraydecay12, ptr %enop, align 8, !tbaa !9
  %13 = load ptr, ptr %dout, align 8, !tbaa !9
  %14 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %13, i64 %idxprom13
  %15 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %15, 0
  br i1 %cmp15, label %if.then, label %if.else51

if.then:                                          ; preds = %while.body
  %16 = load ptr, ptr %din, align 8, !tbaa !9
  %17 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %16, i64 %idxprom16
  %18 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %18, 2
  br i1 %cmp18, label %if.then19, label %if.else44

if.then19:                                        ; preds = %if.then
  %19 = load ptr, ptr %class, align 8, !tbaa !9
  %20 = load ptr, ptr %enop, align 8, !tbaa !9
  %arrayidx20 = getelementptr inbounds i32, ptr %20, i64 0
  %21 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %idxprom21 = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %19, i64 %idxprom21
  %22 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %22, 0
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.then19
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %if.end31

if.else:                                          ; preds = %if.then19
  %23 = load ptr, ptr %class, align 8, !tbaa !9
  %24 = load ptr, ptr %enop, align 8, !tbaa !9
  %arrayidx25 = getelementptr inbounds i32, ptr %24, i64 1
  %25 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %idxprom26 = sext i32 %25 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %23, i64 %idxprom26
  %26 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %26, 0
  br i1 %cmp28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.else
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %if.end

if.else30:                                        ; preds = %if.else
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else30, %if.then29
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then24
  %27 = load ptr, ptr %gp, align 8, !tbaa !9
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %28 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %27, i64 %idxprom32
  %29 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  store i32 %29, ptr %w, align 4, !tbaa !5
  %30 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %31 = load ptr, ptr %np, align 8, !tbaa !9
  %32 = load i32, ptr %v, align 4, !tbaa !5
  %33 = load i32, ptr %w, align 4, !tbaa !5
  %34 = load ptr, ptr %enop, align 8, !tbaa !9
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %35 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %34, i64 %idxprom34
  %36 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %call = call i32 @classout(ptr noundef %30, ptr noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %36)
  store i32 %call, ptr %status, align 4, !tbaa !5
  %37 = load i32, ptr %w, align 4, !tbaa !5
  %idxprom36 = sext i32 %37 to i64
  %arrayidx37 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom36
  %38 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %39 = load i32, ptr @stacklev, align 4, !tbaa !5
  %cmp38 = icmp ne i32 %38, %39
  br i1 %cmp38, label %if.then39, label %if.end43

if.then39:                                        ; preds = %if.end31
  %40 = load i32, ptr @stacklev, align 4, !tbaa !5
  %41 = load i32, ptr %w, align 4, !tbaa !5
  %idxprom40 = sext i32 %41 to i64
  %arrayidx41 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom40
  store i32 %40, ptr %arrayidx41, align 4, !tbaa !5
  %42 = load i32, ptr %w, align 4, !tbaa !5
  %43 = load ptr, ptr @stackptr, align 8, !tbaa !9
  %incdec.ptr42 = getelementptr inbounds i32, ptr %43, i32 1
  store ptr %incdec.ptr42, ptr @stackptr, align 8, !tbaa !9
  store i32 %42, ptr %43, align 4, !tbaa !5
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end31
  br label %if.end50

if.else44:                                        ; preds = %if.then
  %44 = load ptr, ptr %din, align 8, !tbaa !9
  %45 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom45 = sext i32 %45 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %44, i64 %idxprom45
  %46 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %cmp47 = icmp eq i32 %46, 3
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.else44
  store i32 -1, ptr %status, align 4, !tbaa !5
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.else44
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end43
  br label %if.end83

if.else51:                                        ; preds = %while.body
  %47 = load ptr, ptr %dout, align 8, !tbaa !9
  %48 = load i32, ptr %v, align 4, !tbaa !5
  %idxprom52 = sext i32 %48 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %47, i64 %idxprom52
  %49 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %cmp54 = icmp eq i32 %49, 1
  br i1 %cmp54, label %if.then55, label %if.else81

if.then55:                                        ; preds = %if.else51
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then55
  %50 = load i32, ptr %i, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %50, 3
  br i1 %cmp56, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load ptr, ptr %class, align 8, !tbaa !9
  %52 = load ptr, ptr %enop, align 8, !tbaa !9
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom57 = sext i32 %53 to i64
  %arrayidx58 = getelementptr inbounds i32, ptr %52, i64 %idxprom57
  %54 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %idxprom59 = sext i32 %54 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %51, i64 %idxprom59
  %55 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %cmp61 = icmp eq i32 %55, 0
  br i1 %cmp61, label %if.then62, label %if.end80

if.then62:                                        ; preds = %for.body
  %56 = load ptr, ptr %gp, align 8, !tbaa !9
  %57 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom63 = sext i32 %57 to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %56, i64 %idxprom63
  %58 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  store i32 %58, ptr %w, align 4, !tbaa !5
  %59 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %60 = load ptr, ptr %eno.addr, align 8, !tbaa !9
  %61 = load ptr, ptr %np, align 8, !tbaa !9
  %62 = load i32, ptr %v, align 4, !tbaa !5
  %63 = load i32, ptr %w, align 4, !tbaa !5
  %64 = load ptr, ptr %enop, align 8, !tbaa !9
  %65 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom65 = sext i32 %65 to i64
  %arrayidx66 = getelementptr inbounds i32, ptr %64, i64 %idxprom65
  %66 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %67 = load ptr, ptr %nin.addr, align 8, !tbaa !9
  %68 = load i32, ptr %nv.addr, align 4, !tbaa !5
  %call67 = call i32 @classin(ptr noundef %59, ptr noundef %60, ptr noundef %61, i32 noundef %62, i32 noundef %63, i32 noundef %66, ptr noundef %67, i32 noundef %68)
  store i32 %call67, ptr %status, align 4, !tbaa !5
  %cmp68 = icmp ne i32 %call67, 0
  br i1 %cmp68, label %if.then69, label %if.else70

if.then69:                                        ; preds = %if.then62
  br label %for.end

if.else70:                                        ; preds = %if.then62
  %69 = load i32, ptr %w, align 4, !tbaa !5
  %idxprom71 = sext i32 %69 to i64
  %arrayidx72 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom71
  %70 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %71 = load i32, ptr @stacklev, align 4, !tbaa !5
  %cmp73 = icmp ne i32 %70, %71
  br i1 %cmp73, label %if.then74, label %if.end78

if.then74:                                        ; preds = %if.else70
  %72 = load i32, ptr @stacklev, align 4, !tbaa !5
  %73 = load i32, ptr %w, align 4, !tbaa !5
  %idxprom75 = sext i32 %73 to i64
  %arrayidx76 = getelementptr inbounds [152 x i32], ptr @onstack, i64 0, i64 %idxprom75
  store i32 %72, ptr %arrayidx76, align 4, !tbaa !5
  %74 = load i32, ptr %w, align 4, !tbaa !5
  %75 = load ptr, ptr @stackptr, align 8, !tbaa !9
  %incdec.ptr77 = getelementptr inbounds i32, ptr %75, i32 1
  store ptr %incdec.ptr77, ptr @stackptr, align 8, !tbaa !9
  store i32 %74, ptr %75, align 4, !tbaa !5
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.else70
  br label %if.end79

if.end79:                                         ; preds = %if.end78
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end80
  %76 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %76, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !120

for.end:                                          ; preds = %if.then69, %for.cond
  br label %if.end82

if.else81:                                        ; preds = %if.else51
  store i32 -1, ptr %status, align 4, !tbaa !5
  br label %if.end82

if.end82:                                         ; preds = %if.else81, %for.end
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.end50
  br label %while.cond, !llvm.loop !121

while.end:                                        ; preds = %land.end
  %77 = load i32, ptr %status, align 4, !tbaa !5
  %cmp84 = icmp ne i32 %77, -1
  br i1 %cmp84, label %land.lhs.true, label %if.else87

land.lhs.true:                                    ; preds = %while.end
  %78 = load ptr, ptr %nin.addr, align 8, !tbaa !9
  %79 = load i32, ptr %78, align 4, !tbaa !5
  %80 = load i32, ptr %nv.addr, align 4, !tbaa !5
  %cmp85 = icmp eq i32 %79, %80
  br i1 %cmp85, label %if.then86, label %if.else87

if.then86:                                        ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else87:                                        ; preds = %land.lhs.true, %while.end
  %81 = load i32, ptr %status, align 4, !tbaa !5
  store i32 %81, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else87, %if.then86
  call void @llvm.lifetime.end.p0(i64 8, ptr %dout) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %din) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %class) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %enop) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %gp) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %np) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #8
  %82 = load i32, ptr %retval, align 4
  ret i32 %82
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #7

declare i32 @nextelement(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @optadd(ptr noundef %cub, i32 noundef %v1, i32 noundef %v2) #0 {
entry:
  %retval = alloca i32, align 4
  %cub.addr = alloca ptr, align 8
  %v1.addr = alloca i32, align 4
  %v2.addr = alloca i32, align 4
  store ptr %cub, ptr %cub.addr, align 8, !tbaa !9
  store i32 %v1, ptr %v1.addr, align 4, !tbaa !5
  store i32 %v2, ptr %v2.addr, align 4, !tbaa !5
  %0 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %1 = load i32, ptr %v1.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [4 x i32], ptr %arrayidx, i64 0, i64 0
  %2 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %3 = load i32, ptr %v2.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %5 = load i32, ptr %v1.addr, align 4, !tbaa !5
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [4 x i32], ptr %4, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [4 x i32], ptr %arrayidx3, i64 0, i64 1
  %6 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %7 = load i32, ptr %v2.addr, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %6, %7
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %8 = load i32, ptr %v2.addr, align 4, !tbaa !5
  %9 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %10 = load i32, ptr %v1.addr, align 4, !tbaa !5
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [4 x i32], ptr %9, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [4 x i32], ptr %arrayidx9, i64 0, i64 2
  store i32 %8, ptr %arrayidx10, align 4, !tbaa !5
  %11 = load i32, ptr %v1.addr, align 4, !tbaa !5
  %12 = load ptr, ptr %cub.addr, align 8, !tbaa !9
  %13 = load i32, ptr %v2.addr, align 4, !tbaa !5
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [4 x i32], ptr %12, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [4 x i32], ptr %arrayidx12, i64 0, i64 2
  store i32 %11, ptr %arrayidx13, align 4, !tbaa !5
  store i32 2, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

declare i64 @ran_nextran() #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!18, !12, i64 0}
!18 = !{!"tms", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!19 = !{!18, !12, i64 8}
!20 = !{!21, !21, i64 0}
!21 = !{!"double", !7, i64 0}
!22 = !{!23, !10, i64 8}
!23 = !{!"", !12, i64 0, !10, i64 8, !6, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72}
!24 = !{!23, !10, i64 40}
!25 = !{!23, !10, i64 32}
!26 = !{!23, !10, i64 24}
!27 = !{!23, !12, i64 72}
!28 = !{!23, !12, i64 64}
!29 = !{!23, !12, i64 56}
!30 = !{!23, !12, i64 48}
!31 = !{!23, !6, i64 16}
!32 = distinct !{!32, !15, !16}
!33 = distinct !{!33, !15, !16}
!34 = distinct !{!34, !15, !16}
!35 = distinct !{!35, !15, !16}
!36 = distinct !{!36, !15, !16}
!37 = distinct !{!37, !15, !16}
!38 = distinct !{!38, !15, !16}
!39 = distinct !{!39, !15, !16}
!40 = distinct !{!40, !15, !16}
!41 = distinct !{!41, !15, !16}
!42 = distinct !{!42, !15, !16}
!43 = distinct !{!43, !15, !16}
!44 = distinct !{!44, !15, !16}
!45 = distinct !{!45, !15, !16}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !15, !16}
!48 = distinct !{!48, !15, !16}
!49 = distinct !{!49, !15, !16}
!50 = distinct !{!50, !15, !16}
!51 = distinct !{!51, !15, !16}
!52 = distinct !{!52, !15, !16}
!53 = distinct !{!53, !15, !16}
!54 = distinct !{!54, !15, !16}
!55 = distinct !{!55, !15, !16}
!56 = distinct !{!56, !15, !16}
!57 = distinct !{!57, !15, !16}
!58 = distinct !{!58, !15, !16}
!59 = distinct !{!59, !15, !16}
!60 = distinct !{!60, !15, !16}
!61 = distinct !{!61, !15, !16}
!62 = distinct !{!62, !15, !16}
!63 = distinct !{!63, !15, !16}
!64 = distinct !{!64, !15, !16}
!65 = distinct !{!65, !15, !16}
!66 = distinct !{!66, !15, !16}
!67 = distinct !{!67, !15, !16}
!68 = distinct !{!68, !15, !16}
!69 = distinct !{!69, !15, !16}
!70 = distinct !{!70, !15, !16}
!71 = distinct !{!71, !15, !16}
!72 = distinct !{!72, !15, !16}
!73 = distinct !{!73, !15, !16}
!74 = distinct !{!74, !15, !16}
!75 = distinct !{!75, !15, !16}
!76 = distinct !{!76, !15, !16}
!77 = distinct !{!77, !15, !16}
!78 = distinct !{!78, !15, !16}
!79 = distinct !{!79, !15, !16}
!80 = distinct !{!80, !15, !16}
!81 = distinct !{!81, !15, !16}
!82 = distinct !{!82, !15, !16}
!83 = distinct !{!83, !15, !16}
!84 = distinct !{!84, !15, !16}
!85 = distinct !{!85, !15, !16}
!86 = distinct !{!86, !15, !16}
!87 = distinct !{!87, !15, !16}
!88 = distinct !{!88, !15, !16}
!89 = distinct !{!89, !15, !16}
!90 = distinct !{!90, !15, !16}
!91 = distinct !{!91, !15, !16}
!92 = distinct !{!92, !15, !16}
!93 = distinct !{!93, !15, !16}
!94 = distinct !{!94, !15, !16}
!95 = distinct !{!95, !15, !16}
!96 = distinct !{!96, !15, !16}
!97 = distinct !{!97, !15, !16}
!98 = distinct !{!98, !15, !16}
!99 = distinct !{!99, !15, !16}
!100 = distinct !{!100, !15, !16}
!101 = distinct !{!101, !15, !16}
!102 = distinct !{!102, !15, !16}
!103 = distinct !{!103, !16}
!104 = distinct !{!104, !15, !16}
!105 = distinct !{!105, !15, !16}
!106 = distinct !{!106, !15, !16}
!107 = distinct !{!107, !15, !16}
!108 = distinct !{!108, !15, !16}
!109 = distinct !{!109, !15, !16}
!110 = distinct !{!110, !15, !16}
!111 = distinct !{!111, !15, !16}
!112 = distinct !{!112, !15, !16}
!113 = distinct !{!113, !15, !16}
!114 = distinct !{!114, !15, !16}
!115 = distinct !{!115, !15, !16}
!116 = distinct !{!116, !15, !16}
!117 = distinct !{!117, !15, !16}
!118 = distinct !{!118, !15, !16}
!119 = distinct !{!119, !15, !16}
!120 = distinct !{!120, !15, !16}
!121 = distinct !{!121, !15, !16}
