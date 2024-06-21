; ModuleID = 'samples/352.bc'
source_filename = "htable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk_HTable_t = type { i32, i32, ptr }
%struct.gk_ikv_t = type { i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"HTable_Create: htable\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"HTable_Create: harray\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"HTable_Resize: harray\00", align 1
@HTable_GetNext.first = internal global i32 0, align 4
@HTable_GetNext.last = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"HTable_SearchAndDelete: Failed to find the key!\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @HTable_Create(i32 noundef %nelements) #0 {
entry:
  %nelements.addr = alloca i32, align 4
  %htable = alloca ptr, align 8
  store i32 %nelements, ptr %nelements.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %htable) #3
  %call = call ptr @gk_malloc(i64 noundef 16, ptr noundef @.str)
  store ptr %call, ptr %htable, align 8, !tbaa !9
  %0 = load i32, ptr %nelements.addr, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %call1 = call ptr @gk_ikvmalloc(i64 noundef %conv, ptr noundef @.str.1)
  %1 = load ptr, ptr %htable, align 8, !tbaa !9
  %harray = getelementptr inbounds %struct.gk_HTable_t, ptr %1, i32 0, i32 2
  store ptr %call1, ptr %harray, align 8, !tbaa !11
  %2 = load i32, ptr %nelements.addr, align 4, !tbaa !5
  %3 = load ptr, ptr %htable, align 8, !tbaa !9
  %nelements2 = getelementptr inbounds %struct.gk_HTable_t, ptr %3, i32 0, i32 0
  store i32 %2, ptr %nelements2, align 8, !tbaa !13
  %4 = load ptr, ptr %htable, align 8, !tbaa !9
  call void @HTable_Reset(ptr noundef %4)
  %5 = load ptr, ptr %htable, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %htable) #3
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @gk_malloc(i64 noundef, ptr noundef) #2

declare ptr @gk_ikvmalloc(i64 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @HTable_Reset(ptr noundef %htable) #0 {
entry:
  %htable.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %htable, ptr %htable.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %nelements = getelementptr inbounds %struct.gk_HTable_t, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %nelements, align 8, !tbaa !13
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray = getelementptr inbounds %struct.gk_HTable_t, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %harray, align 8, !tbaa !11
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.gk_ikv_t, ptr %4, i64 %idxprom
  %key = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx, i32 0, i32 0
  store i32 -1, ptr %key, align 8, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %htsize = getelementptr inbounds %struct.gk_HTable_t, ptr %7, i32 0, i32 1
  store i32 0, ptr %htsize, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @HTable_Resize(ptr noundef %htable, i32 noundef %nelements) #0 {
entry:
  %htable.addr = alloca ptr, align 8
  %nelements.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %old_nelements = alloca i32, align 4
  %old_harray = alloca ptr, align 8
  store ptr %htable, ptr %htable.addr, align 8, !tbaa !9
  store i32 %nelements, ptr %nelements.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_nelements) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_harray) #3
  %0 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %nelements1 = getelementptr inbounds %struct.gk_HTable_t, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %nelements1, align 8, !tbaa !13
  store i32 %1, ptr %old_nelements, align 4, !tbaa !5
  %2 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray = getelementptr inbounds %struct.gk_HTable_t, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %harray, align 8, !tbaa !11
  store ptr %3, ptr %old_harray, align 8, !tbaa !9
  %4 = load i32, ptr %nelements.addr, align 4, !tbaa !5
  %5 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %nelements2 = getelementptr inbounds %struct.gk_HTable_t, ptr %5, i32 0, i32 0
  store i32 %4, ptr %nelements2, align 8, !tbaa !13
  %6 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %htsize = getelementptr inbounds %struct.gk_HTable_t, ptr %6, i32 0, i32 1
  store i32 0, ptr %htsize, align 4, !tbaa !19
  %7 = load i32, ptr %nelements.addr, align 4, !tbaa !5
  %conv = sext i32 %7 to i64
  %call = call ptr @gk_ikvmalloc(i64 noundef %conv, ptr noundef @.str.2)
  %8 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray3 = getelementptr inbounds %struct.gk_HTable_t, ptr %8, i32 0, i32 2
  store ptr %call, ptr %harray3, align 8, !tbaa !11
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %10 = load i32, ptr %nelements.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray5 = getelementptr inbounds %struct.gk_HTable_t, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %harray5, align 8, !tbaa !11
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds %struct.gk_ikv_t, ptr %12, i64 %idxprom
  %key = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx, i32 0, i32 0
  store i32 -1, ptr %key, align 8, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc21, %for.end
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %16 = load i32, ptr %old_nelements, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %15, %16
  br i1 %cmp7, label %for.body9, label %for.end23

