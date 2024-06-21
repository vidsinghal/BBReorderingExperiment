; ModuleID = 'samples/145.bc'
source_filename = ".././../src/repair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.List_T = type { ptr, ptr }
%struct.Repair_T = type { i32, i32, i32, i32, i32, ptr }
%struct.Path_T = type { float, i32, i32, i32, i32, double, double, i32, i32, ptr, i8, i32, i32, i32, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, double, double, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i64, i64, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, double, ptr, ptr, ptr, ptr, i32 }
%struct.Intlist_T = type { i32, ptr }
%struct.Uint8list_T = type { i64, ptr }

@.str = private unnamed_addr constant [21 x i8] c".././../src/repair.c\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c".././../src/list.h\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_push_keep(ptr noundef %list, ptr noundef %x) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #4
  %call = call ptr @Mem_alloc(i64 noundef 16, ptr noundef @.str.1, i32 noundef 66)
  store ptr %call, ptr %new, align 8, !tbaa !5
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %new, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.List_T, ptr %1, i32 0, i32 0
  store ptr %0, ptr %first, align 8, !tbaa !9
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %new, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.List_T, ptr %3, i32 0, i32 1
  store ptr %2, ptr %rest, align 8, !tbaa !11
  %4 = load ptr, ptr %new, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #4
  ret ptr %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_push_out(ptr noundef %list, ptr noundef %x) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #4
  %call = call ptr @Mem_alloc(i64 noundef 16, ptr noundef @.str.1, i32 noundef 75)
  store ptr %call, ptr %new, align 8, !tbaa !5
  %0 = load ptr, ptr %x.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %new, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.List_T, ptr %1, i32 0, i32 0
  store ptr %0, ptr %first, align 8, !tbaa !9
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %new, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.List_T, ptr %3, i32 0, i32 1
  store ptr %2, ptr %rest, align 8, !tbaa !11
  %4 = load ptr, ptr %new, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #4
  ret ptr %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_pop_keep(ptr noundef %list, ptr noundef %x) #0 {
entry:
  %retval = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #4
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.List_T, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %rest, align 8, !tbaa !11
  store ptr %2, ptr %head, align 8, !tbaa !5
  %3 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.List_T, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %first, align 8, !tbaa !9
  %5 = load ptr, ptr %x.addr, align 8, !tbaa !5
  store ptr %4, ptr %5, align 8, !tbaa !5
  %6 = load ptr, ptr %list.addr, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %6, ptr noundef @.str.1, i32 noundef 137)
  store ptr null, ptr %list.addr, align 8, !tbaa !5
  %7 = load ptr, ptr %head, align 8, !tbaa !5
  store ptr %7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %list.addr, align 8, !tbaa !5
  store ptr %8, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #4
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local void @Repair_free(ptr noundef %old) #1 {
entry:
  %old.addr = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %1, ptr noundef @.str, i32 noundef 32)
  %2 = load ptr, ptr %old.addr, align 8, !tbaa !5
  store ptr null, ptr %2, align 8, !tbaa !5
  ret void
}

declare void @Mem_free(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Repair_new(i32 noundef %transcript_genestrand, i32 noundef %tstart_overhang, i32 noundef %tstart_splice_distance, i32 noundef %tend_overhang, i32 noundef %tend_splice_distance, ptr noundef %transcript, ptr noundef %listpool) #1 {
entry:
  %transcript_genestrand.addr = alloca i32, align 4
  %tstart_overhang.addr = alloca i32, align 4
  %tstart_splice_distance.addr = alloca i32, align 4
  %tend_overhang.addr = alloca i32, align 4
  %tend_splice_distance.addr = alloca i32, align 4
  %transcript.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  store i32 %transcript_genestrand, ptr %transcript_genestrand.addr, align 4, !tbaa !12
  store i32 %tstart_overhang, ptr %tstart_overhang.addr, align 4, !tbaa !12
  store i32 %tstart_splice_distance, ptr %tstart_splice_distance.addr, align 4, !tbaa !12
  store i32 %tend_overhang, ptr %tend_overhang.addr, align 4, !tbaa !12
  store i32 %tend_splice_distance, ptr %tend_splice_distance.addr, align 4, !tbaa !12
  store ptr %transcript, ptr %transcript.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #4
  %call = call ptr @Mem_alloc(i64 noundef 32, ptr noundef @.str, i32 noundef 42)
  store ptr %call, ptr %new, align 8, !tbaa !5
  %0 = load i32, ptr %transcript_genestrand.addr, align 4, !tbaa !12
  %1 = load ptr, ptr %new, align 8, !tbaa !5
  %transcript_genestrand1 = getelementptr inbounds %struct.Repair_T, ptr %1, i32 0, i32 0
  store i32 %0, ptr %transcript_genestrand1, align 8, !tbaa !14
  %2 = load i32, ptr %tstart_overhang.addr, align 4, !tbaa !12
  %3 = load ptr, ptr %new, align 8, !tbaa !5
  %tstart_overhang2 = getelementptr inbounds %struct.Repair_T, ptr %3, i32 0, i32 1
  store i32 %2, ptr %tstart_overhang2, align 4, !tbaa !16
  %4 = load i32, ptr %tstart_splice_distance.addr, align 4, !tbaa !12
  %5 = load ptr, ptr %new, align 8, !tbaa !5
  %tstart_splice_distance3 = getelementptr inbounds %struct.Repair_T, ptr %5, i32 0, i32 3
  store i32 %4, ptr %tstart_splice_distance3, align 4, !tbaa !17
  %6 = load i32, ptr %tend_overhang.addr, align 4, !tbaa !12
  %7 = load ptr, ptr %new, align 8, !tbaa !5
  %tend_overhang4 = getelementptr inbounds %struct.Repair_T, ptr %7, i32 0, i32 2
  store i32 %6, ptr %tend_overhang4, align 8, !tbaa !18
  %8 = load i32, ptr %tend_splice_distance.addr, align 4, !tbaa !12
  %9 = load ptr, ptr %new, align 8, !tbaa !5
  %tend_splice_distance5 = getelementptr inbounds %struct.Repair_T, ptr %9, i32 0, i32 4
  store i32 %8, ptr %tend_splice_distance5, align 8, !tbaa !19
  %10 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %11 = load ptr, ptr %transcript.addr, align 8, !tbaa !5
  %call6 = call ptr @Listpool_push(ptr noundef null, ptr noundef %10, ptr noundef %11)
  %12 = load ptr, ptr %new, align 8, !tbaa !5
  %transcripts = getelementptr inbounds %struct.Repair_T, ptr %12, i32 0, i32 5
  store ptr %call6, ptr %transcripts, align 8, !tbaa !20
  %13 = load ptr, ptr %new, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #4
  ret ptr %13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @Mem_alloc(i64 noundef, ptr noundef, i32 noundef) #2

declare ptr @Listpool_push(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @Repair_make_unique(ptr noundef %repairs, ptr noundef %listpool) #1 {
entry:
  %retval = alloca ptr, align 8
  %repairs.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %unique = alloca ptr, align 8
  %array = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %repairs, ptr %repairs.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %unique) #4
  store ptr null, ptr %unique, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  %0 = load ptr, ptr %repairs.addr, align 8, !tbaa !5
  %call = call i32 @List_length(ptr noundef %0)
  store i32 %call, ptr %n, align 4, !tbaa !12
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %repairs.addr, align 8, !tbaa !5
  %call1 = call ptr @List_to_array(ptr noundef %1, ptr noundef null)
  store ptr %call1, ptr %array, align 8, !tbaa !5
  %2 = load ptr, ptr %array, align 8, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !12
  %conv = sext i32 %3 to i64
  call void @qsort(ptr noundef %2, i64 noundef %conv, i64 noundef 8, ptr noundef @repair_cmp)
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.else
  %4 = load i32, ptr %i, align 4, !tbaa !12
  %5 = load i32, ptr %n, align 4, !tbaa !12
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %while.body, label %while.end27

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %unique, align 8, !tbaa !5
  %7 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %8 = load ptr, ptr %array, align 8, !tbaa !5
  %9 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %call4 = call ptr @Listpool_push(ptr noundef %6, ptr noundef %7, ptr noundef %10)
  store ptr %call4, ptr %unique, align 8, !tbaa !5
  %11 = load i32, ptr %i, align 4, !tbaa !12
  %add = add nsw i32 %11, 1
  store i32 %add, ptr %j, align 4, !tbaa !12
  br label %while.cond5

while.cond5:                                      ; preds = %while.body15, %while.body
  %12 = load i32, ptr %j, align 4, !tbaa !12
  %13 = load i32, ptr %n, align 4, !tbaa !12
  %cmp6 = icmp slt i32 %12, %13
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond5
  %14 = load ptr, ptr %array, align 8, !tbaa !5
  %15 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %14, i64 %idxprom8
  %16 = load ptr, ptr %array, align 8, !tbaa !5
  %17 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds ptr, ptr %16, i64 %idxprom10
  %call12 = call i32 @repair_cmp(ptr noundef %arrayidx9, ptr noundef %arrayidx11)
  %cmp13 = icmp eq i32 %call12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond5
  %18 = phi i1 [ false, %while.cond5 ], [ %cmp13, %land.rhs ]
  br i1 %18, label %while.body15, label %while.end

while.body15:                                     ; preds = %land.end
  %19 = load ptr, ptr %array, align 8, !tbaa !5
  %20 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %19, i64 %idxprom16
  %21 = load ptr, ptr %arrayidx17, align 8, !tbaa !5
  %transcripts = getelementptr inbounds %struct.Repair_T, ptr %21, i32 0, i32 5
  %22 = load ptr, ptr %transcripts, align 8, !tbaa !20
  %23 = load ptr, ptr %array, align 8, !tbaa !5
  %24 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %23, i64 %idxprom18
  %25 = load ptr, ptr %arrayidx19, align 8, !tbaa !5
  %transcripts20 = getelementptr inbounds %struct.Repair_T, ptr %25, i32 0, i32 5
  %26 = load ptr, ptr %transcripts20, align 8, !tbaa !20
  %call21 = call ptr @List_push_existing(ptr noundef %22, ptr noundef %26)
  %27 = load ptr, ptr %array, align 8, !tbaa !5
  %28 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom22 = sext i32 %28 to i64
  %arrayidx23 = getelementptr inbounds ptr, ptr %27, i64 %idxprom22
  %29 = load ptr, ptr %arrayidx23, align 8, !tbaa !5
  %transcripts24 = getelementptr inbounds %struct.Repair_T, ptr %29, i32 0, i32 5
  store ptr %call21, ptr %transcripts24, align 8, !tbaa !20
  %30 = load ptr, ptr %array, align 8, !tbaa !5
  %31 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom25 = sext i32 %31 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %30, i64 %idxprom25
  call void @Repair_free(ptr noundef %arrayidx26)
  %32 = load i32, ptr %j, align 4, !tbaa !12
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %j, align 4, !tbaa !12
  br label %while.cond5, !llvm.loop !21

while.end:                                        ; preds = %land.end
  %33 = load i32, ptr %j, align 4, !tbaa !12
  store i32 %33, ptr %i, align 4, !tbaa !12
  br label %while.cond, !llvm.loop !23

while.end27:                                      ; preds = %while.cond
  %34 = load ptr, ptr %array, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %34, ptr noundef @.str, i32 noundef 121)
  store ptr null, ptr %array, align 8, !tbaa !5
  %35 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  call void @Listpool_free_list(ptr noundef %repairs.addr, ptr noundef %35)
  %36 = load ptr, ptr %unique, align 8, !tbaa !5
  %call28 = call ptr @List_reverse(ptr noundef %36)
  store ptr %call28, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end27, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %unique) #4
  %37 = load ptr, ptr %retval, align 8
  ret ptr %37
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @List_length(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  store i32 0, ptr %n, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %n, align 4, !tbaa !12
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %n, align 4, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.List_T, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %rest, align 8, !tbaa !11
  store ptr %3, ptr %list.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %n, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  ret i32 %4
}

