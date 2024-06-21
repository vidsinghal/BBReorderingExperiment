; ModuleID = 'samples/502.bc'
source_filename = "chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.segtable = type { i32, i32, i32, i32, i64, i32, ptr, [1 x %struct.segment] }
%struct.segment = type { i64, i32, i32, i32, i32, i32, i64, i32 }
%struct.seq = type { i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, i8, i32, i32, i8, ptr, ptr, i32, i32, i32, ptr, ptr, %struct.twobit, %struct.hsx, %struct.seqpartition, ptr, i32, i64, ptr, ptr, [256 x i8], i32, ptr, ptr, i32, %struct.chore, i32, i32, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, ptr, i32, ptr }
%struct.twobit = type { i32, i32, i64, i64, i32, i32, ptr, ptr, i32, ptr, ptr }
%struct.hsx = type { i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, ptr, i32, i64, i64 }
%struct.seqpartition = type { i32, i32, i32, ptr, i32, i32, ptr, i32 }
%struct.chore = type { i32, [256 x i8], i32, i32, i32, i32, i32, i32, i32, [16 x i8], %struct.interval, %struct.interval }
%struct.interval = type { i32, i32 }
%struct.sbtable = type { i32, i32, [1 x %struct.segbatch] }
%struct.segbatch = type { i32, i32, ptr, ptr }
%struct.partition = type { i32, i32, i32, i32, i32, i32 }
%struct.kdinfo = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.bestpred = type { i32, double }
%struct.kdnode = type { i32, i32, i32, i32, double, ptr, ptr }

@chain_dbgChaining = dso_local global i32 0, align 4
@chain_dbgDumpTree = dso_local global i32 0, align 4
@chainBatches = internal global ptr null, align 8
@.str = private unnamed_addr constant [20 x i8] c"try_reduce_to_chain\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"reduce_to_chain perm\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"reduce_to_chain invPerm\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"reduce_to_chain chainScore\00", align 1
@stderr = external global ptr, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"reduce_to_chain chain\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"chaining [%d] %u/%u\09diag=%d\09segscore=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"  pred=(none)\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"  pred=%u query=%.2f contrib=%.2f score=%.2f\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"best=(none)\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"best=%u score=%.2f\0A\00", align 1
@dna_utilities_scoreType = external global i8, align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"build_kd_tree\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"(in build_kd_tree, p == NULL)\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"(in build_kd_tree, p is not a valid kdnode)\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"partition: cannot happen (%u,%u)\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"free_kd_tree leaf\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"free_kd_tree node\00", align 1
@dksIndexWidth = internal global i32 0, align 4
@dksFile = internal global ptr null, align 8
@dksKdi = internal global ptr null, align 8
@.str.16 = private unnamed_addr constant [16 x i8] c" %*s %*s%s<=%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"x-y\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"[%*d]%*s%u/%u\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"(in best_predecessor, NULL subtree)\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"(in best_predecessor, invalid subtree)\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"    bestwas=(none) scorewas=%.2f\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"    bestwas=%u scorewas=%.2f\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"  cand=%u score=%.2f (from %.2f)\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @try_reduce_to_chain(ptr noundef %seq1, ptr noundef %seq2, ptr noundef %st, i32 noundef %diagPen, i32 noundef %antiPen, i32 noundef %scale, ptr noundef %connect) #0 {
entry:
  %retval = alloca i32, align 4
  %seq1.addr = alloca ptr, align 8
  %seq2.addr = alloca ptr, align 8
  %st.addr = alloca ptr, align 8
  %diagPen.addr = alloca i32, align 4
  %antiPen.addr = alloca i32, align 4
  %scale.addr = alloca i32, align 4
  %connect.addr = alloca ptr, align 8
  %sp1 = alloca ptr, align 8
  %sp2 = alloca ptr, align 8
  %part1 = alloca ptr, align 8
  %part2 = alloca ptr, align 8
  %seg = alloca ptr, align 8
  %seg2 = alloca ptr, align 8
  %stSubset = alloca %struct.segtable, align 8
  %entriesNeeded = alloca i32, align 4
  %bytesNeeded = alloca i64, align 8
  %partIx1 = alloca i32, align 4
  %partIx2 = alloca i32, align 4
  %segIx = alloca i32, align 4
  %segIx2 = alloca i32, align 4
  %batIx = alloca i32, align 4
  %startSegIx = alloca i32, align 4
  %endSegIx = alloca i32, align 4
  %segsKept = alloca i32, align 4
  %pEnd1 = alloca i32, align 4
  %pEnd2 = alloca i32, align 4
  %chainScore = alloca double, align 8
  %best = alloca double, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %seq1, ptr %seq1.addr, align 8, !tbaa !5
  store ptr %seq2, ptr %seq2.addr, align 8, !tbaa !5
  store ptr %st, ptr %st.addr, align 8, !tbaa !5
  store i32 %diagPen, ptr %diagPen.addr, align 4, !tbaa !9
  store i32 %antiPen, ptr %antiPen.addr, align 4, !tbaa !9
  store i32 %scale, ptr %scale.addr, align 4, !tbaa !9
  store ptr %connect, ptr %connect.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp1) #4
  %0 = load ptr, ptr %seq1.addr, align 8, !tbaa !5
  %partition = getelementptr inbounds %struct.seq, ptr %0, i32 0, i32 42
  store ptr %partition, ptr %sp1, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sp2) #4
  %1 = load ptr, ptr %seq2.addr, align 8, !tbaa !5
  %partition1 = getelementptr inbounds %struct.seq, ptr %1, i32 0, i32 42
  store ptr %partition1, ptr %sp2, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %part1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %part2) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %seg) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %seg2) #4
  call void @llvm.lifetime.start.p0(i64 88, ptr %stSubset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %entriesNeeded) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytesNeeded) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %partIx1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %partIx2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %segIx) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %segIx2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %batIx) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %startSegIx) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %endSegIx) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %segsKept) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pEnd1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pEnd2) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %chainScore) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %best) #4
  %2 = load ptr, ptr %sp1, align 8, !tbaa !5
  %p = getelementptr inbounds %struct.seqpartition, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %p, align 8, !tbaa !11
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %sp2, align 8, !tbaa !5
  %p2 = getelementptr inbounds %struct.seqpartition, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %p2, align 8, !tbaa !11
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %st.addr, align 8, !tbaa !5
  %7 = load i32, ptr %diagPen.addr, align 4, !tbaa !9
  %8 = load i32, ptr %antiPen.addr, align 4, !tbaa !9
  %9 = load i32, ptr %scale.addr, align 4, !tbaa !9
  %10 = load ptr, ptr %connect.addr, align 8, !tbaa !5
  %call = call i32 @reduce_to_chain(ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10)
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 1, ptr %entriesNeeded, align 4, !tbaa !9
  %11 = load ptr, ptr %sp1, align 8, !tbaa !5
  %p4 = getelementptr inbounds %struct.seqpartition, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %p4, align 8, !tbaa !11
  %cmp5 = icmp ne ptr %12, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %13 = load ptr, ptr %sp1, align 8, !tbaa !5
  %len = getelementptr inbounds %struct.seqpartition, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %len, align 8, !tbaa !13
  %15 = load i32, ptr %entriesNeeded, align 4, !tbaa !9
  %mul = mul i32 %15, %14
  store i32 %mul, ptr %entriesNeeded, align 4, !tbaa !9
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %16 = load ptr, ptr %sp2, align 8, !tbaa !5
  %p8 = getelementptr inbounds %struct.seqpartition, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %p8, align 8, !tbaa !11
  %cmp9 = icmp ne ptr %17, null
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end7
  %18 = load ptr, ptr %sp2, align 8, !tbaa !5
  %len11 = getelementptr inbounds %struct.seqpartition, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %len11, align 8, !tbaa !13
  %20 = load i32, ptr %entriesNeeded, align 4, !tbaa !9
  %mul12 = mul i32 %20, %19
  store i32 %mul12, ptr %entriesNeeded, align 4, !tbaa !9
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7
  %21 = load i32, ptr %entriesNeeded, align 4, !tbaa !9
  %sub = sub i32 %21, 1
  %conv = zext i32 %sub to i64
  %mul14 = mul i64 %conv, 24
  %add = add i64 32, %mul14
  store i64 %add, ptr %bytesNeeded, align 8, !tbaa !14
  %22 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %cmp15 = icmp eq ptr %22, null
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end13
  %23 = load i64, ptr %bytesNeeded, align 8, !tbaa !14
  %call18 = call ptr @malloc_or_die(ptr noundef @.str, i64 noundef %23)
  store ptr %call18, ptr @chainBatches, align 8, !tbaa !5
  %24 = load i32, ptr %entriesNeeded, align 4, !tbaa !9
  %25 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.sbtable, ptr %25, i32 0, i32 0
  store i32 %24, ptr %size, align 8, !tbaa !16
  br label %if.end26

if.else:                                          ; preds = %if.end13
  %26 = load i32, ptr %entriesNeeded, align 4, !tbaa !9
  %27 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %size19 = getelementptr inbounds %struct.sbtable, ptr %27, i32 0, i32 0
  %28 = load i32, ptr %size19, align 8, !tbaa !16
  %cmp20 = icmp ugt i32 %26, %28
  br i1 %cmp20, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.else
  %29 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %30 = load i64, ptr %bytesNeeded, align 8, !tbaa !14
  %call23 = call ptr @realloc_or_die(ptr noundef @.str, ptr noundef %29, i64 noundef %30)
  store ptr %call23, ptr @chainBatches, align 8, !tbaa !5
  %31 = load i32, ptr %entriesNeeded, align 4, !tbaa !9
  %32 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %size24 = getelementptr inbounds %struct.sbtable, ptr %32, i32 0, i32 0
  store i32 %31, ptr %size24, align 8, !tbaa !16
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.else
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then17
  %33 = load ptr, ptr %sp1, align 8, !tbaa !5
  %p27 = getelementptr inbounds %struct.seqpartition, ptr %33, i32 0, i32 3
  %34 = load ptr, ptr %p27, align 8, !tbaa !11
  %cmp28 = icmp ne ptr %34, null
  br i1 %cmp28, label %land.lhs.true30, label %if.else78

land.lhs.true30:                                  ; preds = %if.end26
  %35 = load ptr, ptr %sp2, align 8, !tbaa !5
  %p31 = getelementptr inbounds %struct.seqpartition, ptr %35, i32 0, i32 3
  %36 = load ptr, ptr %p31, align 8, !tbaa !11
  %cmp32 = icmp eq ptr %36, null
  br i1 %cmp32, label %if.then34, label %if.else78

if.then34:                                        ; preds = %land.lhs.true30
  %37 = load ptr, ptr %st.addr, align 8, !tbaa !5
  call void @sort_segments(ptr noundef %37, ptr noundef @qSegmentsByPos1)
  store i32 0, ptr %batIx, align 4, !tbaa !9
  store i32 0, ptr %segIx, align 4, !tbaa !9
  %38 = load ptr, ptr %st.addr, align 8, !tbaa !5
  %seg35 = getelementptr inbounds %struct.segtable, ptr %38, i32 0, i32 6
  %39 = load ptr, ptr %seg35, align 8, !tbaa !18
  %40 = load i32, ptr %segIx, align 4, !tbaa !9
  %idxprom = zext i32 %40 to i64
  %arrayidx = getelementptr inbounds %struct.segment, ptr %39, i64 %idxprom
  store ptr %arrayidx, ptr %seg, align 8, !tbaa !5
  store i32 0, ptr %partIx1, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then34
  %41 = load i32, ptr %partIx1, align 4, !tbaa !9
  %42 = load ptr, ptr %sp1, align 8, !tbaa !5
  %len36 = getelementptr inbounds %struct.seqpartition, ptr %42, i32 0, i32 2
  %43 = load i32, ptr %len36, align 8, !tbaa !13
  %cmp37 = icmp ult i32 %41, %43
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i32, ptr %segIx, align 4, !tbaa !9
  %45 = load ptr, ptr %st.addr, align 8, !tbaa !5
  %len39 = getelementptr inbounds %struct.segtable, ptr %45, i32 0, i32 1
  %46 = load i32, ptr %len39, align 4, !tbaa !20
  %cmp40 = icmp uge i32 %44, %46
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %for.body
  br label %for.end

if.end43:                                         ; preds = %for.body
  %47 = load ptr, ptr %sp1, align 8, !tbaa !5
  %p44 = getelementptr inbounds %struct.seqpartition, ptr %47, i32 0, i32 3
  %48 = load ptr, ptr %p44, align 8, !tbaa !11
  %49 = load i32, ptr %partIx1, align 4, !tbaa !9
  %idxprom45 = zext i32 %49 to i64
  %arrayidx46 = getelementptr inbounds %struct.partition, ptr %48, i64 %idxprom45
  store ptr %arrayidx46, ptr %part1, align 8, !tbaa !5
  %50 = load ptr, ptr %part1, align 8, !tbaa !5
  %sepAfter = getelementptr inbounds %struct.partition, ptr %50, i32 0, i32 1
  %51 = load i32, ptr %sepAfter, align 4, !tbaa !21
  store i32 %51, ptr %pEnd1, align 4, !tbaa !9
  %52 = load i32, ptr %pEnd1, align 4, !tbaa !9
  %53 = load ptr, ptr %seg, align 8, !tbaa !5
  %pos1 = getelementptr inbounds %struct.segment, ptr %53, i32 0, i32 1
  %54 = load i32, ptr %pos1, align 8, !tbaa !23
  %55 = load ptr, ptr %seg, align 8, !tbaa !5
  %length = getelementptr inbounds %struct.segment, ptr %55, i32 0, i32 3
  %56 = load i32, ptr %length, align 8, !tbaa !25
  %add47 = add i32 %54, %56
  %cmp48 = icmp ult i32 %52, %add47
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end43
  br label %for.inc

if.end51:                                         ; preds = %if.end43
  %57 = load ptr, ptr %part1, align 8, !tbaa !5
  %58 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %batch = getelementptr inbounds %struct.sbtable, ptr %58, i32 0, i32 2
  %59 = load i32, ptr %batIx, align 4, !tbaa !9
  %idxprom52 = zext i32 %59 to i64
  %arrayidx53 = getelementptr inbounds [1 x %struct.segbatch], ptr %batch, i64 0, i64 %idxprom52
  %part154 = getelementptr inbounds %struct.segbatch, ptr %arrayidx53, i32 0, i32 2
  store ptr %57, ptr %part154, align 8, !tbaa !26
  %60 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %batch55 = getelementptr inbounds %struct.sbtable, ptr %60, i32 0, i32 2
  %61 = load i32, ptr %batIx, align 4, !tbaa !9
  %idxprom56 = zext i32 %61 to i64
  %arrayidx57 = getelementptr inbounds [1 x %struct.segbatch], ptr %batch55, i64 0, i64 %idxprom56
  %part258 = getelementptr inbounds %struct.segbatch, ptr %arrayidx57, i32 0, i32 3
  store ptr null, ptr %part258, align 8, !tbaa !28
  %62 = load i32, ptr %segIx, align 4, !tbaa !9
  %inc = add i32 %62, 1
  store i32 %inc, ptr %segIx, align 4, !tbaa !9
  %63 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %batch59 = getelementptr inbounds %struct.sbtable, ptr %63, i32 0, i32 2
  %64 = load i32, ptr %batIx, align 4, !tbaa !9
  %idxprom60 = zext i32 %64 to i64
  %arrayidx61 = getelementptr inbounds [1 x %struct.segbatch], ptr %batch59, i64 0, i64 %idxprom60
  %start = getelementptr inbounds %struct.segbatch, ptr %arrayidx61, i32 0, i32 0
  store i32 %62, ptr %start, align 8, !tbaa !29
  %65 = load ptr, ptr %seg, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.segment, ptr %65, i32 1
  store ptr %incdec.ptr, ptr %seg, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end51
  %66 = load i32, ptr %segIx, align 4, !tbaa !9
  %67 = load ptr, ptr %st.addr, align 8, !tbaa !5
  %len62 = getelementptr inbounds %struct.segtable, ptr %67, i32 0, i32 1
  %68 = load i32, ptr %len62, align 4, !tbaa !20
  %cmp63 = icmp ult i32 %66, %68
  br i1 %cmp63, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %69 = load i32, ptr %pEnd1, align 4, !tbaa !9
  %70 = load ptr, ptr %seg, align 8, !tbaa !5
  %pos165 = getelementptr inbounds %struct.segment, ptr %70, i32 0, i32 1
  %71 = load i32, ptr %pos165, align 8, !tbaa !23
  %72 = load ptr, ptr %seg, align 8, !tbaa !5
  %length66 = getelementptr inbounds %struct.segment, ptr %72, i32 0, i32 3
  %73 = load i32, ptr %length66, align 8, !tbaa !25
  %add67 = add i32 %71, %73
  %cmp68 = icmp uge i32 %69, %add67
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %74 = phi i1 [ false, %while.cond ], [ %cmp68, %land.rhs ]
  br i1 %74, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %75 = load i32, ptr %segIx, align 4, !tbaa !9
  %inc70 = add i32 %75, 1
  store i32 %inc70, ptr %segIx, align 4, !tbaa !9
  %76 = load ptr, ptr %seg, align 8, !tbaa !5
  %incdec.ptr71 = getelementptr inbounds %struct.segment, ptr %76, i32 1
  store ptr %incdec.ptr71, ptr %seg, align 8, !tbaa !5
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %land.end
  %77 = load i32, ptr %segIx, align 4, !tbaa !9
  %78 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %batch72 = getelementptr inbounds %struct.sbtable, ptr %78, i32 0, i32 2
  %79 = load i32, ptr %batIx, align 4, !tbaa !9
  %idxprom73 = zext i32 %79 to i64
  %arrayidx74 = getelementptr inbounds [1 x %struct.segbatch], ptr %batch72, i64 0, i64 %idxprom73
  %end = getelementptr inbounds %struct.segbatch, ptr %arrayidx74, i32 0, i32 1
  store i32 %77, ptr %end, align 4, !tbaa !32
  %80 = load i32, ptr %batIx, align 4, !tbaa !9
  %inc75 = add i32 %80, 1
  store i32 %inc75, ptr %batIx, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %while.end, %if.then50
  %81 = load i32, ptr %partIx1, align 4, !tbaa !9
  %inc76 = add i32 %81, 1
  store i32 %inc76, ptr %partIx1, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %if.then42, %for.cond
  %82 = load i32, ptr %batIx, align 4, !tbaa !9
  %83 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %len77 = getelementptr inbounds %struct.sbtable, ptr %83, i32 0, i32 1
  store i32 %82, ptr %len77, align 4, !tbaa !34
  br label %if.end263

if.else78:                                        ; preds = %land.lhs.true30, %if.end26
  %84 = load ptr, ptr %sp1, align 8, !tbaa !5
  %p79 = getelementptr inbounds %struct.seqpartition, ptr %84, i32 0, i32 3
  %85 = load ptr, ptr %p79, align 8, !tbaa !11
  %cmp80 = icmp eq ptr %85, null
  br i1 %cmp80, label %land.lhs.true82, label %if.else148

