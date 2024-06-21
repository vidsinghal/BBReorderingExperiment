; ModuleID = 'samples/284.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/deps/pthreadpool/src/pthreads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxdiv_divisor_size_t = type { i64, i64, i8, i8 }
%struct.pthreadpool = type { i64, i32, i32, ptr, ptr, ptr, %union.anon, i32, %union.pthread_mutex_t, %struct.fxdiv_divisor_size_t, [48 x i8], [0 x %struct.thread_info] }
%union.anon = type { %struct.pthreadpool_6d_tile_2d_params }
%struct.pthreadpool_6d_tile_2d_params = type { i64, i64, i64, i64, i64, %struct.fxdiv_divisor_size_t, %struct.fxdiv_divisor_size_t, %struct.fxdiv_divisor_size_t, %struct.fxdiv_divisor_size_t, %struct.fxdiv_divisor_size_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.thread_info = type { i64, i64, i64, i64, ptr, i64, [16 x i8] }
%struct.fxdiv_divisor_uint64_t = type { i64, i64, i8, i8 }
%struct.fpu_state = type { i32 }
%struct.fxdiv_result_size_t = type { i64, i64 }

; Function Attrs: nounwind uwtable
define ptr @pthreadpool_create(i64 noundef %threads_count) #0 {
entry:
  %retval = alloca ptr, align 8
  %threads_count.addr = alloca i64, align 8
  %threadpool = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.fxdiv_divisor_size_t, align 8
  %tid = alloca i64, align 8
  %tid13 = alloca i64, align 8
  store i64 %threads_count, ptr %threads_count.addr, align 8, !tbaa !4
  %0 = load i64, ptr %threads_count.addr, align 8, !tbaa !4
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @sysconf(i32 noundef 84) #8
  store i64 %call, ptr %threads_count.addr, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %threadpool) #8
  %1 = load i64, ptr %threads_count.addr, align 8, !tbaa !4
  %call1 = call ptr @pthreadpool_allocate(i64 noundef %1)
  store ptr %call1, ptr %threadpool, align 8, !tbaa !8
  %2 = load ptr, ptr %threadpool, align 8, !tbaa !8
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %threadpool, align 8, !tbaa !8
  %threads_count5 = getelementptr inbounds %struct.pthreadpool, ptr %3, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 24, ptr %tmp) #8
  %4 = load i64, ptr %threads_count.addr, align 8, !tbaa !4
  call void @fxdiv_init_size_t(ptr sret(%struct.fxdiv_divisor_size_t) align 8 %tmp, i64 noundef %4)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %threads_count5, ptr align 8 %tmp, i64 24, i1 false), !tbaa.struct !10
  call void @llvm.lifetime.end.p0(i64 24, ptr %tmp) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tid) #8
  store i64 0, ptr %tid, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %5 = load i64, ptr %tid, align 8, !tbaa !4
  %6 = load i64, ptr %threads_count.addr, align 8, !tbaa !4
  %cmp6 = icmp ult i64 %5, %6
  br i1 %cmp6, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tid) #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, ptr %tid, align 8, !tbaa !4
  %8 = load ptr, ptr %threadpool, align 8, !tbaa !8
  %threads = getelementptr inbounds %struct.pthreadpool, ptr %8, i32 0, i32 11
  %9 = load i64, ptr %tid, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds [0 x %struct.thread_info], ptr %threads, i64 0, i64 %9
  %thread_number = getelementptr inbounds %struct.thread_info, ptr %arrayidx, i32 0, i32 3
  store i64 %7, ptr %thread_number, align 8, !tbaa !12
  %10 = load ptr, ptr %threadpool, align 8, !tbaa !8
  %11 = load ptr, ptr %threadpool, align 8, !tbaa !8
  %threads7 = getelementptr inbounds %struct.pthreadpool, ptr %11, i32 0, i32 11
  %12 = load i64, ptr %tid, align 8, !tbaa !4
  %arrayidx8 = getelementptr inbounds [0 x %struct.thread_info], ptr %threads7, i64 0, i64 %12
  %threadpool9 = getelementptr inbounds %struct.thread_info, ptr %arrayidx8, i32 0, i32 4
  store ptr %10, ptr %threadpool9, align 32, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, ptr %tid, align 8, !tbaa !4
  %inc = add i64 %13, 1
  store i64 %inc, ptr %tid, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond.cleanup
  %14 = load i64, ptr %threads_count.addr, align 8, !tbaa !4
  %cmp10 = icmp ugt i64 %14, 1
  br i1 %cmp10, label %if.then11, label %if.end26

if.then11:                                        ; preds = %for.end
  %15 = load ptr, ptr %threadpool, align 8, !tbaa !8
  %execution_mutex = getelementptr inbounds %struct.pthreadpool, ptr %15, i32 0, i32 8
  %call12 = call i32 @pthread_mutex_init(ptr noundef %execution_mutex, ptr noundef null) #8
  %16 = load ptr, ptr %threadpool, align 8, !tbaa !8
  %has_active_threads = getelementptr inbounds %struct.pthreadpool, ptr %16, i32 0, i32 1
  call void @pthreadpool_store_relaxed_uint32_t(ptr noundef %has_active_threads, i32 noundef 1)
  %17 = load ptr, ptr %threadpool, align 8, !tbaa !8
  %active_threads = getelementptr inbounds %struct.pthreadpool, ptr %17, i32 0, i32 0
  %18 = load i64, ptr %threads_count.addr, align 8, !tbaa !4
  %sub = sub i64 %18, 1
  call void @pthreadpool_store_relaxed_size_t(ptr noundef %active_threads, i64 noundef %sub)
  call void @llvm.lifetime.start.p0(i64 8, ptr %tid13) #8
  store i64 1, ptr %tid13, align 8, !tbaa !4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc23, %if.then11
  %19 = load i64, ptr %tid13, align 8, !tbaa !4
  %20 = load i64, ptr %threads_count.addr, align 8, !tbaa !4
  %cmp15 = icmp ult i64 %19, %20
  br i1 %cmp15, label %for.body17, label %for.cond.cleanup16

for.cond.cleanup16:                               ; preds = %for.cond14
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tid13) #8
  br label %for.end25

for.body17:                                       ; preds = %for.cond14
  %21 = load ptr, ptr %threadpool, align 8, !tbaa !8
  %threads18 = getelementptr inbounds %struct.pthreadpool, ptr %21, i32 0, i32 11
  %22 = load i64, ptr %tid13, align 8, !tbaa !4
  %arrayidx19 = getelementptr inbounds [0 x %struct.thread_info], ptr %threads18, i64 0, i64 %22
  %thread_object = getelementptr inbounds %struct.thread_info, ptr %arrayidx19, i32 0, i32 5
  %23 = load ptr, ptr %threadpool, align 8, !tbaa !8
  %threads20 = getelementptr inbounds %struct.pthreadpool, ptr %23, i32 0, i32 11
  %24 = load i64, ptr %tid13, align 8, !tbaa !4
  %arrayidx21 = getelementptr inbounds [0 x %struct.thread_info], ptr %threads20, i64 0, i64 %24
  %call22 = call i32 @pthread_create(ptr noundef %thread_object, ptr noundef null, ptr noundef @thread_main, ptr noundef %arrayidx21) #8
  br label %for.inc23

for.inc23:                                        ; preds = %for.body17
  %25 = load i64, ptr %tid13, align 8, !tbaa !4
  %inc24 = add i64 %25, 1
  store i64 %inc24, ptr %tid13, align 8, !tbaa !4
  br label %for.cond14, !llvm.loop !17

