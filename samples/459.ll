; ModuleID = 'samples/459.bc'
source_filename = ".././../src/transcript-velocity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.List_T = type { ptr, ptr }
%struct.Path_T = type { float, i32, i32, i32, i32, double, double, i32, i32, ptr, i8, i32, i32, i32, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, double, double, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i64, i64, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, double, ptr, ptr, ptr, ptr, i32 }
%struct.Transcript_T = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.Exon_T = type { i32, i8, i8 }

@.str = private unnamed_addr constant [19 x i8] c".././../src/list.h\00", align 1
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [69 x i8] c"Same transcript %d is in both transcripts3 and invalid_transcripts3\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"Same transcript %d is in both transcripts5 and invalid_transcripts5\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @List_push_keep(ptr noundef %list, ptr noundef %x) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %new = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #5
  %call = call ptr @Mem_alloc(i64 noundef 16, ptr noundef @.str, i32 noundef 66)
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
  %call = call ptr @Mem_alloc(i64 noundef 16, ptr noundef @.str, i32 noundef 75)
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
  call void @Mem_free(ptr noundef %6, ptr noundef @.str, i32 noundef 137)
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
define dso_local void @Transcript_velocity_single(ptr noundef %path) #1 {
entry:
  %path.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %transcript = alloca ptr, align 8
  store ptr %path, ptr %path.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %transcript) #5
  %0 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %transcripts = getelementptr inbounds %struct.Path_T, ptr %0, i32 0, i32 51
  %1 = load ptr, ptr %transcripts, align 8, !tbaa !12
  store ptr %1, ptr %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p, align 8, !tbaa !5
  %call = call ptr @List_head(ptr noundef %3)
  store ptr %call, ptr %transcript, align 8, !tbaa !5
  %4 = load ptr, ptr %transcript, align 8, !tbaa !5
  %call1 = call i32 @velocity_single(ptr noundef %4)
  %5 = load ptr, ptr %transcript, align 8, !tbaa !5
  %velocity = getelementptr inbounds %struct.Transcript_T, ptr %5, i32 0, i32 9
  store i32 %call1, ptr %velocity, align 8, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %p, align 8, !tbaa !5
  %call2 = call ptr @List_next(ptr noundef %6)
  store ptr %call2, ptr %p, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %invalid_transcripts = getelementptr inbounds %struct.Path_T, ptr %7, i32 0, i32 52
  %8 = load ptr, ptr %invalid_transcripts, align 8, !tbaa !22
  store ptr %8, ptr %p, align 8, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc9, %for.end
  %9 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp4 = icmp ne ptr %9, null
  br i1 %cmp4, label %for.body5, label %for.end11

for.body5:                                        ; preds = %for.cond3
  %10 = load ptr, ptr %p, align 8, !tbaa !5
  %call6 = call ptr @List_head(ptr noundef %10)
  store ptr %call6, ptr %transcript, align 8, !tbaa !5
  %11 = load ptr, ptr %transcript, align 8, !tbaa !5
  %call7 = call i32 @velocity_single(ptr noundef %11)
  %12 = load ptr, ptr %transcript, align 8, !tbaa !5
  %velocity8 = getelementptr inbounds %struct.Transcript_T, ptr %12, i32 0, i32 9
  store i32 %call7, ptr %velocity8, align 8, !tbaa !18
  br label %for.inc9

for.inc9:                                         ; preds = %for.body5
  %13 = load ptr, ptr %p, align 8, !tbaa !5
  %call10 = call ptr @List_next(ptr noundef %13)
  store ptr %call10, ptr %p, align 8, !tbaa !5
  br label %for.cond3, !llvm.loop !23

for.end11:                                        ; preds = %for.cond3
  %14 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %fusion_transcripts = getelementptr inbounds %struct.Path_T, ptr %14, i32 0, i32 53
  %15 = load ptr, ptr %fusion_transcripts, align 8, !tbaa !24
  store ptr %15, ptr %p, align 8, !tbaa !5
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc18, %for.end11
  %16 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp13 = icmp ne ptr %16, null
  br i1 %cmp13, label %for.body14, label %for.end20

for.body14:                                       ; preds = %for.cond12
  %17 = load ptr, ptr %p, align 8, !tbaa !5
  %call15 = call ptr @List_head(ptr noundef %17)
  store ptr %call15, ptr %transcript, align 8, !tbaa !5
  %18 = load ptr, ptr %transcript, align 8, !tbaa !5
  %call16 = call i32 @velocity_single(ptr noundef %18)
  %19 = load ptr, ptr %transcript, align 8, !tbaa !5
  %velocity17 = getelementptr inbounds %struct.Transcript_T, ptr %19, i32 0, i32 9
  store i32 %call16, ptr %velocity17, align 8, !tbaa !18
  br label %for.inc18

for.inc18:                                        ; preds = %for.body14
  %20 = load ptr, ptr %p, align 8, !tbaa !5
  %call19 = call ptr @List_next(ptr noundef %20)
  store ptr %call19, ptr %p, align 8, !tbaa !5
  br label %for.cond12, !llvm.loop !25

for.end20:                                        ; preds = %for.cond12
  %21 = load ptr, ptr %path.addr, align 8, !tbaa !5
  %fusion_invalid_transcripts = getelementptr inbounds %struct.Path_T, ptr %21, i32 0, i32 54
  %22 = load ptr, ptr %fusion_invalid_transcripts, align 8, !tbaa !26
  store ptr %22, ptr %p, align 8, !tbaa !5
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc27, %for.end20
  %23 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp22 = icmp ne ptr %23, null
  br i1 %cmp22, label %for.body23, label %for.end29

for.body23:                                       ; preds = %for.cond21
  %24 = load ptr, ptr %p, align 8, !tbaa !5
  %call24 = call ptr @List_head(ptr noundef %24)
  store ptr %call24, ptr %transcript, align 8, !tbaa !5
  %25 = load ptr, ptr %transcript, align 8, !tbaa !5
  %call25 = call i32 @velocity_single(ptr noundef %25)
  %26 = load ptr, ptr %transcript, align 8, !tbaa !5
  %velocity26 = getelementptr inbounds %struct.Transcript_T, ptr %26, i32 0, i32 9
  store i32 %call25, ptr %velocity26, align 8, !tbaa !18
  br label %for.inc27

for.inc27:                                        ; preds = %for.body23
  %27 = load ptr, ptr %p, align 8, !tbaa !5
  %call28 = call ptr @List_next(ptr noundef %27)
  store ptr %call28, ptr %p, align 8, !tbaa !5
  br label %for.cond21, !llvm.loop !27

for.end29:                                        ; preds = %for.cond21
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcript) #5
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

; Function Attrs: nounwind uwtable
define internal i32 @velocity_single(ptr noundef %transcript) #1 {
entry:
  %retval = alloca i32, align 4
  %transcript.addr = alloca ptr, align 8
  %first_exon = alloca ptr, align 8
  %last_exon = alloca ptr, align 8
  %exon = alloca ptr, align 8
  %splicedp = alloca i8, align 1
  %retainedp = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %transcript, ptr %transcript.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %first_exon) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_exon) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %exon) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %splicedp) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %retainedp) #5
  store i8 0, ptr %retainedp, align 1, !tbaa !28
  %0 = load ptr, ptr %transcript.addr, align 8, !tbaa !5
  %nexons = getelementptr inbounds %struct.Transcript_T, ptr %0, i32 0, i32 7
  %1 = load i32, ptr %nexons, align 8, !tbaa !29
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, ptr %splicedp, align 1, !tbaa !28
  store i8 0, ptr %retainedp, align 1, !tbaa !28
  br label %if.end41

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %transcript.addr, align 8, !tbaa !5
  %exons = getelementptr inbounds %struct.Transcript_T, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %exons, align 8, !tbaa !30
  %call = call i32 @List_length(ptr noundef %3)
  %cmp1 = icmp eq i32 %call, 1
  br i1 %cmp1, label %if.then2, label %if.else22

