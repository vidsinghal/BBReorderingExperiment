; ModuleID = 'samples/26.bc'
source_filename = ".././../src/matchpool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.List_T = type { ptr, ptr }
%struct.Matchpool_T = type { i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr }
%struct.Match_T = type { i64, i32, i32, double, i8, i32, i32, i8, i8 }

@.str = private unnamed_addr constant [24 x i8] c".././../src/matchpool.c\00", align 1
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
define dso_local void @Matchpool_free_memory(ptr noundef %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %matchptr = alloca ptr, align 8
  %listcellptr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %matchptr) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %listcellptr) #4
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchchunks = getelementptr inbounds %struct.Matchpool_T, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %matchchunks, align 8, !tbaa !12
  store ptr %1, ptr %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p, align 8, !tbaa !5
  %call = call ptr @List_head(ptr noundef %3)
  store ptr %call, ptr %matchptr, align 8, !tbaa !5
  %4 = load ptr, ptr %matchptr, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %4, ptr noundef @.str, i32 noundef 58)
  store ptr null, ptr %matchptr, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load ptr, ptr %p, align 8, !tbaa !5
  %call1 = call ptr @List_next(ptr noundef %5)
  store ptr %call1, ptr %p, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchchunks2 = getelementptr inbounds %struct.Matchpool_T, ptr %6, i32 0, i32 3
  call void @List_free_keep(ptr noundef %matchchunks2)
  %7 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellchunks = getelementptr inbounds %struct.Matchpool_T, ptr %7, i32 0, i32 9
  %8 = load ptr, ptr %listcellchunks, align 8, !tbaa !17
  store ptr %8, ptr %p, align 8, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc7, %for.end
  %9 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp4 = icmp ne ptr %9, null
  br i1 %cmp4, label %for.body5, label %for.end9

for.body5:                                        ; preds = %for.cond3
  %10 = load ptr, ptr %p, align 8, !tbaa !5
  %call6 = call ptr @List_head(ptr noundef %10)
  store ptr %call6, ptr %listcellptr, align 8, !tbaa !5
  %11 = load ptr, ptr %listcellptr, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %11, ptr noundef @.str, i32 noundef 63)
  store ptr null, ptr %listcellptr, align 8, !tbaa !5
  br label %for.inc7

for.inc7:                                         ; preds = %for.body5
  %12 = load ptr, ptr %p, align 8, !tbaa !5
  %call8 = call ptr @List_next(ptr noundef %12)
  store ptr %call8, ptr %p, align 8, !tbaa !5
  br label %for.cond3, !llvm.loop !18

for.end9:                                         ; preds = %for.cond3
  %13 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellchunks10 = getelementptr inbounds %struct.Matchpool_T, ptr %13, i32 0, i32 9
  call void @List_free_keep(ptr noundef %listcellchunks10)
  %14 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %nmatches = getelementptr inbounds %struct.Matchpool_T, ptr %14, i32 0, i32 0
  store i32 0, ptr %nmatches, align 8, !tbaa !19
  %15 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchctr = getelementptr inbounds %struct.Matchpool_T, ptr %15, i32 0, i32 1
  store i32 0, ptr %matchctr, align 4, !tbaa !20
  %16 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchchunks11 = getelementptr inbounds %struct.Matchpool_T, ptr %16, i32 0, i32 3
  store ptr null, ptr %matchchunks11, align 8, !tbaa !12
  %17 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %nlistcells = getelementptr inbounds %struct.Matchpool_T, ptr %17, i32 0, i32 6
  store i32 0, ptr %nlistcells, align 8, !tbaa !21
  %18 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellctr = getelementptr inbounds %struct.Matchpool_T, ptr %18, i32 0, i32 7
  store i32 0, ptr %listcellctr, align 4, !tbaa !22
  %19 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellchunks12 = getelementptr inbounds %struct.Matchpool_T, ptr %19, i32 0, i32 9
  store ptr null, ptr %listcellchunks12, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 8, ptr %listcellptr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %matchptr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

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

declare void @Mem_free(ptr noundef, ptr noundef, i32 noundef) #3

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

declare void @List_free_keep(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @Matchpool_free(ptr noundef %old) #1 {
entry:
  %old.addr = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !5
  call void @Matchpool_free_memory(ptr noundef %1)
  %2 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %3, ptr noundef @.str, i32 noundef 83)
  %4 = load ptr, ptr %old.addr, align 8, !tbaa !5
  store ptr null, ptr %4, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Matchpool_new() #1 {