for.end25:                                        ; preds = %for.cond.cleanup16
  %26 = load ptr, ptr %threadpool, align 8, !tbaa !8
  call void @wait_worker_threads(ptr noundef %26)
  br label %if.end26

if.end26:                                         ; preds = %for.end25, %for.end
  %27 = load ptr, ptr %threadpool, align 8, !tbaa !8
  store ptr %27, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %threadpool) #8
  %28 = load ptr, ptr %retval, align 8
  ret ptr %28
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare hidden ptr @pthreadpool_allocate(i64 noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @fxdiv_init_size_t(ptr noalias sret(%struct.fxdiv_divisor_size_t) align 8 %agg.result, i64 noundef %d) #4 {
entry:
  %d.addr = alloca i64, align 8
  %uint_result = alloca %struct.fxdiv_divisor_uint64_t, align 8
  store i64 %d, ptr %d.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 24, ptr %uint_result) #8
  %0 = load i64, ptr %d.addr, align 8, !tbaa !4
  call void @fxdiv_init_uint64_t(ptr sret(%struct.fxdiv_divisor_uint64_t) align 8 %uint_result, i64 noundef %0)
  %value = getelementptr inbounds %struct.fxdiv_divisor_size_t, ptr %agg.result, i32 0, i32 0
  %value1 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %uint_result, i32 0, i32 0
  %1 = load i64, ptr %value1, align 8, !tbaa !18
  store i64 %1, ptr %value, align 8, !tbaa !20
  %m = getelementptr inbounds %struct.fxdiv_divisor_size_t, ptr %agg.result, i32 0, i32 1
  %m2 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %uint_result, i32 0, i32 1
  %2 = load i64, ptr %m2, align 8, !tbaa !22
  store i64 %2, ptr %m, align 8, !tbaa !23
  %s1 = getelementptr inbounds %struct.fxdiv_divisor_size_t, ptr %agg.result, i32 0, i32 2
  %s13 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %uint_result, i32 0, i32 2
  %3 = load i8, ptr %s13, align 8, !tbaa !24
  store i8 %3, ptr %s1, align 8, !tbaa !25
  %s2 = getelementptr inbounds %struct.fxdiv_divisor_size_t, ptr %agg.result, i32 0, i32 3
  %s24 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %uint_result, i32 0, i32 3
  %4 = load i8, ptr %s24, align 1, !tbaa !26
  store i8 %4, ptr %s2, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 24, ptr %uint_result) #8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @pthreadpool_store_relaxed_uint32_t(ptr noundef %address, i32 noundef %value) #4 {
entry:
  %address.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %.atomictmp = alloca i32, align 4
  store ptr %address, ptr %address.addr, align 8, !tbaa !8
  store i32 %value, ptr %value.addr, align 4, !tbaa !28
  %0 = load ptr, ptr %address.addr, align 8, !tbaa !8
  %1 = load i32, ptr %value.addr, align 4, !tbaa !28
  store i32 %1, ptr %.atomictmp, align 4, !tbaa !28
  %2 = load i32, ptr %.atomictmp, align 4
  store atomic i32 %2, ptr %0 monotonic, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pthreadpool_store_relaxed_size_t(ptr noundef %address, i64 noundef %value) #4 {
entry:
  %address.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  %.atomictmp = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8, !tbaa !8
  store i64 %value, ptr %value.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %address.addr, align 8, !tbaa !8
  %1 = load i64, ptr %value.addr, align 8, !tbaa !4
  store i64 %1, ptr %.atomictmp, align 8, !tbaa !4
  %2 = load i64, ptr %.atomictmp, align 8
  store atomic i64 %2, ptr %0 monotonic, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @thread_main(ptr noundef %arg) #0 {
entry:
  %retval = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %thread = alloca ptr, align 8
  %threadpool = alloca ptr, align 8
  %last_command = alloca i32, align 4
  %saved_fpu_state = alloca %struct.fpu_state, align 4
  %flags = alloca i32, align 4
  %command = alloca i32, align 4
  %thread_function = alloca ptr, align 8
  %tmp = alloca %struct.fpu_state, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %thread) #8
  %0 = load ptr, ptr %arg.addr, align 8, !tbaa !8
  store ptr %0, ptr %thread, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %threadpool) #8
  %1 = load ptr, ptr %thread, align 8, !tbaa !8
  %threadpool1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %threadpool1, align 32, !tbaa !14
  store ptr %2, ptr %threadpool, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %last_command) #8
  store i32 0, ptr %last_command, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr %saved_fpu_state) #8
  call void @llvm.memset.p0.i64(ptr align 4 %saved_fpu_state, i8 0, i64 4, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #8
  store i32 0, ptr %flags, align 4, !tbaa !28
  %3 = load ptr, ptr %threadpool, align 8, !tbaa !8
  call void @checkin_worker_thread(ptr noundef %3)
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %command) #8
  %4 = load ptr, ptr %threadpool, align 8, !tbaa !8
  %5 = load i32, ptr %last_command, align 4, !tbaa !28
  %6 = load i32, ptr %flags, align 4, !tbaa !28
  %call = call i32 @wait_for_new_command(ptr noundef %4, i32 noundef %5, i32 noundef %6)
  store i32 %call, ptr %command, align 4, !tbaa !28
  call void @pthreadpool_fence_acquire()
  %7 = load ptr, ptr %threadpool, align 8, !tbaa !8
  %flags2 = getelementptr inbounds %struct.pthreadpool, ptr %7, i32 0, i32 7
  %call3 = call i32 @pthreadpool_load_relaxed_uint32_t(ptr noundef %flags2)
  store i32 %call3, ptr %flags, align 4, !tbaa !28
  %8 = load i32, ptr %command, align 4, !tbaa !28
  %and = and i32 %8, 2147483647
  switch i32 %and, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
    i32 0, label %sw.epilog
  ]

sw.bb:                                            ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %thread_function) #8
  %9 = load ptr, ptr %threadpool, align 8, !tbaa !8
  %thread_function4 = getelementptr inbounds %struct.pthreadpool, ptr %9, i32 0, i32 3
  %call5 = call ptr @pthreadpool_load_relaxed_void_p(ptr noundef %thread_function4)
  store ptr %call5, ptr %thread_function, align 8, !tbaa !8
  %10 = load i32, ptr %flags, align 4, !tbaa !28
  %and6 = and i32 %10, 1
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #8
  %call7 = call i32 @get_fpu_state()
  %coerce.dive = getelementptr inbounds %struct.fpu_state, ptr %tmp, i32 0, i32 0
  store i32 %call7, ptr %coerce.dive, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %saved_fpu_state, ptr align 4 %tmp, i64 4, i1 false), !tbaa.struct !30
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #8
  call void @disable_fpu_denormals()
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %11 = load ptr, ptr %thread_function, align 8, !tbaa !8
  %12 = load ptr, ptr %threadpool, align 8, !tbaa !8
  %13 = load ptr, ptr %thread, align 8, !tbaa !8
  call void %11(ptr noundef %12, ptr noundef %13)
  %14 = load i32, ptr %flags, align 4, !tbaa !28
  %and8 = and i32 %14, 1
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %coerce.dive11 = getelementptr inbounds %struct.fpu_state, ptr %saved_fpu_state, i32 0, i32 0
  %15 = load i32, ptr %coerce.dive11, align 4
  call void @set_fpu_state(i32 %15)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %thread_function) #8
  br label %sw.epilog

