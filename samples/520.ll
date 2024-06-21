; ModuleID = 'samples/520.bc'
source_filename = "linegraphg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tms = type { i64, i64, i64, i64 }
%struct.sparsegraph = type { i64, ptr, i32, ptr, ptr, ptr, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"\0AUsage: %s\0A\0A%s\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"linegraphg [-t] [-q] [infile [outfile]]\00", align 1
@.str.5 = private unnamed_addr constant [244 x i8] c" Take the linegraphs of a file of graphs.\0A  Input graphs with no edges produce only a warning message.\0A\0A    The output file has a header if and only if the input file does.\0A\0A    -t  make the total graph\0A    -q  Suppress auxiliary information.\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Nauty&Traces version %.4f (%d bits)\0A\00", align 1
@stderr = external global ptr, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c">E Usage: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"   Use %s -help to see more detailed instructions.\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c">A linegraphg\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c">E Sorry, this program doesn't support digraphs yet.\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@stdout = external global ptr, align 8
@.str.17 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"Can't open output file %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c">>sparse6<<\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c">>graph6<<\00", align 1
@timebuffer = internal global %struct.tms zeroinitializer, align 8
@.str.21 = private unnamed_addr constant [32 x i8] c">W %lu null graphs not written\0A\00", align 1
@.str.22 = private unnamed_addr constant [53 x i8] c">Z %lu graphs converted from %s to %s in %3.2f sec.\0A\00", align 1
@totalgraph.eno = internal global ptr null, align 8
@totalgraph.eno_sz = internal global i64 0, align 8
@.str.23 = private unnamed_addr constant [11 x i8] c"linegraphg\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c">E linegraphg: too many input edges\0A\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c">E linegraphg: too many output edges\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c">E linegraphg can't handle loops\0A\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c">E linegraphg : binary search failed\0A\00", align 1
@linegraph.eno = internal global ptr null, align 8
@linegraph.eno_sz = internal global i64 0, align 8

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
  %badargs = alloca i32, align 4
  %quiet = alloca i32, align 4
  %tswitch = alloca i32, align 4
  %j = alloca i32, align 4
  %argnum = alloca i32, align 4
  %codetype = alloca i32, align 4
  %outcode = alloca i32, align 4
  %g = alloca %struct.sparsegraph, align 8
  %h = alloca %struct.sparsegraph, align 8
  %nin = alloca i64, align 8
  %nullgraphs = alloca i64, align 8
  %arg = alloca ptr, align 8
  %sw = alloca i8, align 1
  %t = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %infilename) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %outfilename) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %infile) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %outfile) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %badargs) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %quiet) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %tswitch) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %argnum) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %codetype) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %outcode) #7
  call void @llvm.lifetime.start.p0(i64 80, ptr %g) #7
  call void @llvm.lifetime.start.p0(i64 80, ptr %h) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %nin) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %nullgraphs) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr %sw) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #7
  %0 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %call = call i32 @strcmp(ptr noundef %2, ptr noundef @.str) #8
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx2 = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx2, align 8, !tbaa !9
  %call3 = call i32 @strcmp(ptr noundef %4, ptr noundef @.str.1) #8
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx6 = getelementptr inbounds ptr, ptr %5, i64 1
  %6 = load ptr, ptr %arrayidx6, align 8, !tbaa !9
  %call7 = call i32 @strcmp(ptr noundef %6, ptr noundef @.str.2) #8
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %land.lhs.true
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.5)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5, %entry
  %7 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp10 = icmp sgt i32 %7, 1
  br i1 %cmp10, label %land.lhs.true11, label %if.end21

land.lhs.true11:                                  ; preds = %if.end
  %8 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx12 = getelementptr inbounds ptr, ptr %8, i64 1
  %9 = load ptr, ptr %arrayidx12, align 8, !tbaa !9
  %call13 = call i32 @strcmp(ptr noundef %9, ptr noundef @.str.6) #8
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then19, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %land.lhs.true11
  %10 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx16 = getelementptr inbounds ptr, ptr %10, i64 1
  %11 = load ptr, ptr %arrayidx16, align 8, !tbaa !9
  %call17 = call i32 @strcmp(ptr noundef %11, ptr noundef @.str.7) #8
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %lor.lhs.false15, %land.lhs.true11
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef 2.604000e+00, i32 noundef 64)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false15, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end21
  %v = getelementptr inbounds %struct.sparsegraph, ptr %g, i32 0, i32 1
  store ptr null, ptr %v, align 8, !tbaa !11
  %w = getelementptr inbounds %struct.sparsegraph, ptr %g, i32 0, i32 5
  store ptr null, ptr %w, align 8, !tbaa !14
  %e = getelementptr inbounds %struct.sparsegraph, ptr %g, i32 0, i32 4
  store ptr null, ptr %e, align 8, !tbaa !15
  %d = getelementptr inbounds %struct.sparsegraph, ptr %g, i32 0, i32 3
  store ptr null, ptr %d, align 8, !tbaa !16
  %wlen = getelementptr inbounds %struct.sparsegraph, ptr %g, i32 0, i32 9
  store i64 0, ptr %wlen, align 8, !tbaa !17
  %elen = getelementptr inbounds %struct.sparsegraph, ptr %g, i32 0, i32 8
  store i64 0, ptr %elen, align 8, !tbaa !18
  %dlen = getelementptr inbounds %struct.sparsegraph, ptr %g, i32 0, i32 7
  store i64 0, ptr %dlen, align 8, !tbaa !19
  %vlen = getelementptr inbounds %struct.sparsegraph, ptr %g, i32 0, i32 6
  store i64 0, ptr %vlen, align 8, !tbaa !20
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body22

do.body22:                                        ; preds = %do.end
  %v23 = getelementptr inbounds %struct.sparsegraph, ptr %h, i32 0, i32 1
  store ptr null, ptr %v23, align 8, !tbaa !11
  %w24 = getelementptr inbounds %struct.sparsegraph, ptr %h, i32 0, i32 5
  store ptr null, ptr %w24, align 8, !tbaa !14
  %e25 = getelementptr inbounds %struct.sparsegraph, ptr %h, i32 0, i32 4
  store ptr null, ptr %e25, align 8, !tbaa !15
  %d26 = getelementptr inbounds %struct.sparsegraph, ptr %h, i32 0, i32 3
  store ptr null, ptr %d26, align 8, !tbaa !16
  %wlen27 = getelementptr inbounds %struct.sparsegraph, ptr %h, i32 0, i32 9
  store i64 0, ptr %wlen27, align 8, !tbaa !17
  %elen28 = getelementptr inbounds %struct.sparsegraph, ptr %h, i32 0, i32 8
  store i64 0, ptr %elen28, align 8, !tbaa !18
  %dlen29 = getelementptr inbounds %struct.sparsegraph, ptr %h, i32 0, i32 7
  store i64 0, ptr %dlen29, align 8, !tbaa !19
  %vlen30 = getelementptr inbounds %struct.sparsegraph, ptr %h, i32 0, i32 6
  store i64 0, ptr %vlen30, align 8, !tbaa !20
  br label %do.cond31

do.cond31:                                        ; preds = %do.body22
  br label %do.end32

do.end32:                                         ; preds = %do.cond31
  store ptr null, ptr %outfilename, align 8, !tbaa !9
  store ptr null, ptr %infilename, align 8, !tbaa !9
  store i32 0, ptr %tswitch, align 4, !tbaa !5
  store i32 0, ptr %quiet, align 4, !tbaa !5
  store i32 0, ptr %argnum, align 4, !tbaa !5
  store i32 0, ptr %badargs, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end32
  %12 = load i32, ptr %badargs, align 4, !tbaa !5
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %14 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %13, %14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %cmp33, %land.rhs ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %16 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %17 to i64
  %arrayidx34 = getelementptr inbounds ptr, ptr %16, i64 %idxprom
  %18 = load ptr, ptr %arrayidx34, align 8, !tbaa !9
  store ptr %18, ptr %arg, align 8, !tbaa !9
  %19 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx35 = getelementptr inbounds i8, ptr %19, i64 0
  %20 = load i8, ptr %arrayidx35, align 1, !tbaa !21
  %conv = sext i8 %20 to i32
  %cmp36 = icmp eq i32 %conv, 45
  br i1 %cmp36, label %land.lhs.true38, label %if.else59

land.lhs.true38:                                  ; preds = %for.body
  %21 = load ptr, ptr %arg, align 8, !tbaa !9
  %arrayidx39 = getelementptr inbounds i8, ptr %21, i64 1
  %22 = load i8, ptr %arrayidx39, align 1, !tbaa !21
  %conv40 = sext i8 %22 to i32
  %cmp41 = icmp ne i32 %conv40, 0
  br i1 %cmp41, label %if.then43, label %if.else59

if.then43:                                        ; preds = %land.lhs.true38
  %23 = load ptr, ptr %arg, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr, ptr %arg, align 8, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %if.end58, %if.then43
  %24 = load ptr, ptr %arg, align 8, !tbaa !9
  %25 = load i8, ptr %24, align 1, !tbaa !21
  %conv44 = sext i8 %25 to i32
  %cmp45 = icmp ne i32 %conv44, 0
  br i1 %cmp45, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load ptr, ptr %arg, align 8, !tbaa !9
  %incdec.ptr47 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr47, ptr %arg, align 8, !tbaa !9
  %27 = load i8, ptr %26, align 1, !tbaa !21
  store i8 %27, ptr %sw, align 1, !tbaa !21
  %28 = load i8, ptr %sw, align 1, !tbaa !21
  %conv48 = sext i8 %28 to i32
  %cmp49 = icmp eq i32 %conv48, 116
  br i1 %cmp49, label %if.then51, label %if.else

if.then51:                                        ; preds = %while.body
  store i32 1, ptr %tswitch, align 4, !tbaa !5
  br label %if.end58

if.else:                                          ; preds = %while.body
  %29 = load i8, ptr %sw, align 1, !tbaa !21
  %conv52 = sext i8 %29 to i32
  %cmp53 = icmp eq i32 %conv52, 113
  br i1 %cmp53, label %if.then55, label %if.else56

if.then55:                                        ; preds = %if.else
  store i32 1, ptr %quiet, align 4, !tbaa !5
  br label %if.end57

if.else56:                                        ; preds = %if.else
  store i32 1, ptr %badargs, align 4, !tbaa !5
  br label %if.end57

if.end57:                                         ; preds = %if.else56, %if.then55
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then51
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  br label %if.end70

if.else59:                                        ; preds = %land.lhs.true38, %for.body
  %30 = load i32, ptr %argnum, align 4, !tbaa !5
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %argnum, align 4, !tbaa !5
  %31 = load i32, ptr %argnum, align 4, !tbaa !5
  %cmp60 = icmp eq i32 %31, 1
  br i1 %cmp60, label %if.then62, label %if.else63

if.then62:                                        ; preds = %if.else59
  %32 = load ptr, ptr %arg, align 8, !tbaa !9
  store ptr %32, ptr %infilename, align 8, !tbaa !9
  br label %if.end69

if.else63:                                        ; preds = %if.else59
  %33 = load i32, ptr %argnum, align 4, !tbaa !5
  %cmp64 = icmp eq i32 %33, 2
  br i1 %cmp64, label %if.then66, label %if.else67

if.then66:                                        ; preds = %if.else63
  %34 = load ptr, ptr %arg, align 8, !tbaa !9
  store ptr %34, ptr %outfilename, align 8, !tbaa !9
  br label %if.end68

if.else67:                                        ; preds = %if.else63
  store i32 1, ptr %badargs, align 4, !tbaa !5
  br label %if.end68

if.end68:                                         ; preds = %if.else67, %if.then66
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then62
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end70
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %inc71 = add nsw i32 %35, 1
  store i32 %inc71, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %land.end
  %36 = load i32, ptr %badargs, align 4, !tbaa !5
  %tobool72 = icmp ne i32 %36, 0
  br i1 %tobool72, label %if.then73, label %if.end77

if.then73:                                        ; preds = %for.end
  %37 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.9, ptr noundef @.str.4)
  %38 = load ptr, ptr @stderr, align 8, !tbaa !9
  %39 = load ptr, ptr %argv.addr, align 8, !tbaa !9
  %arrayidx75 = getelementptr inbounds ptr, ptr %39, i64 0
  %40 = load ptr, ptr %arrayidx75, align 8, !tbaa !9
  %call76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str.10, ptr noundef %40)
  call void @exit(i32 noundef 1) #9
  unreachable

if.end77:                                         ; preds = %for.end
  %41 = load i32, ptr %quiet, align 4, !tbaa !5
  %tobool78 = icmp ne i32 %41, 0
  br i1 %tobool78, label %if.end93, label %if.then79

if.then79:                                        ; preds = %if.end77
  %42 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call80 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.11)
  %43 = load i32, ptr %argnum, align 4, !tbaa !5
  %cmp81 = icmp sgt i32 %43, 0
  br i1 %cmp81, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.then79
  %44 = load ptr, ptr @stderr, align 8, !tbaa !9
  %45 = load ptr, ptr %infilename, align 8, !tbaa !9
  %call84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.12, ptr noundef %45)
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.then79
  %46 = load i32, ptr %argnum, align 4, !tbaa !5
  %cmp86 = icmp sgt i32 %46, 1
  br i1 %cmp86, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.end85
  %47 = load ptr, ptr @stderr, align 8, !tbaa !9
  %48 = load ptr, ptr %outfilename, align 8, !tbaa !9
  %call89 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef @.str.12, ptr noundef %48)
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end85
  %49 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.13)
  %50 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call92 = call i32 @fflush(ptr noundef %50)
  br label %if.end93