entry:
  %new = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #4
  %call = call ptr @Mem_alloc(i64 noundef 80, ptr noundef @.str, i32 noundef 119)
  store ptr %call, ptr %new, align 8, !tbaa !5
  %0 = load ptr, ptr %new, align 8, !tbaa !5
  %nmatches = getelementptr inbounds %struct.Matchpool_T, ptr %0, i32 0, i32 0
  store i32 0, ptr %nmatches, align 8, !tbaa !19
  %1 = load ptr, ptr %new, align 8, !tbaa !5
  %matchctr = getelementptr inbounds %struct.Matchpool_T, ptr %1, i32 0, i32 1
  store i32 0, ptr %matchctr, align 4, !tbaa !20
  %2 = load ptr, ptr %new, align 8, !tbaa !5
  %matchchunks = getelementptr inbounds %struct.Matchpool_T, ptr %2, i32 0, i32 3
  store ptr null, ptr %matchchunks, align 8, !tbaa !12
  %3 = load ptr, ptr %new, align 8, !tbaa !5
  %nlistcells = getelementptr inbounds %struct.Matchpool_T, ptr %3, i32 0, i32 6
  store i32 0, ptr %nlistcells, align 8, !tbaa !21
  %4 = load ptr, ptr %new, align 8, !tbaa !5
  %listcellctr = getelementptr inbounds %struct.Matchpool_T, ptr %4, i32 0, i32 7
  store i32 0, ptr %listcellctr, align 4, !tbaa !22
  %5 = load ptr, ptr %new, align 8, !tbaa !5
  %listcellchunks = getelementptr inbounds %struct.Matchpool_T, ptr %5, i32 0, i32 9
  store ptr null, ptr %listcellchunks, align 8, !tbaa !17
  %6 = load ptr, ptr %new, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #4
  ret ptr %6
}

