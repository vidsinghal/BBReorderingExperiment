; ModuleID = 'samples/952.bc'
source_filename = ".././../src/transcript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.List_T = type { ptr, ptr }
%struct.Transcript_T = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.Path_T = type { float, i32, i32, i32, i32, double, double, i32, i32, ptr, i8, i32, i32, i32, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, double, double, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i64, i64, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, double, ptr, ptr, ptr, ptr, i32 }
%struct.Exon_T = type { i32, i8, i8 }

@.str = private unnamed_addr constant [30 x i8] c"Expecting ascending, but got\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c".././../src/transcript.c\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c" %u[%d|%d..%d|%d]:\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@pairmax_transcriptome = internal global i32 0, align 4
@output_type = internal global i32 0, align 4
@transcriptome = internal global ptr null, align 8
@transcript_iit = internal global ptr null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c".././../src/list.h\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%s:%d..%d:\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"S:\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"U:\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"B:\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"*:\00", align 1
@stderr = external global ptr, align 8
@.str.10 = private unnamed_addr constant [69 x i8] c"Same transcript %d is in both transcripts3 and invalid_transcripts3\0A\00", align 1
@.str.11 = private unnamed_addr constant [69 x i8] c"Same transcript %d is in both transcripts5 and invalid_transcripts5\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"Transcript %u is in intersection but not superset\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_push_keep(ptr noundef %list, ptr noundef %x) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #5
  %call = call ptr @Mem_alloc(i64 noundef 16, ptr noundef @.str.4, i32 noundef 66)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #5
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #5
  %call = call ptr @Mem_alloc(i64 noundef 16, ptr noundef @.str.4, i32 noundef 75)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #5
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #5
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
  call void @Mem_free(ptr noundef %6, ptr noundef @.str.4, i32 noundef 137)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #5
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local void @Transcript_list_gc(ptr noundef %list, ptr noundef %listpool, ptr noundef %transcriptpool) #1 {
entry:
  %list.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %old = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #5
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %1, ptr %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p, align 8, !tbaa !5
  %call = call ptr @List_head(ptr noundef %3)
  store ptr %call, ptr %old, align 8, !tbaa !5
  %4 = load ptr, ptr %old, align 8, !tbaa !5
  %exons = getelementptr inbounds %struct.Transcript_T, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Exon_list_gc(ptr noundef %exons, ptr noundef %5, ptr noundef %6)
  %7 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Transcriptpool_free_transcript(ptr noundef %old, ptr noundef %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load ptr, ptr %p, align 8, !tbaa !5
  %call1 = call ptr @List_next(ptr noundef %8)
  store ptr %call1, ptr %p, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %10 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  call void @Listpool_free_list(ptr noundef %9, ptr noundef %10)
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
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

declare void @Exon_list_gc(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @Transcriptpool_free_transcript(ptr noundef %old, ptr noundef %this) #0 {
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Transcript_new(i32 noundef %num, i32 noundef %transcript_genestrand, i32 noundef %tstart, i32 noundef %tend, i32 noundef %tstart_overhang, i32 noundef %tend_overhang, ptr noundef %exons, i32 noundef %nexons, i32 noundef %trlength, ptr noundef %transcriptpool) #1 {
entry:
  %num.addr = alloca i32, align 4
  %transcript_genestrand.addr = alloca i32, align 4
  %tstart.addr = alloca i32, align 4
  %tend.addr = alloca i32, align 4
  %tstart_overhang.addr = alloca i32, align 4
  %tend_overhang.addr = alloca i32, align 4
  %exons.addr = alloca ptr, align 8
  %nexons.addr = alloca i32, align 4
  %trlength.addr = alloca i32, align 4
  %transcriptpool.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  store i32 %num, ptr %num.addr, align 4, !tbaa !14
  store i32 %transcript_genestrand, ptr %transcript_genestrand.addr, align 4, !tbaa !14
  store i32 %tstart, ptr %tstart.addr, align 4, !tbaa !14
  store i32 %tend, ptr %tend.addr, align 4, !tbaa !14
  store i32 %tstart_overhang, ptr %tstart_overhang.addr, align 4, !tbaa !14
  store i32 %tend_overhang, ptr %tend_overhang.addr, align 4, !tbaa !14
  store ptr %exons, ptr %exons.addr, align 8, !tbaa !5
  store i32 %nexons, ptr %nexons.addr, align 4, !tbaa !14
  store i32 %trlength, ptr %trlength.addr, align 4, !tbaa !14
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #5
  %0 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %call = call ptr @Transcriptpool_new_transcript(ptr noundef %0)
  store ptr %call, ptr %new, align 8, !tbaa !5
  %1 = load i32, ptr %num.addr, align 4, !tbaa !14
  %2 = load ptr, ptr %new, align 8, !tbaa !5
  %num1 = getelementptr inbounds %struct.Transcript_T, ptr %2, i32 0, i32 0
  store i32 %1, ptr %num1, align 8, !tbaa !16
  %3 = load i32, ptr %transcript_genestrand.addr, align 4, !tbaa !14
  %4 = load ptr, ptr %new, align 8, !tbaa !5
  %genestrand = getelementptr inbounds %struct.Transcript_T, ptr %4, i32 0, i32 1
  store i32 %3, ptr %genestrand, align 4, !tbaa !18
  %5 = load i32, ptr %tstart.addr, align 4, !tbaa !14
  %6 = load ptr, ptr %new, align 8, !tbaa !5
  %tstart2 = getelementptr inbounds %struct.Transcript_T, ptr %6, i32 0, i32 2
  store i32 %5, ptr %tstart2, align 8, !tbaa !19
  %7 = load i32, ptr %tend.addr, align 4, !tbaa !14
  %8 = load ptr, ptr %new, align 8, !tbaa !5
  %tend3 = getelementptr inbounds %struct.Transcript_T, ptr %8, i32 0, i32 3
  store i32 %7, ptr %tend3, align 4, !tbaa !20
  %9 = load i32, ptr %tstart_overhang.addr, align 4, !tbaa !14
  %10 = load ptr, ptr %new, align 8, !tbaa !5
  %tstart_overhang4 = getelementptr inbounds %struct.Transcript_T, ptr %10, i32 0, i32 4
  store i32 %9, ptr %tstart_overhang4, align 8, !tbaa !21
  %11 = load i32, ptr %tend_overhang.addr, align 4, !tbaa !14
  %12 = load ptr, ptr %new, align 8, !tbaa !5
  %tend_overhang5 = getelementptr inbounds %struct.Transcript_T, ptr %12, i32 0, i32 5
  store i32 %11, ptr %tend_overhang5, align 4, !tbaa !22
  %13 = load ptr, ptr %exons.addr, align 8, !tbaa !5
  %14 = load ptr, ptr %new, align 8, !tbaa !5
  %exons6 = getelementptr inbounds %struct.Transcript_T, ptr %14, i32 0, i32 6
  store ptr %13, ptr %exons6, align 8, !tbaa !23
  %15 = load i32, ptr %nexons.addr, align 4, !tbaa !14
  %16 = load ptr, ptr %new, align 8, !tbaa !5
  %nexons7 = getelementptr inbounds %struct.Transcript_T, ptr %16, i32 0, i32 7
  store i32 %15, ptr %nexons7, align 8, !tbaa !24
  %17 = load i32, ptr %trlength.addr, align 4, !tbaa !14
  %18 = load ptr, ptr %new, align 8, !tbaa !5
  %trlength8 = getelementptr inbounds %struct.Transcript_T, ptr %18, i32 0, i32 8
  store i32 %17, ptr %trlength8, align 4, !tbaa !25
  %19 = load ptr, ptr %new, align 8, !tbaa !5
  %velocity = getelementptr inbounds %struct.Transcript_T, ptr %19, i32 0, i32 9
  store i32 -1, ptr %velocity, align 8, !tbaa !26
  %20 = load ptr, ptr %new, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #5
  ret ptr %20
}

declare ptr @Transcriptpool_new_transcript(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @Transcript_copy(ptr noundef %old, ptr noundef %transcriptpool, ptr noundef %listpool) #1 {
entry:
  %old.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #5
  %0 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %call = call ptr @Transcriptpool_new_transcript(ptr noundef %0)
  store ptr %call, ptr %new, align 8, !tbaa !5
  %1 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %num = getelementptr inbounds %struct.Transcript_T, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %num, align 8, !tbaa !16
  %3 = load ptr, ptr %new, align 8, !tbaa !5
  %num1 = getelementptr inbounds %struct.Transcript_T, ptr %3, i32 0, i32 0
  store i32 %2, ptr %num1, align 8, !tbaa !16
  %4 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %genestrand = getelementptr inbounds %struct.Transcript_T, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %genestrand, align 4, !tbaa !18
  %6 = load ptr, ptr %new, align 8, !tbaa !5
  %genestrand2 = getelementptr inbounds %struct.Transcript_T, ptr %6, i32 0, i32 1
  store i32 %5, ptr %genestrand2, align 4, !tbaa !18
  %7 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %tstart = getelementptr inbounds %struct.Transcript_T, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %tstart, align 8, !tbaa !19
  %9 = load ptr, ptr %new, align 8, !tbaa !5
  %tstart3 = getelementptr inbounds %struct.Transcript_T, ptr %9, i32 0, i32 2
  store i32 %8, ptr %tstart3, align 8, !tbaa !19
  %10 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %tend = getelementptr inbounds %struct.Transcript_T, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %tend, align 4, !tbaa !20
  %12 = load ptr, ptr %new, align 8, !tbaa !5
  %tend4 = getelementptr inbounds %struct.Transcript_T, ptr %12, i32 0, i32 3
  store i32 %11, ptr %tend4, align 4, !tbaa !20
  %13 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %tstart_overhang = getelementptr inbounds %struct.Transcript_T, ptr %13, i32 0, i32 4
  %14 = load i32, ptr %tstart_overhang, align 8, !tbaa !21
  %15 = load ptr, ptr %new, align 8, !tbaa !5
  %tstart_overhang5 = getelementptr inbounds %struct.Transcript_T, ptr %15, i32 0, i32 4
  store i32 %14, ptr %tstart_overhang5, align 8, !tbaa !21
  %16 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %tend_overhang = getelementptr inbounds %struct.Transcript_T, ptr %16, i32 0, i32 5
  %17 = load i32, ptr %tend_overhang, align 4, !tbaa !22
  %18 = load ptr, ptr %new, align 8, !tbaa !5
  %tend_overhang6 = getelementptr inbounds %struct.Transcript_T, ptr %18, i32 0, i32 5
  store i32 %17, ptr %tend_overhang6, align 4, !tbaa !22
  %19 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %exons = getelementptr inbounds %struct.Transcript_T, ptr %19, i32 0, i32 6
  %20 = load ptr, ptr %exons, align 8, !tbaa !23
  %21 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %22 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %call7 = call ptr @Exon_list_copy(ptr noundef %20, ptr noundef %21, ptr noundef %22)
  %23 = load ptr, ptr %new, align 8, !tbaa !5
  %exons8 = getelementptr inbounds %struct.Transcript_T, ptr %23, i32 0, i32 6
  store ptr %call7, ptr %exons8, align 8, !tbaa !23
  %24 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %nexons = getelementptr inbounds %struct.Transcript_T, ptr %24, i32 0, i32 7
  %25 = load i32, ptr %nexons, align 8, !tbaa !24
  %26 = load ptr, ptr %new, align 8, !tbaa !5
  %nexons9 = getelementptr inbounds %struct.Transcript_T, ptr %26, i32 0, i32 7
  store i32 %25, ptr %nexons9, align 8, !tbaa !24
  %27 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %trlength = getelementptr inbounds %struct.Transcript_T, ptr %27, i32 0, i32 8
  %28 = load i32, ptr %trlength, align 4, !tbaa !25
  %29 = load ptr, ptr %new, align 8, !tbaa !5
  %trlength10 = getelementptr inbounds %struct.Transcript_T, ptr %29, i32 0, i32 8
  store i32 %28, ptr %trlength10, align 4, !tbaa !25
  %30 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %velocity = getelementptr inbounds %struct.Transcript_T, ptr %30, i32 0, i32 9
  %31 = load i32, ptr %velocity, align 8, !tbaa !26
  %32 = load ptr, ptr %new, align 8, !tbaa !5
  %velocity11 = getelementptr inbounds %struct.Transcript_T, ptr %32, i32 0, i32 9
  store i32 %31, ptr %velocity11, align 8, !tbaa !26
  %33 = load ptr, ptr %new, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #5
  ret ptr %33
}

declare ptr @Exon_list_copy(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @Transcript_copy_list(ptr noundef %old, ptr noundef %transcriptpool, ptr noundef %listpool) #1 {
entry:
  %old.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  %p = alloca ptr, align 8
  %this = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #5
  store ptr null, ptr %new, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %this) #5
  %0 = load ptr, ptr %old.addr, align 8, !tbaa !5
  store ptr %0, ptr %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %call = call ptr @List_head(ptr noundef %2)
  store ptr %call, ptr %this, align 8, !tbaa !5
  %3 = load ptr, ptr %new, align 8, !tbaa !5
  %4 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %5 = load ptr, ptr %this, align 8, !tbaa !5
  %6 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %7 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %call1 = call ptr @Transcript_copy(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %call2 = call ptr @Listpool_push(ptr noundef %3, ptr noundef %4, ptr noundef %call1)
  store ptr %call2, ptr %new, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load ptr, ptr %p, align 8, !tbaa !5
  %call3 = call ptr @List_next(ptr noundef %8)
  store ptr %call3, ptr %p, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %new, align 8, !tbaa !5
  %call4 = call ptr @List_reverse(ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 8, ptr %this) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #5
  ret ptr %call4
}

declare ptr @Listpool_push(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_reverse(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #5
  store ptr null, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #5
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
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %head, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #5
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local void @Transcript_list_ascendingp(ptr noundef %list) #1 {
entry:
  %list.addr = alloca ptr, align 8
  %this = alloca ptr, align 8
  %q = alloca ptr, align 8
  %prev_trnum = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %this) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %prev_trnum) #5
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %call = call ptr @List_head(ptr noundef %1)
  store ptr %call, ptr %this, align 8, !tbaa !5
  %2 = load ptr, ptr %this, align 8, !tbaa !5
  %num = getelementptr inbounds %struct.Transcript_T, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %num, align 8, !tbaa !16
  store i32 %3, ptr %prev_trnum, align 4, !tbaa !14
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %call1 = call ptr @List_next(ptr noundef %4)
  store ptr %call1, ptr %q, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load ptr, ptr %q, align 8, !tbaa !5
  %cmp2 = icmp ne ptr %5, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %q, align 8, !tbaa !5
  %call3 = call ptr @List_head(ptr noundef %6)
  store ptr %call3, ptr %this, align 8, !tbaa !5
  %7 = load ptr, ptr %this, align 8, !tbaa !5
  %num4 = getelementptr inbounds %struct.Transcript_T, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %num4, align 8, !tbaa !16
  %9 = load i32, ptr %prev_trnum, align 4, !tbaa !14
  %cmp5 = icmp ult i32 %8, %9
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %for.body
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %10 = load ptr, ptr %list.addr, align 8, !tbaa !5
  call void @Transcript_print_nums(ptr noundef %10)
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.body
  %11 = load ptr, ptr %this, align 8, !tbaa !5
  %num8 = getelementptr inbounds %struct.Transcript_T, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %num8, align 8, !tbaa !16
  store i32 %12, ptr %prev_trnum, align 4, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load ptr, ptr %q, align 8, !tbaa !5
  %call9 = call ptr @List_next(ptr noundef %13)
  store ptr %call9, ptr %q, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  br label %if.end10

if.end10:                                         ; preds = %for.end, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %prev_trnum) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %this) #5
  ret void
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind uwtable
define dso_local void @Transcript_print_nums(ptr noundef %list) #1 {
entry:
  %list.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %this = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %this) #5
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  store ptr %0, ptr %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %call = call ptr @List_head(ptr noundef %2)
  store ptr %call, ptr %this, align 8, !tbaa !5
  %3 = load ptr, ptr %this, align 8, !tbaa !5
  %num = getelementptr inbounds %struct.Transcript_T, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %num, align 8, !tbaa !16
  %5 = load ptr, ptr %this, align 8, !tbaa !5
  %tstart_overhang = getelementptr inbounds %struct.Transcript_T, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %tstart_overhang, align 8, !tbaa !21
  %7 = load ptr, ptr %this, align 8, !tbaa !5
  %tstart = getelementptr inbounds %struct.Transcript_T, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %tstart, align 8, !tbaa !19
  %9 = load ptr, ptr %this, align 8, !tbaa !5
  %tend = getelementptr inbounds %struct.Transcript_T, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %tend, align 4, !tbaa !20
  %11 = load ptr, ptr %this, align 8, !tbaa !5
  %tend_overhang = getelementptr inbounds %struct.Transcript_T, ptr %11, i32 0, i32 5
  %12 = load i32, ptr %tend_overhang, align 4, !tbaa !22
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12)
  %13 = load ptr, ptr %this, align 8, !tbaa !5
  %exons = getelementptr inbounds %struct.Transcript_T, ptr %13, i32 0, i32 6
  %14 = load ptr, ptr %exons, align 8, !tbaa !23
  call void @Exon_print_list_stdout(ptr noundef %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load ptr, ptr %p, align 8, !tbaa !5
  %call2 = call ptr @List_next(ptr noundef %15)
  store ptr %call2, ptr %p, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %this) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: nounwind uwtable
