; ModuleID = 'samples/669.bc'
source_filename = "/local-ssd/eccodes-psuel4mgyciesdodvadhkap2g5cqhhyf-build/aidengro/spack-stage-eccodes-2.25.0-psuel4mgyciesdodvadhkap2g5cqhhyf/spack-src/src/action_class_when.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grib_action_class = type { ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.grib_action = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr }
%struct.grib_action_when = type { %struct.grib_action, ptr, ptr, ptr, i32 }
%struct.grib_section = type { ptr, ptr, ptr, ptr, ptr, i64, i64 }

@_grib_action_class_when = internal global %struct.grib_action_class { ptr null, ptr @.str.2, i64 120, i32 0, ptr @init_class, ptr null, ptr @destroy, ptr @dump, ptr @xref, ptr @create_accessor, ptr @notify_change, ptr null, ptr null }, align 8
@grib_action_class_when = global ptr @_grib_action_class_when, align 8
@.str = private unnamed_addr constant [5 x i8] c"when\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"_when%p\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"action_class_when\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"when(%s) { \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c" else { \00", align 1

; Function Attrs: nounwind uwtable
define ptr @grib_action_create_when(ptr noundef %context, ptr noundef %expression, ptr noundef %block_true, ptr noundef %block_false) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %expression.addr = alloca ptr, align 8
  %block_true.addr = alloca ptr, align 8
  %block_false.addr = alloca ptr, align 8
  %name = alloca [1024 x i8], align 16
  %a = alloca ptr, align 8
  %c = alloca ptr, align 8
  %act = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  store ptr %expression, ptr %expression.addr, align 8, !tbaa !4
  store ptr %block_true, ptr %block_true.addr, align 8, !tbaa !4
  store ptr %block_false, ptr %block_false.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1024, ptr %name) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #4
  %0 = load ptr, ptr @grib_action_class_when, align 8, !tbaa !4
  store ptr %0, ptr %c, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %act) #4
  %1 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %c, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.grib_action_class, ptr %2, i32 0, i32 2
  %3 = load i64, ptr %size, align 8, !tbaa !8
  %call = call ptr @grib_context_malloc_clear_persistent(ptr noundef %1, i64 noundef %3)
  store ptr %call, ptr %act, align 8, !tbaa !4
  %4 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %call1 = call ptr @grib_context_strdup_persistent(ptr noundef %4, ptr noundef @.str)
  %5 = load ptr, ptr %act, align 8, !tbaa !4
  %op = getelementptr inbounds %struct.grib_action, ptr %5, i32 0, i32 1
  store ptr %call1, ptr %op, align 8, !tbaa !12
  %6 = load ptr, ptr %c, align 8, !tbaa !4
  %7 = load ptr, ptr %act, align 8, !tbaa !4
  %cclass = getelementptr inbounds %struct.grib_action, ptr %7, i32 0, i32 4
  store ptr %6, ptr %cclass, align 8, !tbaa !14
  %8 = load ptr, ptr %act, align 8, !tbaa !4
  store ptr %8, ptr %a, align 8, !tbaa !4
  %9 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %act, align 8, !tbaa !4
  %context2 = getelementptr inbounds %struct.grib_action, ptr %10, i32 0, i32 5
  store ptr %9, ptr %context2, align 8, !tbaa !15
  %11 = load ptr, ptr %expression.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %a, align 8, !tbaa !4
  %expression3 = getelementptr inbounds %struct.grib_action_when, ptr %12, i32 0, i32 1
  store ptr %11, ptr %expression3, align 8, !tbaa !16
  %13 = load ptr, ptr %block_true.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %a, align 8, !tbaa !4
  %block_true4 = getelementptr inbounds %struct.grib_action_when, ptr %14, i32 0, i32 2
  store ptr %13, ptr %block_true4, align 8, !tbaa !18
  %15 = load ptr, ptr %block_false.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %a, align 8, !tbaa !4
  %block_false5 = getelementptr inbounds %struct.grib_action_when, ptr %16, i32 0, i32 3
  store ptr %15, ptr %block_false5, align 8, !tbaa !19
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %name, i64 0, i64 0
  %17 = load ptr, ptr %expression.addr, align 8, !tbaa !4
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.1, ptr noundef %17) #4
  %18 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %arraydecay7 = getelementptr inbounds [1024 x i8], ptr %name, i64 0, i64 0
  %call8 = call ptr @grib_context_strdup_persistent(ptr noundef %18, ptr noundef %arraydecay7)
  %19 = load ptr, ptr %act, align 8, !tbaa !4
  %name9 = getelementptr inbounds %struct.grib_action, ptr %19, i32 0, i32 0
  store ptr %call8, ptr %name9, align 8, !tbaa !20
  %20 = load ptr, ptr %act, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %act) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 1024, ptr %name) #4
  ret ptr %20
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @grib_context_malloc_clear_persistent(ptr noundef, i64 noundef) #2