declare ptr @Mem_alloc(i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @Matchpool_reset(ptr noundef %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchctr = getelementptr inbounds %struct.Matchpool_T, ptr %0, i32 0, i32 1
  store i32 0, ptr %matchctr, align 4, !tbaa !20
  %1 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellctr = getelementptr inbounds %struct.Matchpool_T, ptr %1, i32 0, i32 7
  store i32 0, ptr %listcellctr, align 4, !tbaa !22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Matchpool_save(ptr noundef %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchctr = getelementptr inbounds %struct.Matchpool_T, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %matchctr, align 4, !tbaa !20
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchctr_save = getelementptr inbounds %struct.Matchpool_T, ptr %2, i32 0, i32 4
  store i32 %1, ptr %matchctr_save, align 8, !tbaa !23
  %3 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchptr = getelementptr inbounds %struct.Matchpool_T, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %matchptr, align 8, !tbaa !24
  %5 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchptr_save = getelementptr inbounds %struct.Matchpool_T, ptr %5, i32 0, i32 5
  store ptr %4, ptr %matchptr_save, align 8, !tbaa !25
  %6 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellctr = getelementptr inbounds %struct.Matchpool_T, ptr %6, i32 0, i32 7
  %7 = load i32, ptr %listcellctr, align 4, !tbaa !22
  %8 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellctr_save = getelementptr inbounds %struct.Matchpool_T, ptr %8, i32 0, i32 10
  store i32 %7, ptr %listcellctr_save, align 8, !tbaa !26
  %9 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellptr = getelementptr inbounds %struct.Matchpool_T, ptr %9, i32 0, i32 8
  %10 = load ptr, ptr %listcellptr, align 8, !tbaa !27
  %11 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellptr_save = getelementptr inbounds %struct.Matchpool_T, ptr %11, i32 0, i32 11
  store ptr %10, ptr %listcellptr_save, align 8, !tbaa !28
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Matchpool_restore(ptr noundef %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchctr_save = getelementptr inbounds %struct.Matchpool_T, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %matchctr_save, align 8, !tbaa !23
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchctr = getelementptr inbounds %struct.Matchpool_T, ptr %2, i32 0, i32 1
  store i32 %1, ptr %matchctr, align 4, !tbaa !20
  %3 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchptr_save = getelementptr inbounds %struct.Matchpool_T, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %matchptr_save, align 8, !tbaa !25
  %5 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchptr = getelementptr inbounds %struct.Matchpool_T, ptr %5, i32 0, i32 2
  store ptr %4, ptr %matchptr, align 8, !tbaa !24
  %6 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellctr_save = getelementptr inbounds %struct.Matchpool_T, ptr %6, i32 0, i32 10
  %7 = load i32, ptr %listcellctr_save, align 8, !tbaa !26
  %8 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellctr = getelementptr inbounds %struct.Matchpool_T, ptr %8, i32 0, i32 7
  store i32 %7, ptr %listcellctr, align 4, !tbaa !22
  %9 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellptr_save = getelementptr inbounds %struct.Matchpool_T, ptr %9, i32 0, i32 11
  %10 = load ptr, ptr %listcellptr_save, align 8, !tbaa !28
  %11 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellptr = getelementptr inbounds %struct.Matchpool_T, ptr %11, i32 0, i32 8
  store ptr %10, ptr %listcellptr, align 8, !tbaa !27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Matchpool_push(ptr noundef %list, ptr noundef %this, i32 noundef %querypos, i32 noundef %querylength, i8 noundef zeroext %forwardp, i8 noundef zeroext %fivep, i64 noundef %diagonal, ptr noundef %chromosome_iit) #1 {
entry:
  %list.addr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %querypos.addr = alloca i32, align 4
  %querylength.addr = alloca i32, align 4
  %forwardp.addr = alloca i8, align 1
  %fivep.addr = alloca i8, align 1
  %diagonal.addr = alloca i64, align 8
  %chromosome_iit.addr = alloca ptr, align 8
  %listcell = alloca ptr, align 8
  %match = alloca ptr, align 8
  %p = alloca ptr, align 8
  %n = alloca i32, align 4
  %index = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  store i32 %querypos, ptr %querypos.addr, align 4, !tbaa !29
  store i32 %querylength, ptr %querylength.addr, align 4, !tbaa !29
  store i8 %forwardp, ptr %forwardp.addr, align 1, !tbaa !30
  store i8 %fivep, ptr %fivep.addr, align 1, !tbaa !30
  store i64 %diagonal, ptr %diagonal.addr, align 8, !tbaa !31
  store ptr %chromosome_iit, ptr %chromosome_iit.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %listcell) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %match) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #4
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchctr = getelementptr inbounds %struct.Matchpool_T, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %matchctr, align 4, !tbaa !20
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %nmatches = getelementptr inbounds %struct.Matchpool_T, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %nmatches, align 8, !tbaa !19
  %cmp = icmp sge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %call = call ptr @add_new_matchchunk(ptr noundef %4)
  %5 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchptr = getelementptr inbounds %struct.Matchpool_T, ptr %5, i32 0, i32 2
  store ptr %call, ptr %matchptr, align 8, !tbaa !24
  br label %if.end9

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchctr1 = getelementptr inbounds %struct.Matchpool_T, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %matchctr1, align 4, !tbaa !20
  %rem = srem i32 %7, 16384
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %8 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %nmatches4 = getelementptr inbounds %struct.Matchpool_T, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %nmatches4, align 8, !tbaa !19
  %sub = sub nsw i32 %9, 16384
  store i32 %sub, ptr %n, align 4, !tbaa !29
  %10 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchchunks = getelementptr inbounds %struct.Matchpool_T, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %matchchunks, align 8, !tbaa !12
  store ptr %11, ptr %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %12 = load i32, ptr %n, align 4, !tbaa !29
  %13 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchctr5 = getelementptr inbounds %struct.Matchpool_T, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %matchctr5, align 4, !tbaa !20
  %cmp6 = icmp sgt i32 %12, %14
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load ptr, ptr %p, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.List_T, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %rest, align 8, !tbaa !11
  store ptr %16, ptr %p, align 8, !tbaa !5
  %17 = load i32, ptr %n, align 4, !tbaa !29
  %sub7 = sub nsw i32 %17, 16384
  store i32 %sub7, ptr %n, align 4, !tbaa !29
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %p, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.List_T, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %first, align 8, !tbaa !9
  %20 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchptr8 = getelementptr inbounds %struct.Matchpool_T, ptr %20, i32 0, i32 2
  store ptr %19, ptr %matchptr8, align 8, !tbaa !24
  br label %if.end

if.end:                                           ; preds = %for.end, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  %21 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchptr10 = getelementptr inbounds %struct.Matchpool_T, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %matchptr10, align 8, !tbaa !24
  %incdec.ptr = getelementptr inbounds %struct.Match_T, ptr %22, i32 1
  store ptr %incdec.ptr, ptr %matchptr10, align 8, !tbaa !24
  store ptr %22, ptr %match, align 8, !tbaa !5
  %23 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchctr11 = getelementptr inbounds %struct.Matchpool_T, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %matchctr11, align 4, !tbaa !20
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %matchctr11, align 4, !tbaa !20
  %25 = load i32, ptr %querypos.addr, align 4, !tbaa !29
  %26 = load ptr, ptr %match, align 8, !tbaa !5
  %querypos12 = getelementptr inbounds %struct.Match_T, ptr %26, i32 0, i32 5
  store i32 %25, ptr %querypos12, align 4, !tbaa !34
  %27 = load ptr, ptr %match, align 8, !tbaa !5
  %weight = getelementptr inbounds %struct.Match_T, ptr %27, i32 0, i32 3
  store double 0.000000e+00, ptr %weight, align 8, !tbaa !37
  %28 = load i8, ptr %forwardp.addr, align 1, !tbaa !30
  %29 = load ptr, ptr %match, align 8, !tbaa !5
  %forwardp13 = getelementptr inbounds %struct.Match_T, ptr %29, i32 0, i32 7
  store i8 %28, ptr %forwardp13, align 4, !tbaa !38
  %conv = zext i8 %28 to i32
  %cmp14 = icmp eq i32 %conv, 1
  br i1 %cmp14, label %if.then16, label %if.else20

if.then16:                                        ; preds = %if.end9
  %30 = load i64, ptr %diagonal.addr, align 8, !tbaa !31
  %31 = load i32, ptr %querypos.addr, align 4, !tbaa !29
  %conv17 = sext i32 %31 to i64
  %add = add i64 %30, %conv17
  %32 = load i32, ptr %querylength.addr, align 4, !tbaa !29
  %conv18 = sext i32 %32 to i64
  %sub19 = sub i64 %add, %conv18
  %33 = load ptr, ptr %match, align 8, !tbaa !5
  %position = getelementptr inbounds %struct.Match_T, ptr %33, i32 0, i32 0
  store i64 %sub19, ptr %position, align 8, !tbaa !39
  br label %if.end24

if.else20:                                        ; preds = %if.end9
  %34 = load i64, ptr %diagonal.addr, align 8, !tbaa !31
  %35 = load i32, ptr %querypos.addr, align 4, !tbaa !29
  %conv21 = sext i32 %35 to i64
  %sub22 = sub i64 %34, %conv21
  %36 = load ptr, ptr %match, align 8, !tbaa !5
  %position23 = getelementptr inbounds %struct.Match_T, ptr %36, i32 0, i32 0
  store i64 %sub22, ptr %position23, align 8, !tbaa !39
  br label %if.end24

if.end24:                                         ; preds = %if.else20, %if.then16
  %37 = load i8, ptr %fivep.addr, align 1, !tbaa !30
  %38 = load ptr, ptr %match, align 8, !tbaa !5
  %fivep25 = getelementptr inbounds %struct.Match_T, ptr %38, i32 0, i32 8
  store i8 %37, ptr %fivep25, align 1, !tbaa !40
  %39 = load ptr, ptr %match, align 8, !tbaa !5
  %npairings = getelementptr inbounds %struct.Match_T, ptr %39, i32 0, i32 6
  store i32 0, ptr %npairings, align 8, !tbaa !41
  %40 = load ptr, ptr %chromosome_iit.addr, align 8, !tbaa !5
  %cmp26 = icmp eq ptr %40, null
  br i1 %cmp26, label %if.then28, label %if.else31

if.then28:                                        ; preds = %if.end24
  %41 = load ptr, ptr %match, align 8, !tbaa !5
  %chrnum = getelementptr inbounds %struct.Match_T, ptr %41, i32 0, i32 1
  store i32 0, ptr %chrnum, align 8, !tbaa !42
  %42 = load ptr, ptr %match, align 8, !tbaa !5
  %position29 = getelementptr inbounds %struct.Match_T, ptr %42, i32 0, i32 0
  %43 = load i64, ptr %position29, align 8, !tbaa !39
  %conv30 = trunc i64 %43 to i32
  %44 = load ptr, ptr %match, align 8, !tbaa !5
  %chrpos = getelementptr inbounds %struct.Match_T, ptr %44, i32 0, i32 2
  store i32 %conv30, ptr %chrpos, align 4, !tbaa !43
  br label %if.end42

if.else31:                                        ; preds = %if.end24
  %45 = load ptr, ptr %chromosome_iit.addr, align 8, !tbaa !5
  %46 = load ptr, ptr %match, align 8, !tbaa !5
  %position32 = getelementptr inbounds %struct.Match_T, ptr %46, i32 0, i32 0
  %47 = load i64, ptr %position32, align 8, !tbaa !39
  %48 = load ptr, ptr %match, align 8, !tbaa !5
  %position33 = getelementptr inbounds %struct.Match_T, ptr %48, i32 0, i32 0
  %49 = load i64, ptr %position33, align 8, !tbaa !39
  %call34 = call i32 @Univ_IIT_get_one(ptr noundef %45, i64 noundef %47, i64 noundef %49)
  store i32 %call34, ptr %index, align 4, !tbaa !29
  %50 = load ptr, ptr %match, align 8, !tbaa !5
  %position35 = getelementptr inbounds %struct.Match_T, ptr %50, i32 0, i32 0
  %51 = load i64, ptr %position35, align 8, !tbaa !39
  %52 = load ptr, ptr %chromosome_iit.addr, align 8, !tbaa !5
  %53 = load i32, ptr %index, align 4, !tbaa !29
  %call36 = call ptr @Univ_IIT_interval(ptr noundef %52, i32 noundef %53)
  %call37 = call i64 @Univinterval_low(ptr noundef %call36)
  %sub38 = sub i64 %51, %call37
  %conv39 = trunc i64 %sub38 to i32
  %54 = load ptr, ptr %match, align 8, !tbaa !5
  %chrpos40 = getelementptr inbounds %struct.Match_T, ptr %54, i32 0, i32 2
  store i32 %conv39, ptr %chrpos40, align 4, !tbaa !43
  %55 = load i32, ptr %index, align 4, !tbaa !29
  %56 = load ptr, ptr %match, align 8, !tbaa !5
  %chrnum41 = getelementptr inbounds %struct.Match_T, ptr %56, i32 0, i32 1
  store i32 %55, ptr %chrnum41, align 8, !tbaa !42
  br label %if.end42

if.end42:                                         ; preds = %if.else31, %if.then28
  %57 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellctr = getelementptr inbounds %struct.Matchpool_T, ptr %57, i32 0, i32 7
  %58 = load i32, ptr %listcellctr, align 4, !tbaa !22
  %59 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %nlistcells = getelementptr inbounds %struct.Matchpool_T, ptr %59, i32 0, i32 6
  %60 = load i32, ptr %nlistcells, align 8, !tbaa !21
  %cmp43 = icmp sge i32 %58, %60
  br i1 %cmp43, label %if.then45, label %if.else47

if.then45:                                        ; preds = %if.end42
  %61 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %call46 = call ptr @add_new_listcellchunk(ptr noundef %61)
  %62 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellptr = getelementptr inbounds %struct.Matchpool_T, ptr %62, i32 0, i32 8
  store ptr %call46, ptr %listcellptr, align 8, !tbaa !27
  br label %if.end67

if.else47:                                        ; preds = %if.end42
  %63 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellctr48 = getelementptr inbounds %struct.Matchpool_T, ptr %63, i32 0, i32 7
  %64 = load i32, ptr %listcellctr48, align 4, !tbaa !22
  %rem49 = srem i32 %64, 16384
  %cmp50 = icmp eq i32 %rem49, 0
  br i1 %cmp50, label %if.then52, label %if.end66

if.then52:                                        ; preds = %if.else47
  %65 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %nlistcells53 = getelementptr inbounds %struct.Matchpool_T, ptr %65, i32 0, i32 6
  %66 = load i32, ptr %nlistcells53, align 8, !tbaa !21
  %sub54 = sub nsw i32 %66, 16384
  store i32 %sub54, ptr %n, align 4, !tbaa !29
  %67 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellchunks = getelementptr inbounds %struct.Matchpool_T, ptr %67, i32 0, i32 9
  %68 = load ptr, ptr %listcellchunks, align 8, !tbaa !17
  store ptr %68, ptr %p, align 8, !tbaa !5
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc60, %if.then52
  %69 = load i32, ptr %n, align 4, !tbaa !29
  %70 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellctr56 = getelementptr inbounds %struct.Matchpool_T, ptr %70, i32 0, i32 7
  %71 = load i32, ptr %listcellctr56, align 4, !tbaa !22
  %cmp57 = icmp sgt i32 %69, %71
  br i1 %cmp57, label %for.body59, label %for.end63

for.body59:                                       ; preds = %for.cond55
  br label %for.inc60

for.inc60:                                        ; preds = %for.body59
  %72 = load ptr, ptr %p, align 8, !tbaa !5
  %rest61 = getelementptr inbounds %struct.List_T, ptr %72, i32 0, i32 1
  %73 = load ptr, ptr %rest61, align 8, !tbaa !11
  store ptr %73, ptr %p, align 8, !tbaa !5
  %74 = load i32, ptr %n, align 4, !tbaa !29
  %sub62 = sub nsw i32 %74, 16384
  store i32 %sub62, ptr %n, align 4, !tbaa !29
  br label %for.cond55, !llvm.loop !44

for.end63:                                        ; preds = %for.cond55
  %75 = load ptr, ptr %p, align 8, !tbaa !5
  %first64 = getelementptr inbounds %struct.List_T, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %first64, align 8, !tbaa !9
  %77 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellptr65 = getelementptr inbounds %struct.Matchpool_T, ptr %77, i32 0, i32 8
  store ptr %76, ptr %listcellptr65, align 8, !tbaa !27
  br label %if.end66

if.end66:                                         ; preds = %for.end63, %if.else47
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then45
  %78 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellptr68 = getelementptr inbounds %struct.Matchpool_T, ptr %78, i32 0, i32 8
  %79 = load ptr, ptr %listcellptr68, align 8, !tbaa !27
  %incdec.ptr69 = getelementptr inbounds %struct.List_T, ptr %79, i32 1
  store ptr %incdec.ptr69, ptr %listcellptr68, align 8, !tbaa !27
  store ptr %79, ptr %listcell, align 8, !tbaa !5
  %80 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellctr70 = getelementptr inbounds %struct.Matchpool_T, ptr %80, i32 0, i32 7
  %81 = load i32, ptr %listcellctr70, align 4, !tbaa !22
  %inc71 = add nsw i32 %81, 1
  store i32 %inc71, ptr %listcellctr70, align 4, !tbaa !22
  %82 = load ptr, ptr %match, align 8, !tbaa !5
  %83 = load ptr, ptr %listcell, align 8, !tbaa !5
  %first72 = getelementptr inbounds %struct.List_T, ptr %83, i32 0, i32 0
  store ptr %82, ptr %first72, align 8, !tbaa !9
  %84 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %85 = load ptr, ptr %listcell, align 8, !tbaa !5
  %rest73 = getelementptr inbounds %struct.List_T, ptr %85, i32 0, i32 1
  store ptr %84, ptr %rest73, align 8, !tbaa !11
  %86 = load ptr, ptr %listcell, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %match) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %listcell) #4
  ret ptr %86
}