if.end93:                                         ; preds = %if.end90, %if.end77
  %51 = load ptr, ptr %infilename, align 8, !tbaa !9
  %tobool94 = icmp ne ptr %51, null
  br i1 %tobool94, label %land.lhs.true95, label %if.end101

land.lhs.true95:                                  ; preds = %if.end93
  %52 = load ptr, ptr %infilename, align 8, !tbaa !9
  %arrayidx96 = getelementptr inbounds i8, ptr %52, i64 0
  %53 = load i8, ptr %arrayidx96, align 1, !tbaa !21
  %conv97 = sext i8 %53 to i32
  %cmp98 = icmp eq i32 %conv97, 45
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %land.lhs.true95
  store ptr null, ptr %infilename, align 8, !tbaa !9
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %land.lhs.true95, %if.end93
  %54 = load ptr, ptr %infilename, align 8, !tbaa !9
  %call102 = call ptr @opengraphfile(ptr noundef %54, ptr noundef %codetype, i32 noundef 0, i64 noundef 1)
  store ptr %call102, ptr %infile, align 8, !tbaa !9
  %55 = load ptr, ptr %infile, align 8, !tbaa !9
  %tobool103 = icmp ne ptr %55, null
  br i1 %tobool103, label %if.end105, label %if.then104

if.then104:                                       ; preds = %if.end101
  call void @exit(i32 noundef 1) #9
  unreachable

if.end105:                                        ; preds = %if.end101
  %56 = load ptr, ptr %infilename, align 8, !tbaa !9
  %tobool106 = icmp ne ptr %56, null
  br i1 %tobool106, label %if.end108, label %if.then107

if.then107:                                       ; preds = %if.end105
  store ptr @.str.14, ptr %infilename, align 8, !tbaa !9
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %if.end105
  %57 = load i32, ptr %codetype, align 4, !tbaa !5
  %and = and i32 %57, 128
  %tobool109 = icmp ne i32 %and, 0
  br i1 %tobool109, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.end108
  call void @gt_abort(ptr noundef @.str.15)
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %if.end108
  %58 = load ptr, ptr %outfilename, align 8, !tbaa !9
  %tobool112 = icmp ne ptr %58, null
  br i1 %tobool112, label %lor.lhs.false113, label %if.then118

lor.lhs.false113:                                 ; preds = %if.end111
  %59 = load ptr, ptr %outfilename, align 8, !tbaa !9
  %arrayidx114 = getelementptr inbounds i8, ptr %59, i64 0
  %60 = load i8, ptr %arrayidx114, align 1, !tbaa !21
  %conv115 = sext i8 %60 to i32
  %cmp116 = icmp eq i32 %conv115, 45
  br i1 %cmp116, label %if.then118, label %if.else119

if.then118:                                       ; preds = %lor.lhs.false113, %if.end111
  store ptr @.str.16, ptr %outfilename, align 8, !tbaa !9
  %61 = load ptr, ptr @stdout, align 8, !tbaa !9
  store ptr %61, ptr %outfile, align 8, !tbaa !9
  br label %if.end126

if.else119:                                       ; preds = %lor.lhs.false113
  %62 = load ptr, ptr %outfilename, align 8, !tbaa !9
  %call120 = call noalias ptr @fopen(ptr noundef %62, ptr noundef @.str.17)
  store ptr %call120, ptr %outfile, align 8, !tbaa !9
  %cmp121 = icmp eq ptr %call120, null
  br i1 %cmp121, label %if.then123, label %if.end125

if.then123:                                       ; preds = %if.else119
  %63 = load ptr, ptr @stderr, align 8, !tbaa !9
  %64 = load ptr, ptr %outfilename, align 8, !tbaa !9
  %call124 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef @.str.18, ptr noundef %64)
  call void @gt_abort(ptr noundef null)
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %if.else119
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.then118
  %65 = load i32, ptr %codetype, align 4, !tbaa !5
  %and127 = and i32 %65, 2
  %tobool128 = icmp ne i32 %and127, 0
  br i1 %tobool128, label %if.then129, label %if.else130

if.then129:                                       ; preds = %if.end126
  store i32 2, ptr %outcode, align 4, !tbaa !5
  br label %if.end131

if.else130:                                       ; preds = %if.end126
  store i32 1, ptr %outcode, align 4, !tbaa !5
  br label %if.end131

if.end131:                                        ; preds = %if.else130, %if.then129
  %66 = load i32, ptr %codetype, align 4, !tbaa !5
  %and132 = and i32 %66, 512
  %tobool133 = icmp ne i32 %and132, 0
  br i1 %tobool133, label %if.then134, label %if.end140

if.then134:                                       ; preds = %if.end131
  %67 = load i32, ptr %outcode, align 4, !tbaa !5
  %cmp135 = icmp eq i32 %67, 2
  br i1 %cmp135, label %if.then137, label %if.else138

if.then137:                                       ; preds = %if.then134
  %68 = load ptr, ptr %outfile, align 8, !tbaa !9
  call void @writeline(ptr noundef %68, ptr noundef @.str.19)
  br label %if.end139

if.else138:                                       ; preds = %if.then134
  %69 = load ptr, ptr %outfile, align 8, !tbaa !9
  call void @writeline(ptr noundef %69, ptr noundef @.str.20)
  br label %if.end139

if.end139:                                        ; preds = %if.else138, %if.then137
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.end131
  store i64 0, ptr %nin, align 8, !tbaa !26
  store i64 0, ptr %nullgraphs, align 8, !tbaa !26
  %call141 = call i64 @times(ptr noundef @timebuffer) #7
  %70 = load i64, ptr @timebuffer, align 8, !tbaa !27
  %71 = load i64, ptr getelementptr inbounds (%struct.tms, ptr @timebuffer, i32 0, i32 1), align 8, !tbaa !29
  %add = add nsw i64 %70, %71
  %conv142 = sitofp i64 %add to double
  %call143 = call i64 @sysconf(i32 noundef 2) #7
  %conv144 = sitofp i64 %call143 to double
  %div = fdiv double %conv142, %conv144
  store double %div, ptr %t, align 8, !tbaa !30
  br label %while.cond145

while.cond145:                                    ; preds = %if.end166, %if.end140
  %72 = load ptr, ptr %infile, align 8, !tbaa !9
  %call146 = call ptr @read_sg(ptr noundef %72, ptr noundef %g)
  %tobool147 = icmp ne ptr %call146, null
  br i1 %tobool147, label %while.body148, label %while.end167

while.body148:                                    ; preds = %while.cond145
  %73 = load i64, ptr %nin, align 8, !tbaa !26
  %inc149 = add i64 %73, 1
  store i64 %inc149, ptr %nin, align 8, !tbaa !26
  %nde = getelementptr inbounds %struct.sparsegraph, ptr %g, i32 0, i32 0
  %74 = load i64, ptr %nde, align 8, !tbaa !32
  %cmp150 = icmp ugt i64 %74, 0
  br i1 %cmp150, label %if.then154, label %lor.lhs.false152

lor.lhs.false152:                                 ; preds = %while.body148
  %75 = load i32, ptr %tswitch, align 4, !tbaa !5
  %tobool153 = icmp ne i32 %75, 0
  br i1 %tobool153, label %if.then154, label %if.else164

if.then154:                                       ; preds = %lor.lhs.false152, %while.body148
  %76 = load i32, ptr %tswitch, align 4, !tbaa !5
  %tobool155 = icmp ne i32 %76, 0
  br i1 %tobool155, label %if.then156, label %if.else157

if.then156:                                       ; preds = %if.then154
  call void @totalgraph(ptr noundef %g, ptr noundef %h)
  br label %if.end158

if.else157:                                       ; preds = %if.then154
  call void @linegraph(ptr noundef %g, ptr noundef %h)
  br label %if.end158

if.end158:                                        ; preds = %if.else157, %if.then156
  %77 = load i32, ptr %outcode, align 4, !tbaa !5
  %cmp159 = icmp eq i32 %77, 2
  br i1 %cmp159, label %if.then161, label %if.else162

if.then161:                                       ; preds = %if.end158
  %78 = load ptr, ptr %outfile, align 8, !tbaa !9
  call void @writes6_sg(ptr noundef %78, ptr noundef %h)
  br label %if.end163

if.else162:                                       ; preds = %if.end158
  %79 = load ptr, ptr %outfile, align 8, !tbaa !9
  call void @writeg6_sg(ptr noundef %79, ptr noundef %h)
  br label %if.end163

if.end163:                                        ; preds = %if.else162, %if.then161
  br label %if.end166

if.else164:                                       ; preds = %lor.lhs.false152
  %80 = load i64, ptr %nullgraphs, align 8, !tbaa !26
  %inc165 = add i64 %80, 1
  store i64 %inc165, ptr %nullgraphs, align 8, !tbaa !26
  br label %if.end166

if.end166:                                        ; preds = %if.else164, %if.end163
  br label %while.cond145, !llvm.loop !33

while.end167:                                     ; preds = %while.cond145
  %call168 = call i64 @times(ptr noundef @timebuffer) #7
  %81 = load i64, ptr @timebuffer, align 8, !tbaa !27
  %82 = load i64, ptr getelementptr inbounds (%struct.tms, ptr @timebuffer, i32 0, i32 1), align 8, !tbaa !29
  %add169 = add nsw i64 %81, %82
  %conv170 = sitofp i64 %add169 to double
  %call171 = call i64 @sysconf(i32 noundef 2) #7
  %conv172 = sitofp i64 %call171 to double
  %div173 = fdiv double %conv170, %conv172
  %83 = load double, ptr %t, align 8, !tbaa !30
  %sub = fsub double %div173, %83
  store double %sub, ptr %t, align 8, !tbaa !30
  %84 = load i32, ptr %quiet, align 4, !tbaa !5
  %tobool174 = icmp ne i32 %84, 0
  br i1 %tobool174, label %if.end182, label %if.then175

if.then175:                                       ; preds = %while.end167
  %85 = load i64, ptr %nullgraphs, align 8, !tbaa !26
  %cmp176 = icmp ugt i64 %85, 0
  br i1 %cmp176, label %if.then178, label %if.end180

if.then178:                                       ; preds = %if.then175
  %86 = load ptr, ptr @stderr, align 8, !tbaa !9
  %87 = load i64, ptr %nullgraphs, align 8, !tbaa !26
  %call179 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef @.str.21, i64 noundef %87)
  br label %if.end180

if.end180:                                        ; preds = %if.then178, %if.then175
  %88 = load ptr, ptr @stderr, align 8, !tbaa !9
  %89 = load i64, ptr %nin, align 8, !tbaa !26
  %90 = load ptr, ptr %infilename, align 8, !tbaa !9
  %91 = load ptr, ptr %outfilename, align 8, !tbaa !9
  %92 = load double, ptr %t, align 8, !tbaa !30
  %call181 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef @.str.22, i64 noundef %89, ptr noundef %90, ptr noundef %91, double noundef %92)
  br label %if.end182

if.end182:                                        ; preds = %if.end180, %while.end167
  call void @exit(i32 noundef 0) #9
  unreachable

cleanup:                                          ; preds = %if.then19, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr %sw) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %nullgraphs) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %nin) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr %h) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr %g) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %outcode) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %codetype) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %argnum) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %tswitch) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %quiet) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %badargs) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %outfile) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %infile) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %outfilename) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %infilename) #7
  %93 = load i32, ptr %retval, align 4
  ret i32 %93
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

declare i32 @fflush(ptr noundef) #3

