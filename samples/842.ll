; ModuleID = 'samples/842.bc'
source_filename = "/local-ssd/elemental-3zciflajk77zqijooqhgnuuyr3qrhajk-build/aidengro/spack-stage-elemental-0.87.7-3zciflajk77zqijooqhgnuuyr3qrhajk/spack-src/external/pmrrr/src/core/rrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrr_t = type { ptr, ptr, ptr, ptr, i32, i32, i8, i8, i32, %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"info == 0\00", align 1
@.str.1 = private unnamed_addr constant [171 x i8] c"/local-ssd/elemental-3zciflajk77zqijooqhgnuuyr3qrhajk-build/aidengro/spack-stage-elemental-0.87.7-3zciflajk77zqijooqhgnuuyr3qrhajk/spack-src/external/pmrrr/src/core/rrr.c\00", align 1
@__PRETTY_FUNCTION__.PMR_rrr_init_lock = private unnamed_addr constant [31 x i8] c"int PMR_rrr_init_lock(rrr_t *)\00", align 1
@stderr = external global ptr, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"pthread_mutex_lock returned EINVAL\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"pthread_mutex_lock returned EAGAIN\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"pthread_mutex_lock returned EDEADLK\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"pthread_mutex_lock returned EPERM\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"pthread_mutex_lock returned %d\0A\00", align 1
@__PRETTY_FUNCTION__.PMR_rrr_lock = private unnamed_addr constant [26 x i8] c"int PMR_rrr_lock(rrr_t *)\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"pthread_mutex_unlock returned EINVAL\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"pthread_mutex_unlock returned EAGAIN\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"pthread_mutex_unlock returned EDEADLK\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"pthread_mutex_unlock returned EPERM\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"pthread_mutex_unlock returned %d\0A\00", align 1
@__PRETTY_FUNCTION__.PMR_rrr_unlock = private unnamed_addr constant [28 x i8] c"int PMR_rrr_unlock(rrr_t *)\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"RRR!=NULL\00", align 1
@__PRETTY_FUNCTION__.PMR_create_rrr = private unnamed_addr constant [104 x i8] c"rrr_t *PMR_create_rrr(double *restrict, double *restrict, double *restrict, double *restrict, int, int)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @PMR_rrr_init_lock(ptr noundef %RRR) #0 {
entry:
  %RRR.addr = alloca ptr, align 8
  %info = alloca i32, align 4
  store ptr %RRR, ptr %RRR.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %info) #6
  %0 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %mutex = getelementptr inbounds %struct.rrr_t, ptr %0, i32 0, i32 9
  %call = call i32 @pthread_mutex_init(ptr noundef %mutex, ptr noundef null) #6
  store i32 %call, ptr %info, align 4, !tbaa !8
  %1 = load i32, ptr %info, align 4, !tbaa !8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 57, ptr noundef @__PRETTY_FUNCTION__.PMR_rrr_init_lock) #7
  unreachable

if.end:                                           ; preds = %if.then
  %2 = load i32, ptr %info, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %info) #6
  ret i32 %2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @PMR_rrr_destroy_lock(ptr noundef %RRR) #0 {
entry:
  %RRR.addr = alloca ptr, align 8
  store ptr %RRR, ptr %RRR.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %mutex = getelementptr inbounds %struct.rrr_t, ptr %0, i32 0, i32 9
  %call = call i32 @pthread_mutex_destroy(ptr noundef %mutex) #6
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @PMR_rrr_lock(ptr noundef %RRR) #0 {
entry:
  %RRR.addr = alloca ptr, align 8
  %info = alloca i32, align 4
  store ptr %RRR, ptr %RRR.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %info) #6
  %0 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %mutex = getelementptr inbounds %struct.rrr_t, ptr %0, i32 0, i32 9
  %call = call i32 @pthread_mutex_lock(ptr noundef %mutex) #6
  store i32 %call, ptr %info, align 4, !tbaa !8
  %1 = load i32, ptr %info, align 4, !tbaa !8
  %cmp = icmp eq i32 %1, 22
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.2)
  br label %if.end17

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %info, align 4, !tbaa !8
  %cmp2 = icmp eq i32 %3, 11
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %4 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.3)
  br label %if.end16