for.body9:                                        ; preds = %for.cond6
  %17 = load ptr, ptr %old_harray, align 8, !tbaa !9
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds %struct.gk_ikv_t, ptr %17, i64 %idxprom10
  %key12 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx11, i32 0, i32 0
  %19 = load i32, ptr %key12, align 8, !tbaa !14
  %cmp13 = icmp ne i32 %19, -1
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body9
  %20 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %21 = load ptr, ptr %old_harray, align 8, !tbaa !9
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds %struct.gk_ikv_t, ptr %21, i64 %idxprom15
  %key17 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx16, i32 0, i32 0
  %23 = load i32, ptr %key17, align 8, !tbaa !14
  %24 = load ptr, ptr %old_harray, align 8, !tbaa !9
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds %struct.gk_ikv_t, ptr %24, i64 %idxprom18
  %val = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx19, i32 0, i32 1
  %26 = load i64, ptr %val, align 8, !tbaa !21
  %conv20 = trunc i64 %26 to i32
  call void @HTable_Insert(ptr noundef %20, i32 noundef %23, i32 noundef %conv20)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body9
  br label %for.inc21

for.inc21:                                        ; preds = %if.end
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %inc22 = add nsw i32 %27, 1
  store i32 %inc22, ptr %i, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !22

for.end23:                                        ; preds = %for.cond6
  call void (ptr, ...) @gk_free(ptr noundef %old_harray, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_harray) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_nelements) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @HTable_Insert(ptr noundef %htable, i32 noundef %key, i32 noundef %val) #0 {
entry:
  %htable.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %first = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %htable, ptr %htable.addr, align 8, !tbaa !9
  store i32 %key, ptr %key.addr, align 4, !tbaa !5
  store i32 %val, ptr %val.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %first) #3
  %0 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %htsize = getelementptr inbounds %struct.gk_HTable_t, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %htsize, align 4, !tbaa !19
  %2 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %nelements = getelementptr inbounds %struct.gk_HTable_t, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %nelements, align 8, !tbaa !13
  %div = sdiv i32 %3, 2
  %cmp = icmp sgt i32 %1, %div
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %nelements1 = getelementptr inbounds %struct.gk_HTable_t, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nelements1, align 8, !tbaa !13
  %mul = mul nsw i32 2, %6
  call void @HTable_Resize(ptr noundef %4, i32 noundef %mul)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %nelements2 = getelementptr inbounds %struct.gk_HTable_t, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %nelements2, align 8, !tbaa !13
  %9 = load i32, ptr %key.addr, align 4, !tbaa !5
  %call = call i32 @HTable_HFunction(i32 noundef %8, i32 noundef %9)
  store i32 %call, ptr %first, align 4, !tbaa !5
  %10 = load i32, ptr %first, align 4, !tbaa !5
  store i32 %10, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %12 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %nelements3 = getelementptr inbounds %struct.gk_HTable_t, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %nelements3, align 8, !tbaa !13
  %cmp4 = icmp slt i32 %11, %13
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray = getelementptr inbounds %struct.gk_HTable_t, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %harray, align 8, !tbaa !11
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds %struct.gk_ikv_t, ptr %15, i64 %idxprom
  %key5 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx, i32 0, i32 0
  %17 = load i32, ptr %key5, align 8, !tbaa !14
  %cmp6 = icmp eq i32 %17, -1
  br i1 %cmp6, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %18 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray7 = getelementptr inbounds %struct.gk_HTable_t, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %harray7, align 8, !tbaa !11
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %20 to i64
  %arrayidx9 = getelementptr inbounds %struct.gk_ikv_t, ptr %19, i64 %idxprom8
  %key10 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx9, i32 0, i32 0
  %21 = load i32, ptr %key10, align 8, !tbaa !14
  %cmp11 = icmp eq i32 %21, -2
  br i1 %cmp11, label %if.then12, label %if.end22

