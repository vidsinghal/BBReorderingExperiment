; ModuleID = 'samples/108.bc'
source_filename = "seeds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seed = type { ptr, i8, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [11 x i8] c"free_seeds\00", align 1
@seed_pattern.s = internal global [70 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [18 x i8] c"seed_shuffle_list\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"seed contains things other than don't-care and match\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"internal error, seed weight and masks conflict\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%016llX\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"  ( >> %2d) & %08X\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"  resolve:   %08X\0A\00", align 1
@bit_to_pur_pyr = external global ptr, align 8
@bits_to_nuc = external global ptr, align 8
@seed_packed_to_string2.s = internal global [64 x i8] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [57 x i8] c"internal error: overweight seeds cannot be complementing\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"max index bits cannot exceed %d (it's %d).\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"seed string is empty!\00", align 1
@.str.10 = private unnamed_addr constant [70 x i8] c"seed (%s) requires more resolving bits (%d) than it has matches (%d).\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"seed (%s) requires more resolving bits (%d) than are allowed (%d).\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"seed string %s contains illegal character %c\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"seed string %s contains illegal character %02X\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"resolving bits in seed string %s are spread too widely\00", align 1
@.str.15 = private unnamed_addr constant [72 x i8] c"half-weight seed string (%s) cannot have length exceeding %d (it's %d).\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"seed string (%s) cannot have length exceeding %d (it's %d).\00", align 1
@.str.17 = private unnamed_addr constant [64 x i8] c"seed string (%s) cannot have bit weight exceeding %d (it's %d).\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"seed string (%s) cannot have zero weight.\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"new_seed\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @parse_seeds_string(ptr noundef %s, ptr noundef %seed, i32 noundef %maxIndexBits) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %seed.addr = alloca ptr, align 8
  %maxIndexBits.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !5
  store ptr %seed, ptr %seed.addr, align 8, !tbaa !5
  store i32 %maxIndexBits, ptr %maxIndexBits.addr, align 4, !tbaa !9
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %2 = load i32, ptr %maxIndexBits.addr, align 4, !tbaa !9
  %call = call i32 @_parse_seeds_string(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @_parse_seeds_string(ptr noundef %s, ptr noundef %_seed, i32 noundef %transitionsOk, i32 noundef %maxIndexBits) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %_seed.addr = alloca ptr, align 8
  %transitionsOk.addr = alloca i32, align 4
  %maxIndexBits.addr = alloca i32, align 4
  %tail = alloca ptr, align 8
  %newSeed = alloca ptr, align 8
  %maxWeight = alloca i32, align 4
  %terminator = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !5
  store ptr %_seed, ptr %_seed.addr, align 8, !tbaa !5
  store i32 %transitionsOk, ptr %transitionsOk.addr, align 4, !tbaa !9
  store i32 %maxIndexBits, ptr %maxIndexBits.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail) #6
  store ptr null, ptr %tail, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %newSeed) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxWeight) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %terminator) #6
  %0 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  store ptr null, ptr %0, align 8, !tbaa !5
  store i32 -1, ptr %maxWeight, align 4, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %if.end15, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !5
  %call = call ptr @strchr(ptr noundef %1, i32 noundef 44) #7
  store ptr %call, ptr %terminator, align 8, !tbaa !5
  %2 = load ptr, ptr %terminator, align 8, !tbaa !5
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load ptr, ptr %s.addr, align 8, !tbaa !5
  %4 = load ptr, ptr %s.addr, align 8, !tbaa !5
  %call1 = call i64 @strlen(ptr noundef %4) #7
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %call1
  store ptr %add.ptr, ptr %terminator, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %5 = load ptr, ptr %s.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %terminator, align 8, !tbaa !5
  %add.ptr2 = getelementptr inbounds i8, ptr %6, i64 -1
  %7 = load i32, ptr %transitionsOk.addr, align 4, !tbaa !9
  %8 = load i32, ptr %maxIndexBits.addr, align 4, !tbaa !9
  %call3 = call ptr @parse_one_seed(ptr noundef %5, ptr noundef %add.ptr2, i32 noundef %7, i32 noundef %8)
  store ptr %call3, ptr %newSeed, align 8, !tbaa !5
  %9 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %cmp4 = icmp eq ptr %10, null
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %11 = load ptr, ptr %newSeed, align 8, !tbaa !5
  %12 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  store ptr %11, ptr %12, align 8, !tbaa !5
  store ptr %11, ptr %tail, align 8, !tbaa !5
  %13 = load ptr, ptr %newSeed, align 8, !tbaa !5
  %weight = getelementptr inbounds %struct.seed, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %weight, align 8, !tbaa !11
  store i32 %14, ptr %maxWeight, align 4, !tbaa !9
  br label %if.end11

if.else:                                          ; preds = %if.end
  %15 = load ptr, ptr %newSeed, align 8, !tbaa !5
  %16 = load ptr, ptr %tail, align 8, !tbaa !5
  %next = getelementptr inbounds %struct.seed, ptr %16, i32 0, i32 0
  store ptr %15, ptr %next, align 8, !tbaa !13
  %17 = load ptr, ptr %newSeed, align 8, !tbaa !5
  store ptr %17, ptr %tail, align 8, !tbaa !5
  %18 = load ptr, ptr %newSeed, align 8, !tbaa !5
  %weight6 = getelementptr inbounds %struct.seed, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %weight6, align 8, !tbaa !11
  %20 = load i32, ptr %maxWeight, align 4, !tbaa !9
  %cmp7 = icmp sgt i32 %19, %20
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.else
  %21 = load ptr, ptr %newSeed, align 8, !tbaa !5
  %weight9 = getelementptr inbounds %struct.seed, ptr %21, i32 0, i32 3
  %22 = load i32, ptr %weight9, align 8, !tbaa !11
  store i32 %22, ptr %maxWeight, align 4, !tbaa !9
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then5
  %23 = load ptr, ptr %terminator, align 8, !tbaa !5
  %24 = load i8, ptr %23, align 1, !tbaa !14
  %conv = sext i8 %24 to i32
  %cmp12 = icmp eq i32 %conv, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  br label %while.end

if.end15:                                         ; preds = %if.end11
  %25 = load ptr, ptr %terminator, align 8, !tbaa !5
  %add.ptr16 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %add.ptr16, ptr %s.addr, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %if.then14
  %26 = load i32, ptr %maxWeight, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %terminator) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxWeight) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %newSeed) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail) #6
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define dso_local i32 @parse_strict_seeds_string(ptr noundef %s, ptr noundef %seed, i32 noundef %maxIndexBits) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %seed.addr = alloca ptr, align 8
  %maxIndexBits.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !5
  store ptr %seed, ptr %seed.addr, align 8, !tbaa !5
  store i32 %maxIndexBits, ptr %maxIndexBits.addr, align 4, !tbaa !9
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %2 = load i32, ptr %maxIndexBits.addr, align 4, !tbaa !9
  %call = call i32 @_parse_seeds_string(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define dso_local ptr @reconstruct_seed(i8 noundef signext %type, i32 noundef %length, i32 noundef %weight, ptr noundef %pattern, i32 noundef %resolvingMask, i32 noundef %revComp, i32 noundef %isHalfweight, i32 noundef %numParts, ptr noundef %shift, ptr noundef %mask, ptr noundef %transFlips) #0 {
entry:
  %type.addr = alloca i8, align 1
  %length.addr = alloca i32, align 4
  %weight.addr = alloca i32, align 4
  %pattern.addr = alloca ptr, align 8
  %resolvingMask.addr = alloca i32, align 4
  %revComp.addr = alloca i32, align 4
  %isHalfweight.addr = alloca i32, align 4
  %numParts.addr = alloca i32, align 4
  %shift.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %transFlips.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %numFlips = alloca i32, align 4
  %ix = alloca i32, align 4
  store i8 %type, ptr %type.addr, align 1, !tbaa !14
  store i32 %length, ptr %length.addr, align 4, !tbaa !9
  store i32 %weight, ptr %weight.addr, align 4, !tbaa !9
  store ptr %pattern, ptr %pattern.addr, align 8, !tbaa !5
  store i32 %resolvingMask, ptr %resolvingMask.addr, align 4, !tbaa !9
  store i32 %revComp, ptr %revComp.addr, align 4, !tbaa !9
  store i32 %isHalfweight, ptr %isHalfweight.addr, align 4, !tbaa !9
  store i32 %numParts, ptr %numParts.addr, align 4, !tbaa !9
  store ptr %shift, ptr %shift.addr, align 8, !tbaa !5
  store ptr %mask, ptr %mask.addr, align 8, !tbaa !5
  store ptr %transFlips, ptr %transFlips.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %numFlips) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #6
  store i32 0, ptr %numFlips, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %transFlips.addr, align 8, !tbaa !5
  %1 = load i32, ptr %numFlips, align 4, !tbaa !9
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %numFlips, align 4, !tbaa !9
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %numFlips, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %4 = load ptr, ptr %pattern.addr, align 8, !tbaa !5
  %cmp1 = icmp eq ptr %4, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %5 = load i32, ptr %numParts.addr, align 4, !tbaa !9
  %6 = load i32, ptr %numFlips, align 4, !tbaa !9
  %call = call ptr @new_seed(i32 noundef %5, i32 noundef 0, i32 noundef %6)
  store ptr %call, ptr %s, align 8, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %for.end
  %7 = load i32, ptr %numParts.addr, align 4, !tbaa !9
  %8 = load ptr, ptr %pattern.addr, align 8, !tbaa !5
  %call2 = call i64 @strlen(ptr noundef %8) #7
  %conv = trunc i64 %call2 to i32
  %9 = load i32, ptr %numFlips, align 4, !tbaa !9
  %call3 = call ptr @new_seed(i32 noundef %7, i32 noundef %conv, i32 noundef %9)
  store ptr %call3, ptr %s, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i8, ptr %type.addr, align 1, !tbaa !14
  %11 = load ptr, ptr %s, align 8, !tbaa !5
  %type4 = getelementptr inbounds %struct.seed, ptr %11, i32 0, i32 1
  store i8 %10, ptr %type4, align 8, !tbaa !17
  %12 = load i32, ptr %length.addr, align 4, !tbaa !9
  %13 = load ptr, ptr %s, align 8, !tbaa !5
  %length5 = getelementptr inbounds %struct.seed, ptr %13, i32 0, i32 2
  store i32 %12, ptr %length5, align 4, !tbaa !18
  %14 = load i32, ptr %weight.addr, align 4, !tbaa !9
  %15 = load ptr, ptr %s, align 8, !tbaa !5
  %weight6 = getelementptr inbounds %struct.seed, ptr %15, i32 0, i32 3
  store i32 %14, ptr %weight6, align 8, !tbaa !11
  %16 = load i32, ptr %resolvingMask.addr, align 4, !tbaa !9
  %17 = load ptr, ptr %s, align 8, !tbaa !5
  %resolvingMask7 = getelementptr inbounds %struct.seed, ptr %17, i32 0, i32 8
  store i32 %16, ptr %resolvingMask7, align 8, !tbaa !19
  %18 = load i32, ptr %revComp.addr, align 4, !tbaa !9
  %19 = load ptr, ptr %s, align 8, !tbaa !5
  %revComp8 = getelementptr inbounds %struct.seed, ptr %19, i32 0, i32 9
  store i32 %18, ptr %revComp8, align 4, !tbaa !20
  %20 = load i32, ptr %isHalfweight.addr, align 4, !tbaa !9
  %21 = load ptr, ptr %s, align 8, !tbaa !5
  %isHalfweight9 = getelementptr inbounds %struct.seed, ptr %21, i32 0, i32 10
  store i32 %20, ptr %isHalfweight9, align 8, !tbaa !21
  %22 = load ptr, ptr %pattern.addr, align 8, !tbaa !5
  %cmp10 = icmp ne ptr %22, null
  br i1 %cmp10, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  %23 = load ptr, ptr %s, align 8, !tbaa !5
  %pattern13 = getelementptr inbounds %struct.seed, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %pattern13, align 8, !tbaa !22
  %25 = load ptr, ptr %pattern.addr, align 8, !tbaa !5
  %call14 = call ptr @strcpy(ptr noundef %24, ptr noundef %25) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end
  store i32 0, ptr %ix, align 4, !tbaa !9
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc25, %if.end15
  %26 = load i32, ptr %ix, align 4, !tbaa !9
  %27 = load i32, ptr %numParts.addr, align 4, !tbaa !9
  %cmp17 = icmp slt i32 %26, %27
  br i1 %cmp17, label %for.body19, label %for.end27

for.body19:                                       ; preds = %for.cond16
  %28 = load ptr, ptr %shift.addr, align 8, !tbaa !5
  %29 = load i32, ptr %ix, align 4, !tbaa !9
  %idxprom20 = sext i32 %29 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %28, i64 %idxprom20
  %30 = load i32, ptr %arrayidx21, align 4, !tbaa !9
  %31 = load ptr, ptr %s, align 8, !tbaa !5
  %shift22 = getelementptr inbounds %struct.seed, ptr %31, i32 0, i32 6
  %32 = load ptr, ptr %shift22, align 8, !tbaa !23
  %33 = load i32, ptr %ix, align 4, !tbaa !9
  %idxprom23 = sext i32 %33 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %32, i64 %idxprom23
  store i32 %30, ptr %arrayidx24, align 4, !tbaa !9
  br label %for.inc25

for.inc25:                                        ; preds = %for.body19
  %34 = load i32, ptr %ix, align 4, !tbaa !9
  %inc26 = add nsw i32 %34, 1
  store i32 %inc26, ptr %ix, align 4, !tbaa !9
  br label %for.cond16, !llvm.loop !24

for.end27:                                        ; preds = %for.cond16
  store i32 0, ptr %ix, align 4, !tbaa !9
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc37, %for.end27
  %35 = load i32, ptr %ix, align 4, !tbaa !9
  %36 = load i32, ptr %numParts.addr, align 4, !tbaa !9
  %cmp29 = icmp slt i32 %35, %36
  br i1 %cmp29, label %for.body31, label %for.end39

for.body31:                                       ; preds = %for.cond28
  %37 = load ptr, ptr %mask.addr, align 8, !tbaa !5
  %38 = load i32, ptr %ix, align 4, !tbaa !9
  %idxprom32 = sext i32 %38 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %37, i64 %idxprom32
  %39 = load i32, ptr %arrayidx33, align 4, !tbaa !9
  %40 = load ptr, ptr %s, align 8, !tbaa !5
  %mask34 = getelementptr inbounds %struct.seed, ptr %40, i32 0, i32 7
  %41 = load ptr, ptr %mask34, align 8, !tbaa !25
  %42 = load i32, ptr %ix, align 4, !tbaa !9
  %idxprom35 = sext i32 %42 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %41, i64 %idxprom35
  store i32 %39, ptr %arrayidx36, align 4, !tbaa !9
  br label %for.inc37

for.inc37:                                        ; preds = %for.body31
  %43 = load i32, ptr %ix, align 4, !tbaa !9
  %inc38 = add nsw i32 %43, 1
  store i32 %inc38, ptr %ix, align 4, !tbaa !9
  br label %for.cond28, !llvm.loop !26

for.end39:                                        ; preds = %for.cond28
  store i32 0, ptr %ix, align 4, !tbaa !9
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc49, %for.end39
  %44 = load i32, ptr %ix, align 4, !tbaa !9
  %45 = load i32, ptr %numFlips, align 4, !tbaa !9
  %cmp41 = icmp sle i32 %44, %45
  br i1 %cmp41, label %for.body43, label %for.end51

for.body43:                                       ; preds = %for.cond40
  %46 = load ptr, ptr %transFlips.addr, align 8, !tbaa !5
  %47 = load i32, ptr %ix, align 4, !tbaa !9
  %idxprom44 = sext i32 %47 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %46, i64 %idxprom44
  %48 = load i32, ptr %arrayidx45, align 4, !tbaa !9
  %49 = load ptr, ptr %s, align 8, !tbaa !5
  %transFlips46 = getelementptr inbounds %struct.seed, ptr %49, i32 0, i32 12
  %50 = load ptr, ptr %transFlips46, align 8, !tbaa !27
  %51 = load i32, ptr %ix, align 4, !tbaa !9
  %idxprom47 = sext i32 %51 to i64
  %arrayidx48 = getelementptr inbounds i32, ptr %50, i64 %idxprom47
  store i32 %48, ptr %arrayidx48, align 4, !tbaa !9
  br label %for.inc49