declare ptr @opengraphfile(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #3

declare void @gt_abort(ptr noundef) #3

declare noalias ptr @fopen(ptr noundef, ptr noundef) #3

declare void @writeline(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i64 @times(ptr noundef) #5

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) #5

declare ptr @read_sg(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @totalgraph(ptr noundef %g, ptr noundef %h) #0 {
entry:
  %g.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %ge = alloca ptr, align 8
  %gd = alloca ptr, align 8
  %he = alloca ptr, align 8
  %hd = alloca ptr, align 8
  %gv = alloca ptr, align 8
  %hv = alloca ptr, align 8
  %gnv = alloca i32, align 4
  %hnv = alloca i32, align 4
  %jj = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %gnde = alloca i64, align 8
  %hnde = alloca i64, align 8
  %xhnde = alloca i64, align 8
  %num = alloca i64, align 8
  %hi = alloca i64, align 8
  %lo = alloca i64, align 8
  %mid = alloca i64, align 8
  %v = alloca i64, align 8
  %w = alloca i64, align 8
  store ptr %g, ptr %g.addr, align 8, !tbaa !9
  store ptr %h, ptr %h.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %ge) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gd) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %he) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %hd) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gv) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %hv) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %gnv) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %hnv) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %jj) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gnde) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %hnde) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %xhnde) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %num) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %hi) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %lo) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %mid) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #7
  %0 = load ptr, ptr %g.addr, align 8, !tbaa !9
  call void @sortlists_sg(ptr noundef %0)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %v1 = getelementptr inbounds %struct.sparsegraph, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %v1, align 8, !tbaa !11
  store ptr %2, ptr %gv, align 8, !tbaa !9
  %3 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %d = getelementptr inbounds %struct.sparsegraph, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %d, align 8, !tbaa !16
  store ptr %4, ptr %gd, align 8, !tbaa !9
  %5 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %e = getelementptr inbounds %struct.sparsegraph, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %e, align 8, !tbaa !15
  store ptr %6, ptr %ge, align 8, !tbaa !9
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %nv = getelementptr inbounds %struct.sparsegraph, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %nv, align 8, !tbaa !34
  store i32 %8, ptr %gnv, align 4, !tbaa !5
  %9 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %nde = getelementptr inbounds %struct.sparsegraph, ptr %9, i32 0, i32 0
  %10 = load i64, ptr %nde, align 8, !tbaa !32
  store i64 %10, ptr %gnde, align 8, !tbaa !26
  %11 = load i64, ptr %gnde, align 8, !tbaa !26
  %12 = load i64, ptr @totalgraph.eno_sz, align 8, !tbaa !26
  %cmp = icmp ugt i64 %11, %12
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.end
  %13 = load i64, ptr @totalgraph.eno_sz, align 8, !tbaa !26
  %tobool = icmp ne i64 %13, 0
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %14 = load ptr, ptr @totalgraph.eno, align 8, !tbaa !9
  call void @free(ptr noundef %14) #7
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %15 = load i64, ptr %gnde, align 8, !tbaa !26
  store i64 %15, ptr @totalgraph.eno_sz, align 8, !tbaa !26
  %16 = load i64, ptr %gnde, align 8, !tbaa !26
  %mul = mul i64 %16, 8
  %call = call noalias ptr @malloc(i64 noundef %mul) #10
  store ptr %call, ptr @totalgraph.eno, align 8, !tbaa !9
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @gt_abort(ptr noundef @.str.23)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %do.end
  %17 = load i32, ptr %gnv, align 4, !tbaa !5
  %conv = sext i32 %17 to i64
  %18 = load i64, ptr %gnde, align 8, !tbaa !26
  %div = udiv i64 %18, 2
  %add = add i64 %conv, %div
  %conv7 = trunc i64 %add to i32
  store i32 %conv7, ptr %hnv, align 4, !tbaa !5
  %19 = load i32, ptr %hnv, align 4, !tbaa !5
  %20 = load i32, ptr %gnv, align 4, !tbaa !5
  %sub = sub nsw i32 %19, %20
  %conv8 = sext i32 %sub to i64
  %21 = load i64, ptr %gnde, align 8, !tbaa !26
  %div9 = udiv i64 %21, 2
  %cmp10 = icmp ne i64 %conv8, %div9
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end6
  call void @gt_abort(ptr noundef @.str.24)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end6
  %22 = load i64, ptr %gnde, align 8, !tbaa !26
  %mul14 = mul i64 3, %22
  store i64 %mul14, ptr %hnde, align 8, !tbaa !26
  %23 = load i64, ptr %hnde, align 8, !tbaa !26
  %div15 = udiv i64 %23, 3
  %24 = load i64, ptr %gnde, align 8, !tbaa !26
  %cmp16 = icmp ne i64 %div15, %24
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end13
  call void @gt_abort(ptr noundef @.str.25)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end13
  %25 = load i32, ptr %gnv, align 4, !tbaa !5
  %conv20 = sext i32 %25 to i64
  store i64 %conv20, ptr %num, align 8, !tbaa !26
  store i64 0, ptr %i, align 8, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc93, %if.end19
  %26 = load i64, ptr %i, align 8, !tbaa !26
  %27 = load i32, ptr %gnv, align 4, !tbaa !5
  %conv21 = sext i32 %27 to i64
  %cmp22 = icmp ult i64 %26, %conv21
  br i1 %cmp22, label %for.body, label %for.end95

for.body:                                         ; preds = %for.cond
  %28 = load i64, ptr %hnde, align 8, !tbaa !26
  store i64 %28, ptr %xhnde, align 8, !tbaa !26
  %29 = load ptr, ptr %gd, align 8, !tbaa !9
  %30 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds i32, ptr %29, i64 %30
  %31 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %conv24 = sext i32 %31 to i64
  %32 = load ptr, ptr %gd, align 8, !tbaa !9
  %33 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx25 = getelementptr inbounds i32, ptr %32, i64 %33
  %34 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %conv26 = sext i32 %34 to i64
  %sub27 = sub i64 %conv26, 1
  %mul28 = mul i64 %conv24, %sub27
  %35 = load i64, ptr %hnde, align 8, !tbaa !26
  %add29 = add i64 %35, %mul28
  store i64 %add29, ptr %hnde, align 8, !tbaa !26
  %36 = load i64, ptr %hnde, align 8, !tbaa !26
  %37 = load i64, ptr %xhnde, align 8, !tbaa !26
  %cmp30 = icmp ult i64 %36, %37
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %for.body
  call void @gt_abort(ptr noundef @.str.25)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %for.body
  %38 = load ptr, ptr %gv, align 8, !tbaa !9
  %39 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx34 = getelementptr inbounds i64, ptr %38, i64 %39
  %40 = load i64, ptr %arrayidx34, align 8, !tbaa !26
  store i64 %40, ptr %j, align 8, !tbaa !26
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc, %if.end33
  %41 = load i64, ptr %j, align 8, !tbaa !26
  %42 = load ptr, ptr %gv, align 8, !tbaa !9
  %43 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx36 = getelementptr inbounds i64, ptr %42, i64 %43
  %44 = load i64, ptr %arrayidx36, align 8, !tbaa !26
  %45 = load ptr, ptr %gd, align 8, !tbaa !9
  %46 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx37 = getelementptr inbounds i32, ptr %45, i64 %46
  %47 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %conv38 = sext i32 %47 to i64
  %add39 = add i64 %44, %conv38
  %cmp40 = icmp ult i64 %41, %add39
  br i1 %cmp40, label %for.body42, label %for.end

for.body42:                                       ; preds = %for.cond35
  %48 = load ptr, ptr %ge, align 8, !tbaa !9
  %49 = load i64, ptr %j, align 8, !tbaa !26
  %arrayidx43 = getelementptr inbounds i32, ptr %48, i64 %49
  %50 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %conv44 = sext i32 %50 to i64
  %51 = load i64, ptr %i, align 8, !tbaa !26
  %cmp45 = icmp eq i64 %conv44, %51
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %for.body42
  call void @gt_abort(ptr noundef @.str.26)
  br label %if.end91

if.else:                                          ; preds = %for.body42
  %52 = load ptr, ptr %ge, align 8, !tbaa !9
  %53 = load i64, ptr %j, align 8, !tbaa !26
  %arrayidx48 = getelementptr inbounds i32, ptr %52, i64 %53
  %54 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %conv49 = sext i32 %54 to i64
  %55 = load i64, ptr %i, align 8, !tbaa !26
  %cmp50 = icmp ugt i64 %conv49, %55
  br i1 %cmp50, label %if.then52, label %if.else54

if.then52:                                        ; preds = %if.else
  %56 = load i64, ptr %num, align 8, !tbaa !26
  %inc = add i64 %56, 1
  store i64 %inc, ptr %num, align 8, !tbaa !26
  %57 = load ptr, ptr @totalgraph.eno, align 8, !tbaa !9
  %58 = load i64, ptr %j, align 8, !tbaa !26
  %arrayidx53 = getelementptr inbounds i64, ptr %57, i64 %58
  store i64 %56, ptr %arrayidx53, align 8, !tbaa !26
  br label %if.end90

if.else54:                                        ; preds = %if.else
  %59 = load ptr, ptr %gv, align 8, !tbaa !9
  %60 = load ptr, ptr %ge, align 8, !tbaa !9
  %61 = load i64, ptr %j, align 8, !tbaa !26
  %arrayidx55 = getelementptr inbounds i32, ptr %60, i64 %61
  %62 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %idxprom = sext i32 %62 to i64
  %arrayidx56 = getelementptr inbounds i64, ptr %59, i64 %idxprom
  %63 = load i64, ptr %arrayidx56, align 8, !tbaa !26
  store i64 %63, ptr %lo, align 8, !tbaa !26
  %64 = load i64, ptr %lo, align 8, !tbaa !26
  %65 = load ptr, ptr %gd, align 8, !tbaa !9
  %66 = load ptr, ptr %ge, align 8, !tbaa !9
  %67 = load i64, ptr %j, align 8, !tbaa !26
  %arrayidx57 = getelementptr inbounds i32, ptr %66, i64 %67
  %68 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %idxprom58 = sext i32 %68 to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %65, i64 %idxprom58
  %69 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %conv60 = sext i32 %69 to i64
  %add61 = add i64 %64, %conv60
  %sub62 = sub i64 %add61, 1
  store i64 %sub62, ptr %hi, align 8, !tbaa !26
  br label %while.cond

while.cond:                                       ; preds = %if.end83, %if.else54
  %70 = load i64, ptr %lo, align 8, !tbaa !26
  %71 = load i64, ptr %hi, align 8, !tbaa !26
  %cmp63 = icmp ule i64 %70, %71
  br i1 %cmp63, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %72 = load i64, ptr %lo, align 8, !tbaa !26
  %73 = load i64, ptr %hi, align 8, !tbaa !26
  %74 = load i64, ptr %lo, align 8, !tbaa !26
  %sub65 = sub i64 %73, %74
  %div66 = udiv i64 %sub65, 2
  %add67 = add i64 %72, %div66
  store i64 %add67, ptr %mid, align 8, !tbaa !26
  %75 = load ptr, ptr %ge, align 8, !tbaa !9
  %76 = load i64, ptr %mid, align 8, !tbaa !26
  %arrayidx68 = getelementptr inbounds i32, ptr %75, i64 %76
  %77 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %conv69 = sext i32 %77 to i64
  %78 = load i64, ptr %i, align 8, !tbaa !26
  %cmp70 = icmp eq i64 %conv69, %78
  br i1 %cmp70, label %if.then72, label %if.else73

if.then72:                                        ; preds = %while.body
  br label %while.end

if.else73:                                        ; preds = %while.body
  %79 = load ptr, ptr %ge, align 8, !tbaa !9
  %80 = load i64, ptr %mid, align 8, !tbaa !26
  %arrayidx74 = getelementptr inbounds i32, ptr %79, i64 %80
  %81 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  %conv75 = sext i32 %81 to i64
  %82 = load i64, ptr %i, align 8, !tbaa !26
  %cmp76 = icmp ult i64 %conv75, %82
  br i1 %cmp76, label %if.then78, label %if.else80

if.then78:                                        ; preds = %if.else73
  %83 = load i64, ptr %mid, align 8, !tbaa !26
  %add79 = add i64 %83, 1
  store i64 %add79, ptr %lo, align 8, !tbaa !26
  br label %if.end82

if.else80:                                        ; preds = %if.else73
  %84 = load i64, ptr %mid, align 8, !tbaa !26
  %sub81 = sub i64 %84, 1
  store i64 %sub81, ptr %hi, align 8, !tbaa !26
  br label %if.end82

if.end82:                                         ; preds = %if.else80, %if.then78
  br label %if.end83

if.end83:                                         ; preds = %if.end82
  br label %while.cond, !llvm.loop !35

while.end:                                        ; preds = %if.then72, %while.cond
  %85 = load i64, ptr %lo, align 8, !tbaa !26
  %86 = load i64, ptr %hi, align 8, !tbaa !26
  %cmp84 = icmp ugt i64 %85, %86
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %while.end
  call void @gt_abort(ptr noundef @.str.27)
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %while.end
  %87 = load ptr, ptr @totalgraph.eno, align 8, !tbaa !9
  %88 = load i64, ptr %mid, align 8, !tbaa !26
  %arrayidx88 = getelementptr inbounds i64, ptr %87, i64 %88
  %89 = load i64, ptr %arrayidx88, align 8, !tbaa !26
  %90 = load ptr, ptr @totalgraph.eno, align 8, !tbaa !9
  %91 = load i64, ptr %j, align 8, !tbaa !26
  %arrayidx89 = getelementptr inbounds i64, ptr %90, i64 %91
  store i64 %89, ptr %arrayidx89, align 8, !tbaa !26
  br label %if.end90

if.end90:                                         ; preds = %if.end87, %if.then52
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then47
  br label %for.inc

for.inc:                                          ; preds = %if.end91
  %92 = load i64, ptr %j, align 8, !tbaa !26
  %inc92 = add i64 %92, 1
  store i64 %inc92, ptr %j, align 8, !tbaa !26
  br label %for.cond35, !llvm.loop !36

for.end:                                          ; preds = %for.cond35
  br label %for.inc93

for.inc93:                                        ; preds = %for.end
  %93 = load i64, ptr %i, align 8, !tbaa !26
  %inc94 = add i64 %93, 1
  store i64 %inc94, ptr %i, align 8, !tbaa !26
  br label %for.cond, !llvm.loop !37

for.end95:                                        ; preds = %for.cond
  br label %do.body96

do.body96:                                        ; preds = %for.end95
  %94 = load i32, ptr %hnv, align 4, !tbaa !5
  %conv97 = sext i32 %94 to i64
  %95 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %vlen = getelementptr inbounds %struct.sparsegraph, ptr %95, i32 0, i32 6
  %96 = load i64, ptr %vlen, align 8, !tbaa !20
  %cmp98 = icmp ugt i64 %conv97, %96
  br i1 %cmp98, label %if.then100, label %if.end116

if.then100:                                       ; preds = %do.body96
  %97 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %vlen101 = getelementptr inbounds %struct.sparsegraph, ptr %97, i32 0, i32 6
  %98 = load i64, ptr %vlen101, align 8, !tbaa !20
  %tobool102 = icmp ne i64 %98, 0
  br i1 %tobool102, label %if.then103, label %if.end105