if.else5:                                         ; preds = %if.else
  %5 = load i32, ptr %info, align 4, !tbaa !8
  %cmp6 = icmp eq i32 %5, 35
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else5
  %6 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.4)
  br label %if.end15

if.else9:                                         ; preds = %if.else5
  %7 = load i32, ptr %info, align 4, !tbaa !8
  %cmp10 = icmp eq i32 %7, 1
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else9
  %8 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.5)
  br label %if.end

if.else13:                                        ; preds = %if.else9
  %9 = load ptr, ptr @stderr, align 8, !tbaa !4
  %10 = load i32, ptr %info, align 4, !tbaa !8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.6, i32 noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then11
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then7
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then3
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then
  %11 = load i32, ptr %info, align 4, !tbaa !8
  %cmp18 = icmp eq i32 %11, 0
  br i1 %cmp18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.end17
  br label %if.end21

if.else20:                                        ; preds = %if.end17
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 85, ptr noundef @__PRETTY_FUNCTION__.PMR_rrr_lock) #7
  unreachable

if.end21:                                         ; preds = %if.then19
  %12 = load i32, ptr %info, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %info) #6
  ret i32 %12
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: nounwind uwtable
define i32 @PMR_rrr_unlock(ptr noundef %RRR) #0 {
entry:
  %RRR.addr = alloca ptr, align 8
  %info = alloca i32, align 4
  store ptr %RRR, ptr %RRR.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %info) #6
  %0 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %mutex = getelementptr inbounds %struct.rrr_t, ptr %0, i32 0, i32 9
  %call = call i32 @pthread_mutex_unlock(ptr noundef %mutex) #6
  store i32 %call, ptr %info, align 4, !tbaa !8
  %1 = load i32, ptr %info, align 4, !tbaa !8
  %cmp = icmp eq i32 %1, 22
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.7)
  br label %if.end17

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %info, align 4, !tbaa !8
  %cmp2 = icmp eq i32 %3, 11
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %4 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.8)
  br label %if.end16

if.else5:                                         ; preds = %if.else
  %5 = load i32, ptr %info, align 4, !tbaa !8
  %cmp6 = icmp eq i32 %5, 35
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else5
  %6 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.9)
  br label %if.end15

if.else9:                                         ; preds = %if.else5
  %7 = load i32, ptr %info, align 4, !tbaa !8
  %cmp10 = icmp eq i32 %7, 1
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else9
  %8 = load ptr, ptr @stderr, align 8, !tbaa !4
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.10)
  br label %if.end

if.else13:                                        ; preds = %if.else9
  %9 = load ptr, ptr @stderr, align 8, !tbaa !4
  %10 = load i32, ptr %info, align 4, !tbaa !8
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.11, i32 noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then11
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then7
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then3
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then
  %11 = load i32, ptr %info, align 4, !tbaa !8
  %cmp18 = icmp eq i32 %11, 0
  br i1 %cmp18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.end17
  br label %if.end21

if.else20:                                        ; preds = %if.end17
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 106, ptr noundef @__PRETTY_FUNCTION__.PMR_rrr_unlock) #7
  unreachable