if.then12:                                        ; preds = %lor.lhs.false, %for.body
  %22 = load i32, ptr %key.addr, align 4, !tbaa !5
  %23 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray13 = getelementptr inbounds %struct.gk_HTable_t, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %harray13, align 8, !tbaa !11
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %25 to i64
  %arrayidx15 = getelementptr inbounds %struct.gk_ikv_t, ptr %24, i64 %idxprom14
  %key16 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx15, i32 0, i32 0
  store i32 %22, ptr %key16, align 8, !tbaa !14
  %26 = load i32, ptr %val.addr, align 4, !tbaa !5
  %conv = sext i32 %26 to i64
  %27 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray17 = getelementptr inbounds %struct.gk_HTable_t, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %harray17, align 8, !tbaa !11
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %29 to i64
  %arrayidx19 = getelementptr inbounds %struct.gk_ikv_t, ptr %28, i64 %idxprom18
  %val20 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx19, i32 0, i32 1
  store i64 %conv, ptr %val20, align 8, !tbaa !21
  %30 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %htsize21 = getelementptr inbounds %struct.gk_HTable_t, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %htsize21, align 4, !tbaa !19
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %htsize21, align 4, !tbaa !19
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %inc23 = add nsw i32 %32, 1
  store i32 %inc23, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc54, %for.end
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %34 = load i32, ptr %first, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %33, %34
  br i1 %cmp25, label %for.body27, label %for.end56

for.body27:                                       ; preds = %for.cond24
  %35 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray28 = getelementptr inbounds %struct.gk_HTable_t, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %harray28, align 8, !tbaa !11
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %37 to i64
  %arrayidx30 = getelementptr inbounds %struct.gk_ikv_t, ptr %36, i64 %idxprom29
  %key31 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx30, i32 0, i32 0
  %38 = load i32, ptr %key31, align 8, !tbaa !14
  %cmp32 = icmp eq i32 %38, -1
  br i1 %cmp32, label %if.then41, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %for.body27
  %39 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray35 = getelementptr inbounds %struct.gk_HTable_t, ptr %39, i32 0, i32 2
  %40 = load ptr, ptr %harray35, align 8, !tbaa !11
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %41 to i64
  %arrayidx37 = getelementptr inbounds %struct.gk_ikv_t, ptr %40, i64 %idxprom36
  %key38 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx37, i32 0, i32 0
  %42 = load i32, ptr %key38, align 8, !tbaa !14
  %cmp39 = icmp eq i32 %42, -2
  br i1 %cmp39, label %if.then41, label %if.end53

if.then41:                                        ; preds = %lor.lhs.false34, %for.body27
  %43 = load i32, ptr %key.addr, align 4, !tbaa !5
  %44 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray42 = getelementptr inbounds %struct.gk_HTable_t, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %harray42, align 8, !tbaa !11
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %46 to i64
  %arrayidx44 = getelementptr inbounds %struct.gk_ikv_t, ptr %45, i64 %idxprom43
  %key45 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx44, i32 0, i32 0
  store i32 %43, ptr %key45, align 8, !tbaa !14
  %47 = load i32, ptr %val.addr, align 4, !tbaa !5
  %conv46 = sext i32 %47 to i64
  %48 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray47 = getelementptr inbounds %struct.gk_HTable_t, ptr %48, i32 0, i32 2
  %49 = load ptr, ptr %harray47, align 8, !tbaa !11
  %50 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom48 = sext i32 %50 to i64
  %arrayidx49 = getelementptr inbounds %struct.gk_ikv_t, ptr %49, i64 %idxprom48
  %val50 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx49, i32 0, i32 1
  store i64 %conv46, ptr %val50, align 8, !tbaa !21
  %51 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %htsize51 = getelementptr inbounds %struct.gk_HTable_t, ptr %51, i32 0, i32 1
  %52 = load i32, ptr %htsize51, align 4, !tbaa !19
  %inc52 = add nsw i32 %52, 1
  store i32 %inc52, ptr %htsize51, align 4, !tbaa !19
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end53:                                         ; preds = %lor.lhs.false34
  br label %for.inc54

