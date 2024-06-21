; ModuleID = 'samples/214.bc'
source_filename = "naugraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispatchvec = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.optionstruct = type { i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr }

@dispatch_graph = global %struct.dispatchvec { ptr @isautom, ptr @testcanlab, ptr @updatecan, ptr @refine, ptr @refine1, ptr @cheapautom, ptr @targetcell, ptr @naugraph_freedyn, ptr @naugraph_check, ptr null, ptr null }, align 8
@bit = internal constant [16 x i16] [i16 -32768, i16 16384, i16 8192, i16 4096, i16 2048, i16 1024, i16 512, i16 256, i16 128, i16 64, i16 32, i16 16, i16 8, i16 4, i16 2, i16 1], align 16
@workperm_sz = internal global i64 0, align 8
@workperm = internal global ptr null, align 8
@.str = private unnamed_addr constant [11 x i8] c"testcanlab\00", align 1
@workset_sz = internal global i64 0, align 8
@workset = internal global ptr null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"updatecan\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"refine\00", align 1
@bucket_sz = internal global i64 0, align 8
@bucket = internal global ptr null, align 8
@bytecount = internal constant [256 x i32] [i32 0, i32 1, i32 1, i32 2, i32 1, i32 2, i32 2, i32 3, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 6, i32 7, i32 1, i32 2, i32 2, i32 3, i32 2, i32 3, i32 3, i32 4, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 6, i32 7, i32 2, i32 3, i32 3, i32 4, i32 3, i32 4, i32 4, i32 5, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 6, i32 7, i32 3, i32 4, i32 4, i32 5, i32 4, i32 5, i32 5, i32 6, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 6, i32 7, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 6, i32 7, i32 5, i32 6, i32 6, i32 7, i32 6, i32 7, i32 7, i32 8], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"refine1\00", align 1
@stderr = external global ptr, align 8
@.str.4 = private unnamed_addr constant [50 x i8] c"Error: densenauty() needs standard options block\0A\00", align 1
@dnwork_sz = internal global i64 0, align 8
@dnwork = internal global ptr null, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"densenauty malloc\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Error: WORDSIZE mismatch in naugraph.c\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Error: naugraph.c version mismatch\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"bestcell\00", align 1