for.inc49:                                        ; preds = %for.body43
  %52 = load i32, ptr %ix, align 4, !tbaa !9
  %inc50 = add nsw i32 %52, 1
  store i32 %inc50, ptr %ix, align 4, !tbaa !9
  br label %for.cond40, !llvm.loop !28

for.end51:                                        ; preds = %for.cond40
  %53 = load ptr, ptr %s, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %numFlips) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6
  ret ptr %53
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal ptr @new_seed(i32 noundef %numParts, i32 noundef %patternLen, i32 noundef %numFlips) #0 {
entry:
  %numParts.addr = alloca i32, align 4
  %patternLen.addr = alloca i32, align 4
  %numFlips.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %bytesNeeded = alloca i32, align 4
  %bytesMain = alloca i32, align 4
  %bytesShift = alloca i32, align 4
  %bytesMask = alloca i32, align 4
  %bytesFlips = alloca i32, align 4
  store i32 %numParts, ptr %numParts.addr, align 4, !tbaa !9
  store i32 %patternLen, ptr %patternLen.addr, align 4, !tbaa !9
  store i32 %numFlips, ptr %numFlips.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %bytesNeeded) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %bytesMain) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %bytesShift) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %bytesMask) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %bytesFlips) #6
  store i32 80, ptr %bytesMain, align 4, !tbaa !9
  %0 = load i32, ptr %numParts.addr, align 4, !tbaa !9
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %add = add i64 %mul, 7
  %and = and i64 %add, -8
  %conv1 = trunc i64 %and to i32
  store i32 %conv1, ptr %bytesShift, align 4, !tbaa !9
  %1 = load i32, ptr %numParts.addr, align 4, !tbaa !9
  %conv2 = sext i32 %1 to i64
  %mul3 = mul i64 %conv2, 4
  %add4 = add i64 %mul3, 7
  %and5 = and i64 %add4, -8
  %conv6 = trunc i64 %and5 to i32
  store i32 %conv6, ptr %bytesMask, align 4, !tbaa !9
  store i32 0, ptr %bytesFlips, align 4, !tbaa !9
  %2 = load i32, ptr %numFlips.addr, align 4, !tbaa !9
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %numFlips.addr, align 4, !tbaa !9
  %add8 = add nsw i32 %3, 1
  %conv9 = sext i32 %add8 to i64
  %mul10 = mul i64 %conv9, 4
  %conv11 = trunc i64 %mul10 to i32
  store i32 %conv11, ptr %bytesFlips, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %patternLen.addr, align 4, !tbaa !9
  %cmp12 = icmp sgt i32 %4, 0
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  %5 = load i32, ptr %patternLen.addr, align 4, !tbaa !9
  %add15 = add nsw i32 %5, 1
  store i32 %add15, ptr %patternLen.addr, align 4, !tbaa !9
  br label %if.end20

if.else:                                          ; preds = %if.end
  %6 = load i32, ptr %patternLen.addr, align 4, !tbaa !9
  %cmp16 = icmp slt i32 %6, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.else
  store i32 0, ptr %patternLen.addr, align 4, !tbaa !9
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then14
  %7 = load i32, ptr %bytesMain, align 4, !tbaa !9
  %8 = load i32, ptr %bytesShift, align 4, !tbaa !9
  %add21 = add nsw i32 %7, %8
  %9 = load i32, ptr %bytesMask, align 4, !tbaa !9
  %add22 = add nsw i32 %add21, %9
  %10 = load i32, ptr %bytesFlips, align 4, !tbaa !9
  %add23 = add nsw i32 %add22, %10
  %11 = load i32, ptr %patternLen.addr, align 4, !tbaa !9
  %add24 = add nsw i32 %add23, %11
  store i32 %add24, ptr %bytesNeeded, align 4, !tbaa !9
  %12 = load i32, ptr %bytesNeeded, align 4, !tbaa !9
  %conv25 = sext i32 %12 to i64
  %call = call ptr @zalloc_or_die(ptr noundef @.str.19, i64 noundef %conv25)
  store ptr %call, ptr %s, align 8, !tbaa !5
  %13 = load ptr, ptr %s, align 8, !tbaa !5
  %14 = load i32, ptr %bytesMain, align 4, !tbaa !9
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %idx.ext
  %15 = load ptr, ptr %s, align 8, !tbaa !5
  %shift = getelementptr inbounds %struct.seed, ptr %15, i32 0, i32 6
  store ptr %add.ptr, ptr %shift, align 8, !tbaa !23
  %16 = load ptr, ptr %s, align 8, !tbaa !5
  %shift26 = getelementptr inbounds %struct.seed, ptr %16, i32 0, i32 6
  %17 = load ptr, ptr %shift26, align 8, !tbaa !23
  %18 = load i32, ptr %bytesShift, align 4, !tbaa !9
  %idx.ext27 = sext i32 %18 to i64
  %add.ptr28 = getelementptr inbounds i8, ptr %17, i64 %idx.ext27
  %19 = load ptr, ptr %s, align 8, !tbaa !5
  %mask = getelementptr inbounds %struct.seed, ptr %19, i32 0, i32 7
  store ptr %add.ptr28, ptr %mask, align 8, !tbaa !25
  %20 = load ptr, ptr %s, align 8, !tbaa !5
  %transFlips = getelementptr inbounds %struct.seed, ptr %20, i32 0, i32 12
  store ptr null, ptr %transFlips, align 8, !tbaa !27
  %21 = load i32, ptr %numFlips.addr, align 4, !tbaa !9
  %cmp29 = icmp sgt i32 %21, 0
  br i1 %cmp29, label %if.then31, label %if.end36

if.then31:                                        ; preds = %if.end20
  %22 = load ptr, ptr %s, align 8, !tbaa !5
  %mask32 = getelementptr inbounds %struct.seed, ptr %22, i32 0, i32 7
  %23 = load ptr, ptr %mask32, align 8, !tbaa !25
  %24 = load i32, ptr %bytesMask, align 4, !tbaa !9
  %idx.ext33 = sext i32 %24 to i64
  %add.ptr34 = getelementptr inbounds i8, ptr %23, i64 %idx.ext33
  %25 = load ptr, ptr %s, align 8, !tbaa !5
  %transFlips35 = getelementptr inbounds %struct.seed, ptr %25, i32 0, i32 12
  store ptr %add.ptr34, ptr %transFlips35, align 8, !tbaa !27
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.end20
  %26 = load i32, ptr %patternLen.addr, align 4, !tbaa !9
  %cmp37 = icmp sgt i32 %26, 0
  br i1 %cmp37, label %if.then39, label %if.end45

if.then39:                                        ; preds = %if.end36
  %27 = load ptr, ptr %s, align 8, !tbaa !5
  %mask40 = getelementptr inbounds %struct.seed, ptr %27, i32 0, i32 7
  %28 = load ptr, ptr %mask40, align 8, !tbaa !25
  %29 = load i32, ptr %bytesMask, align 4, !tbaa !9
  %idx.ext41 = sext i32 %29 to i64
  %add.ptr42 = getelementptr inbounds i8, ptr %28, i64 %idx.ext41
  %30 = load i32, ptr %bytesFlips, align 4, !tbaa !9
  %idx.ext43 = sext i32 %30 to i64
  %add.ptr44 = getelementptr inbounds i8, ptr %add.ptr42, i64 %idx.ext43
  %31 = load ptr, ptr %s, align 8, !tbaa !5
  %pattern = getelementptr inbounds %struct.seed, ptr %31, i32 0, i32 4
  store ptr %add.ptr44, ptr %pattern, align 8, !tbaa !22
  br label %if.end45

if.end45:                                         ; preds = %if.then39, %if.end36
  %32 = load i32, ptr %numParts.addr, align 4, !tbaa !9
  %33 = load ptr, ptr %s, align 8, !tbaa !5
  %numParts46 = getelementptr inbounds %struct.seed, ptr %33, i32 0, i32 5
  store i32 %32, ptr %numParts46, align 8, !tbaa !29
  %34 = load ptr, ptr %s, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %bytesFlips) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %bytesMask) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %bytesShift) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %bytesMain) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %bytesNeeded) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6
  ret ptr %34
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @copy_seeds(ptr noundef %_seed) #0 {
entry:
  %_seed.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %_seed, ptr %_seed.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #6
  store ptr null, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #6
  store ptr null, ptr %prev, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %call = call ptr @copy_seed(ptr noundef %1)
  store ptr %call, ptr %s, align 8, !tbaa !5
  %2 = load ptr, ptr %s, align 8, !tbaa !5
  %next = getelementptr inbounds %struct.seed, ptr %2, i32 0, i32 0
  store ptr null, ptr %next, align 8, !tbaa !13
  %3 = load ptr, ptr %prev, align 8, !tbaa !5
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %s, align 8, !tbaa !5
  store ptr %4, ptr %head, align 8, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %for.body
  %5 = load ptr, ptr %s, align 8, !tbaa !5
  %6 = load ptr, ptr %prev, align 8, !tbaa !5
  %next2 = getelementptr inbounds %struct.seed, ptr %6, i32 0, i32 0
  store ptr %5, ptr %next2, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load ptr, ptr %s, align 8, !tbaa !5
  store ptr %7, ptr %prev, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %next3 = getelementptr inbounds %struct.seed, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %next3, align 8, !tbaa !13
  store ptr %9, ptr %_seed.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #6
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal ptr @copy_seed(ptr noundef %_seed) #0 {
entry:
  %_seed.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  %numFlips = alloca i32, align 4
  %s = alloca ptr, align 8
  %ix = alloca i32, align 4
  store ptr %_seed, ptr %_seed.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %numFlips) #6
  store i32 0, ptr %numFlips, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %ix) #6
  store i32 0, ptr %numFlips, align 4, !tbaa !9
  %0 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %transFlips = getelementptr inbounds %struct.seed, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %transFlips, align 8, !tbaa !27
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %transFlips1 = getelementptr inbounds %struct.seed, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %transFlips1, align 8, !tbaa !27
  store ptr %3, ptr %f, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load ptr, ptr %f, align 8, !tbaa !5
  %5 = load i32, ptr %4, align 4, !tbaa !9
  %cmp2 = icmp ne i32 %5, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %numFlips, align 4, !tbaa !9
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %numFlips, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load ptr, ptr %f, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i32, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %f, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %8 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %pattern = getelementptr inbounds %struct.seed, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %pattern, align 8, !tbaa !22
  %cmp3 = icmp eq ptr %9, null
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %numParts = getelementptr inbounds %struct.seed, ptr %10, i32 0, i32 5
  %11 = load i32, ptr %numParts, align 8, !tbaa !29
  %12 = load i32, ptr %numFlips, align 4, !tbaa !9
  %call = call ptr @new_seed(i32 noundef %11, i32 noundef 0, i32 noundef %12)
  store ptr %call, ptr %s, align 8, !tbaa !5
  br label %if.end9

if.else:                                          ; preds = %if.end
  %13 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %numParts5 = getelementptr inbounds %struct.seed, ptr %13, i32 0, i32 5
  %14 = load i32, ptr %numParts5, align 8, !tbaa !29
  %15 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %pattern6 = getelementptr inbounds %struct.seed, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %pattern6, align 8, !tbaa !22
  %call7 = call i64 @strlen(ptr noundef %16) #7
  %conv = trunc i64 %call7 to i32
  %17 = load i32, ptr %numFlips, align 4, !tbaa !9
  %call8 = call ptr @new_seed(i32 noundef %14, i32 noundef %conv, i32 noundef %17)
  store ptr %call8, ptr %s, align 8, !tbaa !5
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %18 = load ptr, ptr %s, align 8, !tbaa !5
  %next = getelementptr inbounds %struct.seed, ptr %18, i32 0, i32 0
  store ptr null, ptr %next, align 8, !tbaa !13
  %19 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.seed, ptr %19, i32 0, i32 1
  %20 = load i8, ptr %type, align 8, !tbaa !17
  %21 = load ptr, ptr %s, align 8, !tbaa !5
  %type10 = getelementptr inbounds %struct.seed, ptr %21, i32 0, i32 1
  store i8 %20, ptr %type10, align 8, !tbaa !17
  %22 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %length = getelementptr inbounds %struct.seed, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %length, align 4, !tbaa !18
  %24 = load ptr, ptr %s, align 8, !tbaa !5
  %length11 = getelementptr inbounds %struct.seed, ptr %24, i32 0, i32 2
  store i32 %23, ptr %length11, align 4, !tbaa !18
  %25 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %weight = getelementptr inbounds %struct.seed, ptr %25, i32 0, i32 3
  %26 = load i32, ptr %weight, align 8, !tbaa !11
  %27 = load ptr, ptr %s, align 8, !tbaa !5
  %weight12 = getelementptr inbounds %struct.seed, ptr %27, i32 0, i32 3
  store i32 %26, ptr %weight12, align 8, !tbaa !11
  %28 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %revComp = getelementptr inbounds %struct.seed, ptr %28, i32 0, i32 9
  %29 = load i32, ptr %revComp, align 4, !tbaa !20
  %30 = load ptr, ptr %s, align 8, !tbaa !5
  %revComp13 = getelementptr inbounds %struct.seed, ptr %30, i32 0, i32 9
  store i32 %29, ptr %revComp13, align 4, !tbaa !20
  %31 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %isHalfweight = getelementptr inbounds %struct.seed, ptr %31, i32 0, i32 10
  %32 = load i32, ptr %isHalfweight, align 8, !tbaa !21
  %33 = load ptr, ptr %s, align 8, !tbaa !5
  %isHalfweight14 = getelementptr inbounds %struct.seed, ptr %33, i32 0, i32 10
  store i32 %32, ptr %isHalfweight14, align 8, !tbaa !21
  %34 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %pattern15 = getelementptr inbounds %struct.seed, ptr %34, i32 0, i32 4
  %35 = load ptr, ptr %pattern15, align 8, !tbaa !22
  %cmp16 = icmp ne ptr %35, null
  br i1 %cmp16, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end9
  %36 = load ptr, ptr %s, align 8, !tbaa !5
  %pattern19 = getelementptr inbounds %struct.seed, ptr %36, i32 0, i32 4
  %37 = load ptr, ptr %pattern19, align 8, !tbaa !22
  %38 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %pattern20 = getelementptr inbounds %struct.seed, ptr %38, i32 0, i32 4
  %39 = load ptr, ptr %pattern20, align 8, !tbaa !22
  %call21 = call ptr @strcpy(ptr noundef %37, ptr noundef %39) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end9
  %40 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %numParts23 = getelementptr inbounds %struct.seed, ptr %40, i32 0, i32 5
  %41 = load i32, ptr %numParts23, align 8, !tbaa !29
  %42 = load ptr, ptr %s, align 8, !tbaa !5
  %numParts24 = getelementptr inbounds %struct.seed, ptr %42, i32 0, i32 5
  store i32 %41, ptr %numParts24, align 8, !tbaa !29
  %43 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %resolvingMask = getelementptr inbounds %struct.seed, ptr %43, i32 0, i32 8
  %44 = load i32, ptr %resolvingMask, align 8, !tbaa !19
  %45 = load ptr, ptr %s, align 8, !tbaa !5
  %resolvingMask25 = getelementptr inbounds %struct.seed, ptr %45, i32 0, i32 8
  store i32 %44, ptr %resolvingMask25, align 8, !tbaa !19
  store i32 0, ptr %ix, align 4, !tbaa !9
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc39, %if.end22
  %46 = load i32, ptr %ix, align 4, !tbaa !9
  %47 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %numParts27 = getelementptr inbounds %struct.seed, ptr %47, i32 0, i32 5
  %48 = load i32, ptr %numParts27, align 8, !tbaa !29
  %cmp28 = icmp slt i32 %46, %48
  br i1 %cmp28, label %for.body30, label %for.end41