if.then2:                                         ; preds = %if.else
  store i8 0, ptr %splicedp, align 1, !tbaa !28
  %4 = load ptr, ptr %transcript.addr, align 8, !tbaa !5
  %exons3 = getelementptr inbounds %struct.Transcript_T, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %exons3, align 8, !tbaa !30
  %call4 = call ptr @List_head(ptr noundef %5)
  store ptr %call4, ptr %exon, align 8, !tbaa !5
  %6 = load ptr, ptr %exon, align 8, !tbaa !5
  %firstchar = getelementptr inbounds %struct.Exon_T, ptr %6, i32 0, i32 1
  %7 = load i8, ptr %firstchar, align 4, !tbaa !31
  %conv = sext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv, 105
  br i1 %cmp5, label %land.lhs.true, label %if.else11

land.lhs.true:                                    ; preds = %if.then2
  %8 = load ptr, ptr %exon, align 8, !tbaa !5
  %lastchar = getelementptr inbounds %struct.Exon_T, ptr %8, i32 0, i32 2
  %9 = load i8, ptr %lastchar, align 1, !tbaa !33
  %conv7 = sext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv7, 105
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %land.lhs.true
  store i8 1, ptr %retainedp, align 1, !tbaa !28
  br label %if.end21

if.else11:                                        ; preds = %land.lhs.true, %if.then2
  %10 = load ptr, ptr %exon, align 8, !tbaa !5
  %firstchar12 = getelementptr inbounds %struct.Exon_T, ptr %10, i32 0, i32 1
  %11 = load i8, ptr %firstchar12, align 4, !tbaa !31
  %conv13 = sext i8 %11 to i32
  %cmp14 = icmp eq i32 %conv13, 120
  br i1 %cmp14, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else11
  %12 = load ptr, ptr %exon, align 8, !tbaa !5
  %lastchar16 = getelementptr inbounds %struct.Exon_T, ptr %12, i32 0, i32 2
  %13 = load i8, ptr %lastchar16, align 1, !tbaa !33
  %conv17 = sext i8 %13 to i32
  %cmp18 = icmp eq i32 %conv17, 120
  br i1 %cmp18, label %if.then20, label %if.end

if.then20:                                        ; preds = %lor.lhs.false, %if.else11
  store i8 1, ptr %retainedp, align 1, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.then20, %lor.lhs.false
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then10
  br label %if.end40

if.else22:                                        ; preds = %if.else
  store i8 1, ptr %splicedp, align 1, !tbaa !28
  %14 = load ptr, ptr %transcript.addr, align 8, !tbaa !5
  %exons23 = getelementptr inbounds %struct.Transcript_T, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %exons23, align 8, !tbaa !30
  %call24 = call ptr @List_head(ptr noundef %15)
  store ptr %call24, ptr %first_exon, align 8, !tbaa !5
  %16 = load ptr, ptr %transcript.addr, align 8, !tbaa !5
  %exons25 = getelementptr inbounds %struct.Transcript_T, ptr %16, i32 0, i32 6
  %17 = load ptr, ptr %exons25, align 8, !tbaa !30
  %call26 = call ptr @List_last_value(ptr noundef %17, ptr noundef null)
  store ptr %call26, ptr %last_exon, align 8, !tbaa !5
  %18 = load ptr, ptr %first_exon, align 8, !tbaa !5
  %firstchar27 = getelementptr inbounds %struct.Exon_T, ptr %18, i32 0, i32 1
  %19 = load i8, ptr %firstchar27, align 4, !tbaa !31
  %conv28 = sext i8 %19 to i32
  %cmp29 = icmp eq i32 %conv28, 120
  br i1 %cmp29, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.else22
  store i8 1, ptr %retainedp, align 1, !tbaa !28
  br label %if.end39

if.else32:                                        ; preds = %if.else22
  %20 = load ptr, ptr %last_exon, align 8, !tbaa !5
  %lastchar33 = getelementptr inbounds %struct.Exon_T, ptr %20, i32 0, i32 2
  %21 = load i8, ptr %lastchar33, align 1, !tbaa !33
  %conv34 = sext i8 %21 to i32
  %cmp35 = icmp eq i32 %conv34, 120
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.else32
  store i8 1, ptr %retainedp, align 1, !tbaa !28
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.else32
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then31
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end21
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then
  %22 = load i8, ptr %retainedp, align 1, !tbaa !28
  %conv42 = zext i8 %22 to i32
  %cmp43 = icmp eq i32 %conv42, 1
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.end41
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else46:                                        ; preds = %if.end41
  %23 = load i8, ptr %splicedp, align 1, !tbaa !28
  %conv47 = zext i8 %23 to i32
  %cmp48 = icmp eq i32 %conv47, 1
  br i1 %cmp48, label %if.then50, label %if.else51

if.then50:                                        ; preds = %if.else46
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else51:                                        ; preds = %if.else46
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else51, %if.then50, %if.then45
  call void @llvm.lifetime.end.p0(i64 1, ptr %retainedp) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %splicedp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %exon) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_exon) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %first_exon) #5
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @Transcript_velocity_paired(ptr noundef %path5, ptr noundef %path3) #1 {
entry:
  %path5.addr = alloca ptr, align 8
  %path3.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %transcript = alloca ptr, align 8
  store ptr %path5, ptr %path5.addr, align 8, !tbaa !5
  store ptr %path3, ptr %path3.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %transcript) #5
  %0 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %transcripts = getelementptr inbounds %struct.Path_T, ptr %0, i32 0, i32 51
  %1 = load ptr, ptr %transcripts, align 8, !tbaa !12
  %2 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  call void @compute_velocity5(ptr noundef %1, ptr noundef %2)
  %3 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %invalid_transcripts = getelementptr inbounds %struct.Path_T, ptr %3, i32 0, i32 52
  %4 = load ptr, ptr %invalid_transcripts, align 8, !tbaa !22
  %5 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  call void @compute_velocity5(ptr noundef %4, ptr noundef %5)
  %6 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %transcripts1 = getelementptr inbounds %struct.Path_T, ptr %6, i32 0, i32 51
  %7 = load ptr, ptr %transcripts1, align 8, !tbaa !12
  %8 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  call void @compute_velocity3(ptr noundef %7, ptr noundef %8)
  %9 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %invalid_transcripts2 = getelementptr inbounds %struct.Path_T, ptr %9, i32 0, i32 52
  %10 = load ptr, ptr %invalid_transcripts2, align 8, !tbaa !22
  %11 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  call void @compute_velocity3(ptr noundef %10, ptr noundef %11)
  %12 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %fusion_transcripts = getelementptr inbounds %struct.Path_T, ptr %12, i32 0, i32 53
  %13 = load ptr, ptr %fusion_transcripts, align 8, !tbaa !24
  store ptr %13, ptr %p, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp = icmp ne ptr %14, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %p, align 8, !tbaa !5
  %call = call ptr @List_head(ptr noundef %15)
  store ptr %call, ptr %transcript, align 8, !tbaa !5
  %16 = load ptr, ptr %transcript, align 8, !tbaa !5
  %call3 = call i32 @velocity_single(ptr noundef %16)
  %17 = load ptr, ptr %transcript, align 8, !tbaa !5
  %velocity = getelementptr inbounds %struct.Transcript_T, ptr %17, i32 0, i32 9
  store i32 %call3, ptr %velocity, align 8, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load ptr, ptr %p, align 8, !tbaa !5
  %call4 = call ptr @List_next(ptr noundef %18)
  store ptr %call4, ptr %p, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %fusion_invalid_transcripts = getelementptr inbounds %struct.Path_T, ptr %19, i32 0, i32 54
  %20 = load ptr, ptr %fusion_invalid_transcripts, align 8, !tbaa !26
  store ptr %20, ptr %p, align 8, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc11, %for.end
  %21 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp6 = icmp ne ptr %21, null
  br i1 %cmp6, label %for.body7, label %for.end13

for.body7:                                        ; preds = %for.cond5
  %22 = load ptr, ptr %p, align 8, !tbaa !5
  %call8 = call ptr @List_head(ptr noundef %22)
  store ptr %call8, ptr %transcript, align 8, !tbaa !5
  %23 = load ptr, ptr %transcript, align 8, !tbaa !5
  %call9 = call i32 @velocity_single(ptr noundef %23)
  %24 = load ptr, ptr %transcript, align 8, !tbaa !5
  %velocity10 = getelementptr inbounds %struct.Transcript_T, ptr %24, i32 0, i32 9
  store i32 %call9, ptr %velocity10, align 8, !tbaa !18
  br label %for.inc11