; Function Attrs: nounwind uwtable
define i32 @isautom(ptr noundef %g, ptr noundef %perm, i32 noundef %digraph, i32 noundef %m, i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca ptr, align 8
  %perm.addr = alloca ptr, align 8
  %digraph.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %pg = alloca ptr, align 8
  %pos = alloca i32, align 4
  %pgp = alloca ptr, align 8
  %posp = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store ptr %perm, ptr %perm.addr, align 8, !tbaa !4
  store i32 %digraph, ptr %digraph.addr, align 4, !tbaa !8
  store i32 %m, ptr %m.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pg) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgp) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %posp) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %0 = load ptr, ptr %g.addr, align 8, !tbaa !4
  store ptr %0, ptr %pg, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !8
  %2 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %4 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv = sext i32 %4 to i64
  %5 = load ptr, ptr %perm.addr, align 8, !tbaa !4
  %6 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %conv1 = sext i32 %7 to i64
  %mul = mul i64 %conv, %conv1
  %add.ptr = getelementptr inbounds i16, ptr %3, i64 %mul
  store ptr %add.ptr, ptr %pgp, align 8, !tbaa !4
  %8 = load i32, ptr %digraph.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, ptr %pos, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %cond.end
  %10 = load ptr, ptr %pg, align 8, !tbaa !4
  %11 = load i32, ptr %m.addr, align 4, !tbaa !8
  %12 = load i32, ptr %pos, align 4, !tbaa !8
  %call = call i32 @nextelement(ptr noundef %10, i32 noundef %11, i32 noundef %12)
  store i32 %call, ptr %pos, align 4, !tbaa !8
  %cmp2 = icmp sge i32 %call, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load ptr, ptr %perm.addr, align 8, !tbaa !4
  %14 = load i32, ptr %pos, align 4, !tbaa !8
  %idxprom4 = sext i32 %14 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %13, i64 %idxprom4
  %15 = load i32, ptr %arrayidx5, align 4, !tbaa !8
  store i32 %15, ptr %posp, align 4, !tbaa !8
  %16 = load ptr, ptr %pgp, align 8, !tbaa !4
  %17 = load i32, ptr %posp, align 4, !tbaa !8
  %shr = ashr i32 %17, 4
  %idxprom6 = sext i32 %shr to i64
  %arrayidx7 = getelementptr inbounds i16, ptr %16, i64 %idxprom6
  %18 = load i16, ptr %arrayidx7, align 2, !tbaa !10
  %conv8 = zext i16 %18 to i32
  %19 = load i32, ptr %posp, align 4, !tbaa !8
  %and = and i32 %19, 15
  %idxprom9 = sext i32 %and to i64
  %arrayidx10 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom9
  %20 = load i16, ptr %arrayidx10, align 2, !tbaa !10
  %conv11 = zext i16 %20 to i32
  %and12 = and i32 %conv8, %conv11
  %cmp13 = icmp ne i32 %and12, 0
  br i1 %cmp13, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %while.body
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %21 = load i32, ptr %m.addr, align 4, !tbaa !8
  %22 = load ptr, ptr %pg, align 8, !tbaa !4
  %idx.ext = sext i32 %21 to i64
  %add.ptr15 = getelementptr inbounds i16, ptr %22, i64 %idx.ext
  store ptr %add.ptr15, ptr %pg, align 8, !tbaa !4
  %23 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %posp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %pg) #6
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define i32 @testcanlab(ptr noundef %g, ptr noundef %canong, ptr noundef %lab, ptr noundef %samerows, i32 noundef %m, i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca ptr, align 8
  %canong.addr = alloca ptr, align 8
  %lab.addr = alloca ptr, align 8
  %samerows.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ph = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store ptr %canong, ptr %canong.addr, align 8, !tbaa !4
  store ptr %lab, ptr %lab.addr, align 8, !tbaa !4
  store ptr %samerows, ptr %samerows.addr, align 8, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ph) #6
  %0 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %1 = load i64, ptr @workperm_sz, align 8, !tbaa !16
  %cmp = icmp ugt i64 %conv, %1
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @workperm_sz, align 8, !tbaa !16
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr @workperm, align 8, !tbaa !4
  call void @free(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %4 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv3 = sext i32 %4 to i64
  store i64 %conv3, ptr @workperm_sz, align 8, !tbaa !16
  %5 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv4 = sext i32 %5 to i64
  %mul = mul i64 %conv4, 4
  %call = call noalias ptr @malloc(i64 noundef %mul) #7
  store ptr %call, ptr @workperm, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %call, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @alloc_error(ptr noundef @.str)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry
  %6 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv10 = sext i32 %6 to i64
  %7 = load i64, ptr @workset_sz, align 8, !tbaa !16
  %cmp11 = icmp ugt i64 %conv10, %7
  br i1 %cmp11, label %if.then13, label %if.end25

if.then13:                                        ; preds = %if.end9
  %8 = load i64, ptr @workset_sz, align 8, !tbaa !16
  %tobool14 = icmp ne i64 %8, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then13
  %9 = load ptr, ptr @workset, align 8, !tbaa !4
  call void @free(ptr noundef %9) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then13
  %10 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv17 = sext i32 %10 to i64
  store i64 %conv17, ptr @workset_sz, align 8, !tbaa !16
  %11 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv18 = sext i32 %11 to i64
  %mul19 = mul i64 %conv18, 2
  %call20 = call noalias ptr @malloc(i64 noundef %mul19) #7
  store ptr %call20, ptr @workset, align 8, !tbaa !4
  %cmp21 = icmp eq ptr %call20, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end16
  call void @alloc_error(ptr noundef @.str)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end16
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end9
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end25
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %13 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp26 = icmp slt i32 %12, %13
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, ptr %i, align 4, !tbaa !8
  %15 = load ptr, ptr @workperm, align 8, !tbaa !4
  %16 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %17 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds i32, ptr %16, i64 %idxprom
  %18 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %idxprom28 = sext i32 %18 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %15, i64 %idxprom28
  store i32 %14, ptr %arrayidx29, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !8
  %20 = load ptr, ptr %canong.addr, align 8, !tbaa !4
  store ptr %20, ptr %ph, align 8, !tbaa !4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc66, %for.end
  %21 = load i32, ptr %i, align 4, !tbaa !8
  %22 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp31 = icmp slt i32 %21, %22
  br i1 %cmp31, label %for.body33, label %for.end69

for.body33:                                       ; preds = %for.cond30
  %23 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %24 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv34 = sext i32 %24 to i64
  %25 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %26 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom35 = sext i32 %26 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %25, i64 %idxprom35
  %27 = load i32, ptr %arrayidx36, align 4, !tbaa !8
  %conv37 = sext i32 %27 to i64
  %mul38 = mul i64 %conv34, %conv37
  %add.ptr = getelementptr inbounds i16, ptr %23, i64 %mul38
  %28 = load ptr, ptr @workset, align 8, !tbaa !4
  %29 = load i32, ptr %m.addr, align 4, !tbaa !8
  %30 = load ptr, ptr @workperm, align 8, !tbaa !4
  call void @permset(ptr noundef %add.ptr, ptr noundef %28, i32 noundef %29, ptr noundef %30)
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc63, %for.body33
  %31 = load i32, ptr %j, align 4, !tbaa !8
  %32 = load i32, ptr %m.addr, align 4, !tbaa !8
  %cmp40 = icmp slt i32 %31, %32
  br i1 %cmp40, label %for.body42, label %for.end65

for.body42:                                       ; preds = %for.cond39
  %33 = load ptr, ptr @workset, align 8, !tbaa !4
  %34 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom43 = sext i32 %34 to i64
  %arrayidx44 = getelementptr inbounds i16, ptr %33, i64 %idxprom43
  %35 = load i16, ptr %arrayidx44, align 2, !tbaa !10
  %conv45 = zext i16 %35 to i32
  %36 = load ptr, ptr %ph, align 8, !tbaa !4
  %37 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom46 = sext i32 %37 to i64
  %arrayidx47 = getelementptr inbounds i16, ptr %36, i64 %idxprom46
  %38 = load i16, ptr %arrayidx47, align 2, !tbaa !10
  %conv48 = zext i16 %38 to i32
  %cmp49 = icmp slt i32 %conv45, %conv48
  br i1 %cmp49, label %if.then51, label %if.else

if.then51:                                        ; preds = %for.body42
  %39 = load i32, ptr %i, align 4, !tbaa !8
  %40 = load ptr, ptr %samerows.addr, align 8, !tbaa !4
  store i32 %39, ptr %40, align 4, !tbaa !8
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %for.body42
  %41 = load ptr, ptr @workset, align 8, !tbaa !4
  %42 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom52 = sext i32 %42 to i64
  %arrayidx53 = getelementptr inbounds i16, ptr %41, i64 %idxprom52
  %43 = load i16, ptr %arrayidx53, align 2, !tbaa !10
  %conv54 = zext i16 %43 to i32
  %44 = load ptr, ptr %ph, align 8, !tbaa !4
  %45 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom55 = sext i32 %45 to i64
  %arrayidx56 = getelementptr inbounds i16, ptr %44, i64 %idxprom55
  %46 = load i16, ptr %arrayidx56, align 2, !tbaa !10
  %conv57 = zext i16 %46 to i32
  %cmp58 = icmp sgt i32 %conv54, %conv57
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.else
  %47 = load i32, ptr %i, align 4, !tbaa !8
  %48 = load ptr, ptr %samerows.addr, align 8, !tbaa !4
  store i32 %47, ptr %48, align 4, !tbaa !8
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end61:                                         ; preds = %if.else
  br label %if.end62

if.end62:                                         ; preds = %if.end61
  br label %for.inc63

for.inc63:                                        ; preds = %if.end62
  %49 = load i32, ptr %j, align 4, !tbaa !8
  %inc64 = add nsw i32 %49, 1
  store i32 %inc64, ptr %j, align 4, !tbaa !8
  br label %for.cond39, !llvm.loop !19

for.end65:                                        ; preds = %for.cond39
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %50 = load i32, ptr %i, align 4, !tbaa !8
  %inc67 = add nsw i32 %50, 1
  store i32 %inc67, ptr %i, align 4, !tbaa !8
  %51 = load i32, ptr %m.addr, align 4, !tbaa !8
  %52 = load ptr, ptr %ph, align 8, !tbaa !4
  %idx.ext = sext i32 %51 to i64
  %add.ptr68 = getelementptr inbounds i16, ptr %52, i64 %idx.ext
  store ptr %add.ptr68, ptr %ph, align 8, !tbaa !4
  br label %for.cond30, !llvm.loop !20

for.end69:                                        ; preds = %for.cond30
  %53 = load i32, ptr %n.addr, align 4, !tbaa !8
  %54 = load ptr, ptr %samerows.addr, align 8, !tbaa !4
  store i32 %53, ptr %54, align 4, !tbaa !8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end69, %if.then60, %if.then51
  call void @llvm.lifetime.end.p0(i64 8, ptr %ph) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define void @updatecan(ptr noundef %g, ptr noundef %canong, ptr noundef %lab, i32 noundef %samerows, i32 noundef %m, i32 noundef %n) #0 {
entry:
  %g.addr = alloca ptr, align 8
  %canong.addr = alloca ptr, align 8
  %lab.addr = alloca ptr, align 8
  %samerows.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ph = alloca ptr, align 8
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store ptr %canong, ptr %canong.addr, align 8, !tbaa !4
  store ptr %lab, ptr %lab.addr, align 8, !tbaa !4
  store i32 %samerows, ptr %samerows.addr, align 4, !tbaa !8
  store i32 %m, ptr %m.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ph) #6
  %0 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %1 = load i64, ptr @workperm_sz, align 8, !tbaa !16
  %cmp = icmp ugt i64 %conv, %1
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @workperm_sz, align 8, !tbaa !16
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr @workperm, align 8, !tbaa !4
  call void @free(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %4 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv3 = sext i32 %4 to i64
  store i64 %conv3, ptr @workperm_sz, align 8, !tbaa !16
  %5 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv4 = sext i32 %5 to i64
  %mul = mul i64 %conv4, 4
  %call = call noalias ptr @malloc(i64 noundef %mul) #7
  store ptr %call, ptr @workperm, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %call, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @alloc_error(ptr noundef @.str.1)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %6 = load i32, ptr %i, align 4, !tbaa !8
  %7 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp10 = icmp slt i32 %6, %7
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %9 = load ptr, ptr @workperm, align 8, !tbaa !4
  %10 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i32, ptr %10, i64 %idxprom
  %12 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %9, i64 %idxprom12
  store i32 %8, ptr %arrayidx13, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %14 = load i32, ptr %samerows.addr, align 4, !tbaa !8
  store i32 %14, ptr %i, align 4, !tbaa !8
  %15 = load ptr, ptr %canong.addr, align 8, !tbaa !4
  %16 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv14 = sext i32 %16 to i64
  %17 = load i32, ptr %samerows.addr, align 4, !tbaa !8
  %conv15 = sext i32 %17 to i64
  %mul16 = mul i64 %conv14, %conv15
  %add.ptr = getelementptr inbounds i16, ptr %15, i64 %mul16
  store ptr %add.ptr, ptr %ph, align 8, !tbaa !4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc27, %for.end
  %18 = load i32, ptr %i, align 4, !tbaa !8
  %19 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp18 = icmp slt i32 %18, %19
  br i1 %cmp18, label %for.body20, label %for.end30

for.body20:                                       ; preds = %for.cond17
  %20 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %21 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv21 = sext i32 %21 to i64
  %22 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %23 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom22 = sext i32 %23 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %22, i64 %idxprom22
  %24 = load i32, ptr %arrayidx23, align 4, !tbaa !8
  %conv24 = sext i32 %24 to i64
  %mul25 = mul i64 %conv21, %conv24
  %add.ptr26 = getelementptr inbounds i16, ptr %20, i64 %mul25
  %25 = load ptr, ptr %ph, align 8, !tbaa !4
  %26 = load i32, ptr %m.addr, align 4, !tbaa !8
  %27 = load ptr, ptr @workperm, align 8, !tbaa !4
  call void @permset(ptr noundef %add.ptr26, ptr noundef %25, i32 noundef %26, ptr noundef %27)
  br label %for.inc27

for.inc27:                                        ; preds = %for.body20
  %28 = load i32, ptr %i, align 4, !tbaa !8
  %inc28 = add nsw i32 %28, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !8
  %29 = load i32, ptr %m.addr, align 4, !tbaa !8
  %30 = load ptr, ptr %ph, align 8, !tbaa !4
  %idx.ext = sext i32 %29 to i64
  %add.ptr29 = getelementptr inbounds i16, ptr %30, i64 %idx.ext
  store ptr %add.ptr29, ptr %ph, align 8, !tbaa !4
  br label %for.cond17, !llvm.loop !22

for.end30:                                        ; preds = %for.cond17
  call void @llvm.lifetime.end.p0(i64 8, ptr %ph) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @refine(ptr noundef %g, ptr noundef %lab, ptr noundef %ptn, i32 noundef %level, ptr noundef %numcells, ptr noundef %count, ptr noundef %active, ptr noundef %code, i32 noundef %m, i32 noundef %n) #0 {
entry:
  %g.addr = alloca ptr, align 8
  %lab.addr = alloca ptr, align 8
  %ptn.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %numcells.addr = alloca ptr, align 8
  %count.addr = alloca ptr, align 8
  %active.addr = alloca ptr, align 8
  %code.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %labc1 = alloca i32, align 4
  %x = alloca i16, align 2
  %set1 = alloca ptr, align 8
  %set2 = alloca ptr, align 8
  %split1 = alloca i32, align 4
  %split2 = alloca i32, align 4
  %cell1 = alloca i32, align 4
  %cell2 = alloca i32, align 4
  %cnt = alloca i32, align 4
  %bmin = alloca i32, align 4
  %bmax = alloca i32, align 4
  %longcode = alloca i64, align 8
  %gptr = alloca ptr, align 8
  %maxcell = alloca i32, align 4
  %maxpos = alloca i32, align 4
  %hint = alloca i32, align 4
  %es = alloca ptr, align 8
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store ptr %lab, ptr %lab.addr, align 8, !tbaa !4
  store ptr %ptn, ptr %ptn.addr, align 8, !tbaa !4
  store i32 %level, ptr %level.addr, align 4, !tbaa !8
  store ptr %numcells, ptr %numcells.addr, align 8, !tbaa !4
  store ptr %count, ptr %count.addr, align 8, !tbaa !4
  store ptr %active, ptr %active.addr, align 8, !tbaa !4
  store ptr %code, ptr %code.addr, align 8, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %c1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %c2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %labc1) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr %x) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %set1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %set2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %split1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %split2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %cell1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %cell2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %bmin) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %bmax) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %longcode) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %gptr) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxcell) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxpos) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %hint) #6
  %0 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %1 = load i64, ptr @workperm_sz, align 8, !tbaa !16
  %cmp = icmp ugt i64 %conv, %1
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @workperm_sz, align 8, !tbaa !16
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr @workperm, align 8, !tbaa !4
  call void @free(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %4 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv3 = sext i32 %4 to i64
  store i64 %conv3, ptr @workperm_sz, align 8, !tbaa !16
  %5 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv4 = sext i32 %5 to i64
  %mul = mul i64 %conv4, 4
  %call = call noalias ptr @malloc(i64 noundef %mul) #7
  store ptr %call, ptr @workperm, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %call, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @alloc_error(ptr noundef @.str.2)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry
  %6 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv10 = sext i32 %6 to i64
  %7 = load i64, ptr @workset_sz, align 8, !tbaa !16
  %cmp11 = icmp ugt i64 %conv10, %7
  br i1 %cmp11, label %if.then13, label %if.end25

if.then13:                                        ; preds = %if.end9
  %8 = load i64, ptr @workset_sz, align 8, !tbaa !16
  %tobool14 = icmp ne i64 %8, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then13
  %9 = load ptr, ptr @workset, align 8, !tbaa !4
  call void @free(ptr noundef %9) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then13
  %10 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv17 = sext i32 %10 to i64
  store i64 %conv17, ptr @workset_sz, align 8, !tbaa !16
  %11 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv18 = sext i32 %11 to i64
  %mul19 = mul i64 %conv18, 2
  %call20 = call noalias ptr @malloc(i64 noundef %mul19) #7
  store ptr %call20, ptr @workset, align 8, !tbaa !4
  %cmp21 = icmp eq ptr %call20, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end16
  call void @alloc_error(ptr noundef @.str.2)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end16
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end9
  %12 = load i32, ptr %n.addr, align 4, !tbaa !8
  %add = add nsw i32 %12, 2
  %conv26 = sext i32 %add to i64
  %13 = load i64, ptr @bucket_sz, align 8, !tbaa !16
  %cmp27 = icmp ugt i64 %conv26, %13
  br i1 %cmp27, label %if.then29, label %if.end43

if.then29:                                        ; preds = %if.end25
  %14 = load i64, ptr @bucket_sz, align 8, !tbaa !16
  %tobool30 = icmp ne i64 %14, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then29
  %15 = load ptr, ptr @bucket, align 8, !tbaa !4
  call void @free(ptr noundef %15) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then29
  %16 = load i32, ptr %n.addr, align 4, !tbaa !8
  %add33 = add nsw i32 %16, 2
  %conv34 = sext i32 %add33 to i64
  store i64 %conv34, ptr @bucket_sz, align 8, !tbaa !16
  %17 = load i32, ptr %n.addr, align 4, !tbaa !8
  %add35 = add nsw i32 %17, 2
  %conv36 = sext i32 %add35 to i64
  %mul37 = mul i64 %conv36, 4
  %call38 = call noalias ptr @malloc(i64 noundef %mul37) #7
  store ptr %call38, ptr @bucket, align 8, !tbaa !4
  %cmp39 = icmp eq ptr %call38, null
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end32
  call void @alloc_error(ptr noundef @.str.2)
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end32
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end25
  %18 = load ptr, ptr %numcells.addr, align 8, !tbaa !4
  %19 = load i32, ptr %18, align 4, !tbaa !8
  %conv44 = sext i32 %19 to i64
  store i64 %conv44, ptr %longcode, align 8, !tbaa !16
  store i32 -1, ptr %split1, align 4, !tbaa !8
  store i32 0, ptr %hint, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end468, %if.end43
  %20 = load ptr, ptr %numcells.addr, align 8, !tbaa !4
  %21 = load i32, ptr %20, align 4, !tbaa !8
  %22 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp45 = icmp slt i32 %21, %22
  br i1 %cmp45, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %23 = load i32, ptr %hint, align 4, !tbaa !8
  store i32 %23, ptr %split1, align 4, !tbaa !8
  %24 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %25 = load i32, ptr %split1, align 4, !tbaa !8
  %shr = ashr i32 %25, 4
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds i16, ptr %24, i64 %idxprom
  %26 = load i16, ptr %arrayidx, align 2, !tbaa !10
  %conv47 = zext i16 %26 to i32
  %27 = load i32, ptr %split1, align 4, !tbaa !8
  %and = and i32 %27, 15
  %idxprom48 = sext i32 %and to i64
  %arrayidx49 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom48
  %28 = load i16, ptr %arrayidx49, align 2, !tbaa !10
  %conv50 = zext i16 %28 to i32
  %and51 = and i32 %conv47, %conv50
  %cmp52 = icmp ne i32 %and51, 0
  br i1 %cmp52, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %29 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %30 = load i32, ptr %m.addr, align 4, !tbaa !8
  %31 = load i32, ptr %split1, align 4, !tbaa !8
  %call54 = call i32 @nextelement(ptr noundef %29, i32 noundef %30, i32 noundef %31)
  store i32 %call54, ptr %split1, align 4, !tbaa !8
  %cmp55 = icmp sge i32 %call54, 0
  br i1 %cmp55, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %32 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %33 = load i32, ptr %m.addr, align 4, !tbaa !8
  %call57 = call i32 @nextelement(ptr noundef %32, i32 noundef %33, i32 noundef -1)
  store i32 %call57, ptr %split1, align 4, !tbaa !8
  %cmp58 = icmp sge i32 %call57, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.rhs
  %34 = phi i1 [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %cmp58, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %35 = phi i1 [ false, %while.cond ], [ %34, %lor.end ]
  br i1 %35, label %while.body, label %while.end469

while.body:                                       ; preds = %land.end
  %36 = load i32, ptr %split1, align 4, !tbaa !8
  %and60 = and i32 %36, 15
  %idxprom61 = sext i32 %and60 to i64
  %arrayidx62 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom61
  %37 = load i16, ptr %arrayidx62, align 2, !tbaa !10
  %conv63 = zext i16 %37 to i32
  %not = xor i32 %conv63, -1
  %38 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %39 = load i32, ptr %split1, align 4, !tbaa !8
  %shr64 = ashr i32 %39, 4
  %idxprom65 = sext i32 %shr64 to i64
  %arrayidx66 = getelementptr inbounds i16, ptr %38, i64 %idxprom65
  %40 = load i16, ptr %arrayidx66, align 2, !tbaa !10
  %conv67 = zext i16 %40 to i32
  %and68 = and i32 %conv67, %not
  %conv69 = trunc i32 %and68 to i16
  store i16 %conv69, ptr %arrayidx66, align 2, !tbaa !10
  %41 = load i32, ptr %split1, align 4, !tbaa !8
  store i32 %41, ptr %split2, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %42 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %43 = load i32, ptr %split2, align 4, !tbaa !8
  %idxprom70 = sext i32 %43 to i64
  %arrayidx71 = getelementptr inbounds i32, ptr %42, i64 %idxprom70
  %44 = load i32, ptr %arrayidx71, align 4, !tbaa !8
  %45 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp72 = icmp sgt i32 %44, %45
  br i1 %cmp72, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, ptr %split2, align 4, !tbaa !8
  %inc = add nsw i32 %46, 1
  store i32 %inc, ptr %split2, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %47 = load i64, ptr %longcode, align 8, !tbaa !16
  %xor = xor i64 %47, 27421
  %48 = load i32, ptr %split1, align 4, !tbaa !8
  %49 = load i32, ptr %split2, align 4, !tbaa !8
  %add74 = add nsw i32 %48, %49
  %conv75 = sext i32 %add74 to i64
  %add76 = add nsw i64 %xor, %conv75
  %and77 = and i64 %add76, 32767
  store i64 %and77, ptr %longcode, align 8, !tbaa !16
  %50 = load i32, ptr %split1, align 4, !tbaa !8
  %51 = load i32, ptr %split2, align 4, !tbaa !8
  %cmp78 = icmp eq i32 %50, %51
  br i1 %cmp78, label %if.then80, label %if.else190

if.then80:                                        ; preds = %for.end
  %52 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %53 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv81 = sext i32 %53 to i64
  %54 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %55 = load i32, ptr %split1, align 4, !tbaa !8
  %idxprom82 = sext i32 %55 to i64
  %arrayidx83 = getelementptr inbounds i32, ptr %54, i64 %idxprom82
  %56 = load i32, ptr %arrayidx83, align 4, !tbaa !8
  %conv84 = sext i32 %56 to i64
  %mul85 = mul i64 %conv81, %conv84
  %add.ptr = getelementptr inbounds i16, ptr %52, i64 %mul85
  store ptr %add.ptr, ptr %gptr, align 8, !tbaa !4
  store i32 0, ptr %cell1, align 4, !tbaa !8
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc187, %if.then80
  %57 = load i32, ptr %cell1, align 4, !tbaa !8
  %58 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp87 = icmp slt i32 %57, %58
  br i1 %cmp87, label %for.body89, label %for.end189

for.body89:                                       ; preds = %for.cond86
  %59 = load i32, ptr %cell1, align 4, !tbaa !8
  store i32 %59, ptr %cell2, align 4, !tbaa !8
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc96, %for.body89
  %60 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %61 = load i32, ptr %cell2, align 4, !tbaa !8
  %idxprom91 = sext i32 %61 to i64
  %arrayidx92 = getelementptr inbounds i32, ptr %60, i64 %idxprom91
  %62 = load i32, ptr %arrayidx92, align 4, !tbaa !8
  %63 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp93 = icmp sgt i32 %62, %63
  br i1 %cmp93, label %for.body95, label %for.end98

for.body95:                                       ; preds = %for.cond90
  br label %for.inc96

for.inc96:                                        ; preds = %for.body95
  %64 = load i32, ptr %cell2, align 4, !tbaa !8
  %inc97 = add nsw i32 %64, 1
  store i32 %inc97, ptr %cell2, align 4, !tbaa !8
  br label %for.cond90, !llvm.loop !24

for.end98:                                        ; preds = %for.cond90
  %65 = load i32, ptr %cell1, align 4, !tbaa !8
  %66 = load i32, ptr %cell2, align 4, !tbaa !8
  %cmp99 = icmp eq i32 %65, %66
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %for.end98
  br label %for.inc187

if.end102:                                        ; preds = %for.end98
  %67 = load i32, ptr %cell1, align 4, !tbaa !8
  store i32 %67, ptr %c1, align 4, !tbaa !8
  %68 = load i32, ptr %cell2, align 4, !tbaa !8
  store i32 %68, ptr %c2, align 4, !tbaa !8
  br label %while.cond103

while.cond103:                                    ; preds = %if.end128, %if.end102
  %69 = load i32, ptr %c1, align 4, !tbaa !8
  %70 = load i32, ptr %c2, align 4, !tbaa !8
  %cmp104 = icmp sle i32 %69, %70
  br i1 %cmp104, label %while.body106, label %while.end

while.body106:                                    ; preds = %while.cond103
  %71 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %72 = load i32, ptr %c1, align 4, !tbaa !8
  %idxprom107 = sext i32 %72 to i64
  %arrayidx108 = getelementptr inbounds i32, ptr %71, i64 %idxprom107
  %73 = load i32, ptr %arrayidx108, align 4, !tbaa !8
  store i32 %73, ptr %labc1, align 4, !tbaa !8
  %74 = load ptr, ptr %gptr, align 8, !tbaa !4
  %75 = load i32, ptr %labc1, align 4, !tbaa !8
  %shr109 = ashr i32 %75, 4
  %idxprom110 = sext i32 %shr109 to i64
  %arrayidx111 = getelementptr inbounds i16, ptr %74, i64 %idxprom110
  %76 = load i16, ptr %arrayidx111, align 2, !tbaa !10
  %conv112 = zext i16 %76 to i32
  %77 = load i32, ptr %labc1, align 4, !tbaa !8
  %and113 = and i32 %77, 15
  %idxprom114 = sext i32 %and113 to i64
  %arrayidx115 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom114
  %78 = load i16, ptr %arrayidx115, align 2, !tbaa !10
  %conv116 = zext i16 %78 to i32
  %and117 = and i32 %conv112, %conv116
  %cmp118 = icmp ne i32 %and117, 0
  br i1 %cmp118, label %if.then120, label %if.else

if.then120:                                       ; preds = %while.body106
  %79 = load i32, ptr %c1, align 4, !tbaa !8
  %inc121 = add nsw i32 %79, 1
  store i32 %inc121, ptr %c1, align 4, !tbaa !8
  br label %if.end128

if.else:                                          ; preds = %while.body106
  %80 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %81 = load i32, ptr %c2, align 4, !tbaa !8
  %idxprom122 = sext i32 %81 to i64
  %arrayidx123 = getelementptr inbounds i32, ptr %80, i64 %idxprom122
  %82 = load i32, ptr %arrayidx123, align 4, !tbaa !8
  %83 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %84 = load i32, ptr %c1, align 4, !tbaa !8
  %idxprom124 = sext i32 %84 to i64
  %arrayidx125 = getelementptr inbounds i32, ptr %83, i64 %idxprom124
  store i32 %82, ptr %arrayidx125, align 4, !tbaa !8
  %85 = load i32, ptr %labc1, align 4, !tbaa !8
  %86 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %87 = load i32, ptr %c2, align 4, !tbaa !8
  %idxprom126 = sext i32 %87 to i64
  %arrayidx127 = getelementptr inbounds i32, ptr %86, i64 %idxprom126
  store i32 %85, ptr %arrayidx127, align 4, !tbaa !8
  %88 = load i32, ptr %c2, align 4, !tbaa !8
  %dec = add nsw i32 %88, -1
  store i32 %dec, ptr %c2, align 4, !tbaa !8
  br label %if.end128

if.end128:                                        ; preds = %if.else, %if.then120
  br label %while.cond103, !llvm.loop !25

while.end:                                        ; preds = %while.cond103
  %89 = load i32, ptr %c2, align 4, !tbaa !8
  %90 = load i32, ptr %cell1, align 4, !tbaa !8
  %cmp129 = icmp sge i32 %89, %90
  br i1 %cmp129, label %land.lhs.true, label %if.end186

land.lhs.true:                                    ; preds = %while.end
  %91 = load i32, ptr %c1, align 4, !tbaa !8
  %92 = load i32, ptr %cell2, align 4, !tbaa !8
  %cmp131 = icmp sle i32 %91, %92
  br i1 %cmp131, label %if.then133, label %if.end186

if.then133:                                       ; preds = %land.lhs.true
  %93 = load i32, ptr %level.addr, align 4, !tbaa !8
  %94 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %95 = load i32, ptr %c2, align 4, !tbaa !8
  %idxprom134 = sext i32 %95 to i64
  %arrayidx135 = getelementptr inbounds i32, ptr %94, i64 %idxprom134
  store i32 %93, ptr %arrayidx135, align 4, !tbaa !8
  %96 = load i64, ptr %longcode, align 8, !tbaa !16
  %xor136 = xor i64 %96, 27421
  %97 = load i32, ptr %c2, align 4, !tbaa !8
  %conv137 = sext i32 %97 to i64
  %add138 = add nsw i64 %xor136, %conv137
  %and139 = and i64 %add138, 32767
  store i64 %and139, ptr %longcode, align 8, !tbaa !16
  %98 = load ptr, ptr %numcells.addr, align 8, !tbaa !4
  %99 = load i32, ptr %98, align 4, !tbaa !8
  %inc140 = add nsw i32 %99, 1
  store i32 %inc140, ptr %98, align 4, !tbaa !8
  %100 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %101 = load i32, ptr %cell1, align 4, !tbaa !8
  %shr141 = ashr i32 %101, 4
  %idxprom142 = sext i32 %shr141 to i64
  %arrayidx143 = getelementptr inbounds i16, ptr %100, i64 %idxprom142
  %102 = load i16, ptr %arrayidx143, align 2, !tbaa !10
  %conv144 = zext i16 %102 to i32
  %103 = load i32, ptr %cell1, align 4, !tbaa !8
  %and145 = and i32 %103, 15
  %idxprom146 = sext i32 %and145 to i64
  %arrayidx147 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom146
  %104 = load i16, ptr %arrayidx147, align 2, !tbaa !10
  %conv148 = zext i16 %104 to i32
  %and149 = and i32 %conv144, %conv148
  %cmp150 = icmp ne i32 %and149, 0
  br i1 %cmp150, label %if.then156, label %lor.lhs.false152

lor.lhs.false152:                                 ; preds = %if.then133
  %105 = load i32, ptr %c2, align 4, !tbaa !8
  %106 = load i32, ptr %cell1, align 4, !tbaa !8
  %sub = sub nsw i32 %105, %106
  %107 = load i32, ptr %cell2, align 4, !tbaa !8
  %108 = load i32, ptr %c1, align 4, !tbaa !8
  %sub153 = sub nsw i32 %107, %108
  %cmp154 = icmp sge i32 %sub, %sub153
  br i1 %cmp154, label %if.then156, label %if.else170

if.then156:                                       ; preds = %lor.lhs.false152, %if.then133
  %109 = load i32, ptr %c1, align 4, !tbaa !8
  %and157 = and i32 %109, 15
  %idxprom158 = sext i32 %and157 to i64
  %arrayidx159 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom158
  %110 = load i16, ptr %arrayidx159, align 2, !tbaa !10
  %conv160 = zext i16 %110 to i32
  %111 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %112 = load i32, ptr %c1, align 4, !tbaa !8
  %shr161 = ashr i32 %112, 4
  %idxprom162 = sext i32 %shr161 to i64
  %arrayidx163 = getelementptr inbounds i16, ptr %111, i64 %idxprom162
  %113 = load i16, ptr %arrayidx163, align 2, !tbaa !10
  %conv164 = zext i16 %113 to i32
  %or = or i32 %conv164, %conv160
  %conv165 = trunc i32 %or to i16
  store i16 %conv165, ptr %arrayidx163, align 2, !tbaa !10
  %114 = load i32, ptr %c1, align 4, !tbaa !8
  %115 = load i32, ptr %cell2, align 4, !tbaa !8
  %cmp166 = icmp eq i32 %114, %115
  br i1 %cmp166, label %if.then168, label %if.end169

if.then168:                                       ; preds = %if.then156
  %116 = load i32, ptr %c1, align 4, !tbaa !8
  store i32 %116, ptr %hint, align 4, !tbaa !8
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %if.then156
  br label %if.end185

if.else170:                                       ; preds = %lor.lhs.false152
  %117 = load i32, ptr %cell1, align 4, !tbaa !8
  %and171 = and i32 %117, 15
  %idxprom172 = sext i32 %and171 to i64
  %arrayidx173 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom172
  %118 = load i16, ptr %arrayidx173, align 2, !tbaa !10
  %conv174 = zext i16 %118 to i32
  %119 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %120 = load i32, ptr %cell1, align 4, !tbaa !8
  %shr175 = ashr i32 %120, 4
  %idxprom176 = sext i32 %shr175 to i64
  %arrayidx177 = getelementptr inbounds i16, ptr %119, i64 %idxprom176
  %121 = load i16, ptr %arrayidx177, align 2, !tbaa !10
  %conv178 = zext i16 %121 to i32
  %or179 = or i32 %conv178, %conv174
  %conv180 = trunc i32 %or179 to i16
  store i16 %conv180, ptr %arrayidx177, align 2, !tbaa !10
  %122 = load i32, ptr %c2, align 4, !tbaa !8
  %123 = load i32, ptr %cell1, align 4, !tbaa !8
  %cmp181 = icmp eq i32 %122, %123
  br i1 %cmp181, label %if.then183, label %if.end184

if.then183:                                       ; preds = %if.else170
  %124 = load i32, ptr %cell1, align 4, !tbaa !8
  store i32 %124, ptr %hint, align 4, !tbaa !8
  br label %if.end184

if.end184:                                        ; preds = %if.then183, %if.else170
  br label %if.end185

if.end185:                                        ; preds = %if.end184, %if.end169
  br label %if.end186

if.end186:                                        ; preds = %if.end185, %land.lhs.true, %while.end
  br label %for.inc187

for.inc187:                                       ; preds = %if.end186, %if.then101
  %125 = load i32, ptr %cell2, align 4, !tbaa !8
  %add188 = add nsw i32 %125, 1
  store i32 %add188, ptr %cell1, align 4, !tbaa !8
  br label %for.cond86, !llvm.loop !26

for.end189:                                       ; preds = %for.cond86
  br label %if.end468

if.else190:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %es) #6
  %126 = load ptr, ptr @workset, align 8, !tbaa !4
  %127 = load i32, ptr %m.addr, align 4, !tbaa !8
  %idx.ext = sext i32 %127 to i64
  %add.ptr191 = getelementptr inbounds i16, ptr %126, i64 %idx.ext
  store ptr %add.ptr191, ptr %es, align 8, !tbaa !4
  br label %for.cond192

for.cond192:                                      ; preds = %for.body195, %if.else190
  %128 = load ptr, ptr %es, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i16, ptr %128, i32 -1
  store ptr %incdec.ptr, ptr %es, align 8, !tbaa !4
  %129 = load ptr, ptr @workset, align 8, !tbaa !4
  %cmp193 = icmp uge ptr %incdec.ptr, %129
  br i1 %cmp193, label %for.body195, label %for.end196

for.body195:                                      ; preds = %for.cond192
  %130 = load ptr, ptr %es, align 8, !tbaa !4
  store i16 0, ptr %130, align 2, !tbaa !10
  br label %for.cond192, !llvm.loop !27

for.end196:                                       ; preds = %for.cond192
  call void @llvm.lifetime.end.p0(i64 8, ptr %es) #6
  %131 = load i32, ptr %split1, align 4, !tbaa !8
  store i32 %131, ptr %i, align 4, !tbaa !8
  br label %for.cond197

for.cond197:                                      ; preds = %for.inc215, %for.end196
  %132 = load i32, ptr %i, align 4, !tbaa !8
  %133 = load i32, ptr %split2, align 4, !tbaa !8
  %cmp198 = icmp sle i32 %132, %133
  br i1 %cmp198, label %for.body200, label %for.end217

for.body200:                                      ; preds = %for.cond197
  %134 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %135 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom201 = sext i32 %135 to i64
  %arrayidx202 = getelementptr inbounds i32, ptr %134, i64 %idxprom201
  %136 = load i32, ptr %arrayidx202, align 4, !tbaa !8
  %and203 = and i32 %136, 15
  %idxprom204 = sext i32 %and203 to i64
  %arrayidx205 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom204
  %137 = load i16, ptr %arrayidx205, align 2, !tbaa !10
  %conv206 = zext i16 %137 to i32
  %138 = load ptr, ptr @workset, align 8, !tbaa !4
  %139 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %140 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom207 = sext i32 %140 to i64
  %arrayidx208 = getelementptr inbounds i32, ptr %139, i64 %idxprom207
  %141 = load i32, ptr %arrayidx208, align 4, !tbaa !8
  %shr209 = ashr i32 %141, 4
  %idxprom210 = sext i32 %shr209 to i64
  %arrayidx211 = getelementptr inbounds i16, ptr %138, i64 %idxprom210
  %142 = load i16, ptr %arrayidx211, align 2, !tbaa !10
  %conv212 = zext i16 %142 to i32
  %or213 = or i32 %conv212, %conv206
  %conv214 = trunc i32 %or213 to i16
  store i16 %conv214, ptr %arrayidx211, align 2, !tbaa !10
  br label %for.inc215

for.inc215:                                       ; preds = %for.body200
  %143 = load i32, ptr %i, align 4, !tbaa !8
  %inc216 = add nsw i32 %143, 1
  store i32 %inc216, ptr %i, align 4, !tbaa !8
  br label %for.cond197, !llvm.loop !28

for.end217:                                       ; preds = %for.cond197
  %144 = load i64, ptr %longcode, align 8, !tbaa !16
  %xor218 = xor i64 %144, 27421
  %145 = load i32, ptr %split2, align 4, !tbaa !8
  %146 = load i32, ptr %split1, align 4, !tbaa !8
  %sub219 = sub nsw i32 %145, %146
  %add220 = add nsw i32 %sub219, 1
  %conv221 = sext i32 %add220 to i64
  %add222 = add nsw i64 %xor218, %conv221
  %and223 = and i64 %add222, 32767
  store i64 %and223, ptr %longcode, align 8, !tbaa !16
  store i32 0, ptr %cell1, align 4, !tbaa !8
  br label %for.cond224

for.cond224:                                      ; preds = %for.inc465, %for.end217
  %147 = load i32, ptr %cell1, align 4, !tbaa !8
  %148 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp225 = icmp slt i32 %147, %148
  br i1 %cmp225, label %for.body227, label %for.end467

for.body227:                                      ; preds = %for.cond224
  %149 = load i32, ptr %cell1, align 4, !tbaa !8
  store i32 %149, ptr %cell2, align 4, !tbaa !8
  br label %for.cond228

for.cond228:                                      ; preds = %for.inc234, %for.body227
  %150 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %151 = load i32, ptr %cell2, align 4, !tbaa !8
  %idxprom229 = sext i32 %151 to i64
  %arrayidx230 = getelementptr inbounds i32, ptr %150, i64 %idxprom229
  %152 = load i32, ptr %arrayidx230, align 4, !tbaa !8
  %153 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp231 = icmp sgt i32 %152, %153
  br i1 %cmp231, label %for.body233, label %for.end236

for.body233:                                      ; preds = %for.cond228
  br label %for.inc234

for.inc234:                                       ; preds = %for.body233
  %154 = load i32, ptr %cell2, align 4, !tbaa !8
  %inc235 = add nsw i32 %154, 1
  store i32 %inc235, ptr %cell2, align 4, !tbaa !8
  br label %for.cond228, !llvm.loop !29

for.end236:                                       ; preds = %for.cond228
  %155 = load i32, ptr %cell1, align 4, !tbaa !8
  %156 = load i32, ptr %cell2, align 4, !tbaa !8
  %cmp237 = icmp eq i32 %155, %156
  br i1 %cmp237, label %if.then239, label %if.end240

if.then239:                                       ; preds = %for.end236
  br label %for.inc465

if.end240:                                        ; preds = %for.end236
  %157 = load i32, ptr %cell1, align 4, !tbaa !8
  store i32 %157, ptr %i, align 4, !tbaa !8
  %158 = load ptr, ptr @workset, align 8, !tbaa !4
  store ptr %158, ptr %set1, align 8, !tbaa !4
  %159 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %160 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv241 = sext i32 %160 to i64
  %161 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %162 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom242 = sext i32 %162 to i64
  %arrayidx243 = getelementptr inbounds i32, ptr %161, i64 %idxprom242
  %163 = load i32, ptr %arrayidx243, align 4, !tbaa !8
  %conv244 = sext i32 %163 to i64
  %mul245 = mul i64 %conv241, %conv244
  %add.ptr246 = getelementptr inbounds i16, ptr %159, i64 %mul245
  store ptr %add.ptr246, ptr %set2, align 8, !tbaa !4
  store i32 0, ptr %cnt, align 4, !tbaa !8
  %164 = load i32, ptr %m.addr, align 4, !tbaa !8
  store i32 %164, ptr %c1, align 4, !tbaa !8
  br label %for.cond247

for.cond247:                                      ; preds = %if.end273, %if.end240
  %165 = load i32, ptr %c1, align 4, !tbaa !8
  %dec248 = add nsw i32 %165, -1
  store i32 %dec248, ptr %c1, align 4, !tbaa !8
  %cmp249 = icmp sge i32 %dec248, 0
  br i1 %cmp249, label %for.body251, label %for.end274

for.body251:                                      ; preds = %for.cond247
  %166 = load ptr, ptr %set1, align 8, !tbaa !4
  %incdec.ptr252 = getelementptr inbounds i16, ptr %166, i32 1
  store ptr %incdec.ptr252, ptr %set1, align 8, !tbaa !4
  %167 = load i16, ptr %166, align 2, !tbaa !10
  %conv253 = zext i16 %167 to i32
  %168 = load ptr, ptr %set2, align 8, !tbaa !4
  %incdec.ptr254 = getelementptr inbounds i16, ptr %168, i32 1
  store ptr %incdec.ptr254, ptr %set2, align 8, !tbaa !4
  %169 = load i16, ptr %168, align 2, !tbaa !10
  %conv255 = zext i16 %169 to i32
  %and256 = and i32 %conv253, %conv255
  %conv257 = trunc i32 %and256 to i16
  store i16 %conv257, ptr %x, align 2, !tbaa !10
  %conv258 = zext i16 %conv257 to i32
  %cmp259 = icmp ne i32 %conv258, 0
  br i1 %cmp259, label %if.then261, label %if.end273

if.then261:                                       ; preds = %for.body251
  %170 = load i16, ptr %x, align 2, !tbaa !10
  %conv262 = zext i16 %170 to i32
  %shr263 = ashr i32 %conv262, 8
  %and264 = and i32 %shr263, 255
  %idxprom265 = sext i32 %and264 to i64
  %arrayidx266 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom265
  %171 = load i32, ptr %arrayidx266, align 4, !tbaa !8
  %172 = load i16, ptr %x, align 2, !tbaa !10
  %conv267 = zext i16 %172 to i32
  %and268 = and i32 %conv267, 255
  %idxprom269 = sext i32 %and268 to i64
  %arrayidx270 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom269
  %173 = load i32, ptr %arrayidx270, align 4, !tbaa !8
  %add271 = add nsw i32 %171, %173
  %174 = load i32, ptr %cnt, align 4, !tbaa !8
  %add272 = add nsw i32 %174, %add271
  store i32 %add272, ptr %cnt, align 4, !tbaa !8
  br label %if.end273

if.end273:                                        ; preds = %if.then261, %for.body251
  br label %for.cond247, !llvm.loop !30

for.end274:                                       ; preds = %for.cond247
  %175 = load i32, ptr %cnt, align 4, !tbaa !8
  store i32 %175, ptr %bmax, align 4, !tbaa !8
  store i32 %175, ptr %bmin, align 4, !tbaa !8
  %176 = load ptr, ptr %count.addr, align 8, !tbaa !4
  %177 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom275 = sext i32 %177 to i64
  %arrayidx276 = getelementptr inbounds i32, ptr %176, i64 %idxprom275
  store i32 %175, ptr %arrayidx276, align 4, !tbaa !8
  %178 = load ptr, ptr @bucket, align 8, !tbaa !4
  %179 = load i32, ptr %cnt, align 4, !tbaa !8
  %idxprom277 = sext i32 %179 to i64
  %arrayidx278 = getelementptr inbounds i32, ptr %178, i64 %idxprom277
  store i32 1, ptr %arrayidx278, align 4, !tbaa !8
  br label %while.cond279

while.cond279:                                    ; preds = %while.end333, %for.end274
  %180 = load i32, ptr %i, align 4, !tbaa !8
  %inc280 = add nsw i32 %180, 1
  store i32 %inc280, ptr %i, align 4, !tbaa !8
  %181 = load i32, ptr %cell2, align 4, !tbaa !8
  %cmp281 = icmp sle i32 %inc280, %181
  br i1 %cmp281, label %while.body283, label %while.end339

while.body283:                                    ; preds = %while.cond279
  %182 = load ptr, ptr @workset, align 8, !tbaa !4
  store ptr %182, ptr %set1, align 8, !tbaa !4
  %183 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %184 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv284 = sext i32 %184 to i64
  %185 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %186 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom285 = sext i32 %186 to i64
  %arrayidx286 = getelementptr inbounds i32, ptr %185, i64 %idxprom285
  %187 = load i32, ptr %arrayidx286, align 4, !tbaa !8
  %conv287 = sext i32 %187 to i64
  %mul288 = mul i64 %conv284, %conv287
  %add.ptr289 = getelementptr inbounds i16, ptr %183, i64 %mul288
  store ptr %add.ptr289, ptr %set2, align 8, !tbaa !4
  store i32 0, ptr %cnt, align 4, !tbaa !8
  %188 = load i32, ptr %m.addr, align 4, !tbaa !8
  store i32 %188, ptr %c1, align 4, !tbaa !8
  br label %for.cond290

for.cond290:                                      ; preds = %if.end316, %while.body283
  %189 = load i32, ptr %c1, align 4, !tbaa !8
  %dec291 = add nsw i32 %189, -1
  store i32 %dec291, ptr %c1, align 4, !tbaa !8
  %cmp292 = icmp sge i32 %dec291, 0
  br i1 %cmp292, label %for.body294, label %for.end317

for.body294:                                      ; preds = %for.cond290
  %190 = load ptr, ptr %set1, align 8, !tbaa !4
  %incdec.ptr295 = getelementptr inbounds i16, ptr %190, i32 1
  store ptr %incdec.ptr295, ptr %set1, align 8, !tbaa !4
  %191 = load i16, ptr %190, align 2, !tbaa !10
  %conv296 = zext i16 %191 to i32
  %192 = load ptr, ptr %set2, align 8, !tbaa !4
  %incdec.ptr297 = getelementptr inbounds i16, ptr %192, i32 1
  store ptr %incdec.ptr297, ptr %set2, align 8, !tbaa !4
  %193 = load i16, ptr %192, align 2, !tbaa !10
  %conv298 = zext i16 %193 to i32
  %and299 = and i32 %conv296, %conv298
  %conv300 = trunc i32 %and299 to i16
  store i16 %conv300, ptr %x, align 2, !tbaa !10
  %conv301 = zext i16 %conv300 to i32
  %cmp302 = icmp ne i32 %conv301, 0
  br i1 %cmp302, label %if.then304, label %if.end316

if.then304:                                       ; preds = %for.body294
  %194 = load i16, ptr %x, align 2, !tbaa !10
  %conv305 = zext i16 %194 to i32
  %shr306 = ashr i32 %conv305, 8
  %and307 = and i32 %shr306, 255
  %idxprom308 = sext i32 %and307 to i64
  %arrayidx309 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom308
  %195 = load i32, ptr %arrayidx309, align 4, !tbaa !8
  %196 = load i16, ptr %x, align 2, !tbaa !10
  %conv310 = zext i16 %196 to i32
  %and311 = and i32 %conv310, 255
  %idxprom312 = sext i32 %and311 to i64
  %arrayidx313 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom312
  %197 = load i32, ptr %arrayidx313, align 4, !tbaa !8
  %add314 = add nsw i32 %195, %197
  %198 = load i32, ptr %cnt, align 4, !tbaa !8
  %add315 = add nsw i32 %198, %add314
  store i32 %add315, ptr %cnt, align 4, !tbaa !8
  br label %if.end316

if.end316:                                        ; preds = %if.then304, %for.body294
  br label %for.cond290, !llvm.loop !31

for.end317:                                       ; preds = %for.cond290
  br label %while.cond318

while.cond318:                                    ; preds = %while.body321, %for.end317
  %199 = load i32, ptr %bmin, align 4, !tbaa !8
  %200 = load i32, ptr %cnt, align 4, !tbaa !8
  %cmp319 = icmp sgt i32 %199, %200
  br i1 %cmp319, label %while.body321, label %while.end325

while.body321:                                    ; preds = %while.cond318
  %201 = load ptr, ptr @bucket, align 8, !tbaa !4
  %202 = load i32, ptr %bmin, align 4, !tbaa !8
  %dec322 = add nsw i32 %202, -1
  store i32 %dec322, ptr %bmin, align 4, !tbaa !8
  %idxprom323 = sext i32 %dec322 to i64
  %arrayidx324 = getelementptr inbounds i32, ptr %201, i64 %idxprom323
  store i32 0, ptr %arrayidx324, align 4, !tbaa !8
  br label %while.cond318, !llvm.loop !32

while.end325:                                     ; preds = %while.cond318
  br label %while.cond326

while.cond326:                                    ; preds = %while.body329, %while.end325
  %203 = load i32, ptr %bmax, align 4, !tbaa !8
  %204 = load i32, ptr %cnt, align 4, !tbaa !8
  %cmp327 = icmp slt i32 %203, %204
  br i1 %cmp327, label %while.body329, label %while.end333

while.body329:                                    ; preds = %while.cond326
  %205 = load ptr, ptr @bucket, align 8, !tbaa !4
  %206 = load i32, ptr %bmax, align 4, !tbaa !8
  %inc330 = add nsw i32 %206, 1
  store i32 %inc330, ptr %bmax, align 4, !tbaa !8
  %idxprom331 = sext i32 %inc330 to i64
  %arrayidx332 = getelementptr inbounds i32, ptr %205, i64 %idxprom331
  store i32 0, ptr %arrayidx332, align 4, !tbaa !8
  br label %while.cond326, !llvm.loop !33

while.end333:                                     ; preds = %while.cond326
  %207 = load ptr, ptr @bucket, align 8, !tbaa !4
  %208 = load i32, ptr %cnt, align 4, !tbaa !8
  %idxprom334 = sext i32 %208 to i64
  %arrayidx335 = getelementptr inbounds i32, ptr %207, i64 %idxprom334
  %209 = load i32, ptr %arrayidx335, align 4, !tbaa !8
  %inc336 = add nsw i32 %209, 1
  store i32 %inc336, ptr %arrayidx335, align 4, !tbaa !8
  %210 = load i32, ptr %cnt, align 4, !tbaa !8
  %211 = load ptr, ptr %count.addr, align 8, !tbaa !4
  %212 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom337 = sext i32 %212 to i64
  %arrayidx338 = getelementptr inbounds i32, ptr %211, i64 %idxprom337
  store i32 %210, ptr %arrayidx338, align 4, !tbaa !8
  br label %while.cond279, !llvm.loop !34

while.end339:                                     ; preds = %while.cond279
  %213 = load i32, ptr %bmin, align 4, !tbaa !8
  %214 = load i32, ptr %bmax, align 4, !tbaa !8
  %cmp340 = icmp eq i32 %213, %214
  br i1 %cmp340, label %if.then342, label %if.end348

if.then342:                                       ; preds = %while.end339
  %215 = load i64, ptr %longcode, align 8, !tbaa !16
  %xor343 = xor i64 %215, 27421
  %216 = load i32, ptr %bmin, align 4, !tbaa !8
  %217 = load i32, ptr %cell1, align 4, !tbaa !8
  %add344 = add nsw i32 %216, %217
  %conv345 = sext i32 %add344 to i64
  %add346 = add nsw i64 %xor343, %conv345
  %and347 = and i64 %add346, 32767
  store i64 %and347, ptr %longcode, align 8, !tbaa !16
  br label %for.inc465

if.end348:                                        ; preds = %while.end339
  %218 = load i32, ptr %cell1, align 4, !tbaa !8
  store i32 %218, ptr %c1, align 4, !tbaa !8
  store i32 -1, ptr %maxcell, align 4, !tbaa !8
  %219 = load i32, ptr %bmin, align 4, !tbaa !8
  store i32 %219, ptr %i, align 4, !tbaa !8
  br label %for.cond349

for.cond349:                                      ; preds = %for.inc401, %if.end348
  %220 = load i32, ptr %i, align 4, !tbaa !8
  %221 = load i32, ptr %bmax, align 4, !tbaa !8
  %cmp350 = icmp sle i32 %220, %221
  br i1 %cmp350, label %for.body352, label %for.end403

for.body352:                                      ; preds = %for.cond349
  %222 = load ptr, ptr @bucket, align 8, !tbaa !4
  %223 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom353 = sext i32 %223 to i64
  %arrayidx354 = getelementptr inbounds i32, ptr %222, i64 %idxprom353
  %224 = load i32, ptr %arrayidx354, align 4, !tbaa !8
  %tobool355 = icmp ne i32 %224, 0
  br i1 %tobool355, label %if.then356, label %if.end400

if.then356:                                       ; preds = %for.body352
  %225 = load i32, ptr %c1, align 4, !tbaa !8
  %226 = load ptr, ptr @bucket, align 8, !tbaa !4
  %227 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom357 = sext i32 %227 to i64
  %arrayidx358 = getelementptr inbounds i32, ptr %226, i64 %idxprom357
  %228 = load i32, ptr %arrayidx358, align 4, !tbaa !8
  %add359 = add nsw i32 %225, %228
  store i32 %add359, ptr %c2, align 4, !tbaa !8
  %229 = load i32, ptr %c1, align 4, !tbaa !8
  %230 = load ptr, ptr @bucket, align 8, !tbaa !4
  %231 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom360 = sext i32 %231 to i64
  %arrayidx361 = getelementptr inbounds i32, ptr %230, i64 %idxprom360
  store i32 %229, ptr %arrayidx361, align 4, !tbaa !8
  %232 = load i64, ptr %longcode, align 8, !tbaa !16
  %xor362 = xor i64 %232, 27421
  %233 = load i32, ptr %i, align 4, !tbaa !8
  %234 = load i32, ptr %c1, align 4, !tbaa !8
  %add363 = add nsw i32 %233, %234
  %conv364 = sext i32 %add363 to i64
  %add365 = add nsw i64 %xor362, %conv364
  %and366 = and i64 %add365, 32767
  store i64 %and366, ptr %longcode, align 8, !tbaa !16
  %235 = load i32, ptr %c2, align 4, !tbaa !8
  %236 = load i32, ptr %c1, align 4, !tbaa !8
  %sub367 = sub nsw i32 %235, %236
  %237 = load i32, ptr %maxcell, align 4, !tbaa !8
  %cmp368 = icmp sgt i32 %sub367, %237
  br i1 %cmp368, label %if.then370, label %if.end372

if.then370:                                       ; preds = %if.then356
  %238 = load i32, ptr %c2, align 4, !tbaa !8
  %239 = load i32, ptr %c1, align 4, !tbaa !8
  %sub371 = sub nsw i32 %238, %239
  store i32 %sub371, ptr %maxcell, align 4, !tbaa !8
  %240 = load i32, ptr %c1, align 4, !tbaa !8
  store i32 %240, ptr %maxpos, align 4, !tbaa !8
  br label %if.end372

if.end372:                                        ; preds = %if.then370, %if.then356
  %241 = load i32, ptr %c1, align 4, !tbaa !8
  %242 = load i32, ptr %cell1, align 4, !tbaa !8
  %cmp373 = icmp ne i32 %241, %242
  br i1 %cmp373, label %if.then375, label %if.end392

if.then375:                                       ; preds = %if.end372
  %243 = load i32, ptr %c1, align 4, !tbaa !8
  %and376 = and i32 %243, 15
  %idxprom377 = sext i32 %and376 to i64
  %arrayidx378 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom377
  %244 = load i16, ptr %arrayidx378, align 2, !tbaa !10
  %conv379 = zext i16 %244 to i32
  %245 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %246 = load i32, ptr %c1, align 4, !tbaa !8
  %shr380 = ashr i32 %246, 4
  %idxprom381 = sext i32 %shr380 to i64
  %arrayidx382 = getelementptr inbounds i16, ptr %245, i64 %idxprom381
  %247 = load i16, ptr %arrayidx382, align 2, !tbaa !10
  %conv383 = zext i16 %247 to i32
  %or384 = or i32 %conv383, %conv379
  %conv385 = trunc i32 %or384 to i16
  store i16 %conv385, ptr %arrayidx382, align 2, !tbaa !10
  %248 = load i32, ptr %c2, align 4, !tbaa !8
  %249 = load i32, ptr %c1, align 4, !tbaa !8
  %sub386 = sub nsw i32 %248, %249
  %cmp387 = icmp eq i32 %sub386, 1
  br i1 %cmp387, label %if.then389, label %if.end390

if.then389:                                       ; preds = %if.then375
  %250 = load i32, ptr %c1, align 4, !tbaa !8
  store i32 %250, ptr %hint, align 4, !tbaa !8
  br label %if.end390

if.end390:                                        ; preds = %if.then389, %if.then375
  %251 = load ptr, ptr %numcells.addr, align 8, !tbaa !4
  %252 = load i32, ptr %251, align 4, !tbaa !8
  %inc391 = add nsw i32 %252, 1
  store i32 %inc391, ptr %251, align 4, !tbaa !8
  br label %if.end392

if.end392:                                        ; preds = %if.end390, %if.end372
  %253 = load i32, ptr %c2, align 4, !tbaa !8
  %254 = load i32, ptr %cell2, align 4, !tbaa !8
  %cmp393 = icmp sle i32 %253, %254
  br i1 %cmp393, label %if.then395, label %if.end399

if.then395:                                       ; preds = %if.end392
  %255 = load i32, ptr %level.addr, align 4, !tbaa !8
  %256 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %257 = load i32, ptr %c2, align 4, !tbaa !8
  %sub396 = sub nsw i32 %257, 1
  %idxprom397 = sext i32 %sub396 to i64
  %arrayidx398 = getelementptr inbounds i32, ptr %256, i64 %idxprom397
  store i32 %255, ptr %arrayidx398, align 4, !tbaa !8
  br label %if.end399

if.end399:                                        ; preds = %if.then395, %if.end392
  %258 = load i32, ptr %c2, align 4, !tbaa !8
  store i32 %258, ptr %c1, align 4, !tbaa !8
  br label %if.end400

if.end400:                                        ; preds = %if.end399, %for.body352
  br label %for.inc401

for.inc401:                                       ; preds = %if.end400
  %259 = load i32, ptr %i, align 4, !tbaa !8
  %inc402 = add nsw i32 %259, 1
  store i32 %inc402, ptr %i, align 4, !tbaa !8
  br label %for.cond349, !llvm.loop !35

for.end403:                                       ; preds = %for.cond349
  %260 = load i32, ptr %cell1, align 4, !tbaa !8
  store i32 %260, ptr %i, align 4, !tbaa !8
  br label %for.cond404

for.cond404:                                      ; preds = %for.inc417, %for.end403
  %261 = load i32, ptr %i, align 4, !tbaa !8
  %262 = load i32, ptr %cell2, align 4, !tbaa !8
  %cmp405 = icmp sle i32 %261, %262
  br i1 %cmp405, label %for.body407, label %for.end419

for.body407:                                      ; preds = %for.cond404
  %263 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %264 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom408 = sext i32 %264 to i64
  %arrayidx409 = getelementptr inbounds i32, ptr %263, i64 %idxprom408
  %265 = load i32, ptr %arrayidx409, align 4, !tbaa !8
  %266 = load ptr, ptr @workperm, align 8, !tbaa !4
  %267 = load ptr, ptr @bucket, align 8, !tbaa !4
  %268 = load ptr, ptr %count.addr, align 8, !tbaa !4
  %269 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom410 = sext i32 %269 to i64
  %arrayidx411 = getelementptr inbounds i32, ptr %268, i64 %idxprom410
  %270 = load i32, ptr %arrayidx411, align 4, !tbaa !8
  %idxprom412 = sext i32 %270 to i64
  %arrayidx413 = getelementptr inbounds i32, ptr %267, i64 %idxprom412
  %271 = load i32, ptr %arrayidx413, align 4, !tbaa !8
  %inc414 = add nsw i32 %271, 1
  store i32 %inc414, ptr %arrayidx413, align 4, !tbaa !8
  %idxprom415 = sext i32 %271 to i64
  %arrayidx416 = getelementptr inbounds i32, ptr %266, i64 %idxprom415
  store i32 %265, ptr %arrayidx416, align 4, !tbaa !8
  br label %for.inc417

for.inc417:                                       ; preds = %for.body407
  %272 = load i32, ptr %i, align 4, !tbaa !8
  %inc418 = add nsw i32 %272, 1
  store i32 %inc418, ptr %i, align 4, !tbaa !8
  br label %for.cond404, !llvm.loop !36

for.end419:                                       ; preds = %for.cond404
  %273 = load i32, ptr %cell1, align 4, !tbaa !8
  store i32 %273, ptr %i, align 4, !tbaa !8
  br label %for.cond420

for.cond420:                                      ; preds = %for.inc428, %for.end419
  %274 = load i32, ptr %i, align 4, !tbaa !8
  %275 = load i32, ptr %cell2, align 4, !tbaa !8
  %cmp421 = icmp sle i32 %274, %275
  br i1 %cmp421, label %for.body423, label %for.end430

for.body423:                                      ; preds = %for.cond420
  %276 = load ptr, ptr @workperm, align 8, !tbaa !4
  %277 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom424 = sext i32 %277 to i64
  %arrayidx425 = getelementptr inbounds i32, ptr %276, i64 %idxprom424
  %278 = load i32, ptr %arrayidx425, align 4, !tbaa !8
  %279 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %280 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom426 = sext i32 %280 to i64
  %arrayidx427 = getelementptr inbounds i32, ptr %279, i64 %idxprom426
  store i32 %278, ptr %arrayidx427, align 4, !tbaa !8
  br label %for.inc428

for.inc428:                                       ; preds = %for.body423
  %281 = load i32, ptr %i, align 4, !tbaa !8
  %inc429 = add nsw i32 %281, 1
  store i32 %inc429, ptr %i, align 4, !tbaa !8
  br label %for.cond420, !llvm.loop !37

for.end430:                                       ; preds = %for.cond420
  %282 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %283 = load i32, ptr %cell1, align 4, !tbaa !8
  %shr431 = ashr i32 %283, 4
  %idxprom432 = sext i32 %shr431 to i64
  %arrayidx433 = getelementptr inbounds i16, ptr %282, i64 %idxprom432
  %284 = load i16, ptr %arrayidx433, align 2, !tbaa !10
  %conv434 = zext i16 %284 to i32
  %285 = load i32, ptr %cell1, align 4, !tbaa !8
  %and435 = and i32 %285, 15
  %idxprom436 = sext i32 %and435 to i64
  %arrayidx437 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom436
  %286 = load i16, ptr %arrayidx437, align 2, !tbaa !10
  %conv438 = zext i16 %286 to i32
  %and439 = and i32 %conv434, %conv438
  %cmp440 = icmp ne i32 %and439, 0
  br i1 %cmp440, label %if.end464, label %if.then442

if.then442:                                       ; preds = %for.end430
  %287 = load i32, ptr %cell1, align 4, !tbaa !8
  %and443 = and i32 %287, 15
  %idxprom444 = sext i32 %and443 to i64
  %arrayidx445 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom444
  %288 = load i16, ptr %arrayidx445, align 2, !tbaa !10
  %conv446 = zext i16 %288 to i32
  %289 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %290 = load i32, ptr %cell1, align 4, !tbaa !8
  %shr447 = ashr i32 %290, 4
  %idxprom448 = sext i32 %shr447 to i64
  %arrayidx449 = getelementptr inbounds i16, ptr %289, i64 %idxprom448
  %291 = load i16, ptr %arrayidx449, align 2, !tbaa !10
  %conv450 = zext i16 %291 to i32
  %or451 = or i32 %conv450, %conv446
  %conv452 = trunc i32 %or451 to i16
  store i16 %conv452, ptr %arrayidx449, align 2, !tbaa !10
  %292 = load i32, ptr %maxpos, align 4, !tbaa !8
  %and453 = and i32 %292, 15
  %idxprom454 = sext i32 %and453 to i64
  %arrayidx455 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom454
  %293 = load i16, ptr %arrayidx455, align 2, !tbaa !10
  %conv456 = zext i16 %293 to i32
  %not457 = xor i32 %conv456, -1
  %294 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %295 = load i32, ptr %maxpos, align 4, !tbaa !8
  %shr458 = ashr i32 %295, 4
  %idxprom459 = sext i32 %shr458 to i64
  %arrayidx460 = getelementptr inbounds i16, ptr %294, i64 %idxprom459
  %296 = load i16, ptr %arrayidx460, align 2, !tbaa !10
  %conv461 = zext i16 %296 to i32
  %and462 = and i32 %conv461, %not457
  %conv463 = trunc i32 %and462 to i16
  store i16 %conv463, ptr %arrayidx460, align 2, !tbaa !10
  br label %if.end464

if.end464:                                        ; preds = %if.then442, %for.end430
  br label %for.inc465

for.inc465:                                       ; preds = %if.end464, %if.then342, %if.then239
  %297 = load i32, ptr %cell2, align 4, !tbaa !8
  %add466 = add nsw i32 %297, 1
  store i32 %add466, ptr %cell1, align 4, !tbaa !8
  br label %for.cond224, !llvm.loop !38

for.end467:                                       ; preds = %for.cond224
  br label %if.end468

if.end468:                                        ; preds = %for.end467, %for.end189
  br label %while.cond, !llvm.loop !39

while.end469:                                     ; preds = %land.end
  %298 = load i64, ptr %longcode, align 8, !tbaa !16
  %xor470 = xor i64 %298, 27421
  %299 = load ptr, ptr %numcells.addr, align 8, !tbaa !4
  %300 = load i32, ptr %299, align 4, !tbaa !8
  %conv471 = sext i32 %300 to i64
  %add472 = add nsw i64 %xor470, %conv471
  %and473 = and i64 %add472, 32767
  store i64 %and473, ptr %longcode, align 8, !tbaa !16
  %301 = load i64, ptr %longcode, align 8, !tbaa !16
  %rem = srem i64 %301, 32767
  %conv474 = trunc i64 %rem to i32
  %302 = load ptr, ptr %code.addr, align 8, !tbaa !4
  store i32 %conv474, ptr %302, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %hint) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxpos) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxcell) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %gptr) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %longcode) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %bmax) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %bmin) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %cell2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %cell1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %split2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %split1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %set2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %set1) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr %x) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %labc1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %c2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %c1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret void
}