for.body30:                                       ; preds = %for.cond26
  %49 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %shift = getelementptr inbounds %struct.seed, ptr %49, i32 0, i32 6
  %50 = load ptr, ptr %shift, align 8, !tbaa !23
  %51 = load i32, ptr %ix, align 4, !tbaa !9
  %idxprom = sext i32 %51 to i64
  %arrayidx = getelementptr inbounds i32, ptr %50, i64 %idxprom
  %52 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %53 = load ptr, ptr %s, align 8, !tbaa !5
  %shift31 = getelementptr inbounds %struct.seed, ptr %53, i32 0, i32 6
  %54 = load ptr, ptr %shift31, align 8, !tbaa !23
  %55 = load i32, ptr %ix, align 4, !tbaa !9
  %idxprom32 = sext i32 %55 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %54, i64 %idxprom32
  store i32 %52, ptr %arrayidx33, align 4, !tbaa !9
  %56 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %mask = getelementptr inbounds %struct.seed, ptr %56, i32 0, i32 7
  %57 = load ptr, ptr %mask, align 8, !tbaa !25
  %58 = load i32, ptr %ix, align 4, !tbaa !9
  %idxprom34 = sext i32 %58 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %57, i64 %idxprom34
  %59 = load i32, ptr %arrayidx35, align 4, !tbaa !9
  %60 = load ptr, ptr %s, align 8, !tbaa !5
  %mask36 = getelementptr inbounds %struct.seed, ptr %60, i32 0, i32 7
  %61 = load ptr, ptr %mask36, align 8, !tbaa !25
  %62 = load i32, ptr %ix, align 4, !tbaa !9
  %idxprom37 = sext i32 %62 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %61, i64 %idxprom37
  store i32 %59, ptr %arrayidx38, align 4, !tbaa !9
  br label %for.inc39

for.inc39:                                        ; preds = %for.body30
  %63 = load i32, ptr %ix, align 4, !tbaa !9
  %inc40 = add nsw i32 %63, 1
  store i32 %inc40, ptr %ix, align 4, !tbaa !9
  br label %for.cond26, !llvm.loop !32

for.end41:                                        ; preds = %for.cond26
  %64 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %withTrans = getelementptr inbounds %struct.seed, ptr %64, i32 0, i32 11
  %65 = load i32, ptr %withTrans, align 4, !tbaa !33
  %66 = load ptr, ptr %s, align 8, !tbaa !5
  %withTrans42 = getelementptr inbounds %struct.seed, ptr %66, i32 0, i32 11
  store i32 %65, ptr %withTrans42, align 4, !tbaa !33
  %67 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %transFlips43 = getelementptr inbounds %struct.seed, ptr %67, i32 0, i32 12
  %68 = load ptr, ptr %transFlips43, align 8, !tbaa !27
  %cmp44 = icmp ne ptr %68, null
  br i1 %cmp44, label %if.then46, label %if.end63

if.then46:                                        ; preds = %for.end41
  store i32 0, ptr %ix, align 4, !tbaa !9
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc57, %if.then46
  %69 = load i32, ptr %ix, align 4, !tbaa !9
  %70 = load i32, ptr %numFlips, align 4, !tbaa !9
  %cmp48 = icmp slt i32 %69, %70
  br i1 %cmp48, label %for.body50, label %for.end59

for.body50:                                       ; preds = %for.cond47
  %71 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %transFlips51 = getelementptr inbounds %struct.seed, ptr %71, i32 0, i32 12
  %72 = load ptr, ptr %transFlips51, align 8, !tbaa !27
  %73 = load i32, ptr %ix, align 4, !tbaa !9
  %idxprom52 = sext i32 %73 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %72, i64 %idxprom52
  %74 = load i32, ptr %arrayidx53, align 4, !tbaa !9
  %75 = load ptr, ptr %s, align 8, !tbaa !5
  %transFlips54 = getelementptr inbounds %struct.seed, ptr %75, i32 0, i32 12
  %76 = load ptr, ptr %transFlips54, align 8, !tbaa !27
  %77 = load i32, ptr %ix, align 4, !tbaa !9
  %idxprom55 = sext i32 %77 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %76, i64 %idxprom55
  store i32 %74, ptr %arrayidx56, align 4, !tbaa !9
  br label %for.inc57

for.inc57:                                        ; preds = %for.body50
  %78 = load i32, ptr %ix, align 4, !tbaa !9
  %inc58 = add nsw i32 %78, 1
  store i32 %inc58, ptr %ix, align 4, !tbaa !9
  br label %for.cond47, !llvm.loop !34

for.end59:                                        ; preds = %for.cond47
  %79 = load ptr, ptr %s, align 8, !tbaa !5
  %transFlips60 = getelementptr inbounds %struct.seed, ptr %79, i32 0, i32 12
  %80 = load ptr, ptr %transFlips60, align 8, !tbaa !27
  %81 = load i32, ptr %numFlips, align 4, !tbaa !9
  %idxprom61 = sext i32 %81 to i64
  %arrayidx62 = getelementptr inbounds i32, ptr %80, i64 %idxprom61
  store i32 0, ptr %arrayidx62, align 4, !tbaa !9
  br label %if.end63

if.end63:                                         ; preds = %for.end59, %for.end41
  %82 = load ptr, ptr %s, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ix) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %numFlips) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #6
  ret ptr %82
}

; Function Attrs: nounwind uwtable
define dso_local void @free_seeds(ptr noundef %_seed) #0 {
entry:
  %_seed.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %_seed, ptr %_seed.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  %next1 = getelementptr inbounds %struct.seed, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %next1, align 8, !tbaa !13
  store ptr %2, ptr %next, align 8, !tbaa !5
  %3 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  call void @free_if_valid(ptr noundef @.str, ptr noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load ptr, ptr %next, align 8, !tbaa !5
  store ptr %4, ptr %_seed.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #6
  ret void
}

declare void @free_if_valid(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @is_same_seed(ptr noundef %seed1, ptr noundef %seed2) #0 {
entry:
  %retval = alloca i32, align 4
  %seed1.addr = alloca ptr, align 8
  %seed2.addr = alloca ptr, align 8
  %part = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %seed1, ptr %seed1.addr, align 8, !tbaa !5
  store ptr %seed2, ptr %seed2.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %part) #6
  %0 = load ptr, ptr %seed1.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %seed2.addr, align 8, !tbaa !5
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %seed1.addr, align 8, !tbaa !5
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %seed2.addr, align 8, !tbaa !5
  %cmp4 = icmp eq ptr %3, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %4 = load ptr, ptr %seed1.addr, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.seed, ptr %4, i32 0, i32 1
  %5 = load i8, ptr %type, align 8, !tbaa !17
  %conv = sext i8 %5 to i32
  %6 = load ptr, ptr %seed2.addr, align 8, !tbaa !5
  %type7 = getelementptr inbounds %struct.seed, ptr %6, i32 0, i32 1
  %7 = load i8, ptr %type7, align 8, !tbaa !17
  %conv8 = sext i8 %7 to i32
  %cmp9 = icmp ne i32 %conv, %conv8
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %8 = load ptr, ptr %seed1.addr, align 8, !tbaa !5
  %length = getelementptr inbounds %struct.seed, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %length, align 4, !tbaa !18
  %10 = load ptr, ptr %seed2.addr, align 8, !tbaa !5
  %length13 = getelementptr inbounds %struct.seed, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %length13, align 4, !tbaa !18
  %cmp14 = icmp ne i32 %9, %11
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %12 = load ptr, ptr %seed1.addr, align 8, !tbaa !5
  %weight = getelementptr inbounds %struct.seed, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %weight, align 8, !tbaa !11
  %14 = load ptr, ptr %seed2.addr, align 8, !tbaa !5
  %weight18 = getelementptr inbounds %struct.seed, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %weight18, align 8, !tbaa !11
  %cmp19 = icmp ne i32 %13, %15
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end17
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %16 = load ptr, ptr %seed1.addr, align 8, !tbaa !5
  %revComp = getelementptr inbounds %struct.seed, ptr %16, i32 0, i32 9
  %17 = load i32, ptr %revComp, align 4, !tbaa !20
  %18 = load ptr, ptr %seed2.addr, align 8, !tbaa !5
  %revComp23 = getelementptr inbounds %struct.seed, ptr %18, i32 0, i32 9
  %19 = load i32, ptr %revComp23, align 4, !tbaa !20
  %cmp24 = icmp ne i32 %17, %19
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end22
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %20 = load ptr, ptr %seed1.addr, align 8, !tbaa !5
  %isHalfweight = getelementptr inbounds %struct.seed, ptr %20, i32 0, i32 10
  %21 = load i32, ptr %isHalfweight, align 8, !tbaa !21
  %22 = load ptr, ptr %seed2.addr, align 8, !tbaa !5
  %isHalfweight28 = getelementptr inbounds %struct.seed, ptr %22, i32 0, i32 10
  %23 = load i32, ptr %isHalfweight28, align 8, !tbaa !21
  %cmp29 = icmp ne i32 %21, %23
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %24 = load ptr, ptr %seed1.addr, align 8, !tbaa !5
  %withTrans = getelementptr inbounds %struct.seed, ptr %24, i32 0, i32 11
  %25 = load i32, ptr %withTrans, align 4, !tbaa !33
  %26 = load ptr, ptr %seed2.addr, align 8, !tbaa !5
  %withTrans33 = getelementptr inbounds %struct.seed, ptr %26, i32 0, i32 11
  %27 = load i32, ptr %withTrans33, align 4, !tbaa !33
  %cmp34 = icmp ne i32 %25, %27
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end32
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  %28 = load ptr, ptr %seed1.addr, align 8, !tbaa !5
  %numParts = getelementptr inbounds %struct.seed, ptr %28, i32 0, i32 5
  %29 = load i32, ptr %numParts, align 8, !tbaa !29
  %30 = load ptr, ptr %seed2.addr, align 8, !tbaa !5
  %numParts38 = getelementptr inbounds %struct.seed, ptr %30, i32 0, i32 5
  %31 = load i32, ptr %numParts38, align 8, !tbaa !29
  %cmp39 = icmp ne i32 %29, %31
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  store i32 0, ptr %part, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end42
  %32 = load i32, ptr %part, align 4, !tbaa !9
  %33 = load ptr, ptr %seed1.addr, align 8, !tbaa !5
  %numParts43 = getelementptr inbounds %struct.seed, ptr %33, i32 0, i32 5
  %34 = load i32, ptr %numParts43, align 8, !tbaa !29
  %cmp44 = icmp slt i32 %32, %34
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load ptr, ptr %seed1.addr, align 8, !tbaa !5
  %mask = getelementptr inbounds %struct.seed, ptr %35, i32 0, i32 7
  %36 = load ptr, ptr %mask, align 8, !tbaa !25
  %37 = load i32, ptr %part, align 4, !tbaa !9
  %idxprom = sext i32 %37 to i64
  %arrayidx = getelementptr inbounds i32, ptr %36, i64 %idxprom
  %38 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %39 = load ptr, ptr %seed2.addr, align 8, !tbaa !5
  %mask46 = getelementptr inbounds %struct.seed, ptr %39, i32 0, i32 7
  %40 = load ptr, ptr %mask46, align 8, !tbaa !25
  %41 = load i32, ptr %part, align 4, !tbaa !9
  %idxprom47 = sext i32 %41 to i64
  %arrayidx48 = getelementptr inbounds i32, ptr %40, i64 %idxprom47
  %42 = load i32, ptr %arrayidx48, align 4, !tbaa !9
  %cmp49 = icmp ne i32 %38, %42
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end52:                                         ; preds = %for.body
  %43 = load ptr, ptr %seed1.addr, align 8, !tbaa !5
  %shift = getelementptr inbounds %struct.seed, ptr %43, i32 0, i32 6
  %44 = load ptr, ptr %shift, align 8, !tbaa !23
  %45 = load i32, ptr %part, align 4, !tbaa !9
  %idxprom53 = sext i32 %45 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %44, i64 %idxprom53
  %46 = load i32, ptr %arrayidx54, align 4, !tbaa !9
  %47 = load ptr, ptr %seed2.addr, align 8, !tbaa !5
  %shift55 = getelementptr inbounds %struct.seed, ptr %47, i32 0, i32 6
  %48 = load ptr, ptr %shift55, align 8, !tbaa !23
  %49 = load i32, ptr %part, align 4, !tbaa !9
  %idxprom56 = sext i32 %49 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %48, i64 %idxprom56
  %50 = load i32, ptr %arrayidx57, align 4, !tbaa !9
  %cmp58 = icmp ne i32 %46, %50
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end52
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end61:                                         ; preds = %if.end52
  br label %for.inc

for.inc:                                          ; preds = %if.end61
  %51 = load i32, ptr %part, align 4, !tbaa !9
  %inc = add nsw i32 %51, 1
  store i32 %inc, ptr %part, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  %52 = load ptr, ptr %seed1.addr, align 8, !tbaa !5
  %type62 = getelementptr inbounds %struct.seed, ptr %52, i32 0, i32 1
  %53 = load i8, ptr %type62, align 8, !tbaa !17
  %conv63 = sext i8 %53 to i32
  %cmp64 = icmp eq i32 %conv63, 82
  br i1 %cmp64, label %if.then66, label %if.end72

if.then66:                                        ; preds = %for.end
  %54 = load ptr, ptr %seed1.addr, align 8, !tbaa !5
  %resolvingMask = getelementptr inbounds %struct.seed, ptr %54, i32 0, i32 8
  %55 = load i32, ptr %resolvingMask, align 8, !tbaa !19
  %56 = load ptr, ptr %seed2.addr, align 8, !tbaa !5
  %resolvingMask67 = getelementptr inbounds %struct.seed, ptr %56, i32 0, i32 8
  %57 = load i32, ptr %resolvingMask67, align 8, !tbaa !19
  %cmp68 = icmp ne i32 %55, %57
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.then66
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end71:                                         ; preds = %if.then66
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %for.end
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.then70, %if.then60, %if.then51, %if.then41, %if.then36, %if.then31, %if.then26, %if.then21, %if.then16, %if.then11, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %part) #6
  %58 = load i32, ptr %retval, align 4
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define dso_local ptr @seed_pattern(ptr noundef %_seed) #0 {
entry:
  %retval = alloca ptr, align 8
  %_seed.addr = alloca ptr, align 8
  %ss = alloca ptr, align 8
  %seed = alloca ptr, align 8
  %firstInList = alloca i32, align 4
  %part = alloca i32, align 4
  %seedBits = alloca i64, align 8
  %bitsPer = alloca i32, align 4
  %mask = alloca i32, align 4
  %loc = alloca i32, align 4
  %ch = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %_seed, ptr %_seed.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ss) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %seed) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %firstInList) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %part) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %seedBits) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitsPer) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %loc) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr %ch) #6
  store ptr @seed_pattern.s, ptr %ss, align 8, !tbaa !5
  store i32 1, ptr %firstInList, align 4, !tbaa !9
  %0 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  store ptr %0, ptr %seed, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc37, %entry
  %1 = load ptr, ptr %seed, align 8, !tbaa !5
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %for.body, label %for.end38

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %seedBits, align 8, !tbaa !37
  store i32 0, ptr %part, align 4, !tbaa !9
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %part, align 4, !tbaa !9
  %3 = load ptr, ptr %seed, align 8, !tbaa !5
  %numParts = getelementptr inbounds %struct.seed, ptr %3, i32 0, i32 5
  %4 = load i32, ptr %numParts, align 8, !tbaa !29
  %cmp2 = icmp slt i32 %2, %4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %5 = load ptr, ptr %seed, align 8, !tbaa !5
  %mask4 = getelementptr inbounds %struct.seed, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %mask4, align 8, !tbaa !25
  %7 = load i32, ptr %part, align 4, !tbaa !9
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %conv = zext i32 %8 to i64
  %9 = load ptr, ptr %seed, align 8, !tbaa !5
  %shift = getelementptr inbounds %struct.seed, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %shift, align 8, !tbaa !23
  %11 = load i32, ptr %part, align 4, !tbaa !9
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %10, i64 %idxprom5
  %12 = load i32, ptr %arrayidx6, align 4, !tbaa !9
  %sh_prom = zext i32 %12 to i64
  %shl = shl i64 %conv, %sh_prom
  %13 = load i64, ptr %seedBits, align 8, !tbaa !37
  %or = or i64 %13, %shl
  store i64 %or, ptr %seedBits, align 8, !tbaa !37
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %14 = load i32, ptr %part, align 4, !tbaa !9
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %part, align 4, !tbaa !9
  br label %for.cond1, !llvm.loop !39

for.end:                                          ; preds = %for.cond1
  %15 = load i32, ptr %firstInList, align 4, !tbaa !9
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end10, label %if.then

if.then:                                          ; preds = %for.end
  %16 = load ptr, ptr %ss, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint (ptr @seed_pattern.s to i64)
  %cmp7 = icmp sge i64 %sub.ptr.sub, 69
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  br label %full