define dso_local ptr @Transcript_list_sort(ptr noundef %transcripts) #1 {
entry:
  %retval = alloca ptr, align 8
  %transcripts.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %array = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %transcripts, ptr %transcripts.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %array) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  %0 = load ptr, ptr %transcripts.addr, align 8, !tbaa !5
  %call = call i32 @List_length(ptr noundef %0)
  store i32 %call, ptr %n, align 4, !tbaa !14
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %transcripts.addr, align 8, !tbaa !5
  %call1 = call ptr @List_to_array(ptr noundef %1, ptr noundef null)
  store ptr %call1, ptr %array, align 8, !tbaa !5
  %2 = load ptr, ptr %array, align 8, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !14
  %conv = sext i32 %3 to i64
  call void @qsort(ptr noundef %2, i64 noundef %conv, i64 noundef 8, ptr noundef @transcript_cmp)
  %4 = load ptr, ptr %transcripts.addr, align 8, !tbaa !5
  store ptr %4, ptr %p, align 8, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %5 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp2 = icmp ne ptr %5, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %p, align 8, !tbaa !5
  %7 = load ptr, ptr %array, align 8, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !14
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  call void @List_head_set(ptr noundef %6, ptr noundef %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load ptr, ptr %p, align 8, !tbaa !5
  %call4 = call ptr @List_next(ptr noundef %10)
  store ptr %call4, ptr %p, align 8, !tbaa !5
  %11 = load i32, ptr %i, align 4, !tbaa !14
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4, !tbaa !14
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %array, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %12, ptr noundef @.str.1, i32 noundef 256)
  store ptr null, ptr %array, align 8, !tbaa !5
  %13 = load ptr, ptr %transcripts.addr, align 8, !tbaa !5
  store ptr %13, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %array) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @List_length(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  store i32 0, ptr %n, align 4, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %n, align 4, !tbaa !14
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %n, align 4, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.List_T, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %rest, align 8, !tbaa !11
  store ptr %3, ptr %list.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %n, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  ret i32 %4
}

declare ptr @List_to_array(ptr noundef, ptr noundef) #3

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @transcript_cmp(ptr noundef %a, ptr noundef %b) #1 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %x = alloca ptr, align 8
  %y = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !5
  store ptr %b, ptr %b.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #5
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !5
  store ptr %1, ptr %x, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #5
  %2 = load ptr, ptr %b.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  store ptr %3, ptr %y, align 8, !tbaa !5
  %4 = load ptr, ptr %x, align 8, !tbaa !5
  %num = getelementptr inbounds %struct.Transcript_T, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %num, align 8, !tbaa !16
  %6 = load ptr, ptr %y, align 8, !tbaa !5
  %num1 = getelementptr inbounds %struct.Transcript_T, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %num1, align 8, !tbaa !16
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %y, align 8, !tbaa !5
  %num2 = getelementptr inbounds %struct.Transcript_T, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %num2, align 8, !tbaa !16
  %10 = load ptr, ptr %x, align 8, !tbaa !5
  %num3 = getelementptr inbounds %struct.Transcript_T, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %num3, align 8, !tbaa !16
  %cmp4 = icmp ult i32 %9, %11
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else6:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #5
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

declare void @List_head_set(ptr noundef, ptr noundef) #3

declare void @Mem_free(ptr noundef, ptr noundef, i32 noundef) #3

declare void @Exon_print_list_stdout(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @Transcript_print_list(ptr noundef %fp, ptr noundef %transcripts, ptr noundef %transcript_iit, ptr noundef %header) #1 {
entry:
  %fp.addr = alloca ptr, align 8
  %transcripts.addr = alloca ptr, align 8
  %transcript_iit.addr = alloca ptr, align 8
  %header.addr = alloca ptr, align 8
  %transcript = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !5
  store ptr %transcripts, ptr %transcripts.addr, align 8, !tbaa !5
  store ptr %transcript_iit, ptr %transcript_iit.addr, align 8, !tbaa !5
  store ptr %header, ptr %header.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %transcript) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  %0 = load ptr, ptr %transcripts.addr, align 8, !tbaa !5
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %transcripts.addr, align 8, !tbaa !5
  %call = call ptr @List_head(ptr noundef %1)
  store ptr %call, ptr %transcript, align 8, !tbaa !5
  %2 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %header.addr, align 8, !tbaa !5
  call void (ptr, ptr, ...) @Filestring_put(ptr noundef %2, ptr noundef @.str.3, ptr noundef %3)
  %4 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %5 = load ptr, ptr %transcript, align 8, !tbaa !5
  %6 = load ptr, ptr %transcript_iit.addr, align 8, !tbaa !5
  call void @print_one(ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %7 = load ptr, ptr %transcripts.addr, align 8, !tbaa !5
  %call1 = call ptr @List_next(ptr noundef %7)
  store ptr %call1, ptr %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp2 = icmp ne ptr %8, null
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %p, align 8, !tbaa !5
  %call3 = call ptr @List_head(ptr noundef %9)
  store ptr %call3, ptr %transcript, align 8, !tbaa !5
  %10 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  call void @Filestring_putc(i8 noundef signext 44, ptr noundef %10)
  %11 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %12 = load ptr, ptr %transcript, align 8, !tbaa !5
  %13 = load ptr, ptr %transcript_iit.addr, align 8, !tbaa !5
  call void @print_one(ptr noundef %11, ptr noundef %12, ptr noundef %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load ptr, ptr %p, align 8, !tbaa !5
  %call4 = call ptr @List_next(ptr noundef %14)
  store ptr %call4, ptr %p, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcript) #5
  ret void
}