for.inc54:                                        ; preds = %if.end53
  %53 = load i32, ptr %i, align 4, !tbaa !5
  %inc55 = add nsw i32 %53, 1
  store i32 %inc55, ptr %i, align 4, !tbaa !5
  br label %for.cond24, !llvm.loop !24

for.end56:                                        ; preds = %for.cond24
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end56, %if.then41, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr %first) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
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

declare void @gk_free(ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @HTable_HFunction(i32 noundef %nelements, i32 noundef %key) #0 {
entry:
  %nelements.addr = alloca i32, align 4
  %key.addr = alloca i32, align 4
  store i32 %nelements, ptr %nelements.addr, align 4, !tbaa !5
  store i32 %key, ptr %key.addr, align 4, !tbaa !5
  %0 = load i32, ptr %key.addr, align 4, !tbaa !5
  %1 = load i32, ptr %nelements.addr, align 4, !tbaa !5
  %rem = srem i32 %0, %1
  ret i32 %rem
}

; Function Attrs: nounwind uwtable
define dso_local void @HTable_Delete(ptr noundef %htable, i32 noundef %key) #0 {
entry:
  %htable.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %first = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %htable, ptr %htable.addr, align 8, !tbaa !9
  store i32 %key, ptr %key.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %first) #3
  %0 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %nelements = getelementptr inbounds %struct.gk_HTable_t, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %nelements, align 8, !tbaa !13
  %2 = load i32, ptr %key.addr, align 4, !tbaa !5
  %call = call i32 @HTable_HFunction(i32 noundef %1, i32 noundef %2)
  store i32 %call, ptr %first, align 4, !tbaa !5
  %3 = load i32, ptr %first, align 4, !tbaa !5
  store i32 %3, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %nelements1 = getelementptr inbounds %struct.gk_HTable_t, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nelements1, align 8, !tbaa !13
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray = getelementptr inbounds %struct.gk_HTable_t, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %harray, align 8, !tbaa !11
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct.gk_ikv_t, ptr %8, i64 %idxprom
  %key2 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx, i32 0, i32 0
  %10 = load i32, ptr %key2, align 8, !tbaa !14
  %11 = load i32, ptr %key.addr, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %10, %11
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray4 = getelementptr inbounds %struct.gk_HTable_t, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %harray4, align 8, !tbaa !11
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds %struct.gk_ikv_t, ptr %13, i64 %idxprom5
  %key7 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx6, i32 0, i32 0
  store i32 -2, ptr %key7, align 8, !tbaa !14
  %15 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %htsize = getelementptr inbounds %struct.gk_HTable_t, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %htsize, align 4, !tbaa !19
  %dec = add nsw i32 %16, -1
  store i32 %dec, ptr %htsize, align 4, !tbaa !19
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc24, %for.end
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %19 = load i32, ptr %first, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %18, %19
  br i1 %cmp9, label %for.body10, label %for.end26

for.body10:                                       ; preds = %for.cond8
  %20 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray11 = getelementptr inbounds %struct.gk_HTable_t, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %harray11, align 8, !tbaa !11
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %22 to i64
  %arrayidx13 = getelementptr inbounds %struct.gk_ikv_t, ptr %21, i64 %idxprom12
  %key14 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx13, i32 0, i32 0
  %23 = load i32, ptr %key14, align 8, !tbaa !14
  %24 = load i32, ptr %key.addr, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %23, %24
  br i1 %cmp15, label %if.then16, label %if.end23

if.then16:                                        ; preds = %for.body10
  %25 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray17 = getelementptr inbounds %struct.gk_HTable_t, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %harray17, align 8, !tbaa !11
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %27 to i64
  %arrayidx19 = getelementptr inbounds %struct.gk_ikv_t, ptr %26, i64 %idxprom18
  %key20 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx19, i32 0, i32 0
  store i32 -2, ptr %key20, align 8, !tbaa !14
  %28 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %htsize21 = getelementptr inbounds %struct.gk_HTable_t, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %htsize21, align 4, !tbaa !19
  %dec22 = add nsw i32 %29, -1
  store i32 %dec22, ptr %htsize21, align 4, !tbaa !19
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %for.body10
  br label %for.inc24

for.inc24:                                        ; preds = %if.end23
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %inc25 = add nsw i32 %30, 1
  store i32 %inc25, ptr %i, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !26