sw.bb13:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %for.cond, %for.cond, %if.end12
  %16 = load ptr, ptr %threadpool, align 8, !tbaa !8
  call void @checkin_worker_thread(ptr noundef %16)
  %17 = load i32, ptr %command, align 4, !tbaa !28
  store i32 %17, ptr %last_command, align 4, !tbaa !28
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb13
  call void @llvm.lifetime.end.p0(i64 4, ptr %command) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond

cleanup14:                                        ; preds = %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %saved_fpu_state) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %last_command) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %threadpool) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %thread) #8
  %18 = load ptr, ptr %retval, align 8
  ret ptr %18
}

; Function Attrs: nounwind uwtable
define internal void @wait_worker_threads(ptr noundef %threadpool) #0 {
entry:
  %threadpool.addr = alloca ptr, align 8
  %has_active_threads = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %threadpool, ptr %threadpool.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %has_active_threads) #8
  %0 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %has_active_threads1 = getelementptr inbounds %struct.pthreadpool, ptr %0, i32 0, i32 1
  %call = call i32 @pthreadpool_load_acquire_uint32_t(ptr noundef %has_active_threads1)
  store i32 %call, ptr %has_active_threads, align 4, !tbaa !28
  %1 = load i32, ptr %has_active_threads, align 4, !tbaa !28
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup13

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 1000000, ptr %i, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !tbaa !28
  %cmp2 = icmp ne i32 %2, 0
  br i1 %cmp2, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  call void @pthreadpool_yield()
  %3 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %has_active_threads3 = getelementptr inbounds %struct.pthreadpool, ptr %3, i32 0, i32 1
  %call4 = call i32 @pthreadpool_load_acquire_uint32_t(ptr noundef %has_active_threads3)
  store i32 %call4, ptr %has_active_threads, align 4, !tbaa !28
  %4 = load i32, ptr %has_active_threads, align 4, !tbaa !28
  %cmp5 = icmp eq i32 %4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %5 = load i32, ptr %i, align 4, !tbaa !28
  %dec = add i32 %5, -1
  store i32 %dec, ptr %i, align 4, !tbaa !28
  br label %for.cond, !llvm.loop !31

cleanup:                                          ; preds = %if.then6, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %6 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %has_active_threads8 = getelementptr inbounds %struct.pthreadpool, ptr %6, i32 0, i32 1
  %call9 = call i32 @pthreadpool_load_acquire_uint32_t(ptr noundef %has_active_threads8)
  store i32 %call9, ptr %has_active_threads, align 4, !tbaa !28
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %has_active_threads11 = getelementptr inbounds %struct.pthreadpool, ptr %7, i32 0, i32 1
  %call12 = call i32 @futex_wait(ptr noundef %has_active_threads11, i32 noundef 1)
  br label %while.cond, !llvm.loop !32

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup13

cleanup13:                                        ; preds = %while.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %has_active_threads) #8
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup13, %cleanup13
  ret void

unreachable:                                      ; preds = %cleanup13
  unreachable
}

; Function Attrs: nounwind uwtable
define hidden void @pthreadpool_parallelize(ptr noundef %threadpool, ptr noundef %thread_function, ptr noundef %params, i64 noundef %params_size, ptr noundef %task, ptr noundef %context, i64 noundef %linear_range, i32 noundef %flags) #0 {
entry:
  %threadpool.addr = alloca ptr, align 8
  %thread_function.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %params_size.addr = alloca i64, align 8
  %task.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %linear_range.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %threads_count = alloca %struct.fxdiv_divisor_size_t, align 8
  %range_params = alloca %struct.fxdiv_result_size_t, align 8
  %range_start = alloca i64, align 8
  %tid = alloca i64, align 8
  %thread = alloca ptr, align 8
  %range_length = alloca i64, align 8
  %range_end = alloca i64, align 8
  %old_command = alloca i32, align 4
  %new_command = alloca i32, align 4
  %saved_fpu_state = alloca %struct.fpu_state, align 4
  %tmp = alloca %struct.fpu_state, align 4
  store ptr %threadpool, ptr %threadpool.addr, align 8, !tbaa !8
  store ptr %thread_function, ptr %thread_function.addr, align 8, !tbaa !8
  store ptr %params, ptr %params.addr, align 8, !tbaa !8
  store i64 %params_size, ptr %params_size.addr, align 8, !tbaa !4
  store ptr %task, ptr %task.addr, align 8, !tbaa !8
  store ptr %context, ptr %context.addr, align 8, !tbaa !8
  store i64 %linear_range, ptr %linear_range.addr, align 8, !tbaa !4
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !28
  %0 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %execution_mutex = getelementptr inbounds %struct.pthreadpool, ptr %0, i32 0, i32 8
  %call = call i32 @pthread_mutex_lock(ptr noundef %execution_mutex) #8
  %1 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %thread_function1 = getelementptr inbounds %struct.pthreadpool, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %thread_function.addr, align 8, !tbaa !8
  call void @pthreadpool_store_relaxed_void_p(ptr noundef %thread_function1, ptr noundef %2)
  %3 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %task2 = getelementptr inbounds %struct.pthreadpool, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %task.addr, align 8, !tbaa !8
  call void @pthreadpool_store_relaxed_void_p(ptr noundef %task2, ptr noundef %4)
  %5 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %argument = getelementptr inbounds %struct.pthreadpool, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %context.addr, align 8, !tbaa !8
  call void @pthreadpool_store_relaxed_void_p(ptr noundef %argument, ptr noundef %6)
  %7 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %flags3 = getelementptr inbounds %struct.pthreadpool, ptr %7, i32 0, i32 7
  %8 = load i32, ptr %flags.addr, align 4, !tbaa !28
  call void @pthreadpool_store_relaxed_uint32_t(ptr noundef %flags3, i32 noundef %8)
  call void @llvm.lifetime.start.p0(i64 24, ptr %threads_count) #8
  %9 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %threads_count4 = getelementptr inbounds %struct.pthreadpool, ptr %9, i32 0, i32 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %threads_count, ptr align 8 %threads_count4, i64 24, i1 false), !tbaa.struct !10
  %10 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %active_threads = getelementptr inbounds %struct.pthreadpool, ptr %10, i32 0, i32 0
  %value = getelementptr inbounds %struct.fxdiv_divisor_size_t, ptr %threads_count, i32 0, i32 0
  %11 = load i64, ptr %value, align 8, !tbaa !20
  %sub = sub i64 %11, 1
  call void @pthreadpool_store_relaxed_size_t(ptr noundef %active_threads, i64 noundef %sub)
  %12 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %has_active_threads = getelementptr inbounds %struct.pthreadpool, ptr %12, i32 0, i32 1
  call void @pthreadpool_store_relaxed_uint32_t(ptr noundef %has_active_threads, i32 noundef 1)
  %13 = load i64, ptr %params_size.addr, align 8, !tbaa !4
  %cmp = icmp ne i64 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %params5 = getelementptr inbounds %struct.pthreadpool, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %16 = load i64, ptr %params_size.addr, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %params5, ptr align 1 %15, i64 %16, i1 false)
  call void @pthreadpool_fence_release()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr %range_params) #8
  %17 = load i64, ptr %linear_range.addr, align 8, !tbaa !4
  %call6 = call { i64, i64 } @fxdiv_divide_size_t(i64 noundef %17, ptr noundef byval(%struct.fxdiv_divisor_size_t) align 8 %threads_count)
  %18 = getelementptr inbounds { i64, i64 }, ptr %range_params, i32 0, i32 0
  %19 = extractvalue { i64, i64 } %call6, 0
  store i64 %19, ptr %18, align 8
  %20 = getelementptr inbounds { i64, i64 }, ptr %range_params, i32 0, i32 1
  %21 = extractvalue { i64, i64 } %call6, 1
  store i64 %21, ptr %20, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %range_start) #8
  store i64 0, ptr %range_start, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tid) #8
  store i64 0, ptr %tid, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %22 = load i64, ptr %tid, align 8, !tbaa !4
  %value7 = getelementptr inbounds %struct.fxdiv_divisor_size_t, ptr %threads_count, i32 0, i32 0
  %23 = load i64, ptr %value7, align 8, !tbaa !20
  %cmp8 = icmp ult i64 %22, %23
  br i1 %cmp8, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %tid) #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %thread) #8
  %24 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %threads = getelementptr inbounds %struct.pthreadpool, ptr %24, i32 0, i32 11
  %25 = load i64, ptr %tid, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds [0 x %struct.thread_info], ptr %threads, i64 0, i64 %25
  store ptr %arrayidx, ptr %thread, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %range_length) #8
  %quotient = getelementptr inbounds %struct.fxdiv_result_size_t, ptr %range_params, i32 0, i32 0
  %26 = load i64, ptr %quotient, align 8, !tbaa !33
  %27 = load i64, ptr %tid, align 8, !tbaa !4
  %remainder = getelementptr inbounds %struct.fxdiv_result_size_t, ptr %range_params, i32 0, i32 1
  %28 = load i64, ptr %remainder, align 8, !tbaa !35
  %cmp9 = icmp ult i64 %27, %28
  %conv = zext i1 %cmp9 to i32
  %conv10 = sext i32 %conv to i64
  %add = add i64 %26, %conv10
  store i64 %add, ptr %range_length, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %range_end) #8
  %29 = load i64, ptr %range_start, align 8, !tbaa !4
  %30 = load i64, ptr %range_length, align 8, !tbaa !4
  %add11 = add i64 %29, %30
  store i64 %add11, ptr %range_end, align 8, !tbaa !4
  %31 = load ptr, ptr %thread, align 8, !tbaa !8
  %range_start12 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 0
  %32 = load i64, ptr %range_start, align 8, !tbaa !4
  call void @pthreadpool_store_relaxed_size_t(ptr noundef %range_start12, i64 noundef %32)
  %33 = load ptr, ptr %thread, align 8, !tbaa !8
  %range_end13 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = load i64, ptr %range_end, align 8, !tbaa !4
  call void @pthreadpool_store_relaxed_size_t(ptr noundef %range_end13, i64 noundef %34)
  %35 = load ptr, ptr %thread, align 8, !tbaa !8
  %range_length14 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = load i64, ptr %range_length, align 8, !tbaa !4
  call void @pthreadpool_store_relaxed_size_t(ptr noundef %range_length14, i64 noundef %36)
  %37 = load i64, ptr %range_end, align 8, !tbaa !4
  store i64 %37, ptr %range_start, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %range_end) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %range_length) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %thread) #8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i64, ptr %tid, align 8, !tbaa !4
  %inc = add i64 %38, 1
  store i64 %inc, ptr %tid, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_command) #8
  %39 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %command = getelementptr inbounds %struct.pthreadpool, ptr %39, i32 0, i32 2
  %call15 = call i32 @pthreadpool_load_relaxed_uint32_t(ptr noundef %command)
  store i32 %call15, ptr %old_command, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_command) #8
  %40 = load i32, ptr %old_command, align 4, !tbaa !28
  %or = or i32 %40, 2147483647
  %not = xor i32 %or, -1
  %or16 = or i32 %not, 1
  store i32 %or16, ptr %new_command, align 4, !tbaa !28
  %41 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %command17 = getelementptr inbounds %struct.pthreadpool, ptr %41, i32 0, i32 2
  %42 = load i32, ptr %new_command, align 4, !tbaa !28
  call void @pthreadpool_store_release_uint32_t(ptr noundef %command17, i32 noundef %42)
  %43 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %command18 = getelementptr inbounds %struct.pthreadpool, ptr %43, i32 0, i32 2
  %call19 = call i32 @futex_wake_all(ptr noundef %command18)
  call void @llvm.lifetime.start.p0(i64 4, ptr %saved_fpu_state) #8
  call void @llvm.memset.p0.i64(ptr align 4 %saved_fpu_state, i8 0, i64 4, i1 false)
  %44 = load i32, ptr %flags.addr, align 4, !tbaa !28
  %and = and i32 %44, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then20, label %if.end22