declare void @Filestring_put(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind uwtable
define internal void @print_one(ptr noundef %fp, ptr noundef %this, ptr noundef %transcript_iit) #1 {
entry:
  %fp.addr = alloca ptr, align 8
  %this.addr = alloca ptr, align 8
  %transcript_iit.addr = alloca ptr, align 8
  %label = alloca ptr, align 8
  %allocp = alloca i8, align 1
  %tstart = alloca i32, align 4
  %tend = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8, !tbaa !5
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  store ptr %transcript_iit, ptr %transcript_iit.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %label) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %allocp) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %tstart) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %tend) #5
  %0 = load ptr, ptr %transcript_iit.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %num = getelementptr inbounds %struct.Transcript_T, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %num, align 8, !tbaa !16
  %call = call ptr @Univ_IIT_label(ptr noundef %0, i32 noundef %2, ptr noundef %allocp)
  store ptr %call, ptr %label, align 8, !tbaa !5
  %3 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tstart1 = getelementptr inbounds %struct.Transcript_T, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %tstart1, align 8, !tbaa !19
  %5 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tstart_overhang = getelementptr inbounds %struct.Transcript_T, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %tstart_overhang, align 8, !tbaa !21
  %sub = sub nsw i32 %4, %6
  store i32 %sub, ptr %tstart, align 4, !tbaa !14
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %tstart, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tend2 = getelementptr inbounds %struct.Transcript_T, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %tend2, align 4, !tbaa !20
  %9 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tend_overhang = getelementptr inbounds %struct.Transcript_T, ptr %9, i32 0, i32 5
  %10 = load i32, ptr %tend_overhang, align 4, !tbaa !22
  %add = add nsw i32 %8, %10
  store i32 %add, ptr %tend, align 4, !tbaa !14
  %11 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trlength = getelementptr inbounds %struct.Transcript_T, ptr %11, i32 0, i32 8
  %12 = load i32, ptr %trlength, align 4, !tbaa !25
  %cmp3 = icmp sgt i32 %add, %12
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %13 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %trlength5 = getelementptr inbounds %struct.Transcript_T, ptr %13, i32 0, i32 8
  %14 = load i32, ptr %trlength5, align 4, !tbaa !25
  store i32 %14, ptr %tend, align 4, !tbaa !14
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %15 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %16 = load ptr, ptr %label, align 8, !tbaa !5
  %17 = load i32, ptr %tstart, align 4, !tbaa !14
  %18 = load i32, ptr %tend, align 4, !tbaa !14
  call void (ptr, ptr, ...) @Filestring_put(ptr noundef %15, ptr noundef @.str.5, ptr noundef %16, i32 noundef %17, i32 noundef %18)
  %19 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %velocity = getelementptr inbounds %struct.Transcript_T, ptr %19, i32 0, i32 9
  %20 = load i32, ptr %velocity, align 8, !tbaa !26
  switch i32 %20, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end6
  %21 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  call void (ptr, ptr, ...) @Filestring_put(ptr noundef %21, ptr noundef @.str.6)
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end6
  %22 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  call void (ptr, ptr, ...) @Filestring_put(ptr noundef %22, ptr noundef @.str.7)
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end6
  %23 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  call void (ptr, ptr, ...) @Filestring_put(ptr noundef %23, ptr noundef @.str.8)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end6
  %24 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  call void (ptr, ptr, ...) @Filestring_put(ptr noundef %24, ptr noundef @.str.9)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb7, %sw.bb
  %25 = load ptr, ptr %fp.addr, align 8, !tbaa !5
  %26 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %exons = getelementptr inbounds %struct.Transcript_T, ptr %26, i32 0, i32 6
  %27 = load ptr, ptr %exons, align 8, !tbaa !23
  call void @Exon_print_list(ptr noundef %25, ptr noundef %27)
  %28 = load i8, ptr %allocp, align 1, !tbaa !34
  %tobool = icmp ne i8 %28, 0
  br i1 %tobool, label %if.then9, label %if.end10

if.then9:                                         ; preds = %sw.epilog
  %29 = load ptr, ptr %label, align 8, !tbaa !5
  call void @Mem_free(ptr noundef %29, ptr noundef @.str.1, i32 noundef 334)
  store ptr null, ptr %label, align 8, !tbaa !5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %sw.epilog
  call void @llvm.lifetime.end.p0(i64 4, ptr %tend) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tstart) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %allocp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %label) #5
  ret void
}

declare void @Filestring_putc(i8 noundef signext, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @Transcript_intersectp(ptr noundef %transcripts5, ptr noundef %transcripts3) #1 {
entry:
  %retval = alloca i8, align 1
  %transcripts5.addr = alloca ptr, align 8
  %transcripts3.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %transcript5 = alloca ptr, align 8
  %transcript3 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %transcripts5, ptr %transcripts5.addr, align 8, !tbaa !5
  store ptr %transcripts3, ptr %transcripts3.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %transcript5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %transcript3) #5
  %0 = load ptr, ptr %transcripts5.addr, align 8, !tbaa !5
  store ptr %0, ptr %p, align 8, !tbaa !5
  %1 = load ptr, ptr %transcripts3.addr, align 8, !tbaa !5
  store ptr %1, ptr %q, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %entry
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load ptr, ptr %q, align 8, !tbaa !5
  %cmp1 = icmp ne ptr %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load ptr, ptr %p, align 8, !tbaa !5
  %call = call ptr @List_head(ptr noundef %5)
  store ptr %call, ptr %transcript5, align 8, !tbaa !5
  %6 = load ptr, ptr %q, align 8, !tbaa !5
  %call2 = call ptr @List_head(ptr noundef %6)
  store ptr %call2, ptr %transcript3, align 8, !tbaa !5
  %7 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %num = getelementptr inbounds %struct.Transcript_T, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %num, align 8, !tbaa !16
  %9 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %num3 = getelementptr inbounds %struct.Transcript_T, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %num3, align 8, !tbaa !16
  %cmp4 = icmp ult i32 %8, %10
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %11 = load ptr, ptr %p, align 8, !tbaa !5
  %call5 = call ptr @List_next(ptr noundef %11)
  store ptr %call5, ptr %p, align 8, !tbaa !5
  br label %if.end12

if.else:                                          ; preds = %while.body
  %12 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %num6 = getelementptr inbounds %struct.Transcript_T, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %num6, align 8, !tbaa !16
  %14 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %num7 = getelementptr inbounds %struct.Transcript_T, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %num7, align 8, !tbaa !16
  %cmp8 = icmp ult i32 %13, %15
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  %16 = load ptr, ptr %q, align 8, !tbaa !5
  %call10 = call ptr @List_next(ptr noundef %16)
  store ptr %call10, ptr %q, align 8, !tbaa !5
  br label %if.end

if.else11:                                        ; preds = %if.else
  store i8 1, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then9
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  br label %while.cond, !llvm.loop !35

while.end:                                        ; preds = %land.end
  store i8 0, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.else11
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcript3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcript5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  %17 = load i8, ptr %retval, align 1
  ret i8 %17
}