land.lhs.true82:                                  ; preds = %if.else78
  %86 = load ptr, ptr %sp2, align 8, !tbaa !5
  %p83 = getelementptr inbounds %struct.seqpartition, ptr %86, i32 0, i32 3
  %87 = load ptr, ptr %p83, align 8, !tbaa !11
  %cmp84 = icmp ne ptr %87, null
  br i1 %cmp84, label %if.then86, label %if.else148

if.then86:                                        ; preds = %land.lhs.true82
  %88 = load ptr, ptr %st.addr, align 8, !tbaa !5
  call void @sort_segments(ptr noundef %88, ptr noundef @qSegmentsByPos2)
  store i32 0, ptr %batIx, align 4, !tbaa !9
  store i32 0, ptr %segIx, align 4, !tbaa !9
  %89 = load ptr, ptr %st.addr, align 8, !tbaa !5
  %seg87 = getelementptr inbounds %struct.segtable, ptr %89, i32 0, i32 6
  %90 = load ptr, ptr %seg87, align 8, !tbaa !18
  %91 = load i32, ptr %segIx, align 4, !tbaa !9
  %idxprom88 = zext i32 %91 to i64
  %arrayidx89 = getelementptr inbounds %struct.segment, ptr %90, i64 %idxprom88
  store ptr %arrayidx89, ptr %seg, align 8, !tbaa !5
  store i32 0, ptr %partIx2, align 4, !tbaa !9
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc144, %if.then86
  %92 = load i32, ptr %partIx2, align 4, !tbaa !9
  %93 = load ptr, ptr %sp2, align 8, !tbaa !5
  %len91 = getelementptr inbounds %struct.seqpartition, ptr %93, i32 0, i32 2
  %94 = load i32, ptr %len91, align 8, !tbaa !13
  %cmp92 = icmp ult i32 %92, %94
  br i1 %cmp92, label %for.body94, label %for.end146

for.body94:                                       ; preds = %for.cond90
  %95 = load i32, ptr %segIx, align 4, !tbaa !9
  %96 = load ptr, ptr %st.addr, align 8, !tbaa !5
  %len95 = getelementptr inbounds %struct.segtable, ptr %96, i32 0, i32 1
  %97 = load i32, ptr %len95, align 4, !tbaa !20
  %cmp96 = icmp uge i32 %95, %97
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %for.body94
  br label %for.end146

if.end99:                                         ; preds = %for.body94
  %98 = load ptr, ptr %sp2, align 8, !tbaa !5
  %p100 = getelementptr inbounds %struct.seqpartition, ptr %98, i32 0, i32 3
  %99 = load ptr, ptr %p100, align 8, !tbaa !11
  %100 = load i32, ptr %partIx2, align 4, !tbaa !9
  %idxprom101 = zext i32 %100 to i64
  %arrayidx102 = getelementptr inbounds %struct.partition, ptr %99, i64 %idxprom101
  store ptr %arrayidx102, ptr %part2, align 8, !tbaa !5
  %101 = load ptr, ptr %part2, align 8, !tbaa !5
  %sepAfter103 = getelementptr inbounds %struct.partition, ptr %101, i32 0, i32 1
  %102 = load i32, ptr %sepAfter103, align 4, !tbaa !21
  store i32 %102, ptr %pEnd2, align 4, !tbaa !9
  %103 = load i32, ptr %pEnd2, align 4, !tbaa !9
  %104 = load ptr, ptr %seg, align 8, !tbaa !5
  %pos2 = getelementptr inbounds %struct.segment, ptr %104, i32 0, i32 2
  %105 = load i32, ptr %pos2, align 4, !tbaa !35
  %106 = load ptr, ptr %seg, align 8, !tbaa !5
  %length104 = getelementptr inbounds %struct.segment, ptr %106, i32 0, i32 3
  %107 = load i32, ptr %length104, align 8, !tbaa !25
  %add105 = add i32 %105, %107
  %cmp106 = icmp ult i32 %103, %add105
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.end99
  br label %for.inc144

if.end109:                                        ; preds = %if.end99
  %108 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %batch110 = getelementptr inbounds %struct.sbtable, ptr %108, i32 0, i32 2
  %109 = load i32, ptr %batIx, align 4, !tbaa !9
  %idxprom111 = zext i32 %109 to i64
  %arrayidx112 = getelementptr inbounds [1 x %struct.segbatch], ptr %batch110, i64 0, i64 %idxprom111
  %part1113 = getelementptr inbounds %struct.segbatch, ptr %arrayidx112, i32 0, i32 2
  store ptr null, ptr %part1113, align 8, !tbaa !26
  %110 = load ptr, ptr %part2, align 8, !tbaa !5
  %111 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %batch114 = getelementptr inbounds %struct.sbtable, ptr %111, i32 0, i32 2
  %112 = load i32, ptr %batIx, align 4, !tbaa !9
  %idxprom115 = zext i32 %112 to i64
  %arrayidx116 = getelementptr inbounds [1 x %struct.segbatch], ptr %batch114, i64 0, i64 %idxprom115
  %part2117 = getelementptr inbounds %struct.segbatch, ptr %arrayidx116, i32 0, i32 3
  store ptr %110, ptr %part2117, align 8, !tbaa !28
  %113 = load i32, ptr %segIx, align 4, !tbaa !9
  %inc118 = add i32 %113, 1
  store i32 %inc118, ptr %segIx, align 4, !tbaa !9
  %114 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %batch119 = getelementptr inbounds %struct.sbtable, ptr %114, i32 0, i32 2
  %115 = load i32, ptr %batIx, align 4, !tbaa !9
  %idxprom120 = zext i32 %115 to i64
  %arrayidx121 = getelementptr inbounds [1 x %struct.segbatch], ptr %batch119, i64 0, i64 %idxprom120
  %start122 = getelementptr inbounds %struct.segbatch, ptr %arrayidx121, i32 0, i32 0
  store i32 %113, ptr %start122, align 8, !tbaa !29
  %116 = load ptr, ptr %seg, align 8, !tbaa !5
  %incdec.ptr123 = getelementptr inbounds %struct.segment, ptr %116, i32 1
  store ptr %incdec.ptr123, ptr %seg, align 8, !tbaa !5
  br label %while.cond124

while.cond124:                                    ; preds = %while.body135, %if.end109
  %117 = load i32, ptr %segIx, align 4, !tbaa !9
  %118 = load ptr, ptr %st.addr, align 8, !tbaa !5
  %len125 = getelementptr inbounds %struct.segtable, ptr %118, i32 0, i32 1
  %119 = load i32, ptr %len125, align 4, !tbaa !20
  %cmp126 = icmp ult i32 %117, %119
  br i1 %cmp126, label %land.rhs128, label %land.end134

land.rhs128:                                      ; preds = %while.cond124
  %120 = load i32, ptr %pEnd2, align 4, !tbaa !9
  %121 = load ptr, ptr %seg, align 8, !tbaa !5
  %pos2129 = getelementptr inbounds %struct.segment, ptr %121, i32 0, i32 2
  %122 = load i32, ptr %pos2129, align 4, !tbaa !35
  %123 = load ptr, ptr %seg, align 8, !tbaa !5
  %length130 = getelementptr inbounds %struct.segment, ptr %123, i32 0, i32 3
  %124 = load i32, ptr %length130, align 8, !tbaa !25
  %add131 = add i32 %122, %124
  %cmp132 = icmp uge i32 %120, %add131
  br label %land.end134

land.end134:                                      ; preds = %land.rhs128, %while.cond124
  %125 = phi i1 [ false, %while.cond124 ], [ %cmp132, %land.rhs128 ]
  br i1 %125, label %while.body135, label %while.end138

while.body135:                                    ; preds = %land.end134
  %126 = load i32, ptr %segIx, align 4, !tbaa !9
  %inc136 = add i32 %126, 1
  store i32 %inc136, ptr %segIx, align 4, !tbaa !9
  %127 = load ptr, ptr %seg, align 8, !tbaa !5
  %incdec.ptr137 = getelementptr inbounds %struct.segment, ptr %127, i32 1
  store ptr %incdec.ptr137, ptr %seg, align 8, !tbaa !5
  br label %while.cond124, !llvm.loop !36

while.end138:                                     ; preds = %land.end134
  %128 = load i32, ptr %segIx, align 4, !tbaa !9
  %129 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %batch139 = getelementptr inbounds %struct.sbtable, ptr %129, i32 0, i32 2
  %130 = load i32, ptr %batIx, align 4, !tbaa !9
  %idxprom140 = zext i32 %130 to i64
  %arrayidx141 = getelementptr inbounds [1 x %struct.segbatch], ptr %batch139, i64 0, i64 %idxprom140
  %end142 = getelementptr inbounds %struct.segbatch, ptr %arrayidx141, i32 0, i32 1
  store i32 %128, ptr %end142, align 4, !tbaa !32
  %131 = load i32, ptr %batIx, align 4, !tbaa !9
  %inc143 = add i32 %131, 1
  store i32 %inc143, ptr %batIx, align 4, !tbaa !9
  br label %for.inc144

for.inc144:                                       ; preds = %while.end138, %if.then108
  %132 = load i32, ptr %partIx2, align 4, !tbaa !9
  %inc145 = add i32 %132, 1
  store i32 %inc145, ptr %partIx2, align 4, !tbaa !9
  br label %for.cond90, !llvm.loop !37

for.end146:                                       ; preds = %if.then98, %for.cond90
  %133 = load i32, ptr %batIx, align 4, !tbaa !9
  %134 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %len147 = getelementptr inbounds %struct.sbtable, ptr %134, i32 0, i32 1
  store i32 %133, ptr %len147, align 4, !tbaa !34
  br label %if.end262

if.else148:                                       ; preds = %land.lhs.true82, %if.else78
  %135 = load ptr, ptr %sp1, align 8, !tbaa !5
  %p149 = getelementptr inbounds %struct.seqpartition, ptr %135, i32 0, i32 3
  %136 = load ptr, ptr %p149, align 8, !tbaa !11
  %cmp150 = icmp ne ptr %136, null
  br i1 %cmp150, label %land.lhs.true152, label %if.end261

land.lhs.true152:                                 ; preds = %if.else148
  %137 = load ptr, ptr %sp2, align 8, !tbaa !5
  %p153 = getelementptr inbounds %struct.seqpartition, ptr %137, i32 0, i32 3
  %138 = load ptr, ptr %p153, align 8, !tbaa !11
  %cmp154 = icmp ne ptr %138, null
  br i1 %cmp154, label %if.then156, label %if.end261

if.then156:                                       ; preds = %land.lhs.true152
  %139 = load ptr, ptr %st.addr, align 8, !tbaa !5
  call void @sort_segments(ptr noundef %139, ptr noundef @qSegmentsByPos1)
  store i32 0, ptr %batIx, align 4, !tbaa !9
  store i32 0, ptr %segIx, align 4, !tbaa !9
  %140 = load ptr, ptr %st.addr, align 8, !tbaa !5
  %seg157 = getelementptr inbounds %struct.segtable, ptr %140, i32 0, i32 6
  %141 = load ptr, ptr %seg157, align 8, !tbaa !18
  %142 = load i32, ptr %segIx, align 4, !tbaa !9
  %idxprom158 = zext i32 %142 to i64
  %arrayidx159 = getelementptr inbounds %struct.segment, ptr %141, i64 %idxprom158
  store ptr %arrayidx159, ptr %seg, align 8, !tbaa !5
  store i32 0, ptr %partIx1, align 4, !tbaa !9
  br label %for.cond160

for.cond160:                                      ; preds = %for.inc257, %if.then156
  %143 = load i32, ptr %partIx1, align 4, !tbaa !9
  %144 = load ptr, ptr %sp1, align 8, !tbaa !5
  %len161 = getelementptr inbounds %struct.seqpartition, ptr %144, i32 0, i32 2
  %145 = load i32, ptr %len161, align 8, !tbaa !13
  %cmp162 = icmp ult i32 %143, %145
  br i1 %cmp162, label %for.body164, label %for.end259

for.body164:                                      ; preds = %for.cond160
  %146 = load i32, ptr %segIx, align 4, !tbaa !9
  %147 = load ptr, ptr %st.addr, align 8, !tbaa !5
  %len165 = getelementptr inbounds %struct.segtable, ptr %147, i32 0, i32 1
  %148 = load i32, ptr %len165, align 4, !tbaa !20
  %cmp166 = icmp uge i32 %146, %148
  br i1 %cmp166, label %if.then168, label %if.end169

if.then168:                                       ; preds = %for.body164
  br label %for.end259

if.end169:                                        ; preds = %for.body164
  %149 = load ptr, ptr %sp1, align 8, !tbaa !5
  %p170 = getelementptr inbounds %struct.seqpartition, ptr %149, i32 0, i32 3
  %150 = load ptr, ptr %p170, align 8, !tbaa !11
  %151 = load i32, ptr %partIx1, align 4, !tbaa !9
  %idxprom171 = zext i32 %151 to i64
  %arrayidx172 = getelementptr inbounds %struct.partition, ptr %150, i64 %idxprom171
  store ptr %arrayidx172, ptr %part1, align 8, !tbaa !5
  %152 = load ptr, ptr %part1, align 8, !tbaa !5
  %sepAfter173 = getelementptr inbounds %struct.partition, ptr %152, i32 0, i32 1
  %153 = load i32, ptr %sepAfter173, align 4, !tbaa !21
  store i32 %153, ptr %pEnd1, align 4, !tbaa !9
  %154 = load i32, ptr %pEnd1, align 4, !tbaa !9
  %155 = load ptr, ptr %seg, align 8, !tbaa !5
  %pos1174 = getelementptr inbounds %struct.segment, ptr %155, i32 0, i32 1
  %156 = load i32, ptr %pos1174, align 8, !tbaa !23
  %157 = load ptr, ptr %seg, align 8, !tbaa !5
  %length175 = getelementptr inbounds %struct.segment, ptr %157, i32 0, i32 3
  %158 = load i32, ptr %length175, align 8, !tbaa !25
  %add176 = add i32 %156, %158
  %cmp177 = icmp ult i32 %154, %add176
  br i1 %cmp177, label %if.then179, label %if.end180

if.then179:                                       ; preds = %if.end169
  br label %for.inc257

if.end180:                                        ; preds = %if.end169
  %159 = load i32, ptr %segIx, align 4, !tbaa !9
  %inc181 = add i32 %159, 1
  store i32 %inc181, ptr %segIx, align 4, !tbaa !9
  store i32 %159, ptr %startSegIx, align 4, !tbaa !9
  %160 = load ptr, ptr %seg, align 8, !tbaa !5
  %incdec.ptr182 = getelementptr inbounds %struct.segment, ptr %160, i32 1
  store ptr %incdec.ptr182, ptr %seg, align 8, !tbaa !5
  br label %while.cond183

while.cond183:                                    ; preds = %while.body194, %if.end180
  %161 = load i32, ptr %segIx, align 4, !tbaa !9
  %162 = load ptr, ptr %st.addr, align 8, !tbaa !5
  %len184 = getelementptr inbounds %struct.segtable, ptr %162, i32 0, i32 1
  %163 = load i32, ptr %len184, align 4, !tbaa !20
  %cmp185 = icmp ult i32 %161, %163
  br i1 %cmp185, label %land.rhs187, label %land.end193

land.rhs187:                                      ; preds = %while.cond183
  %164 = load i32, ptr %pEnd1, align 4, !tbaa !9
  %165 = load ptr, ptr %seg, align 8, !tbaa !5
  %pos1188 = getelementptr inbounds %struct.segment, ptr %165, i32 0, i32 1
  %166 = load i32, ptr %pos1188, align 8, !tbaa !23
  %167 = load ptr, ptr %seg, align 8, !tbaa !5
  %length189 = getelementptr inbounds %struct.segment, ptr %167, i32 0, i32 3
  %168 = load i32, ptr %length189, align 8, !tbaa !25
  %add190 = add i32 %166, %168
  %cmp191 = icmp uge i32 %164, %add190
  br label %land.end193

land.end193:                                      ; preds = %land.rhs187, %while.cond183
  %169 = phi i1 [ false, %while.cond183 ], [ %cmp191, %land.rhs187 ]
  br i1 %169, label %while.body194, label %while.end197

while.body194:                                    ; preds = %land.end193
  %170 = load i32, ptr %segIx, align 4, !tbaa !9
  %inc195 = add i32 %170, 1
  store i32 %inc195, ptr %segIx, align 4, !tbaa !9
  %171 = load ptr, ptr %seg, align 8, !tbaa !5
  %incdec.ptr196 = getelementptr inbounds %struct.segment, ptr %171, i32 1
  store ptr %incdec.ptr196, ptr %seg, align 8, !tbaa !5
  br label %while.cond183, !llvm.loop !38

while.end197:                                     ; preds = %land.end193
  %172 = load i32, ptr %segIx, align 4, !tbaa !9
  store i32 %172, ptr %endSegIx, align 4, !tbaa !9
  %173 = load ptr, ptr %st.addr, align 8, !tbaa !5
  %174 = load i32, ptr %startSegIx, align 4, !tbaa !9
  %175 = load i32, ptr %endSegIx, align 4, !tbaa !9
  call void @sort_some_segments(ptr noundef %173, i32 noundef %174, i32 noundef %175, ptr noundef @qSegmentsByPos2)
  %176 = load i32, ptr %startSegIx, align 4, !tbaa !9
  store i32 %176, ptr %segIx2, align 4, !tbaa !9
  %177 = load ptr, ptr %st.addr, align 8, !tbaa !5
  %seg198 = getelementptr inbounds %struct.segtable, ptr %177, i32 0, i32 6
  %178 = load ptr, ptr %seg198, align 8, !tbaa !18
  %179 = load i32, ptr %segIx2, align 4, !tbaa !9
  %idxprom199 = zext i32 %179 to i64
  %arrayidx200 = getelementptr inbounds %struct.segment, ptr %178, i64 %idxprom199
  store ptr %arrayidx200, ptr %seg2, align 8, !tbaa !5
  store i32 0, ptr %partIx2, align 4, !tbaa !9
  br label %for.cond201

for.cond201:                                      ; preds = %for.inc254, %while.end197
  %180 = load i32, ptr %partIx2, align 4, !tbaa !9
  %181 = load ptr, ptr %sp2, align 8, !tbaa !5
  %len202 = getelementptr inbounds %struct.seqpartition, ptr %181, i32 0, i32 2
  %182 = load i32, ptr %len202, align 8, !tbaa !13
  %cmp203 = icmp ult i32 %180, %182
  br i1 %cmp203, label %for.body205, label %for.end256

for.body205:                                      ; preds = %for.cond201
  %183 = load i32, ptr %segIx2, align 4, !tbaa !9
  %184 = load i32, ptr %endSegIx, align 4, !tbaa !9
  %cmp206 = icmp uge i32 %183, %184
  br i1 %cmp206, label %if.then208, label %if.end209

if.then208:                                       ; preds = %for.body205
  br label %for.end256