; Function Attrs: nounwind uwtable
define void @refine1(ptr noundef %g, ptr noundef %lab, ptr noundef %ptn, i32 noundef %level, ptr noundef %numcells, ptr noundef %count, ptr noundef %active, ptr noundef %code, i32 noundef %m, i32 noundef %n) #0 {
entry:
  %g.addr = alloca ptr, align 8
  %lab.addr = alloca ptr, align 8
  %ptn.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %numcells.addr = alloca ptr, align 8
  %count.addr = alloca ptr, align 8
  %active.addr = alloca ptr, align 8
  %code.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  %labc1 = alloca i32, align 4
  %x = alloca i16, align 2
  %split1 = alloca i32, align 4
  %split2 = alloca i32, align 4
  %cell1 = alloca i32, align 4
  %cell2 = alloca i32, align 4
  %cnt = alloca i32, align 4
  %bmin = alloca i32, align 4
  %bmax = alloca i32, align 4
  %longcode = alloca i64, align 8
  %gptr = alloca ptr, align 8
  %workset0 = alloca i16, align 2
  %maxcell = alloca i32, align 4
  %maxpos = alloca i32, align 4
  %hint = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store ptr %lab, ptr %lab.addr, align 8, !tbaa !4
  store ptr %ptn, ptr %ptn.addr, align 8, !tbaa !4
  store i32 %level, ptr %level.addr, align 4, !tbaa !8
  store ptr %numcells, ptr %numcells.addr, align 8, !tbaa !4
  store ptr %count, ptr %count.addr, align 8, !tbaa !4
  store ptr %active, ptr %active.addr, align 8, !tbaa !4
  store ptr %code, ptr %code.addr, align 8, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %c1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %c2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %labc1) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr %x) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %split1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %split2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %cell1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %cell2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnt) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %bmin) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %bmax) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %longcode) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %gptr) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr %workset0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxcell) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxpos) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %hint) #6
  %0 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %1 = load i64, ptr @workperm_sz, align 8, !tbaa !16
  %cmp = icmp ugt i64 %conv, %1
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @workperm_sz, align 8, !tbaa !16
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr @workperm, align 8, !tbaa !4
  call void @free(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %4 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv3 = sext i32 %4 to i64
  store i64 %conv3, ptr @workperm_sz, align 8, !tbaa !16
  %5 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv4 = sext i32 %5 to i64
  %mul = mul i64 %conv4, 4
  %call = call noalias ptr @malloc(i64 noundef %mul) #7
  store ptr %call, ptr @workperm, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %call, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @alloc_error(ptr noundef @.str.3)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry
  %6 = load i32, ptr %n.addr, align 4, !tbaa !8
  %add = add nsw i32 %6, 2
  %conv10 = sext i32 %add to i64
  %7 = load i64, ptr @bucket_sz, align 8, !tbaa !16
  %cmp11 = icmp ugt i64 %conv10, %7
  br i1 %cmp11, label %if.then13, label %if.end27

if.then13:                                        ; preds = %if.end9
  %8 = load i64, ptr @bucket_sz, align 8, !tbaa !16
  %tobool14 = icmp ne i64 %8, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then13
  %9 = load ptr, ptr @bucket, align 8, !tbaa !4
  call void @free(ptr noundef %9) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then13
  %10 = load i32, ptr %n.addr, align 4, !tbaa !8
  %add17 = add nsw i32 %10, 2
  %conv18 = sext i32 %add17 to i64
  store i64 %conv18, ptr @bucket_sz, align 8, !tbaa !16
  %11 = load i32, ptr %n.addr, align 4, !tbaa !8
  %add19 = add nsw i32 %11, 2
  %conv20 = sext i32 %add19 to i64
  %mul21 = mul i64 %conv20, 4
  %call22 = call noalias ptr @malloc(i64 noundef %mul21) #7
  store ptr %call22, ptr @bucket, align 8, !tbaa !4
  %cmp23 = icmp eq ptr %call22, null
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end16
  call void @alloc_error(ptr noundef @.str.3)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end16
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end9
  %12 = load ptr, ptr %numcells.addr, align 8, !tbaa !4
  %13 = load i32, ptr %12, align 4, !tbaa !8
  %conv28 = sext i32 %13 to i64
  store i64 %conv28, ptr %longcode, align 8, !tbaa !16
  store i32 -1, ptr %split1, align 4, !tbaa !8
  store i32 0, ptr %hint, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end379, %if.end27
  %14 = load ptr, ptr %numcells.addr, align 8, !tbaa !4
  %15 = load i32, ptr %14, align 4, !tbaa !8
  %16 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp29 = icmp slt i32 %15, %16
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load i32, ptr %hint, align 4, !tbaa !8
  store i32 %17, ptr %split1, align 4, !tbaa !8
  %18 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %19 = load i16, ptr %18, align 2, !tbaa !10
  %conv31 = zext i16 %19 to i32
  %20 = load i32, ptr %split1, align 4, !tbaa !8
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom
  %21 = load i16, ptr %arrayidx, align 2, !tbaa !10
  %conv32 = zext i16 %21 to i32
  %and = and i32 %conv31, %conv32
  %cmp33 = icmp ne i32 %and, 0
  br i1 %cmp33, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %22 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %23 = load i32, ptr %split1, align 4, !tbaa !8
  %call35 = call i32 @nextelement(ptr noundef %22, i32 noundef 1, i32 noundef %23)
  store i32 %call35, ptr %split1, align 4, !tbaa !8
  %cmp36 = icmp sge i32 %call35, 0
  br i1 %cmp36, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %24 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %call38 = call i32 @nextelement(ptr noundef %24, i32 noundef 1, i32 noundef -1)
  store i32 %call38, ptr %split1, align 4, !tbaa !8
  %cmp39 = icmp sge i32 %call38, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.rhs
  %25 = phi i1 [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %cmp39, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %26 = phi i1 [ false, %while.cond ], [ %25, %lor.end ]
  br i1 %26, label %while.body, label %while.end380

while.body:                                       ; preds = %land.end
  %27 = load i32, ptr %split1, align 4, !tbaa !8
  %idxprom41 = sext i32 %27 to i64
  %arrayidx42 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom41
  %28 = load i16, ptr %arrayidx42, align 2, !tbaa !10
  %conv43 = zext i16 %28 to i32
  %not = xor i32 %conv43, -1
  %29 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %30 = load i16, ptr %29, align 2, !tbaa !10
  %conv44 = zext i16 %30 to i32
  %and45 = and i32 %conv44, %not
  %conv46 = trunc i32 %and45 to i16
  store i16 %conv46, ptr %29, align 2, !tbaa !10
  %31 = load i32, ptr %split1, align 4, !tbaa !8
  store i32 %31, ptr %split2, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %32 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %33 = load i32, ptr %split2, align 4, !tbaa !8
  %idxprom47 = sext i32 %33 to i64
  %arrayidx48 = getelementptr inbounds i32, ptr %32, i64 %idxprom47
  %34 = load i32, ptr %arrayidx48, align 4, !tbaa !8
  %35 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp49 = icmp sgt i32 %34, %35
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, ptr %split2, align 4, !tbaa !8
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %split2, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  %37 = load i64, ptr %longcode, align 8, !tbaa !16
  %xor = xor i64 %37, 27421
  %38 = load i32, ptr %split1, align 4, !tbaa !8
  %39 = load i32, ptr %split2, align 4, !tbaa !8
  %add51 = add nsw i32 %38, %39
  %conv52 = sext i32 %add51 to i64
  %add53 = add nsw i64 %xor, %conv52
  %and54 = and i64 %add53, 32767
  store i64 %and54, ptr %longcode, align 8, !tbaa !16
  %40 = load i32, ptr %split1, align 4, !tbaa !8
  %41 = load i32, ptr %split2, align 4, !tbaa !8
  %cmp55 = icmp eq i32 %40, %41
  br i1 %cmp55, label %if.then57, label %if.else150

if.then57:                                        ; preds = %for.end
  %42 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %43 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %44 = load i32, ptr %split1, align 4, !tbaa !8
  %idxprom58 = sext i32 %44 to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %43, i64 %idxprom58
  %45 = load i32, ptr %arrayidx59, align 4, !tbaa !8
  %conv60 = sext i32 %45 to i64
  %mul61 = mul i64 1, %conv60
  %add.ptr = getelementptr inbounds i16, ptr %42, i64 %mul61
  store ptr %add.ptr, ptr %gptr, align 8, !tbaa !4
  store i32 0, ptr %cell1, align 4, !tbaa !8
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc147, %if.then57
  %46 = load i32, ptr %cell1, align 4, !tbaa !8
  %47 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp63 = icmp slt i32 %46, %47
  br i1 %cmp63, label %for.body65, label %for.end149

for.body65:                                       ; preds = %for.cond62
  %48 = load i32, ptr %cell1, align 4, !tbaa !8
  store i32 %48, ptr %cell2, align 4, !tbaa !8
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc72, %for.body65
  %49 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %50 = load i32, ptr %cell2, align 4, !tbaa !8
  %idxprom67 = sext i32 %50 to i64
  %arrayidx68 = getelementptr inbounds i32, ptr %49, i64 %idxprom67
  %51 = load i32, ptr %arrayidx68, align 4, !tbaa !8
  %52 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp69 = icmp sgt i32 %51, %52
  br i1 %cmp69, label %for.body71, label %for.end74

for.body71:                                       ; preds = %for.cond66
  br label %for.inc72

for.inc72:                                        ; preds = %for.body71
  %53 = load i32, ptr %cell2, align 4, !tbaa !8
  %inc73 = add nsw i32 %53, 1
  store i32 %inc73, ptr %cell2, align 4, !tbaa !8
  br label %for.cond66, !llvm.loop !41

for.end74:                                        ; preds = %for.cond66
  %54 = load i32, ptr %cell1, align 4, !tbaa !8
  %55 = load i32, ptr %cell2, align 4, !tbaa !8
  %cmp75 = icmp eq i32 %54, %55
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %for.end74
  br label %for.inc147

if.end78:                                         ; preds = %for.end74
  %56 = load i32, ptr %cell1, align 4, !tbaa !8
  store i32 %56, ptr %c1, align 4, !tbaa !8
  %57 = load i32, ptr %cell2, align 4, !tbaa !8
  store i32 %57, ptr %c2, align 4, !tbaa !8
  br label %while.cond79

while.cond79:                                     ; preds = %if.end100, %if.end78
  %58 = load i32, ptr %c1, align 4, !tbaa !8
  %59 = load i32, ptr %c2, align 4, !tbaa !8
  %cmp80 = icmp sle i32 %58, %59
  br i1 %cmp80, label %while.body82, label %while.end

while.body82:                                     ; preds = %while.cond79
  %60 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %61 = load i32, ptr %c1, align 4, !tbaa !8
  %idxprom83 = sext i32 %61 to i64
  %arrayidx84 = getelementptr inbounds i32, ptr %60, i64 %idxprom83
  %62 = load i32, ptr %arrayidx84, align 4, !tbaa !8
  store i32 %62, ptr %labc1, align 4, !tbaa !8
  %63 = load ptr, ptr %gptr, align 8, !tbaa !4
  %64 = load i16, ptr %63, align 2, !tbaa !10
  %conv85 = zext i16 %64 to i32
  %65 = load i32, ptr %labc1, align 4, !tbaa !8
  %idxprom86 = sext i32 %65 to i64
  %arrayidx87 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom86
  %66 = load i16, ptr %arrayidx87, align 2, !tbaa !10
  %conv88 = zext i16 %66 to i32
  %and89 = and i32 %conv85, %conv88
  %cmp90 = icmp ne i32 %and89, 0
  br i1 %cmp90, label %if.then92, label %if.else

if.then92:                                        ; preds = %while.body82
  %67 = load i32, ptr %c1, align 4, !tbaa !8
  %inc93 = add nsw i32 %67, 1
  store i32 %inc93, ptr %c1, align 4, !tbaa !8
  br label %if.end100

if.else:                                          ; preds = %while.body82
  %68 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %69 = load i32, ptr %c2, align 4, !tbaa !8
  %idxprom94 = sext i32 %69 to i64
  %arrayidx95 = getelementptr inbounds i32, ptr %68, i64 %idxprom94
  %70 = load i32, ptr %arrayidx95, align 4, !tbaa !8
  %71 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %72 = load i32, ptr %c1, align 4, !tbaa !8
  %idxprom96 = sext i32 %72 to i64
  %arrayidx97 = getelementptr inbounds i32, ptr %71, i64 %idxprom96
  store i32 %70, ptr %arrayidx97, align 4, !tbaa !8
  %73 = load i32, ptr %labc1, align 4, !tbaa !8
  %74 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %75 = load i32, ptr %c2, align 4, !tbaa !8
  %idxprom98 = sext i32 %75 to i64
  %arrayidx99 = getelementptr inbounds i32, ptr %74, i64 %idxprom98
  store i32 %73, ptr %arrayidx99, align 4, !tbaa !8
  %76 = load i32, ptr %c2, align 4, !tbaa !8
  %dec = add nsw i32 %76, -1
  store i32 %dec, ptr %c2, align 4, !tbaa !8
  br label %if.end100

if.end100:                                        ; preds = %if.else, %if.then92
  br label %while.cond79, !llvm.loop !42

while.end:                                        ; preds = %while.cond79
  %77 = load i32, ptr %c2, align 4, !tbaa !8
  %78 = load i32, ptr %cell1, align 4, !tbaa !8
  %cmp101 = icmp sge i32 %77, %78
  br i1 %cmp101, label %land.lhs.true, label %if.end146

land.lhs.true:                                    ; preds = %while.end
  %79 = load i32, ptr %c1, align 4, !tbaa !8
  %80 = load i32, ptr %cell2, align 4, !tbaa !8
  %cmp103 = icmp sle i32 %79, %80
  br i1 %cmp103, label %if.then105, label %if.end146

if.then105:                                       ; preds = %land.lhs.true
  %81 = load i32, ptr %level.addr, align 4, !tbaa !8
  %82 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %83 = load i32, ptr %c2, align 4, !tbaa !8
  %idxprom106 = sext i32 %83 to i64
  %arrayidx107 = getelementptr inbounds i32, ptr %82, i64 %idxprom106
  store i32 %81, ptr %arrayidx107, align 4, !tbaa !8
  %84 = load i64, ptr %longcode, align 8, !tbaa !16
  %xor108 = xor i64 %84, 27421
  %85 = load i32, ptr %c2, align 4, !tbaa !8
  %conv109 = sext i32 %85 to i64
  %add110 = add nsw i64 %xor108, %conv109
  %and111 = and i64 %add110, 32767
  store i64 %and111, ptr %longcode, align 8, !tbaa !16
  %86 = load ptr, ptr %numcells.addr, align 8, !tbaa !4
  %87 = load i32, ptr %86, align 4, !tbaa !8
  %inc112 = add nsw i32 %87, 1
  store i32 %inc112, ptr %86, align 4, !tbaa !8
  %88 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %89 = load i16, ptr %88, align 2, !tbaa !10
  %conv113 = zext i16 %89 to i32
  %90 = load i32, ptr %cell1, align 4, !tbaa !8
  %idxprom114 = sext i32 %90 to i64
  %arrayidx115 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom114
  %91 = load i16, ptr %arrayidx115, align 2, !tbaa !10
  %conv116 = zext i16 %91 to i32
  %and117 = and i32 %conv113, %conv116
  %cmp118 = icmp ne i32 %and117, 0
  br i1 %cmp118, label %if.then124, label %lor.lhs.false120

lor.lhs.false120:                                 ; preds = %if.then105
  %92 = load i32, ptr %c2, align 4, !tbaa !8
  %93 = load i32, ptr %cell1, align 4, !tbaa !8
  %sub = sub nsw i32 %92, %93
  %94 = load i32, ptr %cell2, align 4, !tbaa !8
  %95 = load i32, ptr %c1, align 4, !tbaa !8
  %sub121 = sub nsw i32 %94, %95
  %cmp122 = icmp sge i32 %sub, %sub121
  br i1 %cmp122, label %if.then124, label %if.else134

if.then124:                                       ; preds = %lor.lhs.false120, %if.then105
  %96 = load i32, ptr %c1, align 4, !tbaa !8
  %idxprom125 = sext i32 %96 to i64
  %arrayidx126 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom125
  %97 = load i16, ptr %arrayidx126, align 2, !tbaa !10
  %conv127 = zext i16 %97 to i32
  %98 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %99 = load i16, ptr %98, align 2, !tbaa !10
  %conv128 = zext i16 %99 to i32
  %or = or i32 %conv128, %conv127
  %conv129 = trunc i32 %or to i16
  store i16 %conv129, ptr %98, align 2, !tbaa !10
  %100 = load i32, ptr %c1, align 4, !tbaa !8
  %101 = load i32, ptr %cell2, align 4, !tbaa !8
  %cmp130 = icmp eq i32 %100, %101
  br i1 %cmp130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %if.then124
  %102 = load i32, ptr %c1, align 4, !tbaa !8
  store i32 %102, ptr %hint, align 4, !tbaa !8
  br label %if.end133

if.end133:                                        ; preds = %if.then132, %if.then124
  br label %if.end145

if.else134:                                       ; preds = %lor.lhs.false120
  %103 = load i32, ptr %cell1, align 4, !tbaa !8
  %idxprom135 = sext i32 %103 to i64
  %arrayidx136 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom135
  %104 = load i16, ptr %arrayidx136, align 2, !tbaa !10
  %conv137 = zext i16 %104 to i32
  %105 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %106 = load i16, ptr %105, align 2, !tbaa !10
  %conv138 = zext i16 %106 to i32
  %or139 = or i32 %conv138, %conv137
  %conv140 = trunc i32 %or139 to i16
  store i16 %conv140, ptr %105, align 2, !tbaa !10
  %107 = load i32, ptr %c2, align 4, !tbaa !8
  %108 = load i32, ptr %cell1, align 4, !tbaa !8
  %cmp141 = icmp eq i32 %107, %108
  br i1 %cmp141, label %if.then143, label %if.end144

if.then143:                                       ; preds = %if.else134
  %109 = load i32, ptr %cell1, align 4, !tbaa !8
  store i32 %109, ptr %hint, align 4, !tbaa !8
  br label %if.end144

if.end144:                                        ; preds = %if.then143, %if.else134
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.end133
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %land.lhs.true, %while.end
  br label %for.inc147

for.inc147:                                       ; preds = %if.end146, %if.then77
  %110 = load i32, ptr %cell2, align 4, !tbaa !8
  %add148 = add nsw i32 %110, 1
  store i32 %add148, ptr %cell1, align 4, !tbaa !8
  br label %for.cond62, !llvm.loop !43

for.end149:                                       ; preds = %for.cond62
  br label %if.end379

if.else150:                                       ; preds = %for.end
  store i16 0, ptr %workset0, align 2, !tbaa !10
  %111 = load i32, ptr %split1, align 4, !tbaa !8
  store i32 %111, ptr %i, align 4, !tbaa !8
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc163, %if.else150
  %112 = load i32, ptr %i, align 4, !tbaa !8
  %113 = load i32, ptr %split2, align 4, !tbaa !8
  %cmp152 = icmp sle i32 %112, %113
  br i1 %cmp152, label %for.body154, label %for.end165

for.body154:                                      ; preds = %for.cond151
  %114 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %115 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom155 = sext i32 %115 to i64
  %arrayidx156 = getelementptr inbounds i32, ptr %114, i64 %idxprom155
  %116 = load i32, ptr %arrayidx156, align 4, !tbaa !8
  %idxprom157 = sext i32 %116 to i64
  %arrayidx158 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom157
  %117 = load i16, ptr %arrayidx158, align 2, !tbaa !10
  %conv159 = zext i16 %117 to i32
  %118 = load i16, ptr %workset0, align 2, !tbaa !10
  %conv160 = zext i16 %118 to i32
  %or161 = or i32 %conv160, %conv159
  %conv162 = trunc i32 %or161 to i16
  store i16 %conv162, ptr %workset0, align 2, !tbaa !10
  br label %for.inc163

for.inc163:                                       ; preds = %for.body154
  %119 = load i32, ptr %i, align 4, !tbaa !8
  %inc164 = add nsw i32 %119, 1
  store i32 %inc164, ptr %i, align 4, !tbaa !8
  br label %for.cond151, !llvm.loop !44

for.end165:                                       ; preds = %for.cond151
  %120 = load i64, ptr %longcode, align 8, !tbaa !16
  %xor166 = xor i64 %120, 27421
  %121 = load i32, ptr %split2, align 4, !tbaa !8
  %122 = load i32, ptr %split1, align 4, !tbaa !8
  %sub167 = sub nsw i32 %121, %122
  %add168 = add nsw i32 %sub167, 1
  %conv169 = sext i32 %add168 to i64
  %add170 = add nsw i64 %xor166, %conv169
  %and171 = and i64 %add170, 32767
  store i64 %and171, ptr %longcode, align 8, !tbaa !16
  store i32 0, ptr %cell1, align 4, !tbaa !8
  br label %for.cond172

for.cond172:                                      ; preds = %for.inc376, %for.end165
  %123 = load i32, ptr %cell1, align 4, !tbaa !8
  %124 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp173 = icmp slt i32 %123, %124
  br i1 %cmp173, label %for.body175, label %for.end378

for.body175:                                      ; preds = %for.cond172
  %125 = load i32, ptr %cell1, align 4, !tbaa !8
  store i32 %125, ptr %cell2, align 4, !tbaa !8
  br label %for.cond176

for.cond176:                                      ; preds = %for.inc182, %for.body175
  %126 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %127 = load i32, ptr %cell2, align 4, !tbaa !8
  %idxprom177 = sext i32 %127 to i64
  %arrayidx178 = getelementptr inbounds i32, ptr %126, i64 %idxprom177
  %128 = load i32, ptr %arrayidx178, align 4, !tbaa !8
  %129 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp179 = icmp sgt i32 %128, %129
  br i1 %cmp179, label %for.body181, label %for.end184

for.body181:                                      ; preds = %for.cond176
  br label %for.inc182

for.inc182:                                       ; preds = %for.body181
  %130 = load i32, ptr %cell2, align 4, !tbaa !8
  %inc183 = add nsw i32 %130, 1
  store i32 %inc183, ptr %cell2, align 4, !tbaa !8
  br label %for.cond176, !llvm.loop !45

for.end184:                                       ; preds = %for.cond176
  %131 = load i32, ptr %cell1, align 4, !tbaa !8
  %132 = load i32, ptr %cell2, align 4, !tbaa !8
  %cmp185 = icmp eq i32 %131, %132
  br i1 %cmp185, label %if.then187, label %if.end188

if.then187:                                       ; preds = %for.end184
  br label %for.inc376

if.end188:                                        ; preds = %for.end184
  %133 = load i32, ptr %cell1, align 4, !tbaa !8
  store i32 %133, ptr %i, align 4, !tbaa !8
  %134 = load i16, ptr %workset0, align 2, !tbaa !10
  %conv189 = zext i16 %134 to i32
  %135 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %136 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %137 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom190 = sext i32 %137 to i64
  %arrayidx191 = getelementptr inbounds i32, ptr %136, i64 %idxprom190
  %138 = load i32, ptr %arrayidx191, align 4, !tbaa !8
  %idxprom192 = sext i32 %138 to i64
  %arrayidx193 = getelementptr inbounds i16, ptr %135, i64 %idxprom192
  %139 = load i16, ptr %arrayidx193, align 2, !tbaa !10
  %conv194 = zext i16 %139 to i32
  %and195 = and i32 %conv189, %conv194
  %conv196 = trunc i32 %and195 to i16
  store i16 %conv196, ptr %x, align 2, !tbaa !10
  %conv197 = zext i16 %conv196 to i32
  %cmp198 = icmp ne i32 %conv197, 0
  br i1 %cmp198, label %if.then200, label %if.else210

if.then200:                                       ; preds = %if.end188
  %140 = load i16, ptr %x, align 2, !tbaa !10
  %conv201 = zext i16 %140 to i32
  %shr = ashr i32 %conv201, 8
  %and202 = and i32 %shr, 255
  %idxprom203 = sext i32 %and202 to i64
  %arrayidx204 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom203
  %141 = load i32, ptr %arrayidx204, align 4, !tbaa !8
  %142 = load i16, ptr %x, align 2, !tbaa !10
  %conv205 = zext i16 %142 to i32
  %and206 = and i32 %conv205, 255
  %idxprom207 = sext i32 %and206 to i64
  %arrayidx208 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom207
  %143 = load i32, ptr %arrayidx208, align 4, !tbaa !8
  %add209 = add nsw i32 %141, %143
  store i32 %add209, ptr %cnt, align 4, !tbaa !8
  br label %if.end211

if.else210:                                       ; preds = %if.end188
  store i32 0, ptr %cnt, align 4, !tbaa !8
  br label %if.end211

if.end211:                                        ; preds = %if.else210, %if.then200
  %144 = load i32, ptr %cnt, align 4, !tbaa !8
  store i32 %144, ptr %bmax, align 4, !tbaa !8
  store i32 %144, ptr %bmin, align 4, !tbaa !8
  %145 = load ptr, ptr %count.addr, align 8, !tbaa !4
  %146 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom212 = sext i32 %146 to i64
  %arrayidx213 = getelementptr inbounds i32, ptr %145, i64 %idxprom212
  store i32 %144, ptr %arrayidx213, align 4, !tbaa !8
  %147 = load ptr, ptr @bucket, align 8, !tbaa !4
  %148 = load i32, ptr %cnt, align 4, !tbaa !8
  %idxprom214 = sext i32 %148 to i64
  %arrayidx215 = getelementptr inbounds i32, ptr %147, i64 %idxprom214
  store i32 1, ptr %arrayidx215, align 4, !tbaa !8
  br label %while.cond216

while.cond216:                                    ; preds = %while.end260, %if.end211
  %149 = load i32, ptr %i, align 4, !tbaa !8
  %inc217 = add nsw i32 %149, 1
  store i32 %inc217, ptr %i, align 4, !tbaa !8
  %150 = load i32, ptr %cell2, align 4, !tbaa !8
  %cmp218 = icmp sle i32 %inc217, %150
  br i1 %cmp218, label %while.body220, label %while.end266

while.body220:                                    ; preds = %while.cond216
  %151 = load i16, ptr %workset0, align 2, !tbaa !10
  %conv221 = zext i16 %151 to i32
  %152 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %153 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %154 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom222 = sext i32 %154 to i64
  %arrayidx223 = getelementptr inbounds i32, ptr %153, i64 %idxprom222
  %155 = load i32, ptr %arrayidx223, align 4, !tbaa !8
  %idxprom224 = sext i32 %155 to i64
  %arrayidx225 = getelementptr inbounds i16, ptr %152, i64 %idxprom224
  %156 = load i16, ptr %arrayidx225, align 2, !tbaa !10
  %conv226 = zext i16 %156 to i32
  %and227 = and i32 %conv221, %conv226
  %conv228 = trunc i32 %and227 to i16
  store i16 %conv228, ptr %x, align 2, !tbaa !10
  %conv229 = zext i16 %conv228 to i32
  %cmp230 = icmp ne i32 %conv229, 0
  br i1 %cmp230, label %if.then232, label %if.else243

if.then232:                                       ; preds = %while.body220
  %157 = load i16, ptr %x, align 2, !tbaa !10
  %conv233 = zext i16 %157 to i32
  %shr234 = ashr i32 %conv233, 8
  %and235 = and i32 %shr234, 255
  %idxprom236 = sext i32 %and235 to i64
  %arrayidx237 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom236
  %158 = load i32, ptr %arrayidx237, align 4, !tbaa !8
  %159 = load i16, ptr %x, align 2, !tbaa !10
  %conv238 = zext i16 %159 to i32
  %and239 = and i32 %conv238, 255
  %idxprom240 = sext i32 %and239 to i64
  %arrayidx241 = getelementptr inbounds [256 x i32], ptr @bytecount, i64 0, i64 %idxprom240
  %160 = load i32, ptr %arrayidx241, align 4, !tbaa !8
  %add242 = add nsw i32 %158, %160
  store i32 %add242, ptr %cnt, align 4, !tbaa !8
  br label %if.end244

if.else243:                                       ; preds = %while.body220
  store i32 0, ptr %cnt, align 4, !tbaa !8
  br label %if.end244

if.end244:                                        ; preds = %if.else243, %if.then232
  br label %while.cond245

while.cond245:                                    ; preds = %while.body248, %if.end244
  %161 = load i32, ptr %bmin, align 4, !tbaa !8
  %162 = load i32, ptr %cnt, align 4, !tbaa !8
  %cmp246 = icmp sgt i32 %161, %162
  br i1 %cmp246, label %while.body248, label %while.end252

while.body248:                                    ; preds = %while.cond245
  %163 = load ptr, ptr @bucket, align 8, !tbaa !4
  %164 = load i32, ptr %bmin, align 4, !tbaa !8
  %dec249 = add nsw i32 %164, -1
  store i32 %dec249, ptr %bmin, align 4, !tbaa !8
  %idxprom250 = sext i32 %dec249 to i64
  %arrayidx251 = getelementptr inbounds i32, ptr %163, i64 %idxprom250
  store i32 0, ptr %arrayidx251, align 4, !tbaa !8
  br label %while.cond245, !llvm.loop !46

while.end252:                                     ; preds = %while.cond245
  br label %while.cond253

while.cond253:                                    ; preds = %while.body256, %while.end252
  %165 = load i32, ptr %bmax, align 4, !tbaa !8
  %166 = load i32, ptr %cnt, align 4, !tbaa !8
  %cmp254 = icmp slt i32 %165, %166
  br i1 %cmp254, label %while.body256, label %while.end260

while.body256:                                    ; preds = %while.cond253
  %167 = load ptr, ptr @bucket, align 8, !tbaa !4
  %168 = load i32, ptr %bmax, align 4, !tbaa !8
  %inc257 = add nsw i32 %168, 1
  store i32 %inc257, ptr %bmax, align 4, !tbaa !8
  %idxprom258 = sext i32 %inc257 to i64
  %arrayidx259 = getelementptr inbounds i32, ptr %167, i64 %idxprom258
  store i32 0, ptr %arrayidx259, align 4, !tbaa !8
  br label %while.cond253, !llvm.loop !47

while.end260:                                     ; preds = %while.cond253
  %169 = load ptr, ptr @bucket, align 8, !tbaa !4
  %170 = load i32, ptr %cnt, align 4, !tbaa !8
  %idxprom261 = sext i32 %170 to i64
  %arrayidx262 = getelementptr inbounds i32, ptr %169, i64 %idxprom261
  %171 = load i32, ptr %arrayidx262, align 4, !tbaa !8
  %inc263 = add nsw i32 %171, 1
  store i32 %inc263, ptr %arrayidx262, align 4, !tbaa !8
  %172 = load i32, ptr %cnt, align 4, !tbaa !8
  %173 = load ptr, ptr %count.addr, align 8, !tbaa !4
  %174 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom264 = sext i32 %174 to i64
  %arrayidx265 = getelementptr inbounds i32, ptr %173, i64 %idxprom264
  store i32 %172, ptr %arrayidx265, align 4, !tbaa !8
  br label %while.cond216, !llvm.loop !48

while.end266:                                     ; preds = %while.cond216
  %175 = load i32, ptr %bmin, align 4, !tbaa !8
  %176 = load i32, ptr %bmax, align 4, !tbaa !8
  %cmp267 = icmp eq i32 %175, %176
  br i1 %cmp267, label %if.then269, label %if.end275

if.then269:                                       ; preds = %while.end266
  %177 = load i64, ptr %longcode, align 8, !tbaa !16
  %xor270 = xor i64 %177, 27421
  %178 = load i32, ptr %bmin, align 4, !tbaa !8
  %179 = load i32, ptr %cell1, align 4, !tbaa !8
  %add271 = add nsw i32 %178, %179
  %conv272 = sext i32 %add271 to i64
  %add273 = add nsw i64 %xor270, %conv272
  %and274 = and i64 %add273, 32767
  store i64 %and274, ptr %longcode, align 8, !tbaa !16
  br label %for.inc376

if.end275:                                        ; preds = %while.end266
  %180 = load i32, ptr %cell1, align 4, !tbaa !8
  store i32 %180, ptr %c1, align 4, !tbaa !8
  store i32 -1, ptr %maxcell, align 4, !tbaa !8
  %181 = load i32, ptr %bmin, align 4, !tbaa !8
  store i32 %181, ptr %i, align 4, !tbaa !8
  br label %for.cond276

for.cond276:                                      ; preds = %for.inc324, %if.end275
  %182 = load i32, ptr %i, align 4, !tbaa !8
  %183 = load i32, ptr %bmax, align 4, !tbaa !8
  %cmp277 = icmp sle i32 %182, %183
  br i1 %cmp277, label %for.body279, label %for.end326

for.body279:                                      ; preds = %for.cond276
  %184 = load ptr, ptr @bucket, align 8, !tbaa !4
  %185 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom280 = sext i32 %185 to i64
  %arrayidx281 = getelementptr inbounds i32, ptr %184, i64 %idxprom280
  %186 = load i32, ptr %arrayidx281, align 4, !tbaa !8
  %tobool282 = icmp ne i32 %186, 0
  br i1 %tobool282, label %if.then283, label %if.end323

if.then283:                                       ; preds = %for.body279
  %187 = load i32, ptr %c1, align 4, !tbaa !8
  %188 = load ptr, ptr @bucket, align 8, !tbaa !4
  %189 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom284 = sext i32 %189 to i64
  %arrayidx285 = getelementptr inbounds i32, ptr %188, i64 %idxprom284
  %190 = load i32, ptr %arrayidx285, align 4, !tbaa !8
  %add286 = add nsw i32 %187, %190
  store i32 %add286, ptr %c2, align 4, !tbaa !8
  %191 = load i32, ptr %c1, align 4, !tbaa !8
  %192 = load ptr, ptr @bucket, align 8, !tbaa !4
  %193 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom287 = sext i32 %193 to i64
  %arrayidx288 = getelementptr inbounds i32, ptr %192, i64 %idxprom287
  store i32 %191, ptr %arrayidx288, align 4, !tbaa !8
  %194 = load i64, ptr %longcode, align 8, !tbaa !16
  %xor289 = xor i64 %194, 27421
  %195 = load i32, ptr %i, align 4, !tbaa !8
  %196 = load i32, ptr %c1, align 4, !tbaa !8
  %add290 = add nsw i32 %195, %196
  %conv291 = sext i32 %add290 to i64
  %add292 = add nsw i64 %xor289, %conv291
  %and293 = and i64 %add292, 32767
  store i64 %and293, ptr %longcode, align 8, !tbaa !16
  %197 = load i32, ptr %c2, align 4, !tbaa !8
  %198 = load i32, ptr %c1, align 4, !tbaa !8
  %sub294 = sub nsw i32 %197, %198
  %199 = load i32, ptr %maxcell, align 4, !tbaa !8
  %cmp295 = icmp sgt i32 %sub294, %199
  br i1 %cmp295, label %if.then297, label %if.end299

if.then297:                                       ; preds = %if.then283
  %200 = load i32, ptr %c2, align 4, !tbaa !8
  %201 = load i32, ptr %c1, align 4, !tbaa !8
  %sub298 = sub nsw i32 %200, %201
  store i32 %sub298, ptr %maxcell, align 4, !tbaa !8
  %202 = load i32, ptr %c1, align 4, !tbaa !8
  store i32 %202, ptr %maxpos, align 4, !tbaa !8
  br label %if.end299

if.end299:                                        ; preds = %if.then297, %if.then283
  %203 = load i32, ptr %c1, align 4, !tbaa !8
  %204 = load i32, ptr %cell1, align 4, !tbaa !8
  %cmp300 = icmp ne i32 %203, %204
  br i1 %cmp300, label %if.then302, label %if.end315

if.then302:                                       ; preds = %if.end299
  %205 = load i32, ptr %c1, align 4, !tbaa !8
  %idxprom303 = sext i32 %205 to i64
  %arrayidx304 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom303
  %206 = load i16, ptr %arrayidx304, align 2, !tbaa !10
  %conv305 = zext i16 %206 to i32
  %207 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %208 = load i16, ptr %207, align 2, !tbaa !10
  %conv306 = zext i16 %208 to i32
  %or307 = or i32 %conv306, %conv305
  %conv308 = trunc i32 %or307 to i16
  store i16 %conv308, ptr %207, align 2, !tbaa !10
  %209 = load i32, ptr %c2, align 4, !tbaa !8
  %210 = load i32, ptr %c1, align 4, !tbaa !8
  %sub309 = sub nsw i32 %209, %210
  %cmp310 = icmp eq i32 %sub309, 1
  br i1 %cmp310, label %if.then312, label %if.end313

if.then312:                                       ; preds = %if.then302
  %211 = load i32, ptr %c1, align 4, !tbaa !8
  store i32 %211, ptr %hint, align 4, !tbaa !8
  br label %if.end313

if.end313:                                        ; preds = %if.then312, %if.then302
  %212 = load ptr, ptr %numcells.addr, align 8, !tbaa !4
  %213 = load i32, ptr %212, align 4, !tbaa !8
  %inc314 = add nsw i32 %213, 1
  store i32 %inc314, ptr %212, align 4, !tbaa !8
  br label %if.end315

if.end315:                                        ; preds = %if.end313, %if.end299
  %214 = load i32, ptr %c2, align 4, !tbaa !8
  %215 = load i32, ptr %cell2, align 4, !tbaa !8
  %cmp316 = icmp sle i32 %214, %215
  br i1 %cmp316, label %if.then318, label %if.end322

if.then318:                                       ; preds = %if.end315
  %216 = load i32, ptr %level.addr, align 4, !tbaa !8
  %217 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %218 = load i32, ptr %c2, align 4, !tbaa !8
  %sub319 = sub nsw i32 %218, 1
  %idxprom320 = sext i32 %sub319 to i64
  %arrayidx321 = getelementptr inbounds i32, ptr %217, i64 %idxprom320
  store i32 %216, ptr %arrayidx321, align 4, !tbaa !8
  br label %if.end322

if.end322:                                        ; preds = %if.then318, %if.end315
  %219 = load i32, ptr %c2, align 4, !tbaa !8
  store i32 %219, ptr %c1, align 4, !tbaa !8
  br label %if.end323

if.end323:                                        ; preds = %if.end322, %for.body279
  br label %for.inc324

for.inc324:                                       ; preds = %if.end323
  %220 = load i32, ptr %i, align 4, !tbaa !8
  %inc325 = add nsw i32 %220, 1
  store i32 %inc325, ptr %i, align 4, !tbaa !8
  br label %for.cond276, !llvm.loop !49

for.end326:                                       ; preds = %for.cond276
  %221 = load i32, ptr %cell1, align 4, !tbaa !8
  store i32 %221, ptr %i, align 4, !tbaa !8
  br label %for.cond327

for.cond327:                                      ; preds = %for.inc340, %for.end326
  %222 = load i32, ptr %i, align 4, !tbaa !8
  %223 = load i32, ptr %cell2, align 4, !tbaa !8
  %cmp328 = icmp sle i32 %222, %223
  br i1 %cmp328, label %for.body330, label %for.end342

for.body330:                                      ; preds = %for.cond327
  %224 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %225 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom331 = sext i32 %225 to i64
  %arrayidx332 = getelementptr inbounds i32, ptr %224, i64 %idxprom331
  %226 = load i32, ptr %arrayidx332, align 4, !tbaa !8
  %227 = load ptr, ptr @workperm, align 8, !tbaa !4
  %228 = load ptr, ptr @bucket, align 8, !tbaa !4
  %229 = load ptr, ptr %count.addr, align 8, !tbaa !4
  %230 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom333 = sext i32 %230 to i64
  %arrayidx334 = getelementptr inbounds i32, ptr %229, i64 %idxprom333
  %231 = load i32, ptr %arrayidx334, align 4, !tbaa !8
  %idxprom335 = sext i32 %231 to i64
  %arrayidx336 = getelementptr inbounds i32, ptr %228, i64 %idxprom335
  %232 = load i32, ptr %arrayidx336, align 4, !tbaa !8
  %inc337 = add nsw i32 %232, 1
  store i32 %inc337, ptr %arrayidx336, align 4, !tbaa !8
  %idxprom338 = sext i32 %232 to i64
  %arrayidx339 = getelementptr inbounds i32, ptr %227, i64 %idxprom338
  store i32 %226, ptr %arrayidx339, align 4, !tbaa !8
  br label %for.inc340

for.inc340:                                       ; preds = %for.body330
  %233 = load i32, ptr %i, align 4, !tbaa !8
  %inc341 = add nsw i32 %233, 1
  store i32 %inc341, ptr %i, align 4, !tbaa !8
  br label %for.cond327, !llvm.loop !50

for.end342:                                       ; preds = %for.cond327
  %234 = load i32, ptr %cell1, align 4, !tbaa !8
  store i32 %234, ptr %i, align 4, !tbaa !8
  br label %for.cond343

for.cond343:                                      ; preds = %for.inc351, %for.end342
  %235 = load i32, ptr %i, align 4, !tbaa !8
  %236 = load i32, ptr %cell2, align 4, !tbaa !8
  %cmp344 = icmp sle i32 %235, %236
  br i1 %cmp344, label %for.body346, label %for.end353

for.body346:                                      ; preds = %for.cond343
  %237 = load ptr, ptr @workperm, align 8, !tbaa !4
  %238 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom347 = sext i32 %238 to i64
  %arrayidx348 = getelementptr inbounds i32, ptr %237, i64 %idxprom347
  %239 = load i32, ptr %arrayidx348, align 4, !tbaa !8
  %240 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %241 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom349 = sext i32 %241 to i64
  %arrayidx350 = getelementptr inbounds i32, ptr %240, i64 %idxprom349
  store i32 %239, ptr %arrayidx350, align 4, !tbaa !8
  br label %for.inc351

for.inc351:                                       ; preds = %for.body346
  %242 = load i32, ptr %i, align 4, !tbaa !8
  %inc352 = add nsw i32 %242, 1
  store i32 %inc352, ptr %i, align 4, !tbaa !8
  br label %for.cond343, !llvm.loop !51

for.end353:                                       ; preds = %for.cond343
  %243 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %244 = load i16, ptr %243, align 2, !tbaa !10
  %conv354 = zext i16 %244 to i32
  %245 = load i32, ptr %cell1, align 4, !tbaa !8
  %idxprom355 = sext i32 %245 to i64
  %arrayidx356 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom355
  %246 = load i16, ptr %arrayidx356, align 2, !tbaa !10
  %conv357 = zext i16 %246 to i32
  %and358 = and i32 %conv354, %conv357
  %cmp359 = icmp ne i32 %and358, 0
  br i1 %cmp359, label %if.end375, label %if.then361

if.then361:                                       ; preds = %for.end353
  %247 = load i32, ptr %cell1, align 4, !tbaa !8
  %idxprom362 = sext i32 %247 to i64
  %arrayidx363 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom362
  %248 = load i16, ptr %arrayidx363, align 2, !tbaa !10
  %conv364 = zext i16 %248 to i32
  %249 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %250 = load i16, ptr %249, align 2, !tbaa !10
  %conv365 = zext i16 %250 to i32
  %or366 = or i32 %conv365, %conv364
  %conv367 = trunc i32 %or366 to i16
  store i16 %conv367, ptr %249, align 2, !tbaa !10
  %251 = load i32, ptr %maxpos, align 4, !tbaa !8
  %idxprom368 = sext i32 %251 to i64
  %arrayidx369 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom368
  %252 = load i16, ptr %arrayidx369, align 2, !tbaa !10
  %conv370 = zext i16 %252 to i32
  %not371 = xor i32 %conv370, -1
  %253 = load ptr, ptr %active.addr, align 8, !tbaa !4
  %254 = load i16, ptr %253, align 2, !tbaa !10
  %conv372 = zext i16 %254 to i32
  %and373 = and i32 %conv372, %not371
  %conv374 = trunc i32 %and373 to i16
  store i16 %conv374, ptr %253, align 2, !tbaa !10
  br label %if.end375

if.end375:                                        ; preds = %if.then361, %for.end353
  br label %for.inc376

for.inc376:                                       ; preds = %if.end375, %if.then269, %if.then187
  %255 = load i32, ptr %cell2, align 4, !tbaa !8
  %add377 = add nsw i32 %255, 1
  store i32 %add377, ptr %cell1, align 4, !tbaa !8
  br label %for.cond172, !llvm.loop !52

for.end378:                                       ; preds = %for.cond172
  br label %if.end379

if.end379:                                        ; preds = %for.end378, %for.end149
  br label %while.cond, !llvm.loop !53

while.end380:                                     ; preds = %land.end
  %256 = load i64, ptr %longcode, align 8, !tbaa !16
  %xor381 = xor i64 %256, 27421
  %257 = load ptr, ptr %numcells.addr, align 8, !tbaa !4
  %258 = load i32, ptr %257, align 4, !tbaa !8
  %conv382 = sext i32 %258 to i64
  %add383 = add nsw i64 %xor381, %conv382
  %and384 = and i64 %add383, 32767
  store i64 %and384, ptr %longcode, align 8, !tbaa !16
  %259 = load i64, ptr %longcode, align 8, !tbaa !16
  %rem = srem i64 %259, 32767
  %conv385 = trunc i64 %rem to i32
  %260 = load ptr, ptr %code.addr, align 8, !tbaa !4
  store i32 %conv385, ptr %260, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %hint) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxpos) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxcell) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr %workset0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %gptr) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %longcode) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %bmax) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %bmin) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnt) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %cell2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %cell1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %split2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %split1) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr %x) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %labc1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %c2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %c1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @cheapautom(ptr noundef %ptn, i32 noundef %level, i32 noundef %digraph, i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %ptn.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %digraph.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %nnt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ptn, ptr %ptn.addr, align 8, !tbaa !4
  store i32 %level, ptr %level.addr, align 4, !tbaa !8
  store i32 %digraph, ptr %digraph.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %nnt) #6
  %0 = load i32, ptr %digraph.addr, align 4, !tbaa !8
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !tbaa !8
  store i32 %1, ptr %k, align 4, !tbaa !8
  store i32 0, ptr %nnt, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !tbaa !8
  %3 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %k, align 4, !tbaa !8
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %k, align 4, !tbaa !8
  %5 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %6 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %8 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp1 = icmp sgt i32 %7, %8
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %for.body
  %9 = load i32, ptr %nnt, align 4, !tbaa !8
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %nnt, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then2
  %10 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %inc3 = add nsw i32 %11, 1
  store i32 %inc3, ptr %i, align 4, !tbaa !8
  %idxprom4 = sext i32 %inc3 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i64 %idxprom4
  %12 = load i32, ptr %arrayidx5, align 4, !tbaa !8
  %13 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp6 = icmp sgt i32 %12, %13
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !54