declare ptr @grib_context_strdup_persistent(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @init_class(ptr noundef %c) #0 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroy(ptr noundef %context, ptr noundef %act) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %act.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %t = alloca ptr, align 8
  %nt = alloca ptr, align 8
  %nt4 = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !4
  store ptr %act, ptr %act.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #4
  %0 = load ptr, ptr %act.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #4
  %1 = load ptr, ptr %self, align 8, !tbaa !4
  %block_true = getelementptr inbounds %struct.grib_action_when, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %block_true, align 8, !tbaa !18
  store ptr %2, ptr %t, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load ptr, ptr %t, align 8, !tbaa !4
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %nt) #4
  %4 = load ptr, ptr %t, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.grib_action, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %next, align 8, !tbaa !21
  store ptr %5, ptr %nt, align 8, !tbaa !4
  %6 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %t, align 8, !tbaa !4
  call void @grib_action_delete(ptr noundef %6, ptr noundef %7)
  %8 = load ptr, ptr %nt, align 8, !tbaa !4
  store ptr %8, ptr %t, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %nt) #4
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  %9 = load ptr, ptr %self, align 8, !tbaa !4
  %block_false = getelementptr inbounds %struct.grib_action_when, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %block_false, align 8, !tbaa !19
  store ptr %10, ptr %t, align 8, !tbaa !4
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.end
  %11 = load ptr, ptr %t, align 8, !tbaa !4
  %tobool2 = icmp ne ptr %11, null
  br i1 %tobool2, label %while.body3, label %while.end6

while.body3:                                      ; preds = %while.cond1
  call void @llvm.lifetime.start.p0(i64 8, ptr %nt4) #4
  %12 = load ptr, ptr %t, align 8, !tbaa !4
  %next5 = getelementptr inbounds %struct.grib_action, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %next5, align 8, !tbaa !21
  store ptr %13, ptr %nt4, align 8, !tbaa !4
  %14 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %t, align 8, !tbaa !4
  call void @grib_action_delete(ptr noundef %14, ptr noundef %15)
  %16 = load ptr, ptr %nt4, align 8, !tbaa !4
  store ptr %16, ptr %t, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %nt4) #4
  br label %while.cond1, !llvm.loop !24

while.end6:                                       ; preds = %while.cond1
  %17 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %self, align 8, !tbaa !4
  %expression = getelementptr inbounds %struct.grib_action_when, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %expression, align 8, !tbaa !16
  call void @grib_expression_free(ptr noundef %17, ptr noundef %19)
  %20 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %act.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.grib_action, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %name, align 8, !tbaa !20
  call void @grib_context_free_persistent(ptr noundef %20, ptr noundef %22)
  %23 = load ptr, ptr %context.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %act.addr, align 8, !tbaa !4
  %op = getelementptr inbounds %struct.grib_action, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %op, align 8, !tbaa !12
  call void @grib_context_free_persistent(ptr noundef %23, ptr noundef %25)
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dump(ptr noundef %act, ptr noundef %f, i32 noundef %lvl) #0 {
entry:
  %act.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %lvl.addr = alloca i32, align 4
  %a = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %act, ptr %act.addr, align 8, !tbaa !4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store i32 %lvl, ptr %lvl.addr, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #4
  %0 = load ptr, ptr %act.addr, align 8, !tbaa !4
  store ptr %0, ptr %a, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 0, ptr %i, align 4, !tbaa !25
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !25
  %2 = load i32, ptr %lvl.addr, align 4, !tbaa !25
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %act.addr, align 8, !tbaa !4
  %context = getelementptr inbounds %struct.grib_action, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %context, align 8, !tbaa !15
  %5 = load ptr, ptr %f.addr, align 8, !tbaa !4
  call void (ptr, ptr, ptr, ...) @grib_context_print(ptr noundef %4, ptr noundef %5, ptr noundef @.str.3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !25
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4, !tbaa !25
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %act.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.grib_action, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %name, align 8, !tbaa !20
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %8)
  %9 = load ptr, ptr %act.addr, align 8, !tbaa !4
  %context1 = getelementptr inbounds %struct.grib_action, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %context1, align 8, !tbaa !15
  %11 = load ptr, ptr %a, align 8, !tbaa !4
  %expression = getelementptr inbounds %struct.grib_action_when, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %expression, align 8, !tbaa !16
  call void @grib_expression_print(ptr noundef %10, ptr noundef %12, ptr noundef null)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %13 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %a, align 8, !tbaa !4
  %block_true = getelementptr inbounds %struct.grib_action_when, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %block_true, align 8, !tbaa !18
  %16 = load i32, ptr %lvl.addr, align 4, !tbaa !25
  %add = add nsw i32 %16, 1
  call void @grib_dump_action_branch(ptr noundef %13, ptr noundef %15, i32 noundef %add)
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc7, %for.end
  %17 = load i32, ptr %i, align 4, !tbaa !25
  %18 = load i32, ptr %lvl.addr, align 4, !tbaa !25
  %cmp4 = icmp slt i32 %17, %18
  br i1 %cmp4, label %for.body5, label %for.end9