if.then103:                                       ; preds = %if.then100
  %99 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %v104 = getelementptr inbounds %struct.sparsegraph, ptr %99, i32 0, i32 1
  %100 = load ptr, ptr %v104, align 8, !tbaa !11
  call void @free(ptr noundef %100) #7
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %if.then100
  %101 = load i32, ptr %hnv, align 4, !tbaa !5
  %conv106 = sext i32 %101 to i64
  %102 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %vlen107 = getelementptr inbounds %struct.sparsegraph, ptr %102, i32 0, i32 6
  store i64 %conv106, ptr %vlen107, align 8, !tbaa !20
  %103 = load i32, ptr %hnv, align 4, !tbaa !5
  %conv108 = sext i32 %103 to i64
  %mul109 = mul i64 %conv108, 8
  %call110 = call noalias ptr @malloc(i64 noundef %mul109) #10
  %104 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %v111 = getelementptr inbounds %struct.sparsegraph, ptr %104, i32 0, i32 1
  store ptr %call110, ptr %v111, align 8, !tbaa !11
  %cmp112 = icmp eq ptr %call110, null
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.end105
  call void @gt_abort(ptr noundef @.str.23)
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.end105
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %do.body96
  %105 = load i32, ptr %hnv, align 4, !tbaa !5
  %conv117 = sext i32 %105 to i64
  %106 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %dlen = getelementptr inbounds %struct.sparsegraph, ptr %106, i32 0, i32 7
  %107 = load i64, ptr %dlen, align 8, !tbaa !19
  %cmp118 = icmp ugt i64 %conv117, %107
  br i1 %cmp118, label %if.then120, label %if.end136

if.then120:                                       ; preds = %if.end116
  %108 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %dlen121 = getelementptr inbounds %struct.sparsegraph, ptr %108, i32 0, i32 7
  %109 = load i64, ptr %dlen121, align 8, !tbaa !19
  %tobool122 = icmp ne i64 %109, 0
  br i1 %tobool122, label %if.then123, label %if.end125

if.then123:                                       ; preds = %if.then120
  %110 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %d124 = getelementptr inbounds %struct.sparsegraph, ptr %110, i32 0, i32 3
  %111 = load ptr, ptr %d124, align 8, !tbaa !16
  call void @free(ptr noundef %111) #7
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %if.then120
  %112 = load i32, ptr %hnv, align 4, !tbaa !5
  %conv126 = sext i32 %112 to i64
  %113 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %dlen127 = getelementptr inbounds %struct.sparsegraph, ptr %113, i32 0, i32 7
  store i64 %conv126, ptr %dlen127, align 8, !tbaa !19
  %114 = load i32, ptr %hnv, align 4, !tbaa !5
  %conv128 = sext i32 %114 to i64
  %mul129 = mul i64 %conv128, 4
  %call130 = call noalias ptr @malloc(i64 noundef %mul129) #10
  %115 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %d131 = getelementptr inbounds %struct.sparsegraph, ptr %115, i32 0, i32 3
  store ptr %call130, ptr %d131, align 8, !tbaa !16
  %cmp132 = icmp eq ptr %call130, null
  br i1 %cmp132, label %if.then134, label %if.end135

if.then134:                                       ; preds = %if.end125
  call void @gt_abort(ptr noundef @.str.23)
  br label %if.end135

if.end135:                                        ; preds = %if.then134, %if.end125
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.end116
  %116 = load i64, ptr %hnde, align 8, !tbaa !26
  %117 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %elen = getelementptr inbounds %struct.sparsegraph, ptr %117, i32 0, i32 8
  %118 = load i64, ptr %elen, align 8, !tbaa !18
  %cmp137 = icmp ugt i64 %116, %118
  br i1 %cmp137, label %if.then139, label %if.end153

if.then139:                                       ; preds = %if.end136
  %119 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %elen140 = getelementptr inbounds %struct.sparsegraph, ptr %119, i32 0, i32 8
  %120 = load i64, ptr %elen140, align 8, !tbaa !18
  %tobool141 = icmp ne i64 %120, 0
  br i1 %tobool141, label %if.then142, label %if.end144

if.then142:                                       ; preds = %if.then139
  %121 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %e143 = getelementptr inbounds %struct.sparsegraph, ptr %121, i32 0, i32 4
  %122 = load ptr, ptr %e143, align 8, !tbaa !15
  call void @free(ptr noundef %122) #7
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %if.then139
  %123 = load i64, ptr %hnde, align 8, !tbaa !26
  %124 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %elen145 = getelementptr inbounds %struct.sparsegraph, ptr %124, i32 0, i32 8
  store i64 %123, ptr %elen145, align 8, !tbaa !18
  %125 = load i64, ptr %hnde, align 8, !tbaa !26
  %mul146 = mul i64 %125, 4
  %call147 = call noalias ptr @malloc(i64 noundef %mul146) #10
  %126 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %e148 = getelementptr inbounds %struct.sparsegraph, ptr %126, i32 0, i32 4
  store ptr %call147, ptr %e148, align 8, !tbaa !15
  %cmp149 = icmp eq ptr %call147, null
  br i1 %cmp149, label %if.then151, label %if.end152

if.then151:                                       ; preds = %if.end144
  call void @gt_abort(ptr noundef @.str.23)
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %if.end144
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.end136
  br label %do.cond154

do.cond154:                                       ; preds = %if.end153
  br label %do.end155

do.end155:                                        ; preds = %do.cond154
  %127 = load i32, ptr %hnv, align 4, !tbaa !5
  %128 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %nv156 = getelementptr inbounds %struct.sparsegraph, ptr %128, i32 0, i32 2
  store i32 %127, ptr %nv156, align 8, !tbaa !34
  %129 = load i64, ptr %hnde, align 8, !tbaa !26
  %130 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %nde157 = getelementptr inbounds %struct.sparsegraph, ptr %130, i32 0, i32 0
  store i64 %129, ptr %nde157, align 8, !tbaa !32
  br label %do.body158

do.body158:                                       ; preds = %do.end155
  %131 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %v159 = getelementptr inbounds %struct.sparsegraph, ptr %131, i32 0, i32 1
  %132 = load ptr, ptr %v159, align 8, !tbaa !11
  store ptr %132, ptr %hv, align 8, !tbaa !9
  %133 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %d160 = getelementptr inbounds %struct.sparsegraph, ptr %133, i32 0, i32 3
  %134 = load ptr, ptr %d160, align 8, !tbaa !16
  store ptr %134, ptr %hd, align 8, !tbaa !9
  %135 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %e161 = getelementptr inbounds %struct.sparsegraph, ptr %135, i32 0, i32 4
  %136 = load ptr, ptr %e161, align 8, !tbaa !15
  store ptr %136, ptr %he, align 8, !tbaa !9
  br label %do.cond162

do.cond162:                                       ; preds = %do.body158
  br label %do.end163

do.end163:                                        ; preds = %do.cond162
  store i64 0, ptr %i, align 8, !tbaa !26
  br label %for.cond164

for.cond164:                                      ; preds = %for.inc172, %do.end163
  %137 = load i64, ptr %i, align 8, !tbaa !26
  %138 = load i32, ptr %gnv, align 4, !tbaa !5
  %conv165 = sext i32 %138 to i64
  %cmp166 = icmp ult i64 %137, %conv165
  br i1 %cmp166, label %for.body168, label %for.end174

for.body168:                                      ; preds = %for.cond164
  %139 = load ptr, ptr %gd, align 8, !tbaa !9
  %140 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx169 = getelementptr inbounds i32, ptr %139, i64 %140
  %141 = load i32, ptr %arrayidx169, align 4, !tbaa !5
  %mul170 = mul nsw i32 2, %141
  %142 = load ptr, ptr %hd, align 8, !tbaa !9
  %143 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx171 = getelementptr inbounds i32, ptr %142, i64 %143
  store i32 %mul170, ptr %arrayidx171, align 4, !tbaa !5
  br label %for.inc172

for.inc172:                                       ; preds = %for.body168
  %144 = load i64, ptr %i, align 8, !tbaa !26
  %inc173 = add i64 %144, 1
  store i64 %inc173, ptr %i, align 8, !tbaa !26
  br label %for.cond164, !llvm.loop !38

for.end174:                                       ; preds = %for.cond164
  %145 = load i32, ptr %gnv, align 4, !tbaa !5
  %conv175 = sext i32 %145 to i64
  store i64 %conv175, ptr %i, align 8, !tbaa !26
  br label %for.cond176

for.cond176:                                      ; preds = %for.inc182, %for.end174
  %146 = load i64, ptr %i, align 8, !tbaa !26
  %147 = load i32, ptr %hnv, align 4, !tbaa !5
  %conv177 = sext i32 %147 to i64
  %cmp178 = icmp ult i64 %146, %conv177
  br i1 %cmp178, label %for.body180, label %for.end184

for.body180:                                      ; preds = %for.cond176
  %148 = load ptr, ptr %hd, align 8, !tbaa !9
  %149 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx181 = getelementptr inbounds i32, ptr %148, i64 %149
  store i32 2, ptr %arrayidx181, align 4, !tbaa !5
  br label %for.inc182

for.inc182:                                       ; preds = %for.body180
  %150 = load i64, ptr %i, align 8, !tbaa !26
  %inc183 = add i64 %150, 1
  store i64 %inc183, ptr %i, align 8, !tbaa !26
  br label %for.cond176, !llvm.loop !39

for.end184:                                       ; preds = %for.cond176
  store i64 0, ptr %i, align 8, !tbaa !26
  br label %for.cond185

for.cond185:                                      ; preds = %for.inc207, %for.end184
  %151 = load i64, ptr %i, align 8, !tbaa !26
  %152 = load i32, ptr %gnv, align 4, !tbaa !5
  %conv186 = sext i32 %152 to i64
  %cmp187 = icmp ult i64 %151, %conv186
  br i1 %cmp187, label %for.body189, label %for.end209

for.body189:                                      ; preds = %for.cond185
  %153 = load ptr, ptr %gv, align 8, !tbaa !9
  %154 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx190 = getelementptr inbounds i64, ptr %153, i64 %154
  %155 = load i64, ptr %arrayidx190, align 8, !tbaa !26
  store i64 %155, ptr %j, align 8, !tbaa !26
  br label %for.cond191

for.cond191:                                      ; preds = %for.inc204, %for.body189
  %156 = load i64, ptr %j, align 8, !tbaa !26
  %157 = load ptr, ptr %gv, align 8, !tbaa !9
  %158 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx192 = getelementptr inbounds i64, ptr %157, i64 %158
  %159 = load i64, ptr %arrayidx192, align 8, !tbaa !26
  %160 = load ptr, ptr %gd, align 8, !tbaa !9
  %161 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx193 = getelementptr inbounds i32, ptr %160, i64 %161
  %162 = load i32, ptr %arrayidx193, align 4, !tbaa !5
  %conv194 = sext i32 %162 to i64
  %add195 = add i64 %159, %conv194
  %cmp196 = icmp ult i64 %156, %add195
  br i1 %cmp196, label %for.body198, label %for.end206

for.body198:                                      ; preds = %for.cond191
  %163 = load ptr, ptr %gd, align 8, !tbaa !9
  %164 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx199 = getelementptr inbounds i32, ptr %163, i64 %164
  %165 = load i32, ptr %arrayidx199, align 4, !tbaa !5
  %sub200 = sub nsw i32 %165, 1
  %166 = load ptr, ptr %hd, align 8, !tbaa !9
  %167 = load ptr, ptr @totalgraph.eno, align 8, !tbaa !9
  %168 = load i64, ptr %j, align 8, !tbaa !26
  %arrayidx201 = getelementptr inbounds i64, ptr %167, i64 %168
  %169 = load i64, ptr %arrayidx201, align 8, !tbaa !26
  %arrayidx202 = getelementptr inbounds i32, ptr %166, i64 %169
  %170 = load i32, ptr %arrayidx202, align 4, !tbaa !5
  %add203 = add nsw i32 %170, %sub200
  store i32 %add203, ptr %arrayidx202, align 4, !tbaa !5
  br label %for.inc204

for.inc204:                                       ; preds = %for.body198
  %171 = load i64, ptr %j, align 8, !tbaa !26
  %inc205 = add i64 %171, 1
  store i64 %inc205, ptr %j, align 8, !tbaa !26
  br label %for.cond191, !llvm.loop !40

for.end206:                                       ; preds = %for.cond191
  br label %for.inc207

for.inc207:                                       ; preds = %for.end206
  %172 = load i64, ptr %i, align 8, !tbaa !26
  %inc208 = add i64 %172, 1
  store i64 %inc208, ptr %i, align 8, !tbaa !26
  br label %for.cond185, !llvm.loop !41

for.end209:                                       ; preds = %for.cond185
  %173 = load ptr, ptr %hv, align 8, !tbaa !9
  %arrayidx210 = getelementptr inbounds i64, ptr %173, i64 0
  store i64 0, ptr %arrayidx210, align 8, !tbaa !26
  store i64 1, ptr %i, align 8, !tbaa !26
  br label %for.cond211

for.cond211:                                      ; preds = %for.inc223, %for.end209
  %174 = load i64, ptr %i, align 8, !tbaa !26
  %175 = load i32, ptr %hnv, align 4, !tbaa !5
  %conv212 = sext i32 %175 to i64
  %cmp213 = icmp ult i64 %174, %conv212
  br i1 %cmp213, label %for.body215, label %for.end225

for.body215:                                      ; preds = %for.cond211
  %176 = load ptr, ptr %hv, align 8, !tbaa !9
  %177 = load i64, ptr %i, align 8, !tbaa !26
  %sub216 = sub i64 %177, 1
  %arrayidx217 = getelementptr inbounds i64, ptr %176, i64 %sub216
  %178 = load i64, ptr %arrayidx217, align 8, !tbaa !26
  %179 = load ptr, ptr %hd, align 8, !tbaa !9
  %180 = load i64, ptr %i, align 8, !tbaa !26
  %sub218 = sub i64 %180, 1
  %arrayidx219 = getelementptr inbounds i32, ptr %179, i64 %sub218
  %181 = load i32, ptr %arrayidx219, align 4, !tbaa !5
  %conv220 = sext i32 %181 to i64
  %add221 = add i64 %178, %conv220
  %182 = load ptr, ptr %hv, align 8, !tbaa !9
  %183 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx222 = getelementptr inbounds i64, ptr %182, i64 %183
  store i64 %add221, ptr %arrayidx222, align 8, !tbaa !26
  br label %for.inc223