if.then20:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #8
  %call21 = call i32 @get_fpu_state()
  %coerce.dive = getelementptr inbounds %struct.fpu_state, ptr %tmp, i32 0, i32 0
  store i32 %call21, ptr %coerce.dive, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %saved_fpu_state, ptr align 4 %tmp, i64 4, i1 false), !tbaa.struct !30
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #8
  call void @disable_fpu_denormals()
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %for.end
  %45 = load ptr, ptr %thread_function.addr, align 8, !tbaa !8
  %46 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %47 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %threads23 = getelementptr inbounds %struct.pthreadpool, ptr %47, i32 0, i32 11
  %arrayidx24 = getelementptr inbounds [0 x %struct.thread_info], ptr %threads23, i64 0, i64 0
  call void %45(ptr noundef %46, ptr noundef %arrayidx24)
  %48 = load i32, ptr %flags.addr, align 4, !tbaa !28
  %and25 = and i32 %48, 1
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end22
  %coerce.dive28 = getelementptr inbounds %struct.fpu_state, ptr %saved_fpu_state, i32 0, i32 0
  %49 = load i32, ptr %coerce.dive28, align 4
  call void @set_fpu_state(i32 %49)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end22
  %50 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  call void @wait_worker_threads(ptr noundef %50)
  call void @pthreadpool_fence_acquire()
  %51 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %execution_mutex30 = getelementptr inbounds %struct.pthreadpool, ptr %51, i32 0, i32 8
  %call31 = call i32 @pthread_mutex_unlock(ptr noundef %execution_mutex30) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %saved_fpu_state) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_command) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_command) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %range_start) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr %range_params) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr %threads_count) #8
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @pthreadpool_store_relaxed_void_p(ptr noundef %address, ptr noundef %value) #4 {
entry:
  %address.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %.atomictmp = alloca ptr, align 8
  store ptr %address, ptr %address.addr, align 8, !tbaa !8
  store ptr %value, ptr %value.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %address.addr, align 8, !tbaa !8
  %1 = load ptr, ptr %value.addr, align 8, !tbaa !8
  store ptr %1, ptr %.atomictmp, align 8, !tbaa !8
  %2 = load i64, ptr %.atomictmp, align 8
  store atomic i64 %2, ptr %0 monotonic, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal { i64, i64 } @fxdiv_divide_size_t(i64 noundef %n, ptr noundef byval(%struct.fxdiv_divisor_size_t) align 8 %divisor) #4 {