while.end:                                        ; preds = %while.cond
  br label %if.end7

if.end7:                                          ; preds = %while.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %14 = load i32, ptr %i, align 4, !tbaa !8
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !55

for.end:                                          ; preds = %for.cond
  %15 = load i32, ptr %k, align 4, !tbaa !8
  %16 = load i32, ptr %nnt, align 4, !tbaa !8
  %add = add nsw i32 %16, 1
  %cmp9 = icmp sle i32 %15, %add
  br i1 %cmp9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.end
  %17 = load i32, ptr %k, align 4, !tbaa !8
  %cmp10 = icmp sle i32 %17, 4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end
  %18 = phi i1 [ true, %for.end ], [ %cmp10, %lor.rhs ]
  %lor.ext = zext i1 %18 to i32
  store i32 %lor.ext, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %lor.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nnt) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @targetcell(ptr noundef %g, ptr noundef %lab, ptr noundef %ptn, i32 noundef %level, i32 noundef %tc_level, i32 noundef %digraph, i32 noundef %hint, i32 noundef %m, i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca ptr, align 8
  %lab.addr = alloca ptr, align 8
  %ptn.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %tc_level.addr = alloca i32, align 4
  %digraph.addr = alloca i32, align 4
  %hint.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store ptr %lab, ptr %lab.addr, align 8, !tbaa !4
  store ptr %ptn, ptr %ptn.addr, align 8, !tbaa !4
  store i32 %level, ptr %level.addr, align 4, !tbaa !8
  store i32 %tc_level, ptr %tc_level.addr, align 4, !tbaa !8
  store i32 %digraph, ptr %digraph.addr, align 4, !tbaa !8
  store i32 %hint, ptr %hint.addr, align 4, !tbaa !8
  store i32 %m, ptr %m.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %0 = load i32, ptr %hint.addr, align 4, !tbaa !8
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %2 = load i32, ptr %hint.addr, align 4, !tbaa !8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %4 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp1 = icmp sgt i32 %3, %4
  br i1 %cmp1, label %land.lhs.true2, label %if.else

land.lhs.true2:                                   ; preds = %land.lhs.true
  %5 = load i32, ptr %hint.addr, align 4, !tbaa !8
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true2
  %6 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %7 = load i32, ptr %hint.addr, align 4, !tbaa !8
  %sub = sub nsw i32 %7, 1
  %idxprom4 = sext i32 %sub to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %6, i64 %idxprom4
  %8 = load i32, ptr %arrayidx5, align 4, !tbaa !8
  %9 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp6 = icmp sle i32 %8, %9
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true2
  %10 = load i32, ptr %hint.addr, align 4, !tbaa !8
  store i32 %10, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false, %land.lhs.true, %entry
  %11 = load i32, ptr %level.addr, align 4, !tbaa !8
  %12 = load i32, ptr %tc_level.addr, align 4, !tbaa !8
  %cmp7 = icmp sle i32 %11, %12
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  %13 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %16 = load i32, ptr %level.addr, align 4, !tbaa !8
  %17 = load i32, ptr %tc_level.addr, align 4, !tbaa !8
  %18 = load i32, ptr %m.addr, align 4, !tbaa !8
  %19 = load i32, ptr %n.addr, align 4, !tbaa !8
  %call = call i32 @bestcell(ptr noundef %13, ptr noundef %14, ptr noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19)
  store i32 %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else9:                                         ; preds = %if.else
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else9
  %20 = load i32, ptr %i, align 4, !tbaa !8
  %21 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp10 = icmp slt i32 %20, %21
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %22 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %23 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom11 = sext i32 %23 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %22, i64 %idxprom11
  %24 = load i32, ptr %arrayidx12, align 4, !tbaa !8
  %25 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp13 = icmp sle i32 %24, %25
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %26 = phi i1 [ false, %for.cond ], [ %cmp13, %land.rhs ]
  br i1 %26, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !56

for.end:                                          ; preds = %land.end
  %28 = load i32, ptr %i, align 4, !tbaa !8
  %29 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp14 = icmp eq i32 %28, %29
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %30 = load i32, ptr %i, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %30, %cond.false ]
  store i32 %cond, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define void @naugraph_freedyn() #0 {