; Function Attrs: nounwind uwtable
define internal ptr @add_new_matchchunk(ptr noundef %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %chunk = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk) #4
  %call = call ptr @Mem_alloc(i64 noundef 655360, ptr noundef @.str, i32 noundef 95)
  store ptr %call, ptr %chunk, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchchunks = getelementptr inbounds %struct.Matchpool_T, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %matchchunks, align 8, !tbaa !12
  %2 = load ptr, ptr %chunk, align 8, !tbaa !5
  %call1 = call ptr @List_push_keep(ptr noundef %1, ptr noundef %2)
  %3 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %matchchunks2 = getelementptr inbounds %struct.Matchpool_T, ptr %3, i32 0, i32 3
  store ptr %call1, ptr %matchchunks2, align 8, !tbaa !12
  %4 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %nmatches = getelementptr inbounds %struct.Matchpool_T, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %nmatches, align 8, !tbaa !19
  %add = add nsw i32 %5, 16384
  store i32 %add, ptr %nmatches, align 8, !tbaa !19
  %6 = load ptr, ptr %chunk, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk) #4
  ret ptr %6
}

declare i32 @Univ_IIT_get_one(ptr noundef, i64 noundef, i64 noundef) #3

declare i64 @Univinterval_low(ptr noundef) #3