declare ptr @List_to_array(ptr noundef, ptr noundef) #2

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @repair_cmp(ptr noundef %a, ptr noundef %b) #1 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %x = alloca ptr, align 8
  %y = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !5
  store ptr %b, ptr %b.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %1, ptr %x, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #4
  %2 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  store ptr %3, ptr %y, align 8, !tbaa !5
  %4 = load ptr, ptr %x, align 8, !tbaa !5
  %transcript_genestrand = getelementptr inbounds %struct.Repair_T, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %transcript_genestrand, align 8, !tbaa !14
  %6 = load ptr, ptr %y, align 8, !tbaa !5
  %transcript_genestrand1 = getelementptr inbounds %struct.Repair_T, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %transcript_genestrand1, align 8, !tbaa !14
  %cmp = icmp sgt i32 %5, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %y, align 8, !tbaa !5
  %transcript_genestrand2 = getelementptr inbounds %struct.Repair_T, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %transcript_genestrand2, align 8, !tbaa !14
  %10 = load ptr, ptr %x, align 8, !tbaa !5
  %transcript_genestrand3 = getelementptr inbounds %struct.Repair_T, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %transcript_genestrand3, align 8, !tbaa !14
  %cmp4 = icmp sgt i32 %9, %11
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else6:                                         ; preds = %if.else
  %12 = load ptr, ptr %x, align 8, !tbaa !5
  %tstart_overhang = getelementptr inbounds %struct.Repair_T, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %tstart_overhang, align 4, !tbaa !16
  %14 = load ptr, ptr %y, align 8, !tbaa !5
  %tstart_overhang7 = getelementptr inbounds %struct.Repair_T, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %tstart_overhang7, align 4, !tbaa !16
  %cmp8 = icmp slt i32 %13, %15
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else6
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else10:                                        ; preds = %if.else6
  %16 = load ptr, ptr %y, align 8, !tbaa !5
  %tstart_overhang11 = getelementptr inbounds %struct.Repair_T, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %tstart_overhang11, align 4, !tbaa !16
  %18 = load ptr, ptr %x, align 8, !tbaa !5
  %tstart_overhang12 = getelementptr inbounds %struct.Repair_T, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %tstart_overhang12, align 4, !tbaa !16
  %cmp13 = icmp slt i32 %17, %19
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else10
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else15:                                        ; preds = %if.else10
  %20 = load ptr, ptr %x, align 8, !tbaa !5
  %tstart_splice_distance = getelementptr inbounds %struct.Repair_T, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %tstart_splice_distance, align 4, !tbaa !17
  %22 = load ptr, ptr %y, align 8, !tbaa !5
  %tstart_splice_distance16 = getelementptr inbounds %struct.Repair_T, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %tstart_splice_distance16, align 4, !tbaa !17
  %cmp17 = icmp ult i32 %21, %23
  br i1 %cmp17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else15
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else19:                                        ; preds = %if.else15
  %24 = load ptr, ptr %y, align 8, !tbaa !5
  %tstart_splice_distance20 = getelementptr inbounds %struct.Repair_T, ptr %24, i32 0, i32 3
  %25 = load i32, ptr %tstart_splice_distance20, align 4, !tbaa !17
  %26 = load ptr, ptr %x, align 8, !tbaa !5
  %tstart_splice_distance21 = getelementptr inbounds %struct.Repair_T, ptr %26, i32 0, i32 3
  %27 = load i32, ptr %tstart_splice_distance21, align 4, !tbaa !17
  %cmp22 = icmp ult i32 %25, %27
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else19
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else24:                                        ; preds = %if.else19
  %28 = load ptr, ptr %x, align 8, !tbaa !5
  %tend_overhang = getelementptr inbounds %struct.Repair_T, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %tend_overhang, align 8, !tbaa !18
  %30 = load ptr, ptr %y, align 8, !tbaa !5
  %tend_overhang25 = getelementptr inbounds %struct.Repair_T, ptr %30, i32 0, i32 2
  %31 = load i32, ptr %tend_overhang25, align 8, !tbaa !18
  %cmp26 = icmp slt i32 %29, %31
  br i1 %cmp26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else24
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else28:                                        ; preds = %if.else24
  %32 = load ptr, ptr %y, align 8, !tbaa !5
  %tend_overhang29 = getelementptr inbounds %struct.Repair_T, ptr %32, i32 0, i32 2
  %33 = load i32, ptr %tend_overhang29, align 8, !tbaa !18
  %34 = load ptr, ptr %x, align 8, !tbaa !5
  %tend_overhang30 = getelementptr inbounds %struct.Repair_T, ptr %34, i32 0, i32 2
  %35 = load i32, ptr %tend_overhang30, align 8, !tbaa !18
  %cmp31 = icmp slt i32 %33, %35
  br i1 %cmp31, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.else28
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else33:                                        ; preds = %if.else28
  %36 = load ptr, ptr %x, align 8, !tbaa !5
  %tend_splice_distance = getelementptr inbounds %struct.Repair_T, ptr %36, i32 0, i32 4
  %37 = load i32, ptr %tend_splice_distance, align 8, !tbaa !19
  %38 = load ptr, ptr %y, align 8, !tbaa !5
  %tend_splice_distance34 = getelementptr inbounds %struct.Repair_T, ptr %38, i32 0, i32 4
  %39 = load i32, ptr %tend_splice_distance34, align 8, !tbaa !19
  %cmp35 = icmp ult i32 %37, %39
  br i1 %cmp35, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.else33
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else37:                                        ; preds = %if.else33
  %40 = load ptr, ptr %y, align 8, !tbaa !5
  %tend_splice_distance38 = getelementptr inbounds %struct.Repair_T, ptr %40, i32 0, i32 4
  %41 = load i32, ptr %tend_splice_distance38, align 8, !tbaa !19
  %42 = load ptr, ptr %x, align 8, !tbaa !5
  %tend_splice_distance39 = getelementptr inbounds %struct.Repair_T, ptr %42, i32 0, i32 4
  %43 = load i32, ptr %tend_splice_distance39, align 8, !tbaa !19
  %cmp40 = icmp ult i32 %41, %43
  br i1 %cmp40, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.else37
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else42:                                        ; preds = %if.else37
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else42, %if.then41, %if.then36, %if.then32, %if.then27, %if.then23, %if.then18, %if.then14, %if.then9, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #4
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
}