if.end209:                                        ; preds = %for.body205
  %185 = load ptr, ptr %sp2, align 8, !tbaa !5
  %p210 = getelementptr inbounds %struct.seqpartition, ptr %185, i32 0, i32 3
  %186 = load ptr, ptr %p210, align 8, !tbaa !11
  %187 = load i32, ptr %partIx2, align 4, !tbaa !9
  %idxprom211 = zext i32 %187 to i64
  %arrayidx212 = getelementptr inbounds %struct.partition, ptr %186, i64 %idxprom211
  store ptr %arrayidx212, ptr %part2, align 8, !tbaa !5
  %188 = load ptr, ptr %part2, align 8, !tbaa !5
  %sepAfter213 = getelementptr inbounds %struct.partition, ptr %188, i32 0, i32 1
  %189 = load i32, ptr %sepAfter213, align 4, !tbaa !21
  store i32 %189, ptr %pEnd2, align 4, !tbaa !9
  %190 = load i32, ptr %pEnd2, align 4, !tbaa !9
  %191 = load ptr, ptr %seg2, align 8, !tbaa !5
  %pos2214 = getelementptr inbounds %struct.segment, ptr %191, i32 0, i32 2
  %192 = load i32, ptr %pos2214, align 4, !tbaa !35
  %193 = load ptr, ptr %seg2, align 8, !tbaa !5
  %length215 = getelementptr inbounds %struct.segment, ptr %193, i32 0, i32 3
  %194 = load i32, ptr %length215, align 8, !tbaa !25
  %add216 = add i32 %192, %194
  %cmp217 = icmp ult i32 %190, %add216
  br i1 %cmp217, label %if.then219, label %if.end220

if.then219:                                       ; preds = %if.end209
  br label %for.inc254

if.end220:                                        ; preds = %if.end209
  %195 = load ptr, ptr %part1, align 8, !tbaa !5
  %196 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %batch221 = getelementptr inbounds %struct.sbtable, ptr %196, i32 0, i32 2
  %197 = load i32, ptr %batIx, align 4, !tbaa !9
  %idxprom222 = zext i32 %197 to i64
  %arrayidx223 = getelementptr inbounds [1 x %struct.segbatch], ptr %batch221, i64 0, i64 %idxprom222
  %part1224 = getelementptr inbounds %struct.segbatch, ptr %arrayidx223, i32 0, i32 2
  store ptr %195, ptr %part1224, align 8, !tbaa !26
  %198 = load ptr, ptr %part2, align 8, !tbaa !5
  %199 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %batch225 = getelementptr inbounds %struct.sbtable, ptr %199, i32 0, i32 2
  %200 = load i32, ptr %batIx, align 4, !tbaa !9
  %idxprom226 = zext i32 %200 to i64
  %arrayidx227 = getelementptr inbounds [1 x %struct.segbatch], ptr %batch225, i64 0, i64 %idxprom226
  %part2228 = getelementptr inbounds %struct.segbatch, ptr %arrayidx227, i32 0, i32 3
  store ptr %198, ptr %part2228, align 8, !tbaa !28
  %201 = load i32, ptr %segIx2, align 4, !tbaa !9
  %inc229 = add i32 %201, 1
  store i32 %inc229, ptr %segIx2, align 4, !tbaa !9
  %202 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %batch230 = getelementptr inbounds %struct.sbtable, ptr %202, i32 0, i32 2
  %203 = load i32, ptr %batIx, align 4, !tbaa !9
  %idxprom231 = zext i32 %203 to i64
  %arrayidx232 = getelementptr inbounds [1 x %struct.segbatch], ptr %batch230, i64 0, i64 %idxprom231
  %start233 = getelementptr inbounds %struct.segbatch, ptr %arrayidx232, i32 0, i32 0
  store i32 %201, ptr %start233, align 8, !tbaa !29
  %204 = load ptr, ptr %seg2, align 8, !tbaa !5
  %incdec.ptr234 = getelementptr inbounds %struct.segment, ptr %204, i32 1
  store ptr %incdec.ptr234, ptr %seg2, align 8, !tbaa !5
  br label %while.cond235

while.cond235:                                    ; preds = %while.body245, %if.end220
  %205 = load i32, ptr %segIx2, align 4, !tbaa !9
  %206 = load i32, ptr %endSegIx, align 4, !tbaa !9
  %cmp236 = icmp ult i32 %205, %206
  br i1 %cmp236, label %land.rhs238, label %land.end244

land.rhs238:                                      ; preds = %while.cond235
  %207 = load i32, ptr %pEnd2, align 4, !tbaa !9
  %208 = load ptr, ptr %seg2, align 8, !tbaa !5
  %pos2239 = getelementptr inbounds %struct.segment, ptr %208, i32 0, i32 2
  %209 = load i32, ptr %pos2239, align 4, !tbaa !35
  %210 = load ptr, ptr %seg2, align 8, !tbaa !5
  %length240 = getelementptr inbounds %struct.segment, ptr %210, i32 0, i32 3
  %211 = load i32, ptr %length240, align 8, !tbaa !25
  %add241 = add i32 %209, %211
  %cmp242 = icmp uge i32 %207, %add241
  br label %land.end244

land.end244:                                      ; preds = %land.rhs238, %while.cond235
  %212 = phi i1 [ false, %while.cond235 ], [ %cmp242, %land.rhs238 ]
  br i1 %212, label %while.body245, label %while.end248

while.body245:                                    ; preds = %land.end244
  %213 = load i32, ptr %segIx2, align 4, !tbaa !9
  %inc246 = add i32 %213, 1
  store i32 %inc246, ptr %segIx2, align 4, !tbaa !9
  %214 = load ptr, ptr %seg2, align 8, !tbaa !5
  %incdec.ptr247 = getelementptr inbounds %struct.segment, ptr %214, i32 1
  store ptr %incdec.ptr247, ptr %seg2, align 8, !tbaa !5
  br label %while.cond235, !llvm.loop !39

while.end248:                                     ; preds = %land.end244
  %215 = load i32, ptr %segIx2, align 4, !tbaa !9
  %216 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %batch249 = getelementptr inbounds %struct.sbtable, ptr %216, i32 0, i32 2
  %217 = load i32, ptr %batIx, align 4, !tbaa !9
  %idxprom250 = zext i32 %217 to i64
  %arrayidx251 = getelementptr inbounds [1 x %struct.segbatch], ptr %batch249, i64 0, i64 %idxprom250
  %end252 = getelementptr inbounds %struct.segbatch, ptr %arrayidx251, i32 0, i32 1
  store i32 %215, ptr %end252, align 4, !tbaa !32
  %218 = load i32, ptr %batIx, align 4, !tbaa !9
  %inc253 = add i32 %218, 1
  store i32 %inc253, ptr %batIx, align 4, !tbaa !9
  br label %for.inc254

for.inc254:                                       ; preds = %while.end248, %if.then219
  %219 = load i32, ptr %partIx2, align 4, !tbaa !9
  %inc255 = add i32 %219, 1
  store i32 %inc255, ptr %partIx2, align 4, !tbaa !9
  br label %for.cond201, !llvm.loop !40

for.end256:                                       ; preds = %if.then208, %for.cond201
  br label %for.inc257

for.inc257:                                       ; preds = %for.end256, %if.then179
  %220 = load i32, ptr %partIx1, align 4, !tbaa !9
  %inc258 = add i32 %220, 1
  store i32 %inc258, ptr %partIx1, align 4, !tbaa !9
  br label %for.cond160, !llvm.loop !41

for.end259:                                       ; preds = %if.then168, %for.cond160
  %221 = load i32, ptr %batIx, align 4, !tbaa !9
  %222 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %len260 = getelementptr inbounds %struct.sbtable, ptr %222, i32 0, i32 1
  store i32 %221, ptr %len260, align 4, !tbaa !34
  br label %if.end261

if.end261:                                        ; preds = %for.end259, %land.lhs.true152, %if.else148
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %for.end146
  br label %if.end263

if.end263:                                        ; preds = %if.end262, %for.end
  store double 0.000000e+00, ptr %best, align 8, !tbaa !42
  store i32 0, ptr %batIx, align 4, !tbaa !9
  br label %for.cond264

for.cond264:                                      ; preds = %for.inc306, %if.end263
  %223 = load i32, ptr %batIx, align 4, !tbaa !9
  %224 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %len265 = getelementptr inbounds %struct.sbtable, ptr %224, i32 0, i32 1
  %225 = load i32, ptr %len265, align 4, !tbaa !34
  %cmp266 = icmp ult i32 %223, %225
  br i1 %cmp266, label %for.body268, label %for.end308

for.body268:                                      ; preds = %for.cond264
  %226 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %batch269 = getelementptr inbounds %struct.sbtable, ptr %226, i32 0, i32 2
  %227 = load i32, ptr %batIx, align 4, !tbaa !9
  %idxprom270 = zext i32 %227 to i64
  %arrayidx271 = getelementptr inbounds [1 x %struct.segbatch], ptr %batch269, i64 0, i64 %idxprom270
  %start272 = getelementptr inbounds %struct.segbatch, ptr %arrayidx271, i32 0, i32 0
  %228 = load i32, ptr %start272, align 8, !tbaa !29
  store i32 %228, ptr %startSegIx, align 4, !tbaa !9
  %229 = load ptr, ptr @chainBatches, align 8, !tbaa !5
  %batch273 = getelementptr inbounds %struct.sbtable, ptr %229, i32 0, i32 2
  %230 = load i32, ptr %batIx, align 4, !tbaa !9
  %idxprom274 = zext i32 %230 to i64
  %arrayidx275 = getelementptr inbounds [1 x %struct.segbatch], ptr %batch273, i64 0, i64 %idxprom274
  %end276 = getelementptr inbounds %struct.segbatch, ptr %arrayidx275, i32 0, i32 1
  %231 = load i32, ptr %end276, align 4, !tbaa !32
  store i32 %231, ptr %endSegIx, align 4, !tbaa !9
  %232 = load ptr, ptr %st.addr, align 8, !tbaa !5
  %233 = load i32, ptr %startSegIx, align 4, !tbaa !9
  %234 = load i32, ptr %endSegIx, align 4, !tbaa !9
  call void @subset_segment_table(ptr noundef %232, i32 noundef %233, i32 noundef %234, ptr noundef %stSubset)
  %235 = load i32, ptr %diagPen.addr, align 4, !tbaa !9
  %236 = load i32, ptr %antiPen.addr, align 4, !tbaa !9
  %237 = load i32, ptr %scale.addr, align 4, !tbaa !9
  %238 = load ptr, ptr %connect.addr, align 8, !tbaa !5
  %call277 = call i32 @reduce_to_chain(ptr noundef %stSubset, i32 noundef %235, i32 noundef %236, i32 noundef %237, ptr noundef %238)
  %conv278 = sitofp i32 %call277 to double
  store double %conv278, ptr %chainScore, align 8, !tbaa !42
  %239 = load double, ptr %chainScore, align 8, !tbaa !42
  %240 = load double, ptr %best, align 8, !tbaa !42
  %cmp279 = fcmp ogt double %239, %240
  br i1 %cmp279, label %if.then281, label %if.end282

if.then281:                                       ; preds = %for.body268
  %241 = load double, ptr %chainScore, align 8, !tbaa !42
  store double %241, ptr %best, align 8, !tbaa !42
  br label %if.end282

if.end282:                                        ; preds = %if.then281, %for.body268
  %len283 = getelementptr inbounds %struct.segtable, ptr %stSubset, i32 0, i32 1
  %242 = load i32, ptr %len283, align 4, !tbaa !20
  store i32 %242, ptr %segsKept, align 4, !tbaa !9
  %243 = load i32, ptr %startSegIx, align 4, !tbaa !9
  store i32 %243, ptr %segIx, align 4, !tbaa !9
  br label %for.cond284

for.cond284:                                      ; preds = %for.inc292, %if.end282
  %244 = load i32, ptr %segIx, align 4, !tbaa !9
  %245 = load i32, ptr %startSegIx, align 4, !tbaa !9
  %246 = load i32, ptr %segsKept, align 4, !tbaa !9
  %add285 = add i32 %245, %246
  %cmp286 = icmp ult i32 %244, %add285
  br i1 %cmp286, label %for.body288, label %for.end294

for.body288:                                      ; preds = %for.cond284
  %247 = load ptr, ptr %st.addr, align 8, !tbaa !5
  %seg289 = getelementptr inbounds %struct.segtable, ptr %247, i32 0, i32 6
  %248 = load ptr, ptr %seg289, align 8, !tbaa !18
  %249 = load i32, ptr %segIx, align 4, !tbaa !9
  %idxprom290 = zext i32 %249 to i64
  %arrayidx291 = getelementptr inbounds %struct.segment, ptr %248, i64 %idxprom290
  %filter = getelementptr inbounds %struct.segment, ptr %arrayidx291, i32 0, i32 7
  store i32 0, ptr %filter, align 8, !tbaa !44
  br label %for.inc292

for.inc292:                                       ; preds = %for.body288
  %250 = load i32, ptr %segIx, align 4, !tbaa !9
  %inc293 = add i32 %250, 1
  store i32 %inc293, ptr %segIx, align 4, !tbaa !9
  br label %for.cond284, !llvm.loop !45

for.end294:                                       ; preds = %for.cond284
  br label %for.cond295

for.cond295:                                      ; preds = %for.inc303, %for.end294
  %251 = load i32, ptr %segIx, align 4, !tbaa !9
  %252 = load i32, ptr %endSegIx, align 4, !tbaa !9
  %cmp296 = icmp ult i32 %251, %252
  br i1 %cmp296, label %for.body298, label %for.end305

for.body298:                                      ; preds = %for.cond295
  %253 = load ptr, ptr %st.addr, align 8, !tbaa !5
  %seg299 = getelementptr inbounds %struct.segtable, ptr %253, i32 0, i32 6
  %254 = load ptr, ptr %seg299, align 8, !tbaa !18
  %255 = load i32, ptr %segIx, align 4, !tbaa !9
  %idxprom300 = zext i32 %255 to i64
  %arrayidx301 = getelementptr inbounds %struct.segment, ptr %254, i64 %idxprom300
  %filter302 = getelementptr inbounds %struct.segment, ptr %arrayidx301, i32 0, i32 7
  store i32 1, ptr %filter302, align 8, !tbaa !44
  br label %for.inc303

for.inc303:                                       ; preds = %for.body298
  %256 = load i32, ptr %segIx, align 4, !tbaa !9
  %inc304 = add i32 %256, 1
  store i32 %inc304, ptr %segIx, align 4, !tbaa !9
  br label %for.cond295, !llvm.loop !46

for.end305:                                       ; preds = %for.cond295
  br label %for.inc306

for.inc306:                                       ; preds = %for.end305
  %257 = load i32, ptr %batIx, align 4, !tbaa !9
  %inc307 = add i32 %257, 1
  store i32 %inc307, ptr %batIx, align 4, !tbaa !9
  br label %for.cond264, !llvm.loop !47

for.end308:                                       ; preds = %for.cond264
  %258 = load ptr, ptr %st.addr, align 8, !tbaa !5
  call void @filter_marked_segments(ptr noundef %258)
  %259 = load double, ptr %best, align 8, !tbaa !42
  %conv309 = fptosi double %259 to i32
  store i32 %conv309, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end308, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %best) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %chainScore) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pEnd2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %pEnd1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %segsKept) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %endSegIx) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %startSegIx) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %batIx) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %segIx2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %segIx) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %partIx2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %partIx1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytesNeeded) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %entriesNeeded) #4
  call void @llvm.lifetime.end.p0(i64 88, ptr %stSubset) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %seg2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %seg) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %part2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %part1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %sp1) #4
  %260 = load i32, ptr %retval, align 4
  ret i32 %260
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @reduce_to_chain(ptr noundef %st, i32 noundef %diagPen, i32 noundef %antiPen, i32 noundef %scale, ptr noundef %connect) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca ptr, align 8
  %diagPen.addr = alloca i32, align 4
  %antiPen.addr = alloca i32, align 4
  %scale.addr = alloca i32, align 4
  %connect.addr = alloca ptr, align 8
  %kdi = alloca %struct.kdinfo, align 8
  %root = alloca ptr, align 8
  %chain = alloca ptr, align 8
  %best = alloca double, align 8
  %queryContrib = alloca double, align 8
  %bestEnd = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %bp = alloca %struct.bestpred, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.bestpred, align 8
  store ptr %st, ptr %st.addr, align 8, !tbaa !5
  store i32 %diagPen, ptr %diagPen.addr, align 4, !tbaa !9
  store i32 %antiPen, ptr %antiPen.addr, align 4, !tbaa !9
  store i32 %scale, ptr %scale.addr, align 4, !tbaa !9
  store ptr %connect, ptr %connect.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 80, ptr %kdi) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %chain) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %best) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %queryContrib) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bestEnd) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %bp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  %0 = load ptr, ptr %st.addr, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %st.addr, align 8, !tbaa !5
  %len = getelementptr inbounds %struct.segtable, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %len, align 4, !tbaa !20
  store i32 %2, ptr %n, align 4, !tbaa !9
  %3 = load i32, ptr %n, align 4, !tbaa !9
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %st.addr, align 8, !tbaa !5
  call void @sort_segments(ptr noundef %4, ptr noundef @qSegmentsByPos1)
  %5 = load ptr, ptr %connect.addr, align 8, !tbaa !5
  %connect4 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 11
  store ptr %5, ptr %connect4, align 8, !tbaa !48
  %6 = load ptr, ptr %st.addr, align 8, !tbaa !5
  %seg = getelementptr inbounds %struct.segtable, ptr %6, i32 0, i32 6
  %7 = load ptr, ptr %seg, align 8, !tbaa !18
  %seg5 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 6
  store ptr %7, ptr %seg5, align 8, !tbaa !50
  %8 = load i32, ptr %n, align 4, !tbaa !9
  %conv = zext i32 %8 to i64
  %mul = mul i64 %conv, 4
  %call = call ptr @malloc_or_die(ptr noundef @.str.1, i64 noundef %mul)
  %perm = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 4
  store ptr %call, ptr %perm, align 8, !tbaa !51
  %9 = load i32, ptr %n, align 4, !tbaa !9
  %conv6 = zext i32 %9 to i64
  %mul7 = mul i64 %conv6, 4
  %call8 = call ptr @malloc_or_die(ptr noundef @.str.2, i64 noundef %mul7)
  %invPerm = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 5
  store ptr %call8, ptr %invPerm, align 8, !tbaa !52
  %10 = load i32, ptr %n, align 4, !tbaa !9
  %conv9 = zext i32 %10 to i64
  %mul10 = mul i64 %conv9, 8
  %call11 = call ptr @zalloc_or_die(ptr noundef @.str.3, i64 noundef %mul10)
  %chainScore = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 3
  store ptr %call11, ptr %chainScore, align 8, !tbaa !53
  %11 = load i32, ptr %diagPen.addr, align 4, !tbaa !9
  %diagPen12 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 0
  store i32 %11, ptr %diagPen12, align 8, !tbaa !54
  %12 = load i32, ptr %antiPen.addr, align 4, !tbaa !9
  %antiPen13 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 1
  store i32 %12, ptr %antiPen13, align 4, !tbaa !55
  %13 = load i32, ptr %scale.addr, align 4, !tbaa !9
  %scale14 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 2
  store i32 %13, ptr %scale14, align 8, !tbaa !56
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %14 = load i32, ptr %i, align 4, !tbaa !9
  %15 = load i32, ptr %n, align 4, !tbaa !9
  %cmp15 = icmp ult i32 %14, %15
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, ptr %i, align 4, !tbaa !9
  %perm17 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 4
  %17 = load ptr, ptr %perm17, align 8, !tbaa !51
  %18 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = zext i32 %18 to i64
  %arrayidx = getelementptr inbounds i32, ptr %17, i64 %idxprom
  store i32 %16, ptr %arrayidx, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add i32 %19, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !57