; Function Attrs: nounwind uwtable
define dso_local void @Transcript_intersection(ptr noundef %path5, ptr noundef %path3, ptr noundef %queryseq5, ptr noundef %queryseq3, ptr noundef %listpool, ptr noundef %transcriptpool) #1 {
entry:
  %path5.addr = alloca ptr, align 8
  %path3.addr = alloca ptr, align 8
  %queryseq5.addr = alloca ptr, align 8
  %queryseq3.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %new_transcripts5 = alloca ptr, align 8
  %new_transcripts3 = alloca ptr, align 8
  %new_invalid_transcripts5 = alloca ptr, align 8
  %new_invalid_transcripts3 = alloca ptr, align 8
  store ptr %path5, ptr %path5.addr, align 8, !tbaa !5
  store ptr %path3, ptr %path3.addr, align 8, !tbaa !5
  store ptr %queryseq5, ptr %queryseq5.addr, align 8, !tbaa !5
  store ptr %queryseq3, ptr %queryseq3.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_transcripts5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_transcripts3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_invalid_transcripts5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_invalid_transcripts3) #5
  %0 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %transcripts = getelementptr inbounds %struct.Path_T, ptr %0, i32 0, i32 51
  %1 = load ptr, ptr %transcripts, align 8, !tbaa !36
  %2 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %call = call ptr @compute_intersection5(ptr noundef %1, ptr noundef %2, ptr noundef %3)
  store ptr %call, ptr %new_transcripts5, align 8, !tbaa !5
  %4 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %invalid_transcripts = getelementptr inbounds %struct.Path_T, ptr %4, i32 0, i32 52
  %5 = load ptr, ptr %invalid_transcripts, align 8, !tbaa !41
  %6 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %7 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %call1 = call ptr @compute_intersection5(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  store ptr %call1, ptr %new_invalid_transcripts5, align 8, !tbaa !5
  %8 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %transcripts2 = getelementptr inbounds %struct.Path_T, ptr %8, i32 0, i32 51
  %9 = load ptr, ptr %transcripts2, align 8, !tbaa !36
  %10 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %11 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %call3 = call ptr @compute_intersection3(ptr noundef %9, ptr noundef %10, ptr noundef %11)
  store ptr %call3, ptr %new_transcripts3, align 8, !tbaa !5
  %12 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %invalid_transcripts4 = getelementptr inbounds %struct.Path_T, ptr %12, i32 0, i32 52
  %13 = load ptr, ptr %invalid_transcripts4, align 8, !tbaa !41
  %14 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %15 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %call5 = call ptr @compute_intersection3(ptr noundef %13, ptr noundef %14, ptr noundef %15)
  store ptr %call5, ptr %new_invalid_transcripts3, align 8, !tbaa !5
  %16 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %transcripts6 = getelementptr inbounds %struct.Path_T, ptr %16, i32 0, i32 51
  %17 = load ptr, ptr %transcripts6, align 8, !tbaa !36
  %18 = load ptr, ptr %new_transcripts5, align 8, !tbaa !5
  %19 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %20 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @free_non_intersection(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %invalid_transcripts7 = getelementptr inbounds %struct.Path_T, ptr %21, i32 0, i32 52
  %22 = load ptr, ptr %invalid_transcripts7, align 8, !tbaa !41
  %23 = load ptr, ptr %new_invalid_transcripts5, align 8, !tbaa !5
  %24 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %25 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @free_non_intersection(ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25)
  %26 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %transcripts8 = getelementptr inbounds %struct.Path_T, ptr %26, i32 0, i32 51
  %27 = load ptr, ptr %transcripts8, align 8, !tbaa !36
  %28 = load ptr, ptr %new_transcripts3, align 8, !tbaa !5
  %29 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %30 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @free_non_intersection(ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30)
  %31 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %invalid_transcripts9 = getelementptr inbounds %struct.Path_T, ptr %31, i32 0, i32 52
  %32 = load ptr, ptr %invalid_transcripts9, align 8, !tbaa !41
  %33 = load ptr, ptr %new_invalid_transcripts3, align 8, !tbaa !5
  %34 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %35 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @free_non_intersection(ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35)
  %36 = load ptr, ptr %new_transcripts5, align 8, !tbaa !5
  %37 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %transcripts10 = getelementptr inbounds %struct.Path_T, ptr %37, i32 0, i32 51
  store ptr %36, ptr %transcripts10, align 8, !tbaa !36
  %38 = load ptr, ptr %new_invalid_transcripts5, align 8, !tbaa !5
  %39 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %invalid_transcripts11 = getelementptr inbounds %struct.Path_T, ptr %39, i32 0, i32 52
  store ptr %38, ptr %invalid_transcripts11, align 8, !tbaa !41
  %40 = load ptr, ptr %new_transcripts3, align 8, !tbaa !5
  %41 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %transcripts12 = getelementptr inbounds %struct.Path_T, ptr %41, i32 0, i32 51
  store ptr %40, ptr %transcripts12, align 8, !tbaa !36
  %42 = load ptr, ptr %new_invalid_transcripts3, align 8, !tbaa !5
  %43 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %invalid_transcripts13 = getelementptr inbounds %struct.Path_T, ptr %43, i32 0, i32 52
  store ptr %42, ptr %invalid_transcripts13, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_invalid_transcripts3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_invalid_transcripts5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_transcripts3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_transcripts5) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @compute_intersection5(ptr noundef %transcripts5, ptr noundef %path3, ptr noundef %listpool) #1 {
entry:
  %transcripts5.addr = alloca ptr, align 8
  %path3.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %intersection5 = alloca ptr, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %r = alloca ptr, align 8
  %transcript5 = alloca ptr, align 8
  %transcript3 = alloca ptr, align 8
  %invalid_transcript3 = alloca ptr, align 8
  %transcript3_num = alloca i32, align 4
  %invalid_transcript3_num = alloca i32, align 4
  store ptr %transcripts5, ptr %transcripts5.addr, align 8, !tbaa !5
  store ptr %path3, ptr %path3.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %intersection5) #5
  store ptr null, ptr %intersection5, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %transcript5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %transcript3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %invalid_transcript3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %transcript3_num) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %invalid_transcript3_num) #5
  %0 = load ptr, ptr %transcripts5.addr, align 8, !tbaa !5
  store ptr %0, ptr %p, align 8, !tbaa !5
  %1 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %transcripts = getelementptr inbounds %struct.Path_T, ptr %1, i32 0, i32 51
  %2 = load ptr, ptr %transcripts, align 8, !tbaa !36
  store ptr %2, ptr %q, align 8, !tbaa !5
  %3 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %invalid_transcripts = getelementptr inbounds %struct.Path_T, ptr %3, i32 0, i32 52
  %4 = load ptr, ptr %invalid_transcripts, align 8, !tbaa !41
  store ptr %4, ptr %r, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end49, %entry
  %5 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp = icmp ne ptr %5, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %q, align 8, !tbaa !5
  %cmp1 = icmp ne ptr %6, null
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %7 = load ptr, ptr %r, align 8, !tbaa !5
  %cmp2 = icmp ne ptr %7, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %8 = phi i1 [ true, %land.rhs ], [ %cmp2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %8, %lor.end ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load ptr, ptr %q, align 8, !tbaa !5
  %cmp3 = icmp eq ptr %10, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 -1, ptr %transcript3_num, align 4, !tbaa !14
  br label %if.end

if.else:                                          ; preds = %while.body
  %11 = load ptr, ptr %q, align 8, !tbaa !5
  %call = call ptr @List_head(ptr noundef %11)
  store ptr %call, ptr %transcript3, align 8, !tbaa !5
  %12 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %num = getelementptr inbounds %struct.Transcript_T, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %num, align 8, !tbaa !16
  store i32 %13, ptr %transcript3_num, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load ptr, ptr %r, align 8, !tbaa !5
  %cmp4 = icmp eq ptr %14, null
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.end
  store i32 -1, ptr %invalid_transcript3_num, align 4, !tbaa !14
  br label %if.end9

if.else6:                                         ; preds = %if.end
  %15 = load ptr, ptr %r, align 8, !tbaa !5
  %call7 = call ptr @List_head(ptr noundef %15)
  store ptr %call7, ptr %invalid_transcript3, align 8, !tbaa !5
  %16 = load ptr, ptr %invalid_transcript3, align 8, !tbaa !5
  %num8 = getelementptr inbounds %struct.Transcript_T, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %num8, align 8, !tbaa !16
  store i32 %17, ptr %invalid_transcript3_num, align 4, !tbaa !14
  br label %if.end9

if.end9:                                          ; preds = %if.else6, %if.then5
  %18 = load ptr, ptr %p, align 8, !tbaa !5
  %call10 = call ptr @List_head(ptr noundef %18)
  store ptr %call10, ptr %transcript5, align 8, !tbaa !5
  %19 = load i32, ptr %transcript3_num, align 4, !tbaa !14
  %20 = load i32, ptr %invalid_transcript3_num, align 4, !tbaa !14
  %cmp11 = icmp ult i32 %19, %20
  br i1 %cmp11, label %if.then12, label %if.else28

if.then12:                                        ; preds = %if.end9
  %21 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %num13 = getelementptr inbounds %struct.Transcript_T, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %num13, align 8, !tbaa !16
  %23 = load i32, ptr %transcript3_num, align 4, !tbaa !14
  %cmp14 = icmp ult i32 %22, %23
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.then12
  %24 = load ptr, ptr %p, align 8, !tbaa !5
  %call16 = call ptr @List_next(ptr noundef %24)
  store ptr %call16, ptr %p, align 8, !tbaa !5
  br label %if.end27

if.else17:                                        ; preds = %if.then12
  %25 = load i32, ptr %transcript3_num, align 4, !tbaa !14
  %26 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %num18 = getelementptr inbounds %struct.Transcript_T, ptr %26, i32 0, i32 0
  %27 = load i32, ptr %num18, align 8, !tbaa !16
  %cmp19 = icmp ult i32 %25, %27
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else17
  %28 = load ptr, ptr %q, align 8, !tbaa !5
  %call21 = call ptr @List_next(ptr noundef %28)
  store ptr %call21, ptr %q, align 8, !tbaa !5
  br label %if.end26

if.else22:                                        ; preds = %if.else17
  %29 = load ptr, ptr %intersection5, align 8, !tbaa !5
  %30 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %31 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %call23 = call ptr @Listpool_push(ptr noundef %29, ptr noundef %30, ptr noundef %31)
  store ptr %call23, ptr %intersection5, align 8, !tbaa !5
  %32 = load ptr, ptr %p, align 8, !tbaa !5
  %call24 = call ptr @List_next(ptr noundef %32)
  store ptr %call24, ptr %p, align 8, !tbaa !5
  %33 = load ptr, ptr %q, align 8, !tbaa !5
  %call25 = call ptr @List_next(ptr noundef %33)
  store ptr %call25, ptr %q, align 8, !tbaa !5
  br label %if.end26

if.end26:                                         ; preds = %if.else22, %if.then20
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then15
  br label %if.end49

if.else28:                                        ; preds = %if.end9
  %34 = load i32, ptr %invalid_transcript3_num, align 4, !tbaa !14
  %35 = load i32, ptr %transcript3_num, align 4, !tbaa !14
  %cmp29 = icmp ult i32 %34, %35
  br i1 %cmp29, label %if.then30, label %if.else46

if.then30:                                        ; preds = %if.else28
  %36 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %num31 = getelementptr inbounds %struct.Transcript_T, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %num31, align 8, !tbaa !16
  %38 = load i32, ptr %invalid_transcript3_num, align 4, !tbaa !14
  %cmp32 = icmp ult i32 %37, %38
  br i1 %cmp32, label %if.then33, label %if.else35

if.then33:                                        ; preds = %if.then30
  %39 = load ptr, ptr %p, align 8, !tbaa !5
  %call34 = call ptr @List_next(ptr noundef %39)
  store ptr %call34, ptr %p, align 8, !tbaa !5
  br label %if.end45

if.else35:                                        ; preds = %if.then30
  %40 = load i32, ptr %invalid_transcript3_num, align 4, !tbaa !14
  %41 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %num36 = getelementptr inbounds %struct.Transcript_T, ptr %41, i32 0, i32 0
  %42 = load i32, ptr %num36, align 8, !tbaa !16
  %cmp37 = icmp ult i32 %40, %42
  br i1 %cmp37, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.else35
  %43 = load ptr, ptr %r, align 8, !tbaa !5
  %call39 = call ptr @List_next(ptr noundef %43)
  store ptr %call39, ptr %r, align 8, !tbaa !5
  br label %if.end44

if.else40:                                        ; preds = %if.else35
  %44 = load ptr, ptr %intersection5, align 8, !tbaa !5
  %45 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %46 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %call41 = call ptr @Listpool_push(ptr noundef %44, ptr noundef %45, ptr noundef %46)
  store ptr %call41, ptr %intersection5, align 8, !tbaa !5
  %47 = load ptr, ptr %p, align 8, !tbaa !5
  %call42 = call ptr @List_next(ptr noundef %47)
  store ptr %call42, ptr %p, align 8, !tbaa !5
  %48 = load ptr, ptr %r, align 8, !tbaa !5
  %call43 = call ptr @List_next(ptr noundef %48)
  store ptr %call43, ptr %r, align 8, !tbaa !5
  br label %if.end44

if.end44:                                         ; preds = %if.else40, %if.then38
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then33
  br label %if.end48

if.else46:                                        ; preds = %if.else28
  %49 = load ptr, ptr @stderr, align 8, !tbaa !5
  %50 = load i32, ptr %transcript3_num, align 4, !tbaa !14
  %call47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.10, i32 noundef %50)
  call void @abort() #6
  unreachable

if.end48:                                         ; preds = %if.end45
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end27
  br label %while.cond, !llvm.loop !42

while.end:                                        ; preds = %land.end
  %51 = load ptr, ptr %intersection5, align 8, !tbaa !5
  %call50 = call ptr @List_reverse(ptr noundef %51)
  call void @llvm.lifetime.end.p0(i64 4, ptr %invalid_transcript3_num) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %transcript3_num) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %invalid_transcript3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcript3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcript5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %intersection5) #5
  ret ptr %call50
}