for.end26:                                        ; preds = %for.cond8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end26, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %first) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
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

; Function Attrs: nounwind uwtable
define dso_local i32 @HTable_Search(ptr noundef %htable, i32 noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %htable.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %first = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %htable, ptr %htable.addr, align 8, !tbaa !9
  store i32 %key, ptr %key.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %first) #3
  %0 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %nelements = getelementptr inbounds %struct.gk_HTable_t, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %nelements, align 8, !tbaa !13
  %2 = load i32, ptr %key.addr, align 4, !tbaa !5
  %call = call i32 @HTable_HFunction(i32 noundef %1, i32 noundef %2)
  store i32 %call, ptr %first, align 4, !tbaa !5
  %3 = load i32, ptr %first, align 4, !tbaa !5
  store i32 %3, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %nelements1 = getelementptr inbounds %struct.gk_HTable_t, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nelements1, align 8, !tbaa !13
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray = getelementptr inbounds %struct.gk_HTable_t, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %harray, align 8, !tbaa !11
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct.gk_ikv_t, ptr %8, i64 %idxprom
  %key2 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx, i32 0, i32 0
  %10 = load i32, ptr %key2, align 8, !tbaa !14
  %11 = load i32, ptr %key.addr, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %10, %11
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %12 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray4 = getelementptr inbounds %struct.gk_HTable_t, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %harray4, align 8, !tbaa !11
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds %struct.gk_ikv_t, ptr %13, i64 %idxprom5
  %val = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx6, i32 0, i32 1
  %15 = load i64, ptr %val, align 8, !tbaa !21
  %conv = trunc i64 %15 to i32
  store i32 %conv, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %for.body
  %16 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray7 = getelementptr inbounds %struct.gk_HTable_t, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %harray7, align 8, !tbaa !11
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %18 to i64
  %arrayidx9 = getelementptr inbounds %struct.gk_ikv_t, ptr %17, i64 %idxprom8
  %key10 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx9, i32 0, i32 0
  %19 = load i32, ptr %key10, align 8, !tbaa !14
  %cmp11 = icmp eq i32 %19, -1
  br i1 %cmp11, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc41, %for.end
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %22 = load i32, ptr %first, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %21, %22
  br i1 %cmp16, label %for.body18, label %for.end43

for.body18:                                       ; preds = %for.cond15
  %23 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray19 = getelementptr inbounds %struct.gk_HTable_t, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %harray19, align 8, !tbaa !11
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %25 to i64
  %arrayidx21 = getelementptr inbounds %struct.gk_ikv_t, ptr %24, i64 %idxprom20
  %key22 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx21, i32 0, i32 0
  %26 = load i32, ptr %key22, align 8, !tbaa !14
  %27 = load i32, ptr %key.addr, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %26, %27
  br i1 %cmp23, label %if.then25, label %if.else31

if.then25:                                        ; preds = %for.body18
  %28 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray26 = getelementptr inbounds %struct.gk_HTable_t, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %harray26, align 8, !tbaa !11
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %30 to i64
  %arrayidx28 = getelementptr inbounds %struct.gk_ikv_t, ptr %29, i64 %idxprom27
  %val29 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx28, i32 0, i32 1
  %31 = load i64, ptr %val29, align 8, !tbaa !21
  %conv30 = trunc i64 %31 to i32
  store i32 %conv30, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else31:                                        ; preds = %for.body18
  %32 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray32 = getelementptr inbounds %struct.gk_HTable_t, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %harray32, align 8, !tbaa !11
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %34 to i64
  %arrayidx34 = getelementptr inbounds %struct.gk_ikv_t, ptr %33, i64 %idxprom33
  %key35 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx34, i32 0, i32 0
  %35 = load i32, ptr %key35, align 8, !tbaa !14
  %cmp36 = icmp eq i32 %35, -1
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.else31
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end39:                                         ; preds = %if.else31
  br label %if.end40

if.end40:                                         ; preds = %if.end39
  br label %for.inc41

for.inc41:                                        ; preds = %if.end40
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %inc42 = add nsw i32 %36, 1
  store i32 %inc42, ptr %i, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !28