for.inc11:                                        ; preds = %for.body7
  %25 = load ptr, ptr %p, align 8, !tbaa !5
  %call12 = call ptr @List_next(ptr noundef %25)
  store ptr %call12, ptr %p, align 8, !tbaa !5
  br label %for.cond5, !llvm.loop !35

for.end13:                                        ; preds = %for.cond5
  %26 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %fusion_transcripts14 = getelementptr inbounds %struct.Path_T, ptr %26, i32 0, i32 53
  %27 = load ptr, ptr %fusion_transcripts14, align 8, !tbaa !24
  store ptr %27, ptr %p, align 8, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc21, %for.end13
  %28 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp16 = icmp ne ptr %28, null
  br i1 %cmp16, label %for.body17, label %for.end23

for.body17:                                       ; preds = %for.cond15
  %29 = load ptr, ptr %p, align 8, !tbaa !5
  %call18 = call ptr @List_head(ptr noundef %29)
  store ptr %call18, ptr %transcript, align 8, !tbaa !5
  %30 = load ptr, ptr %transcript, align 8, !tbaa !5
  %call19 = call i32 @velocity_single(ptr noundef %30)
  %31 = load ptr, ptr %transcript, align 8, !tbaa !5
  %velocity20 = getelementptr inbounds %struct.Transcript_T, ptr %31, i32 0, i32 9
  store i32 %call19, ptr %velocity20, align 8, !tbaa !18
  br label %for.inc21

for.inc21:                                        ; preds = %for.body17
  %32 = load ptr, ptr %p, align 8, !tbaa !5
  %call22 = call ptr @List_next(ptr noundef %32)
  store ptr %call22, ptr %p, align 8, !tbaa !5
  br label %for.cond15, !llvm.loop !36

for.end23:                                        ; preds = %for.cond15
  %33 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %fusion_invalid_transcripts24 = getelementptr inbounds %struct.Path_T, ptr %33, i32 0, i32 54
  %34 = load ptr, ptr %fusion_invalid_transcripts24, align 8, !tbaa !26
  store ptr %34, ptr %p, align 8, !tbaa !5
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc31, %for.end23
  %35 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp26 = icmp ne ptr %35, null
  br i1 %cmp26, label %for.body27, label %for.end33

for.body27:                                       ; preds = %for.cond25
  %36 = load ptr, ptr %p, align 8, !tbaa !5
  %call28 = call ptr @List_head(ptr noundef %36)
  store ptr %call28, ptr %transcript, align 8, !tbaa !5
  %37 = load ptr, ptr %transcript, align 8, !tbaa !5
  %call29 = call i32 @velocity_single(ptr noundef %37)
  %38 = load ptr, ptr %transcript, align 8, !tbaa !5
  %velocity30 = getelementptr inbounds %struct.Transcript_T, ptr %38, i32 0, i32 9
  store i32 %call29, ptr %velocity30, align 8, !tbaa !18
  br label %for.inc31

for.inc31:                                        ; preds = %for.body27
  %39 = load ptr, ptr %p, align 8, !tbaa !5
  %call32 = call ptr @List_next(ptr noundef %39)
  store ptr %call32, ptr %p, align 8, !tbaa !5
  br label %for.cond25, !llvm.loop !37

for.end33:                                        ; preds = %for.cond25
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcript) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_velocity5(ptr noundef %transcripts5, ptr noundef %path3) #1 {
entry:
  %transcripts5.addr = alloca ptr, align 8
  %path3.addr = alloca ptr, align 8
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
  %2 = load ptr, ptr %transcripts, align 8, !tbaa !12
  store ptr %2, ptr %q, align 8, !tbaa !5
  %3 = load ptr, ptr %path3.addr, align 8, !tbaa !5
  %invalid_transcripts = getelementptr inbounds %struct.Path_T, ptr %3, i32 0, i32 52
  %4 = load ptr, ptr %invalid_transcripts, align 8, !tbaa !22
  store ptr %4, ptr %r, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end54, %entry
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
  store i32 -1, ptr %transcript3_num, align 4, !tbaa !38
  br label %if.end

if.else:                                          ; preds = %while.body
  %11 = load ptr, ptr %q, align 8, !tbaa !5
  %call = call ptr @List_head(ptr noundef %11)
  store ptr %call, ptr %transcript3, align 8, !tbaa !5
  %12 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %num = getelementptr inbounds %struct.Transcript_T, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %num, align 8, !tbaa !39
  store i32 %13, ptr %transcript3_num, align 4, !tbaa !38
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load ptr, ptr %r, align 8, !tbaa !5
  %cmp4 = icmp eq ptr %14, null
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.end
  store i32 -1, ptr %invalid_transcript3_num, align 4, !tbaa !38
  br label %if.end9

if.else6:                                         ; preds = %if.end
  %15 = load ptr, ptr %r, align 8, !tbaa !5
  %call7 = call ptr @List_head(ptr noundef %15)
  store ptr %call7, ptr %invalid_transcript3, align 8, !tbaa !5
  %16 = load ptr, ptr %invalid_transcript3, align 8, !tbaa !5
  %num8 = getelementptr inbounds %struct.Transcript_T, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %num8, align 8, !tbaa !39
  store i32 %17, ptr %invalid_transcript3_num, align 4, !tbaa !38
  br label %if.end9

if.end9:                                          ; preds = %if.else6, %if.then5
  %18 = load ptr, ptr %p, align 8, !tbaa !5
  %call10 = call ptr @List_head(ptr noundef %18)
  store ptr %call10, ptr %transcript5, align 8, !tbaa !5
  %19 = load i32, ptr %transcript3_num, align 4, !tbaa !38
  %20 = load i32, ptr %invalid_transcript3_num, align 4, !tbaa !38
  %cmp11 = icmp ult i32 %19, %20
  br i1 %cmp11, label %if.then12, label %if.else30

if.then12:                                        ; preds = %if.end9
  %21 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %num13 = getelementptr inbounds %struct.Transcript_T, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %num13, align 8, !tbaa !39
  %23 = load i32, ptr %transcript3_num, align 4, !tbaa !38
  %cmp14 = icmp ult i32 %22, %23
  br i1 %cmp14, label %if.then15, label %if.else18

if.then15:                                        ; preds = %if.then12
  %24 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %call16 = call i32 @velocity_single(ptr noundef %24)
  %25 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %velocity = getelementptr inbounds %struct.Transcript_T, ptr %25, i32 0, i32 9
  store i32 %call16, ptr %velocity, align 8, !tbaa !18
  %26 = load ptr, ptr %p, align 8, !tbaa !5
  %call17 = call ptr @List_next(ptr noundef %26)
  store ptr %call17, ptr %p, align 8, !tbaa !5
  br label %if.end29

if.else18:                                        ; preds = %if.then12
  %27 = load i32, ptr %transcript3_num, align 4, !tbaa !38
  %28 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %num19 = getelementptr inbounds %struct.Transcript_T, ptr %28, i32 0, i32 0
  %29 = load i32, ptr %num19, align 8, !tbaa !39
  %cmp20 = icmp ult i32 %27, %29
  br i1 %cmp20, label %if.then21, label %if.else23

if.then21:                                        ; preds = %if.else18
  %30 = load ptr, ptr %q, align 8, !tbaa !5
  %call22 = call ptr @List_next(ptr noundef %30)
  store ptr %call22, ptr %q, align 8, !tbaa !5
  br label %if.end28

if.else23:                                        ; preds = %if.else18
  %31 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %32 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %call24 = call i32 @velocity_paired(ptr noundef %31, ptr noundef %32)
  %33 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %velocity25 = getelementptr inbounds %struct.Transcript_T, ptr %33, i32 0, i32 9
  store i32 %call24, ptr %velocity25, align 8, !tbaa !18
  %34 = load ptr, ptr %p, align 8, !tbaa !5
  %call26 = call ptr @List_next(ptr noundef %34)
  store ptr %call26, ptr %p, align 8, !tbaa !5
  %35 = load ptr, ptr %q, align 8, !tbaa !5
  %call27 = call ptr @List_next(ptr noundef %35)
  store ptr %call27, ptr %q, align 8, !tbaa !5
  br label %if.end28