if.end21:                                         ; preds = %if.then19
  %12 = load i32, ptr %info, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %info) #6
  ret i32 %12
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @PMR_create_rrr(ptr noalias noundef %D, ptr noalias noundef %L, ptr noalias noundef %DL, ptr noalias noundef %DLL, i32 noundef %size, i32 noundef %depth) #0 {
entry:
  %D.addr = alloca ptr, align 8
  %L.addr = alloca ptr, align 8
  %DL.addr = alloca ptr, align 8
  %DLL.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %RRR = alloca ptr, align 8
  %info = alloca i32, align 4
  store ptr %D, ptr %D.addr, align 8, !tbaa !4
  store ptr %L, ptr %L.addr, align 8, !tbaa !4
  store ptr %DL, ptr %DL.addr, align 8, !tbaa !4
  store ptr %DLL, ptr %DLL.addr, align 8, !tbaa !4
  store i32 %size, ptr %size.addr, align 4, !tbaa !8
  store i32 %depth, ptr %depth.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %RRR) #6
  %call = call noalias ptr @malloc(i64 noundef 88) #8
  store ptr %call, ptr %RRR, align 8, !tbaa !4
  %0 = load ptr, ptr %RRR, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.12, ptr noundef @.str.1, i32 noundef 117, ptr noundef @__PRETTY_FUNCTION__.PMR_create_rrr) #7
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load ptr, ptr %D.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %RRR, align 8, !tbaa !4
  %D1 = getelementptr inbounds %struct.rrr_t, ptr %2, i32 0, i32 0
  store ptr %1, ptr %D1, align 8, !tbaa !10
  %3 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %RRR, align 8, !tbaa !4
  %L2 = getelementptr inbounds %struct.rrr_t, ptr %4, i32 0, i32 1
  store ptr %3, ptr %L2, align 8, !tbaa !13
  %5 = load ptr, ptr %DL.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %RRR, align 8, !tbaa !4
  %DL3 = getelementptr inbounds %struct.rrr_t, ptr %6, i32 0, i32 2
  store ptr %5, ptr %DL3, align 8, !tbaa !14
  %7 = load ptr, ptr %DLL.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %RRR, align 8, !tbaa !4
  %DLL4 = getelementptr inbounds %struct.rrr_t, ptr %8, i32 0, i32 3
  store ptr %7, ptr %DLL4, align 8, !tbaa !15
  %9 = load i32, ptr %size.addr, align 4, !tbaa !8
  %10 = load ptr, ptr %RRR, align 8, !tbaa !4
  %size5 = getelementptr inbounds %struct.rrr_t, ptr %10, i32 0, i32 4
  store i32 %9, ptr %size5, align 8, !tbaa !16
  %11 = load i32, ptr %depth.addr, align 4, !tbaa !8
  %12 = load ptr, ptr %RRR, align 8, !tbaa !4
  %depth6 = getelementptr inbounds %struct.rrr_t, ptr %12, i32 0, i32 5
  store i32 %11, ptr %depth6, align 4, !tbaa !17
  %13 = load ptr, ptr %RRR, align 8, !tbaa !4
  %parent_processed = getelementptr inbounds %struct.rrr_t, ptr %13, i32 0, i32 6
  store i8 0, ptr %parent_processed, align 8, !tbaa !18
  %14 = load ptr, ptr %RRR, align 8, !tbaa !4
  %copied_parent_rrr = getelementptr inbounds %struct.rrr_t, ptr %14, i32 0, i32 7
  store i8 0, ptr %copied_parent_rrr, align 1, !tbaa !19
  %15 = load ptr, ptr %RRR, align 8, !tbaa !4
  %ndepend = getelementptr inbounds %struct.rrr_t, ptr %15, i32 0, i32 8
  store i32 0, ptr %ndepend, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %info) #6
  %16 = load ptr, ptr %RRR, align 8, !tbaa !4
  %call7 = call i32 @PMR_rrr_init_lock(ptr noundef %16)
  store i32 %call7, ptr %info, align 4, !tbaa !8
  %17 = load ptr, ptr %RRR, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %info) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %RRR) #6
  ret ptr %17
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