for.inc223:                                       ; preds = %for.body215
  %184 = load i64, ptr %i, align 8, !tbaa !26
  %inc224 = add i64 %184, 1
  store i64 %inc224, ptr %i, align 8, !tbaa !26
  br label %for.cond211, !llvm.loop !42

for.end225:                                       ; preds = %for.cond211
  %185 = load i64, ptr %hnde, align 8, !tbaa !26
  %186 = load ptr, ptr %hv, align 8, !tbaa !9
  %187 = load i32, ptr %hnv, align 4, !tbaa !5
  %sub226 = sub nsw i32 %187, 1
  %idxprom227 = sext i32 %sub226 to i64
  %arrayidx228 = getelementptr inbounds i64, ptr %186, i64 %idxprom227
  %188 = load i64, ptr %arrayidx228, align 8, !tbaa !26
  %sub229 = sub i64 %185, %188
  %189 = load ptr, ptr %hd, align 8, !tbaa !9
  %190 = load i32, ptr %hnv, align 4, !tbaa !5
  %sub230 = sub nsw i32 %190, 1
  %idxprom231 = sext i32 %sub230 to i64
  %arrayidx232 = getelementptr inbounds i32, ptr %189, i64 %idxprom231
  %191 = load i32, ptr %arrayidx232, align 4, !tbaa !5
  %conv233 = sext i32 %191 to i64
  %cmp234 = icmp ne i64 %sub229, %conv233
  br i1 %cmp234, label %if.then236, label %if.end237

if.then236:                                       ; preds = %for.end225
  call void @gt_abort(ptr noundef @.str.25)
  br label %if.end237

if.end237:                                        ; preds = %if.then236, %for.end225
  store i64 0, ptr %i, align 8, !tbaa !26
  br label %for.cond238

for.cond238:                                      ; preds = %for.inc244, %if.end237
  %192 = load i64, ptr %i, align 8, !tbaa !26
  %193 = load i32, ptr %hnv, align 4, !tbaa !5
  %conv239 = sext i32 %193 to i64
  %cmp240 = icmp ult i64 %192, %conv239
  br i1 %cmp240, label %for.body242, label %for.end246

for.body242:                                      ; preds = %for.cond238
  %194 = load ptr, ptr %hd, align 8, !tbaa !9
  %195 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx243 = getelementptr inbounds i32, ptr %194, i64 %195
  store i32 0, ptr %arrayidx243, align 4, !tbaa !5
  br label %for.inc244

for.inc244:                                       ; preds = %for.body242
  %196 = load i64, ptr %i, align 8, !tbaa !26
  %inc245 = add i64 %196, 1
  store i64 %inc245, ptr %i, align 8, !tbaa !26
  br label %for.cond238, !llvm.loop !43

for.end246:                                       ; preds = %for.cond238
  store i64 0, ptr %i, align 8, !tbaa !26
  br label %for.cond247

for.cond247:                                      ; preds = %for.inc286, %for.end246
  %197 = load i64, ptr %i, align 8, !tbaa !26
  %198 = load i32, ptr %gnv, align 4, !tbaa !5
  %conv248 = sext i32 %198 to i64
  %cmp249 = icmp ult i64 %197, %conv248
  br i1 %cmp249, label %for.body251, label %for.end288

for.body251:                                      ; preds = %for.cond247
  %199 = load ptr, ptr %gv, align 8, !tbaa !9
  %200 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx252 = getelementptr inbounds i64, ptr %199, i64 %200
  %201 = load i64, ptr %arrayidx252, align 8, !tbaa !26
  store i64 %201, ptr %j, align 8, !tbaa !26
  br label %for.cond253

for.cond253:                                      ; preds = %for.inc283, %for.body251
  %202 = load i64, ptr %j, align 8, !tbaa !26
  %203 = load ptr, ptr %gv, align 8, !tbaa !9
  %204 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx254 = getelementptr inbounds i64, ptr %203, i64 %204
  %205 = load i64, ptr %arrayidx254, align 8, !tbaa !26
  %206 = load ptr, ptr %gd, align 8, !tbaa !9
  %207 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx255 = getelementptr inbounds i32, ptr %206, i64 %207
  %208 = load i32, ptr %arrayidx255, align 4, !tbaa !5
  %conv256 = sext i32 %208 to i64
  %add257 = add i64 %205, %conv256
  %cmp258 = icmp ult i64 %202, %add257
  br i1 %cmp258, label %for.body260, label %for.end285

for.body260:                                      ; preds = %for.cond253
  %209 = load ptr, ptr @totalgraph.eno, align 8, !tbaa !9
  %210 = load i64, ptr %j, align 8, !tbaa !26
  %arrayidx261 = getelementptr inbounds i64, ptr %209, i64 %210
  %211 = load i64, ptr %arrayidx261, align 8, !tbaa !26
  store i64 %211, ptr %v, align 8, !tbaa !26
  %212 = load ptr, ptr %ge, align 8, !tbaa !9
  %213 = load i64, ptr %j, align 8, !tbaa !26
  %arrayidx262 = getelementptr inbounds i32, ptr %212, i64 %213
  %214 = load i32, ptr %arrayidx262, align 4, !tbaa !5
  %215 = load ptr, ptr %he, align 8, !tbaa !9
  %216 = load ptr, ptr %hv, align 8, !tbaa !9
  %217 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx263 = getelementptr inbounds i64, ptr %216, i64 %217
  %218 = load i64, ptr %arrayidx263, align 8, !tbaa !26
  %219 = load ptr, ptr %hd, align 8, !tbaa !9
  %220 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx264 = getelementptr inbounds i32, ptr %219, i64 %220
  %221 = load i32, ptr %arrayidx264, align 4, !tbaa !5
  %inc265 = add nsw i32 %221, 1
  store i32 %inc265, ptr %arrayidx264, align 4, !tbaa !5
  %conv266 = sext i32 %221 to i64
  %add267 = add i64 %218, %conv266
  %arrayidx268 = getelementptr inbounds i32, ptr %215, i64 %add267
  store i32 %214, ptr %arrayidx268, align 4, !tbaa !5
  %222 = load i64, ptr %v, align 8, !tbaa !26
  %conv269 = trunc i64 %222 to i32
  %223 = load ptr, ptr %he, align 8, !tbaa !9
  %224 = load ptr, ptr %hv, align 8, !tbaa !9
  %225 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx270 = getelementptr inbounds i64, ptr %224, i64 %225
  %226 = load i64, ptr %arrayidx270, align 8, !tbaa !26
  %227 = load ptr, ptr %hd, align 8, !tbaa !9
  %228 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx271 = getelementptr inbounds i32, ptr %227, i64 %228
  %229 = load i32, ptr %arrayidx271, align 4, !tbaa !5
  %inc272 = add nsw i32 %229, 1
  store i32 %inc272, ptr %arrayidx271, align 4, !tbaa !5
  %conv273 = sext i32 %229 to i64
  %add274 = add i64 %226, %conv273
  %arrayidx275 = getelementptr inbounds i32, ptr %223, i64 %add274
  store i32 %conv269, ptr %arrayidx275, align 4, !tbaa !5
  %230 = load i64, ptr %i, align 8, !tbaa !26
  %conv276 = trunc i64 %230 to i32
  %231 = load ptr, ptr %he, align 8, !tbaa !9
  %232 = load ptr, ptr %hv, align 8, !tbaa !9
  %233 = load i64, ptr %v, align 8, !tbaa !26
  %arrayidx277 = getelementptr inbounds i64, ptr %232, i64 %233
  %234 = load i64, ptr %arrayidx277, align 8, !tbaa !26
  %235 = load ptr, ptr %hd, align 8, !tbaa !9
  %236 = load i64, ptr %v, align 8, !tbaa !26
  %arrayidx278 = getelementptr inbounds i32, ptr %235, i64 %236
  %237 = load i32, ptr %arrayidx278, align 4, !tbaa !5
  %inc279 = add nsw i32 %237, 1
  store i32 %inc279, ptr %arrayidx278, align 4, !tbaa !5
  %conv280 = sext i32 %237 to i64
  %add281 = add i64 %234, %conv280
  %arrayidx282 = getelementptr inbounds i32, ptr %231, i64 %add281
  store i32 %conv276, ptr %arrayidx282, align 4, !tbaa !5
  br label %for.inc283

for.inc283:                                       ; preds = %for.body260
  %238 = load i64, ptr %j, align 8, !tbaa !26
  %inc284 = add i64 %238, 1
  store i64 %inc284, ptr %j, align 8, !tbaa !26
  br label %for.cond253, !llvm.loop !44

for.end285:                                       ; preds = %for.cond253
  br label %for.inc286

for.inc286:                                       ; preds = %for.end285
  %239 = load i64, ptr %i, align 8, !tbaa !26
  %inc287 = add i64 %239, 1
  store i64 %inc287, ptr %i, align 8, !tbaa !26
  br label %for.cond247, !llvm.loop !45

for.end288:                                       ; preds = %for.cond247
  store i64 0, ptr %i, align 8, !tbaa !26
  br label %for.cond289

for.cond289:                                      ; preds = %for.inc334, %for.end288
  %240 = load i64, ptr %i, align 8, !tbaa !26
  %241 = load i32, ptr %gnv, align 4, !tbaa !5
  %conv290 = sext i32 %241 to i64
  %cmp291 = icmp ult i64 %240, %conv290
  br i1 %cmp291, label %for.body293, label %for.end336

for.body293:                                      ; preds = %for.cond289
  store i32 0, ptr %jj, align 4, !tbaa !5
  br label %for.cond294

for.cond294:                                      ; preds = %for.inc331, %for.body293
  %242 = load i32, ptr %jj, align 4, !tbaa !5
  %243 = load ptr, ptr %gd, align 8, !tbaa !9
  %244 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx295 = getelementptr inbounds i32, ptr %243, i64 %244
  %245 = load i32, ptr %arrayidx295, align 4, !tbaa !5
  %sub296 = sub nsw i32 %245, 1
  %cmp297 = icmp slt i32 %242, %sub296
  br i1 %cmp297, label %for.body299, label %for.end333

for.body299:                                      ; preds = %for.cond294
  %246 = load ptr, ptr %gv, align 8, !tbaa !9
  %247 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx300 = getelementptr inbounds i64, ptr %246, i64 %247
  %248 = load i64, ptr %arrayidx300, align 8, !tbaa !26
  %249 = load i32, ptr %jj, align 4, !tbaa !5
  %conv301 = sext i32 %249 to i64
  %add302 = add i64 %248, %conv301
  store i64 %add302, ptr %j, align 8, !tbaa !26
  %250 = load i64, ptr %j, align 8, !tbaa !26
  %add303 = add i64 %250, 1
  store i64 %add303, ptr %k, align 8, !tbaa !26
  br label %for.cond304

for.cond304:                                      ; preds = %for.inc328, %for.body299
  %251 = load i64, ptr %k, align 8, !tbaa !26
  %252 = load ptr, ptr %gv, align 8, !tbaa !9
  %253 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx305 = getelementptr inbounds i64, ptr %252, i64 %253
  %254 = load i64, ptr %arrayidx305, align 8, !tbaa !26
  %255 = load ptr, ptr %gd, align 8, !tbaa !9
  %256 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx306 = getelementptr inbounds i32, ptr %255, i64 %256
  %257 = load i32, ptr %arrayidx306, align 4, !tbaa !5
  %conv307 = sext i32 %257 to i64
  %add308 = add i64 %254, %conv307
  %cmp309 = icmp ult i64 %251, %add308
  br i1 %cmp309, label %for.body311, label %for.end330

for.body311:                                      ; preds = %for.cond304
  %258 = load ptr, ptr @totalgraph.eno, align 8, !tbaa !9
  %259 = load i64, ptr %j, align 8, !tbaa !26
  %arrayidx312 = getelementptr inbounds i64, ptr %258, i64 %259
  %260 = load i64, ptr %arrayidx312, align 8, !tbaa !26
  store i64 %260, ptr %v, align 8, !tbaa !26
  %261 = load ptr, ptr @totalgraph.eno, align 8, !tbaa !9
  %262 = load i64, ptr %k, align 8, !tbaa !26
  %arrayidx313 = getelementptr inbounds i64, ptr %261, i64 %262
  %263 = load i64, ptr %arrayidx313, align 8, !tbaa !26
  store i64 %263, ptr %w, align 8, !tbaa !26
  %264 = load i64, ptr %w, align 8, !tbaa !26
  %conv314 = trunc i64 %264 to i32
  %265 = load ptr, ptr %he, align 8, !tbaa !9
  %266 = load ptr, ptr %hv, align 8, !tbaa !9
  %267 = load i64, ptr %v, align 8, !tbaa !26
  %arrayidx315 = getelementptr inbounds i64, ptr %266, i64 %267
  %268 = load i64, ptr %arrayidx315, align 8, !tbaa !26
  %269 = load ptr, ptr %hd, align 8, !tbaa !9
  %270 = load i64, ptr %v, align 8, !tbaa !26
  %arrayidx316 = getelementptr inbounds i32, ptr %269, i64 %270
  %271 = load i32, ptr %arrayidx316, align 4, !tbaa !5
  %inc317 = add nsw i32 %271, 1
  store i32 %inc317, ptr %arrayidx316, align 4, !tbaa !5
  %conv318 = sext i32 %271 to i64
  %add319 = add i64 %268, %conv318
  %arrayidx320 = getelementptr inbounds i32, ptr %265, i64 %add319
  store i32 %conv314, ptr %arrayidx320, align 4, !tbaa !5
  %272 = load i64, ptr %v, align 8, !tbaa !26
  %conv321 = trunc i64 %272 to i32
  %273 = load ptr, ptr %he, align 8, !tbaa !9
  %274 = load ptr, ptr %hv, align 8, !tbaa !9
  %275 = load i64, ptr %w, align 8, !tbaa !26
  %arrayidx322 = getelementptr inbounds i64, ptr %274, i64 %275
  %276 = load i64, ptr %arrayidx322, align 8, !tbaa !26
  %277 = load ptr, ptr %hd, align 8, !tbaa !9
  %278 = load i64, ptr %w, align 8, !tbaa !26
  %arrayidx323 = getelementptr inbounds i32, ptr %277, i64 %278
  %279 = load i32, ptr %arrayidx323, align 4, !tbaa !5
  %inc324 = add nsw i32 %279, 1
  store i32 %inc324, ptr %arrayidx323, align 4, !tbaa !5
  %conv325 = sext i32 %279 to i64
  %add326 = add i64 %276, %conv325
  %arrayidx327 = getelementptr inbounds i32, ptr %273, i64 %add326
  store i32 %conv321, ptr %arrayidx327, align 4, !tbaa !5
  br label %for.inc328