if.end:                                           ; preds = %if.then
  %17 = load ptr, ptr %ss, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %ss, align 8, !tbaa !5
  store i8 44, ptr %17, align 1, !tbaa !14
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.end
  %18 = load ptr, ptr %seed, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.seed, ptr %18, i32 0, i32 1
  %19 = load i8, ptr %type, align 8, !tbaa !17
  %conv11 = sext i8 %19 to i32
  %cmp12 = icmp eq i32 %conv11, 72
  %20 = zext i1 %cmp12 to i64
  %cond = select i1 %cmp12, i32 1, i32 2
  store i32 %cond, ptr %bitsPer, align 4, !tbaa !9
  %21 = load ptr, ptr %seed, align 8, !tbaa !5
  %type14 = getelementptr inbounds %struct.seed, ptr %21, i32 0, i32 1
  %22 = load i8, ptr %type14, align 8, !tbaa !17
  %conv15 = sext i8 %22 to i32
  %cmp16 = icmp eq i32 %conv15, 72
  %23 = zext i1 %cmp16 to i64
  %cond18 = select i1 %cmp16, i32 1, i32 3
  store i32 %cond18, ptr %mask, align 4, !tbaa !9
  %24 = load ptr, ptr %seed, align 8, !tbaa !5
  %length = getelementptr inbounds %struct.seed, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %length, align 4, !tbaa !18
  %sub = sub nsw i32 %25, 1
  store i32 %sub, ptr %loc, align 4, !tbaa !9
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc35, %if.end10
  %26 = load i32, ptr %loc, align 4, !tbaa !9
  %cmp20 = icmp sge i32 %26, 0
  br i1 %cmp20, label %for.body22, label %for.end36

for.body22:                                       ; preds = %for.cond19
  %27 = load i64, ptr %seedBits, align 8, !tbaa !37
  %28 = load i32, ptr %bitsPer, align 4, !tbaa !9
  %29 = load i32, ptr %loc, align 4, !tbaa !9
  %mul = mul nsw i32 %28, %29
  %sh_prom23 = zext i32 %mul to i64
  %shr = lshr i64 %27, %sh_prom23
  %30 = load i32, ptr %mask, align 4, !tbaa !9
  %conv24 = zext i32 %30 to i64
  %and = and i64 %shr, %conv24
  switch i64 %and, label %sw.default [
    i64 3, label %sw.bb
    i64 2, label %sw.bb25
    i64 1, label %sw.bb26
    i64 0, label %sw.bb27
  ]

sw.default:                                       ; preds = %for.body22
  br label %sw.bb

sw.bb:                                            ; preds = %for.body22, %sw.default
  store i8 49, ptr %ch, align 1, !tbaa !14
  br label %sw.epilog

sw.bb25:                                          ; preds = %for.body22
  store i8 63, ptr %ch, align 1, !tbaa !14
  br label %sw.epilog

sw.bb26:                                          ; preds = %for.body22
  store i8 84, ptr %ch, align 1, !tbaa !14
  br label %sw.epilog

sw.bb27:                                          ; preds = %for.body22
  store i8 48, ptr %ch, align 1, !tbaa !14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb
  %31 = load ptr, ptr %ss, align 8, !tbaa !5
  %sub.ptr.lhs.cast28 = ptrtoint ptr %31 to i64
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast28, ptrtoint (ptr @seed_pattern.s to i64)
  %cmp30 = icmp sge i64 %sub.ptr.sub29, 69
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %sw.epilog
  br label %full

if.end33:                                         ; preds = %sw.epilog
  %32 = load i8, ptr %ch, align 1, !tbaa !14
  %33 = load ptr, ptr %ss, align 8, !tbaa !5
  %incdec.ptr34 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr34, ptr %ss, align 8, !tbaa !5
  store i8 %32, ptr %33, align 1, !tbaa !14
  br label %for.inc35

for.inc35:                                        ; preds = %if.end33
  %34 = load i32, ptr %loc, align 4, !tbaa !9
  %dec = add nsw i32 %34, -1
  store i32 %dec, ptr %loc, align 4, !tbaa !9
  br label %for.cond19, !llvm.loop !40

for.end36:                                        ; preds = %for.cond19
  store i32 0, ptr %firstInList, align 4, !tbaa !9
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %35 = load ptr, ptr %seed, align 8, !tbaa !5
  %next = getelementptr inbounds %struct.seed, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %next, align 8, !tbaa !13
  store ptr %36, ptr %seed, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !41

for.end38:                                        ; preds = %for.cond
  %37 = load ptr, ptr %_seed.addr, align 8, !tbaa !5
  store ptr %37, ptr %seed, align 8, !tbaa !5
  %38 = load ptr, ptr %seed, align 8, !tbaa !5
  %type39 = getelementptr inbounds %struct.seed, ptr %38, i32 0, i32 1
  %39 = load i8, ptr %type39, align 8, !tbaa !17
  %conv40 = sext i8 %39 to i32
  %cmp41 = icmp eq i32 %conv40, 82
  br i1 %cmp41, label %if.then43, label %if.end93

if.then43:                                        ; preds = %for.end38
  store i32 0, ptr %loc, align 4, !tbaa !9
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc54, %if.then43
  %40 = load i32, ptr %loc, align 4, !tbaa !9
  %cmp45 = icmp slt i32 %40, 16
  br i1 %cmp45, label %for.body47, label %for.end56

for.body47:                                       ; preds = %for.cond44
  %41 = load ptr, ptr %seed, align 8, !tbaa !5
  %resolvingMask = getelementptr inbounds %struct.seed, ptr %41, i32 0, i32 8
  %42 = load i32, ptr %resolvingMask, align 8, !tbaa !19
  %43 = load i32, ptr %loc, align 4, !tbaa !9
  %mul48 = mul nsw i32 2, %43
  %shr49 = lshr i32 %42, %mul48
  %cmp50 = icmp eq i32 %shr49, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %for.body47
  br label %for.end56

if.end53:                                         ; preds = %for.body47
  br label %for.inc54

for.inc54:                                        ; preds = %if.end53
  %44 = load i32, ptr %loc, align 4, !tbaa !9
  %inc55 = add nsw i32 %44, 1
  store i32 %inc55, ptr %loc, align 4, !tbaa !9
  br label %for.cond44, !llvm.loop !42

for.end56:                                        ; preds = %if.then52, %for.cond44
  %45 = load i32, ptr %loc, align 4, !tbaa !9
  %cmp57 = icmp sgt i32 %45, 0
  br i1 %cmp57, label %if.then59, label %if.end92

if.then59:                                        ; preds = %for.end56
  %46 = load ptr, ptr %ss, align 8, !tbaa !5
  %sub.ptr.lhs.cast60 = ptrtoint ptr %46 to i64
  %sub.ptr.sub61 = sub i64 %sub.ptr.lhs.cast60, ptrtoint (ptr @seed_pattern.s to i64)
  %cmp62 = icmp sge i64 %sub.ptr.sub61, 69
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.then59
  br label %full

if.end65:                                         ; preds = %if.then59
  %47 = load ptr, ptr %ss, align 8, !tbaa !5
  %incdec.ptr66 = getelementptr inbounds i8, ptr %47, i32 1
  store ptr %incdec.ptr66, ptr %ss, align 8, !tbaa !5
  store i8 47, ptr %47, align 1, !tbaa !14
  %48 = load i32, ptr %loc, align 4, !tbaa !9
  %dec67 = add nsw i32 %48, -1
  store i32 %dec67, ptr %loc, align 4, !tbaa !9
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc89, %if.end65
  %49 = load i32, ptr %loc, align 4, !tbaa !9
  %cmp69 = icmp sge i32 %49, 0
  br i1 %cmp69, label %for.body71, label %for.end91

for.body71:                                       ; preds = %for.cond68
  %50 = load ptr, ptr %seed, align 8, !tbaa !5
  %resolvingMask72 = getelementptr inbounds %struct.seed, ptr %50, i32 0, i32 8
  %51 = load i32, ptr %resolvingMask72, align 8, !tbaa !19
  %52 = load i32, ptr %loc, align 4, !tbaa !9
  %mul73 = mul nsw i32 2, %52
  %shr74 = lshr i32 %51, %mul73
  %and75 = and i32 %shr74, 3
  switch i32 %and75, label %sw.default76 [
    i32 3, label %sw.bb77
    i32 2, label %sw.bb78
    i32 1, label %sw.bb79
    i32 0, label %sw.bb80
  ]

sw.default76:                                     ; preds = %for.body71
  br label %sw.bb77

sw.bb77:                                          ; preds = %for.body71, %sw.default76
  store i8 63, ptr %ch, align 1, !tbaa !14
  br label %sw.epilog81

sw.bb78:                                          ; preds = %for.body71
  store i8 82, ptr %ch, align 1, !tbaa !14
  br label %sw.epilog81

sw.bb79:                                          ; preds = %for.body71
  store i8 63, ptr %ch, align 1, !tbaa !14
  br label %sw.epilog81

sw.bb80:                                          ; preds = %for.body71
  store i8 48, ptr %ch, align 1, !tbaa !14
  br label %sw.epilog81

sw.epilog81:                                      ; preds = %sw.bb80, %sw.bb79, %sw.bb78, %sw.bb77
  %53 = load ptr, ptr %ss, align 8, !tbaa !5
  %sub.ptr.lhs.cast82 = ptrtoint ptr %53 to i64
  %sub.ptr.sub83 = sub i64 %sub.ptr.lhs.cast82, ptrtoint (ptr @seed_pattern.s to i64)
  %cmp84 = icmp sge i64 %sub.ptr.sub83, 69
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %sw.epilog81
  br label %full

if.end87:                                         ; preds = %sw.epilog81
  %54 = load i8, ptr %ch, align 1, !tbaa !14
  %55 = load ptr, ptr %ss, align 8, !tbaa !5
  %incdec.ptr88 = getelementptr inbounds i8, ptr %55, i32 1
  store ptr %incdec.ptr88, ptr %ss, align 8, !tbaa !5
  store i8 %54, ptr %55, align 1, !tbaa !14
  br label %for.inc89

for.inc89:                                        ; preds = %if.end87
  %56 = load i32, ptr %loc, align 4, !tbaa !9
  %dec90 = add nsw i32 %56, -1
  store i32 %dec90, ptr %loc, align 4, !tbaa !9
  br label %for.cond68, !llvm.loop !43

for.end91:                                        ; preds = %for.cond68
  br label %if.end92

if.end92:                                         ; preds = %for.end91, %for.end56
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %for.end38
  %57 = load ptr, ptr %ss, align 8, !tbaa !5
  store i8 0, ptr %57, align 1, !tbaa !14
  store ptr @seed_pattern.s, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

full:                                             ; preds = %if.then86, %if.then64, %if.then32, %if.then9
  %58 = load ptr, ptr %ss, align 8, !tbaa !5
  store i8 0, ptr %58, align 1, !tbaa !14
  %59 = load ptr, ptr %ss, align 8, !tbaa !5
  %arrayidx94 = getelementptr inbounds i8, ptr %59, i64 -3
  store i8 46, ptr %arrayidx94, align 1, !tbaa !14
  %60 = load ptr, ptr %ss, align 8, !tbaa !5
  %arrayidx95 = getelementptr inbounds i8, ptr %60, i64 -2
  store i8 46, ptr %arrayidx95, align 1, !tbaa !14
  %61 = load ptr, ptr %ss, align 8, !tbaa !5
  %arrayidx96 = getelementptr inbounds i8, ptr %61, i64 -1
  store i8 46, ptr %arrayidx96, align 1, !tbaa !14
  store ptr @seed_pattern.s, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %full, %if.end93
  call void @llvm.lifetime.end.p0(i64 1, ptr %ch) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %loc) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitsPer) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %seedBits) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %part) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %firstInList) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %seed) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ss) #6
  %62 = load ptr, ptr %retval, align 8
  ret ptr %62
}

; Function Attrs: nounwind uwtable
define dso_local ptr @seed_shuffle_list(ptr noundef %seed) #0 {
entry:
  %seed.addr = alloca ptr, align 8
  %length = alloca i32, align 4
  %weight = alloca i32, align 4
  %indexes = alloca ptr, align 8
  %mask = alloca i32, align 4
  %siteBits = alloca i32, align 4
  %part = alloca i32, align 4
  %origPos = alloca i32, align 4
  %listPos = alloca i32, align 4
  store ptr %seed, ptr %seed.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #6
  %0 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %length1 = getelementptr inbounds %struct.seed, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %length1, align 4, !tbaa !18
  store i32 %1, ptr %length, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %weight) #6
  %2 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %weight2 = getelementptr inbounds %struct.seed, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %weight2, align 8, !tbaa !11
  %div = sdiv i32 %3, 2
  store i32 %div, ptr %weight, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %indexes) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %siteBits) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %part) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %origPos) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %listPos) #6
  %4 = load i32, ptr %weight, align 4, !tbaa !9
  %add = add nsw i32 1, %4
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 4
  %call = call ptr @malloc_or_die(ptr noundef @.str.1, i64 noundef %mul)
  store ptr %call, ptr %indexes, align 8, !tbaa !5
  %5 = load i32, ptr %weight, align 4, !tbaa !9
  %6 = load ptr, ptr %indexes, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 0
  store i32 %5, ptr %arrayidx, align 4, !tbaa !9
  store i32 0, ptr %part, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %7 = load i32, ptr %part, align 4, !tbaa !9
  %8 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %numParts = getelementptr inbounds %struct.seed, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %numParts, align 8, !tbaa !29
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end28

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %mask4 = getelementptr inbounds %struct.seed, ptr %10, i32 0, i32 7
  %11 = load ptr, ptr %mask4, align 8, !tbaa !25
  %12 = load i32, ptr %part, align 4, !tbaa !9
  %idxprom = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %11, i64 %idxprom
  %13 = load i32, ptr %arrayidx5, align 4, !tbaa !9
  store i32 %13, ptr %mask, align 4, !tbaa !9
  %14 = load i32, ptr %length, align 4, !tbaa !9
  %sub = sub nsw i32 %14, 1
  %15 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %shift = getelementptr inbounds %struct.seed, ptr %15, i32 0, i32 6
  %16 = load ptr, ptr %shift, align 8, !tbaa !23
  %17 = load i32, ptr %part, align 4, !tbaa !9
  %idxprom6 = sext i32 %17 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %16, i64 %idxprom6
  %18 = load i32, ptr %arrayidx7, align 4, !tbaa !9
  %div8 = sdiv i32 %18, 2
  %sub9 = sub nsw i32 %sub, %div8
  store i32 %sub9, ptr %origPos, align 4, !tbaa !9
  %19 = load i32, ptr %weight, align 4, !tbaa !9
  store i32 %19, ptr %listPos, align 4, !tbaa !9
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %20 = load i32, ptr %mask, align 4, !tbaa !9
  %cmp11 = icmp ne i32 %20, 0
  br i1 %cmp11, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond10
  %21 = load i32, ptr %mask, align 4, !tbaa !9
  %and = and i32 %21, 3
  store i32 %and, ptr %siteBits, align 4, !tbaa !9
  %22 = load i32, ptr %siteBits, align 4, !tbaa !9
  %cmp14 = icmp eq i32 %22, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body13
  br label %for.inc

if.end:                                           ; preds = %for.body13
  %23 = load i32, ptr %siteBits, align 4, !tbaa !9
  %cmp16 = icmp ne i32 %23, 3
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end
  call void @suicide(ptr noundef @.str.2)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end
  %24 = load i32, ptr %listPos, align 4, !tbaa !9
  %cmp20 = icmp slt i32 %24, 1
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @suicide(ptr noundef @.str.3)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19
  %25 = load i32, ptr %origPos, align 4, !tbaa !9
  %26 = load ptr, ptr %indexes, align 8, !tbaa !5
  %27 = load i32, ptr %listPos, align 4, !tbaa !9
  %idxprom24 = sext i32 %27 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %26, i64 %idxprom24
  store i32 %25, ptr %arrayidx25, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %if.end23, %if.then
  %28 = load i32, ptr %mask, align 4, !tbaa !9
  %shr = lshr i32 %28, 2
  store i32 %shr, ptr %mask, align 4, !tbaa !9
  %29 = load i32, ptr %origPos, align 4, !tbaa !9
  %dec = add nsw i32 %29, -1
  store i32 %dec, ptr %origPos, align 4, !tbaa !9
  %30 = load i32, ptr %listPos, align 4, !tbaa !9
  %dec26 = add nsw i32 %30, -1
  store i32 %dec26, ptr %listPos, align 4, !tbaa !9
  br label %for.cond10, !llvm.loop !44