for.end:                                          ; preds = %for.cond
  %20 = load i32, ptr %n, align 4, !tbaa !9
  %sub = sub i32 %20, 1
  %call18 = call ptr @build_kd_tree(i32 noundef 0, i32 noundef %sub, i32 noundef 1, ptr noundef %kdi)
  store ptr %call18, ptr %root, align 8, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc29, %for.end
  %21 = load i32, ptr %i, align 4, !tbaa !9
  %22 = load i32, ptr %n, align 4, !tbaa !9
  %cmp20 = icmp ult i32 %21, %22
  br i1 %cmp20, label %for.body22, label %for.end31

for.body22:                                       ; preds = %for.cond19
  %23 = load i32, ptr %i, align 4, !tbaa !9
  %invPerm23 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 5
  %24 = load ptr, ptr %invPerm23, align 8, !tbaa !52
  %perm24 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 4
  %25 = load ptr, ptr %perm24, align 8, !tbaa !51
  %26 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom25 = zext i32 %26 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %25, i64 %idxprom25
  %27 = load i32, ptr %arrayidx26, align 4, !tbaa !9
  %idxprom27 = zext i32 %27 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %24, i64 %idxprom27
  store i32 %23, ptr %arrayidx28, align 4, !tbaa !9
  br label %for.inc29

for.inc29:                                        ; preds = %for.body22
  %28 = load i32, ptr %i, align 4, !tbaa !9
  %inc30 = add i32 %28, 1
  store i32 %inc30, ptr %i, align 4, !tbaa !9
  br label %for.cond19, !llvm.loop !58

for.end31:                                        ; preds = %for.cond19
  %29 = load i32, ptr @chain_dbgDumpTree, align 4, !tbaa !9
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then32, label %if.end33

if.then32:                                        ; preds = %for.end31
  %30 = load ptr, ptr @stderr, align 8, !tbaa !5
  %31 = load i32, ptr %n, align 4, !tbaa !9
  %32 = load ptr, ptr %root, align 8, !tbaa !5
  call void @dump_kd_tree(ptr noundef %30, i32 noundef %31, ptr noundef %32, ptr noundef %kdi)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %for.end31
  %33 = load i32, ptr %n, align 4, !tbaa !9
  %conv34 = zext i32 %33 to i64
  %mul35 = mul i64 %conv34, 4
  %call36 = call ptr @malloc_or_die(ptr noundef @.str.4, i64 noundef %mul35)
  store ptr %call36, ptr %chain, align 8, !tbaa !5
  store double 0.000000e+00, ptr %best, align 8, !tbaa !42
  store i32 -1, ptr %bestEnd, align 4, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !9
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc102, %if.end33
  %34 = load i32, ptr %i, align 4, !tbaa !9
  %35 = load i32, ptr %n, align 4, !tbaa !9
  %cmp38 = icmp ult i32 %34, %35
  br i1 %cmp38, label %for.body40, label %for.end104

for.body40:                                       ; preds = %for.cond37
  %seg41 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 6
  %36 = load ptr, ptr %seg41, align 8, !tbaa !50
  %37 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom42 = zext i32 %37 to i64
  %arrayidx43 = getelementptr inbounds %struct.segment, ptr %36, i64 %idxprom42
  %query = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 7
  store ptr %arrayidx43, ptr %query, align 8, !tbaa !59
  %query44 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 7
  %38 = load ptr, ptr %query44, align 8, !tbaa !59
  %pos1 = getelementptr inbounds %struct.segment, ptr %38, i32 0, i32 1
  %39 = load i32, ptr %pos1, align 8, !tbaa !23
  %x = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 8
  store i32 %39, ptr %x, align 8, !tbaa !60
  %query45 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 7
  %40 = load ptr, ptr %query45, align 8, !tbaa !59
  %pos2 = getelementptr inbounds %struct.segment, ptr %40, i32 0, i32 2
  %41 = load i32, ptr %pos2, align 4, !tbaa !35
  %y = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 9
  store i32 %41, ptr %y, align 4, !tbaa !61
  %x46 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 8
  %42 = load i32, ptr %x46, align 8, !tbaa !60
  %y47 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 9
  %43 = load i32, ptr %y47, align 4, !tbaa !61
  %sub48 = sub nsw i32 %42, %43
  %diag = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 10
  store i32 %sub48, ptr %diag, align 8, !tbaa !62
  %44 = load i32, ptr @chain_dbgChaining, align 4, !tbaa !9
  %tobool49 = icmp ne i32 %44, 0
  br i1 %tobool49, label %if.then50, label %if.end56

if.then50:                                        ; preds = %for.body40
  %45 = load ptr, ptr @stderr, align 8, !tbaa !5
  %46 = load i32, ptr %i, align 4, !tbaa !9
  %x51 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 8
  %47 = load i32, ptr %x51, align 8, !tbaa !60
  %y52 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 9
  %48 = load i32, ptr %y52, align 4, !tbaa !61
  %diag53 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 10
  %49 = load i32, ptr %diag53, align 8, !tbaa !62
  %query54 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 7
  %50 = load ptr, ptr %query54, align 8, !tbaa !59
  %s = getelementptr inbounds %struct.segment, ptr %50, i32 0, i32 4
  %51 = load i32, ptr %s, align 4, !tbaa !63
  %call55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.5, i32 noundef %46, i32 noundef %47, i32 noundef %48, i32 noundef %49, i32 noundef %51)
  br label %if.end56

if.end56:                                         ; preds = %if.then50, %for.body40
  %num = getelementptr inbounds %struct.bestpred, ptr %bp, i32 0, i32 0
  store i32 -1, ptr %num, align 8, !tbaa !64
  %contrib = getelementptr inbounds %struct.bestpred, ptr %bp, i32 0, i32 1
  store double 0.000000e+00, ptr %contrib, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #4
  %52 = load ptr, ptr %root, align 8, !tbaa !5
  %53 = getelementptr inbounds { i32, double }, ptr %bp, i32 0, i32 0
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr inbounds { i32, double }, ptr %bp, i32 0, i32 1
  %56 = load double, ptr %55, align 8
  %call57 = call { i32, double } @best_predecessor(ptr noundef %52, i32 noundef 1, double noundef 0.000000e+00, i32 %54, double %56, ptr noundef %kdi)
  %57 = getelementptr inbounds { i32, double }, ptr %tmp, i32 0, i32 0
  %58 = extractvalue { i32, double } %call57, 0
  store i32 %58, ptr %57, align 8
  %59 = getelementptr inbounds { i32, double }, ptr %tmp, i32 0, i32 1
  %60 = extractvalue { i32, double } %call57, 1
  store double %60, ptr %59, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %bp, ptr align 8 %tmp, i64 16, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #4
  %query58 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 7
  %61 = load ptr, ptr %query58, align 8, !tbaa !59
  %s59 = getelementptr inbounds %struct.segment, ptr %61, i32 0, i32 4
  %62 = load i32, ptr %s59, align 4, !tbaa !63
  %conv60 = sitofp i32 %62 to double
  %scale61 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 2
  %63 = load i32, ptr %scale61, align 8, !tbaa !56
  %conv62 = sitofp i32 %63 to double
  %mul63 = fmul double %conv60, %conv62
  store double %mul63, ptr %queryContrib, align 8, !tbaa !42
  %64 = load double, ptr %queryContrib, align 8, !tbaa !42
  %contrib64 = getelementptr inbounds %struct.bestpred, ptr %bp, i32 0, i32 1
  %65 = load double, ptr %contrib64, align 8, !tbaa !66
  %add = fadd double %64, %65
  %chainScore65 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 3
  %66 = load ptr, ptr %chainScore65, align 8, !tbaa !53
  %67 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom66 = zext i32 %67 to i64
  %arrayidx67 = getelementptr inbounds double, ptr %66, i64 %idxprom66
  store double %add, ptr %arrayidx67, align 8, !tbaa !42
  %68 = load i32, ptr @chain_dbgChaining, align 4, !tbaa !9
  %tobool68 = icmp ne i32 %68, 0
  br i1 %tobool68, label %if.then69, label %if.end82

if.then69:                                        ; preds = %if.end56
  %num70 = getelementptr inbounds %struct.bestpred, ptr %bp, i32 0, i32 0
  %69 = load i32, ptr %num70, align 8, !tbaa !64
  %cmp71 = icmp eq i32 %69, -1
  br i1 %cmp71, label %if.then73, label %if.else

if.then73:                                        ; preds = %if.then69
  %70 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef @.str.6)
  br label %if.end81

if.else:                                          ; preds = %if.then69
  %71 = load ptr, ptr @stderr, align 8, !tbaa !5
  %num75 = getelementptr inbounds %struct.bestpred, ptr %bp, i32 0, i32 0
  %72 = load i32, ptr %num75, align 8, !tbaa !64
  %73 = load double, ptr %queryContrib, align 8, !tbaa !42
  %contrib76 = getelementptr inbounds %struct.bestpred, ptr %bp, i32 0, i32 1
  %74 = load double, ptr %contrib76, align 8, !tbaa !66
  %chainScore77 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 3
  %75 = load ptr, ptr %chainScore77, align 8, !tbaa !53
  %76 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom78 = zext i32 %76 to i64
  %arrayidx79 = getelementptr inbounds double, ptr %75, i64 %idxprom78
  %77 = load double, ptr %arrayidx79, align 8, !tbaa !42
  %call80 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef @.str.7, i32 noundef %72, double noundef %73, double noundef %74, double noundef %77)
  br label %if.end81

if.end81:                                         ; preds = %if.else, %if.then73
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.end56
  %chainScore83 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 3
  %78 = load ptr, ptr %chainScore83, align 8, !tbaa !53
  %79 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom84 = zext i32 %79 to i64
  %arrayidx85 = getelementptr inbounds double, ptr %78, i64 %idxprom84
  %80 = load double, ptr %arrayidx85, align 8, !tbaa !42
  %81 = load double, ptr %best, align 8, !tbaa !42
  %cmp86 = fcmp ogt double %80, %81
  br i1 %cmp86, label %if.then88, label %if.end92

if.then88:                                        ; preds = %if.end82
  %chainScore89 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 3
  %82 = load ptr, ptr %chainScore89, align 8, !tbaa !53
  %83 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom90 = zext i32 %83 to i64
  %arrayidx91 = getelementptr inbounds double, ptr %82, i64 %idxprom90
  %84 = load double, ptr %arrayidx91, align 8, !tbaa !42
  store double %84, ptr %best, align 8, !tbaa !42
  %85 = load i32, ptr %i, align 4, !tbaa !9
  store i32 %85, ptr %bestEnd, align 4, !tbaa !9
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %if.end82
  %num93 = getelementptr inbounds %struct.bestpred, ptr %bp, i32 0, i32 0
  %86 = load i32, ptr %num93, align 8, !tbaa !64
  %87 = load ptr, ptr %chain, align 8, !tbaa !5
  %88 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom94 = zext i32 %88 to i64
  %arrayidx95 = getelementptr inbounds i32, ptr %87, i64 %idxprom94
  store i32 %86, ptr %arrayidx95, align 4, !tbaa !9
  %89 = load ptr, ptr %root, align 8, !tbaa !5
  %chainScore96 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 3
  %90 = load ptr, ptr %chainScore96, align 8, !tbaa !53
  %91 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom97 = zext i32 %91 to i64
  %arrayidx98 = getelementptr inbounds double, ptr %90, i64 %idxprom97
  %92 = load double, ptr %arrayidx98, align 8, !tbaa !42
  %invPerm99 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 5
  %93 = load ptr, ptr %invPerm99, align 8, !tbaa !52
  %94 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom100 = zext i32 %94 to i64
  %arrayidx101 = getelementptr inbounds i32, ptr %93, i64 %idxprom100
  %95 = load i32, ptr %arrayidx101, align 4, !tbaa !9
  call void @propagate_max_score(ptr noundef %89, double noundef %92, i32 noundef %95)
  br label %for.inc102

for.inc102:                                       ; preds = %if.end92
  %96 = load i32, ptr %i, align 4, !tbaa !9
  %inc103 = add i32 %96, 1
  store i32 %inc103, ptr %i, align 4, !tbaa !9
  br label %for.cond37, !llvm.loop !68

for.end104:                                       ; preds = %for.cond37
  %97 = load i32, ptr @chain_dbgChaining, align 4, !tbaa !9
  %tobool105 = icmp ne i32 %97, 0
  br i1 %tobool105, label %if.then106, label %if.end114

if.then106:                                       ; preds = %for.end104
  %98 = load i32, ptr %bestEnd, align 4, !tbaa !9
  %cmp107 = icmp eq i32 %98, -1
  br i1 %cmp107, label %if.then109, label %if.else111

if.then109:                                       ; preds = %if.then106
  %99 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef @.str.8)
  br label %if.end113

if.else111:                                       ; preds = %if.then106
  %100 = load ptr, ptr @stderr, align 8, !tbaa !5
  %101 = load i32, ptr %bestEnd, align 4, !tbaa !9
  %102 = load double, ptr %best, align 8, !tbaa !42
  %call112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef @.str.9, i32 noundef %101, double noundef %102)
  br label %if.end113

if.end113:                                        ; preds = %if.else111, %if.then109
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %for.end104
  %103 = load ptr, ptr %st.addr, align 8, !tbaa !5
  %seg115 = getelementptr inbounds %struct.segtable, ptr %103, i32 0, i32 6
  %104 = load ptr, ptr %seg115, align 8, !tbaa !18
  store ptr %104, ptr %p, align 8, !tbaa !5
  br label %for.cond116

for.cond116:                                      ; preds = %for.inc123, %if.end114
  %105 = load ptr, ptr %p, align 8, !tbaa !5
  %106 = load ptr, ptr %st.addr, align 8, !tbaa !5
  %seg117 = getelementptr inbounds %struct.segtable, ptr %106, i32 0, i32 6
  %107 = load ptr, ptr %seg117, align 8, !tbaa !18
  %sub.ptr.lhs.cast = ptrtoint ptr %105 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %107 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 48
  %conv118 = trunc i64 %sub.ptr.div to i32
  %108 = load ptr, ptr %st.addr, align 8, !tbaa !5
  %len119 = getelementptr inbounds %struct.segtable, ptr %108, i32 0, i32 1
  %109 = load i32, ptr %len119, align 4, !tbaa !20
  %cmp120 = icmp ult i32 %conv118, %109
  br i1 %cmp120, label %for.body122, label %for.end124

for.body122:                                      ; preds = %for.cond116
  %110 = load ptr, ptr %p, align 8, !tbaa !5
  %filter = getelementptr inbounds %struct.segment, ptr %110, i32 0, i32 7
  store i32 1, ptr %filter, align 8, !tbaa !44
  br label %for.inc123

for.inc123:                                       ; preds = %for.body122
  %111 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.segment, ptr %111, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !5
  br label %for.cond116, !llvm.loop !69

for.end124:                                       ; preds = %for.cond116
  %112 = load i32, ptr %bestEnd, align 4, !tbaa !9
  store i32 %112, ptr %i, align 4, !tbaa !9
  br label %for.cond125

for.cond125:                                      ; preds = %for.inc131, %for.end124
  %113 = load i32, ptr %i, align 4, !tbaa !9
  %cmp126 = icmp ne i32 %113, -1
  br i1 %cmp126, label %for.body128, label %for.end134

for.body128:                                      ; preds = %for.cond125
  %seg129 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 6
  %114 = load ptr, ptr %seg129, align 8, !tbaa !50
  %115 = load i32, ptr %i, align 4, !tbaa !9
  %idx.ext = zext i32 %115 to i64
  %add.ptr = getelementptr inbounds %struct.segment, ptr %114, i64 %idx.ext
  %filter130 = getelementptr inbounds %struct.segment, ptr %add.ptr, i32 0, i32 7
  store i32 0, ptr %filter130, align 8, !tbaa !44
  br label %for.inc131

for.inc131:                                       ; preds = %for.body128
  %116 = load ptr, ptr %chain, align 8, !tbaa !5
  %117 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom132 = zext i32 %117 to i64
  %arrayidx133 = getelementptr inbounds i32, ptr %116, i64 %idxprom132
  %118 = load i32, ptr %arrayidx133, align 4, !tbaa !9
  store i32 %118, ptr %i, align 4, !tbaa !9
  br label %for.cond125, !llvm.loop !70

for.end134:                                       ; preds = %for.cond125
  %119 = load ptr, ptr %st.addr, align 8, !tbaa !5
  call void @filter_marked_segments(ptr noundef %119)
  %120 = load i8, ptr @dna_utilities_scoreType, align 1, !tbaa !71
  %conv135 = sext i8 %120 to i32
  %cmp136 = icmp eq i32 %conv135, 73
  br i1 %cmp136, label %if.then138, label %if.else145

if.then138:                                       ; preds = %for.end134
  %121 = load double, ptr %best, align 8, !tbaa !42
  %122 = load i32, ptr %scale.addr, align 4, !tbaa !9
  %conv139 = sitofp i32 %122 to double
  %div = fdiv double %121, %conv139
  %add140 = fadd double %div, 5.000000e-01
  store double %add140, ptr %best, align 8, !tbaa !42
  %123 = load double, ptr %best, align 8, !tbaa !42
  %cmp141 = fcmp ogt double %123, 0x41DFFFFFFFC00000
  br i1 %cmp141, label %if.then143, label %if.end144

if.then143:                                       ; preds = %if.then138
  store double 0x41DFFFFFFFC00000, ptr %best, align 8, !tbaa !42
  br label %if.end144

if.end144:                                        ; preds = %if.then143, %if.then138
  br label %if.end148

if.else145:                                       ; preds = %for.end134
  %124 = load i32, ptr %scale.addr, align 4, !tbaa !9
  %conv146 = sitofp i32 %124 to double
  %125 = load double, ptr %best, align 8, !tbaa !42
  %div147 = fdiv double %125, %conv146
  store double %div147, ptr %best, align 8, !tbaa !42
  br label %if.end148

if.end148:                                        ; preds = %if.else145, %if.end144
  %perm149 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 4
  %126 = load ptr, ptr %perm149, align 8, !tbaa !51
  call void @free_if_valid(ptr noundef @.str.1, ptr noundef %126)
  %invPerm150 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 5
  %127 = load ptr, ptr %invPerm150, align 8, !tbaa !52
  call void @free_if_valid(ptr noundef @.str.2, ptr noundef %127)
  %chainScore151 = getelementptr inbounds %struct.kdinfo, ptr %kdi, i32 0, i32 3
  %128 = load ptr, ptr %chainScore151, align 8, !tbaa !53
  call void @free_if_valid(ptr noundef @.str.3, ptr noundef %128)
  %129 = load ptr, ptr %chain, align 8, !tbaa !5
  call void @free_if_valid(ptr noundef @.str.4, ptr noundef %129)
  %130 = load ptr, ptr %root, align 8, !tbaa !5
  call void @free_kd_tree(ptr noundef %130)
  %131 = load double, ptr %best, align 8, !tbaa !42
  %conv152 = fptosi double %131 to i32
  store i32 %conv152, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end148, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %bp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %bestEnd) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %queryContrib) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %best) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %chain) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #4
  call void @llvm.lifetime.end.p0(i64 80, ptr %kdi) #4
  %132 = load i32, ptr %retval, align 4
  ret i32 %132
}