if.end28:                                         ; preds = %if.else23, %if.then21
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then15
  br label %if.end54

if.else30:                                        ; preds = %if.end9
  %36 = load i32, ptr %invalid_transcript3_num, align 4, !tbaa !38
  %37 = load i32, ptr %transcript3_num, align 4, !tbaa !38
  %cmp31 = icmp ult i32 %36, %37
  br i1 %cmp31, label %if.then32, label %if.else51

if.then32:                                        ; preds = %if.else30
  %38 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %num33 = getelementptr inbounds %struct.Transcript_T, ptr %38, i32 0, i32 0
  %39 = load i32, ptr %num33, align 8, !tbaa !39
  %40 = load i32, ptr %invalid_transcript3_num, align 4, !tbaa !38
  %cmp34 = icmp ult i32 %39, %40
  br i1 %cmp34, label %if.then35, label %if.else39

if.then35:                                        ; preds = %if.then32
  %41 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %call36 = call i32 @velocity_single(ptr noundef %41)
  %42 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %velocity37 = getelementptr inbounds %struct.Transcript_T, ptr %42, i32 0, i32 9
  store i32 %call36, ptr %velocity37, align 8, !tbaa !18
  %43 = load ptr, ptr %p, align 8, !tbaa !5
  %call38 = call ptr @List_next(ptr noundef %43)
  store ptr %call38, ptr %p, align 8, !tbaa !5
  br label %if.end50

if.else39:                                        ; preds = %if.then32
  %44 = load i32, ptr %invalid_transcript3_num, align 4, !tbaa !38
  %45 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %num40 = getelementptr inbounds %struct.Transcript_T, ptr %45, i32 0, i32 0
  %46 = load i32, ptr %num40, align 8, !tbaa !39
  %cmp41 = icmp ult i32 %44, %46
  br i1 %cmp41, label %if.then42, label %if.else44

if.then42:                                        ; preds = %if.else39
  %47 = load ptr, ptr %r, align 8, !tbaa !5
  %call43 = call ptr @List_next(ptr noundef %47)
  store ptr %call43, ptr %r, align 8, !tbaa !5
  br label %if.end49

if.else44:                                        ; preds = %if.else39
  %48 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %49 = load ptr, ptr %invalid_transcript3, align 8, !tbaa !5
  %call45 = call i32 @velocity_paired(ptr noundef %48, ptr noundef %49)
  %50 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %velocity46 = getelementptr inbounds %struct.Transcript_T, ptr %50, i32 0, i32 9
  store i32 %call45, ptr %velocity46, align 8, !tbaa !18
  %51 = load ptr, ptr %p, align 8, !tbaa !5
  %call47 = call ptr @List_next(ptr noundef %51)
  store ptr %call47, ptr %p, align 8, !tbaa !5
  %52 = load ptr, ptr %r, align 8, !tbaa !5
  %call48 = call ptr @List_next(ptr noundef %52)
  store ptr %call48, ptr %r, align 8, !tbaa !5
  br label %if.end49

if.end49:                                         ; preds = %if.else44, %if.then42
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then35
  br label %if.end53

if.else51:                                        ; preds = %if.else30
  %53 = load ptr, ptr @stderr, align 8, !tbaa !5
  %54 = load i32, ptr %transcript3_num, align 4, !tbaa !38
  %call52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef @.str.1, i32 noundef %54)
  call void @abort() #6
  unreachable

if.end53:                                         ; preds = %if.end50
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end29
  br label %while.cond, !llvm.loop !40

while.end:                                        ; preds = %land.end
  br label %while.cond55

while.cond55:                                     ; preds = %while.body57, %while.end
  %55 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp56 = icmp ne ptr %55, null
  br i1 %cmp56, label %while.body57, label %while.end62

while.body57:                                     ; preds = %while.cond55
  %56 = load ptr, ptr %p, align 8, !tbaa !5
  %call58 = call ptr @List_head(ptr noundef %56)
  store ptr %call58, ptr %transcript5, align 8, !tbaa !5
  %57 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %call59 = call i32 @velocity_single(ptr noundef %57)
  %58 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %velocity60 = getelementptr inbounds %struct.Transcript_T, ptr %58, i32 0, i32 9
  store i32 %call59, ptr %velocity60, align 8, !tbaa !18
  %59 = load ptr, ptr %p, align 8, !tbaa !5
  %call61 = call ptr @List_next(ptr noundef %59)
  store ptr %call61, ptr %p, align 8, !tbaa !5
  br label %while.cond55, !llvm.loop !41

while.end62:                                      ; preds = %while.cond55
  call void @llvm.lifetime.end.p0(i64 4, ptr %invalid_transcript3_num) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %transcript3_num) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %invalid_transcript3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcript3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcript5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_velocity3(ptr noundef %transcripts3, ptr noundef %path5) #1 {
entry:
  %transcripts3.addr = alloca ptr, align 8
  %path5.addr = alloca ptr, align 8
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
  %2 = load ptr, ptr %transcripts, align 8, !tbaa !12
  store ptr %2, ptr %q, align 8, !tbaa !5
  %3 = load ptr, ptr %path5.addr, align 8, !tbaa !5
  %invalid_transcripts = getelementptr inbounds %struct.Path_T, ptr %3, i32 0, i32 52
  %4 = load ptr, ptr %invalid_transcripts, align 8, !tbaa !22
  store ptr %4, ptr %r, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end54, %entry
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
  store i32 -1, ptr %transcript5_num, align 4, !tbaa !38
  br label %if.end

if.else:                                          ; preds = %while.body
  %11 = load ptr, ptr %q, align 8, !tbaa !5
  %call = call ptr @List_head(ptr noundef %11)
  store ptr %call, ptr %transcript5, align 8, !tbaa !5
  %12 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %num = getelementptr inbounds %struct.Transcript_T, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %num, align 8, !tbaa !39
  store i32 %13, ptr %transcript5_num, align 4, !tbaa !38
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load ptr, ptr %r, align 8, !tbaa !5
  %cmp4 = icmp eq ptr %14, null
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.end
  store i32 -1, ptr %invalid_transcript5_num, align 4, !tbaa !38
  br label %if.end9

if.else6:                                         ; preds = %if.end
  %15 = load ptr, ptr %r, align 8, !tbaa !5
  %call7 = call ptr @List_head(ptr noundef %15)
  store ptr %call7, ptr %invalid_transcript5, align 8, !tbaa !5
  %16 = load ptr, ptr %invalid_transcript5, align 8, !tbaa !5
  %num8 = getelementptr inbounds %struct.Transcript_T, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %num8, align 8, !tbaa !39
  store i32 %17, ptr %invalid_transcript5_num, align 4, !tbaa !38
  br label %if.end9

if.end9:                                          ; preds = %if.else6, %if.then5
  %18 = load ptr, ptr %p, align 8, !tbaa !5
  %call10 = call ptr @List_head(ptr noundef %18)
  store ptr %call10, ptr %transcript3, align 8, !tbaa !5
  %19 = load i32, ptr %transcript5_num, align 4, !tbaa !38
  %20 = load i32, ptr %invalid_transcript5_num, align 4, !tbaa !38
  %cmp11 = icmp ult i32 %19, %20
  br i1 %cmp11, label %if.then12, label %if.else30

if.then12:                                        ; preds = %if.end9
  %21 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %num13 = getelementptr inbounds %struct.Transcript_T, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %num13, align 8, !tbaa !39
  %23 = load i32, ptr %transcript5_num, align 4, !tbaa !38
  %cmp14 = icmp ult i32 %22, %23
  br i1 %cmp14, label %if.then15, label %if.else18

if.then15:                                        ; preds = %if.then12
  %24 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %call16 = call i32 @velocity_single(ptr noundef %24)
  %25 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %velocity = getelementptr inbounds %struct.Transcript_T, ptr %25, i32 0, i32 9
  store i32 %call16, ptr %velocity, align 8, !tbaa !18
  %26 = load ptr, ptr %p, align 8, !tbaa !5
  %call17 = call ptr @List_next(ptr noundef %26)
  store ptr %call17, ptr %p, align 8, !tbaa !5
  br label %if.end29