entry:
  %0 = load ptr, ptr @workset, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @workset, align 8, !tbaa !4
  call void @free(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store ptr null, ptr @workset, align 8, !tbaa !4
  store i64 0, ptr @workset_sz, align 8, !tbaa !16
  %2 = load ptr, ptr @workperm, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr @workperm, align 8, !tbaa !4
  call void @free(ptr noundef %3) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  store ptr null, ptr @workperm, align 8, !tbaa !4
  store i64 0, ptr @workperm_sz, align 8, !tbaa !16
  %4 = load ptr, ptr @bucket, align 8, !tbaa !4
  %tobool4 = icmp ne ptr %4, null
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %5 = load ptr, ptr @bucket, align 8, !tbaa !4
  call void @free(ptr noundef %5) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  store ptr null, ptr @bucket, align 8, !tbaa !4
  store i64 0, ptr @bucket_sz, align 8, !tbaa !16
  %6 = load ptr, ptr @dnwork, align 8, !tbaa !4
  %tobool7 = icmp ne ptr %6, null
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %7 = load ptr, ptr @dnwork, align 8, !tbaa !4
  call void @free(ptr noundef %7) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  store ptr null, ptr @dnwork, align 8, !tbaa !4
  store i64 0, ptr @dnwork_sz, align 8, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define void @naugraph_check(i32 noundef %wordsize, i32 noundef %m, i32 noundef %n, i32 noundef %version) #0 {
entry:
  %wordsize.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %version.addr = alloca i32, align 4
  store i32 %wordsize, ptr %wordsize.addr, align 4, !tbaa !8
  store i32 %m, ptr %m.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  store i32 %version, ptr %version.addr, align 4, !tbaa !8
  %0 = load i32, ptr %wordsize.addr, align 4, !tbaa !8
  %cmp = icmp ne i32 %0, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.6)
  call void @exit(i32 noundef 1) #8
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %version.addr, align 4, !tbaa !8
  %cmp1 = icmp slt i32 %2, 26040
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.7)
  call void @exit(i32 noundef 1) #8
  unreachable