declare ptr @malloc_or_die(ptr noundef, i64 noundef) #2

declare ptr @realloc_or_die(ptr noundef, ptr noundef, i64 noundef) #2

declare void @sort_segments(ptr noundef, ptr noundef) #2

declare i32 @qSegmentsByPos1(ptr noundef, ptr noundef) #2

declare i32 @qSegmentsByPos2(ptr noundef, ptr noundef) #2

declare void @sort_some_segments(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare void @subset_segment_table(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare void @filter_marked_segments(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @zalloc_or_die(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @build_kd_tree(i32 noundef %lo, i32 noundef %hi, i32 noundef %axis, ptr noundef %kdi) #0 {
entry:
  %lo.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  %axis.addr = alloca i32, align 4
  %kdi.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %m = alloca i32, align 4
  store i32 %lo, ptr %lo.addr, align 4, !tbaa !9
  store i32 %hi, ptr %hi.addr, align 4, !tbaa !9
  store i32 %axis, ptr %axis.addr, align 4, !tbaa !9
  store ptr %kdi, ptr %kdi.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  %call = call ptr @zalloc_or_die(ptr noundef @.str.10, i64 noundef 40)
  store ptr %call, ptr %p, align 8, !tbaa !5
  %0 = load ptr, ptr %p, align 8, !tbaa !5
  %maxChainScore = getelementptr inbounds %struct.kdnode, ptr %0, i32 0, i32 4
  store double 0.000000e+00, ptr %maxChainScore, align 8, !tbaa !72
  %1 = load i32, ptr %hi.addr, align 4, !tbaa !9
  %add = add i32 %1, 1
  %2 = load i32, ptr %lo.addr, align 4, !tbaa !9
  %sub = sub i32 %add, %2
  %cmp = icmp ule i32 %sub, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p, align 8, !tbaa !5
  %isBucket = getelementptr inbounds %struct.kdnode, ptr %3, i32 0, i32 0
  store i32 1, ptr %isBucket, align 8, !tbaa !74
  %4 = load i32, ptr %lo.addr, align 4, !tbaa !9
  %5 = load ptr, ptr %p, align 8, !tbaa !5
  %loIx = getelementptr inbounds %struct.kdnode, ptr %5, i32 0, i32 1
  store i32 %4, ptr %loIx, align 4, !tbaa !75
  %6 = load i32, ptr %hi.addr, align 4, !tbaa !9
  %7 = load ptr, ptr %p, align 8, !tbaa !5
  %hiIx = getelementptr inbounds %struct.kdnode, ptr %7, i32 0, i32 2
  store i32 %6, ptr %hiIx, align 8, !tbaa !76
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %p, align 8, !tbaa !5
  %isBucket1 = getelementptr inbounds %struct.kdnode, ptr %8, i32 0, i32 0
  store i32 0, ptr %isBucket1, align 8, !tbaa !74
  %9 = load i32, ptr %lo.addr, align 4, !tbaa !9
  %10 = load i32, ptr %hi.addr, align 4, !tbaa !9
  %11 = load i32, ptr %axis.addr, align 4, !tbaa !9
  %12 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %call2 = call i32 @partition_segments(i32 noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12)
  store i32 %call2, ptr %m, align 4, !tbaa !9
  %13 = load i32, ptr %axis.addr, align 4, !tbaa !9
  %cmp3 = icmp eq i32 %13, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %14 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %seg = getelementptr inbounds %struct.kdinfo, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %seg, align 8, !tbaa !50
  %16 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm = getelementptr inbounds %struct.kdinfo, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %perm, align 8, !tbaa !51
  %18 = load i32, ptr %m, align 4, !tbaa !9
  %idxprom = zext i32 %18 to i64
  %arrayidx = getelementptr inbounds i32, ptr %17, i64 %idxprom
  %19 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %idxprom4 = zext i32 %19 to i64
  %arrayidx5 = getelementptr inbounds %struct.segment, ptr %15, i64 %idxprom4
  %pos1 = getelementptr inbounds %struct.segment, ptr %arrayidx5, i32 0, i32 1
  %20 = load i32, ptr %pos1, align 8, !tbaa !23
  %21 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %seg6 = getelementptr inbounds %struct.kdinfo, ptr %21, i32 0, i32 6
  %22 = load ptr, ptr %seg6, align 8, !tbaa !50
  %23 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm7 = getelementptr inbounds %struct.kdinfo, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %perm7, align 8, !tbaa !51
  %25 = load i32, ptr %m, align 4, !tbaa !9
  %idxprom8 = zext i32 %25 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %24, i64 %idxprom8
  %26 = load i32, ptr %arrayidx9, align 4, !tbaa !9
  %idxprom10 = zext i32 %26 to i64
  %arrayidx11 = getelementptr inbounds %struct.segment, ptr %22, i64 %idxprom10
  %pos2 = getelementptr inbounds %struct.segment, ptr %arrayidx11, i32 0, i32 2
  %27 = load i32, ptr %pos2, align 4, !tbaa !35
  %sub12 = sub nsw i32 %20, %27
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %28 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %seg13 = getelementptr inbounds %struct.kdinfo, ptr %28, i32 0, i32 6
  %29 = load ptr, ptr %seg13, align 8, !tbaa !50
  %30 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm14 = getelementptr inbounds %struct.kdinfo, ptr %30, i32 0, i32 4
  %31 = load ptr, ptr %perm14, align 8, !tbaa !51
  %32 = load i32, ptr %m, align 4, !tbaa !9
  %idxprom15 = zext i32 %32 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %31, i64 %idxprom15
  %33 = load i32, ptr %arrayidx16, align 4, !tbaa !9
  %idxprom17 = zext i32 %33 to i64
  %arrayidx18 = getelementptr inbounds %struct.segment, ptr %29, i64 %idxprom17
  %pos219 = getelementptr inbounds %struct.segment, ptr %arrayidx18, i32 0, i32 2
  %34 = load i32, ptr %pos219, align 4, !tbaa !35
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub12, %cond.true ], [ %34, %cond.false ]
  %35 = load ptr, ptr %p, align 8, !tbaa !5
  %cutVal = getelementptr inbounds %struct.kdnode, ptr %35, i32 0, i32 3
  store i32 %cond, ptr %cutVal, align 4, !tbaa !77
  %36 = load i32, ptr %m, align 4, !tbaa !9
  %37 = load ptr, ptr %p, align 8, !tbaa !5
  %hiIx20 = getelementptr inbounds %struct.kdnode, ptr %37, i32 0, i32 2
  store i32 %36, ptr %hiIx20, align 8, !tbaa !76
  %38 = load i32, ptr %lo.addr, align 4, !tbaa !9
  %39 = load i32, ptr %m, align 4, !tbaa !9
  %40 = load i32, ptr %axis.addr, align 4, !tbaa !9
  %sub21 = sub nsw i32 1, %40
  %41 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %call22 = call ptr @build_kd_tree(i32 noundef %38, i32 noundef %39, i32 noundef %sub21, ptr noundef %41)
  %42 = load ptr, ptr %p, align 8, !tbaa !5
  %loSon = getelementptr inbounds %struct.kdnode, ptr %42, i32 0, i32 5
  store ptr %call22, ptr %loSon, align 8, !tbaa !78
  %43 = load i32, ptr %m, align 4, !tbaa !9
  %add23 = add i32 %43, 1
  %44 = load i32, ptr %hi.addr, align 4, !tbaa !9
  %45 = load i32, ptr %axis.addr, align 4, !tbaa !9
  %sub24 = sub nsw i32 1, %45
  %46 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %call25 = call ptr @build_kd_tree(i32 noundef %add23, i32 noundef %44, i32 noundef %sub24, ptr noundef %46)
  %47 = load ptr, ptr %p, align 8, !tbaa !5
  %hiSon = getelementptr inbounds %struct.kdnode, ptr %47, i32 0, i32 6
  store ptr %call25, ptr %hiSon, align 8, !tbaa !79
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %48 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp26 = icmp eq ptr %48, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end
  call void @suicide(ptr noundef @.str.11)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end
  %49 = load ptr, ptr %p, align 8, !tbaa !5
  %isBucket29 = getelementptr inbounds %struct.kdnode, ptr %49, i32 0, i32 0
  %50 = load i32, ptr %isBucket29, align 8, !tbaa !74
  %tobool = icmp ne i32 %50, 0
  br i1 %tobool, label %if.end35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end28
  %51 = load ptr, ptr %p, align 8, !tbaa !5
  %loSon30 = getelementptr inbounds %struct.kdnode, ptr %51, i32 0, i32 5
  %52 = load ptr, ptr %loSon30, align 8, !tbaa !78
  %cmp31 = icmp ne ptr %52, null
  br i1 %cmp31, label %land.lhs.true, label %if.then34

land.lhs.true:                                    ; preds = %lor.lhs.false
  %53 = load ptr, ptr %p, align 8, !tbaa !5
  %hiSon32 = getelementptr inbounds %struct.kdnode, ptr %53, i32 0, i32 6
  %54 = load ptr, ptr %hiSon32, align 8, !tbaa !79
  %cmp33 = icmp ne ptr %54, null
  br i1 %cmp33, label %if.end35, label %if.then34

if.then34:                                        ; preds = %land.lhs.true, %lor.lhs.false
  call void @suicide(ptr noundef @.str.12)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %land.lhs.true, %if.end28
  %55 = load ptr, ptr %p, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  ret ptr %55
}

; Function Attrs: nounwind uwtable
define internal void @dump_kd_tree(ptr noundef %f, i32 noundef %points, ptr noundef %root, ptr noundef %kdi) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %points.addr = alloca i32, align 4
  %root.addr = alloca ptr, align 8
  %kdi.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !5
  store i32 %points, ptr %points.addr, align 4, !tbaa !9
  store ptr %root, ptr %root.addr, align 8, !tbaa !5
  store ptr %kdi, ptr %kdi.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 1, ptr @dksIndexWidth, align 4, !tbaa !9
  %0 = load i32, ptr %points.addr, align 4, !tbaa !9
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !9
  %cmp = icmp sgt i32 %1, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr @dksIndexWidth, align 4, !tbaa !9
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @dksIndexWidth, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !9
  %div = sdiv i32 %3, 10
  store i32 %div, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !80

for.end:                                          ; preds = %for.cond
  %4 = load ptr, ptr %f.addr, align 8, !tbaa !5
  store ptr %4, ptr @dksFile, align 8, !tbaa !5
  %5 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  store ptr %5, ptr @dksKdi, align 8, !tbaa !5
  %6 = load ptr, ptr %root.addr, align 8, !tbaa !5
  call void @dump_kd_subtree(i32 noundef 0, ptr noundef %6, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal { i32, double } @best_predecessor(ptr noundef %subtree, i32 noundef %axis, double noundef %lowerBound, i32 %bp.coerce0, double %bp.coerce1, ptr noundef %kdi) #0 {
entry:
  %retval = alloca %struct.bestpred, align 8
  %bp = alloca %struct.bestpred, align 8
  %subtree.addr = alloca ptr, align 8
  %axis.addr = alloca i32, align 4
  %lowerBound.addr = alloca double, align 8
  %kdi.addr = alloca ptr, align 8
  %predScore = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.bestpred, align 8
  %tmp62 = alloca %struct.bestpred, align 8
  %diff = alloca double, align 8
  %tmp75 = alloca %struct.bestpred, align 8
  %tmp79 = alloca %struct.bestpred, align 8
  %tmp85 = alloca %struct.bestpred, align 8
  %tmp89 = alloca %struct.bestpred, align 8
  %0 = getelementptr inbounds { i32, double }, ptr %bp, i32 0, i32 0
  store i32 %bp.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i32, double }, ptr %bp, i32 0, i32 1
  store double %bp.coerce1, ptr %1, align 8
  store ptr %subtree, ptr %subtree.addr, align 8, !tbaa !5
  store i32 %axis, ptr %axis.addr, align 4, !tbaa !9
  store double %lowerBound, ptr %lowerBound.addr, align 8, !tbaa !42
  store ptr %kdi, ptr %kdi.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %predScore) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #4
  %2 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @suicide(ptr noundef @.str.21)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %contrib = getelementptr inbounds %struct.bestpred, ptr %bp, i32 0, i32 1
  %3 = load double, ptr %contrib, align 8, !tbaa !66
  %4 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %maxChainScore = getelementptr inbounds %struct.kdnode, ptr %4, i32 0, i32 4
  %5 = load double, ptr %maxChainScore, align 8, !tbaa !72
  %6 = load double, ptr %lowerBound.addr, align 8, !tbaa !42
  %sub = fsub double %5, %6
  %cmp1 = fcmp oge double %3, %sub
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %bp, i64 16, i1 false), !tbaa.struct !67
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %isBucket = getelementptr inbounds %struct.kdnode, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %isBucket, align 8, !tbaa !74
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %9 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %loSon = getelementptr inbounds %struct.kdnode, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %loSon, align 8, !tbaa !78
  %cmp4 = icmp ne ptr %10, null
  br i1 %cmp4, label %land.lhs.true, label %if.then6

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %hiSon = getelementptr inbounds %struct.kdnode, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %hiSon, align 8, !tbaa !79
  %cmp5 = icmp ne ptr %12, null
  br i1 %cmp5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %land.lhs.true, %lor.lhs.false
  call void @suicide(ptr noundef @.str.22)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %land.lhs.true, %if.end3
  %13 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %isBucket8 = getelementptr inbounds %struct.kdnode, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %isBucket8, align 8, !tbaa !74
  %tobool9 = icmp ne i32 %14, 0
  br i1 %tobool9, label %if.then10, label %if.else48

if.then10:                                        ; preds = %if.end7
  %15 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %loIx = getelementptr inbounds %struct.kdnode, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %loIx, align 4, !tbaa !75
  store i32 %16, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then10
  %17 = load i32, ptr %i, align 4, !tbaa !9
  %18 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %hiIx = getelementptr inbounds %struct.kdnode, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %hiIx, align 8, !tbaa !76
  %cmp11 = icmp ule i32 %17, %19
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm = getelementptr inbounds %struct.kdinfo, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %perm, align 8, !tbaa !51
  %22 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = zext i32 %22 to i64
  %arrayidx = getelementptr inbounds i32, ptr %21, i64 %idxprom
  %23 = load i32, ptr %arrayidx, align 4, !tbaa !9
  store i32 %23, ptr %j, align 4, !tbaa !9
  %24 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %seg = getelementptr inbounds %struct.kdinfo, ptr %24, i32 0, i32 6
  %25 = load ptr, ptr %seg, align 8, !tbaa !50
  %26 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom12 = zext i32 %26 to i64
  %arrayidx13 = getelementptr inbounds %struct.segment, ptr %25, i64 %idxprom12
  store ptr %arrayidx13, ptr %s, align 8, !tbaa !5
  %27 = load ptr, ptr %s, align 8, !tbaa !5
  %pos1 = getelementptr inbounds %struct.segment, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %pos1, align 8, !tbaa !23
  %29 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %x = getelementptr inbounds %struct.kdinfo, ptr %29, i32 0, i32 8
  %30 = load i32, ptr %x, align 8, !tbaa !60
  %cmp14 = icmp uge i32 %28, %30
  br i1 %cmp14, label %if.then17, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %for.body
  %31 = load ptr, ptr %s, align 8, !tbaa !5
  %pos2 = getelementptr inbounds %struct.segment, ptr %31, i32 0, i32 2
  %32 = load i32, ptr %pos2, align 4, !tbaa !35
  %33 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %y = getelementptr inbounds %struct.kdinfo, ptr %33, i32 0, i32 9
  %34 = load i32, ptr %y, align 4, !tbaa !61
  %cmp16 = icmp uge i32 %32, %34
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false15, %for.body
  br label %for.inc

if.end18:                                         ; preds = %lor.lhs.false15
  %35 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %chainScore = getelementptr inbounds %struct.kdinfo, ptr %35, i32 0, i32 3
  %36 = load ptr, ptr %chainScore, align 8, !tbaa !53
  %37 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom19 = zext i32 %37 to i64
  %arrayidx20 = getelementptr inbounds double, ptr %36, i64 %idxprom19
  %38 = load double, ptr %arrayidx20, align 8, !tbaa !42
  %39 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %connect = getelementptr inbounds %struct.kdinfo, ptr %39, i32 0, i32 11
  %40 = load ptr, ptr %connect, align 8, !tbaa !48
  %41 = load ptr, ptr %s, align 8, !tbaa !5
  %42 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %query = getelementptr inbounds %struct.kdinfo, ptr %42, i32 0, i32 7
  %43 = load ptr, ptr %query, align 8, !tbaa !59
  %44 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %scale = getelementptr inbounds %struct.kdinfo, ptr %44, i32 0, i32 2
  %45 = load i32, ptr %scale, align 8, !tbaa !56
  %call = call i32 %40(ptr noundef %41, ptr noundef %43, i32 noundef %45)
  %conv = sitofp i32 %call to double
  %sub21 = fsub double %38, %conv
  store double %sub21, ptr %predScore, align 8, !tbaa !42
  %46 = load i32, ptr @chain_dbgChaining, align 4, !tbaa !9
  %tobool22 = icmp ne i32 %46, 0
  br i1 %tobool22, label %if.then23, label %if.end33

if.then23:                                        ; preds = %if.end18
  %num = getelementptr inbounds %struct.bestpred, ptr %bp, i32 0, i32 0
  %47 = load i32, ptr %num, align 8, !tbaa !64
  %cmp24 = icmp eq i32 %47, -1
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then23
  %48 = load ptr, ptr @stderr, align 8, !tbaa !5
  %contrib27 = getelementptr inbounds %struct.bestpred, ptr %bp, i32 0, i32 1
  %49 = load double, ptr %contrib27, align 8, !tbaa !66
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef @.str.23, double noundef %49)
  br label %if.end32

if.else:                                          ; preds = %if.then23
  %50 = load ptr, ptr @stderr, align 8, !tbaa !5
  %num29 = getelementptr inbounds %struct.bestpred, ptr %bp, i32 0, i32 0
  %51 = load i32, ptr %num29, align 8, !tbaa !64
  %contrib30 = getelementptr inbounds %struct.bestpred, ptr %bp, i32 0, i32 1
  %52 = load double, ptr %contrib30, align 8, !tbaa !66
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.24, i32 noundef %51, double noundef %52)
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then26
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end18
  %53 = load double, ptr %predScore, align 8, !tbaa !42
  %contrib34 = getelementptr inbounds %struct.bestpred, ptr %bp, i32 0, i32 1
  %54 = load double, ptr %contrib34, align 8, !tbaa !66
  %cmp35 = fcmp ogt double %53, %54
  br i1 %cmp35, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end33
  %55 = load double, ptr %predScore, align 8, !tbaa !42
  %contrib38 = getelementptr inbounds %struct.bestpred, ptr %bp, i32 0, i32 1
  store double %55, ptr %contrib38, align 8, !tbaa !66
  %56 = load i32, ptr %j, align 4, !tbaa !9
  %num39 = getelementptr inbounds %struct.bestpred, ptr %bp, i32 0, i32 0
  store i32 %56, ptr %num39, align 8, !tbaa !64
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end33
  %57 = load i32, ptr @chain_dbgChaining, align 4, !tbaa !9
  %tobool41 = icmp ne i32 %57, 0
  br i1 %tobool41, label %if.then42, label %if.end47