entry:
  %retval = alloca %struct.fxdiv_result_size_t, align 8
  %n.addr = alloca i64, align 8
  %quotient = alloca i64, align 8
  %remainder = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %quotient) #8
  %0 = load i64, ptr %n.addr, align 8, !tbaa !4
  %call = call i64 @fxdiv_quotient_size_t(i64 noundef %0, ptr noundef byval(%struct.fxdiv_divisor_size_t) align 8 %divisor)
  store i64 %call, ptr %quotient, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %remainder) #8
  %1 = load i64, ptr %n.addr, align 8, !tbaa !4
  %2 = load i64, ptr %quotient, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.fxdiv_divisor_size_t, ptr %divisor, i32 0, i32 0
  %3 = load i64, ptr %value, align 8, !tbaa !20
  %mul = mul i64 %2, %3
  %sub = sub i64 %1, %mul
  store i64 %sub, ptr %remainder, align 8, !tbaa !4
  %quotient1 = getelementptr inbounds %struct.fxdiv_result_size_t, ptr %retval, i32 0, i32 0
  %4 = load i64, ptr %quotient, align 8, !tbaa !4
  store i64 %4, ptr %quotient1, align 8, !tbaa !33
  %remainder2 = getelementptr inbounds %struct.fxdiv_result_size_t, ptr %retval, i32 0, i32 1
  %5 = load i64, ptr %remainder, align 8, !tbaa !4
  store i64 %5, ptr %remainder2, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr %remainder) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %quotient) #8
  %6 = load { i64, i64 }, ptr %retval, align 8
  ret { i64, i64 } %6
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @pthreadpool_load_relaxed_uint32_t(ptr noundef %address) #4 {
entry:
  %address.addr = alloca ptr, align 8
  %atomic-temp = alloca i32, align 4
  store ptr %address, ptr %address.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %address.addr, align 8, !tbaa !8
  %1 = load atomic i32, ptr %0 monotonic, align 4
  store i32 %1, ptr %atomic-temp, align 4
  %2 = load i32, ptr %atomic-temp, align 4, !tbaa !28
  ret i32 %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pthreadpool_store_release_uint32_t(ptr noundef %address, i32 noundef %value) #4 {
entry:
  %address.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %.atomictmp = alloca i32, align 4
  store ptr %address, ptr %address.addr, align 8, !tbaa !8
  store i32 %value, ptr %value.addr, align 4, !tbaa !28
  %0 = load ptr, ptr %address.addr, align 8, !tbaa !8
  %1 = load i32, ptr %value.addr, align 4, !tbaa !28
  store i32 %1, ptr %.atomictmp, align 4, !tbaa !28
  %2 = load i32, ptr %.atomictmp, align 4
  store atomic i32 %2, ptr %0 release, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @futex_wake_all(ptr noundef %address) #0 {
entry:
  %address.addr = alloca ptr, align 8
  store ptr %address, ptr %address.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %address.addr, align 8, !tbaa !8
  %call = call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef %0, i32 noundef 129, i32 noundef 2147483647) #8
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: inlinehint nounwind uwtable
define internal void @set_fpu_state(i32 %state.coerce) #4 {
entry:
  %state = alloca %struct.fpu_state, align 4
  %tmp = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.fpu_state, ptr %state, i32 0, i32 0
  store i32 %state.coerce, ptr %coerce.dive, align 4
  %mxcsr = getelementptr inbounds %struct.fpu_state, ptr %state, i32 0, i32 0
  %0 = load i32, ptr %mxcsr, align 4, !tbaa !37
  store i32 %0, ptr %tmp, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr %tmp)
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @pthreadpool_destroy(ptr noundef %threadpool) #0 {
entry:
  %threadpool.addr = alloca ptr, align 8
  %threads_count = alloca i64, align 8
  %thread = alloca i64, align 8
  store ptr %threadpool, ptr %threadpool.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %threads_count) #8
  %1 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %threads_count1 = getelementptr inbounds %struct.pthreadpool, ptr %1, i32 0, i32 9
  %value = getelementptr inbounds %struct.fxdiv_divisor_size_t, ptr %threads_count1, i32 0, i32 0
  %2 = load i64, ptr %value, align 8, !tbaa !20
  store i64 %2, ptr %threads_count, align 8, !tbaa !4
  %3 = load i64, ptr %threads_count, align 8, !tbaa !4
  %cmp2 = icmp ugt i64 %3, 1
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %active_threads = getelementptr inbounds %struct.pthreadpool, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %threads_count, align 8, !tbaa !4
  %sub = sub i64 %5, 1
  call void @pthreadpool_store_relaxed_size_t(ptr noundef %active_threads, i64 noundef %sub)
  %6 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %has_active_threads = getelementptr inbounds %struct.pthreadpool, ptr %6, i32 0, i32 1
  call void @pthreadpool_store_relaxed_uint32_t(ptr noundef %has_active_threads, i32 noundef 1)
  %7 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %command = getelementptr inbounds %struct.pthreadpool, ptr %7, i32 0, i32 2
  call void @pthreadpool_store_release_uint32_t(ptr noundef %command, i32 noundef 2)
  %8 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %command4 = getelementptr inbounds %struct.pthreadpool, ptr %8, i32 0, i32 2
  %call = call i32 @futex_wake_all(ptr noundef %command4)
  call void @llvm.lifetime.start.p0(i64 8, ptr %thread) #8
  store i64 1, ptr %thread, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %9 = load i64, ptr %thread, align 8, !tbaa !4
  %10 = load i64, ptr %threads_count, align 8, !tbaa !4
  %cmp5 = icmp ult i64 %9, %10
  br i1 %cmp5, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %thread) #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %threads = getelementptr inbounds %struct.pthreadpool, ptr %11, i32 0, i32 11
  %12 = load i64, ptr %thread, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds [0 x %struct.thread_info], ptr %threads, i64 0, i64 %12
  %thread_object = getelementptr inbounds %struct.thread_info, ptr %arrayidx, i32 0, i32 5
  %13 = load i64, ptr %thread_object, align 8, !tbaa !39
  %call6 = call i32 @pthread_join(i64 noundef %13, ptr noundef null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i64, ptr %thread, align 8, !tbaa !4
  %inc = add i64 %14, 1
  store i64 %inc, ptr %thread, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond.cleanup
  %15 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %execution_mutex = getelementptr inbounds %struct.pthreadpool, ptr %15, i32 0, i32 8
  %call7 = call i32 @pthread_mutex_destroy(ptr noundef %execution_mutex) #8
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %16 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  call void @pthreadpool_deallocate(ptr noundef %16)
  call void @llvm.lifetime.end.p0(i64 8, ptr %threads_count) #8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  ret void
}

declare i32 @pthread_join(i64 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) #1