for.inc328:                                       ; preds = %for.body311
  %280 = load i64, ptr %k, align 8, !tbaa !26
  %inc329 = add i64 %280, 1
  store i64 %inc329, ptr %k, align 8, !tbaa !26
  br label %for.cond304, !llvm.loop !46

for.end330:                                       ; preds = %for.cond304
  br label %for.inc331

for.inc331:                                       ; preds = %for.end330
  %281 = load i32, ptr %jj, align 4, !tbaa !5
  %inc332 = add nsw i32 %281, 1
  store i32 %inc332, ptr %jj, align 4, !tbaa !5
  br label %for.cond294, !llvm.loop !47

for.end333:                                       ; preds = %for.cond294
  br label %for.inc334

for.inc334:                                       ; preds = %for.end333
  %282 = load i64, ptr %i, align 8, !tbaa !26
  %inc335 = add i64 %282, 1
  store i64 %inc335, ptr %i, align 8, !tbaa !26
  br label %for.cond289, !llvm.loop !48

for.end336:                                       ; preds = %for.cond289
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %mid) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %lo) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %hi) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %num) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %xhnde) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %hnde) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gnde) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %jj) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %hnv) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %gnv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %hv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %hd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %he) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ge) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @linegraph(ptr noundef %g, ptr noundef %h) #0 {
entry:
  %g.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %ge = alloca ptr, align 8
  %gd = alloca ptr, align 8
  %he = alloca ptr, align 8
  %hd = alloca ptr, align 8
  %gv = alloca ptr, align 8
  %hv = alloca ptr, align 8
  %gnv = alloca i32, align 4
  %hnv = alloca i32, align 4
  %jj = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %gnde = alloca i64, align 8
  %hnde = alloca i64, align 8
  %xhnde = alloca i64, align 8
  %num = alloca i64, align 8
  %hi = alloca i64, align 8
  %lo = alloca i64, align 8
  %mid = alloca i64, align 8
  %v = alloca i64, align 8
  %w = alloca i64, align 8
  store ptr %g, ptr %g.addr, align 8, !tbaa !9
  store ptr %h, ptr %h.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %ge) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gd) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %he) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %hd) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gv) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %hv) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %gnv) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %hnv) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %jj) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %gnde) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %hnde) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %xhnde) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %num) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %hi) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %lo) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %mid) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #7
  %0 = load ptr, ptr %g.addr, align 8, !tbaa !9
  call void @sortlists_sg(ptr noundef %0)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %v1 = getelementptr inbounds %struct.sparsegraph, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %v1, align 8, !tbaa !11
  store ptr %2, ptr %gv, align 8, !tbaa !9
  %3 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %d = getelementptr inbounds %struct.sparsegraph, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %d, align 8, !tbaa !16
  store ptr %4, ptr %gd, align 8, !tbaa !9
  %5 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %e = getelementptr inbounds %struct.sparsegraph, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %e, align 8, !tbaa !15
  store ptr %6, ptr %ge, align 8, !tbaa !9
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %nv = getelementptr inbounds %struct.sparsegraph, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %nv, align 8, !tbaa !34
  store i32 %8, ptr %gnv, align 4, !tbaa !5
  %9 = load ptr, ptr %g.addr, align 8, !tbaa !9
  %nde = getelementptr inbounds %struct.sparsegraph, ptr %9, i32 0, i32 0
  %10 = load i64, ptr %nde, align 8, !tbaa !32
  store i64 %10, ptr %gnde, align 8, !tbaa !26
  %11 = load i64, ptr %gnde, align 8, !tbaa !26
  %12 = load i64, ptr @linegraph.eno_sz, align 8, !tbaa !26
  %cmp = icmp ugt i64 %11, %12
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %do.end
  %13 = load i64, ptr @linegraph.eno_sz, align 8, !tbaa !26
  %tobool = icmp ne i64 %13, 0
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %14 = load ptr, ptr @linegraph.eno, align 8, !tbaa !9
  call void @free(ptr noundef %14) #7
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %15 = load i64, ptr %gnde, align 8, !tbaa !26
  store i64 %15, ptr @linegraph.eno_sz, align 8, !tbaa !26
  %16 = load i64, ptr %gnde, align 8, !tbaa !26
  %mul = mul i64 %16, 8
  %call = call noalias ptr @malloc(i64 noundef %mul) #10
  store ptr %call, ptr @linegraph.eno, align 8, !tbaa !9
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @gt_abort(ptr noundef @.str.23)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %do.end
  %17 = load i64, ptr %gnde, align 8, !tbaa !26
  %div = udiv i64 %17, 2
  %conv = trunc i64 %div to i32
  store i32 %conv, ptr %hnv, align 4, !tbaa !5
  %18 = load i32, ptr %hnv, align 4, !tbaa !5
  %conv7 = sext i32 %18 to i64
  %19 = load i64, ptr %gnde, align 8, !tbaa !26
  %div8 = udiv i64 %19, 2
  %cmp9 = icmp ne i64 %conv7, %div8
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  call void @gt_abort(ptr noundef @.str.24)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end6
  store i64 0, ptr %hnde, align 8, !tbaa !26
  store i64 0, ptr %num, align 8, !tbaa !26
  store i64 0, ptr %i, align 8, !tbaa !26
  br label %for.cond

for.cond:                                         ; preds = %for.inc83, %if.end12
  %20 = load i64, ptr %i, align 8, !tbaa !26
  %21 = load i32, ptr %gnv, align 4, !tbaa !5
  %conv13 = sext i32 %21 to i64
  %cmp14 = icmp ult i64 %20, %conv13
  br i1 %cmp14, label %for.body, label %for.end85

for.body:                                         ; preds = %for.cond
  %22 = load i64, ptr %hnde, align 8, !tbaa !26
  store i64 %22, ptr %xhnde, align 8, !tbaa !26
  %23 = load ptr, ptr %gd, align 8, !tbaa !9
  %24 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx = getelementptr inbounds i32, ptr %23, i64 %24
  %25 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %conv16 = sext i32 %25 to i64
  %26 = load ptr, ptr %gd, align 8, !tbaa !9
  %27 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx17 = getelementptr inbounds i32, ptr %26, i64 %27
  %28 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %conv18 = sext i32 %28 to i64
  %sub = sub i64 %conv18, 1
  %mul19 = mul i64 %conv16, %sub
  %29 = load i64, ptr %hnde, align 8, !tbaa !26
  %add = add i64 %29, %mul19
  store i64 %add, ptr %hnde, align 8, !tbaa !26
  %30 = load i64, ptr %hnde, align 8, !tbaa !26
  %31 = load i64, ptr %xhnde, align 8, !tbaa !26
  %cmp20 = icmp ult i64 %30, %31
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body
  call void @gt_abort(ptr noundef @.str.25)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.body
  %32 = load ptr, ptr %gv, align 8, !tbaa !9
  %33 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx24 = getelementptr inbounds i64, ptr %32, i64 %33
  %34 = load i64, ptr %arrayidx24, align 8, !tbaa !26
  store i64 %34, ptr %j, align 8, !tbaa !26
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc, %if.end23
  %35 = load i64, ptr %j, align 8, !tbaa !26
  %36 = load ptr, ptr %gv, align 8, !tbaa !9
  %37 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx26 = getelementptr inbounds i64, ptr %36, i64 %37
  %38 = load i64, ptr %arrayidx26, align 8, !tbaa !26
  %39 = load ptr, ptr %gd, align 8, !tbaa !9
  %40 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx27 = getelementptr inbounds i32, ptr %39, i64 %40
  %41 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %conv28 = sext i32 %41 to i64
  %add29 = add i64 %38, %conv28
  %cmp30 = icmp ult i64 %35, %add29
  br i1 %cmp30, label %for.body32, label %for.end

for.body32:                                       ; preds = %for.cond25
  %42 = load ptr, ptr %ge, align 8, !tbaa !9
  %43 = load i64, ptr %j, align 8, !tbaa !26
  %arrayidx33 = getelementptr inbounds i32, ptr %42, i64 %43
  %44 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %conv34 = sext i32 %44 to i64
  %45 = load i64, ptr %i, align 8, !tbaa !26
  %cmp35 = icmp eq i64 %conv34, %45
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %for.body32
  call void @gt_abort(ptr noundef @.str.26)
  br label %if.end81

if.else:                                          ; preds = %for.body32
  %46 = load ptr, ptr %ge, align 8, !tbaa !9
  %47 = load i64, ptr %j, align 8, !tbaa !26
  %arrayidx38 = getelementptr inbounds i32, ptr %46, i64 %47
  %48 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %conv39 = sext i32 %48 to i64
  %49 = load i64, ptr %i, align 8, !tbaa !26
  %cmp40 = icmp ugt i64 %conv39, %49
  br i1 %cmp40, label %if.then42, label %if.else44

if.then42:                                        ; preds = %if.else
  %50 = load i64, ptr %num, align 8, !tbaa !26
  %inc = add i64 %50, 1
  store i64 %inc, ptr %num, align 8, !tbaa !26
  %51 = load ptr, ptr @linegraph.eno, align 8, !tbaa !9
  %52 = load i64, ptr %j, align 8, !tbaa !26
  %arrayidx43 = getelementptr inbounds i64, ptr %51, i64 %52
  store i64 %50, ptr %arrayidx43, align 8, !tbaa !26
  br label %if.end80

if.else44:                                        ; preds = %if.else
  %53 = load ptr, ptr %gv, align 8, !tbaa !9
  %54 = load ptr, ptr %ge, align 8, !tbaa !9
  %55 = load i64, ptr %j, align 8, !tbaa !26
  %arrayidx45 = getelementptr inbounds i32, ptr %54, i64 %55
  %56 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %idxprom = sext i32 %56 to i64
  %arrayidx46 = getelementptr inbounds i64, ptr %53, i64 %idxprom
  %57 = load i64, ptr %arrayidx46, align 8, !tbaa !26
  store i64 %57, ptr %lo, align 8, !tbaa !26
  %58 = load i64, ptr %lo, align 8, !tbaa !26
  %59 = load ptr, ptr %gd, align 8, !tbaa !9
  %60 = load ptr, ptr %ge, align 8, !tbaa !9
  %61 = load i64, ptr %j, align 8, !tbaa !26
  %arrayidx47 = getelementptr inbounds i32, ptr %60, i64 %61
  %62 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %idxprom48 = sext i32 %62 to i64
  %arrayidx49 = getelementptr inbounds i32, ptr %59, i64 %idxprom48
  %63 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %conv50 = sext i32 %63 to i64
  %add51 = add i64 %58, %conv50
  %sub52 = sub i64 %add51, 1
  store i64 %sub52, ptr %hi, align 8, !tbaa !26
  br label %while.cond

while.cond:                                       ; preds = %if.end73, %if.else44
  %64 = load i64, ptr %lo, align 8, !tbaa !26
  %65 = load i64, ptr %hi, align 8, !tbaa !26
  %cmp53 = icmp ule i64 %64, %65
  br i1 %cmp53, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %66 = load i64, ptr %lo, align 8, !tbaa !26
  %67 = load i64, ptr %hi, align 8, !tbaa !26
  %68 = load i64, ptr %lo, align 8, !tbaa !26
  %sub55 = sub i64 %67, %68
  %div56 = udiv i64 %sub55, 2
  %add57 = add i64 %66, %div56
  store i64 %add57, ptr %mid, align 8, !tbaa !26
  %69 = load ptr, ptr %ge, align 8, !tbaa !9
  %70 = load i64, ptr %mid, align 8, !tbaa !26
  %arrayidx58 = getelementptr inbounds i32, ptr %69, i64 %70
  %71 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %conv59 = sext i32 %71 to i64
  %72 = load i64, ptr %i, align 8, !tbaa !26
  %cmp60 = icmp eq i64 %conv59, %72
  br i1 %cmp60, label %if.then62, label %if.else63

if.then62:                                        ; preds = %while.body
  br label %while.end