for.end:                                          ; preds = %for.cond10
  br label %for.inc27

for.inc27:                                        ; preds = %for.end
  %31 = load i32, ptr %part, align 4, !tbaa !9
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %part, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !45

for.end28:                                        ; preds = %for.cond
  %32 = load ptr, ptr %indexes, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %listPos) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %origPos) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %part) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %siteBits) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %indexes) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %weight) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #6
  ret ptr %32
}

declare ptr @malloc_or_die(ptr noundef, i64 noundef) #4

declare void @suicide(ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local void @print_seeds(ptr noundef %f, ptr noundef %seed) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %seed.addr = alloca ptr, align 8
  %part = alloca i32, align 4
  %seedBits = alloca i64, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !5
  store ptr %seed, ptr %seed.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %part) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %seedBits) #6
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %seedBits, align 8, !tbaa !37
  store i32 0, ptr %part, align 4, !tbaa !9
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %part, align 4, !tbaa !9
  %2 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %numParts = getelementptr inbounds %struct.seed, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %numParts, align 8, !tbaa !29
  %cmp2 = icmp slt i32 %1, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %mask = getelementptr inbounds %struct.seed, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %mask, align 8, !tbaa !25
  %6 = load i32, ptr %part, align 4, !tbaa !9
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %conv = zext i32 %7 to i64
  %8 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %shift = getelementptr inbounds %struct.seed, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %shift, align 8, !tbaa !23
  %10 = load i32, ptr %part, align 4, !tbaa !9
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %9, i64 %idxprom4
  %11 = load i32, ptr %arrayidx5, align 4, !tbaa !9
  %sh_prom = zext i32 %11 to i64
  %shl = shl i64 %conv, %sh_prom
  %12 = load i64, ptr %seedBits, align 8, !tbaa !37
  %or = or i64 %12, %shl
  store i64 %or, ptr %seedBits, align 8, !tbaa !37
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %13 = load i32, ptr %part, align 4, !tbaa !9
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %part, align 4, !tbaa !9
  br label %for.cond1, !llvm.loop !46

for.end:                                          ; preds = %for.cond1
  %14 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %15 = load i64, ptr %seedBits, align 8, !tbaa !37
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.4, i64 noundef %15)
  store i32 0, ptr %part, align 4, !tbaa !9
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc18, %for.end
  %16 = load i32, ptr %part, align 4, !tbaa !9
  %17 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %numParts7 = getelementptr inbounds %struct.seed, ptr %17, i32 0, i32 5
  %18 = load i32, ptr %numParts7, align 8, !tbaa !29
  %cmp8 = icmp slt i32 %16, %18
  br i1 %cmp8, label %for.body10, label %for.end20

for.body10:                                       ; preds = %for.cond6
  %19 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %20 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %shift11 = getelementptr inbounds %struct.seed, ptr %20, i32 0, i32 6
  %21 = load ptr, ptr %shift11, align 8, !tbaa !23
  %22 = load i32, ptr %part, align 4, !tbaa !9
  %idxprom12 = sext i32 %22 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %21, i64 %idxprom12
  %23 = load i32, ptr %arrayidx13, align 4, !tbaa !9
  %24 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %mask14 = getelementptr inbounds %struct.seed, ptr %24, i32 0, i32 7
  %25 = load ptr, ptr %mask14, align 8, !tbaa !25
  %26 = load i32, ptr %part, align 4, !tbaa !9
  %idxprom15 = sext i32 %26 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %25, i64 %idxprom15
  %27 = load i32, ptr %arrayidx16, align 4, !tbaa !9
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.5, i32 noundef %23, i32 noundef %27)
  br label %for.inc18

for.inc18:                                        ; preds = %for.body10
  %28 = load i32, ptr %part, align 4, !tbaa !9
  %inc19 = add nsw i32 %28, 1
  store i32 %inc19, ptr %part, align 4, !tbaa !9
  br label %for.cond6, !llvm.loop !47

for.end20:                                        ; preds = %for.cond6
  %29 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %resolvingMask = getelementptr inbounds %struct.seed, ptr %29, i32 0, i32 8
  %30 = load i32, ptr %resolvingMask, align 8, !tbaa !19
  %cmp21 = icmp ne i32 %30, 0
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %for.end20
  %31 = load ptr, ptr %f.addr, align 8, !tbaa !5
  %32 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %resolvingMask23 = getelementptr inbounds %struct.seed, ptr %32, i32 0, i32 8
  %33 = load i32, ptr %resolvingMask23, align 8, !tbaa !19
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.6, i32 noundef %33)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end20
  br label %for.inc25

for.inc25:                                        ; preds = %if.end
  %34 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %next = getelementptr inbounds %struct.seed, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %next, align 8, !tbaa !13
  store ptr %35, ptr %seed.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !48

for.end26:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %seedBits) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %part) #6
  ret void
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: nounwind uwtable
define dso_local ptr @seed_packed_to_string(ptr noundef %seed, i32 noundef %word) #0 {
entry:
  %seed.addr = alloca ptr, align 8
  %word.addr = alloca i32, align 4
  store ptr %seed, ptr %seed.addr, align 8, !tbaa !5
  store i32 %word, ptr %word.addr, align 4, !tbaa !9
  %0 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %1 = load i32, ptr %word.addr, align 4, !tbaa !9
  %2 = load ptr, ptr @bit_to_pur_pyr, align 8, !tbaa !5
  %3 = load ptr, ptr @bits_to_nuc, align 8, !tbaa !5
  %call = call ptr @seed_packed_to_string2(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define dso_local ptr @seed_packed_to_string2(ptr noundef %seed, i32 noundef %word, ptr noundef %bitToChar, ptr noundef %bitsToChar) #0 {
entry:
  %seed.addr = alloca ptr, align 8
  %word.addr = alloca i32, align 4
  %bitToChar.addr = alloca ptr, align 8
  %bitsToChar.addr = alloca ptr, align 8
  %unpackedWord = alloca i64, align 8
  %unpackedSeed = alloca i64, align 8
  %numChars = alloca i32, align 4
  %bitsPer = alloca i32, align 4
  %ss = alloca ptr, align 8
  %twoWordBits = alloca i32, align 4
  %twoSeedBits = alloca i32, align 4
  %mask = alloca i32, align 4
  store ptr %seed, ptr %seed.addr, align 8, !tbaa !5
  store i32 %word, ptr %word.addr, align 4, !tbaa !9
  store ptr %bitToChar, ptr %bitToChar.addr, align 8, !tbaa !5
  store ptr %bitsToChar, ptr %bitsToChar.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpackedWord) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpackedSeed) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %numChars) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitsPer) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ss) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %twoWordBits) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %twoSeedBits) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #6
  %0 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %1 = load i32, ptr %word.addr, align 4, !tbaa !9
  %call = call i64 @seed_unpack(ptr noundef %0, i32 noundef %1, ptr noundef %unpackedSeed)
  store i64 %call, ptr %unpackedWord, align 8, !tbaa !37
  %2 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %length = getelementptr inbounds %struct.seed, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %length, align 4, !tbaa !18
  store i32 %3, ptr %numChars, align 4, !tbaa !9
  %4 = load i32, ptr %numChars, align 4, !tbaa !9
  %cmp = icmp sgt i32 %4, 63
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 63, ptr %numChars, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store ptr @seed_packed_to_string2.s, ptr %ss, align 8, !tbaa !5
  %5 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.seed, ptr %5, i32 0, i32 1
  %6 = load i8, ptr %type, align 8, !tbaa !17
  %conv = sext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 72
  %7 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i32 1, i32 2
  store i32 %cond, ptr %bitsPer, align 4, !tbaa !9
  %8 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %type3 = getelementptr inbounds %struct.seed, ptr %8, i32 0, i32 1
  %9 = load i8, ptr %type3, align 8, !tbaa !17
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv4, 72
  %10 = zext i1 %cmp5 to i64
  %cond7 = select i1 %cmp5, i32 1, i32 3
  store i32 %cond7, ptr %mask, align 4, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %11 = load i32, ptr %numChars, align 4, !tbaa !9
  %dec = add nsw i32 %11, -1
  store i32 %dec, ptr %numChars, align 4, !tbaa !9
  %cmp8 = icmp sgt i32 %11, 0
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i64, ptr %unpackedWord, align 8, !tbaa !37
  %13 = load i32, ptr %bitsPer, align 4, !tbaa !9
  %14 = load i32, ptr %numChars, align 4, !tbaa !9
  %mul = mul nsw i32 %13, %14
  %sh_prom = zext i32 %mul to i64
  %shr = lshr i64 %12, %sh_prom
  %15 = load i32, ptr %mask, align 4, !tbaa !9
  %conv10 = zext i32 %15 to i64
  %and = and i64 %shr, %conv10
  %conv11 = trunc i64 %and to i32
  store i32 %conv11, ptr %twoWordBits, align 4, !tbaa !9
  %16 = load i64, ptr %unpackedSeed, align 8, !tbaa !37
  %17 = load i32, ptr %bitsPer, align 4, !tbaa !9
  %18 = load i32, ptr %numChars, align 4, !tbaa !9
  %mul12 = mul nsw i32 %17, %18
  %sh_prom13 = zext i32 %mul12 to i64
  %shr14 = lshr i64 %16, %sh_prom13
  %19 = load i32, ptr %mask, align 4, !tbaa !9
  %conv15 = zext i32 %19 to i64
  %and16 = and i64 %shr14, %conv15
  %conv17 = trunc i64 %and16 to i32
  store i32 %conv17, ptr %twoSeedBits, align 4, !tbaa !9
  %20 = load i32, ptr %twoSeedBits, align 4, !tbaa !9
  switch i32 %20, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
    i32 2, label %sw.bb25
    i32 3, label %sw.bb27
  ]

sw.bb:                                            ; preds = %while.body
  %21 = load ptr, ptr %ss, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %ss, align 8, !tbaa !5
  store i8 120, ptr %21, align 1, !tbaa !14
  br label %sw.epilog

sw.bb18:                                          ; preds = %while.body
  %22 = load i32, ptr %twoWordBits, align 4, !tbaa !9
  %cmp19 = icmp ult i32 %22, 2
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %sw.bb18
  %23 = load ptr, ptr %bitToChar.addr, align 8, !tbaa !5
  %24 = load i32, ptr %twoWordBits, align 4, !tbaa !9
  %idxprom = zext i32 %24 to i64
  %arrayidx = getelementptr inbounds i8, ptr %23, i64 %idxprom
  %25 = load i8, ptr %arrayidx, align 1, !tbaa !14
  %26 = load ptr, ptr %ss, align 8, !tbaa !5
  %incdec.ptr22 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr22, ptr %ss, align 8, !tbaa !5
  store i8 %25, ptr %26, align 1, !tbaa !14
  br label %if.end24

if.else:                                          ; preds = %sw.bb18
  %27 = load ptr, ptr %ss, align 8, !tbaa !5
  %incdec.ptr23 = getelementptr inbounds i8, ptr %27, i32 1
  store ptr %incdec.ptr23, ptr %ss, align 8, !tbaa !5
  store i8 63, ptr %27, align 1, !tbaa !14
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then21
  br label %sw.epilog

sw.bb25:                                          ; preds = %while.body
  %28 = load ptr, ptr %ss, align 8, !tbaa !5
  %incdec.ptr26 = getelementptr inbounds i8, ptr %28, i32 1
  store ptr %incdec.ptr26, ptr %ss, align 8, !tbaa !5
  store i8 63, ptr %28, align 1, !tbaa !14
  br label %sw.epilog

sw.bb27:                                          ; preds = %while.body
  %29 = load ptr, ptr %bitsToChar.addr, align 8, !tbaa !5
  %30 = load i32, ptr %twoWordBits, align 4, !tbaa !9
  %idxprom28 = zext i32 %30 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %29, i64 %idxprom28
  %31 = load i8, ptr %arrayidx29, align 1, !tbaa !14
  %32 = load ptr, ptr %ss, align 8, !tbaa !5
  %incdec.ptr30 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr30, ptr %ss, align 8, !tbaa !5
  store i8 %31, ptr %32, align 1, !tbaa !14
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb27, %sw.bb25, %if.end24, %sw.bb
  br label %while.cond, !llvm.loop !49

while.end:                                        ; preds = %while.cond
  %33 = load ptr, ptr %ss, align 8, !tbaa !5
  store i8 0, ptr %33, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %twoSeedBits) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %twoWordBits) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ss) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitsPer) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %numChars) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpackedSeed) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpackedWord) #6
  ret ptr @seed_packed_to_string2.s
}

; Function Attrs: nounwind uwtable
define dso_local i64 @seed_unpack(ptr noundef %seed, i32 noundef %word, ptr noundef %seedBits) #0 {
entry:
  %seed.addr = alloca ptr, align 8
  %word.addr = alloca i32, align 4
  %seedBits.addr = alloca ptr, align 8
  %unpackedWord = alloca i64, align 8
  %unpackedSeed = alloca i64, align 8
  %partMask = alloca i64, align 8
  %part = alloca i32, align 4
  store ptr %seed, ptr %seed.addr, align 8, !tbaa !5
  store i32 %word, ptr %word.addr, align 4, !tbaa !9
  store ptr %seedBits, ptr %seedBits.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpackedWord) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %unpackedSeed) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %partMask) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %part) #6
  store i64 0, ptr %unpackedWord, align 8, !tbaa !37
  store i64 0, ptr %unpackedSeed, align 8, !tbaa !37
  store i32 0, ptr %part, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %part, align 4, !tbaa !9
  %1 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %numParts = getelementptr inbounds %struct.seed, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %numParts, align 8, !tbaa !29
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %mask = getelementptr inbounds %struct.seed, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %mask, align 8, !tbaa !25
  %5 = load i32, ptr %part, align 4, !tbaa !9
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %conv = zext i32 %6 to i64
  store i64 %conv, ptr %partMask, align 8, !tbaa !37
  %7 = load i32, ptr %word.addr, align 4, !tbaa !9
  %conv1 = zext i32 %7 to i64
  %8 = load i64, ptr %partMask, align 8, !tbaa !37
  %and = and i64 %conv1, %8
  %9 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %shift = getelementptr inbounds %struct.seed, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %shift, align 8, !tbaa !23
  %11 = load i32, ptr %part, align 4, !tbaa !9
  %idxprom2 = sext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %10, i64 %idxprom2
  %12 = load i32, ptr %arrayidx3, align 4, !tbaa !9
  %sh_prom = zext i32 %12 to i64
  %shl = shl i64 %and, %sh_prom
  %13 = load i64, ptr %unpackedWord, align 8, !tbaa !37
  %or = or i64 %13, %shl
  store i64 %or, ptr %unpackedWord, align 8, !tbaa !37
  %14 = load i64, ptr %partMask, align 8, !tbaa !37
  %15 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %shift4 = getelementptr inbounds %struct.seed, ptr %15, i32 0, i32 6
  %16 = load ptr, ptr %shift4, align 8, !tbaa !23
  %17 = load i32, ptr %part, align 4, !tbaa !9
  %idxprom5 = sext i32 %17 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %16, i64 %idxprom5
  %18 = load i32, ptr %arrayidx6, align 4, !tbaa !9
  %sh_prom7 = zext i32 %18 to i64
  %shl8 = shl i64 %14, %sh_prom7
  %19 = load i64, ptr %unpackedSeed, align 8, !tbaa !37
  %or9 = or i64 %19, %shl8
  store i64 %or9, ptr %unpackedSeed, align 8, !tbaa !37
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %part, align 4, !tbaa !9
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %part, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !50

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %seedBits.addr, align 8, !tbaa !5
  %cmp10 = icmp ne ptr %21, null
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %22 = load i64, ptr %unpackedSeed, align 8, !tbaa !37
  %23 = load ptr, ptr %seedBits.addr, align 8, !tbaa !5
  store i64 %22, ptr %23, align 8, !tbaa !37
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %24 = load i64, ptr %unpackedWord, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 4, ptr %part) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %partMask) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpackedSeed) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %unpackedWord) #6
  ret i64 %24
}