if.else18:                                        ; preds = %if.then12
  %27 = load i32, ptr %transcript5_num, align 4, !tbaa !38
  %28 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %num19 = getelementptr inbounds %struct.Transcript_T, ptr %28, i32 0, i32 0
  %29 = load i32, ptr %num19, align 8, !tbaa !39
  %cmp20 = icmp ult i32 %27, %29
  br i1 %cmp20, label %if.then21, label %if.else23

if.then21:                                        ; preds = %if.else18
  %30 = load ptr, ptr %q, align 8, !tbaa !5
  %call22 = call ptr @List_next(ptr noundef %30)
  store ptr %call22, ptr %q, align 8, !tbaa !5
  br label %if.end28

if.else23:                                        ; preds = %if.else18
  %31 = load ptr, ptr %transcript5, align 8, !tbaa !5
  %32 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %call24 = call i32 @velocity_paired(ptr noundef %31, ptr noundef %32)
  %33 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %velocity25 = getelementptr inbounds %struct.Transcript_T, ptr %33, i32 0, i32 9
  store i32 %call24, ptr %velocity25, align 8, !tbaa !18
  %34 = load ptr, ptr %p, align 8, !tbaa !5
  %call26 = call ptr @List_next(ptr noundef %34)
  store ptr %call26, ptr %p, align 8, !tbaa !5
  %35 = load ptr, ptr %q, align 8, !tbaa !5
  %call27 = call ptr @List_next(ptr noundef %35)
  store ptr %call27, ptr %q, align 8, !tbaa !5
  br label %if.end28

if.end28:                                         ; preds = %if.else23, %if.then21
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then15
  br label %if.end54

if.else30:                                        ; preds = %if.end9
  %36 = load i32, ptr %invalid_transcript5_num, align 4, !tbaa !38
  %37 = load i32, ptr %transcript5_num, align 4, !tbaa !38
  %cmp31 = icmp ult i32 %36, %37
  br i1 %cmp31, label %if.then32, label %if.else51

if.then32:                                        ; preds = %if.else30
  %38 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %num33 = getelementptr inbounds %struct.Transcript_T, ptr %38, i32 0, i32 0
  %39 = load i32, ptr %num33, align 8, !tbaa !39
  %40 = load i32, ptr %invalid_transcript5_num, align 4, !tbaa !38
  %cmp34 = icmp ult i32 %39, %40
  br i1 %cmp34, label %if.then35, label %if.else39

if.then35:                                        ; preds = %if.then32
  %41 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %call36 = call i32 @velocity_single(ptr noundef %41)
  %42 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %velocity37 = getelementptr inbounds %struct.Transcript_T, ptr %42, i32 0, i32 9
  store i32 %call36, ptr %velocity37, align 8, !tbaa !18
  %43 = load ptr, ptr %p, align 8, !tbaa !5
  %call38 = call ptr @List_next(ptr noundef %43)
  store ptr %call38, ptr %p, align 8, !tbaa !5
  br label %if.end50

if.else39:                                        ; preds = %if.then32
  %44 = load i32, ptr %invalid_transcript5_num, align 4, !tbaa !38
  %45 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %num40 = getelementptr inbounds %struct.Transcript_T, ptr %45, i32 0, i32 0
  %46 = load i32, ptr %num40, align 8, !tbaa !39
  %cmp41 = icmp ult i32 %44, %46
  br i1 %cmp41, label %if.then42, label %if.else44

if.then42:                                        ; preds = %if.else39
  %47 = load ptr, ptr %r, align 8, !tbaa !5
  %call43 = call ptr @List_next(ptr noundef %47)
  store ptr %call43, ptr %r, align 8, !tbaa !5
  br label %if.end49

if.else44:                                        ; preds = %if.else39
  %48 = load ptr, ptr %invalid_transcript5, align 8, !tbaa !5
  %49 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %call45 = call i32 @velocity_paired(ptr noundef %48, ptr noundef %49)
  %50 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %velocity46 = getelementptr inbounds %struct.Transcript_T, ptr %50, i32 0, i32 9
  store i32 %call45, ptr %velocity46, align 8, !tbaa !18
  %51 = load ptr, ptr %p, align 8, !tbaa !5
  %call47 = call ptr @List_next(ptr noundef %51)
  store ptr %call47, ptr %p, align 8, !tbaa !5
  %52 = load ptr, ptr %r, align 8, !tbaa !5
  %call48 = call ptr @List_next(ptr noundef %52)
  store ptr %call48, ptr %r, align 8, !tbaa !5
  br label %if.end49

if.end49:                                         ; preds = %if.else44, %if.then42
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then35
  br label %if.end53

if.else51:                                        ; preds = %if.else30
  %53 = load ptr, ptr @stderr, align 8, !tbaa !5
  %54 = load i32, ptr %transcript5_num, align 4, !tbaa !38
  %call52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef @.str.2, i32 noundef %54)
  call void @abort() #6
  unreachable

if.end53:                                         ; preds = %if.end50
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end29
  br label %while.cond, !llvm.loop !42

while.end:                                        ; preds = %land.end
  br label %while.cond55

while.cond55:                                     ; preds = %while.body57, %while.end
  %55 = load ptr, ptr %p, align 8, !tbaa !5
  %cmp56 = icmp ne ptr %55, null
  br i1 %cmp56, label %while.body57, label %while.end62

while.body57:                                     ; preds = %while.cond55
  %56 = load ptr, ptr %p, align 8, !tbaa !5
  %call58 = call ptr @List_head(ptr noundef %56)
  store ptr %call58, ptr %transcript3, align 8, !tbaa !5
  %57 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %call59 = call i32 @velocity_single(ptr noundef %57)
  %58 = load ptr, ptr %transcript3, align 8, !tbaa !5
  %velocity60 = getelementptr inbounds %struct.Transcript_T, ptr %58, i32 0, i32 9
  store i32 %call59, ptr %velocity60, align 8, !tbaa !18
  %59 = load ptr, ptr %p, align 8, !tbaa !5
  %call61 = call ptr @List_next(ptr noundef %59)
  store ptr %call61, ptr %p, align 8, !tbaa !5
  br label %while.cond55, !llvm.loop !43

while.end62:                                      ; preds = %while.cond55
  call void @llvm.lifetime.end.p0(i64 4, ptr %invalid_transcript5_num) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %transcript5_num) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcript3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %invalid_transcript5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %transcript5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #5
  ret void
}

declare ptr @Mem_alloc(i64 noundef, ptr noundef, i32 noundef) #3

declare void @Mem_free(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @List_length(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  store i32 0, ptr %n, align 4, !tbaa !38
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %n, align 4, !tbaa !38
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %n, align 4, !tbaa !38
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !5
  %rest = getelementptr inbounds %struct.List_T, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %rest, align 8, !tbaa !11
  store ptr %3, ptr %list.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %n, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  ret i32 %4
}

declare ptr @List_last_value(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @velocity_paired(ptr noundef %transcript5, ptr noundef %transcript3) #1 {
entry:
  %retval = alloca i32, align 4
  %transcript5.addr = alloca ptr, align 8
  %transcript3.addr = alloca ptr, align 8
  %first_exon = alloca ptr, align 8
  %last_exon = alloca ptr, align 8
  %exon5 = alloca ptr, align 8
  %exon3 = alloca ptr, align 8
  %splicedp = alloca i8, align 1
  %retainedp = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %transcript5, ptr %transcript5.addr, align 8, !tbaa !5
  store ptr %transcript3, ptr %transcript3.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %first_exon) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_exon) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %exon5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %exon3) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %splicedp) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr %retainedp) #5
  store i8 0, ptr %retainedp, align 1, !tbaa !28
  %0 = load ptr, ptr %transcript5.addr, align 8, !tbaa !5
  %nexons = getelementptr inbounds %struct.Transcript_T, ptr %0, i32 0, i32 7
  %1 = load i32, ptr %nexons, align 8, !tbaa !29
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, ptr %splicedp, align 1, !tbaa !28
  store i8 0, ptr %retainedp, align 1, !tbaa !28
  br label %if.end193

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %transcript5.addr, align 8, !tbaa !5
  %exons = getelementptr inbounds %struct.Transcript_T, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %exons, align 8, !tbaa !30
  %call = call i32 @List_length(ptr noundef %3)
  %cmp1 = icmp eq i32 %call, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else57