if.else63:                                        ; preds = %while.body
  %73 = load ptr, ptr %ge, align 8, !tbaa !9
  %74 = load i64, ptr %mid, align 8, !tbaa !26
  %arrayidx64 = getelementptr inbounds i32, ptr %73, i64 %74
  %75 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %conv65 = sext i32 %75 to i64
  %76 = load i64, ptr %i, align 8, !tbaa !26
  %cmp66 = icmp ult i64 %conv65, %76
  br i1 %cmp66, label %if.then68, label %if.else70

if.then68:                                        ; preds = %if.else63
  %77 = load i64, ptr %mid, align 8, !tbaa !26
  %add69 = add i64 %77, 1
  store i64 %add69, ptr %lo, align 8, !tbaa !26
  br label %if.end72

if.else70:                                        ; preds = %if.else63
  %78 = load i64, ptr %mid, align 8, !tbaa !26
  %sub71 = sub i64 %78, 1
  store i64 %sub71, ptr %hi, align 8, !tbaa !26
  br label %if.end72

if.end72:                                         ; preds = %if.else70, %if.then68
  br label %if.end73

if.end73:                                         ; preds = %if.end72
  br label %while.cond, !llvm.loop !49

while.end:                                        ; preds = %if.then62, %while.cond
  %79 = load i64, ptr %lo, align 8, !tbaa !26
  %80 = load i64, ptr %hi, align 8, !tbaa !26
  %cmp74 = icmp ugt i64 %79, %80
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %while.end
  call void @gt_abort(ptr noundef @.str.27)
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %while.end
  %81 = load ptr, ptr @linegraph.eno, align 8, !tbaa !9
  %82 = load i64, ptr %mid, align 8, !tbaa !26
  %arrayidx78 = getelementptr inbounds i64, ptr %81, i64 %82
  %83 = load i64, ptr %arrayidx78, align 8, !tbaa !26
  %84 = load ptr, ptr @linegraph.eno, align 8, !tbaa !9
  %85 = load i64, ptr %j, align 8, !tbaa !26
  %arrayidx79 = getelementptr inbounds i64, ptr %84, i64 %85
  store i64 %83, ptr %arrayidx79, align 8, !tbaa !26
  br label %if.end80

if.end80:                                         ; preds = %if.end77, %if.then42
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then37
  br label %for.inc

for.inc:                                          ; preds = %if.end81
  %86 = load i64, ptr %j, align 8, !tbaa !26
  %inc82 = add i64 %86, 1
  store i64 %inc82, ptr %j, align 8, !tbaa !26
  br label %for.cond25, !llvm.loop !50

for.end:                                          ; preds = %for.cond25
  br label %for.inc83

for.inc83:                                        ; preds = %for.end
  %87 = load i64, ptr %i, align 8, !tbaa !26
  %inc84 = add i64 %87, 1
  store i64 %inc84, ptr %i, align 8, !tbaa !26
  br label %for.cond, !llvm.loop !51

for.end85:                                        ; preds = %for.cond
  br label %do.body86

do.body86:                                        ; preds = %for.end85
  %88 = load i32, ptr %hnv, align 4, !tbaa !5
  %conv87 = sext i32 %88 to i64
  %89 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %vlen = getelementptr inbounds %struct.sparsegraph, ptr %89, i32 0, i32 6
  %90 = load i64, ptr %vlen, align 8, !tbaa !20
  %cmp88 = icmp ugt i64 %conv87, %90
  br i1 %cmp88, label %if.then90, label %if.end106

if.then90:                                        ; preds = %do.body86
  %91 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %vlen91 = getelementptr inbounds %struct.sparsegraph, ptr %91, i32 0, i32 6
  %92 = load i64, ptr %vlen91, align 8, !tbaa !20
  %tobool92 = icmp ne i64 %92, 0
  br i1 %tobool92, label %if.then93, label %if.end95

if.then93:                                        ; preds = %if.then90
  %93 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %v94 = getelementptr inbounds %struct.sparsegraph, ptr %93, i32 0, i32 1
  %94 = load ptr, ptr %v94, align 8, !tbaa !11
  call void @free(ptr noundef %94) #7
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.then90
  %95 = load i32, ptr %hnv, align 4, !tbaa !5
  %conv96 = sext i32 %95 to i64
  %96 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %vlen97 = getelementptr inbounds %struct.sparsegraph, ptr %96, i32 0, i32 6
  store i64 %conv96, ptr %vlen97, align 8, !tbaa !20
  %97 = load i32, ptr %hnv, align 4, !tbaa !5
  %conv98 = sext i32 %97 to i64
  %mul99 = mul i64 %conv98, 8
  %call100 = call noalias ptr @malloc(i64 noundef %mul99) #10
  %98 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %v101 = getelementptr inbounds %struct.sparsegraph, ptr %98, i32 0, i32 1
  store ptr %call100, ptr %v101, align 8, !tbaa !11
  %cmp102 = icmp eq ptr %call100, null
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.end95
  call void @gt_abort(ptr noundef @.str.23)
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.end95
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %do.body86
  %99 = load i32, ptr %hnv, align 4, !tbaa !5
  %conv107 = sext i32 %99 to i64
  %100 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %dlen = getelementptr inbounds %struct.sparsegraph, ptr %100, i32 0, i32 7
  %101 = load i64, ptr %dlen, align 8, !tbaa !19
  %cmp108 = icmp ugt i64 %conv107, %101
  br i1 %cmp108, label %if.then110, label %if.end126

if.then110:                                       ; preds = %if.end106
  %102 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %dlen111 = getelementptr inbounds %struct.sparsegraph, ptr %102, i32 0, i32 7
  %103 = load i64, ptr %dlen111, align 8, !tbaa !19
  %tobool112 = icmp ne i64 %103, 0
  br i1 %tobool112, label %if.then113, label %if.end115

if.then113:                                       ; preds = %if.then110
  %104 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %d114 = getelementptr inbounds %struct.sparsegraph, ptr %104, i32 0, i32 3
  %105 = load ptr, ptr %d114, align 8, !tbaa !16
  call void @free(ptr noundef %105) #7
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.then110
  %106 = load i32, ptr %hnv, align 4, !tbaa !5
  %conv116 = sext i32 %106 to i64
  %107 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %dlen117 = getelementptr inbounds %struct.sparsegraph, ptr %107, i32 0, i32 7
  store i64 %conv116, ptr %dlen117, align 8, !tbaa !19
  %108 = load i32, ptr %hnv, align 4, !tbaa !5
  %conv118 = sext i32 %108 to i64
  %mul119 = mul i64 %conv118, 4
  %call120 = call noalias ptr @malloc(i64 noundef %mul119) #10
  %109 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %d121 = getelementptr inbounds %struct.sparsegraph, ptr %109, i32 0, i32 3
  store ptr %call120, ptr %d121, align 8, !tbaa !16
  %cmp122 = icmp eq ptr %call120, null
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %if.end115
  call void @gt_abort(ptr noundef @.str.23)
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %if.end115
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.end106
  %110 = load i64, ptr %hnde, align 8, !tbaa !26
  %111 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %elen = getelementptr inbounds %struct.sparsegraph, ptr %111, i32 0, i32 8
  %112 = load i64, ptr %elen, align 8, !tbaa !18
  %cmp127 = icmp ugt i64 %110, %112
  br i1 %cmp127, label %if.then129, label %if.end143

if.then129:                                       ; preds = %if.end126
  %113 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %elen130 = getelementptr inbounds %struct.sparsegraph, ptr %113, i32 0, i32 8
  %114 = load i64, ptr %elen130, align 8, !tbaa !18
  %tobool131 = icmp ne i64 %114, 0
  br i1 %tobool131, label %if.then132, label %if.end134

if.then132:                                       ; preds = %if.then129
  %115 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %e133 = getelementptr inbounds %struct.sparsegraph, ptr %115, i32 0, i32 4
  %116 = load ptr, ptr %e133, align 8, !tbaa !15
  call void @free(ptr noundef %116) #7
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %if.then129
  %117 = load i64, ptr %hnde, align 8, !tbaa !26
  %118 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %elen135 = getelementptr inbounds %struct.sparsegraph, ptr %118, i32 0, i32 8
  store i64 %117, ptr %elen135, align 8, !tbaa !18
  %119 = load i64, ptr %hnde, align 8, !tbaa !26
  %mul136 = mul i64 %119, 4
  %call137 = call noalias ptr @malloc(i64 noundef %mul136) #10
  %120 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %e138 = getelementptr inbounds %struct.sparsegraph, ptr %120, i32 0, i32 4
  store ptr %call137, ptr %e138, align 8, !tbaa !15
  %cmp139 = icmp eq ptr %call137, null
  br i1 %cmp139, label %if.then141, label %if.end142

if.then141:                                       ; preds = %if.end134
  call void @gt_abort(ptr noundef @.str.23)
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %if.end134
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.end126
  br label %do.cond144

do.cond144:                                       ; preds = %if.end143
  br label %do.end145

do.end145:                                        ; preds = %do.cond144
  %121 = load i32, ptr %hnv, align 4, !tbaa !5
  %122 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %nv146 = getelementptr inbounds %struct.sparsegraph, ptr %122, i32 0, i32 2
  store i32 %121, ptr %nv146, align 8, !tbaa !34
  %123 = load i64, ptr %hnde, align 8, !tbaa !26
  %124 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %nde147 = getelementptr inbounds %struct.sparsegraph, ptr %124, i32 0, i32 0
  store i64 %123, ptr %nde147, align 8, !tbaa !32
  br label %do.body148

do.body148:                                       ; preds = %do.end145
  %125 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %v149 = getelementptr inbounds %struct.sparsegraph, ptr %125, i32 0, i32 1
  %126 = load ptr, ptr %v149, align 8, !tbaa !11
  store ptr %126, ptr %hv, align 8, !tbaa !9
  %127 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %d150 = getelementptr inbounds %struct.sparsegraph, ptr %127, i32 0, i32 3
  %128 = load ptr, ptr %d150, align 8, !tbaa !16
  store ptr %128, ptr %hd, align 8, !tbaa !9
  %129 = load ptr, ptr %h.addr, align 8, !tbaa !9
  %e151 = getelementptr inbounds %struct.sparsegraph, ptr %129, i32 0, i32 4
  %130 = load ptr, ptr %e151, align 8, !tbaa !15
  store ptr %130, ptr %he, align 8, !tbaa !9
  br label %do.cond152

do.cond152:                                       ; preds = %do.body148
  br label %do.end153

do.end153:                                        ; preds = %do.cond152
  store i64 0, ptr %i, align 8, !tbaa !26
  br label %for.cond154

for.cond154:                                      ; preds = %for.inc160, %do.end153
  %131 = load i64, ptr %i, align 8, !tbaa !26
  %132 = load i32, ptr %hnv, align 4, !tbaa !5
  %conv155 = sext i32 %132 to i64
  %cmp156 = icmp ult i64 %131, %conv155
  br i1 %cmp156, label %for.body158, label %for.end162

for.body158:                                      ; preds = %for.cond154
  %133 = load ptr, ptr %hd, align 8, !tbaa !9
  %134 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx159 = getelementptr inbounds i32, ptr %133, i64 %134
  store i32 0, ptr %arrayidx159, align 4, !tbaa !5
  br label %for.inc160

for.inc160:                                       ; preds = %for.body158
  %135 = load i64, ptr %i, align 8, !tbaa !26
  %inc161 = add i64 %135, 1
  store i64 %inc161, ptr %i, align 8, !tbaa !26
  br label %for.cond154, !llvm.loop !52

for.end162:                                       ; preds = %for.cond154
  store i64 0, ptr %i, align 8, !tbaa !26
  br label %for.cond163

for.cond163:                                      ; preds = %for.inc185, %for.end162
  %136 = load i64, ptr %i, align 8, !tbaa !26
  %137 = load i32, ptr %gnv, align 4, !tbaa !5
  %conv164 = sext i32 %137 to i64
  %cmp165 = icmp ult i64 %136, %conv164
  br i1 %cmp165, label %for.body167, label %for.end187

for.body167:                                      ; preds = %for.cond163
  %138 = load ptr, ptr %gv, align 8, !tbaa !9
  %139 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx168 = getelementptr inbounds i64, ptr %138, i64 %139
  %140 = load i64, ptr %arrayidx168, align 8, !tbaa !26
  store i64 %140, ptr %j, align 8, !tbaa !26
  br label %for.cond169

for.cond169:                                      ; preds = %for.inc182, %for.body167
  %141 = load i64, ptr %j, align 8, !tbaa !26
  %142 = load ptr, ptr %gv, align 8, !tbaa !9
  %143 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx170 = getelementptr inbounds i64, ptr %142, i64 %143
  %144 = load i64, ptr %arrayidx170, align 8, !tbaa !26
  %145 = load ptr, ptr %gd, align 8, !tbaa !9
  %146 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx171 = getelementptr inbounds i32, ptr %145, i64 %146
  %147 = load i32, ptr %arrayidx171, align 4, !tbaa !5
  %conv172 = sext i32 %147 to i64
  %add173 = add i64 %144, %conv172
  %cmp174 = icmp ult i64 %141, %add173
  br i1 %cmp174, label %for.body176, label %for.end184

for.body176:                                      ; preds = %for.cond169
  %148 = load ptr, ptr %gd, align 8, !tbaa !9
  %149 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx177 = getelementptr inbounds i32, ptr %148, i64 %149
  %150 = load i32, ptr %arrayidx177, align 4, !tbaa !5
  %sub178 = sub nsw i32 %150, 1
  %151 = load ptr, ptr %hd, align 8, !tbaa !9
  %152 = load ptr, ptr @linegraph.eno, align 8, !tbaa !9
  %153 = load i64, ptr %j, align 8, !tbaa !26
  %arrayidx179 = getelementptr inbounds i64, ptr %152, i64 %153
  %154 = load i64, ptr %arrayidx179, align 8, !tbaa !26
  %arrayidx180 = getelementptr inbounds i32, ptr %151, i64 %154
  %155 = load i32, ptr %arrayidx180, align 4, !tbaa !5
  %add181 = add nsw i32 %155, %sub178
  store i32 %add181, ptr %arrayidx180, align 4, !tbaa !5
  br label %for.inc182