declare hidden void @pthreadpool_deallocate(ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @fxdiv_init_uint64_t(ptr noalias sret(%struct.fxdiv_divisor_uint64_t) align 8 %agg.result, i64 noundef %d) #4 {
entry:
  %d.addr = alloca i64, align 8
  %l_minus_1 = alloca i32, align 4
  %nlz_d = alloca i32, align 4
  %u_hi = alloca i64, align 8
  %d_hi = alloca i64, align 8
  %d_lo = alloca i32, align 4
  %q1 = alloca i64, align 8
  %r1 = alloca i64, align 8
  %q0 = alloca i64, align 8
  %r0 = alloca i64, align 8
  %q = alloca i64, align 8
  store i64 %d, ptr %d.addr, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %agg.result, i32 0, i32 0
  %0 = load i64, ptr %d.addr, align 8, !tbaa !4
  store i64 %0, ptr %value, align 8, !tbaa !18
  %m = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %agg.result, i32 0, i32 1
  store i64 0, ptr %m, align 8, !tbaa !22
  %s1 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %agg.result, i32 0, i32 2
  store i8 0, ptr %s1, align 8, !tbaa !24
  %s2 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %agg.result, i32 0, i32 3
  store i8 0, ptr %s2, align 1, !tbaa !26
  %1 = load i64, ptr %d.addr, align 8, !tbaa !4
  %cmp = icmp eq i64 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %m1 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %agg.result, i32 0, i32 1
  store i64 1, ptr %m1, align 8, !tbaa !22
  %s12 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %agg.result, i32 0, i32 2
  store i8 0, ptr %s12, align 8, !tbaa !24
  %s23 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %agg.result, i32 0, i32 3
  store i8 0, ptr %s23, align 1, !tbaa !26
  br label %if.end60

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_minus_1) #8
  %2 = load i64, ptr %d.addr, align 8, !tbaa !4
  %sub = sub i64 %2, 1
  %3 = call i64 @llvm.ctlz.i64(i64 %sub, i1 true)
  %cast = trunc i64 %3 to i32
  %sub4 = sub nsw i32 63, %cast
  store i32 %sub4, ptr %l_minus_1, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr %nlz_d) #8
  %4 = load i64, ptr %d.addr, align 8, !tbaa !4
  %5 = call i64 @llvm.ctlz.i64(i64 %4, i1 true)
  %cast5 = trunc i64 %5 to i32
  store i32 %cast5, ptr %nlz_d, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr %u_hi) #8
  %6 = load i32, ptr %l_minus_1, align 4, !tbaa !28
  %sh_prom = zext i32 %6 to i64
  %shl = shl i64 2, %sh_prom
  %7 = load i64, ptr %d.addr, align 8, !tbaa !4
  %sub6 = sub i64 %shl, %7
  store i64 %sub6, ptr %u_hi, align 8, !tbaa !4
  %8 = load i32, ptr %nlz_d, align 4, !tbaa !28
  %9 = load i64, ptr %d.addr, align 8, !tbaa !4
  %sh_prom7 = zext i32 %8 to i64
  %shl8 = shl i64 %9, %sh_prom7
  store i64 %shl8, ptr %d.addr, align 8, !tbaa !4
  %10 = load i32, ptr %nlz_d, align 4, !tbaa !28
  %11 = load i64, ptr %u_hi, align 8, !tbaa !4
  %sh_prom9 = zext i32 %10 to i64
  %shl10 = shl i64 %11, %sh_prom9
  store i64 %shl10, ptr %u_hi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %d_hi) #8
  %12 = load i64, ptr %d.addr, align 8, !tbaa !4
  %shr = lshr i64 %12, 32
  %conv = trunc i64 %shr to i32
  %conv11 = zext i32 %conv to i64
  store i64 %conv11, ptr %d_hi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %d_lo) #8
  %13 = load i64, ptr %d.addr, align 8, !tbaa !4
  %conv12 = trunc i64 %13 to i32
  store i32 %conv12, ptr %d_lo, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 8, ptr %q1) #8
  %14 = load i64, ptr %u_hi, align 8, !tbaa !4
  %15 = load i64, ptr %d_hi, align 8, !tbaa !4
  %div = udiv i64 %14, %15
  store i64 %div, ptr %q1, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %r1) #8
  %16 = load i64, ptr %u_hi, align 8, !tbaa !4
  %17 = load i64, ptr %q1, align 8, !tbaa !4
  %18 = load i64, ptr %d_hi, align 8, !tbaa !4
  %mul = mul i64 %17, %18
  %sub13 = sub i64 %16, %mul
  store i64 %sub13, ptr %r1, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  %19 = load i64, ptr %q1, align 8, !tbaa !4
  %shr14 = lshr i64 %19, 32
  %cmp15 = icmp ne i64 %shr14, 0
  br i1 %cmp15, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %20 = load i64, ptr %q1, align 8, !tbaa !4
  %conv17 = trunc i64 %20 to i32
  %21 = load i32, ptr %d_lo, align 4, !tbaa !28
  %call = call i64 @fxdiv_mulext_uint32_t(i32 noundef %conv17, i32 noundef %21)
  %22 = load i64, ptr %r1, align 8, !tbaa !4
  %shl18 = shl i64 %22, 32
  %cmp19 = icmp ugt i64 %call, %shl18
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %23 = phi i1 [ true, %while.cond ], [ %cmp19, %lor.rhs ]
  br i1 %23, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %24 = load i64, ptr %q1, align 8, !tbaa !4
  %sub21 = sub i64 %24, 1
  store i64 %sub21, ptr %q1, align 8, !tbaa !4
  %25 = load i64, ptr %d_hi, align 8, !tbaa !4
  %26 = load i64, ptr %r1, align 8, !tbaa !4
  %add = add i64 %26, %25
  store i64 %add, ptr %r1, align 8, !tbaa !4
  %27 = load i64, ptr %r1, align 8, !tbaa !4
  %shr22 = lshr i64 %27, 32
  %cmp23 = icmp ne i64 %shr22, 0
  br i1 %cmp23, label %if.then25, label %if.end

if.then25:                                        ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.cond, !llvm.loop !41

while.end:                                        ; preds = %if.then25, %lor.end
  %28 = load i64, ptr %u_hi, align 8, !tbaa !4
  %shl26 = shl i64 %28, 32
  %29 = load i64, ptr %q1, align 8, !tbaa !4
  %30 = load i64, ptr %d.addr, align 8, !tbaa !4
  %mul27 = mul i64 %29, %30
  %sub28 = sub i64 %shl26, %mul27
  store i64 %sub28, ptr %u_hi, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q0) #8
  %31 = load i64, ptr %u_hi, align 8, !tbaa !4
  %32 = load i64, ptr %d_hi, align 8, !tbaa !4
  %div29 = udiv i64 %31, %32
  store i64 %div29, ptr %q0, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %r0) #8
  %33 = load i64, ptr %u_hi, align 8, !tbaa !4
  %34 = load i64, ptr %q0, align 8, !tbaa !4
  %35 = load i64, ptr %d_hi, align 8, !tbaa !4
  %mul30 = mul i64 %34, %35
  %sub31 = sub i64 %33, %mul30
  store i64 %sub31, ptr %r0, align 8, !tbaa !4
  br label %while.cond32

while.cond32:                                     ; preds = %if.end50, %while.end
  %36 = load i64, ptr %q0, align 8, !tbaa !4
  %shr33 = lshr i64 %36, 32
  %cmp34 = icmp ne i64 %shr33, 0
  br i1 %cmp34, label %lor.end42, label %lor.rhs36

lor.rhs36:                                        ; preds = %while.cond32
  %37 = load i64, ptr %q0, align 8, !tbaa !4
  %conv37 = trunc i64 %37 to i32
  %38 = load i32, ptr %d_lo, align 4, !tbaa !28
  %call38 = call i64 @fxdiv_mulext_uint32_t(i32 noundef %conv37, i32 noundef %38)
  %39 = load i64, ptr %r0, align 8, !tbaa !4
  %shl39 = shl i64 %39, 32
  %cmp40 = icmp ugt i64 %call38, %shl39
  br label %lor.end42

lor.end42:                                        ; preds = %lor.rhs36, %while.cond32
  %40 = phi i1 [ true, %while.cond32 ], [ %cmp40, %lor.rhs36 ]
  br i1 %40, label %while.body43, label %while.end51

while.body43:                                     ; preds = %lor.end42
  %41 = load i64, ptr %q0, align 8, !tbaa !4
  %sub44 = sub i64 %41, 1
  store i64 %sub44, ptr %q0, align 8, !tbaa !4
  %42 = load i64, ptr %d_hi, align 8, !tbaa !4
  %43 = load i64, ptr %r0, align 8, !tbaa !4
  %add45 = add i64 %43, %42
  store i64 %add45, ptr %r0, align 8, !tbaa !4
  %44 = load i64, ptr %r0, align 8, !tbaa !4
  %shr46 = lshr i64 %44, 32
  %cmp47 = icmp ne i64 %shr46, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %while.body43
  br label %while.end51

if.end50:                                         ; preds = %while.body43
  br label %while.cond32, !llvm.loop !42