declare ptr @List_push_existing(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @Listpool_free_list(ptr noundef %old, ptr noundef %this) #0 {
entry:
  %old.addr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8, !tbaa !5
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %this.addr, align 8, !tbaa !5
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_reverse(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #4
  store ptr null, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.List_T, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %rest, align 8, !tbaa !11
  store ptr %2, ptr %next, align 8, !tbaa !5
  %3 = load ptr, ptr %head, align 8, !tbaa !5
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest1 = getelementptr inbounds %struct.List_T, ptr %4, i32 0, i32 1
  store ptr %3, ptr %rest1, align 8, !tbaa !11
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !5
  store ptr %5, ptr %head, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %next, align 8, !tbaa !5
  store ptr %6, ptr %list.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #4
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Repair_path(ptr noundef %found_score, ptr noundef %this, ptr noundef %oldpath, i32 noundef %sensedir, ptr noundef %query_compress_fwd, ptr noundef %query_compress_rev, i32 noundef %nmismatches_allowed, ptr noundef %intlistpool, ptr noundef %univcoordlistpool, ptr noundef %listpool, ptr noundef %pathpool, ptr noundef %vectorpool, ptr noundef %transcriptpool) #1 {
entry:
  %retval = alloca ptr, align 8
  %found_score.addr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %oldpath.addr = alloca ptr, align 8
  %sensedir.addr = alloca i32, align 4
  %query_compress_fwd.addr = alloca ptr, align 8
  %query_compress_rev.addr = alloca ptr, align 8
  %nmismatches_allowed.addr = alloca i32, align 4
  %intlistpool.addr = alloca ptr, align 8
  %univcoordlistpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %pathpool.addr = alloca ptr, align 8
  %vectorpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %path = alloca ptr, align 8
  %p = alloca ptr, align 8
  %transcript = alloca ptr, align 8
  %querypos = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %found_score, ptr %found_score.addr, align 8, !tbaa !5
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  store ptr %oldpath, ptr %oldpath.addr, align 8, !tbaa !5
  store i32 %sensedir, ptr %sensedir.addr, align 4, !tbaa !12
  store ptr %query_compress_fwd, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  store ptr %query_compress_rev, ptr %query_compress_rev.addr, align 8, !tbaa !5
  store i32 %nmismatches_allowed, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  store ptr %intlistpool, ptr %intlistpool.addr, align 8, !tbaa !5
  store ptr %univcoordlistpool, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %pathpool, ptr %pathpool.addr, align 8, !tbaa !5
  store ptr %vectorpool, ptr %vectorpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %transcript) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %querypos) #4
  %0 = load ptr, ptr %oldpath.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %2 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %4 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %5 = load ptr, ptr %vectorpool.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %call = call ptr @Path_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  store ptr %call, ptr %path, align 8, !tbaa !5
  %7 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %transcript_genestrand = getelementptr inbounds %struct.Repair_T, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %transcript_genestrand, align 8, !tbaa !14
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else153

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tstart_overhang = getelementptr inbounds %struct.Repair_T, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %tstart_overhang, align 4, !tbaa !16
  %cmp1 = icmp sgt i32 %10, 0
  br i1 %cmp1, label %if.then2, label %if.end46

if.then2:                                         ; preds = %if.then
  %11 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints = getelementptr inbounds %struct.Path_T, ptr %11, i32 0, i32 17
  %12 = load ptr, ptr %endpoints, align 8, !tbaa !26
  %call3 = call i32 @Intlist_head(ptr noundef %12)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then2
  %13 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches = getelementptr inbounds %struct.Path_T, ptr %13, i32 0, i32 19
  %14 = load ptr, ptr %nmismatches, align 8, !tbaa !31
  %call5 = call i32 @Intlist_head(ptr noundef %14)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then2
  %15 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches8 = getelementptr inbounds %struct.Path_T, ptr %15, i32 0, i32 19
  %16 = load ptr, ptr %nmismatches8, align 8, !tbaa !31
  call void @Intlist_head_set(ptr noundef %16, i32 noundef -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %17 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches9 = getelementptr inbounds %struct.Path_T, ptr %17, i32 0, i32 19
  %18 = load ptr, ptr %nmismatches9, align 8, !tbaa !31
  %19 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %call10 = call ptr @Intlistpool_push(ptr noundef %18, ptr noundef %19, i32 noundef -1)
  %20 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches11 = getelementptr inbounds %struct.Path_T, ptr %20, i32 0, i32 19
  store ptr %call10, ptr %nmismatches11, align 8, !tbaa !31
  %21 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints12 = getelementptr inbounds %struct.Path_T, ptr %21, i32 0, i32 17
  %22 = load ptr, ptr %endpoints12, align 8, !tbaa !26
  %call13 = call i32 @Intlist_head(ptr noundef %22)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %land.lhs.true15, label %if.else19

land.lhs.true15:                                  ; preds = %if.end
  %23 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches = getelementptr inbounds %struct.Path_T, ptr %23, i32 0, i32 20
  %24 = load ptr, ptr %ref_nmismatches, align 8, !tbaa !32
  %call16 = call i32 @Intlist_head(ptr noundef %24)
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %land.lhs.true15
  br label %if.end21

if.else19:                                        ; preds = %land.lhs.true15, %if.end
  %25 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches20 = getelementptr inbounds %struct.Path_T, ptr %25, i32 0, i32 20
  %26 = load ptr, ptr %ref_nmismatches20, align 8, !tbaa !32
  call void @Intlist_head_set(ptr noundef %26, i32 noundef -1)
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then18
  %27 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches22 = getelementptr inbounds %struct.Path_T, ptr %27, i32 0, i32 20
  %28 = load ptr, ptr %ref_nmismatches22, align 8, !tbaa !32
  %29 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %call23 = call ptr @Intlistpool_push(ptr noundef %28, ptr noundef %29, i32 noundef -1)
  %30 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches24 = getelementptr inbounds %struct.Path_T, ptr %30, i32 0, i32 20
  store ptr %call23, ptr %ref_nmismatches24, align 8, !tbaa !32
  %31 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints25 = getelementptr inbounds %struct.Path_T, ptr %31, i32 0, i32 17
  %32 = load ptr, ptr %endpoints25, align 8, !tbaa !26
  %call26 = call i32 @Intlist_second_value(ptr noundef %32)
  store i32 %call26, ptr %querypos, align 4, !tbaa !12
  %33 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tstart_overhang27 = getelementptr inbounds %struct.Repair_T, ptr %33, i32 0, i32 1
  %34 = load i32, ptr %tstart_overhang27, align 4, !tbaa !16
  %35 = load i32, ptr %querypos, align 4, !tbaa !12
  %cmp28 = icmp sge i32 %34, %35
  br i1 %cmp28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.end21
  %36 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %37 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %38 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %39 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %40 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %39, ptr noundef %40)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else30:                                        ; preds = %if.end21
  %41 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints31 = getelementptr inbounds %struct.Path_T, ptr %41, i32 0, i32 17
  %42 = load ptr, ptr %endpoints31, align 8, !tbaa !26
  %43 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tstart_overhang32 = getelementptr inbounds %struct.Repair_T, ptr %43, i32 0, i32 1
  %44 = load i32, ptr %tstart_overhang32, align 4, !tbaa !16
  call void @Intlist_head_set(ptr noundef %42, i32 noundef %44)
  %45 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints33 = getelementptr inbounds %struct.Path_T, ptr %45, i32 0, i32 17
  %46 = load ptr, ptr %endpoints33, align 8, !tbaa !26
  %47 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %call34 = call ptr @Intlistpool_push(ptr noundef %46, ptr noundef %47, i32 noundef 0)
  %48 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints35 = getelementptr inbounds %struct.Path_T, ptr %48, i32 0, i32 17
  store ptr %call34, ptr %endpoints35, align 8, !tbaa !26
  br label %if.end36

if.end36:                                         ; preds = %if.else30
  %49 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals = getelementptr inbounds %struct.Path_T, ptr %49, i32 0, i32 18
  %50 = load ptr, ptr %univdiagonals, align 8, !tbaa !33
  %51 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %52 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals37 = getelementptr inbounds %struct.Path_T, ptr %52, i32 0, i32 18
  %53 = load ptr, ptr %univdiagonals37, align 8, !tbaa !33
  %call38 = call i64 @Uint8list_head(ptr noundef %53)
  %54 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tstart_splice_distance = getelementptr inbounds %struct.Repair_T, ptr %54, i32 0, i32 3
  %55 = load i32, ptr %tstart_splice_distance, align 4, !tbaa !17
  %conv = zext i32 %55 to i64
  %sub = sub i64 %call38, %conv
  %call39 = call ptr @Uint8listpool_push(ptr noundef %50, ptr noundef %51, i64 noundef %sub)
  %56 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals40 = getelementptr inbounds %struct.Path_T, ptr %56, i32 0, i32 18
  store ptr %call39, ptr %univdiagonals40, align 8, !tbaa !33
  %57 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions = getelementptr inbounds %struct.Path_T, ptr %57, i32 0, i32 21
  %58 = load ptr, ptr %junctions, align 8, !tbaa !34
  %59 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %60 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tstart_splice_distance41 = getelementptr inbounds %struct.Repair_T, ptr %60, i32 0, i32 3
  %61 = load i32, ptr %tstart_splice_distance41, align 4, !tbaa !17
  %62 = load i32, ptr %sensedir.addr, align 4, !tbaa !12
  %63 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call42 = call ptr @Junction_new_splice(i32 noundef %61, i32 noundef %62, double noundef 2.000000e+00, double noundef 2.000000e+00, ptr noundef %63)
  %call43 = call ptr @Listpool_push(ptr noundef %58, ptr noundef %59, ptr noundef %call42)
  %64 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions44 = getelementptr inbounds %struct.Path_T, ptr %64, i32 0, i32 21
  store ptr %call43, ptr %junctions44, align 8, !tbaa !34
  %65 = load ptr, ptr %path, align 8, !tbaa !5
  %qstart_alts = getelementptr inbounds %struct.Path_T, ptr %65, i32 0, i32 28
  %66 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  call void @Altsplice_free(ptr noundef %qstart_alts, ptr noundef %66)
  %67 = load ptr, ptr %path, align 8, !tbaa !5
  %qstart_alts45 = getelementptr inbounds %struct.Path_T, ptr %67, i32 0, i32 28
  store ptr null, ptr %qstart_alts45, align 8, !tbaa !35
  br label %if.end46

if.end46:                                         ; preds = %if.end36, %if.then
  %68 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tend_overhang = getelementptr inbounds %struct.Repair_T, ptr %68, i32 0, i32 2
  %69 = load i32, ptr %tend_overhang, align 8, !tbaa !18
  %cmp47 = icmp sgt i32 %69, 0
  br i1 %cmp47, label %if.then49, label %if.end152