if.then42:                                        ; preds = %if.end40
  %58 = load ptr, ptr @stderr, align 8, !tbaa !5
  %59 = load i32, ptr %j, align 4, !tbaa !9
  %60 = load double, ptr %predScore, align 8, !tbaa !42
  %61 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %chainScore43 = getelementptr inbounds %struct.kdinfo, ptr %61, i32 0, i32 3
  %62 = load ptr, ptr %chainScore43, align 8, !tbaa !53
  %63 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom44 = zext i32 %63 to i64
  %arrayidx45 = getelementptr inbounds double, ptr %62, i64 %idxprom44
  %64 = load double, ptr %arrayidx45, align 8, !tbaa !42
  %call46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @.str.25, i32 noundef %59, double noundef %60, double noundef %64)
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.end40
  br label %for.inc

for.inc:                                          ; preds = %if.end47, %if.then17
  %65 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add i32 %65, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  br label %if.end97

if.else48:                                        ; preds = %if.end7
  %66 = load i32, ptr %axis.addr, align 4, !tbaa !9
  %cmp49 = icmp eq i32 %66, 1
  br i1 %cmp49, label %if.then51, label %if.else68

if.then51:                                        ; preds = %if.else48
  %67 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %y52 = getelementptr inbounds %struct.kdinfo, ptr %67, i32 0, i32 9
  %68 = load i32, ptr %y52, align 4, !tbaa !61
  %69 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %cutVal = getelementptr inbounds %struct.kdnode, ptr %69, i32 0, i32 3
  %70 = load i32, ptr %cutVal, align 4, !tbaa !77
  %cmp53 = icmp sge i32 %68, %70
  br i1 %cmp53, label %if.then55, label %if.end61

if.then55:                                        ; preds = %if.then51
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #4
  %71 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %hiSon56 = getelementptr inbounds %struct.kdnode, ptr %71, i32 0, i32 6
  %72 = load ptr, ptr %hiSon56, align 8, !tbaa !79
  %73 = load double, ptr %lowerBound.addr, align 8, !tbaa !42
  %conv57 = fptosi double %73 to i32
  %74 = load i32, ptr %axis.addr, align 4, !tbaa !9
  %sub58 = sub nsw i32 1, %74
  %conv59 = sitofp i32 %sub58 to double
  %75 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %76 = getelementptr inbounds { i32, double }, ptr %bp, i32 0, i32 0
  %77 = load i32, ptr %76, align 8
  %78 = getelementptr inbounds { i32, double }, ptr %bp, i32 0, i32 1
  %79 = load double, ptr %78, align 8
  %call60 = call { i32, double } @best_predecessor(ptr noundef %72, i32 noundef %conv57, double noundef %conv59, i32 %77, double %79, ptr noundef %75)
  %80 = getelementptr inbounds { i32, double }, ptr %tmp, i32 0, i32 0
  %81 = extractvalue { i32, double } %call60, 0
  store i32 %81, ptr %80, align 8
  %82 = getelementptr inbounds { i32, double }, ptr %tmp, i32 0, i32 1
  %83 = extractvalue { i32, double } %call60, 1
  store double %83, ptr %82, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %bp, ptr align 8 %tmp, i64 16, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #4
  br label %if.end61

if.end61:                                         ; preds = %if.then55, %if.then51
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp62) #4
  %84 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %loSon63 = getelementptr inbounds %struct.kdnode, ptr %84, i32 0, i32 5
  %85 = load ptr, ptr %loSon63, align 8, !tbaa !78
  %86 = load double, ptr %lowerBound.addr, align 8, !tbaa !42
  %conv64 = fptosi double %86 to i32
  %87 = load i32, ptr %axis.addr, align 4, !tbaa !9
  %sub65 = sub nsw i32 1, %87
  %conv66 = sitofp i32 %sub65 to double
  %88 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %89 = getelementptr inbounds { i32, double }, ptr %bp, i32 0, i32 0
  %90 = load i32, ptr %89, align 8
  %91 = getelementptr inbounds { i32, double }, ptr %bp, i32 0, i32 1
  %92 = load double, ptr %91, align 8
  %call67 = call { i32, double } @best_predecessor(ptr noundef %85, i32 noundef %conv64, double noundef %conv66, i32 %90, double %92, ptr noundef %88)
  %93 = getelementptr inbounds { i32, double }, ptr %tmp62, i32 0, i32 0
  %94 = extractvalue { i32, double } %call67, 0
  store i32 %94, ptr %93, align 8
  %95 = getelementptr inbounds { i32, double }, ptr %tmp62, i32 0, i32 1
  %96 = extractvalue { i32, double } %call67, 1
  store double %96, ptr %95, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %bp, ptr align 8 %tmp62, i64 16, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp62) #4
  br label %if.end96

if.else68:                                        ; preds = %if.else48
  call void @llvm.lifetime.start.p0(i64 8, ptr %diff) #4
  %97 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %diag = getelementptr inbounds %struct.kdinfo, ptr %97, i32 0, i32 10
  %98 = load i32, ptr %diag, align 8, !tbaa !62
  %99 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %cutVal69 = getelementptr inbounds %struct.kdnode, ptr %99, i32 0, i32 3
  %100 = load i32, ptr %cutVal69, align 4, !tbaa !77
  %sub70 = sub nsw i32 %98, %100
  %conv71 = sitofp i32 %sub70 to double
  store double %conv71, ptr %diff, align 8, !tbaa !42
  %101 = load double, ptr %diff, align 8, !tbaa !42
  %cmp72 = fcmp oge double %101, 0.000000e+00
  br i1 %cmp72, label %if.then74, label %if.else84

if.then74:                                        ; preds = %if.else68
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp75) #4
  %102 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %hiSon76 = getelementptr inbounds %struct.kdnode, ptr %102, i32 0, i32 6
  %103 = load ptr, ptr %hiSon76, align 8, !tbaa !79
  %104 = load i32, ptr %axis.addr, align 4, !tbaa !9
  %sub77 = sub nsw i32 1, %104
  %105 = load double, ptr %lowerBound.addr, align 8, !tbaa !42
  %106 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %107 = getelementptr inbounds { i32, double }, ptr %bp, i32 0, i32 0
  %108 = load i32, ptr %107, align 8
  %109 = getelementptr inbounds { i32, double }, ptr %bp, i32 0, i32 1
  %110 = load double, ptr %109, align 8
  %call78 = call { i32, double } @best_predecessor(ptr noundef %103, i32 noundef %sub77, double noundef %105, i32 %108, double %110, ptr noundef %106)
  %111 = getelementptr inbounds { i32, double }, ptr %tmp75, i32 0, i32 0
  %112 = extractvalue { i32, double } %call78, 0
  store i32 %112, ptr %111, align 8
  %113 = getelementptr inbounds { i32, double }, ptr %tmp75, i32 0, i32 1
  %114 = extractvalue { i32, double } %call78, 1
  store double %114, ptr %113, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %bp, ptr align 8 %tmp75, i64 16, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp75) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp79) #4
  %115 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %loSon80 = getelementptr inbounds %struct.kdnode, ptr %115, i32 0, i32 5
  %116 = load ptr, ptr %loSon80, align 8, !tbaa !78
  %117 = load i32, ptr %axis.addr, align 4, !tbaa !9
  %sub81 = sub nsw i32 1, %117
  %118 = load double, ptr %diff, align 8, !tbaa !42
  %119 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %diagPen = getelementptr inbounds %struct.kdinfo, ptr %119, i32 0, i32 0
  %120 = load i32, ptr %diagPen, align 8, !tbaa !54
  %conv82 = sitofp i32 %120 to double
  %mul = fmul double %118, %conv82
  %121 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %122 = getelementptr inbounds { i32, double }, ptr %bp, i32 0, i32 0
  %123 = load i32, ptr %122, align 8
  %124 = getelementptr inbounds { i32, double }, ptr %bp, i32 0, i32 1
  %125 = load double, ptr %124, align 8
  %call83 = call { i32, double } @best_predecessor(ptr noundef %116, i32 noundef %sub81, double noundef %mul, i32 %123, double %125, ptr noundef %121)
  %126 = getelementptr inbounds { i32, double }, ptr %tmp79, i32 0, i32 0
  %127 = extractvalue { i32, double } %call83, 0
  store i32 %127, ptr %126, align 8
  %128 = getelementptr inbounds { i32, double }, ptr %tmp79, i32 0, i32 1
  %129 = extractvalue { i32, double } %call83, 1
  store double %129, ptr %128, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %bp, ptr align 8 %tmp79, i64 16, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp79) #4
  br label %if.end95

if.else84:                                        ; preds = %if.else68
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp85) #4
  %130 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %loSon86 = getelementptr inbounds %struct.kdnode, ptr %130, i32 0, i32 5
  %131 = load ptr, ptr %loSon86, align 8, !tbaa !78
  %132 = load i32, ptr %axis.addr, align 4, !tbaa !9
  %sub87 = sub nsw i32 1, %132
  %133 = load double, ptr %lowerBound.addr, align 8, !tbaa !42
  %134 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %135 = getelementptr inbounds { i32, double }, ptr %bp, i32 0, i32 0
  %136 = load i32, ptr %135, align 8
  %137 = getelementptr inbounds { i32, double }, ptr %bp, i32 0, i32 1
  %138 = load double, ptr %137, align 8
  %call88 = call { i32, double } @best_predecessor(ptr noundef %131, i32 noundef %sub87, double noundef %133, i32 %136, double %138, ptr noundef %134)
  %139 = getelementptr inbounds { i32, double }, ptr %tmp85, i32 0, i32 0
  %140 = extractvalue { i32, double } %call88, 0
  store i32 %140, ptr %139, align 8
  %141 = getelementptr inbounds { i32, double }, ptr %tmp85, i32 0, i32 1
  %142 = extractvalue { i32, double } %call88, 1
  store double %142, ptr %141, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %bp, ptr align 8 %tmp85, i64 16, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp85) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp89) #4
  %143 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %hiSon90 = getelementptr inbounds %struct.kdnode, ptr %143, i32 0, i32 6
  %144 = load ptr, ptr %hiSon90, align 8, !tbaa !79
  %145 = load i32, ptr %axis.addr, align 4, !tbaa !9
  %sub91 = sub nsw i32 1, %145
  %146 = load double, ptr %diff, align 8, !tbaa !42
  %fneg = fneg double %146
  %147 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %antiPen = getelementptr inbounds %struct.kdinfo, ptr %147, i32 0, i32 1
  %148 = load i32, ptr %antiPen, align 4, !tbaa !55
  %conv92 = sitofp i32 %148 to double
  %mul93 = fmul double %fneg, %conv92
  %149 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %150 = getelementptr inbounds { i32, double }, ptr %bp, i32 0, i32 0
  %151 = load i32, ptr %150, align 8
  %152 = getelementptr inbounds { i32, double }, ptr %bp, i32 0, i32 1
  %153 = load double, ptr %152, align 8
  %call94 = call { i32, double } @best_predecessor(ptr noundef %144, i32 noundef %sub91, double noundef %mul93, i32 %151, double %153, ptr noundef %149)
  %154 = getelementptr inbounds { i32, double }, ptr %tmp89, i32 0, i32 0
  %155 = extractvalue { i32, double } %call94, 0
  store i32 %155, ptr %154, align 8
  %156 = getelementptr inbounds { i32, double }, ptr %tmp89, i32 0, i32 1
  %157 = extractvalue { i32, double } %call94, 1
  store double %157, ptr %156, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %bp, ptr align 8 %tmp89, i64 16, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp89) #4
  br label %if.end95

if.end95:                                         ; preds = %if.else84, %if.then74
  call void @llvm.lifetime.end.p0(i64 8, ptr %diff) #4
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.end61
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %for.end
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %bp, i64 16, i1 false), !tbaa.struct !67
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %predScore) #4
  %158 = load { i32, double }, ptr %retval, align 8
  ret { i32, double } %158
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal void @propagate_max_score(ptr noundef %subtree, double noundef %s, i32 noundef %ix) #0 {
entry:
  %subtree.addr = alloca ptr, align 8
  %s.addr = alloca double, align 8
  %ix.addr = alloca i32, align 4
  store ptr %subtree, ptr %subtree.addr, align 8, !tbaa !5
  store double %s, ptr %s.addr, align 8, !tbaa !42
  store i32 %ix, ptr %ix.addr, align 4, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %entry
  %0 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load double, ptr %s.addr, align 8, !tbaa !42
  %2 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %maxChainScore = getelementptr inbounds %struct.kdnode, ptr %2, i32 0, i32 4
  %3 = load double, ptr %maxChainScore, align 8, !tbaa !72
  %cmp1 = fcmp ogt double %1, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load double, ptr %s.addr, align 8, !tbaa !42
  %5 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %maxChainScore2 = getelementptr inbounds %struct.kdnode, ptr %5, i32 0, i32 4
  store double %4, ptr %maxChainScore2, align 8, !tbaa !72
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %6 = load i32, ptr %ix.addr, align 4, !tbaa !9
  %7 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %hiIx = getelementptr inbounds %struct.kdnode, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %hiIx, align 8, !tbaa !76
  %cmp3 = icmp ule i32 %6, %8
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %loSon = getelementptr inbounds %struct.kdnode, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %loSon, align 8, !tbaa !78
  store ptr %10, ptr %subtree.addr, align 8, !tbaa !5
  br label %if.end5