for.end43:                                        ; preds = %for.cond15
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end43, %if.then38, %if.then25, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %first) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define dso_local i32 @HTable_GetNext(ptr noundef %htable, i32 noundef %key, ptr noundef %r_val, i32 noundef %type) #0 {
entry:
  %retval = alloca i32, align 4
  %htable.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  %r_val.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %htable, ptr %htable.addr, align 8, !tbaa !9
  store i32 %key, ptr %key.addr, align 4, !tbaa !5
  store ptr %r_val, ptr %r_val.addr, align 8, !tbaa !9
  store i32 %type, ptr %type.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  %0 = load i32, ptr %type.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %nelements = getelementptr inbounds %struct.gk_HTable_t, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %nelements, align 8, !tbaa !13
  %3 = load i32, ptr %key.addr, align 4, !tbaa !5
  %call = call i32 @HTable_HFunction(i32 noundef %2, i32 noundef %3)
  store i32 %call, ptr @HTable_GetNext.last, align 4, !tbaa !5
  store i32 %call, ptr @HTable_GetNext.first, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr @HTable_GetNext.first, align 4, !tbaa !5
  %5 = load i32, ptr @HTable_GetNext.last, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %4, %5
  br i1 %cmp1, label %if.then2, label %if.end20

if.then2:                                         ; preds = %if.end
  %6 = load i32, ptr @HTable_GetNext.first, align 4, !tbaa !5
  store i32 %6, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then2
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %8 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %nelements3 = getelementptr inbounds %struct.gk_HTable_t, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %nelements3, align 8, !tbaa !13
  %cmp4 = icmp slt i32 %7, %9
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray = getelementptr inbounds %struct.gk_HTable_t, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %harray, align 8, !tbaa !11
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds %struct.gk_ikv_t, ptr %11, i64 %idxprom
  %key5 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx, i32 0, i32 0
  %13 = load i32, ptr %key5, align 8, !tbaa !14
  %14 = load i32, ptr %key.addr, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %13, %14
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %for.body
  %15 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray8 = getelementptr inbounds %struct.gk_HTable_t, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %harray8, align 8, !tbaa !11
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds %struct.gk_ikv_t, ptr %16, i64 %idxprom9
  %val = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx10, i32 0, i32 1
  %18 = load i64, ptr %val, align 8, !tbaa !21
  %conv = trunc i64 %18 to i32
  %19 = load ptr, ptr %r_val.addr, align 8, !tbaa !9
  store i32 %conv, ptr %19, align 4, !tbaa !5
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %20, 1
  store i32 %add, ptr @HTable_GetNext.first, align 4, !tbaa !5
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %for.body
  %21 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray11 = getelementptr inbounds %struct.gk_HTable_t, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %harray11, align 8, !tbaa !11
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds %struct.gk_ikv_t, ptr %22, i64 %idxprom12
  %key14 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx13, i32 0, i32 0
  %24 = load i32, ptr %key14, align 8, !tbaa !14
  %cmp15 = icmp eq i32 %24, -1
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  store i32 0, ptr @HTable_GetNext.first, align 4, !tbaa !5
  br label %if.end20

if.end20:                                         ; preds = %for.end, %if.end
  %26 = load i32, ptr @HTable_GetNext.first, align 4, !tbaa !5
  store i32 %26, ptr %i, align 4, !tbaa !5
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc48, %if.end20
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %28 = load i32, ptr @HTable_GetNext.last, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %27, %28
  br i1 %cmp22, label %for.body24, label %for.end50

for.body24:                                       ; preds = %for.cond21
  %29 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray25 = getelementptr inbounds %struct.gk_HTable_t, ptr %29, i32 0, i32 2
  %30 = load ptr, ptr %harray25, align 8, !tbaa !11
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %31 to i64
  %arrayidx27 = getelementptr inbounds %struct.gk_ikv_t, ptr %30, i64 %idxprom26
  %key28 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx27, i32 0, i32 0
  %32 = load i32, ptr %key28, align 8, !tbaa !14
  %33 = load i32, ptr %key.addr, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %32, %33
  br i1 %cmp29, label %if.then31, label %if.else38