if.end4:                                          ; preds = %if.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @nextelement(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

declare void @alloc_error(ptr noundef) #2

declare void @permset(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @bestcell(ptr noundef %g, ptr noundef %lab, ptr noundef %ptn, i32 noundef %level, i32 noundef %tc_level, i32 noundef %m, i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca ptr, align 8
  %lab.addr = alloca ptr, align 8
  %ptn.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %tc_level.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %gp = alloca ptr, align 8
  %setword1 = alloca i16, align 2
  %setword2 = alloca i16, align 2
  %v1 = alloca i32, align 4
  %v2 = alloca i32, align 4
  %nnt = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %es = alloca ptr, align 8
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store ptr %lab, ptr %lab.addr, align 8, !tbaa !4
  store ptr %ptn, ptr %ptn.addr, align 8, !tbaa !4
  store i32 %level, ptr %level.addr, align 4, !tbaa !8
  store i32 %tc_level, ptr %tc_level.addr, align 4, !tbaa !8
  store i32 %m, ptr %m.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %gp) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr %setword1) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr %setword2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %v1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %v2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %nnt) #6
  %0 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv = sext i32 %0 to i64
  %1 = load i64, ptr @workperm_sz, align 8, !tbaa !16
  %cmp = icmp ugt i64 %conv, %1
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @workperm_sz, align 8, !tbaa !16
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr @workperm, align 8, !tbaa !4
  call void @free(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %4 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv3 = sext i32 %4 to i64
  store i64 %conv3, ptr @workperm_sz, align 8, !tbaa !16
  %5 = load i32, ptr %n.addr, align 4, !tbaa !8
  %conv4 = sext i32 %5 to i64
  %mul = mul i64 %conv4, 4
  %call = call noalias ptr @malloc(i64 noundef %mul) #7
  store ptr %call, ptr @workperm, align 8, !tbaa !4
  %cmp5 = icmp eq ptr %call, null
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @alloc_error(ptr noundef @.str.8)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry
  %6 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv10 = sext i32 %6 to i64
  %7 = load i64, ptr @workset_sz, align 8, !tbaa !16
  %cmp11 = icmp ugt i64 %conv10, %7
  br i1 %cmp11, label %if.then13, label %if.end25

if.then13:                                        ; preds = %if.end9
  %8 = load i64, ptr @workset_sz, align 8, !tbaa !16
  %tobool14 = icmp ne i64 %8, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then13
  %9 = load ptr, ptr @workset, align 8, !tbaa !4
  call void @free(ptr noundef %9) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then13
  %10 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv17 = sext i32 %10 to i64
  store i64 %conv17, ptr @workset_sz, align 8, !tbaa !16
  %11 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv18 = sext i32 %11 to i64
  %mul19 = mul i64 %conv18, 2
  %call20 = call noalias ptr @malloc(i64 noundef %mul19) #7
  store ptr %call20, ptr @workset, align 8, !tbaa !4
  %cmp21 = icmp eq ptr %call20, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end16
  call void @alloc_error(ptr noundef @.str.8)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end16
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end9
  %12 = load i32, ptr %n.addr, align 4, !tbaa !8
  %add = add nsw i32 %12, 2
  %conv26 = sext i32 %add to i64
  %13 = load i64, ptr @bucket_sz, align 8, !tbaa !16
  %cmp27 = icmp ugt i64 %conv26, %13
  br i1 %cmp27, label %if.then29, label %if.end43

if.then29:                                        ; preds = %if.end25
  %14 = load i64, ptr @bucket_sz, align 8, !tbaa !16
  %tobool30 = icmp ne i64 %14, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then29
  %15 = load ptr, ptr @bucket, align 8, !tbaa !4
  call void @free(ptr noundef %15) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then29
  %16 = load i32, ptr %n.addr, align 4, !tbaa !8
  %add33 = add nsw i32 %16, 2
  %conv34 = sext i32 %add33 to i64
  store i64 %conv34, ptr @bucket_sz, align 8, !tbaa !16
  %17 = load i32, ptr %n.addr, align 4, !tbaa !8
  %add35 = add nsw i32 %17, 2
  %conv36 = sext i32 %add35 to i64
  %mul37 = mul i64 %conv36, 4
  %call38 = call noalias ptr @malloc(i64 noundef %mul37) #7
  store ptr %call38, ptr @bucket, align 8, !tbaa !4
  %cmp39 = icmp eq ptr %call38, null
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end32
  call void @alloc_error(ptr noundef @.str.8)
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end32
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end25
  store i32 0, ptr %nnt, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end58, %if.end43
  %18 = load i32, ptr %i, align 4, !tbaa !8
  %19 = load i32, ptr %n.addr, align 4, !tbaa !8
  %cmp44 = icmp slt i32 %18, %19
  br i1 %cmp44, label %while.body, label %while.end60

while.body:                                       ; preds = %while.cond
  %20 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %21 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds i32, ptr %20, i64 %idxprom
  %22 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %23 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp46 = icmp sgt i32 %22, %23
  br i1 %cmp46, label %if.then48, label %if.end58

if.then48:                                        ; preds = %while.body
  %24 = load i32, ptr %i, align 4, !tbaa !8
  %25 = load ptr, ptr @workperm, align 8, !tbaa !4
  %26 = load i32, ptr %nnt, align 4, !tbaa !8
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %nnt, align 4, !tbaa !8
  %idxprom49 = sext i32 %26 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %25, i64 %idxprom49
  store i32 %24, ptr %arrayidx50, align 4, !tbaa !8
  br label %while.cond51

while.cond51:                                     ; preds = %while.body56, %if.then48
  %27 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %28 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom52 = sext i32 %28 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %27, i64 %idxprom52
  %29 = load i32, ptr %arrayidx53, align 4, !tbaa !8
  %30 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp54 = icmp sgt i32 %29, %30
  br i1 %cmp54, label %while.body56, label %while.end

while.body56:                                     ; preds = %while.cond51
  %31 = load i32, ptr %i, align 4, !tbaa !8
  %inc57 = add nsw i32 %31, 1
  store i32 %inc57, ptr %i, align 4, !tbaa !8
  br label %while.cond51, !llvm.loop !57

while.end:                                        ; preds = %while.cond51
  br label %if.end58

if.end58:                                         ; preds = %while.end, %while.body
  %32 = load i32, ptr %i, align 4, !tbaa !8
  %inc59 = add nsw i32 %32, 1
  store i32 %inc59, ptr %i, align 4, !tbaa !8
  br label %while.cond, !llvm.loop !58

while.end60:                                      ; preds = %while.cond
  %33 = load i32, ptr %nnt, align 4, !tbaa !8
  %cmp61 = icmp eq i32 %33, 0
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %while.end60
  %34 = load i32, ptr %n.addr, align 4, !tbaa !8
  store i32 %34, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end64:                                         ; preds = %while.end60
  %35 = load i32, ptr %nnt, align 4, !tbaa !8
  store i32 %35, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end64
  %36 = load i32, ptr %i, align 4, !tbaa !8
  %dec = add nsw i32 %36, -1
  store i32 %dec, ptr %i, align 4, !tbaa !8
  %cmp65 = icmp sge i32 %dec, 0
  br i1 %cmp65, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load ptr, ptr @bucket, align 8, !tbaa !4
  %38 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom67 = sext i32 %38 to i64
  %arrayidx68 = getelementptr inbounds i32, ptr %37, i64 %idxprom67
  store i32 0, ptr %arrayidx68, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !59

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %v2, align 4, !tbaa !8
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc150, %for.end
  %39 = load i32, ptr %v2, align 4, !tbaa !8
  %40 = load i32, ptr %nnt, align 4, !tbaa !8
  %cmp70 = icmp slt i32 %39, %40
  br i1 %cmp70, label %for.body72, label %for.end152

for.body72:                                       ; preds = %for.cond69
  call void @llvm.lifetime.start.p0(i64 8, ptr %es) #6
  %41 = load ptr, ptr @workset, align 8, !tbaa !4
  %42 = load i32, ptr %m.addr, align 4, !tbaa !8
  %idx.ext = sext i32 %42 to i64
  %add.ptr = getelementptr inbounds i16, ptr %41, i64 %idx.ext
  store ptr %add.ptr, ptr %es, align 8, !tbaa !4
  br label %for.cond73

for.cond73:                                       ; preds = %for.body76, %for.body72
  %43 = load ptr, ptr %es, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i16, ptr %43, i32 -1
  store ptr %incdec.ptr, ptr %es, align 8, !tbaa !4
  %44 = load ptr, ptr @workset, align 8, !tbaa !4
  %cmp74 = icmp uge ptr %incdec.ptr, %44
  br i1 %cmp74, label %for.body76, label %for.end77

for.body76:                                       ; preds = %for.cond73
  %45 = load ptr, ptr %es, align 8, !tbaa !4
  store i16 0, ptr %45, align 2, !tbaa !10
  br label %for.cond73, !llvm.loop !60

for.end77:                                        ; preds = %for.cond73
  call void @llvm.lifetime.end.p0(i64 8, ptr %es) #6
  %46 = load ptr, ptr @workperm, align 8, !tbaa !4
  %47 = load i32, ptr %v2, align 4, !tbaa !8
  %idxprom78 = sext i32 %47 to i64
  %arrayidx79 = getelementptr inbounds i32, ptr %46, i64 %idxprom78
  %48 = load i32, ptr %arrayidx79, align 4, !tbaa !8
  %sub = sub nsw i32 %48, 1
  store i32 %sub, ptr %i, align 4, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end77
  %49 = load i32, ptr %i, align 4, !tbaa !8
  %inc80 = add nsw i32 %49, 1
  store i32 %inc80, ptr %i, align 4, !tbaa !8
  %50 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %51 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom81 = sext i32 %51 to i64
  %arrayidx82 = getelementptr inbounds i32, ptr %50, i64 %idxprom81
  %52 = load i32, ptr %arrayidx82, align 4, !tbaa !8
  %and = and i32 %52, 15
  %idxprom83 = sext i32 %and to i64
  %arrayidx84 = getelementptr inbounds [16 x i16], ptr @bit, i64 0, i64 %idxprom83
  %53 = load i16, ptr %arrayidx84, align 2, !tbaa !10
  %conv85 = zext i16 %53 to i32
  %54 = load ptr, ptr @workset, align 8, !tbaa !4
  %55 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %56 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom86 = sext i32 %56 to i64
  %arrayidx87 = getelementptr inbounds i32, ptr %55, i64 %idxprom86
  %57 = load i32, ptr %arrayidx87, align 4, !tbaa !8
  %shr = ashr i32 %57, 4
  %idxprom88 = sext i32 %shr to i64
  %arrayidx89 = getelementptr inbounds i16, ptr %54, i64 %idxprom88
  %58 = load i16, ptr %arrayidx89, align 2, !tbaa !10
  %conv90 = zext i16 %58 to i32
  %or = or i32 %conv90, %conv85
  %conv91 = trunc i32 %or to i16
  store i16 %conv91, ptr %arrayidx89, align 2, !tbaa !10
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %59 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %60 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom92 = sext i32 %60 to i64
  %arrayidx93 = getelementptr inbounds i32, ptr %59, i64 %idxprom92
  %61 = load i32, ptr %arrayidx93, align 4, !tbaa !8
  %62 = load i32, ptr %level.addr, align 4, !tbaa !8
  %cmp94 = icmp sgt i32 %61, %62
  br i1 %cmp94, label %do.body, label %do.end, !llvm.loop !61

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %v1, align 4, !tbaa !8
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc, %do.end
  %63 = load i32, ptr %v1, align 4, !tbaa !8
  %64 = load i32, ptr %v2, align 4, !tbaa !8
  %cmp97 = icmp slt i32 %63, %64
  br i1 %cmp97, label %for.body99, label %for.end149

for.body99:                                       ; preds = %for.cond96
  %65 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %66 = load i32, ptr %m.addr, align 4, !tbaa !8
  %conv100 = sext i32 %66 to i64
  %67 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %68 = load ptr, ptr @workperm, align 8, !tbaa !4
  %69 = load i32, ptr %v1, align 4, !tbaa !8
  %idxprom101 = sext i32 %69 to i64
  %arrayidx102 = getelementptr inbounds i32, ptr %68, i64 %idxprom101
  %70 = load i32, ptr %arrayidx102, align 4, !tbaa !8
  %idxprom103 = sext i32 %70 to i64
  %arrayidx104 = getelementptr inbounds i32, ptr %67, i64 %idxprom103
  %71 = load i32, ptr %arrayidx104, align 4, !tbaa !8
  %conv105 = sext i32 %71 to i64
  %mul106 = mul i64 %conv100, %conv105
  %add.ptr107 = getelementptr inbounds i16, ptr %65, i64 %mul106
  store ptr %add.ptr107, ptr %gp, align 8, !tbaa !4
  store i16 0, ptr %setword2, align 2, !tbaa !10
  store i16 0, ptr %setword1, align 2, !tbaa !10
  %72 = load i32, ptr %m.addr, align 4, !tbaa !8
  store i32 %72, ptr %i, align 4, !tbaa !8
  br label %for.cond108

for.cond108:                                      ; preds = %for.body112, %for.body99
  %73 = load i32, ptr %i, align 4, !tbaa !8
  %dec109 = add nsw i32 %73, -1
  store i32 %dec109, ptr %i, align 4, !tbaa !8
  %cmp110 = icmp sge i32 %dec109, 0
  br i1 %cmp110, label %for.body112, label %for.end133

for.body112:                                      ; preds = %for.cond108
  %74 = load ptr, ptr @workset, align 8, !tbaa !4
  %75 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom113 = sext i32 %75 to i64
  %arrayidx114 = getelementptr inbounds i16, ptr %74, i64 %idxprom113
  %76 = load i16, ptr %arrayidx114, align 2, !tbaa !10
  %conv115 = zext i16 %76 to i32
  %77 = load ptr, ptr %gp, align 8, !tbaa !4
  %78 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom116 = sext i32 %78 to i64
  %arrayidx117 = getelementptr inbounds i16, ptr %77, i64 %idxprom116
  %79 = load i16, ptr %arrayidx117, align 2, !tbaa !10
  %conv118 = zext i16 %79 to i32
  %and119 = and i32 %conv115, %conv118
  %80 = load i16, ptr %setword1, align 2, !tbaa !10
  %conv120 = zext i16 %80 to i32
  %or121 = or i32 %conv120, %and119
  %conv122 = trunc i32 %or121 to i16
  store i16 %conv122, ptr %setword1, align 2, !tbaa !10
  %81 = load ptr, ptr @workset, align 8, !tbaa !4
  %82 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom123 = sext i32 %82 to i64
  %arrayidx124 = getelementptr inbounds i16, ptr %81, i64 %idxprom123
  %83 = load i16, ptr %arrayidx124, align 2, !tbaa !10
  %conv125 = zext i16 %83 to i32
  %84 = load ptr, ptr %gp, align 8, !tbaa !4
  %85 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom126 = sext i32 %85 to i64
  %arrayidx127 = getelementptr inbounds i16, ptr %84, i64 %idxprom126
  %86 = load i16, ptr %arrayidx127, align 2, !tbaa !10
  %conv128 = zext i16 %86 to i32
  %not = xor i32 %conv128, -1
  %and129 = and i32 %conv125, %not
  %87 = load i16, ptr %setword2, align 2, !tbaa !10
  %conv130 = zext i16 %87 to i32
  %or131 = or i32 %conv130, %and129
  %conv132 = trunc i32 %or131 to i16
  store i16 %conv132, ptr %setword2, align 2, !tbaa !10
  br label %for.cond108, !llvm.loop !62

for.end133:                                       ; preds = %for.cond108
  %88 = load i16, ptr %setword1, align 2, !tbaa !10
  %conv134 = zext i16 %88 to i32
  %cmp135 = icmp ne i32 %conv134, 0
  br i1 %cmp135, label %land.lhs.true, label %if.end147

land.lhs.true:                                    ; preds = %for.end133
  %89 = load i16, ptr %setword2, align 2, !tbaa !10
  %conv137 = zext i16 %89 to i32
  %cmp138 = icmp ne i32 %conv137, 0
  br i1 %cmp138, label %if.then140, label %if.end147

if.then140:                                       ; preds = %land.lhs.true
  %90 = load ptr, ptr @bucket, align 8, !tbaa !4
  %91 = load i32, ptr %v1, align 4, !tbaa !8
  %idxprom141 = sext i32 %91 to i64
  %arrayidx142 = getelementptr inbounds i32, ptr %90, i64 %idxprom141
  %92 = load i32, ptr %arrayidx142, align 4, !tbaa !8
  %inc143 = add nsw i32 %92, 1
  store i32 %inc143, ptr %arrayidx142, align 4, !tbaa !8
  %93 = load ptr, ptr @bucket, align 8, !tbaa !4
  %94 = load i32, ptr %v2, align 4, !tbaa !8
  %idxprom144 = sext i32 %94 to i64
  %arrayidx145 = getelementptr inbounds i32, ptr %93, i64 %idxprom144
  %95 = load i32, ptr %arrayidx145, align 4, !tbaa !8
  %inc146 = add nsw i32 %95, 1
  store i32 %inc146, ptr %arrayidx145, align 4, !tbaa !8
  br label %if.end147

if.end147:                                        ; preds = %if.then140, %land.lhs.true, %for.end133
  br label %for.inc

for.inc:                                          ; preds = %if.end147
  %96 = load i32, ptr %v1, align 4, !tbaa !8
  %inc148 = add nsw i32 %96, 1
  store i32 %inc148, ptr %v1, align 4, !tbaa !8
  br label %for.cond96, !llvm.loop !63

for.end149:                                       ; preds = %for.cond96
  br label %for.inc150

for.inc150:                                       ; preds = %for.end149
  %97 = load i32, ptr %v2, align 4, !tbaa !8
  %inc151 = add nsw i32 %97, 1
  store i32 %inc151, ptr %v2, align 4, !tbaa !8
  br label %for.cond69, !llvm.loop !64

for.end152:                                       ; preds = %for.cond69
  store i32 0, ptr %v1, align 4, !tbaa !8
  %98 = load ptr, ptr @bucket, align 8, !tbaa !4
  %arrayidx153 = getelementptr inbounds i32, ptr %98, i64 0
  %99 = load i32, ptr %arrayidx153, align 4, !tbaa !8
  store i32 %99, ptr %v2, align 4, !tbaa !8
  store i32 1, ptr %i, align 4, !tbaa !8
  br label %for.cond154

for.cond154:                                      ; preds = %for.inc166, %for.end152
  %100 = load i32, ptr %i, align 4, !tbaa !8
  %101 = load i32, ptr %nnt, align 4, !tbaa !8
  %cmp155 = icmp slt i32 %100, %101
  br i1 %cmp155, label %for.body157, label %for.end168

for.body157:                                      ; preds = %for.cond154
  %102 = load ptr, ptr @bucket, align 8, !tbaa !4
  %103 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom158 = sext i32 %103 to i64
  %arrayidx159 = getelementptr inbounds i32, ptr %102, i64 %idxprom158
  %104 = load i32, ptr %arrayidx159, align 4, !tbaa !8
  %105 = load i32, ptr %v2, align 4, !tbaa !8
  %cmp160 = icmp sgt i32 %104, %105
  br i1 %cmp160, label %if.then162, label %if.end165

if.then162:                                       ; preds = %for.body157
  %106 = load i32, ptr %i, align 4, !tbaa !8
  store i32 %106, ptr %v1, align 4, !tbaa !8
  %107 = load ptr, ptr @bucket, align 8, !tbaa !4
  %108 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom163 = sext i32 %108 to i64
  %arrayidx164 = getelementptr inbounds i32, ptr %107, i64 %idxprom163
  %109 = load i32, ptr %arrayidx164, align 4, !tbaa !8
  store i32 %109, ptr %v2, align 4, !tbaa !8
  br label %if.end165

if.end165:                                        ; preds = %if.then162, %for.body157
  br label %for.inc166

for.inc166:                                       ; preds = %if.end165
  %110 = load i32, ptr %i, align 4, !tbaa !8
  %inc167 = add nsw i32 %110, 1
  store i32 %inc167, ptr %i, align 4, !tbaa !8
  br label %for.cond154, !llvm.loop !65

for.end168:                                       ; preds = %for.cond154
  %111 = load ptr, ptr @workperm, align 8, !tbaa !4
  %112 = load i32, ptr %v1, align 4, !tbaa !8
  %idxprom169 = sext i32 %112 to i64
  %arrayidx170 = getelementptr inbounds i32, ptr %111, i64 %idxprom169
  %113 = load i32, ptr %arrayidx170, align 4, !tbaa !8
  store i32 %113, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end168, %if.then63
  call void @llvm.lifetime.end.p0(i64 4, ptr %nnt) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %v2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %v1) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr %setword2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr %setword1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %gp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  %114 = load i32, ptr %retval, align 4
  ret i32 %114
}