; Function Attrs: nounwind uwtable
define internal ptr @compute_intersection3(ptr noundef %transcripts3, ptr noundef %path5, ptr noundef %listpool) #1 {
entry:
  %transcripts3.addr = alloca ptr, align 8
  %path5.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %intersection3 = alloca ptr, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %r = alloca ptr, align 8
  %transcript5 = alloca ptr, align 8
  %invalid_transcript5 = alloca ptr, align 8
  %transcript3 = alloca ptr, align 8
  %transcript5_num = alloca i32, align 4
  %invalid_transcript5_num = alloca i32, align 4
  store ptr %transcripts3, ptr %transcripts3.addr, align 8, !tbaa !5
  store ptr %path5, ptr %path5.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %intersection3) #5
  store ptr null, ptr %intersection3, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %transcript5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %invalid_transcript5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %transcript3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %transcript5_num) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %invalid_transcript5_num) #5
  %0 = load ptr, ptr %transcripts3.addr, align 8, !tbaa !5
  store ptr %0, ptr %p, align 8, !tbaa !5
  %1 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %transcripts = getelementptr inbounds %struct.Path_T, ptr %1, i32 0, i32 51
  %2 = load ptr, ptr %transcripts, align 8, !tbaa !36
  store ptr %2, ptr %q, align 8, !tbaa !5
  %3 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %invalid_transcripts = getelementptr inbounds %struct.Path_T, ptr %3, i32 0, i32 52
  %4 = load ptr, ptr %invalid_transcripts, align 8, !tbaa !41
  store ptr %4, ptr %r, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end49, %entry
  %5 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp = icmp ne ptr %5, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %q, align 8, !tbaa !5
  %cmp1 = icmp ne ptr %6, null
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %7 = load ptr, ptr %r, align 8, !tbaa !5
  %cmp2 = icmp ne ptr %7, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %8 = phi i1 [ true, %land.rhs ], [ %cmp2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %8, %lor.end ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load ptr, ptr %q, align 8, !tbaa !5
  %cmp3 = icmp eq ptr %10, null
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 -1, ptr %transcript5_num, align 4, !tbaa !14
  br label %if.end

if.else:                                          ; preds = %while.body
  %11 = load ptr, ptr %q, align 8, !tbaa !5
  %call = call ptr @List_head(ptr noundef %11)
  store ptr %call, ptr %transcript5, align 8, !tbaa !5
  %12 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %num = getelementptr inbounds %struct.Transcript_T, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %num, align 8, !tbaa !16
  store i32 %13, ptr %transcript5_num, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load ptr, ptr %r, align 8, !tbaa !5
  %cmp4 = icmp eq ptr %14, null
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.end
  store i32 -1, ptr %invalid_transcript5_num, align 4, !tbaa !14
  br label %if.end9

if.else6:                                         ; preds = %if.end
  %15 = load ptr, ptr %r, align 8, !tbaa !5
  %call7 = call ptr @List_head(ptr noundef %15)
  store ptr %call7, ptr %invalid_transcript5, align 8, !tbaa !5
  %16 = load ptr, ptr %invalid_transcript5, align 8, !tbaa !5
  %num8 = getelementptr inbounds %struct.Transcript_T, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %num8, align 8, !tbaa !16
  store i32 %17, ptr %invalid_transcript5_num, align 4, !tbaa !14
  br label %if.end9

if.end9:                                          ; preds = %if.else6, %if.then5
  %18 = load ptr, ptr %p, align 8, !tbaa !5
  %call10 = call ptr @List_head(ptr noundef %18)
  store ptr %call10, ptr %transcript3, align 8, !tbaa !5
  %19 = load i32, ptr %transcript5_num, align 4, !tbaa !14
  %20 = load i32, ptr %invalid_transcript5_num, align 4, !tbaa !14
  %cmp11 = icmp ult i32 %19, %20
  br i1 %cmp11, label %if.then12, label %if.else28

if.then12:                                        ; preds = %if.end9
  %21 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %num13 = getelementptr inbounds %struct.Transcript_T, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %num13, align 8, !tbaa !16
  %23 = load i32, ptr %transcript5_num, align 4, !tbaa !14
  %cmp14 = icmp ult i32 %22, %23
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.then12
  %24 = load ptr, ptr %p, align 8, !tbaa !5
  %call16 = call ptr @List_next(ptr noundef %24)
  store ptr %call16, ptr %p, align 8, !tbaa !5
  br label %if.end27

if.else17:                                        ; preds = %if.then12
  %25 = load i32, ptr %transcript5_num, align 4, !tbaa !14
  %26 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %num18 = getelementptr inbounds %struct.Transcript_T, ptr %26, i32 0, i32 0
  %27 = load i32, ptr %num18, align 8, !tbaa !16
  %cmp19 = icmp ult i32 %25, %27
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else17
  %28 = load ptr, ptr %q, align 8, !tbaa !5
  %call21 = call ptr @List_next(ptr noundef %28)
  store ptr %call21, ptr %q, align 8, !tbaa !5
  br label %if.end26

if.else22:                                        ; preds = %if.else17
  %29 = load ptr, ptr %intersection3, align 8, !tbaa !5
  %30 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %31 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %call23 = call ptr @Listpool_push(ptr noundef %29, ptr noundef %30, ptr noundef %31)
  store ptr %call23, ptr %intersection3, align 8, !tbaa !5
  %32 = load ptr, ptr %p, align 8, !tbaa !5
  %call24 = call ptr @List_next(ptr noundef %32)
  store ptr %call24, ptr %p, align 8, !tbaa !5
  %33 = load ptr, ptr %q, align 8, !tbaa !5
  %call25 = call ptr @List_next(ptr noundef %33)
  store ptr %call25, ptr %q, align 8, !tbaa !5
  br label %if.end26

if.end26:                                         ; preds = %if.else22, %if.then20
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then15
  br label %if.end49

if.else28:                                        ; preds = %if.end9
  %34 = load i32, ptr %invalid_transcript5_num, align 4, !tbaa !14
  %35 = load i32, ptr %transcript5_num, align 4, !tbaa !14
  %cmp29 = icmp ult i32 %34, %35
  br i1 %cmp29, label %if.then30, label %if.else46

if.then30:                                        ; preds = %if.else28
  %36 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %num31 = getelementptr inbounds %struct.Transcript_T, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %num31, align 8, !tbaa !16
  %38 = load i32, ptr %invalid_transcript5_num, align 4, !tbaa !14
  %cmp32 = icmp ult i32 %37, %38
  br i1 %cmp32, label %if.then33, label %if.else35

if.then33:                                        ; preds = %if.then30
  %39 = load ptr, ptr %p, align 8, !tbaa !5
  %call34 = call ptr @List_next(ptr noundef %39)
  store ptr %call34, ptr %p, align 8, !tbaa !5
  br label %if.end45

if.else35:                                        ; preds = %if.then30
  %40 = load i32, ptr %invalid_transcript5_num, align 4, !tbaa !14
  %41 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %num36 = getelementptr inbounds %struct.Transcript_T, ptr %41, i32 0, i32 0
  %42 = load i32, ptr %num36, align 8, !tbaa !16
  %cmp37 = icmp ult i32 %40, %42
  br i1 %cmp37, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.else35
  %43 = load ptr, ptr %r, align 8, !tbaa !5
  %call39 = call ptr @List_next(ptr noundef %43)
  store ptr %call39, ptr %r, align 8, !tbaa !5
  br label %if.end44

if.else40:                                        ; preds = %if.else35
  %44 = load ptr, ptr %intersection3, align 8, !tbaa !5
  %45 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %46 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %call41 = call ptr @Listpool_push(ptr noundef %44, ptr noundef %45, ptr noundef %46)
  store ptr %call41, ptr %intersection3, align 8, !tbaa !5
  %47 = load ptr, ptr %p, align 8, !tbaa !5
  %call42 = call ptr @List_next(ptr noundef %47)
  store ptr %call42, ptr %p, align 8, !tbaa !5
  %48 = load ptr, ptr %r, align 8, !tbaa !5
  %call43 = call ptr @List_next(ptr noundef %48)
  store ptr %call43, ptr %r, align 8, !tbaa !5
  br label %if.end44

if.end44:                                         ; preds = %if.else40, %if.then38
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then33
  br label %if.end48

if.else46:                                        ; preds = %if.else28
  %49 = load ptr, ptr @stderr, align 8, !tbaa !5
  %50 = load i32, ptr %transcript5_num, align 4, !tbaa !14
  %call47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.11, i32 noundef %50)
  call void @abort() #6
  unreachable

if.end48:                                         ; preds = %if.end45
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end27
  br label %while.cond, !llvm.loop !43

while.end:                                        ; preds = %land.end
  %51 = load ptr, ptr %intersection3, align 8, !tbaa !5
  %call50 = call ptr @List_reverse(ptr noundef %51)
  call void @llvm.lifetime.end.p0(i64 4, ptr %invalid_transcript5_num) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %transcript5_num) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcript3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %invalid_transcript5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcript5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %intersection3) #5
  ret ptr %call50
}

; Function Attrs: nounwind uwtable
define internal void @free_non_intersection(ptr noundef %all_transcripts, ptr noundef %intersection, ptr noundef %listpool, ptr noundef %transcriptpool) #1 {
entry:
  %all_transcripts.addr = alloca ptr, align 8
  %intersection.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %transcript = alloca ptr, align 8
  %elt = alloca ptr, align 8
  store ptr %all_transcripts, ptr %all_transcripts.addr, align 8, !tbaa !5
  store ptr %intersection, ptr %intersection.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %transcript) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %elt) #5
  %0 = load ptr, ptr %all_transcripts.addr, align 8, !tbaa !5
  store ptr %0, ptr %p, align 8, !tbaa !5
  %1 = load ptr, ptr %intersection.addr, align 8, !tbaa !5
  store ptr %1, ptr %q, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end15, %entry
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load ptr, ptr %q, align 8, !tbaa !5
  %cmp1 = icmp ne ptr %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load ptr, ptr %p, align 8, !tbaa !5
  %call = call ptr @List_head(ptr noundef %5)
  store ptr %call, ptr %transcript, align 8, !tbaa !5
  %6 = load ptr, ptr %q, align 8, !tbaa !5
  %call2 = call ptr @List_head(ptr noundef %6)
  store ptr %call2, ptr %elt, align 8, !tbaa !5
  %7 = load ptr, ptr %transcript, align 8, !tbaa !5
  %num = getelementptr inbounds %struct.Transcript_T, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %num, align 8, !tbaa !16
  %9 = load ptr, ptr %elt, align 8, !tbaa !5
  %num3 = getelementptr inbounds %struct.Transcript_T, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %num3, align 8, !tbaa !16
  %cmp4 = icmp ult i32 %8, %10
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %11 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %12 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Transcript_free(ptr noundef %transcript, ptr noundef %11, ptr noundef %12)
  %13 = load ptr, ptr %p, align 8, !tbaa !5
  %call5 = call ptr @List_next(ptr noundef %13)
  store ptr %call5, ptr %p, align 8, !tbaa !5
  br label %if.end15