; Function Attrs: nounwind uwtable
define dso_local i32 @apply_seed(ptr noundef %seed, i64 noundef %word) #0 {
entry:
  %seed.addr = alloca ptr, align 8
  %word.addr = alloca i64, align 8
  %part = alloca i32, align 4
  %rcWord = alloca i64, align 8
  %packedWord = alloca i32, align 4
  %seedBits = alloca i32, align 4
  store ptr %seed, ptr %seed.addr, align 8, !tbaa !5
  store i64 %word, ptr %word.addr, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr %part) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %rcWord) #6
  store i64 0, ptr %rcWord, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr %packedWord) #6
  store i32 0, ptr %packedWord, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %seedBits) #6
  store i32 0, ptr %seedBits, align 4, !tbaa !9
  %0 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %revComp = getelementptr inbounds %struct.seed, ptr %0, i32 0, i32 9
  %1 = load i32, ptr %revComp, align 4, !tbaa !20
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %type = getelementptr inbounds %struct.seed, ptr %2, i32 0, i32 1
  %3 = load i8, ptr %type, align 8, !tbaa !17
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 72
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %length = getelementptr inbounds %struct.seed, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %length, align 4, !tbaa !18
  store i32 %5, ptr %seedBits, align 4, !tbaa !9
  %6 = load i64, ptr %word.addr, align 8, !tbaa !37
  %7 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %length3 = getelementptr inbounds %struct.seed, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %length3, align 4, !tbaa !18
  %call = call i64 @rev_comp_by_bits(i64 noundef %6, i32 noundef %8)
  store i64 %call, ptr %rcWord, align 8, !tbaa !37
  br label %if.end13

if.else:                                          ; preds = %if.then
  %9 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %type4 = getelementptr inbounds %struct.seed, ptr %9, i32 0, i32 1
  %10 = load i8, ptr %type4, align 8, !tbaa !17
  %conv5 = sext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv5, 82
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  call void @suicide(ptr noundef @.str.7)
  br label %if.end

if.else9:                                         ; preds = %if.else
  %11 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %length10 = getelementptr inbounds %struct.seed, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %length10, align 4, !tbaa !18
  %mul = mul nsw i32 2, %12
  store i32 %mul, ptr %seedBits, align 4, !tbaa !9
  %13 = load i64, ptr %word.addr, align 8, !tbaa !37
  %14 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %length11 = getelementptr inbounds %struct.seed, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %length11, align 4, !tbaa !18
  %call12 = call i64 @rev_comp_by_pairs(i64 noundef %13, i32 noundef %15)
  store i64 %call12, ptr %rcWord, align 8, !tbaa !37
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then8
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then2
  %16 = load i32, ptr %seedBits, align 4, !tbaa !9
  %sh_prom = zext i32 %16 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  %17 = load i64, ptr %word.addr, align 8, !tbaa !37
  %and = and i64 %17, %sub
  store i64 %and, ptr %word.addr, align 8, !tbaa !37
  %18 = load i64, ptr %rcWord, align 8, !tbaa !37
  %19 = load i64, ptr %word.addr, align 8, !tbaa !37
  %cmp14 = icmp ult i64 %18, %19
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  %20 = load i64, ptr %rcWord, align 8, !tbaa !37
  store i64 %20, ptr %word.addr, align 8, !tbaa !37
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %entry
  store i32 0, ptr %part, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end18
  %21 = load i32, ptr %part, align 4, !tbaa !9
  %22 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %numParts = getelementptr inbounds %struct.seed, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %numParts, align 8, !tbaa !29
  %cmp19 = icmp slt i32 %21, %23
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i64, ptr %word.addr, align 8, !tbaa !37
  %25 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %shift = getelementptr inbounds %struct.seed, ptr %25, i32 0, i32 6
  %26 = load ptr, ptr %shift, align 8, !tbaa !23
  %27 = load i32, ptr %part, align 4, !tbaa !9
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds i32, ptr %26, i64 %idxprom
  %28 = load i32, ptr %arrayidx, align 4, !tbaa !9
  %sh_prom21 = zext i32 %28 to i64
  %shr = lshr i64 %24, %sh_prom21
  %29 = load ptr, ptr %seed.addr, align 8, !tbaa !5
  %mask = getelementptr inbounds %struct.seed, ptr %29, i32 0, i32 7
  %30 = load ptr, ptr %mask, align 8, !tbaa !25
  %31 = load i32, ptr %part, align 4, !tbaa !9
  %idxprom22 = sext i32 %31 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %30, i64 %idxprom22
  %32 = load i32, ptr %arrayidx23, align 4, !tbaa !9
  %conv24 = zext i32 %32 to i64
  %and25 = and i64 %shr, %conv24
  %33 = load i32, ptr %packedWord, align 4, !tbaa !9
  %conv26 = zext i32 %33 to i64
  %or = or i64 %conv26, %and25
  %conv27 = trunc i64 %or to i32
  store i32 %conv27, ptr %packedWord, align 4, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, ptr %part, align 4, !tbaa !9
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %part, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  %35 = load i32, ptr %packedWord, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %seedBits) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %packedWord) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %rcWord) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %part) #6
  ret i32 %35
}

declare i64 @rev_comp_by_bits(i64 noundef, i32 noundef) #4

declare i64 @rev_comp_by_pairs(i64 noundef, i32 noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @parse_one_seed(ptr noundef %_s, ptr noundef %e, i32 noundef %transitionsOk, i32 noundef %maxIndexBits) #0 {
entry:
  %_s.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %transitionsOk.addr = alloca i32, align 4
  %maxIndexBits.addr = alloca i32, align 4
  %pattern = alloca [64 x i8], align 16
  %s = alloca ptr, align 8
  %ss = alloca ptr, align 8
  %p = alloca ptr, align 8
  %type = alloca i8, align 1
  %isStrict = alloca i32, align 4
  %isHalfweight = alloca i32, align 4
  %length = alloca i32, align 4
  %weight = alloca i32, align 4
  %seedBits = alloca i64, align 8
  %flipBits = alloca i64, align 8
  %resolveBits = alloca i32, align 4
  %shift = alloca i32, align 4
  %bitsPer = alloca i32, align 4
  %matches = alloca i32, align 4
  %matchesToKeep = alloca i32, align 4
  %mask = alloca i32, align 4
  %wBits = alloca i32, align 4
  %covered = alloca i32, align 4
  %remBits = alloca i64, align 8
  %numParts = alloca i32, align 4
  %seed = alloca ptr, align 8
  %toResolve = alloca i32, align 4
  %rightBit = alloca i64, align 8
  %f = alloca ptr, align 8
  store ptr %_s, ptr %_s.addr, align 8, !tbaa !5
  store ptr %e, ptr %e.addr, align 8, !tbaa !5
  store i32 %transitionsOk, ptr %transitionsOk.addr, align 4, !tbaa !9
  store i32 %maxIndexBits, ptr %maxIndexBits.addr, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %pattern) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ss) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr %type) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %isStrict) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %isHalfweight) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %weight) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %seedBits) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %flipBits) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %resolveBits) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %shift) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitsPer) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %matches) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %matchesToKeep) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %wBits) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %covered) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %remBits) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %numParts) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %seed) #6
  %0 = load i32, ptr %maxIndexBits.addr, align 4, !tbaa !9
  %cmp = icmp sgt i32 %0, 31
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %maxIndexBits.addr, align 4, !tbaa !9
  call void (ptr, ...) @suicidef(ptr noundef @.str.8, i32 noundef 31, i32 noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %_s.addr, align 8, !tbaa !5
  store ptr %2, ptr %s, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load ptr, ptr %s, align 8, !tbaa !5
  %4 = load ptr, ptr %e.addr, align 8, !tbaa !5
  %cmp1 = icmp ule ptr %3, %4
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %s, align 8, !tbaa !5
  %6 = load i8, ptr %5, align 1, !tbaa !14
  %conv = sext i8 %6 to i32
  %cmp2 = icmp eq i32 %conv, 48
  br i1 %cmp2, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %7 = load ptr, ptr %s, align 8, !tbaa !5
  %8 = load i8, ptr %7, align 1, !tbaa !14
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv4, 88
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %s, align 8, !tbaa !5
  %10 = load i8, ptr %9, align 1, !tbaa !14
  %conv7 = sext i8 %10 to i32
  %cmp8 = icmp eq i32 %conv7, 120
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.rhs
  %11 = phi i1 [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %cmp8, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %11, %lor.end ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load ptr, ptr %s, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %s, align 8, !tbaa !5
  br label %while.cond, !llvm.loop !52

while.end:                                        ; preds = %land.end
  %14 = load ptr, ptr %s, align 8, !tbaa !5
  %15 = load ptr, ptr %e.addr, align 8, !tbaa !5
  %cmp10 = icmp ugt ptr %14, %15
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %while.end
  call void @suicide(ptr noundef @.str.9)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %while.end
  br label %while.cond14

while.cond14:                                     ; preds = %while.body27, %if.end13
  %16 = load ptr, ptr %e.addr, align 8, !tbaa !5
  %17 = load i8, ptr %16, align 1, !tbaa !14
  %conv15 = sext i8 %17 to i32
  %cmp16 = icmp eq i32 %conv15, 48
  br i1 %cmp16, label %lor.end26, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %while.cond14
  %18 = load ptr, ptr %e.addr, align 8, !tbaa !5
  %19 = load i8, ptr %18, align 1, !tbaa !14
  %conv19 = sext i8 %19 to i32
  %cmp20 = icmp eq i32 %conv19, 88
  br i1 %cmp20, label %lor.end26, label %lor.rhs22

lor.rhs22:                                        ; preds = %lor.lhs.false18
  %20 = load ptr, ptr %e.addr, align 8, !tbaa !5
  %21 = load i8, ptr %20, align 1, !tbaa !14
  %conv23 = sext i8 %21 to i32
  %cmp24 = icmp eq i32 %conv23, 120
  br label %lor.end26

lor.end26:                                        ; preds = %lor.rhs22, %lor.lhs.false18, %while.cond14
  %22 = phi i1 [ true, %lor.lhs.false18 ], [ true, %while.cond14 ], [ %cmp24, %lor.rhs22 ]
  br i1 %22, label %while.body27, label %while.end29

while.body27:                                     ; preds = %lor.end26
  %23 = load ptr, ptr %e.addr, align 8, !tbaa !5
  %incdec.ptr28 = getelementptr inbounds i8, ptr %23, i32 -1
  store ptr %incdec.ptr28, ptr %e.addr, align 8, !tbaa !5
  br label %while.cond14, !llvm.loop !53

while.end29:                                      ; preds = %lor.end26
  store i32 1, ptr %isStrict, align 4, !tbaa !9
  store i32 1, ptr %isHalfweight, align 4, !tbaa !9
  store i32 0, ptr %matches, align 4, !tbaa !9
  store i32 0, ptr %weight, align 4, !tbaa !9
  %24 = load ptr, ptr %s, align 8, !tbaa !5
  store ptr %24, ptr %ss, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end29
  %25 = load ptr, ptr %ss, align 8, !tbaa !5
  %26 = load ptr, ptr %e.addr, align 8, !tbaa !5
  %cmp30 = icmp ule ptr %25, %26
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %ss, align 8, !tbaa !5
  %28 = load i8, ptr %27, align 1, !tbaa !14
  %conv32 = sext i8 %28 to i32
  switch i32 %conv32, label %sw.epilog [
    i32 49, label %sw.bb
    i32 84, label %sw.bb33
    i32 116, label %sw.bb33
    i32 48, label %sw.bb35
    i32 88, label %sw.bb35
    i32 120, label %sw.bb35
  ]

sw.bb:                                            ; preds = %for.body
  store i32 0, ptr %isHalfweight, align 4, !tbaa !9
  %29 = load i32, ptr %matches, align 4, !tbaa !9
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %matches, align 4, !tbaa !9
  %30 = load i32, ptr %weight, align 4, !tbaa !9
  %add = add nsw i32 %30, 2
  store i32 %add, ptr %weight, align 4, !tbaa !9
  br label %sw.epilog

sw.bb33:                                          ; preds = %for.body, %for.body
  store i32 0, ptr %isStrict, align 4, !tbaa !9
  %31 = load i32, ptr %weight, align 4, !tbaa !9
  %inc34 = add nsw i32 %31, 1
  store i32 %inc34, ptr %weight, align 4, !tbaa !9
  br label %sw.epilog

sw.bb35:                                          ; preds = %for.body, %for.body, %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb35, %sw.bb33, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %32 = load ptr, ptr %ss, align 8, !tbaa !5
  %incdec.ptr36 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %incdec.ptr36, ptr %ss, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !54

for.end:                                          ; preds = %for.cond
  %33 = load i32, ptr %isStrict, align 4, !tbaa !9
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then37, label %if.else

if.then37:                                        ; preds = %for.end
  store i8 83, ptr %type, align 1, !tbaa !14
  br label %if.end42

if.else:                                          ; preds = %for.end
  %34 = load i32, ptr %isHalfweight, align 4, !tbaa !9
  %tobool38 = icmp ne i32 %34, 0
  br i1 %tobool38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.else
  store i8 72, ptr %type, align 1, !tbaa !14
  br label %if.end41

if.else40:                                        ; preds = %if.else
  store i8 95, ptr %type, align 1, !tbaa !14
  br label %if.end41

if.end41:                                         ; preds = %if.else40, %if.then39
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then37
  %35 = load i32, ptr %matches, align 4, !tbaa !9
  store i32 %35, ptr %matchesToKeep, align 4, !tbaa !9
  %36 = load i32, ptr %maxIndexBits.addr, align 4, !tbaa !9
  %cmp43 = icmp sgt i32 %36, 0
  br i1 %cmp43, label %land.lhs.true, label %if.end57

land.lhs.true:                                    ; preds = %if.end42
  %37 = load i32, ptr %weight, align 4, !tbaa !9
  %38 = load i32, ptr %maxIndexBits.addr, align 4, !tbaa !9
  %cmp45 = icmp sgt i32 %37, %38
  br i1 %cmp45, label %if.then47, label %if.end57

if.then47:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %toResolve) #6
  %39 = load i32, ptr %weight, align 4, !tbaa !9
  %40 = load i32, ptr %maxIndexBits.addr, align 4, !tbaa !9
  %sub = sub nsw i32 %39, %40
  store i32 %sub, ptr %toResolve, align 4, !tbaa !9
  %41 = load i32, ptr %toResolve, align 4, !tbaa !9
  %42 = load i32, ptr %matches, align 4, !tbaa !9
  %cmp48 = icmp sgt i32 %41, %42
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then47
  %43 = load ptr, ptr %_s.addr, align 8, !tbaa !5
  %44 = load i32, ptr %toResolve, align 4, !tbaa !9
  %45 = load i32, ptr %matches, align 4, !tbaa !9
  call void (ptr, ...) @suicidef(ptr noundef @.str.10, ptr noundef %43, i32 noundef %44, i32 noundef %45)
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.then47
  %46 = load i32, ptr %toResolve, align 4, !tbaa !9
  %cmp52 = icmp sgt i32 %46, 16
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end51
  %47 = load ptr, ptr %_s.addr, align 8, !tbaa !5
  %48 = load i32, ptr %toResolve, align 4, !tbaa !9
  call void (ptr, ...) @suicidef(ptr noundef @.str.11, ptr noundef %47, i32 noundef %48, i32 noundef 16)
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end51
  store i8 82, ptr %type, align 1, !tbaa !14
  %49 = load i32, ptr %toResolve, align 4, !tbaa !9
  %50 = load i32, ptr %matchesToKeep, align 4, !tbaa !9
  %sub56 = sub nsw i32 %50, %49
  store i32 %sub56, ptr %matchesToKeep, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %toResolve) #6
  br label %if.end57

if.end57:                                         ; preds = %if.end55, %land.lhs.true, %if.end42
  store i32 0, ptr %resolveBits, align 4, !tbaa !9
  store i64 0, ptr %seedBits, align 8, !tbaa !37
  store i64 0, ptr %flipBits, align 8, !tbaa !37
  %51 = load i8, ptr %type, align 1, !tbaa !14
  %conv58 = sext i8 %51 to i32
  %cmp59 = icmp eq i32 %conv58, 72
  %52 = zext i1 %cmp59 to i64
  %cond = select i1 %cmp59, i32 1, i32 2
  store i32 %cond, ptr %bitsPer, align 4, !tbaa !9
  store i32 0, ptr %matches, align 4, !tbaa !9
  store i32 0, ptr %length, align 4, !tbaa !9
  store i32 0, ptr %weight, align 4, !tbaa !9
  %53 = load ptr, ptr %s, align 8, !tbaa !5
  store ptr %53, ptr %ss, align 8, !tbaa !5
  %arraydecay = getelementptr inbounds [64 x i8], ptr %pattern, i64 0, i64 0
  store ptr %arraydecay, ptr %p, align 8, !tbaa !5
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc119, %if.end57
  %54 = load ptr, ptr %ss, align 8, !tbaa !5
  %55 = load ptr, ptr %e.addr, align 8, !tbaa !5
  %cmp62 = icmp ule ptr %54, %55
  br i1 %cmp62, label %for.body64, label %for.end121