for.body5:                                        ; preds = %for.cond3
  %19 = load ptr, ptr %act.addr, align 8, !tbaa !4
  %context6 = getelementptr inbounds %struct.grib_action, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %context6, align 8, !tbaa !15
  %21 = load ptr, ptr %f.addr, align 8, !tbaa !4
  call void (ptr, ptr, ptr, ...) @grib_context_print(ptr noundef %20, ptr noundef %21, ptr noundef @.str.3)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body5
  %22 = load i32, ptr %i, align 4, !tbaa !25
  %inc8 = add nsw i32 %22, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !25
  br label %for.cond3, !llvm.loop !27

for.end9:                                         ; preds = %for.cond3
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %23 = load ptr, ptr %a, align 8, !tbaa !4
  %block_false = getelementptr inbounds %struct.grib_action_when, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %block_false, align 8, !tbaa !19
  %tobool = icmp ne ptr %24, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end9
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %25 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %a, align 8, !tbaa !4
  %block_true12 = getelementptr inbounds %struct.grib_action_when, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %block_true12, align 8, !tbaa !18
  %28 = load i32, ptr %lvl.addr, align 4, !tbaa !25
  %add13 = add nsw i32 %28, 1
  call void @grib_dump_action_branch(ptr noundef %25, ptr noundef %27, i32 noundef %add13)
  store i32 0, ptr %i, align 4, !tbaa !25
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc18, %if.then
  %29 = load i32, ptr %i, align 4, !tbaa !25
  %30 = load i32, ptr %lvl.addr, align 4, !tbaa !25
  %cmp15 = icmp slt i32 %29, %30
  br i1 %cmp15, label %for.body16, label %for.end20

for.body16:                                       ; preds = %for.cond14
  %31 = load ptr, ptr %act.addr, align 8, !tbaa !4
  %context17 = getelementptr inbounds %struct.grib_action, ptr %31, i32 0, i32 5
  %32 = load ptr, ptr %context17, align 8, !tbaa !15
  %33 = load ptr, ptr %f.addr, align 8, !tbaa !4
  call void (ptr, ptr, ptr, ...) @grib_context_print(ptr noundef %32, ptr noundef %33, ptr noundef @.str.3)
  br label %for.inc18

for.inc18:                                        ; preds = %for.body16
  %34 = load i32, ptr %i, align 4, !tbaa !25
  %inc19 = add nsw i32 %34, 1
  store i32 %inc19, ptr %i, align 4, !tbaa !25
  br label %for.cond14, !llvm.loop !28

for.end20:                                        ; preds = %for.cond14
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %if.end