if.else:                                          ; preds = %while.body
  %14 = load ptr, ptr %elt, align 8, !tbaa !5
  %num6 = getelementptr inbounds %struct.Transcript_T, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %num6, align 8, !tbaa !16
  %16 = load ptr, ptr %transcript, align 8, !tbaa !5
  %num7 = getelementptr inbounds %struct.Transcript_T, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %num7, align 8, !tbaa !16
  %cmp8 = icmp ult i32 %15, %17
  br i1 %cmp8, label %if.then9, label %if.else12

if.then9:                                         ; preds = %if.else
  %18 = load ptr, ptr @stderr, align 8, !tbaa !5
  %19 = load ptr, ptr %elt, align 8, !tbaa !5
  %num10 = getelementptr inbounds %struct.Transcript_T, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %num10, align 8, !tbaa !16
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.12, i32 noundef %20)
  call void @abort() #6
  unreachable

if.else12:                                        ; preds = %if.else
  %21 = load ptr, ptr %p, align 8, !tbaa !5
  %call13 = call ptr @List_next(ptr noundef %21)
  store ptr %call13, ptr %p, align 8, !tbaa !5
  %22 = load ptr, ptr %q, align 8, !tbaa !5
  %call14 = call ptr @List_next(ptr noundef %22)
  store ptr %call14, ptr %q, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else12
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then
  br label %while.cond, !llvm.loop !44

while.end:                                        ; preds = %land.end
  br label %while.cond16

while.cond16:                                     ; preds = %while.body18, %while.end
  %23 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp17 = icmp ne ptr %23, null
  br i1 %cmp17, label %while.body18, label %while.end21

while.body18:                                     ; preds = %while.cond16
  %24 = load ptr, ptr %p, align 8, !tbaa !5
  %call19 = call ptr @List_head(ptr noundef %24)
  store ptr %call19, ptr %transcript, align 8, !tbaa !5
  %25 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %26 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Transcript_free(ptr noundef %transcript, ptr noundef %25, ptr noundef %26)
  %27 = load ptr, ptr %p, align 8, !tbaa !5
  %call20 = call ptr @List_next(ptr noundef %27)
  store ptr %call20, ptr %p, align 8, !tbaa !5
  br label %while.cond16, !llvm.loop !45

while.end21:                                      ; preds = %while.cond16
  %28 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  call void @Listpool_free_list(ptr noundef %all_transcripts.addr, ptr noundef %28)
  call void @llvm.lifetime.end.p0(i64 8, ptr %elt) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcript) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Transcript_fragment_length(ptr noundef %path5, ptr noundef %path3, ptr noundef %queryseq5, ptr noundef %queryseq3) #1 {
entry:
  %retval = alloca i32, align 4
  %path5.addr = alloca ptr, align 8
  %path3.addr = alloca ptr, align 8
  %queryseq5.addr = alloca ptr, align 8
  %queryseq3.addr = alloca ptr, align 8
  %min_fragment_length = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path5, ptr %path5.addr, align 8, !tbaa !5
  store ptr %path3, ptr %path3.addr, align 8, !tbaa !5
  store ptr %queryseq5, ptr %queryseq5.addr, align 8, !tbaa !5
  store ptr %queryseq3, ptr %queryseq3.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_fragment_length) #5
  store i32 0, ptr %min_fragment_length, align 4, !tbaa !14
  %0 = load i32, ptr %min_fragment_length, align 4, !tbaa !14
  %1 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %transcripts = getelementptr inbounds %struct.Path_T, ptr %1, i32 0, i32 51
  %2 = load ptr, ptr %transcripts, align 8, !tbaa !36
  %3 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %transcripts1 = getelementptr inbounds %struct.Path_T, ptr %3, i32 0, i32 51
  %4 = load ptr, ptr %transcripts1, align 8, !tbaa !36
  %5 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %6 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %7 = load ptr, ptr %queryseq5.addr, align 8, !tbaa !5
  %8 = load ptr, ptr %queryseq3.addr, align 8, !tbaa !5
  %call = call i32 @compute_fragment_length(i32 noundef %0, ptr noundef %2, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  store i32 %call, ptr %min_fragment_length, align 4, !tbaa !14
  %9 = load i32, ptr %min_fragment_length, align 4, !tbaa !14
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, ptr %min_fragment_length, align 4, !tbaa !14
  store i32 %10, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %min_fragment_length, align 4, !tbaa !14
  %12 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %transcripts2 = getelementptr inbounds %struct.Path_T, ptr %12, i32 0, i32 51
  %13 = load ptr, ptr %transcripts2, align 8, !tbaa !36
  %14 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %invalid_transcripts = getelementptr inbounds %struct.Path_T, ptr %14, i32 0, i32 52
  %15 = load ptr, ptr %invalid_transcripts, align 8, !tbaa !41
  %16 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %17 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %18 = load ptr, ptr %queryseq5.addr, align 8, !tbaa !5
  %19 = load ptr, ptr %queryseq3.addr, align 8, !tbaa !5
  %call3 = call i32 @compute_fragment_length(i32 noundef %11, ptr noundef %13, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19)
  store i32 %call3, ptr %min_fragment_length, align 4, !tbaa !14
  %20 = load i32, ptr %min_fragment_length, align 4, !tbaa !14
  %21 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %invalid_transcripts4 = getelementptr inbounds %struct.Path_T, ptr %21, i32 0, i32 52
  %22 = load ptr, ptr %invalid_transcripts4, align 8, !tbaa !41
  %23 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %transcripts5 = getelementptr inbounds %struct.Path_T, ptr %23, i32 0, i32 51
  %24 = load ptr, ptr %transcripts5, align 8, !tbaa !36
  %25 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %26 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %27 = load ptr, ptr %queryseq5.addr, align 8, !tbaa !5
  %28 = load ptr, ptr %queryseq3.addr, align 8, !tbaa !5
  %call6 = call i32 @compute_fragment_length(i32 noundef %20, ptr noundef %22, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28)
  store i32 %call6, ptr %min_fragment_length, align 4, !tbaa !14
  %29 = load i32, ptr %min_fragment_length, align 4, !tbaa !14
  %cmp7 = icmp sgt i32 %29, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %30 = load i32, ptr %min_fragment_length, align 4, !tbaa !14
  store i32 %30, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %31 = load i32, ptr %min_fragment_length, align 4, !tbaa !14
  %32 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %invalid_transcripts10 = getelementptr inbounds %struct.Path_T, ptr %32, i32 0, i32 52
  %33 = load ptr, ptr %invalid_transcripts10, align 8, !tbaa !41
  %34 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %invalid_transcripts11 = getelementptr inbounds %struct.Path_T, ptr %34, i32 0, i32 52
  %35 = load ptr, ptr %invalid_transcripts11, align 8, !tbaa !41
  %36 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %37 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %38 = load ptr, ptr %queryseq5.addr, align 8, !tbaa !5
  %39 = load ptr, ptr %queryseq3.addr, align 8, !tbaa !5
  %call12 = call i32 @compute_fragment_length(i32 noundef %31, ptr noundef %33, ptr noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %39)
  store i32 %call12, ptr %min_fragment_length, align 4, !tbaa !14
  %40 = load i32, ptr %min_fragment_length, align 4, !tbaa !14
  store i32 %40, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_fragment_length) #5
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @compute_fragment_length(i32 noundef %min_fragment_length, ptr noundef %transcripts5, ptr noundef %transcripts3, ptr noundef %path5, ptr noundef %path3, ptr noundef %queryseq5, ptr noundef %queryseq3) #1 {
entry:
  %min_fragment_length.addr = alloca i32, align 4
  %transcripts5.addr = alloca ptr, align 8
  %transcripts3.addr = alloca ptr, align 8
  %path5.addr = alloca ptr, align 8
  %path3.addr = alloca ptr, align 8
  %queryseq5.addr = alloca ptr, align 8
  %queryseq3.addr = alloca ptr, align 8
  %fragment_length = alloca i32, align 4
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %transcript5 = alloca ptr, align 8
  %transcript3 = alloca ptr, align 8
  %insert_end = alloca i32, align 4
  %insert_start = alloca i32, align 4
  store i32 %min_fragment_length, ptr %min_fragment_length.addr, align 4, !tbaa !14
  store ptr %transcripts5, ptr %transcripts5.addr, align 8, !tbaa !5
  store ptr %transcripts3, ptr %transcripts3.addr, align 8, !tbaa !5
  store ptr %path5, ptr %path5.addr, align 8, !tbaa !5
  store ptr %path3, ptr %path3.addr, align 8, !tbaa !5
  store ptr %queryseq5, ptr %queryseq5.addr, align 8, !tbaa !5
  store ptr %queryseq3, ptr %queryseq3.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %fragment_length) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %transcript5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %transcript3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %insert_end) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %insert_start) #5
  %0 = load ptr, ptr %transcripts5.addr, align 8, !tbaa !5
  store ptr %0, ptr %p, align 8, !tbaa !5
  %1 = load ptr, ptr %transcripts3.addr, align 8, !tbaa !5
  store ptr %1, ptr %q, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end89, %entry
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load ptr, ptr %q, align 8, !tbaa !5
  %cmp1 = icmp ne ptr %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load ptr, ptr %p, align 8, !tbaa !5
  %call = call ptr @List_head(ptr noundef %5)
  store ptr %call, ptr %transcript5, align 8, !tbaa !5
  %6 = load ptr, ptr %q, align 8, !tbaa !5
  %call2 = call ptr @List_head(ptr noundef %6)
  store ptr %call2, ptr %transcript3, align 8, !tbaa !5
  %7 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %num = getelementptr inbounds %struct.Transcript_T, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %num, align 8, !tbaa !16
  %9 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %num3 = getelementptr inbounds %struct.Transcript_T, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %num3, align 8, !tbaa !16
  %cmp4 = icmp ult i32 %8, %10
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %11 = load ptr, ptr %p, align 8, !tbaa !5
  %call5 = call ptr @List_next(ptr noundef %11)
  store ptr %call5, ptr %p, align 8, !tbaa !5
  br label %if.end89

if.else:                                          ; preds = %while.body
  %12 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %num6 = getelementptr inbounds %struct.Transcript_T, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %num6, align 8, !tbaa !16
  %14 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %num7 = getelementptr inbounds %struct.Transcript_T, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %num7, align 8, !tbaa !16
  %cmp8 = icmp ult i32 %13, %15
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  %16 = load ptr, ptr %q, align 8, !tbaa !5
  %call10 = call ptr @List_next(ptr noundef %16)
  store ptr %call10, ptr %q, align 8, !tbaa !5
  br label %if.end88

if.else11:                                        ; preds = %if.else
  %17 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %call12 = call i32 @Transcript_genestrand(ptr noundef %17)
  %cmp13 = icmp sgt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.else42

if.then14:                                        ; preds = %if.else11
  %18 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %plusp = getelementptr inbounds %struct.Path_T, ptr %18, i32 0, i32 10
  %19 = load i8, ptr %plusp, align 8, !tbaa !46
  %conv = zext i8 %19 to i32
  %cmp15 = icmp eq i32 %conv, 1
  br i1 %cmp15, label %if.then17, label %if.else27