declare ptr @Univ_IIT_interval(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @add_new_listcellchunk(ptr noundef %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %chunk = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %chunk) #4
  %call = call ptr @Mem_alloc(i64 noundef 262144, ptr noundef @.str, i32 noundef 108)
  store ptr %call, ptr %chunk, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellchunks = getelementptr inbounds %struct.Matchpool_T, ptr %0, i32 0, i32 9
  %1 = load ptr, ptr %listcellchunks, align 8, !tbaa !17
  %2 = load ptr, ptr %chunk, align 8, !tbaa !5
  %call1 = call ptr @List_push_keep(ptr noundef %1, ptr noundef %2)
  %3 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellchunks2 = getelementptr inbounds %struct.Matchpool_T, ptr %3, i32 0, i32 9
  store ptr %call1, ptr %listcellchunks2, align 8, !tbaa !17
  %4 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %nlistcells = getelementptr inbounds %struct.Matchpool_T, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %nlistcells, align 8, !tbaa !21
  %add = add nsw i32 %5, 16384
  store i32 %add, ptr %nlistcells, align 8, !tbaa !21
  %6 = load ptr, ptr %chunk, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %chunk) #4
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Matchpool_push_existing(ptr noundef %list, ptr noundef %this, ptr noundef %match) #1 {
entry:
  %list.addr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %match.addr = alloca ptr, align 8
  %listcell = alloca ptr, align 8
  %p = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  store ptr %match, ptr %match.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %listcell) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellctr = getelementptr inbounds %struct.Matchpool_T, ptr %0, i32 0, i32 7
  %1 = load i32, ptr %listcellctr, align 4, !tbaa !22
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %nlistcells = getelementptr inbounds %struct.Matchpool_T, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %nlistcells, align 8, !tbaa !21
  %cmp = icmp sge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %call = call ptr @add_new_listcellchunk(ptr noundef %4)
  %5 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellptr = getelementptr inbounds %struct.Matchpool_T, ptr %5, i32 0, i32 8
  store ptr %call, ptr %listcellptr, align 8, !tbaa !27
  br label %if.end9

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellctr1 = getelementptr inbounds %struct.Matchpool_T, ptr %6, i32 0, i32 7
  %7 = load i32, ptr %listcellctr1, align 4, !tbaa !22
  %rem = srem i32 %7, 16384
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %8 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %nlistcells4 = getelementptr inbounds %struct.Matchpool_T, ptr %8, i32 0, i32 6
  %9 = load i32, ptr %nlistcells4, align 8, !tbaa !21
  %sub = sub nsw i32 %9, 16384
  store i32 %sub, ptr %n, align 4, !tbaa !29
  %10 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellchunks = getelementptr inbounds %struct.Matchpool_T, ptr %10, i32 0, i32 9
  %11 = load ptr, ptr %listcellchunks, align 8, !tbaa !17
  store ptr %11, ptr %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %12 = load i32, ptr %n, align 4, !tbaa !29
  %13 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellctr5 = getelementptr inbounds %struct.Matchpool_T, ptr %13, i32 0, i32 7
  %14 = load i32, ptr %listcellctr5, align 4, !tbaa !22
  %cmp6 = icmp sgt i32 %12, %14
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load ptr, ptr %p, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.List_T, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %rest, align 8, !tbaa !11
  store ptr %16, ptr %p, align 8, !tbaa !5
  %17 = load i32, ptr %n, align 4, !tbaa !29
  %sub7 = sub nsw i32 %17, 16384
  store i32 %sub7, ptr %n, align 4, !tbaa !29
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %p, align 8, !tbaa !5
  %first = getelementptr inbounds %struct.List_T, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %first, align 8, !tbaa !9
  %20 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellptr8 = getelementptr inbounds %struct.Matchpool_T, ptr %20, i32 0, i32 8
  store ptr %19, ptr %listcellptr8, align 8, !tbaa !27
  br label %if.end