for.inc182:                                       ; preds = %for.body176
  %156 = load i64, ptr %j, align 8, !tbaa !26
  %inc183 = add i64 %156, 1
  store i64 %inc183, ptr %j, align 8, !tbaa !26
  br label %for.cond169, !llvm.loop !53

for.end184:                                       ; preds = %for.cond169
  br label %for.inc185

for.inc185:                                       ; preds = %for.end184
  %157 = load i64, ptr %i, align 8, !tbaa !26
  %inc186 = add i64 %157, 1
  store i64 %inc186, ptr %i, align 8, !tbaa !26
  br label %for.cond163, !llvm.loop !54

for.end187:                                       ; preds = %for.cond163
  %158 = load ptr, ptr %hv, align 8, !tbaa !9
  %arrayidx188 = getelementptr inbounds i64, ptr %158, i64 0
  store i64 0, ptr %arrayidx188, align 8, !tbaa !26
  store i64 1, ptr %i, align 8, !tbaa !26
  br label %for.cond189

for.cond189:                                      ; preds = %for.inc201, %for.end187
  %159 = load i64, ptr %i, align 8, !tbaa !26
  %160 = load i32, ptr %hnv, align 4, !tbaa !5
  %conv190 = sext i32 %160 to i64
  %cmp191 = icmp ult i64 %159, %conv190
  br i1 %cmp191, label %for.body193, label %for.end203

for.body193:                                      ; preds = %for.cond189
  %161 = load ptr, ptr %hv, align 8, !tbaa !9
  %162 = load i64, ptr %i, align 8, !tbaa !26
  %sub194 = sub i64 %162, 1
  %arrayidx195 = getelementptr inbounds i64, ptr %161, i64 %sub194
  %163 = load i64, ptr %arrayidx195, align 8, !tbaa !26
  %164 = load ptr, ptr %hd, align 8, !tbaa !9
  %165 = load i64, ptr %i, align 8, !tbaa !26
  %sub196 = sub i64 %165, 1
  %arrayidx197 = getelementptr inbounds i32, ptr %164, i64 %sub196
  %166 = load i32, ptr %arrayidx197, align 4, !tbaa !5
  %conv198 = sext i32 %166 to i64
  %add199 = add i64 %163, %conv198
  %167 = load ptr, ptr %hv, align 8, !tbaa !9
  %168 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx200 = getelementptr inbounds i64, ptr %167, i64 %168
  store i64 %add199, ptr %arrayidx200, align 8, !tbaa !26
  br label %for.inc201

for.inc201:                                       ; preds = %for.body193
  %169 = load i64, ptr %i, align 8, !tbaa !26
  %inc202 = add i64 %169, 1
  store i64 %inc202, ptr %i, align 8, !tbaa !26
  br label %for.cond189, !llvm.loop !55

for.end203:                                       ; preds = %for.cond189
  store i64 0, ptr %i, align 8, !tbaa !26
  br label %for.cond204

for.cond204:                                      ; preds = %for.inc210, %for.end203
  %170 = load i64, ptr %i, align 8, !tbaa !26
  %171 = load i32, ptr %hnv, align 4, !tbaa !5
  %conv205 = sext i32 %171 to i64
  %cmp206 = icmp ult i64 %170, %conv205
  br i1 %cmp206, label %for.body208, label %for.end212

for.body208:                                      ; preds = %for.cond204
  %172 = load ptr, ptr %hd, align 8, !tbaa !9
  %173 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx209 = getelementptr inbounds i32, ptr %172, i64 %173
  store i32 0, ptr %arrayidx209, align 4, !tbaa !5
  br label %for.inc210

for.inc210:                                       ; preds = %for.body208
  %174 = load i64, ptr %i, align 8, !tbaa !26
  %inc211 = add i64 %174, 1
  store i64 %inc211, ptr %i, align 8, !tbaa !26
  br label %for.cond204, !llvm.loop !56

for.end212:                                       ; preds = %for.cond204
  store i64 0, ptr %i, align 8, !tbaa !26
  br label %for.cond213

for.cond213:                                      ; preds = %for.inc258, %for.end212
  %175 = load i64, ptr %i, align 8, !tbaa !26
  %176 = load i32, ptr %gnv, align 4, !tbaa !5
  %conv214 = sext i32 %176 to i64
  %cmp215 = icmp ult i64 %175, %conv214
  br i1 %cmp215, label %for.body217, label %for.end260

for.body217:                                      ; preds = %for.cond213
  store i32 0, ptr %jj, align 4, !tbaa !5
  br label %for.cond218

for.cond218:                                      ; preds = %for.inc255, %for.body217
  %177 = load i32, ptr %jj, align 4, !tbaa !5
  %178 = load ptr, ptr %gd, align 8, !tbaa !9
  %179 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx219 = getelementptr inbounds i32, ptr %178, i64 %179
  %180 = load i32, ptr %arrayidx219, align 4, !tbaa !5
  %sub220 = sub nsw i32 %180, 1
  %cmp221 = icmp slt i32 %177, %sub220
  br i1 %cmp221, label %for.body223, label %for.end257

for.body223:                                      ; preds = %for.cond218
  %181 = load ptr, ptr %gv, align 8, !tbaa !9
  %182 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx224 = getelementptr inbounds i64, ptr %181, i64 %182
  %183 = load i64, ptr %arrayidx224, align 8, !tbaa !26
  %184 = load i32, ptr %jj, align 4, !tbaa !5
  %conv225 = sext i32 %184 to i64
  %add226 = add i64 %183, %conv225
  store i64 %add226, ptr %j, align 8, !tbaa !26
  %185 = load i64, ptr %j, align 8, !tbaa !26
  %add227 = add i64 %185, 1
  store i64 %add227, ptr %k, align 8, !tbaa !26
  br label %for.cond228

for.cond228:                                      ; preds = %for.inc252, %for.body223
  %186 = load i64, ptr %k, align 8, !tbaa !26
  %187 = load ptr, ptr %gv, align 8, !tbaa !9
  %188 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx229 = getelementptr inbounds i64, ptr %187, i64 %188
  %189 = load i64, ptr %arrayidx229, align 8, !tbaa !26
  %190 = load ptr, ptr %gd, align 8, !tbaa !9
  %191 = load i64, ptr %i, align 8, !tbaa !26
  %arrayidx230 = getelementptr inbounds i32, ptr %190, i64 %191
  %192 = load i32, ptr %arrayidx230, align 4, !tbaa !5
  %conv231 = sext i32 %192 to i64
  %add232 = add i64 %189, %conv231
  %cmp233 = icmp ult i64 %186, %add232
  br i1 %cmp233, label %for.body235, label %for.end254

for.body235:                                      ; preds = %for.cond228
  %193 = load ptr, ptr @linegraph.eno, align 8, !tbaa !9
  %194 = load i64, ptr %j, align 8, !tbaa !26
  %arrayidx236 = getelementptr inbounds i64, ptr %193, i64 %194
  %195 = load i64, ptr %arrayidx236, align 8, !tbaa !26
  store i64 %195, ptr %v, align 8, !tbaa !26
  %196 = load ptr, ptr @linegraph.eno, align 8, !tbaa !9
  %197 = load i64, ptr %k, align 8, !tbaa !26
  %arrayidx237 = getelementptr inbounds i64, ptr %196, i64 %197
  %198 = load i64, ptr %arrayidx237, align 8, !tbaa !26
  store i64 %198, ptr %w, align 8, !tbaa !26
  %199 = load i64, ptr %w, align 8, !tbaa !26
  %conv238 = trunc i64 %199 to i32
  %200 = load ptr, ptr %he, align 8, !tbaa !9
  %201 = load ptr, ptr %hv, align 8, !tbaa !9
  %202 = load i64, ptr %v, align 8, !tbaa !26
  %arrayidx239 = getelementptr inbounds i64, ptr %201, i64 %202
  %203 = load i64, ptr %arrayidx239, align 8, !tbaa !26
  %204 = load ptr, ptr %hd, align 8, !tbaa !9
  %205 = load i64, ptr %v, align 8, !tbaa !26
  %arrayidx240 = getelementptr inbounds i32, ptr %204, i64 %205
  %206 = load i32, ptr %arrayidx240, align 4, !tbaa !5
  %inc241 = add nsw i32 %206, 1
  store i32 %inc241, ptr %arrayidx240, align 4, !tbaa !5
  %conv242 = sext i32 %206 to i64
  %add243 = add i64 %203, %conv242
  %arrayidx244 = getelementptr inbounds i32, ptr %200, i64 %add243
  store i32 %conv238, ptr %arrayidx244, align 4, !tbaa !5
  %207 = load i64, ptr %v, align 8, !tbaa !26
  %conv245 = trunc i64 %207 to i32
  %208 = load ptr, ptr %he, align 8, !tbaa !9
  %209 = load ptr, ptr %hv, align 8, !tbaa !9
  %210 = load i64, ptr %w, align 8, !tbaa !26
  %arrayidx246 = getelementptr inbounds i64, ptr %209, i64 %210
  %211 = load i64, ptr %arrayidx246, align 8, !tbaa !26
  %212 = load ptr, ptr %hd, align 8, !tbaa !9
  %213 = load i64, ptr %w, align 8, !tbaa !26
  %arrayidx247 = getelementptr inbounds i32, ptr %212, i64 %213
  %214 = load i32, ptr %arrayidx247, align 4, !tbaa !5
  %inc248 = add nsw i32 %214, 1
  store i32 %inc248, ptr %arrayidx247, align 4, !tbaa !5
  %conv249 = sext i32 %214 to i64
  %add250 = add i64 %211, %conv249
  %arrayidx251 = getelementptr inbounds i32, ptr %208, i64 %add250
  store i32 %conv245, ptr %arrayidx251, align 4, !tbaa !5
  br label %for.inc252

for.inc252:                                       ; preds = %for.body235
  %215 = load i64, ptr %k, align 8, !tbaa !26
  %inc253 = add i64 %215, 1
  store i64 %inc253, ptr %k, align 8, !tbaa !26
  br label %for.cond228, !llvm.loop !57

for.end254:                                       ; preds = %for.cond228
  br label %for.inc255

for.inc255:                                       ; preds = %for.end254
  %216 = load i32, ptr %jj, align 4, !tbaa !5
  %inc256 = add nsw i32 %216, 1
  store i32 %inc256, ptr %jj, align 4, !tbaa !5
  br label %for.cond218, !llvm.loop !58

for.end257:                                       ; preds = %for.cond218
  br label %for.inc258

for.inc258:                                       ; preds = %for.end257
  %217 = load i64, ptr %i, align 8, !tbaa !26
  %inc259 = add i64 %217, 1
  store i64 %inc259, ptr %i, align 8, !tbaa !26
  br label %for.cond213, !llvm.loop !59

for.end260:                                       ; preds = %for.cond213
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %mid) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %lo) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %hi) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %num) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %xhnde) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %hnde) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gnde) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %jj) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %hnv) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %gnv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %hv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %hd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %he) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %gd) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %ge) #7
  ret void
}

declare void @writes6_sg(ptr noundef, ptr noundef) #3

declare void @writeg6_sg(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @sortlists_sg(ptr noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!11 = !{!12, !10, i64 8}
!12 = !{!"", !13, i64 0, !10, i64 8, !6, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72}
!13 = !{!"long", !7, i64 0}
!14 = !{!12, !10, i64 40}
!15 = !{!12, !10, i64 32}
!16 = !{!12, !10, i64 24}
!17 = !{!12, !13, i64 72}
!18 = !{!12, !13, i64 64}
!19 = !{!12, !13, i64 56}
!20 = !{!12, !13, i64 48}
!21 = !{!7, !7, i64 0}
!22 = distinct !{!22, !23, !24}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = distinct !{!25, !23, !24}
!26 = !{!13, !13, i64 0}
!27 = !{!28, !13, i64 0}
!28 = !{!"tms", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!29 = !{!28, !13, i64 8}
!30 = !{!31, !31, i64 0}
!31 = !{!"double", !7, i64 0}
!32 = !{!12, !13, i64 0}
!33 = distinct !{!33, !23, !24}
!34 = !{!12, !6, i64 16}
!35 = distinct !{!35, !23, !24}
!36 = distinct !{!36, !23, !24}
!37 = distinct !{!37, !23, !24}
!38 = distinct !{!38, !23, !24}
!39 = distinct !{!39, !23, !24}
!40 = distinct !{!40, !23, !24}
!41 = distinct !{!41, !23, !24}
!42 = distinct !{!42, !23, !24}
!43 = distinct !{!43, !23, !24}
!44 = distinct !{!44, !23, !24}
!45 = distinct !{!45, !23, !24}
!46 = distinct !{!46, !23, !24}
!47 = distinct !{!47, !23, !24}
!48 = distinct !{!48, !23, !24}
!49 = distinct !{!49, !23, !24}
!50 = distinct !{!50, !23, !24}
!51 = distinct !{!51, !23, !24}
!52 = distinct !{!52, !23, !24}
!53 = distinct !{!53, !23, !24}
!54 = distinct !{!54, !23, !24}
!55 = distinct !{!55, !23, !24}
!56 = distinct !{!56, !23, !24}
!57 = distinct !{!57, !23, !24}
!58 = distinct !{!58, !23, !24}
!59 = distinct !{!59, !23, !24}