; Function Attrs: nounwind uwtable
define ptr @PMR_reset_rrr(ptr noundef %RRR, ptr noalias noundef %D, ptr noalias noundef %L, ptr noalias noundef %DL, ptr noalias noundef %DLL, i32 noundef %size, i32 noundef %depth) #0 {
entry:
  %RRR.addr = alloca ptr, align 8
  %D.addr = alloca ptr, align 8
  %L.addr = alloca ptr, align 8
  %DL.addr = alloca ptr, align 8
  %DLL.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  store ptr %RRR, ptr %RRR.addr, align 8, !tbaa !4
  store ptr %D, ptr %D.addr, align 8, !tbaa !4
  store ptr %L, ptr %L.addr, align 8, !tbaa !4
  store ptr %DL, ptr %DL.addr, align 8, !tbaa !4
  store ptr %DLL, ptr %DLL.addr, align 8, !tbaa !4
  store i32 %size, ptr %size.addr, align 4, !tbaa !8
  store i32 %depth, ptr %depth.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %D.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %D1 = getelementptr inbounds %struct.rrr_t, ptr %1, i32 0, i32 0
  store ptr %0, ptr %D1, align 8, !tbaa !10
  %2 = load ptr, ptr %L.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %L2 = getelementptr inbounds %struct.rrr_t, ptr %3, i32 0, i32 1
  store ptr %2, ptr %L2, align 8, !tbaa !13
  %4 = load ptr, ptr %DL.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %DL3 = getelementptr inbounds %struct.rrr_t, ptr %5, i32 0, i32 2
  store ptr %4, ptr %DL3, align 8, !tbaa !14
  %6 = load ptr, ptr %DLL.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %DLL4 = getelementptr inbounds %struct.rrr_t, ptr %7, i32 0, i32 3
  store ptr %6, ptr %DLL4, align 8, !tbaa !15
  %8 = load i32, ptr %size.addr, align 4, !tbaa !8
  %9 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %size5 = getelementptr inbounds %struct.rrr_t, ptr %9, i32 0, i32 4
  store i32 %8, ptr %size5, align 8, !tbaa !16
  %10 = load i32, ptr %depth.addr, align 4, !tbaa !8
  %11 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %depth6 = getelementptr inbounds %struct.rrr_t, ptr %11, i32 0, i32 5
  store i32 %10, ptr %depth6, align 4, !tbaa !17
  %12 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %parent_processed = getelementptr inbounds %struct.rrr_t, ptr %12, i32 0, i32 6
  store i8 0, ptr %parent_processed, align 8, !tbaa !18
  %13 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define i32 @PMR_increment_rrr_dependencies(ptr noundef %RRR) #0 {