land.lhs.true:                                    ; preds = %if.else
  %4 = load ptr, ptr %transcript3.addr, align 8, !tbaa !5
  %exons2 = getelementptr inbounds %struct.Transcript_T, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %exons2, align 8, !tbaa !30
  %call3 = call i32 @List_length(ptr noundef %5)
  %cmp4 = icmp eq i32 %call3, 1
  br i1 %cmp4, label %if.then5, label %if.else57

if.then5:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %transcript5.addr, align 8, !tbaa !5
  %exons6 = getelementptr inbounds %struct.Transcript_T, ptr %6, i32 0, i32 6
  %7 = load ptr, ptr %exons6, align 8, !tbaa !30
  %call7 = call ptr @List_head(ptr noundef %7)
  store ptr %call7, ptr %exon5, align 8, !tbaa !5
  %8 = load ptr, ptr %transcript3.addr, align 8, !tbaa !5
  %exons8 = getelementptr inbounds %struct.Transcript_T, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %exons8, align 8, !tbaa !30
  %call9 = call ptr @List_head(ptr noundef %9)
  store ptr %call9, ptr %exon3, align 8, !tbaa !5
  %10 = load ptr, ptr %exon5, align 8, !tbaa !5
  %exoni = getelementptr inbounds %struct.Exon_T, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %exoni, align 4, !tbaa !45
  %12 = load ptr, ptr %exon3, align 8, !tbaa !5
  %exoni10 = getelementptr inbounds %struct.Exon_T, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %exoni10, align 4, !tbaa !45
  %cmp11 = icmp eq i32 %11, %13
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.then5
  store i8 0, ptr %splicedp, align 1, !tbaa !28
  br label %if.end

if.else13:                                        ; preds = %if.then5
  store i8 1, ptr %splicedp, align 1, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then12
  %14 = load ptr, ptr %exon5, align 8, !tbaa !5
  %firstchar = getelementptr inbounds %struct.Exon_T, ptr %14, i32 0, i32 1
  %15 = load i8, ptr %firstchar, align 4, !tbaa !31
  %conv = sext i8 %15 to i32
  %cmp14 = icmp eq i32 %conv, 105
  br i1 %cmp14, label %land.lhs.true16, label %if.else21

land.lhs.true16:                                  ; preds = %if.end
  %16 = load ptr, ptr %exon5, align 8, !tbaa !5
  %lastchar = getelementptr inbounds %struct.Exon_T, ptr %16, i32 0, i32 2
  %17 = load i8, ptr %lastchar, align 1, !tbaa !33
  %conv17 = sext i8 %17 to i32
  %cmp18 = icmp eq i32 %conv17, 105
  br i1 %cmp18, label %if.then20, label %if.else21

if.then20:                                        ; preds = %land.lhs.true16
  store i8 1, ptr %retainedp, align 1, !tbaa !28
  br label %if.end56

if.else21:                                        ; preds = %land.lhs.true16, %if.end
  %18 = load ptr, ptr %exon3, align 8, !tbaa !5
  %firstchar22 = getelementptr inbounds %struct.Exon_T, ptr %18, i32 0, i32 1
  %19 = load i8, ptr %firstchar22, align 4, !tbaa !31
  %conv23 = sext i8 %19 to i32
  %cmp24 = icmp eq i32 %conv23, 105
  br i1 %cmp24, label %land.lhs.true26, label %if.else32

land.lhs.true26:                                  ; preds = %if.else21
  %20 = load ptr, ptr %exon3, align 8, !tbaa !5
  %lastchar27 = getelementptr inbounds %struct.Exon_T, ptr %20, i32 0, i32 2
  %21 = load i8, ptr %lastchar27, align 1, !tbaa !33
  %conv28 = sext i8 %21 to i32
  %cmp29 = icmp eq i32 %conv28, 105
  br i1 %cmp29, label %if.then31, label %if.else32

if.then31:                                        ; preds = %land.lhs.true26
  store i8 1, ptr %retainedp, align 1, !tbaa !28
  br label %if.end55

if.else32:                                        ; preds = %land.lhs.true26, %if.else21
  %22 = load ptr, ptr %exon5, align 8, !tbaa !5
  %firstchar33 = getelementptr inbounds %struct.Exon_T, ptr %22, i32 0, i32 1
  %23 = load i8, ptr %firstchar33, align 4, !tbaa !31
  %conv34 = sext i8 %23 to i32
  %cmp35 = icmp eq i32 %conv34, 120
  br i1 %cmp35, label %if.then41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else32
  %24 = load ptr, ptr %exon5, align 8, !tbaa !5
  %lastchar37 = getelementptr inbounds %struct.Exon_T, ptr %24, i32 0, i32 2
  %25 = load i8, ptr %lastchar37, align 1, !tbaa !33
  %conv38 = sext i8 %25 to i32
  %cmp39 = icmp eq i32 %conv38, 120
  br i1 %cmp39, label %if.then41, label %if.else42

if.then41:                                        ; preds = %lor.lhs.false, %if.else32
  store i8 1, ptr %retainedp, align 1, !tbaa !28
  br label %if.end54

if.else42:                                        ; preds = %lor.lhs.false
  %26 = load ptr, ptr %exon3, align 8, !tbaa !5
  %firstchar43 = getelementptr inbounds %struct.Exon_T, ptr %26, i32 0, i32 1
  %27 = load i8, ptr %firstchar43, align 4, !tbaa !31
  %conv44 = sext i8 %27 to i32
  %cmp45 = icmp eq i32 %conv44, 120
  br i1 %cmp45, label %if.then52, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %if.else42
  %28 = load ptr, ptr %exon3, align 8, !tbaa !5
  %lastchar48 = getelementptr inbounds %struct.Exon_T, ptr %28, i32 0, i32 2
  %29 = load i8, ptr %lastchar48, align 1, !tbaa !33
  %conv49 = sext i8 %29 to i32
  %cmp50 = icmp eq i32 %conv49, 120
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %lor.lhs.false47, %if.else42
  store i8 1, ptr %retainedp, align 1, !tbaa !28
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %lor.lhs.false47
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then41
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then31
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then20
  br label %if.end192

if.else57:                                        ; preds = %land.lhs.true, %if.else
  %30 = load ptr, ptr %transcript5.addr, align 8, !tbaa !5
  %exons58 = getelementptr inbounds %struct.Transcript_T, ptr %30, i32 0, i32 6
  %31 = load ptr, ptr %exons58, align 8, !tbaa !30
  %call59 = call i32 @List_length(ptr noundef %31)
  %cmp60 = icmp eq i32 %call59, 1
  br i1 %cmp60, label %if.then62, label %if.else106

if.then62:                                        ; preds = %if.else57
  store i8 1, ptr %splicedp, align 1, !tbaa !28
  %32 = load ptr, ptr %transcript5.addr, align 8, !tbaa !5
  %exons63 = getelementptr inbounds %struct.Transcript_T, ptr %32, i32 0, i32 6
  %33 = load ptr, ptr %exons63, align 8, !tbaa !30
  %call64 = call ptr @List_head(ptr noundef %33)
  store ptr %call64, ptr %exon5, align 8, !tbaa !5
  %34 = load ptr, ptr %exon5, align 8, !tbaa !5
  %firstchar65 = getelementptr inbounds %struct.Exon_T, ptr %34, i32 0, i32 1
  %35 = load i8, ptr %firstchar65, align 4, !tbaa !31
  %conv66 = sext i8 %35 to i32
  %cmp67 = icmp eq i32 %conv66, 105
  br i1 %cmp67, label %land.lhs.true69, label %if.else75

land.lhs.true69:                                  ; preds = %if.then62
  %36 = load ptr, ptr %exon5, align 8, !tbaa !5
  %lastchar70 = getelementptr inbounds %struct.Exon_T, ptr %36, i32 0, i32 2
  %37 = load i8, ptr %lastchar70, align 1, !tbaa !33
  %conv71 = sext i8 %37 to i32
  %cmp72 = icmp eq i32 %conv71, 105
  br i1 %cmp72, label %if.then74, label %if.else75