if.else:                                          ; preds = %if.end
  %11 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %hiSon = getelementptr inbounds %struct.kdnode, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %hiSon, align 8, !tbaa !79
  store ptr %12, ptr %subtree.addr, align 8, !tbaa !5
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  br label %while.cond, !llvm.loop !82

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @free_if_valid(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @free_kd_tree(ptr noundef %subtree) #0 {
entry:
  %subtree.addr = alloca ptr, align 8
  store ptr %subtree, ptr %subtree.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %isBucket = getelementptr inbounds %struct.kdnode, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %isBucket, align 8, !tbaa !74
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  call void @free_if_valid(ptr noundef @.str.14, ptr noundef %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %loSon = getelementptr inbounds %struct.kdnode, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %loSon, align 8, !tbaa !78
  call void @free_kd_tree(ptr noundef %4)
  %5 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %hiSon = getelementptr inbounds %struct.kdnode, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %hiSon, align 8, !tbaa !79
  call void @free_kd_tree(ptr noundef %6)
  %7 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  call void @free_if_valid(ptr noundef @.str.15, ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @chain_zero_stats() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @chain_show_stats(ptr noundef %f) #0 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @chain_generic_stats(ptr noundef %f, ptr noundef %func) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !5
  store ptr %func, ptr %func.addr, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @partition_segments(i32 noundef %lo, i32 noundef %hi, i32 noundef %axis, ptr noundef %kdi) #0 {
entry:
  %retval = alloca i32, align 4
  %lo.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  %axis.addr = alloca i32, align 4
  %kdi.addr = alloca ptr, align 8
  %m = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %pivot = alloca i32, align 4
  %t = alloca i32, align 4
  %t98 = alloca i32, align 4
  %t184 = alloca i32, align 4
  %t197 = alloca i32, align 4
  %t210 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %lo, ptr %lo.addr, align 4, !tbaa !9
  store i32 %hi, ptr %hi.addr, align 4, !tbaa !9
  store i32 %axis, ptr %axis.addr, align 4, !tbaa !9
  store ptr %kdi, ptr %kdi.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pivot) #4
  %0 = load i32, ptr %hi.addr, align 4, !tbaa !9
  %1 = load i32, ptr %lo.addr, align 4, !tbaa !9
  %sub = sub i32 %0, %1
  %cmp = icmp ult i32 %sub, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %lo.addr, align 4, !tbaa !9
  %3 = load i32, ptr %hi.addr, align 4, !tbaa !9
  call void (ptr, ...) @suicidef(ptr noundef @.str.13, i32 noundef %2, i32 noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end231, %if.end
  br label %while.body

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %lo.addr, align 4, !tbaa !9
  %5 = load i32, ptr %hi.addr, align 4, !tbaa !9
  %add = add i32 %4, %5
  %div = udiv i32 %add, 2
  store i32 %div, ptr %m, align 4, !tbaa !9
  %6 = load i32, ptr %axis.addr, align 4, !tbaa !9
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %7 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %seg = getelementptr inbounds %struct.kdinfo, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %seg, align 8, !tbaa !50
  %9 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm = getelementptr inbounds %struct.kdinfo, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %perm, align 8, !tbaa !51
  %11 = load i32, ptr %lo.addr, align 4, !tbaa !9
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds i32, ptr %10, i64 %idxprom
  %12 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %idxprom2 = zext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds %struct.segment, ptr %8, i64 %idxprom2
  %pos1 = getelementptr inbounds %struct.segment, ptr %arrayidx3, i32 0, i32 1
  %13 = load i32, ptr %pos1, align 8, !tbaa !23
  %14 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %seg4 = getelementptr inbounds %struct.kdinfo, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %seg4, align 8, !tbaa !50
  %16 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm5 = getelementptr inbounds %struct.kdinfo, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %perm5, align 8, !tbaa !51
  %18 = load i32, ptr %lo.addr, align 4, !tbaa !9
  %idxprom6 = zext i32 %18 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %17, i64 %idxprom6
  %19 = load i32, ptr %arrayidx7, align 4, !tbaa !9
  %idxprom8 = zext i32 %19 to i64
  %arrayidx9 = getelementptr inbounds %struct.segment, ptr %15, i64 %idxprom8
  %pos2 = getelementptr inbounds %struct.segment, ptr %arrayidx9, i32 0, i32 2
  %20 = load i32, ptr %pos2, align 4, !tbaa !35
  %sub10 = sub nsw i32 %13, %20
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %21 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %seg11 = getelementptr inbounds %struct.kdinfo, ptr %21, i32 0, i32 6
  %22 = load ptr, ptr %seg11, align 8, !tbaa !50
  %23 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm12 = getelementptr inbounds %struct.kdinfo, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %perm12, align 8, !tbaa !51
  %25 = load i32, ptr %lo.addr, align 4, !tbaa !9
  %idxprom13 = zext i32 %25 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %24, i64 %idxprom13
  %26 = load i32, ptr %arrayidx14, align 4, !tbaa !9
  %idxprom15 = zext i32 %26 to i64
  %arrayidx16 = getelementptr inbounds %struct.segment, ptr %22, i64 %idxprom15
  %pos217 = getelementptr inbounds %struct.segment, ptr %arrayidx16, i32 0, i32 2
  %27 = load i32, ptr %pos217, align 4, !tbaa !35
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub10, %cond.true ], [ %27, %cond.false ]
  store i32 %cond, ptr %a, align 4, !tbaa !9
  %28 = load i32, ptr %axis.addr, align 4, !tbaa !9
  %cmp18 = icmp eq i32 %28, 0
  br i1 %cmp18, label %cond.true19, label %cond.false35

cond.true19:                                      ; preds = %cond.end
  %29 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %seg20 = getelementptr inbounds %struct.kdinfo, ptr %29, i32 0, i32 6
  %30 = load ptr, ptr %seg20, align 8, !tbaa !50
  %31 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm21 = getelementptr inbounds %struct.kdinfo, ptr %31, i32 0, i32 4
  %32 = load ptr, ptr %perm21, align 8, !tbaa !51
  %33 = load i32, ptr %m, align 4, !tbaa !9
  %idxprom22 = zext i32 %33 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %32, i64 %idxprom22
  %34 = load i32, ptr %arrayidx23, align 4, !tbaa !9
  %idxprom24 = zext i32 %34 to i64
  %arrayidx25 = getelementptr inbounds %struct.segment, ptr %30, i64 %idxprom24
  %pos126 = getelementptr inbounds %struct.segment, ptr %arrayidx25, i32 0, i32 1
  %35 = load i32, ptr %pos126, align 8, !tbaa !23
  %36 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %seg27 = getelementptr inbounds %struct.kdinfo, ptr %36, i32 0, i32 6
  %37 = load ptr, ptr %seg27, align 8, !tbaa !50
  %38 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm28 = getelementptr inbounds %struct.kdinfo, ptr %38, i32 0, i32 4
  %39 = load ptr, ptr %perm28, align 8, !tbaa !51
  %40 = load i32, ptr %m, align 4, !tbaa !9
  %idxprom29 = zext i32 %40 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %39, i64 %idxprom29
  %41 = load i32, ptr %arrayidx30, align 4, !tbaa !9
  %idxprom31 = zext i32 %41 to i64
  %arrayidx32 = getelementptr inbounds %struct.segment, ptr %37, i64 %idxprom31
  %pos233 = getelementptr inbounds %struct.segment, ptr %arrayidx32, i32 0, i32 2
  %42 = load i32, ptr %pos233, align 4, !tbaa !35
  %sub34 = sub nsw i32 %35, %42
  br label %cond.end43

cond.false35:                                     ; preds = %cond.end
  %43 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %seg36 = getelementptr inbounds %struct.kdinfo, ptr %43, i32 0, i32 6
  %44 = load ptr, ptr %seg36, align 8, !tbaa !50
  %45 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm37 = getelementptr inbounds %struct.kdinfo, ptr %45, i32 0, i32 4
  %46 = load ptr, ptr %perm37, align 8, !tbaa !51
  %47 = load i32, ptr %m, align 4, !tbaa !9
  %idxprom38 = zext i32 %47 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %46, i64 %idxprom38
  %48 = load i32, ptr %arrayidx39, align 4, !tbaa !9
  %idxprom40 = zext i32 %48 to i64
  %arrayidx41 = getelementptr inbounds %struct.segment, ptr %44, i64 %idxprom40
  %pos242 = getelementptr inbounds %struct.segment, ptr %arrayidx41, i32 0, i32 2
  %49 = load i32, ptr %pos242, align 4, !tbaa !35
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false35, %cond.true19
  %cond44 = phi i32 [ %sub34, %cond.true19 ], [ %49, %cond.false35 ]
  store i32 %cond44, ptr %b, align 4, !tbaa !9
  %50 = load i32, ptr %axis.addr, align 4, !tbaa !9
  %cmp45 = icmp eq i32 %50, 0
  br i1 %cmp45, label %cond.true46, label %cond.false62

cond.true46:                                      ; preds = %cond.end43
  %51 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %seg47 = getelementptr inbounds %struct.kdinfo, ptr %51, i32 0, i32 6
  %52 = load ptr, ptr %seg47, align 8, !tbaa !50
  %53 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm48 = getelementptr inbounds %struct.kdinfo, ptr %53, i32 0, i32 4
  %54 = load ptr, ptr %perm48, align 8, !tbaa !51
  %55 = load i32, ptr %hi.addr, align 4, !tbaa !9
  %idxprom49 = zext i32 %55 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %54, i64 %idxprom49
  %56 = load i32, ptr %arrayidx50, align 4, !tbaa !9
  %idxprom51 = zext i32 %56 to i64
  %arrayidx52 = getelementptr inbounds %struct.segment, ptr %52, i64 %idxprom51
  %pos153 = getelementptr inbounds %struct.segment, ptr %arrayidx52, i32 0, i32 1
  %57 = load i32, ptr %pos153, align 8, !tbaa !23
  %58 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %seg54 = getelementptr inbounds %struct.kdinfo, ptr %58, i32 0, i32 6
  %59 = load ptr, ptr %seg54, align 8, !tbaa !50
  %60 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm55 = getelementptr inbounds %struct.kdinfo, ptr %60, i32 0, i32 4
  %61 = load ptr, ptr %perm55, align 8, !tbaa !51
  %62 = load i32, ptr %hi.addr, align 4, !tbaa !9
  %idxprom56 = zext i32 %62 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %61, i64 %idxprom56
  %63 = load i32, ptr %arrayidx57, align 4, !tbaa !9
  %idxprom58 = zext i32 %63 to i64
  %arrayidx59 = getelementptr inbounds %struct.segment, ptr %59, i64 %idxprom58
  %pos260 = getelementptr inbounds %struct.segment, ptr %arrayidx59, i32 0, i32 2
  %64 = load i32, ptr %pos260, align 4, !tbaa !35
  %sub61 = sub nsw i32 %57, %64
  br label %cond.end70

cond.false62:                                     ; preds = %cond.end43
  %65 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %seg63 = getelementptr inbounds %struct.kdinfo, ptr %65, i32 0, i32 6
  %66 = load ptr, ptr %seg63, align 8, !tbaa !50
  %67 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm64 = getelementptr inbounds %struct.kdinfo, ptr %67, i32 0, i32 4
  %68 = load ptr, ptr %perm64, align 8, !tbaa !51
  %69 = load i32, ptr %hi.addr, align 4, !tbaa !9
  %idxprom65 = zext i32 %69 to i64
  %arrayidx66 = getelementptr inbounds i32, ptr %68, i64 %idxprom65
  %70 = load i32, ptr %arrayidx66, align 4, !tbaa !9
  %idxprom67 = zext i32 %70 to i64
  %arrayidx68 = getelementptr inbounds %struct.segment, ptr %66, i64 %idxprom67
  %pos269 = getelementptr inbounds %struct.segment, ptr %arrayidx68, i32 0, i32 2
  %71 = load i32, ptr %pos269, align 4, !tbaa !35
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false62, %cond.true46
  %cond71 = phi i32 [ %sub61, %cond.true46 ], [ %71, %cond.false62 ]
  store i32 %cond71, ptr %c, align 4, !tbaa !9
  %72 = load i32, ptr %a, align 4, !tbaa !9
  %73 = load i32, ptr %b, align 4, !tbaa !9
  %cmp72 = icmp sle i32 %72, %73
  br i1 %cmp72, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %cond.end70
  %74 = load i32, ptr %b, align 4, !tbaa !9
  %75 = load i32, ptr %c, align 4, !tbaa !9
  %cmp73 = icmp sle i32 %74, %75
  br i1 %cmp73, label %if.then77, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end70
  %76 = load i32, ptr %c, align 4, !tbaa !9
  %77 = load i32, ptr %b, align 4, !tbaa !9
  %cmp74 = icmp sle i32 %76, %77
  br i1 %cmp74, label %land.lhs.true75, label %if.else

land.lhs.true75:                                  ; preds = %lor.lhs.false
  %78 = load i32, ptr %b, align 4, !tbaa !9
  %79 = load i32, ptr %a, align 4, !tbaa !9
  %cmp76 = icmp sle i32 %78, %79
  br i1 %cmp76, label %if.then77, label %if.else

if.then77:                                        ; preds = %land.lhs.true75, %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #4
  %80 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm78 = getelementptr inbounds %struct.kdinfo, ptr %80, i32 0, i32 4
  %81 = load ptr, ptr %perm78, align 8, !tbaa !51
  %82 = load i32, ptr %lo.addr, align 4, !tbaa !9
  %idxprom79 = zext i32 %82 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %81, i64 %idxprom79
  %83 = load i32, ptr %arrayidx80, align 4, !tbaa !9
  store i32 %83, ptr %t, align 4, !tbaa !9
  %84 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm81 = getelementptr inbounds %struct.kdinfo, ptr %84, i32 0, i32 4
  %85 = load ptr, ptr %perm81, align 8, !tbaa !51
  %86 = load i32, ptr %m, align 4, !tbaa !9
  %idxprom82 = zext i32 %86 to i64
  %arrayidx83 = getelementptr inbounds i32, ptr %85, i64 %idxprom82
  %87 = load i32, ptr %arrayidx83, align 4, !tbaa !9
  %88 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm84 = getelementptr inbounds %struct.kdinfo, ptr %88, i32 0, i32 4
  %89 = load ptr, ptr %perm84, align 8, !tbaa !51
  %90 = load i32, ptr %lo.addr, align 4, !tbaa !9
  %idxprom85 = zext i32 %90 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %89, i64 %idxprom85
  store i32 %87, ptr %arrayidx86, align 4, !tbaa !9
  %91 = load i32, ptr %t, align 4, !tbaa !9
  %92 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm87 = getelementptr inbounds %struct.kdinfo, ptr %92, i32 0, i32 4
  %93 = load ptr, ptr %perm87, align 8, !tbaa !51
  %94 = load i32, ptr %m, align 4, !tbaa !9
  %idxprom88 = zext i32 %94 to i64
  %arrayidx89 = getelementptr inbounds i32, ptr %93, i64 %idxprom88
  store i32 %91, ptr %arrayidx89, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #4
  %95 = load i32, ptr %b, align 4, !tbaa !9
  store i32 %95, ptr %pivot, align 4, !tbaa !9
  br label %if.end113

if.else:                                          ; preds = %land.lhs.true75, %lor.lhs.false
  %96 = load i32, ptr %a, align 4, !tbaa !9
  %97 = load i32, ptr %c, align 4, !tbaa !9
  %cmp90 = icmp sle i32 %96, %97
  br i1 %cmp90, label %land.lhs.true91, label %lor.lhs.false93

land.lhs.true91:                                  ; preds = %if.else
  %98 = load i32, ptr %c, align 4, !tbaa !9
  %99 = load i32, ptr %b, align 4, !tbaa !9
  %cmp92 = icmp sle i32 %98, %99
  br i1 %cmp92, label %if.then97, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %land.lhs.true91, %if.else
  %100 = load i32, ptr %b, align 4, !tbaa !9
  %101 = load i32, ptr %c, align 4, !tbaa !9
  %cmp94 = icmp sle i32 %100, %101
  br i1 %cmp94, label %land.lhs.true95, label %if.else111

land.lhs.true95:                                  ; preds = %lor.lhs.false93
  %102 = load i32, ptr %c, align 4, !tbaa !9
  %103 = load i32, ptr %a, align 4, !tbaa !9
  %cmp96 = icmp sle i32 %102, %103
  br i1 %cmp96, label %if.then97, label %if.else111

if.then97:                                        ; preds = %land.lhs.true95, %land.lhs.true91
  call void @llvm.lifetime.start.p0(i64 4, ptr %t98) #4
  %104 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm99 = getelementptr inbounds %struct.kdinfo, ptr %104, i32 0, i32 4
  %105 = load ptr, ptr %perm99, align 8, !tbaa !51
  %106 = load i32, ptr %lo.addr, align 4, !tbaa !9
  %idxprom100 = zext i32 %106 to i64
  %arrayidx101 = getelementptr inbounds i32, ptr %105, i64 %idxprom100
  %107 = load i32, ptr %arrayidx101, align 4, !tbaa !9
  store i32 %107, ptr %t98, align 4, !tbaa !9
  %108 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm102 = getelementptr inbounds %struct.kdinfo, ptr %108, i32 0, i32 4
  %109 = load ptr, ptr %perm102, align 8, !tbaa !51
  %110 = load i32, ptr %hi.addr, align 4, !tbaa !9
  %idxprom103 = zext i32 %110 to i64
  %arrayidx104 = getelementptr inbounds i32, ptr %109, i64 %idxprom103
  %111 = load i32, ptr %arrayidx104, align 4, !tbaa !9
  %112 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm105 = getelementptr inbounds %struct.kdinfo, ptr %112, i32 0, i32 4
  %113 = load ptr, ptr %perm105, align 8, !tbaa !51
  %114 = load i32, ptr %lo.addr, align 4, !tbaa !9
  %idxprom106 = zext i32 %114 to i64
  %arrayidx107 = getelementptr inbounds i32, ptr %113, i64 %idxprom106
  store i32 %111, ptr %arrayidx107, align 4, !tbaa !9
  %115 = load i32, ptr %t98, align 4, !tbaa !9
  %116 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm108 = getelementptr inbounds %struct.kdinfo, ptr %116, i32 0, i32 4
  %117 = load ptr, ptr %perm108, align 8, !tbaa !51
  %118 = load i32, ptr %hi.addr, align 4, !tbaa !9
  %idxprom109 = zext i32 %118 to i64
  %arrayidx110 = getelementptr inbounds i32, ptr %117, i64 %idxprom109
  store i32 %115, ptr %arrayidx110, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %t98) #4
  %119 = load i32, ptr %c, align 4, !tbaa !9
  store i32 %119, ptr %pivot, align 4, !tbaa !9
  br label %if.end112

if.else111:                                       ; preds = %land.lhs.true95, %lor.lhs.false93
  %120 = load i32, ptr %a, align 4, !tbaa !9
  store i32 %120, ptr %pivot, align 4, !tbaa !9
  br label %if.end112

if.end112:                                        ; preds = %if.else111, %if.then97
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.then77
  %121 = load i32, ptr %lo.addr, align 4, !tbaa !9
  store i32 %121, ptr %i, align 4, !tbaa !9
  %122 = load i32, ptr %hi.addr, align 4, !tbaa !9
  %add114 = add i32 %122, 1
  store i32 %add114, ptr %j, align 4, !tbaa !9
  br label %while.cond115

while.cond115:                                    ; preds = %for.end183, %if.end113
  %123 = load i32, ptr %i, align 4, !tbaa !9
  %124 = load i32, ptr %j, align 4, !tbaa !9
  %cmp116 = icmp ult i32 %123, %124
  br i1 %cmp116, label %while.body117, label %while.end

while.body117:                                    ; preds = %while.cond115
  %125 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add i32 %125, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body117
  %126 = load i32, ptr %i, align 4, !tbaa !9
  %127 = load i32, ptr %hi.addr, align 4, !tbaa !9
  %cmp118 = icmp ule i32 %126, %127
  br i1 %cmp118, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %128 = load i32, ptr %axis.addr, align 4, !tbaa !9
  %cmp119 = icmp eq i32 %128, 0
  br i1 %cmp119, label %cond.true120, label %cond.false136

cond.true120:                                     ; preds = %land.rhs
  %129 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %seg121 = getelementptr inbounds %struct.kdinfo, ptr %129, i32 0, i32 6
  %130 = load ptr, ptr %seg121, align 8, !tbaa !50
  %131 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm122 = getelementptr inbounds %struct.kdinfo, ptr %131, i32 0, i32 4
  %132 = load ptr, ptr %perm122, align 8, !tbaa !51
  %133 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom123 = zext i32 %133 to i64
  %arrayidx124 = getelementptr inbounds i32, ptr %132, i64 %idxprom123
  %134 = load i32, ptr %arrayidx124, align 4, !tbaa !9
  %idxprom125 = zext i32 %134 to i64
  %arrayidx126 = getelementptr inbounds %struct.segment, ptr %130, i64 %idxprom125
  %pos1127 = getelementptr inbounds %struct.segment, ptr %arrayidx126, i32 0, i32 1
  %135 = load i32, ptr %pos1127, align 8, !tbaa !23
  %136 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %seg128 = getelementptr inbounds %struct.kdinfo, ptr %136, i32 0, i32 6
  %137 = load ptr, ptr %seg128, align 8, !tbaa !50
  %138 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm129 = getelementptr inbounds %struct.kdinfo, ptr %138, i32 0, i32 4
  %139 = load ptr, ptr %perm129, align 8, !tbaa !51
  %140 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom130 = zext i32 %140 to i64
  %arrayidx131 = getelementptr inbounds i32, ptr %139, i64 %idxprom130
  %141 = load i32, ptr %arrayidx131, align 4, !tbaa !9
  %idxprom132 = zext i32 %141 to i64
  %arrayidx133 = getelementptr inbounds %struct.segment, ptr %137, i64 %idxprom132
  %pos2134 = getelementptr inbounds %struct.segment, ptr %arrayidx133, i32 0, i32 2
  %142 = load i32, ptr %pos2134, align 4, !tbaa !35
  %sub135 = sub nsw i32 %135, %142
  br label %cond.end144

cond.false136:                                    ; preds = %land.rhs
  %143 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %seg137 = getelementptr inbounds %struct.kdinfo, ptr %143, i32 0, i32 6
  %144 = load ptr, ptr %seg137, align 8, !tbaa !50
  %145 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm138 = getelementptr inbounds %struct.kdinfo, ptr %145, i32 0, i32 4
  %146 = load ptr, ptr %perm138, align 8, !tbaa !51
  %147 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom139 = zext i32 %147 to i64
  %arrayidx140 = getelementptr inbounds i32, ptr %146, i64 %idxprom139
  %148 = load i32, ptr %arrayidx140, align 4, !tbaa !9
  %idxprom141 = zext i32 %148 to i64
  %arrayidx142 = getelementptr inbounds %struct.segment, ptr %144, i64 %idxprom141
  %pos2143 = getelementptr inbounds %struct.segment, ptr %arrayidx142, i32 0, i32 2
  %149 = load i32, ptr %pos2143, align 4, !tbaa !35
  br label %cond.end144

cond.end144:                                      ; preds = %cond.false136, %cond.true120
  %cond145 = phi i32 [ %sub135, %cond.true120 ], [ %149, %cond.false136 ]
  %150 = load i32, ptr %pivot, align 4, !tbaa !9
  %cmp146 = icmp sle i32 %cond145, %150
  br label %land.end

land.end:                                         ; preds = %cond.end144, %for.cond
  %151 = phi i1 [ false, %for.cond ], [ %cmp146, %cond.end144 ]
  br i1 %151, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %152 = load i32, ptr %i, align 4, !tbaa !9
  %inc147 = add i32 %152, 1
  store i32 %inc147, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !83

for.end:                                          ; preds = %land.end
  %153 = load i32, ptr %j, align 4, !tbaa !9
  %dec = add i32 %153, -1
  store i32 %dec, ptr %j, align 4, !tbaa !9
  br label %for.cond148

for.cond148:                                      ; preds = %for.inc181, %for.end
  %154 = load i32, ptr %j, align 4, !tbaa !9
  %155 = load i32, ptr %lo.addr, align 4, !tbaa !9
  %cmp149 = icmp uge i32 %154, %155
  br i1 %cmp149, label %land.rhs150, label %land.end179

land.rhs150:                                      ; preds = %for.cond148
  %156 = load i32, ptr %axis.addr, align 4, !tbaa !9
  %cmp151 = icmp eq i32 %156, 0
  br i1 %cmp151, label %cond.true152, label %cond.false168

cond.true152:                                     ; preds = %land.rhs150
  %157 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %seg153 = getelementptr inbounds %struct.kdinfo, ptr %157, i32 0, i32 6
  %158 = load ptr, ptr %seg153, align 8, !tbaa !50
  %159 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm154 = getelementptr inbounds %struct.kdinfo, ptr %159, i32 0, i32 4
  %160 = load ptr, ptr %perm154, align 8, !tbaa !51
  %161 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom155 = zext i32 %161 to i64
  %arrayidx156 = getelementptr inbounds i32, ptr %160, i64 %idxprom155
  %162 = load i32, ptr %arrayidx156, align 4, !tbaa !9
  %idxprom157 = zext i32 %162 to i64
  %arrayidx158 = getelementptr inbounds %struct.segment, ptr %158, i64 %idxprom157
  %pos1159 = getelementptr inbounds %struct.segment, ptr %arrayidx158, i32 0, i32 1
  %163 = load i32, ptr %pos1159, align 8, !tbaa !23
  %164 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %seg160 = getelementptr inbounds %struct.kdinfo, ptr %164, i32 0, i32 6
  %165 = load ptr, ptr %seg160, align 8, !tbaa !50
  %166 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm161 = getelementptr inbounds %struct.kdinfo, ptr %166, i32 0, i32 4
  %167 = load ptr, ptr %perm161, align 8, !tbaa !51
  %168 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom162 = zext i32 %168 to i64
  %arrayidx163 = getelementptr inbounds i32, ptr %167, i64 %idxprom162
  %169 = load i32, ptr %arrayidx163, align 4, !tbaa !9
  %idxprom164 = zext i32 %169 to i64
  %arrayidx165 = getelementptr inbounds %struct.segment, ptr %165, i64 %idxprom164
  %pos2166 = getelementptr inbounds %struct.segment, ptr %arrayidx165, i32 0, i32 2
  %170 = load i32, ptr %pos2166, align 4, !tbaa !35
  %sub167 = sub nsw i32 %163, %170
  br label %cond.end176

cond.false168:                                    ; preds = %land.rhs150
  %171 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %seg169 = getelementptr inbounds %struct.kdinfo, ptr %171, i32 0, i32 6
  %172 = load ptr, ptr %seg169, align 8, !tbaa !50
  %173 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm170 = getelementptr inbounds %struct.kdinfo, ptr %173, i32 0, i32 4
  %174 = load ptr, ptr %perm170, align 8, !tbaa !51
  %175 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom171 = zext i32 %175 to i64
  %arrayidx172 = getelementptr inbounds i32, ptr %174, i64 %idxprom171
  %176 = load i32, ptr %arrayidx172, align 4, !tbaa !9
  %idxprom173 = zext i32 %176 to i64
  %arrayidx174 = getelementptr inbounds %struct.segment, ptr %172, i64 %idxprom173
  %pos2175 = getelementptr inbounds %struct.segment, ptr %arrayidx174, i32 0, i32 2
  %177 = load i32, ptr %pos2175, align 4, !tbaa !35
  br label %cond.end176

cond.end176:                                      ; preds = %cond.false168, %cond.true152
  %cond177 = phi i32 [ %sub167, %cond.true152 ], [ %177, %cond.false168 ]
  %178 = load i32, ptr %pivot, align 4, !tbaa !9
  %cmp178 = icmp sgt i32 %cond177, %178
  br label %land.end179

land.end179:                                      ; preds = %cond.end176, %for.cond148
  %179 = phi i1 [ false, %for.cond148 ], [ %cmp178, %cond.end176 ]
  br i1 %179, label %for.body180, label %for.end183

for.body180:                                      ; preds = %land.end179
  br label %for.inc181

for.inc181:                                       ; preds = %for.body180
  %180 = load i32, ptr %j, align 4, !tbaa !9
  %dec182 = add i32 %180, -1
  store i32 %dec182, ptr %j, align 4, !tbaa !9
  br label %for.cond148, !llvm.loop !84

for.end183:                                       ; preds = %land.end179
  call void @llvm.lifetime.start.p0(i64 4, ptr %t184) #4
  %181 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm185 = getelementptr inbounds %struct.kdinfo, ptr %181, i32 0, i32 4
  %182 = load ptr, ptr %perm185, align 8, !tbaa !51
  %183 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom186 = zext i32 %183 to i64
  %arrayidx187 = getelementptr inbounds i32, ptr %182, i64 %idxprom186
  %184 = load i32, ptr %arrayidx187, align 4, !tbaa !9
  store i32 %184, ptr %t184, align 4, !tbaa !9
  %185 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm188 = getelementptr inbounds %struct.kdinfo, ptr %185, i32 0, i32 4
  %186 = load ptr, ptr %perm188, align 8, !tbaa !51
  %187 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom189 = zext i32 %187 to i64
  %arrayidx190 = getelementptr inbounds i32, ptr %186, i64 %idxprom189
  %188 = load i32, ptr %arrayidx190, align 4, !tbaa !9
  %189 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm191 = getelementptr inbounds %struct.kdinfo, ptr %189, i32 0, i32 4
  %190 = load ptr, ptr %perm191, align 8, !tbaa !51
  %191 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom192 = zext i32 %191 to i64
  %arrayidx193 = getelementptr inbounds i32, ptr %190, i64 %idxprom192
  store i32 %188, ptr %arrayidx193, align 4, !tbaa !9
  %192 = load i32, ptr %t184, align 4, !tbaa !9
  %193 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm194 = getelementptr inbounds %struct.kdinfo, ptr %193, i32 0, i32 4
  %194 = load ptr, ptr %perm194, align 8, !tbaa !51
  %195 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom195 = zext i32 %195 to i64
  %arrayidx196 = getelementptr inbounds i32, ptr %194, i64 %idxprom195
  store i32 %192, ptr %arrayidx196, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %t184) #4
  br label %while.cond115, !llvm.loop !85