if.then17:                                        ; preds = %if.then14
  %20 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %tstart = getelementptr inbounds %struct.Transcript_T, ptr %20, i32 0, i32 2
  %21 = load i32, ptr %tstart, align 8, !tbaa !19
  %22 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %querylength = getelementptr inbounds %struct.Path_T, ptr %22, i32 0, i32 13
  %23 = load i32, ptr %querylength, align 4, !tbaa !47
  %add = add nsw i32 %21, %23
  store i32 %add, ptr %insert_end, align 4, !tbaa !14
  %24 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %tend = getelementptr inbounds %struct.Transcript_T, ptr %24, i32 0, i32 3
  %25 = load i32, ptr %tend, align 4, !tbaa !20
  %26 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %querylength18 = getelementptr inbounds %struct.Path_T, ptr %26, i32 0, i32 13
  %27 = load i32, ptr %querylength18, align 4, !tbaa !47
  %sub = sub nsw i32 %25, %27
  store i32 %sub, ptr %insert_start, align 4, !tbaa !14
  %28 = load ptr, ptr %queryseq3.addr, align 8, !tbaa !5
  %call19 = call i32 @Shortread_left_choplength(ptr noundef %28)
  %29 = load i32, ptr %insert_end, align 4, !tbaa !14
  %sub20 = sub nsw i32 %29, %call19
  store i32 %sub20, ptr %insert_end, align 4, !tbaa !14
  %30 = load ptr, ptr %queryseq3.addr, align 8, !tbaa !5
  %call21 = call i32 @Shortread_right_choplength(ptr noundef %30)
  %31 = load i32, ptr %insert_end, align 4, !tbaa !14
  %add22 = add nsw i32 %31, %call21
  store i32 %add22, ptr %insert_end, align 4, !tbaa !14
  %32 = load ptr, ptr %queryseq5.addr, align 8, !tbaa !5
  %call23 = call i32 @Shortread_left_choplength(ptr noundef %32)
  %33 = load i32, ptr %insert_start, align 4, !tbaa !14
  %sub24 = sub nsw i32 %33, %call23
  store i32 %sub24, ptr %insert_start, align 4, !tbaa !14
  %34 = load ptr, ptr %queryseq5.addr, align 8, !tbaa !5
  %call25 = call i32 @Shortread_right_choplength(ptr noundef %34)
  %35 = load i32, ptr %insert_start, align 4, !tbaa !14
  %add26 = add nsw i32 %35, %call25
  store i32 %add26, ptr %insert_start, align 4, !tbaa !14
  br label %if.end

if.else27:                                        ; preds = %if.then14
  %36 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %tstart28 = getelementptr inbounds %struct.Transcript_T, ptr %36, i32 0, i32 2
  %37 = load i32, ptr %tstart28, align 8, !tbaa !19
  %38 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %querylength29 = getelementptr inbounds %struct.Path_T, ptr %38, i32 0, i32 13
  %39 = load i32, ptr %querylength29, align 4, !tbaa !47
  %add30 = add nsw i32 %37, %39
  store i32 %add30, ptr %insert_end, align 4, !tbaa !14
  %40 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %tend31 = getelementptr inbounds %struct.Transcript_T, ptr %40, i32 0, i32 3
  %41 = load i32, ptr %tend31, align 4, !tbaa !20
  %42 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %querylength32 = getelementptr inbounds %struct.Path_T, ptr %42, i32 0, i32 13
  %43 = load i32, ptr %querylength32, align 4, !tbaa !47
  %sub33 = sub nsw i32 %41, %43
  store i32 %sub33, ptr %insert_start, align 4, !tbaa !14
  %44 = load ptr, ptr %queryseq5.addr, align 8, !tbaa !5
  %call34 = call i32 @Shortread_right_choplength(ptr noundef %44)
  %45 = load i32, ptr %insert_end, align 4, !tbaa !14
  %sub35 = sub nsw i32 %45, %call34
  store i32 %sub35, ptr %insert_end, align 4, !tbaa !14
  %46 = load ptr, ptr %queryseq5.addr, align 8, !tbaa !5
  %call36 = call i32 @Shortread_left_choplength(ptr noundef %46)
  %47 = load i32, ptr %insert_end, align 4, !tbaa !14
  %add37 = add nsw i32 %47, %call36
  store i32 %add37, ptr %insert_end, align 4, !tbaa !14
  %48 = load ptr, ptr %queryseq3.addr, align 8, !tbaa !5
  %call38 = call i32 @Shortread_right_choplength(ptr noundef %48)
  %49 = load i32, ptr %insert_start, align 4, !tbaa !14
  %sub39 = sub nsw i32 %49, %call38
  store i32 %sub39, ptr %insert_start, align 4, !tbaa !14
  %50 = load ptr, ptr %queryseq3.addr, align 8, !tbaa !5
  %call40 = call i32 @Shortread_left_choplength(ptr noundef %50)
  %51 = load i32, ptr %insert_start, align 4, !tbaa !14
  %add41 = add nsw i32 %51, %call40
  store i32 %add41, ptr %insert_start, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else27, %if.then17
  br label %if.end78

if.else42:                                        ; preds = %if.else11
  %52 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %plusp43 = getelementptr inbounds %struct.Path_T, ptr %52, i32 0, i32 10
  %53 = load i8, ptr %plusp43, align 8, !tbaa !46
  %conv44 = zext i8 %53 to i32
  %cmp45 = icmp eq i32 %conv44, 1
  br i1 %cmp45, label %if.then47, label %if.else62

if.then47:                                        ; preds = %if.else42
  %54 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %tend48 = getelementptr inbounds %struct.Transcript_T, ptr %54, i32 0, i32 3
  %55 = load i32, ptr %tend48, align 4, !tbaa !20
  %56 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %querylength49 = getelementptr inbounds %struct.Path_T, ptr %56, i32 0, i32 13
  %57 = load i32, ptr %querylength49, align 4, !tbaa !47
  %sub50 = sub nsw i32 %55, %57
  store i32 %sub50, ptr %insert_end, align 4, !tbaa !14
  %58 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %tstart51 = getelementptr inbounds %struct.Transcript_T, ptr %58, i32 0, i32 2
  %59 = load i32, ptr %tstart51, align 8, !tbaa !19
  %60 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %querylength52 = getelementptr inbounds %struct.Path_T, ptr %60, i32 0, i32 13
  %61 = load i32, ptr %querylength52, align 4, !tbaa !47
  %add53 = add nsw i32 %59, %61
  store i32 %add53, ptr %insert_start, align 4, !tbaa !14
  %62 = load ptr, ptr %queryseq3.addr, align 8, !tbaa !5
  %call54 = call i32 @Shortread_left_choplength(ptr noundef %62)
  %63 = load i32, ptr %insert_end, align 4, !tbaa !14
  %sub55 = sub nsw i32 %63, %call54
  store i32 %sub55, ptr %insert_end, align 4, !tbaa !14
  %64 = load ptr, ptr %queryseq3.addr, align 8, !tbaa !5
  %call56 = call i32 @Shortread_right_choplength(ptr noundef %64)
  %65 = load i32, ptr %insert_end, align 4, !tbaa !14
  %add57 = add nsw i32 %65, %call56
  store i32 %add57, ptr %insert_end, align 4, !tbaa !14
  %66 = load ptr, ptr %queryseq5.addr, align 8, !tbaa !5
  %call58 = call i32 @Shortread_left_choplength(ptr noundef %66)
  %67 = load i32, ptr %insert_start, align 4, !tbaa !14
  %sub59 = sub nsw i32 %67, %call58
  store i32 %sub59, ptr %insert_start, align 4, !tbaa !14
  %68 = load ptr, ptr %queryseq5.addr, align 8, !tbaa !5
  %call60 = call i32 @Shortread_right_choplength(ptr noundef %68)
  %69 = load i32, ptr %insert_start, align 4, !tbaa !14
  %add61 = add nsw i32 %69, %call60
  store i32 %add61, ptr %insert_start, align 4, !tbaa !14
  br label %if.end77

if.else62:                                        ; preds = %if.else42
  %70 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %tend63 = getelementptr inbounds %struct.Transcript_T, ptr %70, i32 0, i32 3
  %71 = load i32, ptr %tend63, align 4, !tbaa !20
  %72 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %querylength64 = getelementptr inbounds %struct.Path_T, ptr %72, i32 0, i32 13
  %73 = load i32, ptr %querylength64, align 4, !tbaa !47
  %sub65 = sub nsw i32 %71, %73
  store i32 %sub65, ptr %insert_end, align 4, !tbaa !14
  %74 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %tstart66 = getelementptr inbounds %struct.Transcript_T, ptr %74, i32 0, i32 2
  %75 = load i32, ptr %tstart66, align 8, !tbaa !19
  %76 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %querylength67 = getelementptr inbounds %struct.Path_T, ptr %76, i32 0, i32 13
  %77 = load i32, ptr %querylength67, align 4, !tbaa !47
  %add68 = add nsw i32 %75, %77
  store i32 %add68, ptr %insert_start, align 4, !tbaa !14
  %78 = load ptr, ptr %queryseq5.addr, align 8, !tbaa !5
  %call69 = call i32 @Shortread_right_choplength(ptr noundef %78)
  %79 = load i32, ptr %insert_end, align 4, !tbaa !14
  %sub70 = sub nsw i32 %79, %call69
  store i32 %sub70, ptr %insert_end, align 4, !tbaa !14
  %80 = load ptr, ptr %queryseq5.addr, align 8, !tbaa !5
  %call71 = call i32 @Shortread_left_choplength(ptr noundef %80)
  %81 = load i32, ptr %insert_end, align 4, !tbaa !14
  %add72 = add nsw i32 %81, %call71
  store i32 %add72, ptr %insert_end, align 4, !tbaa !14
  %82 = load ptr, ptr %queryseq3.addr, align 8, !tbaa !5
  %call73 = call i32 @Shortread_right_choplength(ptr noundef %82)
  %83 = load i32, ptr %insert_start, align 4, !tbaa !14
  %sub74 = sub nsw i32 %83, %call73
  store i32 %sub74, ptr %insert_start, align 4, !tbaa !14
  %84 = load ptr, ptr %queryseq3.addr, align 8, !tbaa !5
  %call75 = call i32 @Shortread_left_choplength(ptr noundef %84)
  %85 = load i32, ptr %insert_start, align 4, !tbaa !14
  %add76 = add nsw i32 %85, %call75
  store i32 %add76, ptr %insert_start, align 4, !tbaa !14
  br label %if.end77

if.end77:                                         ; preds = %if.else62, %if.then47
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end
  %86 = load i32, ptr %insert_end, align 4, !tbaa !14
  %87 = load i32, ptr %insert_start, align 4, !tbaa !14
  %sub79 = sub nsw i32 %86, %87
  store i32 %sub79, ptr %fragment_length, align 4, !tbaa !14
  %88 = load i32, ptr %min_fragment_length.addr, align 4, !tbaa !14
  %cmp80 = icmp eq i32 %88, 0
  br i1 %cmp80, label %if.then84, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end78
  %89 = load i32, ptr %fragment_length, align 4, !tbaa !14
  %90 = load i32, ptr %min_fragment_length.addr, align 4, !tbaa !14
  %cmp82 = icmp slt i32 %89, %90
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %lor.lhs.false, %if.end78
  %91 = load i32, ptr %fragment_length, align 4, !tbaa !14
  store i32 %91, ptr %min_fragment_length.addr, align 4, !tbaa !14
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %lor.lhs.false
  %92 = load ptr, ptr %p, align 8, !tbaa !5
  %call86 = call ptr @List_next(ptr noundef %92)
  store ptr %call86, ptr %p, align 8, !tbaa !5
  %93 = load ptr, ptr %q, align 8, !tbaa !5
  %call87 = call ptr @List_next(ptr noundef %93)
  store ptr %call87, ptr %q, align 8, !tbaa !5
  br label %if.end88