if.then49:                                        ; preds = %if.end46
  %70 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints50 = getelementptr inbounds %struct.Path_T, ptr %70, i32 0, i32 17
  %71 = load ptr, ptr %endpoints50, align 8, !tbaa !26
  %call51 = call ptr @Intlist_reverse(ptr noundef %71)
  %72 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints52 = getelementptr inbounds %struct.Path_T, ptr %72, i32 0, i32 17
  store ptr %call51, ptr %endpoints52, align 8, !tbaa !26
  %73 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals53 = getelementptr inbounds %struct.Path_T, ptr %73, i32 0, i32 18
  %74 = load ptr, ptr %univdiagonals53, align 8, !tbaa !33
  %call54 = call ptr @Uint8list_reverse(ptr noundef %74)
  %75 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals55 = getelementptr inbounds %struct.Path_T, ptr %75, i32 0, i32 18
  store ptr %call54, ptr %univdiagonals55, align 8, !tbaa !33
  %76 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches56 = getelementptr inbounds %struct.Path_T, ptr %76, i32 0, i32 19
  %77 = load ptr, ptr %nmismatches56, align 8, !tbaa !31
  %call57 = call ptr @Intlist_reverse(ptr noundef %77)
  %78 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches58 = getelementptr inbounds %struct.Path_T, ptr %78, i32 0, i32 19
  store ptr %call57, ptr %nmismatches58, align 8, !tbaa !31
  %79 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches59 = getelementptr inbounds %struct.Path_T, ptr %79, i32 0, i32 20
  %80 = load ptr, ptr %ref_nmismatches59, align 8, !tbaa !32
  %call60 = call ptr @Intlist_reverse(ptr noundef %80)
  %81 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches61 = getelementptr inbounds %struct.Path_T, ptr %81, i32 0, i32 20
  store ptr %call60, ptr %ref_nmismatches61, align 8, !tbaa !32
  %82 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions62 = getelementptr inbounds %struct.Path_T, ptr %82, i32 0, i32 21
  %83 = load ptr, ptr %junctions62, align 8, !tbaa !34
  %call63 = call ptr @List_reverse(ptr noundef %83)
  %84 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions64 = getelementptr inbounds %struct.Path_T, ptr %84, i32 0, i32 21
  store ptr %call63, ptr %junctions64, align 8, !tbaa !34
  %85 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints65 = getelementptr inbounds %struct.Path_T, ptr %85, i32 0, i32 17
  %86 = load ptr, ptr %endpoints65, align 8, !tbaa !26
  %call66 = call i32 @Intlist_head(ptr noundef %86)
  %87 = load ptr, ptr %path, align 8, !tbaa !5
  %querylength = getelementptr inbounds %struct.Path_T, ptr %87, i32 0, i32 13
  %88 = load i32, ptr %querylength, align 4, !tbaa !36
  %cmp67 = icmp eq i32 %call66, %88
  br i1 %cmp67, label %land.lhs.true69, label %if.else75

land.lhs.true69:                                  ; preds = %if.then49
  %89 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches70 = getelementptr inbounds %struct.Path_T, ptr %89, i32 0, i32 19
  %90 = load ptr, ptr %nmismatches70, align 8, !tbaa !31
  %call71 = call i32 @Intlist_head(ptr noundef %90)
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %if.then74, label %if.else75

if.then74:                                        ; preds = %land.lhs.true69
  br label %if.end77

if.else75:                                        ; preds = %land.lhs.true69, %if.then49
  %91 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches76 = getelementptr inbounds %struct.Path_T, ptr %91, i32 0, i32 19
  %92 = load ptr, ptr %nmismatches76, align 8, !tbaa !31
  call void @Intlist_head_set(ptr noundef %92, i32 noundef -1)
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %if.then74
  %93 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches78 = getelementptr inbounds %struct.Path_T, ptr %93, i32 0, i32 19
  %94 = load ptr, ptr %nmismatches78, align 8, !tbaa !31
  %95 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %call79 = call ptr @Intlistpool_push(ptr noundef %94, ptr noundef %95, i32 noundef -1)
  %96 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches80 = getelementptr inbounds %struct.Path_T, ptr %96, i32 0, i32 19
  store ptr %call79, ptr %nmismatches80, align 8, !tbaa !31
  %97 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints81 = getelementptr inbounds %struct.Path_T, ptr %97, i32 0, i32 17
  %98 = load ptr, ptr %endpoints81, align 8, !tbaa !26
  %call82 = call i32 @Intlist_head(ptr noundef %98)
  %99 = load ptr, ptr %path, align 8, !tbaa !5
  %querylength83 = getelementptr inbounds %struct.Path_T, ptr %99, i32 0, i32 13
  %100 = load i32, ptr %querylength83, align 4, !tbaa !36
  %cmp84 = icmp eq i32 %call82, %100
  br i1 %cmp84, label %land.lhs.true86, label %if.else92

land.lhs.true86:                                  ; preds = %if.end77
  %101 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches87 = getelementptr inbounds %struct.Path_T, ptr %101, i32 0, i32 20
  %102 = load ptr, ptr %ref_nmismatches87, align 8, !tbaa !32
  %call88 = call i32 @Intlist_head(ptr noundef %102)
  %cmp89 = icmp eq i32 %call88, 0
  br i1 %cmp89, label %if.then91, label %if.else92

if.then91:                                        ; preds = %land.lhs.true86
  br label %if.end94

if.else92:                                        ; preds = %land.lhs.true86, %if.end77
  %103 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches93 = getelementptr inbounds %struct.Path_T, ptr %103, i32 0, i32 20
  %104 = load ptr, ptr %ref_nmismatches93, align 8, !tbaa !32
  call void @Intlist_head_set(ptr noundef %104, i32 noundef -1)
  br label %if.end94

if.end94:                                         ; preds = %if.else92, %if.then91
  %105 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches95 = getelementptr inbounds %struct.Path_T, ptr %105, i32 0, i32 20
  %106 = load ptr, ptr %ref_nmismatches95, align 8, !tbaa !32
  %107 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %call96 = call ptr @Intlistpool_push(ptr noundef %106, ptr noundef %107, i32 noundef -1)
  %108 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches97 = getelementptr inbounds %struct.Path_T, ptr %108, i32 0, i32 20
  store ptr %call96, ptr %ref_nmismatches97, align 8, !tbaa !32
  %109 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints98 = getelementptr inbounds %struct.Path_T, ptr %109, i32 0, i32 17
  %110 = load ptr, ptr %endpoints98, align 8, !tbaa !26
  %call99 = call i32 @Intlist_second_value(ptr noundef %110)
  store i32 %call99, ptr %querypos, align 4, !tbaa !12
  %111 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions100 = getelementptr inbounds %struct.Path_T, ptr %111, i32 0, i32 21
  %112 = load ptr, ptr %junctions100, align 8, !tbaa !34
  %cmp101 = icmp ne ptr %112, null
  br i1 %cmp101, label %if.then103, label %if.end107

if.then103:                                       ; preds = %if.end94
  %113 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions104 = getelementptr inbounds %struct.Path_T, ptr %113, i32 0, i32 21
  %114 = load ptr, ptr %junctions104, align 8, !tbaa !34
  %call105 = call ptr @List_head(ptr noundef %114)
  %call106 = call i32 @Junction_ninserts(ptr noundef %call105)
  %115 = load i32, ptr %querypos, align 4, !tbaa !12
  %add = add nsw i32 %115, %call106
  store i32 %add, ptr %querypos, align 4, !tbaa !12
  br label %if.end107

if.end107:                                        ; preds = %if.then103, %if.end94
  %116 = load ptr, ptr %path, align 8, !tbaa !5
  %querylength108 = getelementptr inbounds %struct.Path_T, ptr %116, i32 0, i32 13
  %117 = load i32, ptr %querylength108, align 4, !tbaa !36
  %118 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tend_overhang109 = getelementptr inbounds %struct.Repair_T, ptr %118, i32 0, i32 2
  %119 = load i32, ptr %tend_overhang109, align 8, !tbaa !18
  %sub110 = sub nsw i32 %117, %119
  %120 = load i32, ptr %querypos, align 4, !tbaa !12
  %cmp111 = icmp sle i32 %sub110, %120
  br i1 %cmp111, label %if.then113, label %if.else114

if.then113:                                       ; preds = %if.end107
  %121 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %122 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %123 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %124 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %125 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %121, ptr noundef %122, ptr noundef %123, ptr noundef %124, ptr noundef %125)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else114:                                       ; preds = %if.end107
  %126 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints115 = getelementptr inbounds %struct.Path_T, ptr %126, i32 0, i32 17
  %127 = load ptr, ptr %endpoints115, align 8, !tbaa !26
  %128 = load ptr, ptr %path, align 8, !tbaa !5
  %querylength116 = getelementptr inbounds %struct.Path_T, ptr %128, i32 0, i32 13
  %129 = load i32, ptr %querylength116, align 4, !tbaa !36
  %130 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tend_overhang117 = getelementptr inbounds %struct.Repair_T, ptr %130, i32 0, i32 2
  %131 = load i32, ptr %tend_overhang117, align 8, !tbaa !18
  %sub118 = sub nsw i32 %129, %131
  call void @Intlist_head_set(ptr noundef %127, i32 noundef %sub118)
  %132 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints119 = getelementptr inbounds %struct.Path_T, ptr %132, i32 0, i32 17
  %133 = load ptr, ptr %endpoints119, align 8, !tbaa !26
  %134 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %135 = load ptr, ptr %path, align 8, !tbaa !5
  %querylength120 = getelementptr inbounds %struct.Path_T, ptr %135, i32 0, i32 13
  %136 = load i32, ptr %querylength120, align 4, !tbaa !36
  %call121 = call ptr @Intlistpool_push(ptr noundef %133, ptr noundef %134, i32 noundef %136)
  %137 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints122 = getelementptr inbounds %struct.Path_T, ptr %137, i32 0, i32 17
  store ptr %call121, ptr %endpoints122, align 8, !tbaa !26
  br label %if.end123