if.then31:                                        ; preds = %for.body24
  %34 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray32 = getelementptr inbounds %struct.gk_HTable_t, ptr %34, i32 0, i32 2
  %35 = load ptr, ptr %harray32, align 8, !tbaa !11
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %36 to i64
  %arrayidx34 = getelementptr inbounds %struct.gk_ikv_t, ptr %35, i64 %idxprom33
  %val35 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx34, i32 0, i32 1
  %37 = load i64, ptr %val35, align 8, !tbaa !21
  %conv36 = trunc i64 %37 to i32
  %38 = load ptr, ptr %r_val.addr, align 8, !tbaa !9
  store i32 %conv36, ptr %38, align 4, !tbaa !5
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %add37 = add nsw i32 %39, 1
  store i32 %add37, ptr @HTable_GetNext.first, align 4, !tbaa !5
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else38:                                        ; preds = %for.body24
  %40 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray39 = getelementptr inbounds %struct.gk_HTable_t, ptr %40, i32 0, i32 2
  %41 = load ptr, ptr %harray39, align 8, !tbaa !11
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %42 to i64
  %arrayidx41 = getelementptr inbounds %struct.gk_ikv_t, ptr %41, i64 %idxprom40
  %key42 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx41, i32 0, i32 0
  %43 = load i32, ptr %key42, align 8, !tbaa !14
  %cmp43 = icmp eq i32 %43, -1
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.else38
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end46:                                         ; preds = %if.else38
  br label %if.end47

if.end47:                                         ; preds = %if.end46
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %inc49 = add nsw i32 %44, 1
  store i32 %inc49, ptr %i, align 4, !tbaa !5
  br label %for.cond21, !llvm.loop !30

for.end50:                                        ; preds = %for.cond21
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end50, %if.then45, %if.then31, %if.then17, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define dso_local i32 @HTable_SearchAndDelete(ptr noundef %htable, i32 noundef %key) #0 {
entry:
  %retval = alloca i32, align 4
  %htable.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %first = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %htable, ptr %htable.addr, align 8, !tbaa !9
  store i32 %key, ptr %key.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %first) #3
  %0 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %nelements = getelementptr inbounds %struct.gk_HTable_t, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %nelements, align 8, !tbaa !13
  %2 = load i32, ptr %key.addr, align 4, !tbaa !5
  %call = call i32 @HTable_HFunction(i32 noundef %1, i32 noundef %2)
  store i32 %call, ptr %first, align 4, !tbaa !5
  %3 = load i32, ptr %first, align 4, !tbaa !5
  store i32 %3, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %nelements1 = getelementptr inbounds %struct.gk_HTable_t, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nelements1, align 8, !tbaa !13
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray = getelementptr inbounds %struct.gk_HTable_t, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %harray, align 8, !tbaa !11
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct.gk_ikv_t, ptr %8, i64 %idxprom
  %key2 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx, i32 0, i32 0
  %10 = load i32, ptr %key2, align 8, !tbaa !14
  %11 = load i32, ptr %key.addr, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %10, %11
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %12 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray4 = getelementptr inbounds %struct.gk_HTable_t, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %harray4, align 8, !tbaa !11
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds %struct.gk_ikv_t, ptr %13, i64 %idxprom5
  %key7 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx6, i32 0, i32 0
  store i32 -2, ptr %key7, align 8, !tbaa !14
  %15 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %htsize = getelementptr inbounds %struct.gk_HTable_t, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %htsize, align 4, !tbaa !19
  %dec = add nsw i32 %16, -1
  store i32 %dec, ptr %htsize, align 4, !tbaa !19
  %17 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray8 = getelementptr inbounds %struct.gk_HTable_t, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %harray8, align 8, !tbaa !11
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %19 to i64
  %arrayidx10 = getelementptr inbounds %struct.gk_ikv_t, ptr %18, i64 %idxprom9
  %val = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx10, i32 0, i32 1
  %20 = load i64, ptr %val, align 8, !tbaa !21
  %conv = trunc i64 %20 to i32
  store i32 %conv, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %for.body
  %21 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray11 = getelementptr inbounds %struct.gk_HTable_t, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %harray11, align 8, !tbaa !11
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds %struct.gk_ikv_t, ptr %22, i64 %idxprom12
  %key14 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx13, i32 0, i32 0
  %24 = load i32, ptr %key14, align 8, !tbaa !14
  %cmp15 = icmp eq i32 %24, -1
  br i1 %cmp15, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.else
  call void (i32, ptr, ...) @gk_errexit(i32 noundef 15, ptr noundef @.str.3)
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc51, %for.end
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %27 = load i32, ptr %first, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %26, %27
  br i1 %cmp20, label %for.body22, label %for.end53