if.end:                                           ; preds = %for.end20, %for.end9
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @xref(ptr noundef %d, ptr noundef %f, ptr noundef %path) #0 {
entry:
  %d.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8, !tbaa !4
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  store ptr %path, ptr %path.addr, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @create_accessor(ptr noundef %p, ptr noundef %act, ptr noundef %h) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %act.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %as = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store ptr %act, ptr %act.addr, align 8, !tbaa !4
  store ptr %h, ptr %h.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #4
  %0 = load ptr, ptr %act.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %as) #4
  %1 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %act.addr, align 8, !tbaa !4
  %call = call ptr @grib_accessor_factory(ptr noundef %1, ptr noundef %2, i64 noundef 0, ptr noundef null)
  store ptr %call, ptr %as, align 8, !tbaa !4
  %3 = load ptr, ptr %as, align 8, !tbaa !4
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %as, align 8, !tbaa !4
  %5 = load ptr, ptr %self, align 8, !tbaa !4
  %expression = getelementptr inbounds %struct.grib_action_when, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %expression, align 8, !tbaa !16
  call void @grib_dependency_observe_expression(ptr noundef %4, ptr noundef %6)
  %7 = load ptr, ptr %as, align 8, !tbaa !4
  %8 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %block = getelementptr inbounds %struct.grib_section, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %block, align 8, !tbaa !29
  call void @grib_push_accessor(ptr noundef %7, ptr noundef %9)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %as) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #4
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @notify_change(ptr noundef %a, ptr noundef %observer, ptr noundef %observed) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %observer.addr = alloca ptr, align 8
  %observed.addr = alloca ptr, align 8
  %self = alloca ptr, align 8
  %b = alloca ptr, align 8
  %ret = alloca i32, align 4
  %lres = alloca i64, align 8
  %hand = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %observer, ptr %observer.addr, align 8, !tbaa !4
  store ptr %observed, ptr %observed.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %self) #4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  store ptr %0, ptr %self, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #4
  store ptr null, ptr %b, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #4
  store i32 0, ptr %ret, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %lres) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %hand) #4
  %1 = load ptr, ptr %observed.addr, align 8, !tbaa !4
  %call = call ptr @grib_handle_of_accessor(ptr noundef %1)
  store ptr %call, ptr %hand, align 8, !tbaa !4
  %2 = load ptr, ptr %hand, align 8, !tbaa !4
  %3 = load ptr, ptr %self, align 8, !tbaa !4
  %expression = getelementptr inbounds %struct.grib_action_when, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %expression, align 8, !tbaa !16
  %call1 = call i32 @grib_expression_evaluate_long(ptr noundef %2, ptr noundef %4, ptr noundef %lres)
  store i32 %call1, ptr %ret, align 4, !tbaa !25
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %ret, align 4, !tbaa !25
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i64, ptr %lres, align 8, !tbaa !31
  %tobool = icmp ne i64 %6, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %self, align 8, !tbaa !4
  %block_true = getelementptr inbounds %struct.grib_action_when, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %block_true, align 8, !tbaa !18
  store ptr %8, ptr %b, align 8, !tbaa !4
  br label %if.end3

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %self, align 8, !tbaa !4
  %block_false = getelementptr inbounds %struct.grib_action_when, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %block_false, align 8, !tbaa !19
  store ptr %10, ptr %b, align 8, !tbaa !4
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %if.end3
  %11 = load ptr, ptr %b, align 8, !tbaa !4
  %tobool4 = icmp ne ptr %11, null
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %b, align 8, !tbaa !4
  %13 = load ptr, ptr %hand, align 8, !tbaa !4
  %call5 = call i32 @grib_action_execute(ptr noundef %12, ptr noundef %13)
  store i32 %call5, ptr %ret, align 4, !tbaa !25
  %14 = load i32, ptr %ret, align 4, !tbaa !25
  %cmp6 = icmp ne i32 %14, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %while.body
  %15 = load i32, ptr %ret, align 4, !tbaa !25
  store i32 %15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %while.body
  %16 = load ptr, ptr %b, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.grib_action, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %next, align 8, !tbaa !21
  store ptr %17, ptr %b, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !32

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %hand) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %lres) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %self) #4
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

declare void @grib_action_delete(ptr noundef, ptr noundef) #2

declare void @grib_expression_free(ptr noundef, ptr noundef) #2

declare void @grib_context_free_persistent(ptr noundef, ptr noundef) #2

declare void @grib_context_print(ptr noundef, ptr noundef, ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

declare void @grib_expression_print(ptr noundef, ptr noundef, ptr noundef) #2

declare void @grib_dump_action_branch(ptr noundef, ptr noundef, i32 noundef) #2

declare ptr @grib_accessor_factory(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare void @grib_dependency_observe_expression(ptr noundef, ptr noundef) #2

declare void @grib_push_accessor(ptr noundef, ptr noundef) #2

declare ptr @grib_handle_of_accessor(ptr noundef) #2

declare i32 @grib_expression_evaluate_long(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @grib_action_execute(ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!8 = !{!9, !10, i64 16}
!9 = !{!"grib_action_class", !5, i64 0, !5, i64 8, !10, i64 16, !11, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96}
!10 = !{!"long", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !5, i64 8}
!13 = !{!"grib_action", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !10, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80}
!14 = !{!13, !5, i64 32}
!15 = !{!13, !5, i64 40}
!16 = !{!17, !5, i64 88}
!17 = !{!"grib_action_when", !13, i64 0, !5, i64 88, !5, i64 96, !5, i64 104, !11, i64 112}
!18 = !{!17, !5, i64 96}
!19 = !{!17, !5, i64 104}
!20 = !{!13, !5, i64 0}
!21 = !{!13, !5, i64 24}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = !{!11, !11, i64 0}
!26 = distinct !{!26, !23}
!27 = distinct !{!27, !23}
!28 = distinct !{!28, !23}
!29 = !{!30, !5, i64 24}
!30 = !{!"grib_section", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !10, i64 40, !10, i64 48}
!31 = !{!10, !10, i64 0}
!32 = distinct !{!32, !23}