if.then74:                                        ; preds = %land.lhs.true69
  store i8 1, ptr %retainedp, align 1, !tbaa !28
  br label %if.end105

if.else75:                                        ; preds = %land.lhs.true69, %if.then62
  %38 = load ptr, ptr %exon5, align 8, !tbaa !5
  %firstchar76 = getelementptr inbounds %struct.Exon_T, ptr %38, i32 0, i32 1
  %39 = load i8, ptr %firstchar76, align 4, !tbaa !31
  %conv77 = sext i8 %39 to i32
  %cmp78 = icmp eq i32 %conv77, 120
  br i1 %cmp78, label %if.then85, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %if.else75
  %40 = load ptr, ptr %exon5, align 8, !tbaa !5
  %lastchar81 = getelementptr inbounds %struct.Exon_T, ptr %40, i32 0, i32 2
  %41 = load i8, ptr %lastchar81, align 1, !tbaa !33
  %conv82 = sext i8 %41 to i32
  %cmp83 = icmp eq i32 %conv82, 120
  br i1 %cmp83, label %if.then85, label %if.else86

if.then85:                                        ; preds = %lor.lhs.false80, %if.else75
  store i8 1, ptr %retainedp, align 1, !tbaa !28
  br label %if.end104

if.else86:                                        ; preds = %lor.lhs.false80
  %42 = load ptr, ptr %transcript3.addr, align 8, !tbaa !5
  %exons87 = getelementptr inbounds %struct.Transcript_T, ptr %42, i32 0, i32 6
  %43 = load ptr, ptr %exons87, align 8, !tbaa !30
  %call88 = call ptr @List_head(ptr noundef %43)
  store ptr %call88, ptr %first_exon, align 8, !tbaa !5
  %44 = load ptr, ptr %transcript3.addr, align 8, !tbaa !5
  %exons89 = getelementptr inbounds %struct.Transcript_T, ptr %44, i32 0, i32 6
  %45 = load ptr, ptr %exons89, align 8, !tbaa !30
  %call90 = call ptr @List_last_value(ptr noundef %45, ptr noundef null)
  store ptr %call90, ptr %last_exon, align 8, !tbaa !5
  %46 = load ptr, ptr %first_exon, align 8, !tbaa !5
  %firstchar91 = getelementptr inbounds %struct.Exon_T, ptr %46, i32 0, i32 1
  %47 = load i8, ptr %firstchar91, align 4, !tbaa !31
  %conv92 = sext i8 %47 to i32
  %cmp93 = icmp eq i32 %conv92, 120
  br i1 %cmp93, label %if.then95, label %if.else96

if.then95:                                        ; preds = %if.else86
  store i8 1, ptr %retainedp, align 1, !tbaa !28
  br label %if.end103

if.else96:                                        ; preds = %if.else86
  %48 = load ptr, ptr %last_exon, align 8, !tbaa !5
  %lastchar97 = getelementptr inbounds %struct.Exon_T, ptr %48, i32 0, i32 2
  %49 = load i8, ptr %lastchar97, align 1, !tbaa !33
  %conv98 = sext i8 %49 to i32
  %cmp99 = icmp eq i32 %conv98, 120
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %if.else96
  store i8 1, ptr %retainedp, align 1, !tbaa !28
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %if.else96
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then95
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then85
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.then74
  br label %if.end191

if.else106:                                       ; preds = %if.else57
  %50 = load ptr, ptr %transcript3.addr, align 8, !tbaa !5
  %exons107 = getelementptr inbounds %struct.Transcript_T, ptr %50, i32 0, i32 6
  %51 = load ptr, ptr %exons107, align 8, !tbaa !30
  %call108 = call i32 @List_length(ptr noundef %51)
  %cmp109 = icmp eq i32 %call108, 1
  br i1 %cmp109, label %if.then111, label %if.else155

if.then111:                                       ; preds = %if.else106
  store i8 1, ptr %splicedp, align 1, !tbaa !28
  %52 = load ptr, ptr %transcript3.addr, align 8, !tbaa !5
  %exons112 = getelementptr inbounds %struct.Transcript_T, ptr %52, i32 0, i32 6
  %53 = load ptr, ptr %exons112, align 8, !tbaa !30
  %call113 = call ptr @List_head(ptr noundef %53)
  store ptr %call113, ptr %exon3, align 8, !tbaa !5
  %54 = load ptr, ptr %exon3, align 8, !tbaa !5
  %firstchar114 = getelementptr inbounds %struct.Exon_T, ptr %54, i32 0, i32 1
  %55 = load i8, ptr %firstchar114, align 4, !tbaa !31
  %conv115 = sext i8 %55 to i32
  %cmp116 = icmp eq i32 %conv115, 105
  br i1 %cmp116, label %land.lhs.true118, label %if.else124

land.lhs.true118:                                 ; preds = %if.then111
  %56 = load ptr, ptr %exon3, align 8, !tbaa !5
  %lastchar119 = getelementptr inbounds %struct.Exon_T, ptr %56, i32 0, i32 2
  %57 = load i8, ptr %lastchar119, align 1, !tbaa !33
  %conv120 = sext i8 %57 to i32
  %cmp121 = icmp eq i32 %conv120, 105
  br i1 %cmp121, label %if.then123, label %if.else124

if.then123:                                       ; preds = %land.lhs.true118
  store i8 1, ptr %retainedp, align 1, !tbaa !28
  br label %if.end154

if.else124:                                       ; preds = %land.lhs.true118, %if.then111
  %58 = load ptr, ptr %exon3, align 8, !tbaa !5
  %firstchar125 = getelementptr inbounds %struct.Exon_T, ptr %58, i32 0, i32 1
  %59 = load i8, ptr %firstchar125, align 4, !tbaa !31
  %conv126 = sext i8 %59 to i32
  %cmp127 = icmp eq i32 %conv126, 120
  br i1 %cmp127, label %if.then134, label %lor.lhs.false129

lor.lhs.false129:                                 ; preds = %if.else124
  %60 = load ptr, ptr %exon3, align 8, !tbaa !5
  %lastchar130 = getelementptr inbounds %struct.Exon_T, ptr %60, i32 0, i32 2
  %61 = load i8, ptr %lastchar130, align 1, !tbaa !33
  %conv131 = sext i8 %61 to i32
  %cmp132 = icmp eq i32 %conv131, 120
  br i1 %cmp132, label %if.then134, label %if.else135

if.then134:                                       ; preds = %lor.lhs.false129, %if.else124
  store i8 1, ptr %retainedp, align 1, !tbaa !28
  br label %if.end153

if.else135:                                       ; preds = %lor.lhs.false129
  %62 = load ptr, ptr %transcript5.addr, align 8, !tbaa !5
  %exons136 = getelementptr inbounds %struct.Transcript_T, ptr %62, i32 0, i32 6
  %63 = load ptr, ptr %exons136, align 8, !tbaa !30
  %call137 = call ptr @List_head(ptr noundef %63)
  store ptr %call137, ptr %first_exon, align 8, !tbaa !5
  %64 = load ptr, ptr %transcript5.addr, align 8, !tbaa !5
  %exons138 = getelementptr inbounds %struct.Transcript_T, ptr %64, i32 0, i32 6
  %65 = load ptr, ptr %exons138, align 8, !tbaa !30
  %call139 = call ptr @List_last_value(ptr noundef %65, ptr noundef null)
  store ptr %call139, ptr %last_exon, align 8, !tbaa !5
  %66 = load ptr, ptr %first_exon, align 8, !tbaa !5
  %firstchar140 = getelementptr inbounds %struct.Exon_T, ptr %66, i32 0, i32 1
  %67 = load i8, ptr %firstchar140, align 4, !tbaa !31
  %conv141 = sext i8 %67 to i32
  %cmp142 = icmp eq i32 %conv141, 120
  br i1 %cmp142, label %if.then144, label %if.else145

if.then144:                                       ; preds = %if.else135
  store i8 1, ptr %retainedp, align 1, !tbaa !28
  br label %if.end152

if.else145:                                       ; preds = %if.else135
  %68 = load ptr, ptr %last_exon, align 8, !tbaa !5
  %lastchar146 = getelementptr inbounds %struct.Exon_T, ptr %68, i32 0, i32 2
  %69 = load i8, ptr %lastchar146, align 1, !tbaa !33
  %conv147 = sext i8 %69 to i32
  %cmp148 = icmp eq i32 %conv147, 120
  br i1 %cmp148, label %if.then150, label %if.end151