while.end51:                                      ; preds = %if.then49, %lor.end42
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #8
  %45 = load i64, ptr %q1, align 8, !tbaa !4
  %shl52 = shl i64 %45, 32
  %46 = load i64, ptr %q0, align 8, !tbaa !4
  %conv53 = trunc i64 %46 to i32
  %conv54 = zext i32 %conv53 to i64
  %or = or i64 %shl52, %conv54
  store i64 %or, ptr %q, align 8, !tbaa !4
  %47 = load i64, ptr %q, align 8, !tbaa !4
  %add55 = add i64 %47, 1
  %m56 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %agg.result, i32 0, i32 1
  store i64 %add55, ptr %m56, align 8, !tbaa !22
  %s157 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %agg.result, i32 0, i32 2
  store i8 1, ptr %s157, align 8, !tbaa !24
  %48 = load i32, ptr %l_minus_1, align 4, !tbaa !28
  %conv58 = trunc i32 %48 to i8
  %s259 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %agg.result, i32 0, i32 3
  store i8 %conv58, ptr %s259, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %q0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %q1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %d_lo) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %d_hi) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %u_hi) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %nlz_d) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_minus_1) #8
  br label %if.end60

if.end60:                                         ; preds = %while.end51, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @fxdiv_mulext_uint32_t(i32 noundef %a, i32 noundef %b) #4 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !28
  store i32 %b, ptr %b.addr, align 4, !tbaa !28
  %0 = load i32, ptr %a.addr, align 4, !tbaa !28
  %conv = zext i32 %0 to i64
  %1 = load i32, ptr %b.addr, align 4, !tbaa !28
  %conv1 = zext i32 %1 to i64
  %mul = mul i64 %conv, %conv1
  ret i64 %mul
}

; Function Attrs: nounwind uwtable
define internal void @checkin_worker_thread(ptr noundef %threadpool) #0 {
entry:
  %threadpool.addr = alloca ptr, align 8
  store ptr %threadpool, ptr %threadpool.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %active_threads = getelementptr inbounds %struct.pthreadpool, ptr %0, i32 0, i32 0
  %call = call i64 @pthreadpool_decrement_fetch_relaxed_size_t(ptr noundef %active_threads)
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %has_active_threads = getelementptr inbounds %struct.pthreadpool, ptr %1, i32 0, i32 1
  call void @pthreadpool_store_release_uint32_t(ptr noundef %has_active_threads, i32 noundef 0)
  %2 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %has_active_threads1 = getelementptr inbounds %struct.pthreadpool, ptr %2, i32 0, i32 1
  %call2 = call i32 @futex_wake_all(ptr noundef %has_active_threads1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @wait_for_new_command(ptr noundef %threadpool, i32 noundef %last_command, i32 noundef %last_flags) #0 {
entry:
  %retval = alloca i32, align 4
  %threadpool.addr = alloca ptr, align 8
  %last_command.addr = alloca i32, align 4
  %last_flags.addr = alloca i32, align 4
  %command = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %threadpool, ptr %threadpool.addr, align 8, !tbaa !8
  store i32 %last_command, ptr %last_command.addr, align 4, !tbaa !28
  store i32 %last_flags, ptr %last_flags.addr, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr %command) #8
  %0 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %command1 = getelementptr inbounds %struct.pthreadpool, ptr %0, i32 0, i32 2
  %call = call i32 @pthreadpool_load_acquire_uint32_t(ptr noundef %command1)
  store i32 %call, ptr %command, align 4, !tbaa !28
  %1 = load i32, ptr %command, align 4, !tbaa !28
  %2 = load i32, ptr %last_command.addr, align 4, !tbaa !28
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %command, align 4, !tbaa !28
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %last_flags.addr, align 4, !tbaa !28
  %and = and i32 %4, 2
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then3, label %if.end10

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8
  store i32 1000000, ptr %i, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %5 = load i32, ptr %i, align 4, !tbaa !28
  %cmp4 = icmp ne i32 %5, 0
  br i1 %cmp4, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  call void @pthreadpool_yield()
  %6 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %command5 = getelementptr inbounds %struct.pthreadpool, ptr %6, i32 0, i32 2
  %call6 = call i32 @pthreadpool_load_acquire_uint32_t(ptr noundef %command5)
  store i32 %call6, ptr %command, align 4, !tbaa !28
  %7 = load i32, ptr %command, align 4, !tbaa !28
  %8 = load i32, ptr %last_command.addr, align 4, !tbaa !28
  %cmp7 = icmp ne i32 %7, %8
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  %9 = load i32, ptr %command, align 4, !tbaa !28
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %10 = load i32, ptr %i, align 4, !tbaa !28
  %dec = add i32 %10, -1
  store i32 %dec, ptr %i, align 4, !tbaa !28
  br label %for.cond, !llvm.loop !43

cleanup:                                          ; preds = %if.then8, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  br label %if.end10

if.end10:                                         ; preds = %for.end, %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end10
  %11 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %command11 = getelementptr inbounds %struct.pthreadpool, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %last_command.addr, align 4, !tbaa !28
  %call12 = call i32 @futex_wait(ptr noundef %command11, i32 noundef %12)
  %13 = load ptr, ptr %threadpool.addr, align 8, !tbaa !8
  %command13 = getelementptr inbounds %struct.pthreadpool, ptr %13, i32 0, i32 2
  %call14 = call i32 @pthreadpool_load_acquire_uint32_t(ptr noundef %command13)
  store i32 %call14, ptr %command, align 4, !tbaa !28
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %14 = load i32, ptr %command, align 4, !tbaa !28
  %15 = load i32, ptr %last_command.addr, align 4, !tbaa !28
  %cmp15 = icmp eq i32 %14, %15
  br i1 %cmp15, label %do.body, label %do.end, !llvm.loop !44

do.end:                                           ; preds = %do.cond
  %16 = load i32, ptr %command, align 4, !tbaa !28
  store i32 %16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

cleanup16:                                        ; preds = %do.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %command) #8
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @pthreadpool_load_relaxed_void_p(ptr noundef %address) #4 {
entry:
  %address.addr = alloca ptr, align 8
  %atomic-temp = alloca ptr, align 8
  store ptr %address, ptr %address.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %address.addr, align 8, !tbaa !8
  %1 = load atomic i64, ptr %0 monotonic, align 8
  store i64 %1, ptr %atomic-temp, align 8
  %2 = load ptr, ptr %atomic-temp, align 8, !tbaa !8
  ret ptr %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @pthreadpool_decrement_fetch_relaxed_size_t(ptr noundef %address) #4 {