if.end:                                           ; preds = %for.end, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  %21 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellptr10 = getelementptr inbounds %struct.Matchpool_T, ptr %21, i32 0, i32 8
  %22 = load ptr, ptr %listcellptr10, align 8, !tbaa !27
  %incdec.ptr = getelementptr inbounds %struct.List_T, ptr %22, i32 1
  store ptr %incdec.ptr, ptr %listcellptr10, align 8, !tbaa !27
  store ptr %22, ptr %listcell, align 8, !tbaa !5
  %23 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %listcellctr11 = getelementptr inbounds %struct.Matchpool_T, ptr %23, i32 0, i32 7
  %24 = load i32, ptr %listcellctr11, align 4, !tbaa !22
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %listcellctr11, align 4, !tbaa !22
  %25 = load ptr, ptr %match.addr, align 8, !tbaa !5
  %26 = load ptr, ptr %listcell, align 8, !tbaa !5
  %first12 = getelementptr inbounds %struct.List_T, ptr %26, i32 0, i32 0
  store ptr %25, ptr %first12, align 8, !tbaa !9
  %27 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %listcell, align 8, !tbaa !5
  %rest13 = getelementptr inbounds %struct.List_T, ptr %28, i32 0, i32 1
  store ptr %27, ptr %rest13, align 8, !tbaa !11
  %29 = load ptr, ptr %listcell, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %listcell) #4
  ret ptr %29
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Matchpool_pop(ptr noundef %list, ptr noundef %x) #1 {
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
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

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
  %6 = load ptr, ptr %head, align 8, !tbaa !5
  store ptr %6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %list.addr, align 8, !tbaa !5
  store ptr %7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #4
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Matchpool_transfer(ptr noundef %dest, ptr noundef %source) #1 {
entry:
  %dest.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8, !tbaa !5
  store ptr %source, ptr %source.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #4
  %0 = load ptr, ptr %source.addr, align 8, !tbaa !5
  store ptr %0, ptr %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.List_T, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %rest, align 8, !tbaa !11
  store ptr %3, ptr %next, align 8, !tbaa !5
  %4 = load ptr, ptr %dest.addr, align 8, !tbaa !5
  %5 = load ptr, ptr %p, align 8, !tbaa !5
  %rest1 = getelementptr inbounds %struct.List_T, ptr %5, i32 0, i32 1
  store ptr %4, ptr %rest1, align 8, !tbaa !11
  %6 = load ptr, ptr %p, align 8, !tbaa !5
  store ptr %6, ptr %dest.addr, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load ptr, ptr %next, align 8, !tbaa !5
  store ptr %7, ptr %p, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %dest.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #4
  ret ptr %8
}