for.body64:                                       ; preds = %for.cond61
  %56 = load ptr, ptr %ss, align 8, !tbaa !5
  %57 = load i8, ptr %56, align 1, !tbaa !14
  %conv65 = sext i8 %57 to i32
  switch i32 %conv65, label %sw.default [
    i32 32, label %sw.bb74
    i32 9, label %sw.bb74
    i32 10, label %sw.bb74
    i32 49, label %sw.bb75
    i32 84, label %sw.bb96
    i32 116, label %sw.bb96
    i32 48, label %sw.bb109
    i32 88, label %sw.bb109
    i32 120, label %sw.bb109
  ]

sw.default:                                       ; preds = %for.body64
  br label %bad_character

bad_character:                                    ; preds = %if.then98, %sw.default
  %call = call ptr @__ctype_b_loc() #8
  %58 = load ptr, ptr %call, align 8, !tbaa !5
  %59 = load ptr, ptr %ss, align 8, !tbaa !5
  %60 = load i8, ptr %59, align 1, !tbaa !14
  %conv66 = sext i8 %60 to i32
  %idxprom = sext i32 %conv66 to i64
  %arrayidx = getelementptr inbounds i16, ptr %58, i64 %idxprom
  %61 = load i16, ptr %arrayidx, align 2, !tbaa !55
  %conv67 = zext i16 %61 to i32
  %and = and i32 %conv67, 16384
  %tobool68 = icmp ne i32 %and, 0
  br i1 %tobool68, label %if.then69, label %if.else71

if.then69:                                        ; preds = %bad_character
  %62 = load ptr, ptr %_s.addr, align 8, !tbaa !5
  %63 = load ptr, ptr %ss, align 8, !tbaa !5
  %64 = load i8, ptr %63, align 1, !tbaa !14
  %conv70 = sext i8 %64 to i32
  call void (ptr, ...) @suicidef(ptr noundef @.str.12, ptr noundef %62, i32 noundef %conv70)
  br label %if.end73

if.else71:                                        ; preds = %bad_character
  %65 = load ptr, ptr %_s.addr, align 8, !tbaa !5
  %66 = load ptr, ptr %ss, align 8, !tbaa !5
  %67 = load i8, ptr %66, align 1, !tbaa !14
  %conv72 = sext i8 %67 to i32
  call void (ptr, ...) @suicidef(ptr noundef @.str.13, ptr noundef %65, i32 noundef %conv72)
  br label %if.end73

if.end73:                                         ; preds = %if.else71, %if.then69
  br label %sw.bb74

sw.bb74:                                          ; preds = %for.body64, %for.body64, %for.body64, %if.end73
  br label %sw.epilog118

sw.bb75:                                          ; preds = %for.body64
  %68 = load i32, ptr %matches, align 4, !tbaa !9
  %69 = load i32, ptr %matchesToKeep, align 4, !tbaa !9
  %cmp76 = icmp sge i32 %68, %69
  br i1 %cmp76, label %if.then78, label %if.end85

if.then78:                                        ; preds = %sw.bb75
  %70 = load i32, ptr %resolveBits, align 4, !tbaa !9
  %shl = shl i32 %70, 2
  %71 = load i32, ptr %resolveBits, align 4, !tbaa !9
  %cmp79 = icmp ult i32 %shl, %71
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.then78
  %72 = load ptr, ptr %_s.addr, align 8, !tbaa !5
  call void (ptr, ...) @suicidef(ptr noundef @.str.14, ptr noundef %72)
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.then78
  %73 = load i32, ptr %resolveBits, align 4, !tbaa !9
  %74 = load i32, ptr %bitsPer, align 4, !tbaa !9
  %shl83 = shl i32 %73, %74
  %add84 = add i32 %shl83, 2
  store i32 %add84, ptr %resolveBits, align 4, !tbaa !9
  br label %transition

if.end85:                                         ; preds = %sw.bb75
  %75 = load i32, ptr %bitsPer, align 4, !tbaa !9
  %76 = load i32, ptr %resolveBits, align 4, !tbaa !9
  %shl86 = shl i32 %76, %75
  store i32 %shl86, ptr %resolveBits, align 4, !tbaa !9
  %77 = load i64, ptr %seedBits, align 8, !tbaa !37
  %78 = load i32, ptr %bitsPer, align 4, !tbaa !9
  %sh_prom = zext i32 %78 to i64
  %shl87 = shl i64 %77, %sh_prom
  %add88 = add i64 %shl87, 3
  store i64 %add88, ptr %seedBits, align 8, !tbaa !37
  %79 = load i64, ptr %flipBits, align 8, !tbaa !37
  %80 = load i32, ptr %bitsPer, align 4, !tbaa !9
  %sh_prom89 = zext i32 %80 to i64
  %shl90 = shl i64 %79, %sh_prom89
  %add91 = add i64 %shl90, 2
  store i64 %add91, ptr %flipBits, align 8, !tbaa !37
  %81 = load i32, ptr %matches, align 4, !tbaa !9
  %inc92 = add nsw i32 %81, 1
  store i32 %inc92, ptr %matches, align 4, !tbaa !9
  %82 = load i32, ptr %length, align 4, !tbaa !9
  %inc93 = add nsw i32 %82, 1
  store i32 %inc93, ptr %length, align 4, !tbaa !9
  %83 = load i32, ptr %weight, align 4, !tbaa !9
  %add94 = add nsw i32 %83, 2
  store i32 %add94, ptr %weight, align 4, !tbaa !9
  %84 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr95 = getelementptr inbounds i8, ptr %84, i32 1
  store ptr %incdec.ptr95, ptr %p, align 8, !tbaa !5
  store i8 49, ptr %84, align 1, !tbaa !14
  br label %sw.epilog118

sw.bb96:                                          ; preds = %for.body64, %for.body64
  %85 = load i32, ptr %transitionsOk.addr, align 4, !tbaa !9
  %tobool97 = icmp ne i32 %85, 0
  br i1 %tobool97, label %if.end99, label %if.then98

if.then98:                                        ; preds = %sw.bb96
  br label %bad_character

if.end99:                                         ; preds = %sw.bb96
  %86 = load i32, ptr %bitsPer, align 4, !tbaa !9
  %87 = load i32, ptr %resolveBits, align 4, !tbaa !9
  %shl100 = shl i32 %87, %86
  store i32 %shl100, ptr %resolveBits, align 4, !tbaa !9
  br label %transition

transition:                                       ; preds = %if.end99, %if.end82
  %88 = load i64, ptr %seedBits, align 8, !tbaa !37
  %89 = load i32, ptr %bitsPer, align 4, !tbaa !9
  %sh_prom101 = zext i32 %89 to i64
  %shl102 = shl i64 %88, %sh_prom101
  %add103 = add i64 %shl102, 1
  store i64 %add103, ptr %seedBits, align 8, !tbaa !37
  %90 = load i32, ptr %bitsPer, align 4, !tbaa !9
  %91 = load i64, ptr %flipBits, align 8, !tbaa !37
  %sh_prom104 = zext i32 %90 to i64
  %shl105 = shl i64 %91, %sh_prom104
  store i64 %shl105, ptr %flipBits, align 8, !tbaa !37
  %92 = load i32, ptr %length, align 4, !tbaa !9
  %inc106 = add nsw i32 %92, 1
  store i32 %inc106, ptr %length, align 4, !tbaa !9
  %93 = load i32, ptr %weight, align 4, !tbaa !9
  %inc107 = add nsw i32 %93, 1
  store i32 %inc107, ptr %weight, align 4, !tbaa !9
  %94 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr108 = getelementptr inbounds i8, ptr %94, i32 1
  store ptr %incdec.ptr108, ptr %p, align 8, !tbaa !5
  store i8 84, ptr %94, align 1, !tbaa !14
  br label %sw.epilog118

sw.bb109:                                         ; preds = %for.body64, %for.body64, %for.body64
  %95 = load i32, ptr %bitsPer, align 4, !tbaa !9
  %96 = load i32, ptr %resolveBits, align 4, !tbaa !9
  %shl110 = shl i32 %96, %95
  store i32 %shl110, ptr %resolveBits, align 4, !tbaa !9
  %97 = load i64, ptr %seedBits, align 8, !tbaa !37
  %98 = load i32, ptr %bitsPer, align 4, !tbaa !9
  %sh_prom111 = zext i32 %98 to i64
  %shl112 = shl i64 %97, %sh_prom111
  %add113 = add i64 %shl112, 0
  store i64 %add113, ptr %seedBits, align 8, !tbaa !37
  %99 = load i32, ptr %bitsPer, align 4, !tbaa !9
  %100 = load i64, ptr %flipBits, align 8, !tbaa !37
  %sh_prom114 = zext i32 %99 to i64
  %shl115 = shl i64 %100, %sh_prom114
  store i64 %shl115, ptr %flipBits, align 8, !tbaa !37
  %101 = load i32, ptr %length, align 4, !tbaa !9
  %inc116 = add nsw i32 %101, 1
  store i32 %inc116, ptr %length, align 4, !tbaa !9
  %102 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr117 = getelementptr inbounds i8, ptr %102, i32 1
  store ptr %incdec.ptr117, ptr %p, align 8, !tbaa !5
  store i8 48, ptr %102, align 1, !tbaa !14
  br label %sw.epilog118

sw.epilog118:                                     ; preds = %sw.bb109, %transition, %if.end85, %sw.bb74
  br label %for.inc119

for.inc119:                                       ; preds = %sw.epilog118
  %103 = load ptr, ptr %ss, align 8, !tbaa !5
  %incdec.ptr120 = getelementptr inbounds i8, ptr %103, i32 1
  store ptr %incdec.ptr120, ptr %ss, align 8, !tbaa !5
  br label %for.cond61, !llvm.loop !57

for.end121:                                       ; preds = %for.cond61
  %104 = load ptr, ptr %p, align 8, !tbaa !5
  store i8 0, ptr %104, align 1, !tbaa !14
  %105 = load i8, ptr %type, align 1, !tbaa !14
  %conv122 = sext i8 %105 to i32
  %cmp123 = icmp eq i32 %conv122, 72
  br i1 %cmp123, label %if.then125, label %if.else130

if.then125:                                       ; preds = %for.end121
  %106 = load i32, ptr %length, align 4, !tbaa !9
  %cmp126 = icmp sgt i32 %106, 63
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %if.then125
  %107 = load ptr, ptr %_s.addr, align 8, !tbaa !5
  %108 = load i32, ptr %length, align 4, !tbaa !9
  call void (ptr, ...) @suicidef(ptr noundef @.str.15, ptr noundef %107, i32 noundef 63, i32 noundef %108)
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %if.then125
  br label %if.end135

if.else130:                                       ; preds = %for.end121
  %109 = load i32, ptr %length, align 4, !tbaa !9
  %cmp131 = icmp sgt i32 %109, 31
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.else130
  %110 = load ptr, ptr %_s.addr, align 8, !tbaa !5
  %111 = load i32, ptr %length, align 4, !tbaa !9
  call void (ptr, ...) @suicidef(ptr noundef @.str.16, ptr noundef %110, i32 noundef 31, i32 noundef %111)
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %if.else130
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.end129
  %112 = load i32, ptr %weight, align 4, !tbaa !9
  %cmp136 = icmp sgt i32 %112, 31
  br i1 %cmp136, label %if.then138, label %if.end139

if.then138:                                       ; preds = %if.end135
  %113 = load ptr, ptr %_s.addr, align 8, !tbaa !5
  %114 = load i32, ptr %weight, align 4, !tbaa !9
  call void (ptr, ...) @suicidef(ptr noundef @.str.17, ptr noundef %113, i32 noundef 31, i32 noundef %114)
  br label %if.end139

if.end139:                                        ; preds = %if.then138, %if.end135
  %115 = load i32, ptr %weight, align 4, !tbaa !9
  %cmp140 = icmp eq i32 %115, 0
  br i1 %cmp140, label %if.then142, label %if.end143

if.then142:                                       ; preds = %if.end139
  %116 = load ptr, ptr %_s.addr, align 8, !tbaa !5
  call void (ptr, ...) @suicidef(ptr noundef @.str.18, ptr noundef %116)
  br label %if.end143

if.end143:                                        ; preds = %if.then142, %if.end139
  %117 = load i32, ptr %weight, align 4, !tbaa !9
  %sh_prom144 = zext i32 %117 to i64
  %shl145 = shl i64 1, %sh_prom144
  %sub146 = sub nsw i64 %shl145, 1
  %conv147 = trunc i64 %sub146 to i32
  store i32 %conv147, ptr %wBits, align 4, !tbaa !9
  %118 = load i64, ptr %seedBits, align 8, !tbaa !37
  %119 = load i32, ptr %wBits, align 4, !tbaa !9
  %conv148 = zext i32 %119 to i64
  %and149 = and i64 %118, %conv148
  %conv150 = trunc i64 %and149 to i32
  store i32 %conv150, ptr %covered, align 4, !tbaa !9
  %120 = load i64, ptr %seedBits, align 8, !tbaa !37
  %121 = load i32, ptr %covered, align 4, !tbaa !9
  %conv151 = zext i32 %121 to i64
  %sub152 = sub i64 %120, %conv151
  store i64 %sub152, ptr %remBits, align 8, !tbaa !37
  store i32 1, ptr %numParts, align 4, !tbaa !9
  br label %while.cond153

while.cond153:                                    ; preds = %while.body156, %if.end143
  %122 = load i32, ptr %covered, align 4, !tbaa !9
  %123 = load i32, ptr %wBits, align 4, !tbaa !9
  %cmp154 = icmp ne i32 %122, %123
  br i1 %cmp154, label %while.body156, label %while.end172

while.body156:                                    ; preds = %while.cond153
  %124 = load i32, ptr %covered, align 4, !tbaa !9
  %not = xor i32 %124, -1
  %125 = load i32, ptr %wBits, align 4, !tbaa !9
  %and157 = and i32 %not, %125
  %126 = load i64, ptr %remBits, align 8, !tbaa !37
  %call158 = call i32 @best_shift(i32 noundef %and157, i64 noundef %126)
  store i32 %call158, ptr %shift, align 4, !tbaa !9
  %127 = load i64, ptr %remBits, align 8, !tbaa !37
  %128 = load i32, ptr %shift, align 4, !tbaa !9
  %sh_prom159 = zext i32 %128 to i64
  %shr = lshr i64 %127, %sh_prom159
  %129 = load i32, ptr %covered, align 4, !tbaa !9
  %not160 = xor i32 %129, -1
  %conv161 = zext i32 %not160 to i64
  %and162 = and i64 %shr, %conv161
  %130 = load i32, ptr %wBits, align 4, !tbaa !9
  %conv163 = zext i32 %130 to i64
  %and164 = and i64 %and162, %conv163
  %conv165 = trunc i64 %and164 to i32
  store i32 %conv165, ptr %mask, align 4, !tbaa !9
  %131 = load i32, ptr %covered, align 4, !tbaa !9
  %132 = load i32, ptr %mask, align 4, !tbaa !9
  %add166 = add i32 %131, %132
  store i32 %add166, ptr %covered, align 4, !tbaa !9
  %133 = load i64, ptr %remBits, align 8, !tbaa !37
  %134 = load i32, ptr %mask, align 4, !tbaa !9
  %conv167 = zext i32 %134 to i64
  %135 = load i32, ptr %shift, align 4, !tbaa !9
  %sh_prom168 = zext i32 %135 to i64
  %shl169 = shl i64 %conv167, %sh_prom168
  %sub170 = sub i64 %133, %shl169
  store i64 %sub170, ptr %remBits, align 8, !tbaa !37
  %136 = load i32, ptr %numParts, align 4, !tbaa !9
  %inc171 = add nsw i32 %136, 1
  store i32 %inc171, ptr %numParts, align 4, !tbaa !9
  br label %while.cond153, !llvm.loop !58