if.end88:                                         ; preds = %if.end85, %if.then9
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.then
  br label %while.cond, !llvm.loop !48

while.end:                                        ; preds = %land.end
  %94 = load i32, ptr %min_fragment_length.addr, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %insert_start) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %insert_end) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcript3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcript5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %fragment_length) #5
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define dso_local void @Transcript_repair_tstart(ptr noundef %this, ptr noundef %listpool, ptr noundef %transcriptpool) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %exon = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %exon) #5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tstart_overhang = getelementptr inbounds %struct.Transcript_T, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %tstart_overhang, align 8, !tbaa !21
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tstart = getelementptr inbounds %struct.Transcript_T, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %tstart, align 8, !tbaa !19
  %sub = sub nsw i32 %3, %1
  store i32 %sub, ptr %tstart, align 8, !tbaa !19
  %4 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tstart_overhang1 = getelementptr inbounds %struct.Transcript_T, ptr %4, i32 0, i32 4
  store i32 0, ptr %tstart_overhang1, align 8, !tbaa !21
  %5 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %exons = getelementptr inbounds %struct.Transcript_T, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %exons, align 8, !tbaa !23
  %call = call ptr @List_head(ptr noundef %6)
  store ptr %call, ptr %exon, align 8, !tbaa !5
  %7 = load ptr, ptr %exon, align 8, !tbaa !5
  %firstchar = getelementptr inbounds %struct.Exon_T, ptr %7, i32 0, i32 1
  store i8 115, ptr %firstchar, align 4, !tbaa !49
  %8 = load ptr, ptr %exon, align 8, !tbaa !5
  %exoni = getelementptr inbounds %struct.Exon_T, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %exoni, align 4, !tbaa !51
  %sub2 = sub nsw i32 %9, 1
  %10 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %call3 = call ptr @Exon_new(i8 noundef signext 46, i32 noundef %sub2, i8 noundef signext 115, ptr noundef %10)
  store ptr %call3, ptr %exon, align 8, !tbaa !5
  %11 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %exons4 = getelementptr inbounds %struct.Transcript_T, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %exons4, align 8, !tbaa !23
  %13 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %14 = load ptr, ptr %exon, align 8, !tbaa !5
  %call5 = call ptr @Listpool_push(ptr noundef %12, ptr noundef %13, ptr noundef %14)
  %15 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %exons6 = getelementptr inbounds %struct.Transcript_T, ptr %15, i32 0, i32 6
  store ptr %call5, ptr %exons6, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(i64 8, ptr %exon) #5
  ret void
}

declare ptr @Exon_new(i8 noundef signext, i32 noundef, i8 noundef signext, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local void @Transcript_repair_tend(ptr noundef %this, ptr noundef %listpool, ptr noundef %transcriptpool) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  %exon = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %exon) #5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tend_overhang = getelementptr inbounds %struct.Transcript_T, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %tend_overhang, align 4, !tbaa !22
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tend = getelementptr inbounds %struct.Transcript_T, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %tend, align 4, !tbaa !20
  %add = add nsw i32 %3, %1
  store i32 %add, ptr %tend, align 4, !tbaa !20
  %4 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %tend_overhang1 = getelementptr inbounds %struct.Transcript_T, ptr %4, i32 0, i32 5
  store i32 0, ptr %tend_overhang1, align 4, !tbaa !22
  %5 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %exons = getelementptr inbounds %struct.Transcript_T, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %exons, align 8, !tbaa !23
  %call = call ptr @List_reverse(ptr noundef %6)
  %7 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %exons2 = getelementptr inbounds %struct.Transcript_T, ptr %7, i32 0, i32 6
  store ptr %call, ptr %exons2, align 8, !tbaa !23
  %8 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %exons3 = getelementptr inbounds %struct.Transcript_T, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %exons3, align 8, !tbaa !23
  %call4 = call ptr @List_head(ptr noundef %9)
  store ptr %call4, ptr %exon, align 8, !tbaa !5
  %10 = load ptr, ptr %exon, align 8, !tbaa !5
  %lastchar = getelementptr inbounds %struct.Exon_T, ptr %10, i32 0, i32 2
  store i8 115, ptr %lastchar, align 1, !tbaa !52
  %11 = load ptr, ptr %exon, align 8, !tbaa !5
  %exoni = getelementptr inbounds %struct.Exon_T, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %exoni, align 4, !tbaa !51
  %add5 = add nsw i32 %12, 1
  %13 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  %call6 = call ptr @Exon_new(i8 noundef signext 115, i32 noundef %add5, i8 noundef signext 46, ptr noundef %13)
  store ptr %call6, ptr %exon, align 8, !tbaa !5
  %14 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %exons7 = getelementptr inbounds %struct.Transcript_T, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %exons7, align 8, !tbaa !23
  %16 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %17 = load ptr, ptr %exon, align 8, !tbaa !5
  %call8 = call ptr @Listpool_push(ptr noundef %15, ptr noundef %16, ptr noundef %17)
  %18 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %exons9 = getelementptr inbounds %struct.Transcript_T, ptr %18, i32 0, i32 6
  store ptr %call8, ptr %exons9, align 8, !tbaa !23
  %19 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %exons10 = getelementptr inbounds %struct.Transcript_T, ptr %19, i32 0, i32 6
  %20 = load ptr, ptr %exons10, align 8, !tbaa !23
  %call11 = call ptr @List_reverse(ptr noundef %20)
  %21 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %exons12 = getelementptr inbounds %struct.Transcript_T, ptr %21, i32 0, i32 6
  store ptr %call11, ptr %exons12, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(i64 8, ptr %exon) #5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Transcript_setup(i32 noundef %pairmax_transcriptome_in, i32 noundef %output_type_in, ptr noundef %transcriptome_in, ptr noundef %transcript_iit_in) #1 {
entry:
  %pairmax_transcriptome_in.addr = alloca i32, align 4
  %output_type_in.addr = alloca i32, align 4
  %transcriptome_in.addr = alloca ptr, align 8
  %transcript_iit_in.addr = alloca ptr, align 8
  store i32 %pairmax_transcriptome_in, ptr %pairmax_transcriptome_in.addr, align 4, !tbaa !14
  store i32 %output_type_in, ptr %output_type_in.addr, align 4, !tbaa !34
  store ptr %transcriptome_in, ptr %transcriptome_in.addr, align 8, !tbaa !5
  store ptr %transcript_iit_in, ptr %transcript_iit_in.addr, align 8, !tbaa !5
  %0 = load i32, ptr %pairmax_transcriptome_in.addr, align 4, !tbaa !14
  store i32 %0, ptr @pairmax_transcriptome, align 4, !tbaa !14
  %1 = load i32, ptr %output_type_in.addr, align 4, !tbaa !34
  store i32 %1, ptr @output_type, align 4, !tbaa !34
  %2 = load ptr, ptr %transcriptome_in.addr, align 8, !tbaa !5
  store ptr %2, ptr @transcriptome, align 8, !tbaa !5
  %3 = load ptr, ptr %transcript_iit_in.addr, align 8, !tbaa !5
  store ptr %3, ptr @transcript_iit, align 8, !tbaa !5
  ret void
}

declare ptr @Mem_alloc(i64 noundef, ptr noundef, i32 noundef) #3

declare ptr @Univ_IIT_label(ptr noundef, i32 noundef, ptr noundef) #3

declare void @Exon_print_list(ptr noundef, ptr noundef) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind uwtable
define internal void @Transcript_free(ptr noundef %old, ptr noundef %listpool, ptr noundef %transcriptpool) #1 {
entry:
  %old.addr = alloca ptr, align 8
  %listpool.addr = alloca ptr, align 8
  %transcriptpool.addr = alloca ptr, align 8
  store ptr %old, ptr %old.addr, align 8, !tbaa !5
  store ptr %listpool, ptr %listpool.addr, align 8, !tbaa !5
  store ptr %transcriptpool, ptr %transcriptpool.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %1 = load ptr, ptr %0, align 8, !tbaa !5
  %exons = getelementptr inbounds %struct.Transcript_T, ptr %1, i32 0, i32 6
  %2 = load ptr, ptr %listpool.addr, align 8, !tbaa !5
  %3 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Exon_list_gc(ptr noundef %exons, ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %old.addr, align 8, !tbaa !5
  %5 = load ptr, ptr %transcriptpool.addr, align 8, !tbaa !5
  call void @Transcriptpool_free_transcript(ptr noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @Transcript_genestrand(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !5
  %genestrand = getelementptr inbounds %struct.Transcript_T, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %genestrand, align 4, !tbaa !18
  ret i32 %1
}

declare i32 @Shortread_left_choplength(ptr noundef) #3

declare i32 @Shortread_right_choplength(ptr noundef) #3

attributes #0 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = !{!17, !15, i64 0}
!17 = !{!"Transcript_T", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !6, i64 24, !15, i64 32, !15, i64 36, !7, i64 40}
!18 = !{!17, !15, i64 4}
!19 = !{!17, !15, i64 8}
!20 = !{!17, !15, i64 12}
!21 = !{!17, !15, i64 16}
!22 = !{!17, !15, i64 20}
!23 = !{!17, !6, i64 24}
!24 = !{!17, !15, i64 32}
!25 = !{!17, !15, i64 36}
!26 = !{!17, !7, i64 40}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = !{!7, !7, i64 0}
!35 = distinct !{!35, !13}
!36 = !{!37, !6, i64 344}
!37 = !{!"Path_T", !38, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !39, i64 24, !39, i64 32, !15, i64 40, !15, i64 44, !6, i64 48, !7, i64 56, !15, i64 60, !15, i64 64, !15, i64 68, !15, i64 72, !40, i64 80, !40, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !7, i64 136, !7, i64 137, !7, i64 140, !7, i64 144, !39, i64 152, !39, i64 160, !6, i64 168, !6, i64 176, !7, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !15, i64 248, !40, i64 256, !40, i64 264, !7, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !7, i64 328, !7, i64 332, !39, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !7, i64 376}
!38 = !{!"float", !7, i64 0}
!39 = !{!"double", !7, i64 0}
!40 = !{!"long", !7, i64 0}
!41 = !{!37, !6, i64 352}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = !{!37, !7, i64 56}
!47 = !{!37, !15, i64 68}
!48 = distinct !{!48, !13}
!49 = !{!50, !7, i64 4}
!50 = !{!"Exon_T", !15, i64 0, !7, i64 4, !7, i64 5}
!51 = !{!50, !15, i64 0}
!52 = !{!50, !7, i64 5}