if.then150:                                       ; preds = %if.else145
  store i8 1, ptr %retainedp, align 1, !tbaa !28
  br label %if.end151

if.end151:                                        ; preds = %if.then150, %if.else145
  br label %if.end152

if.end152:                                        ; preds = %if.end151, %if.then144
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.then134
  br label %if.end154

if.end154:                                        ; preds = %if.end153, %if.then123
  br label %if.end190

if.else155:                                       ; preds = %if.else106
  store i8 1, ptr %splicedp, align 1, !tbaa !28
  %70 = load ptr, ptr %transcript5.addr, align 8, !tbaa !5
  %exons156 = getelementptr inbounds %struct.Transcript_T, ptr %70, i32 0, i32 6
  %71 = load ptr, ptr %exons156, align 8, !tbaa !30
  %call157 = call ptr @List_head(ptr noundef %71)
  store ptr %call157, ptr %first_exon, align 8, !tbaa !5
  %72 = load ptr, ptr %transcript5.addr, align 8, !tbaa !5
  %exons158 = getelementptr inbounds %struct.Transcript_T, ptr %72, i32 0, i32 6
  %73 = load ptr, ptr %exons158, align 8, !tbaa !30
  %call159 = call ptr @List_last_value(ptr noundef %73, ptr noundef null)
  store ptr %call159, ptr %last_exon, align 8, !tbaa !5
  %74 = load ptr, ptr %first_exon, align 8, !tbaa !5
  %firstchar160 = getelementptr inbounds %struct.Exon_T, ptr %74, i32 0, i32 1
  %75 = load i8, ptr %firstchar160, align 4, !tbaa !31
  %conv161 = sext i8 %75 to i32
  %cmp162 = icmp eq i32 %conv161, 120
  br i1 %cmp162, label %if.then164, label %if.else165

if.then164:                                       ; preds = %if.else155
  store i8 1, ptr %retainedp, align 1, !tbaa !28
  br label %if.end172

if.else165:                                       ; preds = %if.else155
  %76 = load ptr, ptr %last_exon, align 8, !tbaa !5
  %lastchar166 = getelementptr inbounds %struct.Exon_T, ptr %76, i32 0, i32 2
  %77 = load i8, ptr %lastchar166, align 1, !tbaa !33
  %conv167 = sext i8 %77 to i32
  %cmp168 = icmp eq i32 %conv167, 120
  br i1 %cmp168, label %if.then170, label %if.end171

if.then170:                                       ; preds = %if.else165
  store i8 1, ptr %retainedp, align 1, !tbaa !28
  br label %if.end171

if.end171:                                        ; preds = %if.then170, %if.else165
  br label %if.end172

if.end172:                                        ; preds = %if.end171, %if.then164
  %78 = load ptr, ptr %transcript3.addr, align 8, !tbaa !5
  %exons173 = getelementptr inbounds %struct.Transcript_T, ptr %78, i32 0, i32 6
  %79 = load ptr, ptr %exons173, align 8, !tbaa !30
  %call174 = call ptr @List_head(ptr noundef %79)
  store ptr %call174, ptr %first_exon, align 8, !tbaa !5
  %80 = load ptr, ptr %transcript3.addr, align 8, !tbaa !5
  %exons175 = getelementptr inbounds %struct.Transcript_T, ptr %80, i32 0, i32 6
  %81 = load ptr, ptr %exons175, align 8, !tbaa !30
  %call176 = call ptr @List_last_value(ptr noundef %81, ptr noundef null)
  store ptr %call176, ptr %last_exon, align 8, !tbaa !5
  %82 = load ptr, ptr %first_exon, align 8, !tbaa !5
  %firstchar177 = getelementptr inbounds %struct.Exon_T, ptr %82, i32 0, i32 1
  %83 = load i8, ptr %firstchar177, align 4, !tbaa !31
  %conv178 = sext i8 %83 to i32
  %cmp179 = icmp eq i32 %conv178, 120
  br i1 %cmp179, label %if.then181, label %if.else182

if.then181:                                       ; preds = %if.end172
  store i8 1, ptr %retainedp, align 1, !tbaa !28
  br label %if.end189

if.else182:                                       ; preds = %if.end172
  %84 = load ptr, ptr %last_exon, align 8, !tbaa !5
  %lastchar183 = getelementptr inbounds %struct.Exon_T, ptr %84, i32 0, i32 2
  %85 = load i8, ptr %lastchar183, align 1, !tbaa !33
  %conv184 = sext i8 %85 to i32
  %cmp185 = icmp eq i32 %conv184, 120
  br i1 %cmp185, label %if.then187, label %if.end188

if.then187:                                       ; preds = %if.else182
  store i8 1, ptr %retainedp, align 1, !tbaa !28
  br label %if.end188

if.end188:                                        ; preds = %if.then187, %if.else182
  br label %if.end189

if.end189:                                        ; preds = %if.end188, %if.then181
  br label %if.end190

if.end190:                                        ; preds = %if.end189, %if.end154
  br label %if.end191

if.end191:                                        ; preds = %if.end190, %if.end105
  br label %if.end192

if.end192:                                        ; preds = %if.end191, %if.end56
  br label %if.end193

if.end193:                                        ; preds = %if.end192, %if.then
  %86 = load i8, ptr %retainedp, align 1, !tbaa !28
  %conv194 = zext i8 %86 to i32
  %cmp195 = icmp eq i32 %conv194, 1
  br i1 %cmp195, label %if.then197, label %if.else198

if.then197:                                       ; preds = %if.end193
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else198:                                       ; preds = %if.end193
  %87 = load i8, ptr %splicedp, align 1, !tbaa !28
  %conv199 = zext i8 %87 to i32
  %cmp200 = icmp eq i32 %conv199, 1
  br i1 %cmp200, label %if.then202, label %if.else203

if.then202:                                       ; preds = %if.else198
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else203:                                       ; preds = %if.else198
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else203, %if.then202, %if.then197
  call void @llvm.lifetime.end.p0(i64 1, ptr %retainedp) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %splicedp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %exon3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %exon5) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_exon) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %first_exon) #5
  %88 = load i32, ptr %retval, align 4
  ret i32 %88
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @abort() #4

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
!12 = !{!13, !6, i64 344}
!13 = !{!"Path_T", !14, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !16, i64 24, !16, i64 32, !15, i64 40, !15, i64 44, !6, i64 48, !7, i64 56, !15, i64 60, !15, i64 64, !15, i64 68, !15, i64 72, !17, i64 80, !17, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !7, i64 136, !7, i64 137, !7, i64 140, !7, i64 144, !16, i64 152, !16, i64 160, !6, i64 168, !6, i64 176, !7, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !15, i64 248, !17, i64 256, !17, i64 264, !7, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !7, i64 328, !7, i64 332, !16, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !7, i64 376}
!14 = !{!"float", !7, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = !{!"double", !7, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!19, !7, i64 40}
!19 = !{!"Transcript_T", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !6, i64 24, !15, i64 32, !15, i64 36, !7, i64 40}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!13, !6, i64 352}
!23 = distinct !{!23, !21}
!24 = !{!13, !6, i64 360}
!25 = distinct !{!25, !21}
!26 = !{!13, !6, i64 368}
!27 = distinct !{!27, !21}
!28 = !{!7, !7, i64 0}
!29 = !{!19, !15, i64 32}
!30 = !{!19, !6, i64 24}
!31 = !{!32, !7, i64 4}
!32 = !{!"Exon_T", !15, i64 0, !7, i64 4, !7, i64 5}
!33 = !{!32, !7, i64 5}
!34 = distinct !{!34, !21}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !21}
!37 = distinct !{!37, !21}
!38 = !{!15, !15, i64 0}
!39 = !{!19, !15, i64 0}
!40 = distinct !{!40, !21}
!41 = distinct !{!41, !21}
!42 = distinct !{!42, !21}
!43 = distinct !{!43, !21}
!44 = distinct !{!44, !21}
!45 = !{!32, !15, i64 0}