entry:
  %address.addr = alloca ptr, align 8
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %address.addr, align 8, !tbaa !8
  store i64 1, ptr %.atomictmp, align 8, !tbaa !4
  %1 = load i64, ptr %.atomictmp, align 8
  %2 = atomicrmw sub ptr %0, i64 %1 monotonic, align 8
  store i64 %2, ptr %atomic-temp, align 8
  %3 = load i64, ptr %atomic-temp, align 8, !tbaa !4
  %sub = sub i64 %3, 1
  ret i64 %sub
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @pthreadpool_load_acquire_uint32_t(ptr noundef %address) #4 {
entry:
  %address.addr = alloca ptr, align 8
  %atomic-temp = alloca i32, align 4
  store ptr %address, ptr %address.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %address.addr, align 8, !tbaa !8
  %1 = load atomic i32, ptr %0 acquire, align 4
  store i32 %1, ptr %atomic-temp, align 4
  %2 = load i32, ptr %atomic-temp, align 4, !tbaa !28
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @futex_wait(ptr noundef %address, i32 noundef %value) #0 {
entry:
  %address.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  store ptr %address, ptr %address.addr, align 8, !tbaa !8
  store i32 %value, ptr %value.addr, align 4, !tbaa !28
  %0 = load ptr, ptr %address.addr, align 8, !tbaa !8
  %1 = load i32, ptr %value.addr, align 4, !tbaa !28
  %call = call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef %0, i32 noundef 128, i32 noundef %1, ptr noundef null) #8
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pthreadpool_yield() #4 {
entry:
  call void @llvm.x86.sse2.pause()
  ret void
}

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #8

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @pthreadpool_fence_release() #4 {
entry:
  fence release
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @fxdiv_quotient_size_t(i64 noundef %n, ptr noundef byval(%struct.fxdiv_divisor_size_t) align 8 %divisor) #4 {
entry:
  %n.addr = alloca i64, align 8
  %uint64_divisor = alloca %struct.fxdiv_divisor_uint64_t, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 24, ptr %uint64_divisor) #8
  %value = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %uint64_divisor, i32 0, i32 0
  %value1 = getelementptr inbounds %struct.fxdiv_divisor_size_t, ptr %divisor, i32 0, i32 0
  %0 = load i64, ptr %value1, align 8, !tbaa !20
  store i64 %0, ptr %value, align 8, !tbaa !18
  %m = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %uint64_divisor, i32 0, i32 1
  %m2 = getelementptr inbounds %struct.fxdiv_divisor_size_t, ptr %divisor, i32 0, i32 1
  %1 = load i64, ptr %m2, align 8, !tbaa !23
  store i64 %1, ptr %m, align 8, !tbaa !22
  %s1 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %uint64_divisor, i32 0, i32 2
  %s13 = getelementptr inbounds %struct.fxdiv_divisor_size_t, ptr %divisor, i32 0, i32 2
  %2 = load i8, ptr %s13, align 8, !tbaa !25
  store i8 %2, ptr %s1, align 8, !tbaa !24
  %s2 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %uint64_divisor, i32 0, i32 3
  %s24 = getelementptr inbounds %struct.fxdiv_divisor_size_t, ptr %divisor, i32 0, i32 3
  %3 = load i8, ptr %s24, align 1, !tbaa !27
  store i8 %3, ptr %s2, align 1, !tbaa !26
  %4 = load i64, ptr %n.addr, align 8, !tbaa !4
  %call = call i64 @fxdiv_quotient_uint64_t(i64 noundef %4, ptr noundef byval(%struct.fxdiv_divisor_uint64_t) align 8 %uint64_divisor)
  call void @llvm.lifetime.end.p0(i64 24, ptr %uint64_divisor) #8
  ret i64 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @fxdiv_quotient_uint64_t(i64 noundef %n, ptr noundef byval(%struct.fxdiv_divisor_uint64_t) align 8 %divisor) #4 {
entry:
  %n.addr = alloca i64, align 8
  %t = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #8
  %0 = load i64, ptr %n.addr, align 8, !tbaa !4
  %m = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %divisor, i32 0, i32 1
  %1 = load i64, ptr %m, align 8, !tbaa !22
  %call = call i64 @fxdiv_mulhi_uint64_t(i64 noundef %0, i64 noundef %1)
  store i64 %call, ptr %t, align 8, !tbaa !4
  %2 = load i64, ptr %t, align 8, !tbaa !4
  %3 = load i64, ptr %n.addr, align 8, !tbaa !4
  %4 = load i64, ptr %t, align 8, !tbaa !4
  %sub = sub i64 %3, %4
  %s1 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %divisor, i32 0, i32 2
  %5 = load i8, ptr %s1, align 8, !tbaa !24
  %conv = zext i8 %5 to i32
  %sh_prom = zext i32 %conv to i64
  %shr = lshr i64 %sub, %sh_prom
  %add = add i64 %2, %shr
  %s2 = getelementptr inbounds %struct.fxdiv_divisor_uint64_t, ptr %divisor, i32 0, i32 3
  %6 = load i8, ptr %s2, align 1, !tbaa !26
  %conv1 = zext i8 %6 to i32
  %sh_prom2 = zext i32 %conv1 to i64
  %shr3 = lshr i64 %add, %sh_prom2
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #8
  ret i64 %shr3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @fxdiv_mulhi_uint64_t(i64 noundef %a, i64 noundef %b) #4 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !4
  store i64 %b, ptr %b.addr, align 8, !tbaa !4
  %0 = load i64, ptr %a.addr, align 8, !tbaa !4
  %conv = zext i64 %0 to i128
  %1 = load i64, ptr %b.addr, align 8, !tbaa !4
  %conv1 = zext i64 %1 to i128
  %mul = mul i128 %conv, %conv1
  %shr = lshr i128 %mul, 64
  %conv2 = trunc i128 %shr to i64
  ret i64 %conv2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @get_fpu_state() #4 {
entry:
  %retval = alloca %struct.fpu_state, align 4
  %tmp = alloca i32, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %retval, i8 0, i64 4, i1 false)
  call void @llvm.x86.sse.stmxcsr(ptr %tmp)
  %stmxcsr = load i32, ptr %tmp, align 4
  %mxcsr = getelementptr inbounds %struct.fpu_state, ptr %retval, i32 0, i32 0
  store i32 %stmxcsr, ptr %mxcsr, align 4, !tbaa !37
  %coerce.dive = getelementptr inbounds %struct.fpu_state, ptr %retval, i32 0, i32 0
  %0 = load i32, ptr %coerce.dive, align 4
  ret i32 %0
}

; Function Attrs: nounwind memory(argmem: write)
declare void @llvm.x86.sse.stmxcsr(ptr) #9

; Function Attrs: inlinehint nounwind uwtable
define internal void @disable_fpu_denormals() #4 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  call void @llvm.x86.sse.stmxcsr(ptr %tmp)
  %stmxcsr = load i32, ptr %tmp, align 4
  %or = or i32 %stmxcsr, 32832
  store i32 %or, ptr %tmp1, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr %tmp1)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.x86.sse.ldmxcsr(ptr) #8

; Function Attrs: inlinehint nounwind uwtable
define internal void @pthreadpool_fence_acquire() #4 {
entry:
  fence acquire
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{i64 0, i64 8, !4, i64 8, i64 8, !4, i64 16, i64 1, !11, i64 17, i64 1, !11}
!11 = !{!6, !6, i64 0}
!12 = !{!13, !5, i64 24}
!13 = !{!"thread_info", !6, i64 0, !6, i64 8, !6, i64 16, !5, i64 24, !9, i64 32, !5, i64 40}
!14 = !{!13, !9, i64 32}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!19, !5, i64 0}
!19 = !{!"fxdiv_divisor_uint64_t", !5, i64 0, !5, i64 8, !6, i64 16, !6, i64 17}
!20 = !{!21, !5, i64 0}
!21 = !{!"fxdiv_divisor_size_t", !5, i64 0, !5, i64 8, !6, i64 16, !6, i64 17}
!22 = !{!19, !5, i64 8}
!23 = !{!21, !5, i64 8}
!24 = !{!19, !6, i64 16}
!25 = !{!21, !6, i64 16}
!26 = !{!19, !6, i64 17}
!27 = !{!21, !6, i64 17}
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !6, i64 0}
!30 = !{i64 0, i64 4, !28}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = !{!34, !5, i64 0}
!34 = !{!"fxdiv_result_size_t", !5, i64 0, !5, i64 8}
!35 = !{!34, !5, i64 8}
!36 = distinct !{!36, !16}
!37 = !{!38, !29, i64 0}
!38 = !{!"fpu_state", !29, i64 0}
!39 = !{!13, !5, i64 40}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