; Function Attrs: nounwind uwtable
define void @densenauty(ptr noundef %g, ptr noundef %lab, ptr noundef %ptn, ptr noundef %orbits, ptr noundef %options, ptr noundef %stats, i32 noundef %m, i32 noundef %n, ptr noundef %h) #0 {
entry:
  %g.addr = alloca ptr, align 8
  %lab.addr = alloca ptr, align 8
  %ptn.addr = alloca ptr, align 8
  %orbits.addr = alloca ptr, align 8
  %options.addr = alloca ptr, align 8
  %stats.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  store ptr %g, ptr %g.addr, align 8, !tbaa !4
  store ptr %lab, ptr %lab.addr, align 8, !tbaa !4
  store ptr %ptn, ptr %ptn.addr, align 8, !tbaa !4
  store ptr %orbits, ptr %orbits.addr, align 8, !tbaa !4
  store ptr %options, ptr %options.addr, align 8, !tbaa !4
  store ptr %stats, ptr %stats.addr, align 8, !tbaa !4
  store i32 %m, ptr %m.addr, align 4, !tbaa !8
  store i32 %n, ptr %n.addr, align 4, !tbaa !8
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %dispatch = getelementptr inbounds %struct.optionstruct, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %dispatch, align 8, !tbaa !66
  %cmp = icmp ne ptr %1, @dispatch_graph
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.4)
  call void @exit(i32 noundef 1) #8
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %m.addr, align 4, !tbaa !8
  %mul = mul nsw i32 120, %3
  %conv = sext i32 %mul to i64
  %4 = load i64, ptr @dnwork_sz, align 8, !tbaa !16
  %cmp1 = icmp ugt i64 %conv, %4
  br i1 %cmp1, label %if.then3, label %if.end16