while.end:                                        ; preds = %while.cond115
  call void @llvm.lifetime.start.p0(i64 4, ptr %t197) #4
  %196 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm198 = getelementptr inbounds %struct.kdinfo, ptr %196, i32 0, i32 4
  %197 = load ptr, ptr %perm198, align 8, !tbaa !51
  %198 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom199 = zext i32 %198 to i64
  %arrayidx200 = getelementptr inbounds i32, ptr %197, i64 %idxprom199
  %199 = load i32, ptr %arrayidx200, align 4, !tbaa !9
  store i32 %199, ptr %t197, align 4, !tbaa !9
  %200 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm201 = getelementptr inbounds %struct.kdinfo, ptr %200, i32 0, i32 4
  %201 = load ptr, ptr %perm201, align 8, !tbaa !51
  %202 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom202 = zext i32 %202 to i64
  %arrayidx203 = getelementptr inbounds i32, ptr %201, i64 %idxprom202
  %203 = load i32, ptr %arrayidx203, align 4, !tbaa !9
  %204 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm204 = getelementptr inbounds %struct.kdinfo, ptr %204, i32 0, i32 4
  %205 = load ptr, ptr %perm204, align 8, !tbaa !51
  %206 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom205 = zext i32 %206 to i64
  %arrayidx206 = getelementptr inbounds i32, ptr %205, i64 %idxprom205
  store i32 %203, ptr %arrayidx206, align 4, !tbaa !9
  %207 = load i32, ptr %t197, align 4, !tbaa !9
  %208 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm207 = getelementptr inbounds %struct.kdinfo, ptr %208, i32 0, i32 4
  %209 = load ptr, ptr %perm207, align 8, !tbaa !51
  %210 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom208 = zext i32 %210 to i64
  %arrayidx209 = getelementptr inbounds i32, ptr %209, i64 %idxprom208
  store i32 %207, ptr %arrayidx209, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %t197) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %t210) #4
  %211 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm211 = getelementptr inbounds %struct.kdinfo, ptr %211, i32 0, i32 4
  %212 = load ptr, ptr %perm211, align 8, !tbaa !51
  %213 = load i32, ptr %lo.addr, align 4, !tbaa !9
  %idxprom212 = zext i32 %213 to i64
  %arrayidx213 = getelementptr inbounds i32, ptr %212, i64 %idxprom212
  %214 = load i32, ptr %arrayidx213, align 4, !tbaa !9
  store i32 %214, ptr %t210, align 4, !tbaa !9
  %215 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm214 = getelementptr inbounds %struct.kdinfo, ptr %215, i32 0, i32 4
  %216 = load ptr, ptr %perm214, align 8, !tbaa !51
  %217 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom215 = zext i32 %217 to i64
  %arrayidx216 = getelementptr inbounds i32, ptr %216, i64 %idxprom215
  %218 = load i32, ptr %arrayidx216, align 4, !tbaa !9
  %219 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm217 = getelementptr inbounds %struct.kdinfo, ptr %219, i32 0, i32 4
  %220 = load ptr, ptr %perm217, align 8, !tbaa !51
  %221 = load i32, ptr %lo.addr, align 4, !tbaa !9
  %idxprom218 = zext i32 %221 to i64
  %arrayidx219 = getelementptr inbounds i32, ptr %220, i64 %idxprom218
  store i32 %218, ptr %arrayidx219, align 4, !tbaa !9
  %222 = load i32, ptr %t210, align 4, !tbaa !9
  %223 = load ptr, ptr %kdi.addr, align 8, !tbaa !5
  %perm220 = getelementptr inbounds %struct.kdinfo, ptr %223, i32 0, i32 4
  %224 = load ptr, ptr %perm220, align 8, !tbaa !51
  %225 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom221 = zext i32 %225 to i64
  %arrayidx222 = getelementptr inbounds i32, ptr %224, i64 %idxprom221
  store i32 %222, ptr %arrayidx222, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %t210) #4
  %226 = load i32, ptr %j, align 4, !tbaa !9
  %227 = load i32, ptr %hi.addr, align 4, !tbaa !9
  %cmp223 = icmp ult i32 %226, %227
  br i1 %cmp223, label %if.then224, label %if.else225

if.then224:                                       ; preds = %while.end
  %228 = load i32, ptr %j, align 4, !tbaa !9
  store i32 %228, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else225:                                       ; preds = %while.end
  %229 = load i32, ptr %hi.addr, align 4, !tbaa !9
  %230 = load i32, ptr %lo.addr, align 4, !tbaa !9
  %sub226 = sub i32 %229, %230
  %cmp227 = icmp eq i32 %sub226, 2
  br i1 %cmp227, label %if.then228, label %if.end230

if.then228:                                       ; preds = %if.else225
  %231 = load i32, ptr %hi.addr, align 4, !tbaa !9
  %sub229 = sub i32 %231, 1
  store i32 %sub229, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end230:                                        ; preds = %if.else225
  br label %if.end231

if.end231:                                        ; preds = %if.end230
  %232 = load i32, ptr %hi.addr, align 4, !tbaa !9
  %dec232 = add i32 %232, -1
  store i32 %dec232, ptr %hi.addr, align 4, !tbaa !9
  br label %while.cond

cleanup:                                          ; preds = %if.then228, %if.then224
  call void @llvm.lifetime.end.p0(i64 4, ptr %pivot) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  %233 = load i32, ptr %retval, align 4
  ret i32 %233
}

declare void @suicide(ptr noundef) #2

declare void @suicidef(ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal void @dump_kd_subtree(i32 noundef %indent, ptr noundef %subtree, i32 noundef %axis) #0 {
entry:
  %indent.addr = alloca i32, align 4
  %subtree.addr = alloca ptr, align 8
  %axis.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %indent, ptr %indent.addr, align 4, !tbaa !9
  store ptr %subtree, ptr %subtree.addr, align 8, !tbaa !5
  store i32 %axis, ptr %axis.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #4
  %0 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %isBucket = getelementptr inbounds %struct.kdnode, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %isBucket, align 8, !tbaa !74
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %indent.addr, align 4, !tbaa !9
  %add = add nsw i32 %2, 2
  %3 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %loSon = getelementptr inbounds %struct.kdnode, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %loSon, align 8, !tbaa !78
  %5 = load i32, ptr %axis.addr, align 4, !tbaa !9
  %sub = sub nsw i32 1, %5
  call void @dump_kd_subtree(i32 noundef %add, ptr noundef %4, i32 noundef %sub)
  %6 = load ptr, ptr @dksFile, align 8, !tbaa !5
  %7 = load i32, ptr %indent.addr, align 4, !tbaa !9
  %8 = load i32, ptr @dksIndexWidth, align 4, !tbaa !9
  %9 = load i32, ptr %axis.addr, align 4, !tbaa !9
  %cmp = icmp eq i32 %9, 0
  %10 = zext i1 %cmp to i64
  %cond = select i1 %cmp, ptr @.str.18, ptr @.str.19
  %11 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %cutVal = getelementptr inbounds %struct.kdnode, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %cutVal, align 4, !tbaa !77
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.16, i32 noundef %7, ptr noundef @.str.17, i32 noundef %8, ptr noundef @.str.17, ptr noundef %cond, i32 noundef %12)
  %13 = load i32, ptr %indent.addr, align 4, !tbaa !9
  %add1 = add nsw i32 %13, 2
  %14 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %hiSon = getelementptr inbounds %struct.kdnode, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %hiSon, align 8, !tbaa !79
  %16 = load i32, ptr %axis.addr, align 4, !tbaa !9
  %sub2 = sub nsw i32 1, %16
  call void @dump_kd_subtree(i32 noundef %add1, ptr noundef %15, i32 noundef %sub2)
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %loIx = getelementptr inbounds %struct.kdnode, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %loIx, align 4, !tbaa !75
  store i32 %18, ptr %i, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i32, ptr %i, align 4, !tbaa !9
  %20 = load ptr, ptr %subtree.addr, align 8, !tbaa !5
  %hiIx = getelementptr inbounds %struct.kdnode, ptr %20, i32 0, i32 2
  %21 = load i32, ptr %hiIx, align 8, !tbaa !76
  %cmp3 = icmp ule i32 %19, %21
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr @dksKdi, align 8, !tbaa !5
  %perm = getelementptr inbounds %struct.kdinfo, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %perm, align 8, !tbaa !51
  %24 = load i32, ptr %i, align 4, !tbaa !9
  %idxprom = zext i32 %24 to i64
  %arrayidx = getelementptr inbounds i32, ptr %23, i64 %idxprom
  %25 = load i32, ptr %arrayidx, align 4, !tbaa !9
  store i32 %25, ptr %j, align 4, !tbaa !9
  %26 = load ptr, ptr @dksKdi, align 8, !tbaa !5
  %seg = getelementptr inbounds %struct.kdinfo, ptr %26, i32 0, i32 6
  %27 = load ptr, ptr %seg, align 8, !tbaa !50
  %28 = load i32, ptr %j, align 4, !tbaa !9
  %idxprom4 = zext i32 %28 to i64
  %arrayidx5 = getelementptr inbounds %struct.segment, ptr %27, i64 %idxprom4
  store ptr %arrayidx5, ptr %s, align 8, !tbaa !5
  %29 = load ptr, ptr @dksFile, align 8, !tbaa !5
  %30 = load i32, ptr @dksIndexWidth, align 4, !tbaa !9
  %31 = load i32, ptr %i, align 4, !tbaa !9
  %32 = load i32, ptr %indent.addr, align 4, !tbaa !9
  %33 = load ptr, ptr %s, align 8, !tbaa !5
  %pos1 = getelementptr inbounds %struct.segment, ptr %33, i32 0, i32 1
  %34 = load i32, ptr %pos1, align 8, !tbaa !23
  %35 = load ptr, ptr %s, align 8, !tbaa !5
  %pos2 = getelementptr inbounds %struct.segment, ptr %35, i32 0, i32 2
  %36 = load i32, ptr %pos2, align 4, !tbaa !35
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.20, i32 noundef %30, i32 noundef %31, i32 noundef %32, ptr noundef @.str.17, i32 noundef %34, i32 noundef %36)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, ptr %i, align 4, !tbaa !9
  %inc = add i32 %37, 1
  store i32 %inc, ptr %i, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !86

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
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

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

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
!11 = !{!12, !6, i64 16}
!12 = !{!"seqpartition", !10, i64 0, !10, i64 4, !10, i64 8, !6, i64 16, !10, i64 24, !10, i64 28, !6, i64 32, !10, i64 40}
!13 = !{!12, !10, i64 8}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!17, !10, i64 0}
!17 = !{!"sbtable", !10, i64 0, !10, i64 4, !7, i64 8}
!18 = !{!19, !6, i64 32}
!19 = !{!"segtable", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !15, i64 16, !10, i64 24, !6, i64 32, !7, i64 40}
!20 = !{!19, !10, i64 4}
!21 = !{!22, !10, i64 4}
!22 = !{!"partition", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!23 = !{!24, !10, i64 8}
!24 = !{!"segment", !15, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !15, i64 32, !10, i64 40}
!25 = !{!24, !10, i64 16}
!26 = !{!27, !6, i64 8}
!27 = !{!"segbatch", !10, i64 0, !10, i64 4, !6, i64 8, !6, i64 16}
!28 = !{!27, !6, i64 16}
!29 = !{!27, !10, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!27, !10, i64 4}
!33 = distinct !{!33, !31}
!34 = !{!17, !10, i64 4}
!35 = !{!24, !10, i64 12}
!36 = distinct !{!36, !31}
!37 = distinct !{!37, !31}
!38 = distinct !{!38, !31}
!39 = distinct !{!39, !31}
!40 = distinct !{!40, !31}
!41 = distinct !{!41, !31}
!42 = !{!43, !43, i64 0}
!43 = !{!"double", !7, i64 0}
!44 = !{!24, !10, i64 40}
!45 = distinct !{!45, !31}
!46 = distinct !{!46, !31}
!47 = distinct !{!47, !31}
!48 = !{!49, !6, i64 72}
!49 = !{!"kdinfo", !10, i64 0, !10, i64 4, !10, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !6, i64 72}
!50 = !{!49, !6, i64 40}
!51 = !{!49, !6, i64 24}
!52 = !{!49, !6, i64 32}
!53 = !{!49, !6, i64 16}
!54 = !{!49, !10, i64 0}
!55 = !{!49, !10, i64 4}
!56 = !{!49, !10, i64 8}
!57 = distinct !{!57, !31}
!58 = distinct !{!58, !31}
!59 = !{!49, !6, i64 48}
!60 = !{!49, !10, i64 56}
!61 = !{!49, !10, i64 60}
!62 = !{!49, !10, i64 64}
!63 = !{!24, !10, i64 20}
!64 = !{!65, !10, i64 0}
!65 = !{!"bestpred", !10, i64 0, !43, i64 8}
!66 = !{!65, !43, i64 8}
!67 = !{i64 0, i64 4, !9, i64 8, i64 8, !42}
!68 = distinct !{!68, !31}
!69 = distinct !{!69, !31}
!70 = distinct !{!70, !31}
!71 = !{!7, !7, i64 0}
!72 = !{!73, !43, i64 16}
!73 = !{!"kdnode", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !43, i64 16, !6, i64 24, !6, i64 32}
!74 = !{!73, !10, i64 0}
!75 = !{!73, !10, i64 4}
!76 = !{!73, !10, i64 8}
!77 = !{!73, !10, i64 12}
!78 = !{!73, !6, i64 24}
!79 = !{!73, !6, i64 32}
!80 = distinct !{!80, !31}
!81 = distinct !{!81, !31}
!82 = distinct !{!82, !31}
!83 = distinct !{!83, !31}
!84 = distinct !{!84, !31}
!85 = distinct !{!85, !31}
!86 = distinct !{!86, !31}