while.end172:                                     ; preds = %while.cond153
  %137 = load i8, ptr %type, align 1, !tbaa !14
  %conv173 = sext i8 %137 to i32
  %cmp174 = icmp eq i32 %conv173, 72
  br i1 %cmp174, label %if.then176, label %if.else178

if.then176:                                       ; preds = %while.end172
  %138 = load i32, ptr %numParts, align 4, !tbaa !9
  %139 = load i32, ptr %length, align 4, !tbaa !9
  %call177 = call ptr @new_seed(i32 noundef %138, i32 noundef %139, i32 noundef 0)
  store ptr %call177, ptr %seed, align 8, !tbaa !5
  br label %if.end181

if.else178:                                       ; preds = %while.end172
  %140 = load i32, ptr %numParts, align 4, !tbaa !9
  %141 = load i32, ptr %length, align 4, !tbaa !9
  %142 = load i64, ptr %flipBits, align 8, !tbaa !37
  %call179 = call i32 @bit_count_64(i64 noundef %142)
  %call180 = call ptr @new_seed(i32 noundef %140, i32 noundef %141, i32 noundef %call179)
  store ptr %call180, ptr %seed, align 8, !tbaa !5
  br label %if.end181

if.end181:                                        ; preds = %if.else178, %if.then176
  %143 = load ptr, ptr %seed, align 8, !tbaa !5
  %next = getelementptr inbounds %struct.seed, ptr %143, i32 0, i32 0
  store ptr null, ptr %next, align 8, !tbaa !13
  %144 = load i8, ptr %type, align 1, !tbaa !14
  %145 = load ptr, ptr %seed, align 8, !tbaa !5
  %type182 = getelementptr inbounds %struct.seed, ptr %145, i32 0, i32 1
  store i8 %144, ptr %type182, align 8, !tbaa !17
  %146 = load i32, ptr %length, align 4, !tbaa !9
  %147 = load ptr, ptr %seed, align 8, !tbaa !5
  %length183 = getelementptr inbounds %struct.seed, ptr %147, i32 0, i32 2
  store i32 %146, ptr %length183, align 4, !tbaa !18
  %148 = load i32, ptr %weight, align 4, !tbaa !9
  %149 = load ptr, ptr %seed, align 8, !tbaa !5
  %weight184 = getelementptr inbounds %struct.seed, ptr %149, i32 0, i32 3
  store i32 %148, ptr %weight184, align 8, !tbaa !11
  %150 = load i8, ptr %type, align 1, !tbaa !14
  %conv185 = sext i8 %150 to i32
  %cmp186 = icmp eq i32 %conv185, 72
  %conv187 = zext i1 %cmp186 to i32
  %151 = load ptr, ptr %seed, align 8, !tbaa !5
  %isHalfweight188 = getelementptr inbounds %struct.seed, ptr %151, i32 0, i32 10
  store i32 %conv187, ptr %isHalfweight188, align 8, !tbaa !21
  %152 = load ptr, ptr %seed, align 8, !tbaa !5
  %withTrans = getelementptr inbounds %struct.seed, ptr %152, i32 0, i32 11
  store i32 0, ptr %withTrans, align 4, !tbaa !33
  %153 = load i32, ptr %resolveBits, align 4, !tbaa !9
  %154 = load ptr, ptr %seed, align 8, !tbaa !5
  %resolvingMask = getelementptr inbounds %struct.seed, ptr %154, i32 0, i32 8
  store i32 %153, ptr %resolvingMask, align 8, !tbaa !19
  %155 = load ptr, ptr %seed, align 8, !tbaa !5
  %revComp = getelementptr inbounds %struct.seed, ptr %155, i32 0, i32 9
  store i32 0, ptr %revComp, align 4, !tbaa !20
  %156 = load ptr, ptr %seed, align 8, !tbaa !5
  %pattern189 = getelementptr inbounds %struct.seed, ptr %156, i32 0, i32 4
  %157 = load ptr, ptr %pattern189, align 8, !tbaa !22
  %arraydecay190 = getelementptr inbounds [64 x i8], ptr %pattern, i64 0, i64 0
  %call191 = call ptr @strcpy(ptr noundef %157, ptr noundef %arraydecay190) #6
  %158 = load i64, ptr %seedBits, align 8, !tbaa !37
  %159 = load i32, ptr %wBits, align 4, !tbaa !9
  %conv192 = zext i32 %159 to i64
  %and193 = and i64 %158, %conv192
  %conv194 = trunc i64 %and193 to i32
  store i32 %conv194, ptr %covered, align 4, !tbaa !9
  %160 = load i64, ptr %seedBits, align 8, !tbaa !37
  %161 = load i32, ptr %covered, align 4, !tbaa !9
  %conv195 = zext i32 %161 to i64
  %sub196 = sub i64 %160, %conv195
  store i64 %sub196, ptr %remBits, align 8, !tbaa !37
  store i32 1, ptr %numParts, align 4, !tbaa !9
  %162 = load ptr, ptr %seed, align 8, !tbaa !5
  %shift197 = getelementptr inbounds %struct.seed, ptr %162, i32 0, i32 6
  %163 = load ptr, ptr %shift197, align 8, !tbaa !23
  %arrayidx198 = getelementptr inbounds i32, ptr %163, i64 0
  store i32 0, ptr %arrayidx198, align 4, !tbaa !9
  %164 = load i32, ptr %covered, align 4, !tbaa !9
  %165 = load ptr, ptr %seed, align 8, !tbaa !5
  %mask199 = getelementptr inbounds %struct.seed, ptr %165, i32 0, i32 7
  %166 = load ptr, ptr %mask199, align 8, !tbaa !25
  %arrayidx200 = getelementptr inbounds i32, ptr %166, i64 0
  store i32 %164, ptr %arrayidx200, align 4, !tbaa !9
  br label %while.cond201

while.cond201:                                    ; preds = %while.body204, %if.end181
  %167 = load i32, ptr %covered, align 4, !tbaa !9
  %168 = load i32, ptr %wBits, align 4, !tbaa !9
  %cmp202 = icmp ne i32 %167, %168
  br i1 %cmp202, label %while.body204, label %while.end228

while.body204:                                    ; preds = %while.cond201
  %169 = load i32, ptr %covered, align 4, !tbaa !9
  %not205 = xor i32 %169, -1
  %170 = load i32, ptr %wBits, align 4, !tbaa !9
  %and206 = and i32 %not205, %170
  %171 = load i64, ptr %remBits, align 8, !tbaa !37
  %call207 = call i32 @best_shift(i32 noundef %and206, i64 noundef %171)
  store i32 %call207, ptr %shift, align 4, !tbaa !9
  %172 = load i64, ptr %remBits, align 8, !tbaa !37
  %173 = load i32, ptr %shift, align 4, !tbaa !9
  %sh_prom208 = zext i32 %173 to i64
  %shr209 = lshr i64 %172, %sh_prom208
  %174 = load i32, ptr %covered, align 4, !tbaa !9
  %not210 = xor i32 %174, -1
  %conv211 = zext i32 %not210 to i64
  %and212 = and i64 %shr209, %conv211
  %175 = load i32, ptr %wBits, align 4, !tbaa !9
  %conv213 = zext i32 %175 to i64
  %and214 = and i64 %and212, %conv213
  %conv215 = trunc i64 %and214 to i32
  store i32 %conv215, ptr %mask, align 4, !tbaa !9
  %176 = load i32, ptr %covered, align 4, !tbaa !9
  %177 = load i32, ptr %mask, align 4, !tbaa !9
  %add216 = add i32 %176, %177
  store i32 %add216, ptr %covered, align 4, !tbaa !9
  %178 = load i64, ptr %remBits, align 8, !tbaa !37
  %179 = load i32, ptr %mask, align 4, !tbaa !9
  %conv217 = zext i32 %179 to i64
  %180 = load i32, ptr %shift, align 4, !tbaa !9
  %sh_prom218 = zext i32 %180 to i64
  %shl219 = shl i64 %conv217, %sh_prom218
  %sub220 = sub i64 %178, %shl219
  store i64 %sub220, ptr %remBits, align 8, !tbaa !37
  %181 = load i32, ptr %shift, align 4, !tbaa !9
  %182 = load ptr, ptr %seed, align 8, !tbaa !5
  %shift221 = getelementptr inbounds %struct.seed, ptr %182, i32 0, i32 6
  %183 = load ptr, ptr %shift221, align 8, !tbaa !23
  %184 = load i32, ptr %numParts, align 4, !tbaa !9
  %idxprom222 = sext i32 %184 to i64
  %arrayidx223 = getelementptr inbounds i32, ptr %183, i64 %idxprom222
  store i32 %181, ptr %arrayidx223, align 4, !tbaa !9
  %185 = load i32, ptr %mask, align 4, !tbaa !9
  %186 = load ptr, ptr %seed, align 8, !tbaa !5
  %mask224 = getelementptr inbounds %struct.seed, ptr %186, i32 0, i32 7
  %187 = load ptr, ptr %mask224, align 8, !tbaa !25
  %188 = load i32, ptr %numParts, align 4, !tbaa !9
  %idxprom225 = sext i32 %188 to i64
  %arrayidx226 = getelementptr inbounds i32, ptr %187, i64 %idxprom225
  store i32 %185, ptr %arrayidx226, align 4, !tbaa !9
  %189 = load i32, ptr %numParts, align 4, !tbaa !9
  %inc227 = add nsw i32 %189, 1
  store i32 %inc227, ptr %numParts, align 4, !tbaa !9
  br label %while.cond201, !llvm.loop !59

while.end228:                                     ; preds = %while.cond201
  %190 = load ptr, ptr %seed, align 8, !tbaa !5
  %transFlips = getelementptr inbounds %struct.seed, ptr %190, i32 0, i32 12
  %191 = load ptr, ptr %transFlips, align 8, !tbaa !27
  %cmp229 = icmp ne ptr %191, null
  br i1 %cmp229, label %if.then231, label %if.end244

if.then231:                                       ; preds = %while.end228
  call void @llvm.lifetime.start.p0(i64 8, ptr %rightBit) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #6
  %192 = load ptr, ptr %seed, align 8, !tbaa !5
  %transFlips232 = getelementptr inbounds %struct.seed, ptr %192, i32 0, i32 12
  %193 = load ptr, ptr %transFlips232, align 8, !tbaa !27
  store ptr %193, ptr %f, align 8, !tbaa !5
  br label %while.cond233

while.cond233:                                    ; preds = %while.body236, %if.then231
  %194 = load i64, ptr %flipBits, align 8, !tbaa !37
  %cmp234 = icmp ne i64 %194, 0
  br i1 %cmp234, label %while.body236, label %while.end243

while.body236:                                    ; preds = %while.cond233
  %195 = load i64, ptr %flipBits, align 8, !tbaa !37
  %196 = load i64, ptr %flipBits, align 8, !tbaa !37
  %197 = load i64, ptr %flipBits, align 8, !tbaa !37
  %sub237 = sub i64 %197, 1
  %and238 = and i64 %196, %sub237
  %sub239 = sub i64 %195, %and238
  store i64 %sub239, ptr %rightBit, align 8, !tbaa !37
  %198 = load i64, ptr %rightBit, align 8, !tbaa !37
  %199 = load i64, ptr %flipBits, align 8, !tbaa !37
  %sub240 = sub i64 %199, %198
  store i64 %sub240, ptr %flipBits, align 8, !tbaa !37
  %200 = load ptr, ptr %seed, align 8, !tbaa !5
  %201 = load i64, ptr %rightBit, align 8, !tbaa !37
  %call241 = call i32 @apply_seed(ptr noundef %200, i64 noundef %201)
  %202 = load ptr, ptr %f, align 8, !tbaa !5
  %incdec.ptr242 = getelementptr inbounds i32, ptr %202, i32 1
  store ptr %incdec.ptr242, ptr %f, align 8, !tbaa !5
  store i32 %call241, ptr %202, align 4, !tbaa !9
  br label %while.cond233, !llvm.loop !60

while.end243:                                     ; preds = %while.cond233
  %203 = load ptr, ptr %f, align 8, !tbaa !5
  store i32 0, ptr %203, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %rightBit) #6
  br label %if.end244

if.end244:                                        ; preds = %while.end243, %while.end228
  %204 = load ptr, ptr %seed, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %seed) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %numParts) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %remBits) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %covered) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %wBits) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %matchesToKeep) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %matches) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitsPer) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %shift) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %resolveBits) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %flipBits) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %seedBits) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %weight) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %isHalfweight) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %isStrict) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %type) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ss) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr %pattern) #6
  ret ptr %204
}

declare void @suicidef(ptr noundef, ...) #4

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #5

; Function Attrs: nounwind uwtable
define internal i32 @best_shift(i32 noundef %uncoveredBits, i64 noundef %seedBits) #0 {
entry:
  %uncoveredBits.addr = alloca i32, align 4
  %seedBits.addr = alloca i64, align 8
  %coverage = alloca i32, align 4
  %bestCoverage = alloca i32, align 4
  %shift = alloca i32, align 4
  %bestShift = alloca i32, align 4
  store i32 %uncoveredBits, ptr %uncoveredBits.addr, align 4, !tbaa !9
  store i64 %seedBits, ptr %seedBits.addr, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr %coverage) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %bestCoverage) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %shift) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %bestShift) #6
  store i32 -1, ptr %bestCoverage, align 4, !tbaa !9
  store i32 -1, ptr %bestShift, align 4, !tbaa !9
  store i32 0, ptr %shift, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %seedBits.addr, align 8, !tbaa !37
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %seedBits.addr, align 8, !tbaa !37
  %2 = load i32, ptr %uncoveredBits.addr, align 4, !tbaa !9
  %conv = zext i32 %2 to i64
  %and = and i64 %1, %conv
  %conv1 = trunc i64 %and to i32
  %call = call i32 @bit_count(i32 noundef %conv1)
  store i32 %call, ptr %coverage, align 4, !tbaa !9
  %3 = load i32, ptr %coverage, align 4, !tbaa !9
  %4 = load i32, ptr %bestCoverage, align 4, !tbaa !9
  %cmp2 = icmp sgt i32 %3, %4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %coverage, align 4, !tbaa !9
  store i32 %5, ptr %bestCoverage, align 4, !tbaa !9
  %6 = load i32, ptr %shift, align 4, !tbaa !9
  store i32 %6, ptr %bestShift, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i64, ptr %seedBits.addr, align 8, !tbaa !37
  %shr = lshr i64 %7, 1
  store i64 %shr, ptr %seedBits.addr, align 8, !tbaa !37
  %8 = load i32, ptr %shift, align 4, !tbaa !9
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %shift, align 4, !tbaa !9
  br label %for.cond, !llvm.loop !61

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %bestShift, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %bestShift) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %shift) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %bestCoverage) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %coverage) #6
  ret i32 %9
}

declare i32 @bit_count_64(i64 noundef) #4

declare i32 @bit_count(i32 noundef) #4

declare ptr @zalloc_or_die(ptr noundef, i64 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind willreturn memory(none) }

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
!11 = !{!12, !10, i64 16}
!12 = !{!"seed", !6, i64 0, !7, i64 8, !10, i64 12, !10, i64 16, !6, i64 24, !10, i64 32, !6, i64 40, !6, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !6, i64 72}
!13 = !{!12, !6, i64 0}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!12, !7, i64 8}
!18 = !{!12, !10, i64 12}
!19 = !{!12, !10, i64 56}
!20 = !{!12, !10, i64 60}
!21 = !{!12, !10, i64 64}
!22 = !{!12, !6, i64 24}
!23 = !{!12, !6, i64 40}
!24 = distinct !{!24, !16}
!25 = !{!12, !6, i64 48}
!26 = distinct !{!26, !16}
!27 = !{!12, !6, i64 72}
!28 = distinct !{!28, !16}
!29 = !{!12, !10, i64 32}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = !{!12, !10, i64 68}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !16}
!37 = !{!38, !38, i64 0}
!38 = !{!"long", !7, i64 0}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = distinct !{!49, !16}
!50 = distinct !{!50, !16}
!51 = distinct !{!51, !16}
!52 = distinct !{!52, !16}
!53 = distinct !{!53, !16}
!54 = distinct !{!54, !16}
!55 = !{!56, !56, i64 0}
!56 = !{!"short", !7, i64 0}
!57 = distinct !{!57, !16}
!58 = distinct !{!58, !16}
!59 = distinct !{!59, !16}
!60 = distinct !{!60, !16}
!61 = distinct !{!61, !16}