if.end123:                                        ; preds = %if.else114
  %138 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals124 = getelementptr inbounds %struct.Path_T, ptr %138, i32 0, i32 18
  %139 = load ptr, ptr %univdiagonals124, align 8, !tbaa !33
  %140 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %141 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals125 = getelementptr inbounds %struct.Path_T, ptr %141, i32 0, i32 18
  %142 = load ptr, ptr %univdiagonals125, align 8, !tbaa !33
  %call126 = call i64 @Uint8list_head(ptr noundef %142)
  %143 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tend_splice_distance = getelementptr inbounds %struct.Repair_T, ptr %143, i32 0, i32 4
  %144 = load i32, ptr %tend_splice_distance, align 8, !tbaa !19
  %conv127 = zext i32 %144 to i64
  %add128 = add i64 %call126, %conv127
  %call129 = call ptr @Uint8listpool_push(ptr noundef %139, ptr noundef %140, i64 noundef %add128)
  %145 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals130 = getelementptr inbounds %struct.Path_T, ptr %145, i32 0, i32 18
  store ptr %call129, ptr %univdiagonals130, align 8, !tbaa !33
  %146 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions131 = getelementptr inbounds %struct.Path_T, ptr %146, i32 0, i32 21
  %147 = load ptr, ptr %junctions131, align 8, !tbaa !34
  %148 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %149 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tend_splice_distance132 = getelementptr inbounds %struct.Repair_T, ptr %149, i32 0, i32 4
  %150 = load i32, ptr %tend_splice_distance132, align 8, !tbaa !19
  %151 = load i32, ptr %sensedir.addr, align 4, !tbaa !12
  %152 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call133 = call ptr @Junction_new_splice(i32 noundef %150, i32 noundef %151, double noundef 2.000000e+00, double noundef 2.000000e+00, ptr noundef %152)
  %call134 = call ptr @Listpool_push(ptr noundef %147, ptr noundef %148, ptr noundef %call133)
  %153 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions135 = getelementptr inbounds %struct.Path_T, ptr %153, i32 0, i32 21
  store ptr %call134, ptr %junctions135, align 8, !tbaa !34
  %154 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints136 = getelementptr inbounds %struct.Path_T, ptr %154, i32 0, i32 17
  %155 = load ptr, ptr %endpoints136, align 8, !tbaa !26
  %call137 = call ptr @Intlist_reverse(ptr noundef %155)
  %156 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints138 = getelementptr inbounds %struct.Path_T, ptr %156, i32 0, i32 17
  store ptr %call137, ptr %endpoints138, align 8, !tbaa !26
  %157 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals139 = getelementptr inbounds %struct.Path_T, ptr %157, i32 0, i32 18
  %158 = load ptr, ptr %univdiagonals139, align 8, !tbaa !33
  %call140 = call ptr @Uint8list_reverse(ptr noundef %158)
  %159 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals141 = getelementptr inbounds %struct.Path_T, ptr %159, i32 0, i32 18
  store ptr %call140, ptr %univdiagonals141, align 8, !tbaa !33
  %160 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches142 = getelementptr inbounds %struct.Path_T, ptr %160, i32 0, i32 19
  %161 = load ptr, ptr %nmismatches142, align 8, !tbaa !31
  %call143 = call ptr @Intlist_reverse(ptr noundef %161)
  %162 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches144 = getelementptr inbounds %struct.Path_T, ptr %162, i32 0, i32 19
  store ptr %call143, ptr %nmismatches144, align 8, !tbaa !31
  %163 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches145 = getelementptr inbounds %struct.Path_T, ptr %163, i32 0, i32 20
  %164 = load ptr, ptr %ref_nmismatches145, align 8, !tbaa !32
  %call146 = call ptr @Intlist_reverse(ptr noundef %164)
  %165 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches147 = getelementptr inbounds %struct.Path_T, ptr %165, i32 0, i32 20
  store ptr %call146, ptr %ref_nmismatches147, align 8, !tbaa !32
  %166 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions148 = getelementptr inbounds %struct.Path_T, ptr %166, i32 0, i32 21
  %167 = load ptr, ptr %junctions148, align 8, !tbaa !34
  %call149 = call ptr @List_reverse(ptr noundef %167)
  %168 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions150 = getelementptr inbounds %struct.Path_T, ptr %168, i32 0, i32 21
  store ptr %call149, ptr %junctions150, align 8, !tbaa !34
  %169 = load ptr, ptr %path, align 8, !tbaa !5
  %qend_alts = getelementptr inbounds %struct.Path_T, ptr %169, i32 0, i32 29
  %170 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  call void @Altsplice_free(ptr noundef %qend_alts, ptr noundef %170)
  %171 = load ptr, ptr %path, align 8, !tbaa !5
  %qend_alts151 = getelementptr inbounds %struct.Path_T, ptr %171, i32 0, i32 29
  store ptr null, ptr %qend_alts151, align 8, !tbaa !37
  br label %if.end152

if.end152:                                        ; preds = %if.end123, %if.end46
  br label %if.end328

if.else153:                                       ; preds = %entry
  %172 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tstart_overhang154 = getelementptr inbounds %struct.Repair_T, ptr %172, i32 0, i32 1
  %173 = load i32, ptr %tstart_overhang154, align 4, !tbaa !16
  %cmp155 = icmp sgt i32 %173, 0
  br i1 %cmp155, label %if.then157, label %if.end264

if.then157:                                       ; preds = %if.else153
  %174 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints158 = getelementptr inbounds %struct.Path_T, ptr %174, i32 0, i32 17
  %175 = load ptr, ptr %endpoints158, align 8, !tbaa !26
  %call159 = call ptr @Intlist_reverse(ptr noundef %175)
  %176 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints160 = getelementptr inbounds %struct.Path_T, ptr %176, i32 0, i32 17
  store ptr %call159, ptr %endpoints160, align 8, !tbaa !26
  %177 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals161 = getelementptr inbounds %struct.Path_T, ptr %177, i32 0, i32 18
  %178 = load ptr, ptr %univdiagonals161, align 8, !tbaa !33
  %call162 = call ptr @Uint8list_reverse(ptr noundef %178)
  %179 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals163 = getelementptr inbounds %struct.Path_T, ptr %179, i32 0, i32 18
  store ptr %call162, ptr %univdiagonals163, align 8, !tbaa !33
  %180 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches164 = getelementptr inbounds %struct.Path_T, ptr %180, i32 0, i32 19
  %181 = load ptr, ptr %nmismatches164, align 8, !tbaa !31
  %call165 = call ptr @Intlist_reverse(ptr noundef %181)
  %182 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches166 = getelementptr inbounds %struct.Path_T, ptr %182, i32 0, i32 19
  store ptr %call165, ptr %nmismatches166, align 8, !tbaa !31
  %183 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches167 = getelementptr inbounds %struct.Path_T, ptr %183, i32 0, i32 20
  %184 = load ptr, ptr %ref_nmismatches167, align 8, !tbaa !32
  %call168 = call ptr @Intlist_reverse(ptr noundef %184)
  %185 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches169 = getelementptr inbounds %struct.Path_T, ptr %185, i32 0, i32 20
  store ptr %call168, ptr %ref_nmismatches169, align 8, !tbaa !32
  %186 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions170 = getelementptr inbounds %struct.Path_T, ptr %186, i32 0, i32 21
  %187 = load ptr, ptr %junctions170, align 8, !tbaa !34
  %call171 = call ptr @List_reverse(ptr noundef %187)
  %188 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions172 = getelementptr inbounds %struct.Path_T, ptr %188, i32 0, i32 21
  store ptr %call171, ptr %junctions172, align 8, !tbaa !34
  %189 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints173 = getelementptr inbounds %struct.Path_T, ptr %189, i32 0, i32 17
  %190 = load ptr, ptr %endpoints173, align 8, !tbaa !26
  %call174 = call i32 @Intlist_head(ptr noundef %190)
  %191 = load ptr, ptr %path, align 8, !tbaa !5
  %querylength175 = getelementptr inbounds %struct.Path_T, ptr %191, i32 0, i32 13
  %192 = load i32, ptr %querylength175, align 4, !tbaa !36
  %cmp176 = icmp eq i32 %call174, %192
  br i1 %cmp176, label %land.lhs.true178, label %if.else184

land.lhs.true178:                                 ; preds = %if.then157
  %193 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches179 = getelementptr inbounds %struct.Path_T, ptr %193, i32 0, i32 19
  %194 = load ptr, ptr %nmismatches179, align 8, !tbaa !31
  %call180 = call i32 @Intlist_head(ptr noundef %194)
  %cmp181 = icmp eq i32 %call180, 0
  br i1 %cmp181, label %if.then183, label %if.else184

if.then183:                                       ; preds = %land.lhs.true178
  br label %if.end186

if.else184:                                       ; preds = %land.lhs.true178, %if.then157
  %195 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches185 = getelementptr inbounds %struct.Path_T, ptr %195, i32 0, i32 19
  %196 = load ptr, ptr %nmismatches185, align 8, !tbaa !31
  call void @Intlist_head_set(ptr noundef %196, i32 noundef -1)
  br label %if.end186

if.end186:                                        ; preds = %if.else184, %if.then183
  %197 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches187 = getelementptr inbounds %struct.Path_T, ptr %197, i32 0, i32 19
  %198 = load ptr, ptr %nmismatches187, align 8, !tbaa !31
  %199 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %call188 = call ptr @Intlistpool_push(ptr noundef %198, ptr noundef %199, i32 noundef -1)
  %200 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches189 = getelementptr inbounds %struct.Path_T, ptr %200, i32 0, i32 19
  store ptr %call188, ptr %nmismatches189, align 8, !tbaa !31
  %201 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints190 = getelementptr inbounds %struct.Path_T, ptr %201, i32 0, i32 17
  %202 = load ptr, ptr %endpoints190, align 8, !tbaa !26
  %call191 = call i32 @Intlist_head(ptr noundef %202)
  %203 = load ptr, ptr %path, align 8, !tbaa !5
  %querylength192 = getelementptr inbounds %struct.Path_T, ptr %203, i32 0, i32 13
  %204 = load i32, ptr %querylength192, align 4, !tbaa !36
  %cmp193 = icmp eq i32 %call191, %204
  br i1 %cmp193, label %land.lhs.true195, label %if.else201