attributes #0 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
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
!12 = !{!13, !6, i64 16}
!13 = !{!"Matchpool_T", !14, i64 0, !14, i64 4, !6, i64 8, !6, i64 16, !14, i64 24, !6, i64 32, !14, i64 40, !14, i64 44, !6, i64 48, !6, i64 56, !14, i64 64, !6, i64 72}
!14 = !{!"int", !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!13, !6, i64 56}
!18 = distinct !{!18, !16}
!19 = !{!13, !14, i64 0}
!20 = !{!13, !14, i64 4}
!21 = !{!13, !14, i64 40}
!22 = !{!13, !14, i64 44}
!23 = !{!13, !14, i64 24}
!24 = !{!13, !6, i64 8}
!25 = !{!13, !6, i64 32}
!26 = !{!13, !14, i64 64}
!27 = !{!13, !6, i64 48}
!28 = !{!13, !6, i64 72}
!29 = !{!14, !14, i64 0}
!30 = !{!7, !7, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"long", !7, i64 0}
!33 = distinct !{!33, !16}
!34 = !{!35, !14, i64 28}
!35 = !{!"Match_T", !32, i64 0, !14, i64 8, !14, i64 12, !36, i64 16, !7, i64 24, !14, i64 28, !14, i64 32, !7, i64 36, !7, i64 37}
!36 = !{!"double", !7, i64 0}
!37 = !{!35, !36, i64 16}
!38 = !{!35, !7, i64 36}
!39 = !{!35, !32, i64 0}
!40 = !{!35, !7, i64 37}
!41 = !{!35, !14, i64 32}
!42 = !{!35, !14, i64 8}
!43 = !{!35, !14, i64 12}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