if.then3:                                         ; preds = %if.end
  %5 = load i64, ptr @dnwork_sz, align 8, !tbaa !16
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then3
  %6 = load ptr, ptr @dnwork, align 8, !tbaa !4
  call void @free(ptr noundef %6) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then3
  %7 = load i32, ptr %m.addr, align 4, !tbaa !8
  %mul6 = mul nsw i32 120, %7
  %conv7 = sext i32 %mul6 to i64
  store i64 %conv7, ptr @dnwork_sz, align 8, !tbaa !16
  %8 = load i32, ptr %m.addr, align 4, !tbaa !8
  %mul8 = mul nsw i32 120, %8
  %conv9 = sext i32 %mul8 to i64
  %mul10 = mul i64 %conv9, 2
  %call11 = call noalias ptr @malloc(i64 noundef %mul10) #7
  store ptr %call11, ptr @dnwork, align 8, !tbaa !4
  %cmp12 = icmp eq ptr %call11, null
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end5
  call void @alloc_error(ptr noundef @.str.5)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end5
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  %9 = load ptr, ptr %g.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %lab.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %ptn.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %orbits.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %stats.addr, align 8, !tbaa !4
  %15 = load ptr, ptr @dnwork, align 8, !tbaa !4
  %16 = load i32, ptr %m.addr, align 4, !tbaa !8
  %mul17 = mul nsw i32 120, %16
  %17 = load i32, ptr %m.addr, align 4, !tbaa !8
  %18 = load i32, ptr %n.addr, align 4, !tbaa !8
  %19 = load ptr, ptr %h.addr, align 8, !tbaa !4
  call void @nauty(ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef null, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, i32 noundef %mul17, i32 noundef %17, i32 noundef %18, ptr noundef %19)
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #5

declare void @nauty(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !6, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = distinct !{!18, !13, !14}
!19 = distinct !{!19, !13, !14}
!20 = distinct !{!20, !13, !14}
!21 = distinct !{!21, !13, !14}
!22 = distinct !{!22, !13, !14}
!23 = distinct !{!23, !13, !14}
!24 = distinct !{!24, !13, !14}
!25 = distinct !{!25, !13, !14}
!26 = distinct !{!26, !13, !14}
!27 = distinct !{!27, !13, !14}
!28 = distinct !{!28, !13, !14}
!29 = distinct !{!29, !13, !14}
!30 = distinct !{!30, !13, !14}
!31 = distinct !{!31, !13, !14}
!32 = distinct !{!32, !13, !14}
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
!45 = distinct !{!45, !13, !14}
!46 = distinct !{!46, !13, !14}
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
!60 = distinct !{!60, !13, !14}
!61 = distinct !{!61, !13, !14}
!62 = distinct !{!62, !13, !14}
!63 = distinct !{!63, !13, !14}
!64 = distinct !{!64, !13, !14}
!65 = distinct !{!65, !13, !14}
!66 = !{!67, !5, i64 104}
!67 = !{!"optionstruct", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !5, i64 104, !9, i64 112, !5, i64 120}