land.lhs.true195:                                 ; preds = %if.end186
  %205 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches196 = getelementptr inbounds %struct.Path_T, ptr %205, i32 0, i32 20
  %206 = load ptr, ptr %ref_nmismatches196, align 8, !tbaa !32
  %call197 = call i32 @Intlist_head(ptr noundef %206)
  %cmp198 = icmp eq i32 %call197, 0
  br i1 %cmp198, label %if.then200, label %if.else201

if.then200:                                       ; preds = %land.lhs.true195
  br label %if.end203

if.else201:                                       ; preds = %land.lhs.true195, %if.end186
  %207 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches202 = getelementptr inbounds %struct.Path_T, ptr %207, i32 0, i32 20
  %208 = load ptr, ptr %ref_nmismatches202, align 8, !tbaa !32
  call void @Intlist_head_set(ptr noundef %208, i32 noundef -1)
  br label %if.end203

if.end203:                                        ; preds = %if.else201, %if.then200
  %209 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches204 = getelementptr inbounds %struct.Path_T, ptr %209, i32 0, i32 20
  %210 = load ptr, ptr %ref_nmismatches204, align 8, !tbaa !32
  %211 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %call205 = call ptr @Intlistpool_push(ptr noundef %210, ptr noundef %211, i32 noundef -1)
  %212 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches206 = getelementptr inbounds %struct.Path_T, ptr %212, i32 0, i32 20
  store ptr %call205, ptr %ref_nmismatches206, align 8, !tbaa !32
  %213 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints207 = getelementptr inbounds %struct.Path_T, ptr %213, i32 0, i32 17
  %214 = load ptr, ptr %endpoints207, align 8, !tbaa !26
  %call208 = call i32 @Intlist_second_value(ptr noundef %214)
  store i32 %call208, ptr %querypos, align 4, !tbaa !12
  %215 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions209 = getelementptr inbounds %struct.Path_T, ptr %215, i32 0, i32 21
  %216 = load ptr, ptr %junctions209, align 8, !tbaa !34
  %cmp210 = icmp ne ptr %216, null
  br i1 %cmp210, label %if.then212, label %if.end217

if.then212:                                       ; preds = %if.end203
  %217 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions213 = getelementptr inbounds %struct.Path_T, ptr %217, i32 0, i32 21
  %218 = load ptr, ptr %junctions213, align 8, !tbaa !34
  %call214 = call ptr @List_head(ptr noundef %218)
  %call215 = call i32 @Junction_ninserts(ptr noundef %call214)
  %219 = load i32, ptr %querypos, align 4, !tbaa !12
  %add216 = add nsw i32 %219, %call215
  store i32 %add216, ptr %querypos, align 4, !tbaa !12
  br label %if.end217

if.end217:                                        ; preds = %if.then212, %if.end203
  %220 = load ptr, ptr %path, align 8, !tbaa !5
  %querylength218 = getelementptr inbounds %struct.Path_T, ptr %220, i32 0, i32 13
  %221 = load i32, ptr %querylength218, align 4, !tbaa !36
  %222 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tstart_overhang219 = getelementptr inbounds %struct.Repair_T, ptr %222, i32 0, i32 1
  %223 = load i32, ptr %tstart_overhang219, align 4, !tbaa !16
  %sub220 = sub nsw i32 %221, %223
  %224 = load i32, ptr %querypos, align 4, !tbaa !12
  %cmp221 = icmp sle i32 %sub220, %224
  br i1 %cmp221, label %if.then223, label %if.else224

if.then223:                                       ; preds = %if.end217
  %225 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %226 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %227 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %228 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %229 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %225, ptr noundef %226, ptr noundef %227, ptr noundef %228, ptr noundef %229)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else224:                                       ; preds = %if.end217
  %230 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints225 = getelementptr inbounds %struct.Path_T, ptr %230, i32 0, i32 17
  %231 = load ptr, ptr %endpoints225, align 8, !tbaa !26
  %232 = load ptr, ptr %path, align 8, !tbaa !5
  %querylength226 = getelementptr inbounds %struct.Path_T, ptr %232, i32 0, i32 13
  %233 = load i32, ptr %querylength226, align 4, !tbaa !36
  %234 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tstart_overhang227 = getelementptr inbounds %struct.Repair_T, ptr %234, i32 0, i32 1
  %235 = load i32, ptr %tstart_overhang227, align 4, !tbaa !16
  %sub228 = sub nsw i32 %233, %235
  call void @Intlist_head_set(ptr noundef %231, i32 noundef %sub228)
  %236 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints229 = getelementptr inbounds %struct.Path_T, ptr %236, i32 0, i32 17
  %237 = load ptr, ptr %endpoints229, align 8, !tbaa !26
  %238 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %239 = load ptr, ptr %path, align 8, !tbaa !5
  %querylength230 = getelementptr inbounds %struct.Path_T, ptr %239, i32 0, i32 13
  %240 = load i32, ptr %querylength230, align 4, !tbaa !36
  %call231 = call ptr @Intlistpool_push(ptr noundef %237, ptr noundef %238, i32 noundef %240)
  %241 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints232 = getelementptr inbounds %struct.Path_T, ptr %241, i32 0, i32 17
  store ptr %call231, ptr %endpoints232, align 8, !tbaa !26
  br label %if.end233

if.end233:                                        ; preds = %if.else224
  %242 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals234 = getelementptr inbounds %struct.Path_T, ptr %242, i32 0, i32 18
  %243 = load ptr, ptr %univdiagonals234, align 8, !tbaa !33
  %244 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %245 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals235 = getelementptr inbounds %struct.Path_T, ptr %245, i32 0, i32 18
  %246 = load ptr, ptr %univdiagonals235, align 8, !tbaa !33
  %call236 = call i64 @Uint8list_head(ptr noundef %246)
  %247 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tstart_splice_distance237 = getelementptr inbounds %struct.Repair_T, ptr %247, i32 0, i32 3
  %248 = load i32, ptr %tstart_splice_distance237, align 4, !tbaa !17
  %conv238 = zext i32 %248 to i64
  %add239 = add i64 %call236, %conv238
  %call240 = call ptr @Uint8listpool_push(ptr noundef %243, ptr noundef %244, i64 noundef %add239)
  %249 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals241 = getelementptr inbounds %struct.Path_T, ptr %249, i32 0, i32 18
  store ptr %call240, ptr %univdiagonals241, align 8, !tbaa !33
  %250 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions242 = getelementptr inbounds %struct.Path_T, ptr %250, i32 0, i32 21
  %251 = load ptr, ptr %junctions242, align 8, !tbaa !34
  %252 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %253 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tstart_splice_distance243 = getelementptr inbounds %struct.Repair_T, ptr %253, i32 0, i32 3
  %254 = load i32, ptr %tstart_splice_distance243, align 4, !tbaa !17
  %255 = load i32, ptr %sensedir.addr, align 4, !tbaa !12
  %256 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call244 = call ptr @Junction_new_splice(i32 noundef %254, i32 noundef %255, double noundef 2.000000e+00, double noundef 2.000000e+00, ptr noundef %256)
  %call245 = call ptr @Listpool_push(ptr noundef %251, ptr noundef %252, ptr noundef %call244)
  %257 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions246 = getelementptr inbounds %struct.Path_T, ptr %257, i32 0, i32 21
  store ptr %call245, ptr %junctions246, align 8, !tbaa !34
  %258 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints247 = getelementptr inbounds %struct.Path_T, ptr %258, i32 0, i32 17
  %259 = load ptr, ptr %endpoints247, align 8, !tbaa !26
  %call248 = call ptr @Intlist_reverse(ptr noundef %259)
  %260 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints249 = getelementptr inbounds %struct.Path_T, ptr %260, i32 0, i32 17
  store ptr %call248, ptr %endpoints249, align 8, !tbaa !26
  %261 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals250 = getelementptr inbounds %struct.Path_T, ptr %261, i32 0, i32 18
  %262 = load ptr, ptr %univdiagonals250, align 8, !tbaa !33
  %call251 = call ptr @Uint8list_reverse(ptr noundef %262)
  %263 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals252 = getelementptr inbounds %struct.Path_T, ptr %263, i32 0, i32 18
  store ptr %call251, ptr %univdiagonals252, align 8, !tbaa !33
  %264 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches253 = getelementptr inbounds %struct.Path_T, ptr %264, i32 0, i32 19
  %265 = load ptr, ptr %nmismatches253, align 8, !tbaa !31
  %call254 = call ptr @Intlist_reverse(ptr noundef %265)
  %266 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches255 = getelementptr inbounds %struct.Path_T, ptr %266, i32 0, i32 19
  store ptr %call254, ptr %nmismatches255, align 8, !tbaa !31
  %267 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches256 = getelementptr inbounds %struct.Path_T, ptr %267, i32 0, i32 20
  %268 = load ptr, ptr %ref_nmismatches256, align 8, !tbaa !32
  %call257 = call ptr @Intlist_reverse(ptr noundef %268)
  %269 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches258 = getelementptr inbounds %struct.Path_T, ptr %269, i32 0, i32 20
  store ptr %call257, ptr %ref_nmismatches258, align 8, !tbaa !32
  %270 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions259 = getelementptr inbounds %struct.Path_T, ptr %270, i32 0, i32 21
  %271 = load ptr, ptr %junctions259, align 8, !tbaa !34
  %call260 = call ptr @List_reverse(ptr noundef %271)
  %272 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions261 = getelementptr inbounds %struct.Path_T, ptr %272, i32 0, i32 21
  store ptr %call260, ptr %junctions261, align 8, !tbaa !34
  %273 = load ptr, ptr %path, align 8, !tbaa !5
  %qend_alts262 = getelementptr inbounds %struct.Path_T, ptr %273, i32 0, i32 29
  %274 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  call void @Altsplice_free(ptr noundef %qend_alts262, ptr noundef %274)
  %275 = load ptr, ptr %path, align 8, !tbaa !5
  %qend_alts263 = getelementptr inbounds %struct.Path_T, ptr %275, i32 0, i32 29
  store ptr null, ptr %qend_alts263, align 8, !tbaa !37
  br label %if.end264