entry:
  %RRR.addr = alloca ptr, align 8
  %info = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %RRR, ptr %RRR.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %info) #6
  %0 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %call = call i32 @PMR_rrr_lock(ptr noundef %0)
  store i32 %call, ptr %info, align 4, !tbaa !8
  %1 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %ndepend = getelementptr inbounds %struct.rrr_t, ptr %1, i32 0, i32 8
  %2 = load i32, ptr %ndepend, align 4, !tbaa !20
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %ndepend, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %3 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %ndepend1 = getelementptr inbounds %struct.rrr_t, ptr %3, i32 0, i32 8
  %4 = load i32, ptr %ndepend1, align 4, !tbaa !20
  store i32 %4, ptr %i, align 4, !tbaa !8
  %5 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %call2 = call i32 @PMR_rrr_unlock(ptr noundef %5)
  %6 = load i32, ptr %info, align 4, !tbaa !8
  %or = or i32 %6, %call2
  store i32 %or, ptr %info, align 4, !tbaa !8
  %7 = load i32, ptr %i, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %info) #6
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @PMR_set_parent_processed_flag(ptr noundef %RRR) #0 {
entry:
  %RRR.addr = alloca ptr, align 8
  %info = alloca i32, align 4
  store ptr %RRR, ptr %RRR.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %info) #6
  %0 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %call = call i32 @PMR_rrr_lock(ptr noundef %0)
  store i32 %call, ptr %info, align 4, !tbaa !8
  %1 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %parent_processed = getelementptr inbounds %struct.rrr_t, ptr %1, i32 0, i32 6
  store i8 1, ptr %parent_processed, align 8, !tbaa !18
  %2 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %call1 = call i32 @PMR_rrr_unlock(ptr noundef %2)
  %3 = load i32, ptr %info, align 4, !tbaa !8
  %or = or i32 %3, %call1
  store i32 %or, ptr %info, align 4, !tbaa !8
  %4 = load i32, ptr %info, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %info) #6
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @PMR_set_copied_parent_rrr_flag(ptr noundef %RRR, i1 noundef zeroext %val) #0 {
entry:
  %RRR.addr = alloca ptr, align 8
  %val.addr = alloca i8, align 1
  %info = alloca i32, align 4
  store ptr %RRR, ptr %RRR.addr, align 8, !tbaa !4
  %frombool = zext i1 %val to i8
  store i8 %frombool, ptr %val.addr, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %info) #6
  %0 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %call = call i32 @PMR_rrr_lock(ptr noundef %0)
  store i32 %call, ptr %info, align 4, !tbaa !8
  %1 = load i8, ptr %val.addr, align 1, !tbaa !21, !range !22, !noundef !23
  %tobool = trunc i8 %1 to i1
  %2 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %copied_parent_rrr = getelementptr inbounds %struct.rrr_t, ptr %2, i32 0, i32 7
  %frombool1 = zext i1 %tobool to i8
  store i8 %frombool1, ptr %copied_parent_rrr, align 1, !tbaa !19
  %3 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %call2 = call i32 @PMR_rrr_unlock(ptr noundef %3)
  %4 = load i32, ptr %info, align 4, !tbaa !8
  %or = or i32 %4, %call2
  store i32 %or, ptr %info, align 4, !tbaa !8
  %5 = load i32, ptr %info, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %info) #6
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @PMR_try_destroy_rrr(ptr noundef %RRR) #0 {
entry:
  %retval = alloca i32, align 4
  %RRR.addr = alloca ptr, align 8
  %info = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %RRR, ptr %RRR.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %info) #6
  %0 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %call = call i32 @PMR_rrr_lock(ptr noundef %0)
  store i32 %call, ptr %info, align 4, !tbaa !8
  %1 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %ndepend = getelementptr inbounds %struct.rrr_t, ptr %1, i32 0, i32 8
  %2 = load i32, ptr %ndepend, align 4, !tbaa !20
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %ndepend, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #6
  store i32 0, ptr %tmp, align 4, !tbaa !8
  %3 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %ndepend1 = getelementptr inbounds %struct.rrr_t, ptr %3, i32 0, i32 8
  %4 = load i32, ptr %ndepend1, align 4, !tbaa !20
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %parent_processed = getelementptr inbounds %struct.rrr_t, ptr %5, i32 0, i32 6
  %6 = load i8, ptr %parent_processed, align 8, !tbaa !18, !range !22, !noundef !23
  %tobool = trunc i8 %6 to i1
  %conv = zext i1 %tobool to i32
  %cmp2 = icmp eq i32 %conv, 1
  br i1 %cmp2, label %if.then, label %if.end12

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %depth = getelementptr inbounds %struct.rrr_t, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %depth, align 4, !tbaa !17
  %cmp4 = icmp sgt i32 %8, 0
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %9 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %D = getelementptr inbounds %struct.rrr_t, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %D, align 8, !tbaa !10
  call void @free(ptr noundef %10) #6
  %11 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %L = getelementptr inbounds %struct.rrr_t, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %L, align 8, !tbaa !13
  call void @free(ptr noundef %12) #6
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %13 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %depth7 = getelementptr inbounds %struct.rrr_t, ptr %13, i32 0, i32 5
  %14 = load i32, ptr %depth7, align 4, !tbaa !17
  %cmp8 = icmp sge i32 %14, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %15 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %DL = getelementptr inbounds %struct.rrr_t, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %DL, align 8, !tbaa !14
  call void @free(ptr noundef %16) #6
  %17 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %DLL = getelementptr inbounds %struct.rrr_t, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %DLL, align 8, !tbaa !15
  call void @free(ptr noundef %18) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  store i32 1, ptr %tmp, align 4, !tbaa !8
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %land.lhs.true, %entry
  %19 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  %call13 = call i32 @PMR_rrr_unlock(ptr noundef %19)
  %20 = load i32, ptr %info, align 4, !tbaa !8
  %or = or i32 %20, %call13
  store i32 %or, ptr %info, align 4, !tbaa !8
  %21 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp14 = icmp eq i32 %21, 1
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end12
  %22 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  call void @PMR_rrr_destroy_lock(ptr noundef %22)
  %23 = load ptr, ptr %RRR.addr, align 8, !tbaa !4
  call void @free(ptr noundef %23) #6
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end12
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then16
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %info) #6
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!10 = !{!11, !5, i64 0}
!11 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !9, i64 32, !9, i64 36, !12, i64 40, !12, i64 41, !9, i64 44, !6, i64 48}
!12 = !{!"_Bool", !6, i64 0}
!13 = !{!11, !5, i64 8}
!14 = !{!11, !5, i64 16}
!15 = !{!11, !5, i64 24}
!16 = !{!11, !9, i64 32}
!17 = !{!11, !9, i64 36}
!18 = !{!11, !12, i64 40}
!19 = !{!11, !12, i64 41}
!20 = !{!11, !9, i64 44}
!21 = !{!12, !12, i64 0}
!22 = !{i8 0, i8 2}
!23 = !{}