for.body22:                                       ; preds = %for.cond19
  %28 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray23 = getelementptr inbounds %struct.gk_HTable_t, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %harray23, align 8, !tbaa !11
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom24 = sext i32 %30 to i64
  %arrayidx25 = getelementptr inbounds %struct.gk_ikv_t, ptr %29, i64 %idxprom24
  %key26 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx25, i32 0, i32 0
  %31 = load i32, ptr %key26, align 8, !tbaa !14
  %32 = load i32, ptr %key.addr, align 4, !tbaa !5
  %cmp27 = icmp eq i32 %31, %32
  br i1 %cmp27, label %if.then29, label %if.else41

if.then29:                                        ; preds = %for.body22
  %33 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray30 = getelementptr inbounds %struct.gk_HTable_t, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %harray30, align 8, !tbaa !11
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %35 to i64
  %arrayidx32 = getelementptr inbounds %struct.gk_ikv_t, ptr %34, i64 %idxprom31
  %key33 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx32, i32 0, i32 0
  store i32 -2, ptr %key33, align 8, !tbaa !14
  %36 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %htsize34 = getelementptr inbounds %struct.gk_HTable_t, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %htsize34, align 4, !tbaa !19
  %dec35 = add nsw i32 %37, -1
  store i32 %dec35, ptr %htsize34, align 4, !tbaa !19
  %38 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray36 = getelementptr inbounds %struct.gk_HTable_t, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %harray36, align 8, !tbaa !11
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %40 to i64
  %arrayidx38 = getelementptr inbounds %struct.gk_ikv_t, ptr %39, i64 %idxprom37
  %val39 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx38, i32 0, i32 1
  %41 = load i64, ptr %val39, align 8, !tbaa !21
  %conv40 = trunc i64 %41 to i32
  store i32 %conv40, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else41:                                        ; preds = %for.body22
  %42 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray42 = getelementptr inbounds %struct.gk_HTable_t, ptr %42, i32 0, i32 2
  %43 = load ptr, ptr %harray42, align 8, !tbaa !11
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %44 to i64
  %arrayidx44 = getelementptr inbounds %struct.gk_ikv_t, ptr %43, i64 %idxprom43
  %key45 = getelementptr inbounds %struct.gk_ikv_t, ptr %arrayidx44, i32 0, i32 0
  %45 = load i32, ptr %key45, align 8, !tbaa !14
  %cmp46 = icmp eq i32 %45, -1
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.else41
  call void (i32, ptr, ...) @gk_errexit(i32 noundef 15, ptr noundef @.str.3)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.else41
  br label %if.end50

if.end50:                                         ; preds = %if.end49
  br label %for.inc51

for.inc51:                                        ; preds = %if.end50
  %46 = load i32, ptr %i, align 4, !tbaa !5
  %inc52 = add nsw i32 %46, 1
  store i32 %inc52, ptr %i, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !32

for.end53:                                        ; preds = %for.cond19
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end53, %if.then29, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %first) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
}

declare void @gk_errexit(i32 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define dso_local void @HTable_Destroy(ptr noundef %htable) #0 {
entry:
  %htable.addr = alloca ptr, align 8
  store ptr %htable, ptr %htable.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %htable.addr, align 8, !tbaa !9
  %harray = getelementptr inbounds %struct.gk_HTable_t, ptr %0, i32 0, i32 2
  call void (ptr, ...) @gk_free(ptr noundef %harray, ptr noundef %htable.addr, ptr noundef null)
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!12 = !{!"gk_HTable_t", !6, i64 0, !6, i64 4, !10, i64 8}
!13 = !{!12, !6, i64 0}
!14 = !{!15, !6, i64 0}
!15 = !{!"", !6, i64 0, !16, i64 8}
!16 = !{!"long", !7, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!12, !6, i64 4}
!20 = distinct !{!20, !18}
!21 = !{!15, !16, i64 8}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !18}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