if.end264:                                        ; preds = %if.end233, %if.else153
  %276 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tend_overhang265 = getelementptr inbounds %struct.Repair_T, ptr %276, i32 0, i32 2
  %277 = load i32, ptr %tend_overhang265, align 8, !tbaa !18
  %cmp266 = icmp sgt i32 %277, 0
  br i1 %cmp266, label %if.then268, label %if.end327

if.then268:                                       ; preds = %if.end264
  %278 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints269 = getelementptr inbounds %struct.Path_T, ptr %278, i32 0, i32 17
  %279 = load ptr, ptr %endpoints269, align 8, !tbaa !26
  %call270 = call i32 @Intlist_head(ptr noundef %279)
  %cmp271 = icmp eq i32 %call270, 0
  br i1 %cmp271, label %land.lhs.true273, label %if.else279

land.lhs.true273:                                 ; preds = %if.then268
  %280 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches274 = getelementptr inbounds %struct.Path_T, ptr %280, i32 0, i32 19
  %281 = load ptr, ptr %nmismatches274, align 8, !tbaa !31
  %call275 = call i32 @Intlist_head(ptr noundef %281)
  %cmp276 = icmp eq i32 %call275, 0
  br i1 %cmp276, label %if.then278, label %if.else279

if.then278:                                       ; preds = %land.lhs.true273
  br label %if.end281

if.else279:                                       ; preds = %land.lhs.true273, %if.then268
  %282 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches280 = getelementptr inbounds %struct.Path_T, ptr %282, i32 0, i32 19
  %283 = load ptr, ptr %nmismatches280, align 8, !tbaa !31
  call void @Intlist_head_set(ptr noundef %283, i32 noundef -1)
  br label %if.end281

if.end281:                                        ; preds = %if.else279, %if.then278
  %284 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches282 = getelementptr inbounds %struct.Path_T, ptr %284, i32 0, i32 19
  %285 = load ptr, ptr %nmismatches282, align 8, !tbaa !31
  %286 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %call283 = call ptr @Intlistpool_push(ptr noundef %285, ptr noundef %286, i32 noundef -1)
  %287 = load ptr, ptr %path, align 8, !tbaa !5
  %nmismatches284 = getelementptr inbounds %struct.Path_T, ptr %287, i32 0, i32 19
  store ptr %call283, ptr %nmismatches284, align 8, !tbaa !31
  %288 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints285 = getelementptr inbounds %struct.Path_T, ptr %288, i32 0, i32 17
  %289 = load ptr, ptr %endpoints285, align 8, !tbaa !26
  %call286 = call i32 @Intlist_head(ptr noundef %289)
  %tobool = icmp ne i32 %call286, 0
  br i1 %tobool, label %land.lhs.true287, label %if.else293

land.lhs.true287:                                 ; preds = %if.end281
  %290 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches288 = getelementptr inbounds %struct.Path_T, ptr %290, i32 0, i32 20
  %291 = load ptr, ptr %ref_nmismatches288, align 8, !tbaa !32
  %call289 = call i32 @Intlist_head(ptr noundef %291)
  %cmp290 = icmp eq i32 %call289, 0
  br i1 %cmp290, label %if.then292, label %if.else293

if.then292:                                       ; preds = %land.lhs.true287
  br label %if.end295

if.else293:                                       ; preds = %land.lhs.true287, %if.end281
  %292 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches294 = getelementptr inbounds %struct.Path_T, ptr %292, i32 0, i32 20
  %293 = load ptr, ptr %ref_nmismatches294, align 8, !tbaa !32
  call void @Intlist_head_set(ptr noundef %293, i32 noundef -1)
  br label %if.end295

if.end295:                                        ; preds = %if.else293, %if.then292
  %294 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches296 = getelementptr inbounds %struct.Path_T, ptr %294, i32 0, i32 20
  %295 = load ptr, ptr %ref_nmismatches296, align 8, !tbaa !32
  %296 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %call297 = call ptr @Intlistpool_push(ptr noundef %295, ptr noundef %296, i32 noundef -1)
  %297 = load ptr, ptr %path, align 8, !tbaa !5
  %ref_nmismatches298 = getelementptr inbounds %struct.Path_T, ptr %297, i32 0, i32 20
  store ptr %call297, ptr %ref_nmismatches298, align 8, !tbaa !32
  %298 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints299 = getelementptr inbounds %struct.Path_T, ptr %298, i32 0, i32 17
  %299 = load ptr, ptr %endpoints299, align 8, !tbaa !26
  %call300 = call i32 @Intlist_second_value(ptr noundef %299)
  store i32 %call300, ptr %querypos, align 4, !tbaa !12
  %300 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tend_overhang301 = getelementptr inbounds %struct.Repair_T, ptr %300, i32 0, i32 2
  %301 = load i32, ptr %tend_overhang301, align 8, !tbaa !18
  %302 = load i32, ptr %querypos, align 4, !tbaa !12
  %cmp302 = icmp sge i32 %301, %302
  br i1 %cmp302, label %if.then304, label %if.else305

if.then304:                                       ; preds = %if.end295
  %303 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %304 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %305 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %306 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %307 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %303, ptr noundef %304, ptr noundef %305, ptr noundef %306, ptr noundef %307)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else305:                                       ; preds = %if.end295
  %308 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints306 = getelementptr inbounds %struct.Path_T, ptr %308, i32 0, i32 17
  %309 = load ptr, ptr %endpoints306, align 8, !tbaa !26
  %310 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tend_overhang307 = getelementptr inbounds %struct.Repair_T, ptr %310, i32 0, i32 2
  %311 = load i32, ptr %tend_overhang307, align 8, !tbaa !18
  call void @Intlist_head_set(ptr noundef %309, i32 noundef %311)
  %312 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints308 = getelementptr inbounds %struct.Path_T, ptr %312, i32 0, i32 17
  %313 = load ptr, ptr %endpoints308, align 8, !tbaa !26
  %314 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %call309 = call ptr @Intlistpool_push(ptr noundef %313, ptr noundef %314, i32 noundef 0)
  %315 = load ptr, ptr %path, align 8, !tbaa !5
  %endpoints310 = getelementptr inbounds %struct.Path_T, ptr %315, i32 0, i32 17
  store ptr %call309, ptr %endpoints310, align 8, !tbaa !26
  br label %if.end311

if.end311:                                        ; preds = %if.else305
  %316 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals312 = getelementptr inbounds %struct.Path_T, ptr %316, i32 0, i32 18
  %317 = load ptr, ptr %univdiagonals312, align 8, !tbaa !33
  %318 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %319 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals313 = getelementptr inbounds %struct.Path_T, ptr %319, i32 0, i32 18
  %320 = load ptr, ptr %univdiagonals313, align 8, !tbaa !33
  %call314 = call i64 @Uint8list_head(ptr noundef %320)
  %321 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tend_splice_distance315 = getelementptr inbounds %struct.Repair_T, ptr %321, i32 0, i32 4
  %322 = load i32, ptr %tend_splice_distance315, align 8, !tbaa !19
  %conv316 = zext i32 %322 to i64
  %sub317 = sub i64 %call314, %conv316
  %call318 = call ptr @Uint8listpool_push(ptr noundef %317, ptr noundef %318, i64 noundef %sub317)
  %323 = load ptr, ptr %path, align 8, !tbaa !5
  %univdiagonals319 = getelementptr inbounds %struct.Path_T, ptr %323, i32 0, i32 18
  store ptr %call318, ptr %univdiagonals319, align 8, !tbaa !33
  %324 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions320 = getelementptr inbounds %struct.Path_T, ptr %324, i32 0, i32 21
  %325 = load ptr, ptr %junctions320, align 8, !tbaa !34
  %326 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %327 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tend_splice_distance321 = getelementptr inbounds %struct.Repair_T, ptr %327, i32 0, i32 4
  %328 = load i32, ptr %tend_splice_distance321, align 8, !tbaa !19
  %329 = load i32, ptr %sensedir.addr, align 4, !tbaa !12
  %330 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %call322 = call ptr @Junction_new_splice(i32 noundef %328, i32 noundef %329, double noundef 2.000000e+00, double noundef 2.000000e+00, ptr noundef %330)
  %call323 = call ptr @Listpool_push(ptr noundef %325, ptr noundef %326, ptr noundef %call322)
  %331 = load ptr, ptr %path, align 8, !tbaa !5
  %junctions324 = getelementptr inbounds %struct.Path_T, ptr %331, i32 0, i32 21
  store ptr %call323, ptr %junctions324, align 8, !tbaa !34
  %332 = load ptr, ptr %path, align 8, !tbaa !5
  %qstart_alts325 = getelementptr inbounds %struct.Path_T, ptr %332, i32 0, i32 28
  %333 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  call void @Altsplice_free(ptr noundef %qstart_alts325, ptr noundef %333)
  %334 = load ptr, ptr %path, align 8, !tbaa !5
  %qstart_alts326 = getelementptr inbounds %struct.Path_T, ptr %334, i32 0, i32 28
  store ptr null, ptr %qstart_alts326, align 8, !tbaa !35
  br label %if.end327

if.end327:                                        ; preds = %if.end311, %if.end264
  br label %if.end328

if.end328:                                        ; preds = %if.end327, %if.end152
  %335 = load ptr, ptr %found_score.addr, align 8, !tbaa !5
  %336 = load ptr, ptr %path, align 8, !tbaa !5
  %337 = load ptr, ptr %query_compress_fwd.addr, align 8, !tbaa !5
  %338 = load ptr, ptr %query_compress_rev.addr, align 8, !tbaa !5
  %call329 = call i32 @Path_eval_nmatches(ptr noundef %335, ptr noundef %336, ptr noundef %337, ptr noundef %338)
  %339 = load ptr, ptr %path, align 8, !tbaa !5
  %score_within_trims = getelementptr inbounds %struct.Path_T, ptr %339, i32 0, i32 8
  %340 = load i32, ptr %score_within_trims, align 4, !tbaa !38
  %341 = load i32, ptr %nmismatches_allowed.addr, align 4, !tbaa !12
  %cmp330 = icmp sgt i32 %340, %341
  br i1 %cmp330, label %if.then332, label %if.else333

if.then332:                                       ; preds = %if.end328
  %342 = load ptr, ptr %intlistpool.addr, align 8, !tbaa !5
  %343 = load ptr, ptr %univcoordlistpool.addr, align 8, !tbaa !5
  %344 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %345 = load ptr, ptr %pathpool.addr, align 8, !tbaa !5
  %346 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Path_free(ptr noundef %path, ptr noundef %342, ptr noundef %343, ptr noundef %344, ptr noundef %345, ptr noundef %346)
  store ptr null, ptr %path, align 8, !tbaa !5
  br label %if.end351

if.else333:                                       ; preds = %if.end328
  %347 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %transcripts = getelementptr inbounds %struct.Repair_T, ptr %347, i32 0, i32 5
  %348 = load ptr, ptr %transcripts, align 8, !tbaa !20
  store ptr %348, ptr %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else333
  %349 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp334 = icmp ne ptr %349, null
  br i1 %cmp334, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %350 = load ptr, ptr %p, align 8, !tbaa !5
  %call336 = call ptr @List_head(ptr noundef %350)
  store ptr %call336, ptr %transcript, align 8, !tbaa !5
  %351 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tstart_overhang337 = getelementptr inbounds %struct.Repair_T, ptr %351, i32 0, i32 1
  %352 = load i32, ptr %tstart_overhang337, align 4, !tbaa !16
  %cmp338 = icmp sgt i32 %352, 0
  br i1 %cmp338, label %if.then340, label %if.end341

if.then340:                                       ; preds = %for.body
  %353 = load ptr, ptr %transcript, align 8, !tbaa !5
  %354 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %355 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Transcript_repair_tstart(ptr noundef %353, ptr noundef %354, ptr noundef %355)
  br label %if.end341

if.end341:                                        ; preds = %if.then340, %for.body
  %356 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tend_overhang342 = getelementptr inbounds %struct.Repair_T, ptr %356, i32 0, i32 2
  %357 = load i32, ptr %tend_overhang342, align 8, !tbaa !18
  %cmp343 = icmp sgt i32 %357, 0
  br i1 %cmp343, label %if.then345, label %if.end346

if.then345:                                       ; preds = %if.end341
  %358 = load ptr, ptr %transcript, align 8, !tbaa !5
  %359 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %360 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Transcript_repair_tend(ptr noundef %358, ptr noundef %359, ptr noundef %360)
  br label %if.end346

if.end346:                                        ; preds = %if.then345, %if.end341
  br label %for.inc

for.inc:                                          ; preds = %if.end346
  %361 = load ptr, ptr %p, align 8, !tbaa !5
  %call347 = call ptr @List_next(ptr noundef %361)
  store ptr %call347, ptr %p, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %for.cond
  %362 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %transcripts348 = getelementptr inbounds %struct.Repair_T, ptr %362, i32 0, i32 5
  %363 = load ptr, ptr %transcripts348, align 8, !tbaa !20
  %364 = load ptr, ptr %path, align 8, !tbaa !5
  %transcripts349 = getelementptr inbounds %struct.Path_T, ptr %364, i32 0, i32 51
  store ptr %363, ptr %transcripts349, align 8, !tbaa !40
  %365 = load ptr, ptr %path, align 8, !tbaa !5
  %invalid_transcripts = getelementptr inbounds %struct.Path_T, ptr %365, i32 0, i32 52
  %366 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %367 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Transcript_list_gc(ptr noundef %invalid_transcripts, ptr noundef %366, ptr noundef %367)
  %368 = load ptr, ptr %path, align 8, !tbaa !5
  %invalid_transcripts350 = getelementptr inbounds %struct.Path_T, ptr %368, i32 0, i32 52
  store ptr null, ptr %invalid_transcripts350, align 8, !tbaa !41
  br label %if.end351

if.end351:                                        ; preds = %for.end, %if.then332
  %369 = load ptr, ptr %path, align 8, !tbaa !5
  store ptr %369, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end351, %if.then304, %if.then223, %if.then113, %if.then29
  call void @llvm.lifetime.end.p0(i64 4, ptr %querypos) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcript) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #4
  %370 = load ptr, ptr %retval, align 8
  ret ptr %370
}

declare ptr @Path_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Intlist_head(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.Intlist_T, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %first, align 8, !tbaa !42
  ret i32 %1
}

declare void @Intlist_head_set(ptr noundef, i32 noundef) #2

declare ptr @Intlistpool_push(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Intlist_second_value(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.Intlist_T, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %rest, align 8, !tbaa !44
  %first = getelementptr inbounds %struct.Intlist_T, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %first, align 8, !tbaa !42
  ret i32 %2
}

declare void @Path_free(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @Uint8listpool_push(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @Uint8list_head(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.Uint8list_T, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %first, align 8, !tbaa !45
  ret i64 %1
}

declare ptr @Junction_new_splice(i32 noundef, i32 noundef, double noundef, double noundef, ptr noundef) #2

declare void @Altsplice_free(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @Intlist_reverse(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #4
  store ptr null, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.Intlist_T, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %rest, align 8, !tbaa !44
  store ptr %2, ptr %next, align 8, !tbaa !5
  %3 = load ptr, ptr %head, align 8, !tbaa !5
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest1 = getelementptr inbounds %struct.Intlist_T, ptr %4, i32 0, i32 1
  store ptr %3, ptr %rest1, align 8, !tbaa !44
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !5
  store ptr %5, ptr %head, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %next, align 8, !tbaa !5
  store ptr %6, ptr %list.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #4
  ret ptr %7
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @Uint8list_reverse(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #4
  store ptr null, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.Uint8list_T, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %rest, align 8, !tbaa !48
  store ptr %2, ptr %next, align 8, !tbaa !5
  %3 = load ptr, ptr %head, align 8, !tbaa !5
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest1 = getelementptr inbounds %struct.Uint8list_T, ptr %4, i32 0, i32 1
  store ptr %3, ptr %rest1, align 8, !tbaa !48
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !5
  store ptr %5, ptr %head, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %next, align 8, !tbaa !5
  store ptr %6, ptr %list.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #4
  ret ptr %7
}

declare i32 @Junction_ninserts(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_head(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.List_T, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %first, align 8, !tbaa !9
  ret ptr %1
}

declare i32 @Path_eval_nmatches(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @Transcript_repair_tstart(ptr noundef, ptr noundef, ptr noundef) #2

declare void @Transcript_repair_tend(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_next(ptr noundef %list) #0 {
entry:
  %retval = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.List_T, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %rest, align 8, !tbaa !11
  store ptr %2, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

declare void @Transcript_list_gc(ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!9 = !{!10, !6, i64 0}
!10 = !{!"List_T", !6, i64 0, !6, i64 8}
!11 = !{!10, !6, i64 8}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!15, !13, i64 0}
!15 = !{!"Repair_T", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !6, i64 24}
!16 = !{!15, !13, i64 4}
!17 = !{!15, !13, i64 12}
!18 = !{!15, !13, i64 8}
!19 = !{!15, !13, i64 16}
!20 = !{!15, !6, i64 24}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !22}
!26 = !{!27, !6, i64 96}
!27 = !{!"Path_T", !28, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !29, i64 24, !29, i64 32, !13, i64 40, !13, i64 44, !6, i64 48, !7, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !13, i64 72, !30, i64 80, !30, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !7, i64 136, !7, i64 137, !7, i64 140, !7, i64 144, !29, i64 152, !29, i64 160, !6, i64 168, !6, i64 176, !7, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !13, i64 248, !30, i64 256, !30, i64 264, !7, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !7, i64 328, !7, i64 332, !29, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !7, i64 376}
!28 = !{!"float", !7, i64 0}
!29 = !{!"double", !7, i64 0}
!30 = !{!"long", !7, i64 0}
!31 = !{!27, !6, i64 112}
!32 = !{!27, !6, i64 120}
!33 = !{!27, !6, i64 104}
!34 = !{!27, !6, i64 128}
!35 = !{!27, !6, i64 168}
!36 = !{!27, !13, i64 68}
!37 = !{!27, !6, i64 176}
!38 = !{!27, !13, i64 44}
!39 = distinct !{!39, !22}
!40 = !{!27, !6, i64 344}
!41 = !{!27, !6, i64 352}
!42 = !{!43, !13, i64 0}
!43 = !{!"Intlist_T", !13, i64 0, !6, i64 8}
!44 = !{!43, !6, i64 8}
!45 = !{!46, !30, i64 0}
!46 = !{!"Uint8list_T", !30, i64 0, !6, i64 8}
!47 = distinct !{!47, !22}
!48 = !{!46, !6, i64 8}
!49 = distinct !{!49, !22}
