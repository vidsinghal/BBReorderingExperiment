; ModuleID = 'samples/576.bc'
source_filename = "/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-io/source/linux/epoll_event_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aws_event_loop_vtable = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aws_mutex = type { %union.pthread_mutex_t, i8 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.aws_io_handle = type { %union.anon, ptr }
%union.anon = type { ptr }
%struct.aws_logger = type { ptr, ptr, ptr }
%struct.aws_logger_vtable = type { ptr, ptr, ptr, ptr }
%struct.aws_event_loop_options = type { ptr, ptr }
%struct.epoll_loop = type { %struct.aws_task_scheduler, %struct.aws_thread, %struct.aws_thread_options, i64, %struct.aws_atomic_var, %struct.aws_io_handle, %struct.aws_io_handle, %struct.aws_mutex, %struct.aws_linked_list, %struct.aws_task, %struct.aws_atomic_var, i32, i8, i8 }
%struct.aws_task_scheduler = type { ptr, %struct.aws_priority_queue, %struct.aws_linked_list, %struct.aws_linked_list }
%struct.aws_priority_queue = type { ptr, %struct.aws_array_list, %struct.aws_array_list }
%struct.aws_array_list = type { ptr, i64, i64, i64, ptr }
%struct.aws_thread = type { ptr, i32, i64 }
%struct.aws_thread_options = type { i64, i32, i32, %struct.aws_byte_cursor }
%struct.aws_byte_cursor = type { i64, ptr }
%struct.aws_linked_list = type { %struct.aws_linked_list_node, %struct.aws_linked_list_node }
%struct.aws_linked_list_node = type { ptr, ptr }
%struct.aws_task = type { ptr, ptr, i64, %struct.aws_linked_list_node, %struct.aws_priority_queue_node, ptr, %union.anon.0 }
%struct.aws_priority_queue_node = type { i64 }
%union.anon.0 = type { i64 }
%struct.aws_atomic_var = type { ptr }
%struct.aws_event_loop = type { ptr, ptr, ptr, %struct.aws_hash_table, %struct.aws_atomic_var, i64, i64, %struct.aws_atomic_var, ptr }
%struct.aws_hash_table = type { ptr }
%struct.epoll_event = type <{ i32, %union.epoll_data }>
%union.epoll_data = type { ptr }
%struct.epoll_event_data = type { ptr, ptr, ptr, ptr, %struct.aws_task, i8 }

@.str = private unnamed_addr constant [41 x i8] c"id=%p: Initializing edge-triggered epoll\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"id=%p: Failed to open epoll handle.\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"id=%p: Using eventfd for cross-thread notifications.\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"id=%p: Failed to open eventfd handle.\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"id=%p: eventfd descriptor %d.\00", align 1
@s_vtable = internal global %struct.aws_event_loop_vtable { ptr @s_destroy, ptr @s_run, ptr @s_stop, ptr @s_wait_for_stop_completion, ptr @s_schedule_task_now, ptr @s_schedule_task_future, ptr @s_cancel_task, ptr @s_subscribe_to_io_events, ptr @s_unsubscribe_from_io_events, ptr @s_free_io_event_resources, ptr @s_is_on_callers_thread }, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"id=%p: Destroying event_loop\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"id=%p: Starting event-loop thread.\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"id=%p: thread creation failed.\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"id=%p: main loop started\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"id=%p: default timeout %d, and max events to process per tick %d\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"id=%p: waiting for a maximum of %d ms\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"id=%p: wake up with %d events to process.\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"id=%p: activity on fd %d, invoking handler.\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"id=%p: running scheduled tasks.\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"id=%p: no more scheduled tasks using default timeout.\00", align 1
@.str.15 = private unnamed_addr constant [91 x i8] c"id=%p: detected more scheduled tasks with the next occurring at %llu, using timeout of %d.\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"id=%p: exiting main loop\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"id=%p: notified of cross-thread tasks to schedule\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"id=%p: processing cross-thread tasks\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"id=%p: task %p pulled to event-loop, scheduling now.\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"old_frequency > 0 && new_frequency > 0\00", align 1
@.str.21 = private unnamed_addr constant [209 x i8] c"/local-ssd/aws-sdk-cpp-o2m27ohufcjkh3y4agkcjxerhgqoszut-build/aidengro/spack-stage-aws-sdk-cpp-1.11.144-o2m27ohufcjkh3y4agkcjxerhgqoszut/spack-src/crt/aws-crt-cpp/crt/aws-c-common/include/aws/common/clock.inl\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"id=%p: Stopping event-loop thread.\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"epoll_event_loop_stop\00", align 1
@.str.24 = private unnamed_addr constant [55 x i8] c"id=%p: scheduling task %p in-thread for timestamp %llu\00", align 1
@.str.25 = private unnamed_addr constant [58 x i8] c"id=%p: Scheduling task %p cross-thread for timestamp %llu\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"id=%p: Waking up event-loop thread\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"id=%p: cancelling task %p\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"id=%p: subscribing to events on fd %d\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"id=%p: failed to subscribe to events on fd %d\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"id=%p: un-subscribing from events on fd %d\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"id=%p: failed to un-subscribe from events on fd %d\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"epoll_event_loop_unsubscribe_cleanup\00", align 1

; Function Attrs: nounwind uwtable
define ptr @aws_event_loop_new_default_with_options(ptr noundef %alloc, ptr noundef %options) #0 {
entry:
  %retval = alloca ptr, align 8
  %alloc.addr = alloca ptr, align 8
  %options.addr = alloca ptr, align 8
  %loop = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %logger = alloca ptr, align 8
  %epoll_loop = alloca ptr, align 8
  %.compoundliteral = alloca %struct.aws_mutex, align 8
  %logger28 = alloca ptr, align 8
  %logger50 = alloca ptr, align 8
  %fd = alloca i32, align 4
  %logger69 = alloca ptr, align 8
  %logger87 = alloca ptr, align 8
  %.compoundliteral102 = alloca %struct.aws_io_handle, align 8
  %.compoundliteral103 = alloca %struct.aws_io_handle, align 8
  store ptr %alloc, ptr %alloc.addr, align 8, !tbaa !4
  store ptr %options, ptr %options.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %loop) #12
  %0 = load ptr, ptr %alloc.addr, align 8, !tbaa !4
  %call = call ptr @aws_mem_calloc(ptr noundef %0, i64 noundef 1, i64 noundef 72)
  store ptr %call, ptr %loop, align 8, !tbaa !4
  %1 = load ptr, ptr %loop, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #12
  %call1 = call ptr @aws_logger_get()
  store ptr %call1, ptr %logger, align 8, !tbaa !4
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %do.body
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %call2 = call i32 %5(ptr noundef %6, i32 noundef 1025)
  %cmp3 = icmp uge i32 %call2, 4
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable5 = getelementptr inbounds %struct.aws_logger, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %vtable5, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %log, align 8, !tbaa !12
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %11 = load ptr, ptr %loop, align 8, !tbaa !4
  %call6 = call i32 (ptr, i32, i32, ptr, ...) %9(ptr noundef %10, i32 noundef 4, i32 noundef 1025, ptr noundef @.str, ptr noundef %11)
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #12
  br label %do.cond

do.cond:                                          ; preds = %if.end7
  br label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %loop, align 8, !tbaa !4
  %13 = load ptr, ptr %alloc.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %clock = getelementptr inbounds %struct.aws_event_loop_options, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %clock, align 8, !tbaa !13
  %call8 = call i32 @aws_event_loop_init_base(ptr noundef %12, ptr noundef %13, ptr noundef %15)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.end
  br label %clean_up_loop

if.end11:                                         ; preds = %do.end
  %16 = load ptr, ptr %alloc.addr, align 8, !tbaa !4
  %call12 = call ptr @aws_mem_calloc(ptr noundef %16, i64 noundef 1, i64 noundef 424)
  store ptr %call12, ptr %epoll_loop, align 8, !tbaa !4
  %17 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %tobool13 = icmp ne ptr %17, null
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end11
  br label %cleanup_base_loop

if.end15:                                         ; preds = %if.end11
  %18 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %thread_options = getelementptr inbounds %struct.aws_event_loop_options, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %thread_options, align 8, !tbaa !15
  %tobool16 = icmp ne ptr %19, null
  br i1 %tobool16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  %20 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %thread_options18 = getelementptr inbounds %struct.epoll_loop, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %options.addr, align 8, !tbaa !4
  %thread_options19 = getelementptr inbounds %struct.aws_event_loop_options, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %thread_options19, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %thread_options18, ptr align 8 %22, i64 32, i1 false), !tbaa.struct !16
  br label %if.end22

if.else:                                          ; preds = %if.end15
  %23 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %thread_options20 = getelementptr inbounds %struct.epoll_loop, ptr %23, i32 0, i32 2
  %call21 = call ptr @aws_default_thread_options()
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %thread_options20, ptr align 8 %call21, i64 32, i1 false), !tbaa.struct !16
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then17
  %24 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %running_thread_id = getelementptr inbounds %struct.epoll_loop, ptr %24, i32 0, i32 4
  call void @aws_atomic_init_ptr(ptr noundef %running_thread_id, ptr noundef null)
  %25 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %task_pre_queue = getelementptr inbounds %struct.epoll_loop, ptr %25, i32 0, i32 8
  call void @aws_linked_list_init(ptr noundef %task_pre_queue)
  %26 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %task_pre_queue_mutex = getelementptr inbounds %struct.epoll_loop, ptr %26, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr align 8 %.compoundliteral, i8 0, i64 48, i1 false)
  %mutex_handle = getelementptr inbounds %struct.aws_mutex, ptr %.compoundliteral, i32 0, i32 0
  %__kind = getelementptr inbounds %struct.__pthread_mutex_s, ptr %mutex_handle, i32 0, i32 4
  store i32 0, ptr %__kind, align 8, !tbaa !22
  %initialized = getelementptr inbounds %struct.aws_mutex, ptr %.compoundliteral, i32 0, i32 1
  store i8 1, ptr %initialized, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %task_pre_queue_mutex, ptr align 8 %.compoundliteral, i64 48, i1 false), !tbaa.struct !29
  %27 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %stop_task_ptr = getelementptr inbounds %struct.epoll_loop, ptr %27, i32 0, i32 10
  call void @aws_atomic_init_ptr(ptr noundef %stop_task_ptr, ptr noundef null)
  %call23 = call i32 @epoll_create(i32 noundef 100) #12
  %28 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %epoll_fd = getelementptr inbounds %struct.epoll_loop, ptr %28, i32 0, i32 11
  store i32 %call23, ptr %epoll_fd, align 8, !tbaa !32
  %29 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %epoll_fd24 = getelementptr inbounds %struct.epoll_loop, ptr %29, i32 0, i32 11
  %30 = load i32, ptr %epoll_fd24, align 8, !tbaa !32
  %cmp25 = icmp slt i32 %30, 0
  br i1 %cmp25, label %if.then26, label %if.end44

if.then26:                                        ; preds = %if.end22
  br label %do.body27

do.body27:                                        ; preds = %if.then26
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger28) #12
  %call29 = call ptr @aws_logger_get()
  store ptr %call29, ptr %logger28, align 8, !tbaa !4
  %31 = load ptr, ptr %logger28, align 8, !tbaa !4
  %cmp30 = icmp ne ptr %31, null
  br i1 %cmp30, label %land.lhs.true31, label %if.end40

land.lhs.true31:                                  ; preds = %do.body27
  %32 = load ptr, ptr %logger28, align 8, !tbaa !4
  %vtable32 = getelementptr inbounds %struct.aws_logger, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %vtable32, align 8, !tbaa !8
  %get_log_level33 = getelementptr inbounds %struct.aws_logger_vtable, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %get_log_level33, align 8, !tbaa !10
  %35 = load ptr, ptr %logger28, align 8, !tbaa !4
  %call34 = call i32 %34(ptr noundef %35, i32 noundef 1025)
  %cmp35 = icmp uge i32 %call34, 1
  br i1 %cmp35, label %if.then36, label %if.end40

if.then36:                                        ; preds = %land.lhs.true31
  %36 = load ptr, ptr %logger28, align 8, !tbaa !4
  %vtable37 = getelementptr inbounds %struct.aws_logger, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %vtable37, align 8, !tbaa !8
  %log38 = getelementptr inbounds %struct.aws_logger_vtable, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %log38, align 8, !tbaa !12
  %39 = load ptr, ptr %logger28, align 8, !tbaa !4
  %40 = load ptr, ptr %loop, align 8, !tbaa !4
  %call39 = call i32 (ptr, i32, i32, ptr, ...) %38(ptr noundef %39, i32 noundef 1, i32 noundef 1025, ptr noundef @.str.1, ptr noundef %40)
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %land.lhs.true31, %do.body27
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger28) #12
  br label %do.cond41

do.cond41:                                        ; preds = %if.end40
  br label %do.end42

do.end42:                                         ; preds = %do.cond41
  %call43 = call i32 @aws_raise_error(i32 noundef 46)
  br label %clean_up_epoll

if.end44:                                         ; preds = %if.end22
  %41 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %thread_created_on = getelementptr inbounds %struct.epoll_loop, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %alloc.addr, align 8, !tbaa !4
  %call45 = call i32 @aws_thread_init(ptr noundef %thread_created_on, ptr noundef %42)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end44
  br label %clean_up_epoll

if.end48:                                         ; preds = %if.end44
  br label %do.body49

do.body49:                                        ; preds = %if.end48
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger50) #12
  %call51 = call ptr @aws_logger_get()
  store ptr %call51, ptr %logger50, align 8, !tbaa !4
  %43 = load ptr, ptr %logger50, align 8, !tbaa !4
  %cmp52 = icmp ne ptr %43, null
  br i1 %cmp52, label %land.lhs.true53, label %if.end62

land.lhs.true53:                                  ; preds = %do.body49
  %44 = load ptr, ptr %logger50, align 8, !tbaa !4
  %vtable54 = getelementptr inbounds %struct.aws_logger, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %vtable54, align 8, !tbaa !8
  %get_log_level55 = getelementptr inbounds %struct.aws_logger_vtable, ptr %45, i32 0, i32 1
  %46 = load ptr, ptr %get_log_level55, align 8, !tbaa !10
  %47 = load ptr, ptr %logger50, align 8, !tbaa !4
  %call56 = call i32 %46(ptr noundef %47, i32 noundef 1025)
  %cmp57 = icmp uge i32 %call56, 4
  br i1 %cmp57, label %if.then58, label %if.end62

if.then58:                                        ; preds = %land.lhs.true53
  %48 = load ptr, ptr %logger50, align 8, !tbaa !4
  %vtable59 = getelementptr inbounds %struct.aws_logger, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %vtable59, align 8, !tbaa !8
  %log60 = getelementptr inbounds %struct.aws_logger_vtable, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %log60, align 8, !tbaa !12
  %51 = load ptr, ptr %logger50, align 8, !tbaa !4
  %52 = load ptr, ptr %loop, align 8, !tbaa !4
  %call61 = call i32 (ptr, i32, i32, ptr, ...) %50(ptr noundef %51, i32 noundef 4, i32 noundef 1025, ptr noundef @.str.2, ptr noundef %52)
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %land.lhs.true53, %do.body49
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger50) #12
  br label %do.cond63

do.cond63:                                        ; preds = %if.end62
  br label %do.end64

do.end64:                                         ; preds = %do.cond63
  %call65 = call i32 @eventfd(i32 noundef 0, i32 noundef 526336) #12
  store i32 %call65, ptr %fd, align 4, !tbaa !19
  %53 = load i32, ptr %fd, align 4, !tbaa !19
  %cmp66 = icmp slt i32 %53, 0
  br i1 %cmp66, label %if.then67, label %if.end85

if.then67:                                        ; preds = %do.end64
  br label %do.body68

do.body68:                                        ; preds = %if.then67
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger69) #12
  %call70 = call ptr @aws_logger_get()
  store ptr %call70, ptr %logger69, align 8, !tbaa !4
  %54 = load ptr, ptr %logger69, align 8, !tbaa !4
  %cmp71 = icmp ne ptr %54, null
  br i1 %cmp71, label %land.lhs.true72, label %if.end81

land.lhs.true72:                                  ; preds = %do.body68
  %55 = load ptr, ptr %logger69, align 8, !tbaa !4
  %vtable73 = getelementptr inbounds %struct.aws_logger, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %vtable73, align 8, !tbaa !8
  %get_log_level74 = getelementptr inbounds %struct.aws_logger_vtable, ptr %56, i32 0, i32 1
  %57 = load ptr, ptr %get_log_level74, align 8, !tbaa !10
  %58 = load ptr, ptr %logger69, align 8, !tbaa !4
  %call75 = call i32 %57(ptr noundef %58, i32 noundef 1025)
  %cmp76 = icmp uge i32 %call75, 1
  br i1 %cmp76, label %if.then77, label %if.end81

if.then77:                                        ; preds = %land.lhs.true72
  %59 = load ptr, ptr %logger69, align 8, !tbaa !4
  %vtable78 = getelementptr inbounds %struct.aws_logger, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %vtable78, align 8, !tbaa !8
  %log79 = getelementptr inbounds %struct.aws_logger_vtable, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %log79, align 8, !tbaa !12
  %62 = load ptr, ptr %logger69, align 8, !tbaa !4
  %63 = load ptr, ptr %loop, align 8, !tbaa !4
  %call80 = call i32 (ptr, i32, i32, ptr, ...) %61(ptr noundef %62, i32 noundef 1, i32 noundef 1025, ptr noundef @.str.3, ptr noundef %63)
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %land.lhs.true72, %do.body68
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger69) #12
  br label %do.cond82

do.cond82:                                        ; preds = %if.end81
  br label %do.end83

do.end83:                                         ; preds = %do.cond82
  %call84 = call i32 @aws_raise_error(i32 noundef 46)
  br label %clean_up_thread

if.end85:                                         ; preds = %do.end64
  br label %do.body86

do.body86:                                        ; preds = %if.end85
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger87) #12
  %call88 = call ptr @aws_logger_get()
  store ptr %call88, ptr %logger87, align 8, !tbaa !4
  %64 = load ptr, ptr %logger87, align 8, !tbaa !4
  %cmp89 = icmp ne ptr %64, null
  br i1 %cmp89, label %land.lhs.true90, label %if.end99

land.lhs.true90:                                  ; preds = %do.body86
  %65 = load ptr, ptr %logger87, align 8, !tbaa !4
  %vtable91 = getelementptr inbounds %struct.aws_logger, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %vtable91, align 8, !tbaa !8
  %get_log_level92 = getelementptr inbounds %struct.aws_logger_vtable, ptr %66, i32 0, i32 1
  %67 = load ptr, ptr %get_log_level92, align 8, !tbaa !10
  %68 = load ptr, ptr %logger87, align 8, !tbaa !4
  %call93 = call i32 %67(ptr noundef %68, i32 noundef 1025)
  %cmp94 = icmp uge i32 %call93, 6
  br i1 %cmp94, label %if.then95, label %if.end99

if.then95:                                        ; preds = %land.lhs.true90
  %69 = load ptr, ptr %logger87, align 8, !tbaa !4
  %vtable96 = getelementptr inbounds %struct.aws_logger, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %vtable96, align 8, !tbaa !8
  %log97 = getelementptr inbounds %struct.aws_logger_vtable, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %log97, align 8, !tbaa !12
  %72 = load ptr, ptr %logger87, align 8, !tbaa !4
  %73 = load ptr, ptr %loop, align 8, !tbaa !4
  %74 = load i32, ptr %fd, align 4, !tbaa !19
  %call98 = call i32 (ptr, i32, i32, ptr, ...) %71(ptr noundef %72, i32 noundef 6, i32 noundef 1025, ptr noundef @.str.4, ptr noundef %73, i32 noundef %74)
  br label %if.end99

if.end99:                                         ; preds = %if.then95, %land.lhs.true90, %do.body86
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger87) #12
  br label %do.cond100

do.cond100:                                       ; preds = %if.end99
  br label %do.end101

do.end101:                                        ; preds = %do.cond100
  %75 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %write_task_handle = getelementptr inbounds %struct.epoll_loop, ptr %75, i32 0, i32 6
  %data = getelementptr inbounds %struct.aws_io_handle, ptr %.compoundliteral102, i32 0, i32 0
  %76 = load i32, ptr %fd, align 4, !tbaa !19
  store i32 %76, ptr %data, align 8, !tbaa !21
  %additional_data = getelementptr inbounds %struct.aws_io_handle, ptr %.compoundliteral102, i32 0, i32 1
  store ptr null, ptr %additional_data, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %write_task_handle, ptr align 8 %.compoundliteral102, i64 16, i1 false), !tbaa.struct !47
  %77 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %read_task_handle = getelementptr inbounds %struct.epoll_loop, ptr %77, i32 0, i32 5
  %data104 = getelementptr inbounds %struct.aws_io_handle, ptr %.compoundliteral103, i32 0, i32 0
  %78 = load i32, ptr %fd, align 4, !tbaa !19
  store i32 %78, ptr %data104, align 8, !tbaa !21
  %additional_data105 = getelementptr inbounds %struct.aws_io_handle, ptr %.compoundliteral103, i32 0, i32 1
  store ptr null, ptr %additional_data105, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %read_task_handle, ptr align 8 %.compoundliteral103, i64 16, i1 false), !tbaa.struct !47
  %79 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %scheduler = getelementptr inbounds %struct.epoll_loop, ptr %79, i32 0, i32 0
  %80 = load ptr, ptr %alloc.addr, align 8, !tbaa !4
  %call106 = call i32 @aws_task_scheduler_init(ptr noundef %scheduler, ptr noundef %80)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.then108, label %if.end109

if.then108:                                       ; preds = %do.end101
  br label %clean_up_pipe

if.end109:                                        ; preds = %do.end101
  %81 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %should_continue = getelementptr inbounds %struct.epoll_loop, ptr %81, i32 0, i32 13
  store i8 0, ptr %should_continue, align 1, !tbaa !48
  %82 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %83 = load ptr, ptr %loop, align 8, !tbaa !4
  %impl_data = getelementptr inbounds %struct.aws_event_loop, ptr %83, i32 0, i32 8
  store ptr %82, ptr %impl_data, align 8, !tbaa !49
  %84 = load ptr, ptr %loop, align 8, !tbaa !4
  %vtable110 = getelementptr inbounds %struct.aws_event_loop, ptr %84, i32 0, i32 0
  store ptr @s_vtable, ptr %vtable110, align 8, !tbaa !52
  %85 = load ptr, ptr %loop, align 8, !tbaa !4
  store ptr %85, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

clean_up_pipe:                                    ; preds = %if.then108
  %86 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %write_task_handle111 = getelementptr inbounds %struct.epoll_loop, ptr %86, i32 0, i32 6
  %data112 = getelementptr inbounds %struct.aws_io_handle, ptr %write_task_handle111, i32 0, i32 0
  %87 = load i32, ptr %data112, align 8, !tbaa !21
  %call113 = call i32 @close(i32 noundef %87)
  %88 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %write_task_handle114 = getelementptr inbounds %struct.epoll_loop, ptr %88, i32 0, i32 6
  %data115 = getelementptr inbounds %struct.aws_io_handle, ptr %write_task_handle114, i32 0, i32 0
  store i32 -1, ptr %data115, align 8, !tbaa !21
  %89 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %read_task_handle116 = getelementptr inbounds %struct.epoll_loop, ptr %89, i32 0, i32 5
  %data117 = getelementptr inbounds %struct.aws_io_handle, ptr %read_task_handle116, i32 0, i32 0
  store i32 -1, ptr %data117, align 8, !tbaa !21
  br label %clean_up_thread

clean_up_thread:                                  ; preds = %clean_up_pipe, %do.end83
  %90 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %thread_created_on118 = getelementptr inbounds %struct.epoll_loop, ptr %90, i32 0, i32 1
  call void @aws_thread_clean_up(ptr noundef %thread_created_on118)
  br label %clean_up_epoll

clean_up_epoll:                                   ; preds = %clean_up_thread, %if.then47, %do.end42
  %91 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %epoll_fd119 = getelementptr inbounds %struct.epoll_loop, ptr %91, i32 0, i32 11
  %92 = load i32, ptr %epoll_fd119, align 8, !tbaa !32
  %cmp120 = icmp sge i32 %92, 0
  br i1 %cmp120, label %if.then121, label %if.end124

if.then121:                                       ; preds = %clean_up_epoll
  %93 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %epoll_fd122 = getelementptr inbounds %struct.epoll_loop, ptr %93, i32 0, i32 11
  %94 = load i32, ptr %epoll_fd122, align 8, !tbaa !32
  %call123 = call i32 @close(i32 noundef %94)
  br label %if.end124

if.end124:                                        ; preds = %if.then121, %clean_up_epoll
  %95 = load ptr, ptr %alloc.addr, align 8, !tbaa !4
  %96 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %95, ptr noundef %96)
  br label %cleanup_base_loop

cleanup_base_loop:                                ; preds = %if.end124, %if.then14
  %97 = load ptr, ptr %loop, align 8, !tbaa !4
  call void @aws_event_loop_clean_up_base(ptr noundef %97)
  br label %clean_up_loop

clean_up_loop:                                    ; preds = %cleanup_base_loop, %if.then10
  %98 = load ptr, ptr %alloc.addr, align 8, !tbaa !4
  %99 = load ptr, ptr %loop, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %98, ptr noundef %99)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %clean_up_loop, %if.end109, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %loop) #12
  %100 = load ptr, ptr %retval, align 8
  ret ptr %100
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @aws_mem_calloc(ptr noundef, i64 noundef, i64 noundef) #2

declare ptr @aws_logger_get() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @aws_event_loop_init_base(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare ptr @aws_default_thread_options() #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_atomic_init_ptr(ptr noundef %var, ptr noundef %p) #4 {
entry:
  %var.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.aws_atomic_var, ptr %1, i32 0, i32 0
  store volatile ptr %0, ptr %value, align 8, !tbaa !53
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_linked_list_init(ptr noundef %list) #4 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %tail = getelementptr inbounds %struct.aws_linked_list, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %head = getelementptr inbounds %struct.aws_linked_list, ptr %1, i32 0, i32 0
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %head, i32 0, i32 0
  store ptr %tail, ptr %next, align 8, !tbaa !54
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %head1 = getelementptr inbounds %struct.aws_linked_list, ptr %2, i32 0, i32 0
  %prev = getelementptr inbounds %struct.aws_linked_list_node, ptr %head1, i32 0, i32 1
  store ptr null, ptr %prev, align 8, !tbaa !55
  %3 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %head2 = getelementptr inbounds %struct.aws_linked_list, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %tail3 = getelementptr inbounds %struct.aws_linked_list, ptr %4, i32 0, i32 1
  %prev4 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail3, i32 0, i32 1
  store ptr %head2, ptr %prev4, align 8, !tbaa !56
  %5 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %tail5 = getelementptr inbounds %struct.aws_linked_list, ptr %5, i32 0, i32 1
  %next6 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail5, i32 0, i32 0
  store ptr null, ptr %next6, align 8, !tbaa !57
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @epoll_create(i32 noundef) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_raise_error(i32 noundef %err) #4 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4, !tbaa !19
  %0 = load i32, ptr %err.addr, align 4, !tbaa !19
  call void @aws_raise_error_private(i32 noundef %0)
  ret i32 -1
}

declare i32 @aws_thread_init(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @eventfd(i32 noundef, i32 noundef) #6

declare i32 @aws_task_scheduler_init(ptr noundef, ptr noundef) #2

declare i32 @close(i32 noundef) #2

declare void @aws_thread_clean_up(ptr noundef) #2

declare void @aws_mem_release(ptr noundef, ptr noundef) #2

declare void @aws_event_loop_clean_up_base(ptr noundef) #2

declare void @aws_raise_error_private(i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_destroy(ptr noundef %event_loop) #0 {
entry:
  %event_loop.addr = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %epoll_loop = alloca ptr, align 8
  %node = alloca ptr, align 8
  %task = alloca ptr, align 8
  store ptr %event_loop, ptr %event_loop.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #12
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %0 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %3(ptr noundef %4, i32 noundef 1025)
  %cmp2 = icmp uge i32 %call1, 4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vtable3, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %log, align 8, !tbaa !12
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %9 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %7(ptr noundef %8, i32 noundef 4, i32 noundef 1025, ptr noundef @.str.5, ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #12
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %epoll_loop) #12
  %10 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %impl_data = getelementptr inbounds %struct.aws_event_loop, ptr %10, i32 0, i32 8
  %11 = load ptr, ptr %impl_data, align 8, !tbaa !49
  store ptr %11, ptr %epoll_loop, align 8, !tbaa !4
  %12 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %call5 = call i32 @aws_event_loop_stop(ptr noundef %12)
  %13 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %call6 = call i32 @s_wait_for_stop_completion(ptr noundef %13)
  %call7 = call i64 @aws_thread_current_thread_id()
  %14 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %thread_joined_to = getelementptr inbounds %struct.epoll_loop, ptr %14, i32 0, i32 3
  store i64 %call7, ptr %thread_joined_to, align 8, !tbaa !58
  %15 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %running_thread_id = getelementptr inbounds %struct.epoll_loop, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %thread_joined_to8 = getelementptr inbounds %struct.epoll_loop, ptr %16, i32 0, i32 3
  call void @aws_atomic_store_ptr(ptr noundef %running_thread_id, ptr noundef %thread_joined_to8)
  %17 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %scheduler = getelementptr inbounds %struct.epoll_loop, ptr %17, i32 0, i32 0
  call void @aws_task_scheduler_clean_up(ptr noundef %scheduler)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %18 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %task_pre_queue = getelementptr inbounds %struct.epoll_loop, ptr %18, i32 0, i32 8
  %call9 = call zeroext i1 @aws_linked_list_empty(ptr noundef %task_pre_queue)
  %lnot = xor i1 %call9, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #12
  %19 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %task_pre_queue10 = getelementptr inbounds %struct.epoll_loop, ptr %19, i32 0, i32 8
  %call11 = call ptr @aws_linked_list_pop_front(ptr noundef %task_pre_queue10)
  store ptr %call11, ptr %node, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #12
  %20 = load ptr, ptr %node, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %20, i64 -24
  store ptr %add.ptr, ptr %task, align 8, !tbaa !4
  %21 = load ptr, ptr %task, align 8, !tbaa !4
  %fn = getelementptr inbounds %struct.aws_task, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %fn, align 8, !tbaa !59
  %23 = load ptr, ptr %task, align 8, !tbaa !4
  %24 = load ptr, ptr %task, align 8, !tbaa !4
  %arg = getelementptr inbounds %struct.aws_task, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %arg, align 8, !tbaa !60
  call void %22(ptr noundef %23, ptr noundef %25, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %thread_created_on = getelementptr inbounds %struct.epoll_loop, ptr %26, i32 0, i32 1
  call void @aws_thread_clean_up(ptr noundef %thread_created_on)
  %27 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %write_task_handle = getelementptr inbounds %struct.epoll_loop, ptr %27, i32 0, i32 6
  %data = getelementptr inbounds %struct.aws_io_handle, ptr %write_task_handle, i32 0, i32 0
  %28 = load i32, ptr %data, align 8, !tbaa !21
  %call12 = call i32 @close(i32 noundef %28)
  %29 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %write_task_handle13 = getelementptr inbounds %struct.epoll_loop, ptr %29, i32 0, i32 6
  %data14 = getelementptr inbounds %struct.aws_io_handle, ptr %write_task_handle13, i32 0, i32 0
  store i32 -1, ptr %data14, align 8, !tbaa !21
  %30 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %read_task_handle = getelementptr inbounds %struct.epoll_loop, ptr %30, i32 0, i32 5
  %data15 = getelementptr inbounds %struct.aws_io_handle, ptr %read_task_handle, i32 0, i32 0
  store i32 -1, ptr %data15, align 8, !tbaa !21
  %31 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %epoll_fd = getelementptr inbounds %struct.epoll_loop, ptr %31, i32 0, i32 11
  %32 = load i32, ptr %epoll_fd, align 8, !tbaa !32
  %call16 = call i32 @close(i32 noundef %32)
  %33 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %alloc = getelementptr inbounds %struct.aws_event_loop, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %alloc, align 8, !tbaa !61
  %35 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %34, ptr noundef %35)
  %36 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  call void @aws_event_loop_clean_up_base(ptr noundef %36)
  %37 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %alloc17 = getelementptr inbounds %struct.aws_event_loop, ptr %37, i32 0, i32 1
  %38 = load ptr, ptr %alloc17, align 8, !tbaa !61
  %39 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %38, ptr noundef %39)
  call void @llvm.lifetime.end.p0(i64 8, ptr %epoll_loop) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_run(ptr noundef %event_loop) #0 {
entry:
  %retval = alloca i32, align 4
  %event_loop.addr = alloca ptr, align 8
  %epoll_loop = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %logger8 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %event_loop, ptr %event_loop.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %epoll_loop) #12
  %0 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %impl_data = getelementptr inbounds %struct.aws_event_loop, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %impl_data, align 8, !tbaa !49
  store ptr %1, ptr %epoll_loop, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #12
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %5(ptr noundef %6, i32 noundef 1025)
  %cmp2 = icmp uge i32 %call1, 4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %vtable3, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %log, align 8, !tbaa !12
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %11 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %9(ptr noundef %10, i32 noundef 4, i32 noundef 1025, ptr noundef @.str.6, ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #12
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %should_continue = getelementptr inbounds %struct.epoll_loop, ptr %12, i32 0, i32 13
  store i8 1, ptr %should_continue, align 1, !tbaa !48
  call void @aws_thread_increment_unjoined_count()
  %13 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %thread_created_on = getelementptr inbounds %struct.epoll_loop, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %thread_options = getelementptr inbounds %struct.epoll_loop, ptr %15, i32 0, i32 2
  %call5 = call i32 @aws_thread_launch(ptr noundef %thread_created_on, ptr noundef @aws_event_loop_thread, ptr noundef %14, ptr noundef %thread_options)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then6, label %if.end24

if.then6:                                         ; preds = %do.end
  call void @aws_thread_decrement_unjoined_count()
  br label %do.body7

do.body7:                                         ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger8) #12
  %call9 = call ptr @aws_logger_get()
  store ptr %call9, ptr %logger8, align 8, !tbaa !4
  %16 = load ptr, ptr %logger8, align 8, !tbaa !4
  %cmp10 = icmp ne ptr %16, null
  br i1 %cmp10, label %land.lhs.true11, label %if.end20

land.lhs.true11:                                  ; preds = %do.body7
  %17 = load ptr, ptr %logger8, align 8, !tbaa !4
  %vtable12 = getelementptr inbounds %struct.aws_logger, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %vtable12, align 8, !tbaa !8
  %get_log_level13 = getelementptr inbounds %struct.aws_logger_vtable, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %get_log_level13, align 8, !tbaa !10
  %20 = load ptr, ptr %logger8, align 8, !tbaa !4
  %call14 = call i32 %19(ptr noundef %20, i32 noundef 1025)
  %cmp15 = icmp uge i32 %call14, 1
  br i1 %cmp15, label %if.then16, label %if.end20

if.then16:                                        ; preds = %land.lhs.true11
  %21 = load ptr, ptr %logger8, align 8, !tbaa !4
  %vtable17 = getelementptr inbounds %struct.aws_logger, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %vtable17, align 8, !tbaa !8
  %log18 = getelementptr inbounds %struct.aws_logger_vtable, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %log18, align 8, !tbaa !12
  %24 = load ptr, ptr %logger8, align 8, !tbaa !4
  %25 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %call19 = call i32 (ptr, i32, i32, ptr, ...) %23(ptr noundef %24, i32 noundef 1, i32 noundef 1025, ptr noundef @.str.7, ptr noundef %25)
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %land.lhs.true11, %do.body7
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger8) #12
  br label %do.cond21

do.cond21:                                        ; preds = %if.end20
  br label %do.end22

do.end22:                                         ; preds = %do.cond21
  %26 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %should_continue23 = getelementptr inbounds %struct.epoll_loop, ptr %26, i32 0, i32 13
  store i8 0, ptr %should_continue23, align 1, !tbaa !48
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %do.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end22
  call void @llvm.lifetime.end.p0(i64 8, ptr %epoll_loop) #12
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @s_stop(ptr noundef %event_loop) #0 {
entry:
  %retval = alloca i32, align 4
  %event_loop.addr = alloca ptr, align 8
  %epoll_loop = alloca ptr, align 8
  %expected_ptr = alloca ptr, align 8
  %update_succeeded = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %logger = alloca ptr, align 8
  store ptr %event_loop, ptr %event_loop.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %epoll_loop) #12
  %0 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %impl_data = getelementptr inbounds %struct.aws_event_loop, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %impl_data, align 8, !tbaa !49
  store ptr %1, ptr %epoll_loop, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %expected_ptr) #12
  store ptr null, ptr %expected_ptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %update_succeeded) #12
  %2 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %stop_task_ptr = getelementptr inbounds %struct.epoll_loop, ptr %2, i32 0, i32 10
  %3 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %stop_task = getelementptr inbounds %struct.epoll_loop, ptr %3, i32 0, i32 9
  %call = call zeroext i1 @aws_atomic_compare_exchange_ptr(ptr noundef %stop_task_ptr, ptr noundef %expected_ptr, ptr noundef %stop_task)
  %frombool = zext i1 %call to i8
  store i8 %frombool, ptr %update_succeeded, align 1, !tbaa !31
  %4 = load i8, ptr %update_succeeded, align 1, !tbaa !31, !range !62, !noundef !63
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #12
  %call1 = call ptr @aws_logger_get()
  store ptr %call1, ptr %logger, align 8, !tbaa !4
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %5, null
  br i1 %cmp, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %do.body
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %call2 = call i32 %8(ptr noundef %9, i32 noundef 1025)
  %cmp3 = icmp uge i32 %call2, 4
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable5 = getelementptr inbounds %struct.aws_logger, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %vtable5, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %log, align 8, !tbaa !12
  %13 = load ptr, ptr %logger, align 8, !tbaa !4
  %14 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %call6 = call i32 (ptr, i32, i32, ptr, ...) %12(ptr noundef %13, i32 noundef 4, i32 noundef 1025, ptr noundef @.str.22, ptr noundef %14)
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #12
  br label %do.cond

do.cond:                                          ; preds = %if.end7
  br label %do.end

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %stop_task8 = getelementptr inbounds %struct.epoll_loop, ptr %15, i32 0, i32 9
  %16 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  call void @aws_task_init(ptr noundef %stop_task8, ptr noundef @s_stop_task, ptr noundef %16, ptr noundef @.str.23)
  %17 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %18 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %stop_task9 = getelementptr inbounds %struct.epoll_loop, ptr %18, i32 0, i32 9
  call void @s_schedule_task_now(ptr noundef %17, ptr noundef %stop_task9)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %update_succeeded) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %expected_ptr) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %epoll_loop) #12
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @s_wait_for_stop_completion(ptr noundef %event_loop) #0 {
entry:
  %event_loop.addr = alloca ptr, align 8
  %epoll_loop = alloca ptr, align 8
  %result = alloca i32, align 4
  store ptr %event_loop, ptr %event_loop.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %epoll_loop) #12
  %0 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %impl_data = getelementptr inbounds %struct.aws_event_loop, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %impl_data, align 8, !tbaa !49
  store ptr %1, ptr %epoll_loop, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #12
  %2 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %thread_created_on = getelementptr inbounds %struct.epoll_loop, ptr %2, i32 0, i32 1
  %call = call i32 @aws_thread_join(ptr noundef %thread_created_on)
  store i32 %call, ptr %result, align 4, !tbaa !19
  call void @aws_thread_decrement_unjoined_count()
  %3 = load i32, ptr %result, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %epoll_loop) #12
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal void @s_schedule_task_now(ptr noundef %event_loop, ptr noundef %task) #0 {
entry:
  %event_loop.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  store ptr %event_loop, ptr %event_loop.addr, align 8, !tbaa !4
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @s_schedule_task_common(ptr noundef %0, ptr noundef %1, i64 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_schedule_task_future(ptr noundef %event_loop, ptr noundef %task, i64 noundef %run_at_nanos) #0 {
entry:
  %event_loop.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %run_at_nanos.addr = alloca i64, align 8
  store ptr %event_loop, ptr %event_loop.addr, align 8, !tbaa !4
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  store i64 %run_at_nanos, ptr %run_at_nanos.addr, align 8, !tbaa !17
  %0 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %2 = load i64, ptr %run_at_nanos.addr, align 8, !tbaa !17
  call void @s_schedule_task_common(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s_cancel_task(ptr noundef %event_loop, ptr noundef %task) #0 {
entry:
  %event_loop.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %epoll_loop = alloca ptr, align 8
  store ptr %event_loop, ptr %event_loop.addr, align 8, !tbaa !4
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #12
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %0 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %3(ptr noundef %4, i32 noundef 1025)
  %cmp2 = icmp uge i32 %call1, 6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vtable3, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %log, align 8, !tbaa !12
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %9 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %7(ptr noundef %8, i32 noundef 6, i32 noundef 1025, ptr noundef @.str.27, ptr noundef %9, ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #12
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %epoll_loop) #12
  %11 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %impl_data = getelementptr inbounds %struct.aws_event_loop, ptr %11, i32 0, i32 8
  %12 = load ptr, ptr %impl_data, align 8, !tbaa !49
  store ptr %12, ptr %epoll_loop, align 8, !tbaa !4
  %13 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %scheduler = getelementptr inbounds %struct.epoll_loop, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @aws_task_scheduler_cancel_task(ptr noundef %scheduler, ptr noundef %14)
  call void @llvm.lifetime.end.p0(i64 8, ptr %epoll_loop) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @s_subscribe_to_io_events(ptr noundef %event_loop, ptr noundef %handle, i32 noundef %events, ptr noundef %on_event, ptr noundef %user_data) #0 {
entry:
  %retval = alloca i32, align 4
  %event_loop.addr = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %events.addr = alloca i32, align 4
  %on_event.addr = alloca ptr, align 8
  %user_data.addr = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %epoll_event_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %epoll_loop = alloca ptr, align 8
  %event_mask = alloca i32, align 4
  %epoll_event = alloca %struct.epoll_event, align 1
  %logger28 = alloca ptr, align 8
  store ptr %event_loop, ptr %event_loop.addr, align 8, !tbaa !4
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !4
  store i32 %events, ptr %events.addr, align 4, !tbaa !19
  store ptr %on_event, ptr %on_event.addr, align 8, !tbaa !4
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #12
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %0 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %3(ptr noundef %4, i32 noundef 1025)
  %cmp2 = icmp uge i32 %call1, 6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vtable3, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %log, align 8, !tbaa !12
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %9 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %handle.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_io_handle, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %data, align 8, !tbaa !21
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %7(ptr noundef %8, i32 noundef 6, i32 noundef 1025, ptr noundef @.str.28, ptr noundef %9, i32 noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #12
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %epoll_event_data) #12
  %12 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %alloc = getelementptr inbounds %struct.aws_event_loop, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %alloc, align 8, !tbaa !61
  %call5 = call ptr @aws_mem_calloc(ptr noundef %13, i64 noundef 1, i64 noundef 104)
  store ptr %call5, ptr %epoll_event_data, align 8, !tbaa !4
  %14 = load ptr, ptr %epoll_event_data, align 8, !tbaa !4
  %15 = load ptr, ptr %handle.addr, align 8, !tbaa !4
  %additional_data = getelementptr inbounds %struct.aws_io_handle, ptr %15, i32 0, i32 1
  store ptr %14, ptr %additional_data, align 8, !tbaa !46
  %16 = load ptr, ptr %epoll_event_data, align 8, !tbaa !4
  %tobool = icmp ne ptr %16, null
  br i1 %tobool, label %if.end7, label %if.then6

if.then6:                                         ; preds = %do.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49

if.end7:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %epoll_loop) #12
  %17 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %impl_data = getelementptr inbounds %struct.aws_event_loop, ptr %17, i32 0, i32 8
  %18 = load ptr, ptr %impl_data, align 8, !tbaa !49
  store ptr %18, ptr %epoll_loop, align 8, !tbaa !4
  %19 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %alloc8 = getelementptr inbounds %struct.aws_event_loop, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %alloc8, align 8, !tbaa !61
  %21 = load ptr, ptr %epoll_event_data, align 8, !tbaa !4
  %alloc9 = getelementptr inbounds %struct.epoll_event_data, ptr %21, i32 0, i32 0
  store ptr %20, ptr %alloc9, align 8, !tbaa !64
  %22 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %epoll_event_data, align 8, !tbaa !4
  %user_data10 = getelementptr inbounds %struct.epoll_event_data, ptr %23, i32 0, i32 3
  store ptr %22, ptr %user_data10, align 8, !tbaa !66
  %24 = load ptr, ptr %handle.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %epoll_event_data, align 8, !tbaa !4
  %handle11 = getelementptr inbounds %struct.epoll_event_data, ptr %25, i32 0, i32 1
  store ptr %24, ptr %handle11, align 8, !tbaa !67
  %26 = load ptr, ptr %on_event.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %epoll_event_data, align 8, !tbaa !4
  %on_event12 = getelementptr inbounds %struct.epoll_event_data, ptr %27, i32 0, i32 2
  store ptr %26, ptr %on_event12, align 8, !tbaa !68
  %28 = load ptr, ptr %epoll_event_data, align 8, !tbaa !4
  %is_subscribed = getelementptr inbounds %struct.epoll_event_data, ptr %28, i32 0, i32 5
  store i8 1, ptr %is_subscribed, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 4, ptr %event_mask) #12
  store i32 -2147475432, ptr %event_mask, align 4, !tbaa !19
  %29 = load i32, ptr %events.addr, align 4, !tbaa !19
  %and = and i32 %29, 1
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end7
  %30 = load i32, ptr %event_mask, align 4, !tbaa !19
  %or = or i32 %30, 1
  store i32 %or, ptr %event_mask, align 4, !tbaa !19
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end7
  %31 = load i32, ptr %events.addr, align 4, !tbaa !19
  %and16 = and i32 %31, 2
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  %32 = load i32, ptr %event_mask, align 4, !tbaa !19
  %or19 = or i32 %32, 4
  store i32 %or19, ptr %event_mask, align 4, !tbaa !19
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15
  call void @llvm.lifetime.start.p0(i64 12, ptr %epoll_event) #12
  %events21 = getelementptr inbounds %struct.epoll_event, ptr %epoll_event, i32 0, i32 0
  %33 = load i32, ptr %event_mask, align 4, !tbaa !19
  store i32 %33, ptr %events21, align 1, !tbaa !70
  %data22 = getelementptr inbounds %struct.epoll_event, ptr %epoll_event, i32 0, i32 1
  %34 = load ptr, ptr %epoll_event_data, align 8, !tbaa !4
  store ptr %34, ptr %data22, align 1, !tbaa !21
  %35 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %epoll_fd = getelementptr inbounds %struct.epoll_loop, ptr %35, i32 0, i32 11
  %36 = load i32, ptr %epoll_fd, align 8, !tbaa !32
  %37 = load ptr, ptr %handle.addr, align 8, !tbaa !4
  %data23 = getelementptr inbounds %struct.aws_io_handle, ptr %37, i32 0, i32 0
  %38 = load i32, ptr %data23, align 8, !tbaa !21
  %call24 = call i32 @epoll_ctl(i32 noundef %36, i32 noundef 1, i32 noundef %38, ptr noundef %epoll_event) #12
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.end46

if.then26:                                        ; preds = %if.end20
  br label %do.body27

do.body27:                                        ; preds = %if.then26
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger28) #12
  %call29 = call ptr @aws_logger_get()
  store ptr %call29, ptr %logger28, align 8, !tbaa !4
  %39 = load ptr, ptr %logger28, align 8, !tbaa !4
  %cmp30 = icmp ne ptr %39, null
  br i1 %cmp30, label %land.lhs.true31, label %if.end41

land.lhs.true31:                                  ; preds = %do.body27
  %40 = load ptr, ptr %logger28, align 8, !tbaa !4
  %vtable32 = getelementptr inbounds %struct.aws_logger, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %vtable32, align 8, !tbaa !8
  %get_log_level33 = getelementptr inbounds %struct.aws_logger_vtable, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %get_log_level33, align 8, !tbaa !10
  %43 = load ptr, ptr %logger28, align 8, !tbaa !4
  %call34 = call i32 %42(ptr noundef %43, i32 noundef 1025)
  %cmp35 = icmp uge i32 %call34, 2
  br i1 %cmp35, label %if.then36, label %if.end41

if.then36:                                        ; preds = %land.lhs.true31
  %44 = load ptr, ptr %logger28, align 8, !tbaa !4
  %vtable37 = getelementptr inbounds %struct.aws_logger, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %vtable37, align 8, !tbaa !8
  %log38 = getelementptr inbounds %struct.aws_logger_vtable, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %log38, align 8, !tbaa !12
  %47 = load ptr, ptr %logger28, align 8, !tbaa !4
  %48 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %49 = load ptr, ptr %handle.addr, align 8, !tbaa !4
  %data39 = getelementptr inbounds %struct.aws_io_handle, ptr %49, i32 0, i32 0
  %50 = load i32, ptr %data39, align 8, !tbaa !21
  %call40 = call i32 (ptr, i32, i32, ptr, ...) %46(ptr noundef %47, i32 noundef 2, i32 noundef 1025, ptr noundef @.str.29, ptr noundef %48, i32 noundef %50)
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %land.lhs.true31, %do.body27
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger28) #12
  br label %do.cond

do.cond:                                          ; preds = %if.end41
  br label %do.end42

do.end42:                                         ; preds = %do.cond
  %51 = load ptr, ptr %handle.addr, align 8, !tbaa !4
  %additional_data43 = getelementptr inbounds %struct.aws_io_handle, ptr %51, i32 0, i32 1
  store ptr null, ptr %additional_data43, align 8, !tbaa !46
  %52 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %alloc44 = getelementptr inbounds %struct.aws_event_loop, ptr %52, i32 0, i32 1
  %53 = load ptr, ptr %alloc44, align 8, !tbaa !61
  %54 = load ptr, ptr %epoll_event_data, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %53, ptr noundef %54)
  %call45 = call i32 @aws_raise_error(i32 noundef 46)
  store i32 %call45, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end46:                                         ; preds = %if.end20
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %do.end42
  call void @llvm.lifetime.end.p0(i64 12, ptr %epoll_event) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %event_mask) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %epoll_loop) #12
  br label %cleanup49

cleanup49:                                        ; preds = %cleanup, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %epoll_event_data) #12
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal i32 @s_unsubscribe_from_io_events(ptr noundef %event_loop, ptr noundef %handle) #0 {
entry:
  %retval = alloca i32, align 4
  %event_loop.addr = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %epoll_loop = alloca ptr, align 8
  %additional_handle_data = alloca ptr, align 8
  %dummy_event = alloca %struct.epoll_event, align 1
  %logger11 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %event_loop, ptr %event_loop.addr, align 8, !tbaa !4
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #12
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %0 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %3(ptr noundef %4, i32 noundef 1025)
  %cmp2 = icmp uge i32 %call1, 6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vtable3, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %log, align 8, !tbaa !12
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %9 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %handle.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.aws_io_handle, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %data, align 8, !tbaa !21
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %7(ptr noundef %8, i32 noundef 6, i32 noundef 1025, ptr noundef @.str.30, ptr noundef %9, i32 noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #12
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %epoll_loop) #12
  %12 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %impl_data = getelementptr inbounds %struct.aws_event_loop, ptr %12, i32 0, i32 8
  %13 = load ptr, ptr %impl_data, align 8, !tbaa !49
  store ptr %13, ptr %epoll_loop, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %additional_handle_data) #12
  %14 = load ptr, ptr %handle.addr, align 8, !tbaa !4
  %additional_data = getelementptr inbounds %struct.aws_io_handle, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %additional_data, align 8, !tbaa !46
  store ptr %15, ptr %additional_handle_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 12, ptr %dummy_event) #12
  %16 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %epoll_fd = getelementptr inbounds %struct.epoll_loop, ptr %16, i32 0, i32 11
  %17 = load i32, ptr %epoll_fd, align 8, !tbaa !32
  %18 = load ptr, ptr %handle.addr, align 8, !tbaa !4
  %data5 = getelementptr inbounds %struct.aws_io_handle, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %data5, align 8, !tbaa !21
  %call6 = call i32 @epoll_ctl(i32 noundef %17, i32 noundef 2, i32 noundef %19, ptr noundef %dummy_event) #12
  %tobool = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool, true
  %lnot7 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot7 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool8 = icmp ne i64 %expval, 0
  br i1 %tobool8, label %if.then9, label %if.end29

if.then9:                                         ; preds = %do.end
  br label %do.body10

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger11) #12
  %call12 = call ptr @aws_logger_get()
  store ptr %call12, ptr %logger11, align 8, !tbaa !4
  %20 = load ptr, ptr %logger11, align 8, !tbaa !4
  %cmp13 = icmp ne ptr %20, null
  br i1 %cmp13, label %land.lhs.true15, label %if.end26

land.lhs.true15:                                  ; preds = %do.body10
  %21 = load ptr, ptr %logger11, align 8, !tbaa !4
  %vtable16 = getelementptr inbounds %struct.aws_logger, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %vtable16, align 8, !tbaa !8
  %get_log_level17 = getelementptr inbounds %struct.aws_logger_vtable, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %get_log_level17, align 8, !tbaa !10
  %24 = load ptr, ptr %logger11, align 8, !tbaa !4
  %call18 = call i32 %23(ptr noundef %24, i32 noundef 1025)
  %cmp19 = icmp uge i32 %call18, 2
  br i1 %cmp19, label %if.then21, label %if.end26

if.then21:                                        ; preds = %land.lhs.true15
  %25 = load ptr, ptr %logger11, align 8, !tbaa !4
  %vtable22 = getelementptr inbounds %struct.aws_logger, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %vtable22, align 8, !tbaa !8
  %log23 = getelementptr inbounds %struct.aws_logger_vtable, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %log23, align 8, !tbaa !12
  %28 = load ptr, ptr %logger11, align 8, !tbaa !4
  %29 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %30 = load ptr, ptr %handle.addr, align 8, !tbaa !4
  %data24 = getelementptr inbounds %struct.aws_io_handle, ptr %30, i32 0, i32 0
  %31 = load i32, ptr %data24, align 8, !tbaa !21
  %call25 = call i32 (ptr, i32, i32, ptr, ...) %27(ptr noundef %28, i32 noundef 2, i32 noundef 1025, ptr noundef @.str.31, ptr noundef %29, i32 noundef %31)
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %land.lhs.true15, %do.body10
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger11) #12
  br label %do.cond

do.cond:                                          ; preds = %if.end26
  br label %do.end27

do.end27:                                         ; preds = %do.cond
  %call28 = call i32 @aws_raise_error(i32 noundef 46)
  store i32 %call28, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %do.end
  %32 = load ptr, ptr %additional_handle_data, align 8, !tbaa !4
  %is_subscribed = getelementptr inbounds %struct.epoll_event_data, ptr %32, i32 0, i32 5
  store i8 0, ptr %is_subscribed, align 8, !tbaa !69
  %33 = load ptr, ptr %additional_handle_data, align 8, !tbaa !4
  %cleanup_task = getelementptr inbounds %struct.epoll_event_data, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %additional_handle_data, align 8, !tbaa !4
  call void @aws_task_init(ptr noundef %cleanup_task, ptr noundef @s_unsubscribe_cleanup_task, ptr noundef %34, ptr noundef @.str.32)
  %35 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %36 = load ptr, ptr %additional_handle_data, align 8, !tbaa !4
  %cleanup_task30 = getelementptr inbounds %struct.epoll_event_data, ptr %36, i32 0, i32 4
  call void @s_schedule_task_now(ptr noundef %35, ptr noundef %cleanup_task30)
  %37 = load ptr, ptr %handle.addr, align 8, !tbaa !4
  %additional_data31 = getelementptr inbounds %struct.aws_io_handle, ptr %37, i32 0, i32 1
  store ptr null, ptr %additional_data31, align 8, !tbaa !46
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end27
  call void @llvm.lifetime.end.p0(i64 12, ptr %dummy_event) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %additional_handle_data) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %epoll_loop) #12
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal void @s_free_io_event_resources(ptr noundef %user_data) #0 {
entry:
  %user_data.addr = alloca ptr, align 8
  %event_data = alloca ptr, align 8
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %event_data) #12
  %0 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  store ptr %0, ptr %event_data, align 8, !tbaa !4
  %1 = load ptr, ptr %event_data, align 8, !tbaa !4
  %alloc = getelementptr inbounds %struct.epoll_event_data, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %alloc, align 8, !tbaa !64
  %3 = load ptr, ptr %event_data, align 8, !tbaa !4
  call void @aws_mem_release(ptr noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %event_data) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @s_is_on_callers_thread(ptr noundef %event_loop) #0 {
entry:
  %event_loop.addr = alloca ptr, align 8
  %epoll_loop = alloca ptr, align 8
  %thread_id = alloca ptr, align 8
  store ptr %event_loop, ptr %event_loop.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %epoll_loop) #12
  %0 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %impl_data = getelementptr inbounds %struct.aws_event_loop, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %impl_data, align 8, !tbaa !49
  store ptr %1, ptr %epoll_loop, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %thread_id) #12
  %2 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %running_thread_id = getelementptr inbounds %struct.epoll_loop, ptr %2, i32 0, i32 4
  %call = call ptr @aws_atomic_load_ptr(ptr noundef %running_thread_id)
  store ptr %call, ptr %thread_id, align 8, !tbaa !4
  %3 = load ptr, ptr %thread_id, align 8, !tbaa !4
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load ptr, ptr %thread_id, align 8, !tbaa !4
  %5 = load i64, ptr %4, align 8, !tbaa !17
  %call1 = call i64 @aws_thread_current_thread_id()
  %call2 = call zeroext i1 @aws_thread_thread_id_equal(i64 noundef %5, i64 noundef %call1)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %call2, %land.rhs ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %thread_id) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %epoll_loop) #12
  ret i1 %6
}

declare i32 @aws_event_loop_stop(ptr noundef) #2

declare i64 @aws_thread_current_thread_id() #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_atomic_store_ptr(ptr noundef %var, ptr noundef %p) #4 {
entry:
  %var.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %p.addr, align 8, !tbaa !4
  call void @aws_atomic_store_ptr_explicit(ptr noundef %0, ptr noundef %1, i32 noundef 5)
  ret void
}

declare void @aws_task_scheduler_clean_up(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @aws_linked_list_empty(ptr noundef %list) #4 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %head = getelementptr inbounds %struct.aws_linked_list, ptr %0, i32 0, i32 0
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %head, i32 0, i32 0
  %1 = load ptr, ptr %next, align 8, !tbaa !54
  %2 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %tail = getelementptr inbounds %struct.aws_linked_list, ptr %2, i32 0, i32 1
  %cmp = icmp eq ptr %1, %tail
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @aws_linked_list_pop_front(ptr noundef %list) #4 {
entry:
  %list.addr = alloca ptr, align 8
  %front = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %front) #12
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %call = call ptr @aws_linked_list_front(ptr noundef %0)
  store ptr %call, ptr %front, align 8, !tbaa !4
  %1 = load ptr, ptr %front, align 8, !tbaa !4
  call void @aws_linked_list_remove(ptr noundef %1)
  %2 = load ptr, ptr %front, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %front) #12
  ret ptr %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_atomic_store_ptr_explicit(ptr noundef %var, ptr noundef %p, i32 noundef %memory_order) #4 {
entry:
  %var.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %memory_order.addr = alloca i32, align 4
  %.atomictmp = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store i32 %memory_order, ptr %memory_order.addr, align 4, !tbaa !21
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.aws_atomic_var, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %memory_order.addr, align 4, !tbaa !21
  %call = call i32 @aws_atomic_priv_xlate_order(i32 noundef %1)
  %2 = load ptr, ptr %p.addr, align 8, !tbaa !4
  store ptr %2, ptr %.atomictmp, align 8, !tbaa !4
  switch i32 %call, label %monotonic [
    i32 3, label %release
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  %3 = load i64, ptr %.atomictmp, align 8
  store atomic volatile i64 %3, ptr %value monotonic, align 8
  br label %atomic.continue

release:                                          ; preds = %entry
  %4 = load i64, ptr %.atomictmp, align 8
  store atomic volatile i64 %4, ptr %value release, align 8
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  %5 = load i64, ptr %.atomictmp, align 8
  store atomic volatile i64 %5, ptr %value seq_cst, align 8
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %release, %monotonic
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @aws_atomic_priv_xlate_order(i32 noundef %order) #4 {
entry:
  %retval = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %order, ptr %order.addr, align 4, !tbaa !21
  %0 = load i32, ptr %order.addr, align 4, !tbaa !21
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 2, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 3, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  store i32 4, ptr %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  store i32 5, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  call void @abort() #13
  unreachable

return:                                           ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

; Function Attrs: noreturn nounwind
declare void @abort() #7

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @aws_linked_list_front(ptr noundef %list) #4 {
entry:
  %list.addr = alloca ptr, align 8
  %rval = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %rval) #12
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %head = getelementptr inbounds %struct.aws_linked_list, ptr %0, i32 0, i32 0
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %head, i32 0, i32 0
  %1 = load ptr, ptr %next, align 8, !tbaa !54
  store ptr %1, ptr %rval, align 8, !tbaa !4
  %2 = load ptr, ptr %rval, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rval) #12
  ret ptr %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_linked_list_remove(ptr noundef %node) #4 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %next, align 8, !tbaa !72
  %2 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %prev = getelementptr inbounds %struct.aws_linked_list_node, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %prev, align 8, !tbaa !73
  %next1 = getelementptr inbounds %struct.aws_linked_list_node, ptr %3, i32 0, i32 0
  store ptr %1, ptr %next1, align 8, !tbaa !72
  %4 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %prev2 = getelementptr inbounds %struct.aws_linked_list_node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %prev2, align 8, !tbaa !73
  %6 = load ptr, ptr %node.addr, align 8, !tbaa !4
  %next3 = getelementptr inbounds %struct.aws_linked_list_node, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %next3, align 8, !tbaa !72
  %prev4 = getelementptr inbounds %struct.aws_linked_list_node, ptr %7, i32 0, i32 1
  store ptr %5, ptr %prev4, align 8, !tbaa !73
  %8 = load ptr, ptr %node.addr, align 8, !tbaa !4
  call void @aws_linked_list_node_reset(ptr noundef %8)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_linked_list_node_reset(ptr noundef %node) #4 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %node.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 16, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

declare void @aws_thread_increment_unjoined_count() #2

declare i32 @aws_thread_launch(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @aws_event_loop_thread(ptr noundef %args) #0 {
entry:
  %args.addr = alloca ptr, align 8
  %event_loop = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %epoll_loop = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %timeout = alloca i32, align 4
  %events = alloca [100 x %struct.epoll_event], align 16
  %logger10 = alloca ptr, align 8
  %logger27 = alloca ptr, align 8
  %event_count = alloca i32, align 4
  %logger44 = alloca ptr, align 8
  %i = alloca i32, align 4
  %event_data = alloca ptr, align 8
  %event_mask = alloca i32, align 4
  %logger101 = alloca ptr, align 8
  %now_ns = alloca i64, align 8
  %logger121 = alloca ptr, align 8
  %use_default_timeout = alloca i8, align 1
  %next_run_time_ns = alloca i64, align 8
  %logger148 = alloca ptr, align 8
  %timeout_ns = alloca i64, align 8
  %timeout_ms64 = alloca i64, align 8
  %logger171 = alloca ptr, align 8
  %logger190 = alloca ptr, align 8
  store ptr %args, ptr %args.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %event_loop) #12
  %0 = load ptr, ptr %args.addr, align 8, !tbaa !4
  store ptr %0, ptr %event_loop, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #12
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %1 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %4(ptr noundef %5, i32 noundef 1025)
  %cmp2 = icmp uge i32 %call1, 4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %vtable3, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %log, align 8, !tbaa !12
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %10 = load ptr, ptr %event_loop, align 8, !tbaa !4
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %8(ptr noundef %9, i32 noundef 4, i32 noundef 1025, ptr noundef @.str.8, ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #12
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %epoll_loop) #12
  %11 = load ptr, ptr %event_loop, align 8, !tbaa !4
  %impl_data = getelementptr inbounds %struct.aws_event_loop, ptr %11, i32 0, i32 8
  %12 = load ptr, ptr %impl_data, align 8, !tbaa !49
  store ptr %12, ptr %epoll_loop, align 8, !tbaa !4
  %13 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %running_thread_id = getelementptr inbounds %struct.epoll_loop, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %thread_created_on = getelementptr inbounds %struct.epoll_loop, ptr %14, i32 0, i32 1
  %thread_id = getelementptr inbounds %struct.aws_thread, ptr %thread_created_on, i32 0, i32 2
  call void @aws_atomic_store_ptr(ptr noundef %running_thread_id, ptr noundef %thread_id)
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #12
  %15 = load ptr, ptr %event_loop, align 8, !tbaa !4
  %16 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %read_task_handle = getelementptr inbounds %struct.epoll_loop, ptr %16, i32 0, i32 5
  %call5 = call i32 @s_subscribe_to_io_events(ptr noundef %15, ptr noundef %read_task_handle, i32 noundef 1, ptr noundef @s_on_tasks_to_schedule, ptr noundef null)
  store i32 %call5, ptr %err, align 4, !tbaa !19
  %17 = load i32, ptr %err, align 4, !tbaa !19
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then6, label %if.end7

if.then6:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %call8 = call i32 @aws_thread_current_at_exit(ptr noundef @s_aws_epoll_cleanup_aws_lc_thread_local_state, ptr noundef null)
  call void @llvm.lifetime.start.p0(i64 4, ptr %timeout) #12
  store i32 100000, ptr %timeout, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 1200, ptr %events) #12
  br label %do.body9

do.body9:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger10) #12
  %call11 = call ptr @aws_logger_get()
  store ptr %call11, ptr %logger10, align 8, !tbaa !4
  %18 = load ptr, ptr %logger10, align 8, !tbaa !4
  %cmp12 = icmp ne ptr %18, null
  br i1 %cmp12, label %land.lhs.true13, label %if.end22

land.lhs.true13:                                  ; preds = %do.body9
  %19 = load ptr, ptr %logger10, align 8, !tbaa !4
  %vtable14 = getelementptr inbounds %struct.aws_logger, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %vtable14, align 8, !tbaa !8
  %get_log_level15 = getelementptr inbounds %struct.aws_logger_vtable, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %get_log_level15, align 8, !tbaa !10
  %22 = load ptr, ptr %logger10, align 8, !tbaa !4
  %call16 = call i32 %21(ptr noundef %22, i32 noundef 1025)
  %cmp17 = icmp uge i32 %call16, 4
  br i1 %cmp17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %land.lhs.true13
  %23 = load ptr, ptr %logger10, align 8, !tbaa !4
  %vtable19 = getelementptr inbounds %struct.aws_logger, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %vtable19, align 8, !tbaa !8
  %log20 = getelementptr inbounds %struct.aws_logger_vtable, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %log20, align 8, !tbaa !12
  %26 = load ptr, ptr %logger10, align 8, !tbaa !4
  %27 = load ptr, ptr %event_loop, align 8, !tbaa !4
  %28 = load i32, ptr %timeout, align 4, !tbaa !19
  %call21 = call i32 (ptr, i32, i32, ptr, ...) %25(ptr noundef %26, i32 noundef 4, i32 noundef 1025, ptr noundef @.str.9, ptr noundef %27, i32 noundef %28, i32 noundef 100)
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %land.lhs.true13, %do.body9
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger10) #12
  br label %do.cond23

do.cond23:                                        ; preds = %if.end22
  br label %do.end24

do.end24:                                         ; preds = %do.cond23
  br label %while.cond

while.cond:                                       ; preds = %if.end188, %do.end24
  %29 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %should_continue = getelementptr inbounds %struct.epoll_loop, ptr %29, i32 0, i32 13
  %30 = load i8, ptr %should_continue, align 1, !tbaa !48, !range !62, !noundef !63
  %tobool25 = trunc i8 %30 to i1
  br i1 %tobool25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body26

do.body26:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger27) #12
  %call28 = call ptr @aws_logger_get()
  store ptr %call28, ptr %logger27, align 8, !tbaa !4
  %31 = load ptr, ptr %logger27, align 8, !tbaa !4
  %cmp29 = icmp ne ptr %31, null
  br i1 %cmp29, label %land.lhs.true30, label %if.end39

land.lhs.true30:                                  ; preds = %do.body26
  %32 = load ptr, ptr %logger27, align 8, !tbaa !4
  %vtable31 = getelementptr inbounds %struct.aws_logger, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %vtable31, align 8, !tbaa !8
  %get_log_level32 = getelementptr inbounds %struct.aws_logger_vtable, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %get_log_level32, align 8, !tbaa !10
  %35 = load ptr, ptr %logger27, align 8, !tbaa !4
  %call33 = call i32 %34(ptr noundef %35, i32 noundef 1025)
  %cmp34 = icmp uge i32 %call33, 6
  br i1 %cmp34, label %if.then35, label %if.end39

if.then35:                                        ; preds = %land.lhs.true30
  %36 = load ptr, ptr %logger27, align 8, !tbaa !4
  %vtable36 = getelementptr inbounds %struct.aws_logger, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %vtable36, align 8, !tbaa !8
  %log37 = getelementptr inbounds %struct.aws_logger_vtable, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %log37, align 8, !tbaa !12
  %39 = load ptr, ptr %logger27, align 8, !tbaa !4
  %40 = load ptr, ptr %event_loop, align 8, !tbaa !4
  %41 = load i32, ptr %timeout, align 4, !tbaa !19
  %call38 = call i32 (ptr, i32, i32, ptr, ...) %38(ptr noundef %39, i32 noundef 6, i32 noundef 1025, ptr noundef @.str.10, ptr noundef %40, i32 noundef %41)
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %land.lhs.true30, %do.body26
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger27) #12
  br label %do.cond40

do.cond40:                                        ; preds = %if.end39
  br label %do.end41

do.end41:                                         ; preds = %do.cond40
  call void @llvm.lifetime.start.p0(i64 4, ptr %event_count) #12
  %42 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %epoll_fd = getelementptr inbounds %struct.epoll_loop, ptr %42, i32 0, i32 11
  %43 = load i32, ptr %epoll_fd, align 8, !tbaa !32
  %arraydecay = getelementptr inbounds [100 x %struct.epoll_event], ptr %events, i64 0, i64 0
  %44 = load i32, ptr %timeout, align 4, !tbaa !19
  %call42 = call i32 @aws_event_loop_listen_for_io_events(i32 noundef %43, ptr noundef %arraydecay, i32 noundef %44)
  store i32 %call42, ptr %event_count, align 4, !tbaa !19
  %45 = load ptr, ptr %event_loop, align 8, !tbaa !4
  call void @aws_event_loop_register_tick_start(ptr noundef %45)
  br label %do.body43

do.body43:                                        ; preds = %do.end41
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger44) #12
  %call45 = call ptr @aws_logger_get()
  store ptr %call45, ptr %logger44, align 8, !tbaa !4
  %46 = load ptr, ptr %logger44, align 8, !tbaa !4
  %cmp46 = icmp ne ptr %46, null
  br i1 %cmp46, label %land.lhs.true47, label %if.end56

land.lhs.true47:                                  ; preds = %do.body43
  %47 = load ptr, ptr %logger44, align 8, !tbaa !4
  %vtable48 = getelementptr inbounds %struct.aws_logger, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %vtable48, align 8, !tbaa !8
  %get_log_level49 = getelementptr inbounds %struct.aws_logger_vtable, ptr %48, i32 0, i32 1
  %49 = load ptr, ptr %get_log_level49, align 8, !tbaa !10
  %50 = load ptr, ptr %logger44, align 8, !tbaa !4
  %call50 = call i32 %49(ptr noundef %50, i32 noundef 1025)
  %cmp51 = icmp uge i32 %call50, 6
  br i1 %cmp51, label %if.then52, label %if.end56

if.then52:                                        ; preds = %land.lhs.true47
  %51 = load ptr, ptr %logger44, align 8, !tbaa !4
  %vtable53 = getelementptr inbounds %struct.aws_logger, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %vtable53, align 8, !tbaa !8
  %log54 = getelementptr inbounds %struct.aws_logger_vtable, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %log54, align 8, !tbaa !12
  %54 = load ptr, ptr %logger44, align 8, !tbaa !4
  %55 = load ptr, ptr %event_loop, align 8, !tbaa !4
  %56 = load i32, ptr %event_count, align 4, !tbaa !19
  %call55 = call i32 (ptr, i32, i32, ptr, ...) %53(ptr noundef %54, i32 noundef 6, i32 noundef 1025, ptr noundef @.str.11, ptr noundef %55, i32 noundef %56)
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %land.lhs.true47, %do.body43
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger44) #12
  br label %do.cond57

do.cond57:                                        ; preds = %if.end56
  br label %do.end58

do.end58:                                         ; preds = %do.cond57
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12
  store i32 0, ptr %i, align 4, !tbaa !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end58
  %57 = load i32, ptr %i, align 4, !tbaa !19
  %58 = load i32, ptr %event_count, align 4, !tbaa !19
  %cmp59 = icmp slt i32 %57, %58
  br i1 %cmp59, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 12, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %event_data) #12
  %59 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom = sext i32 %59 to i64
  %arrayidx = getelementptr inbounds [100 x %struct.epoll_event], ptr %events, i64 0, i64 %idxprom
  %data = getelementptr inbounds %struct.epoll_event, ptr %arrayidx, i32 0, i32 1
  %60 = load ptr, ptr %data, align 4, !tbaa !21
  store ptr %60, ptr %event_data, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %event_mask) #12
  store i32 0, ptr %event_mask, align 4, !tbaa !19
  %61 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom60 = sext i32 %61 to i64
  %arrayidx61 = getelementptr inbounds [100 x %struct.epoll_event], ptr %events, i64 0, i64 %idxprom60
  %events62 = getelementptr inbounds %struct.epoll_event, ptr %arrayidx61, i32 0, i32 0
  %62 = load i32, ptr %events62, align 4, !tbaa !70
  %and = and i32 %62, 1
  %tobool63 = icmp ne i32 %and, 0
  br i1 %tobool63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %for.body
  %63 = load i32, ptr %event_mask, align 4, !tbaa !19
  %or = or i32 %63, 1
  store i32 %or, ptr %event_mask, align 4, !tbaa !19
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %for.body
  %64 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom66 = sext i32 %64 to i64
  %arrayidx67 = getelementptr inbounds [100 x %struct.epoll_event], ptr %events, i64 0, i64 %idxprom66
  %events68 = getelementptr inbounds %struct.epoll_event, ptr %arrayidx67, i32 0, i32 0
  %65 = load i32, ptr %events68, align 4, !tbaa !70
  %and69 = and i32 %65, 4
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.end65
  %66 = load i32, ptr %event_mask, align 4, !tbaa !19
  %or72 = or i32 %66, 2
  store i32 %or72, ptr %event_mask, align 4, !tbaa !19
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end65
  %67 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom74 = sext i32 %67 to i64
  %arrayidx75 = getelementptr inbounds [100 x %struct.epoll_event], ptr %events, i64 0, i64 %idxprom74
  %events76 = getelementptr inbounds %struct.epoll_event, ptr %arrayidx75, i32 0, i32 0
  %68 = load i32, ptr %events76, align 4, !tbaa !70
  %and77 = and i32 %68, 8192
  %tobool78 = icmp ne i32 %and77, 0
  br i1 %tobool78, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.end73
  %69 = load i32, ptr %event_mask, align 4, !tbaa !19
  %or80 = or i32 %69, 4
  store i32 %or80, ptr %event_mask, align 4, !tbaa !19
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end73
  %70 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom82 = sext i32 %70 to i64
  %arrayidx83 = getelementptr inbounds [100 x %struct.epoll_event], ptr %events, i64 0, i64 %idxprom82
  %events84 = getelementptr inbounds %struct.epoll_event, ptr %arrayidx83, i32 0, i32 0
  %71 = load i32, ptr %events84, align 4, !tbaa !70
  %and85 = and i32 %71, 16
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.then87, label %if.end89

if.then87:                                        ; preds = %if.end81
  %72 = load i32, ptr %event_mask, align 4, !tbaa !19
  %or88 = or i32 %72, 8
  store i32 %or88, ptr %event_mask, align 4, !tbaa !19
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.end81
  %73 = load i32, ptr %i, align 4, !tbaa !19
  %idxprom90 = sext i32 %73 to i64
  %arrayidx91 = getelementptr inbounds [100 x %struct.epoll_event], ptr %events, i64 0, i64 %idxprom90
  %events92 = getelementptr inbounds %struct.epoll_event, ptr %arrayidx91, i32 0, i32 0
  %74 = load i32, ptr %events92, align 4, !tbaa !70
  %and93 = and i32 %74, 8
  %tobool94 = icmp ne i32 %and93, 0
  br i1 %tobool94, label %if.then95, label %if.end97

if.then95:                                        ; preds = %if.end89
  %75 = load i32, ptr %event_mask, align 4, !tbaa !19
  %or96 = or i32 %75, 16
  store i32 %or96, ptr %event_mask, align 4, !tbaa !19
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.end89
  %76 = load ptr, ptr %event_data, align 8, !tbaa !4
  %is_subscribed = getelementptr inbounds %struct.epoll_event_data, ptr %76, i32 0, i32 5
  %77 = load i8, ptr %is_subscribed, align 8, !tbaa !69, !range !62, !noundef !63
  %tobool98 = trunc i8 %77 to i1
  br i1 %tobool98, label %if.then99, label %if.end118

if.then99:                                        ; preds = %if.end97
  br label %do.body100

do.body100:                                       ; preds = %if.then99
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger101) #12
  %call102 = call ptr @aws_logger_get()
  store ptr %call102, ptr %logger101, align 8, !tbaa !4
  %78 = load ptr, ptr %logger101, align 8, !tbaa !4
  %cmp103 = icmp ne ptr %78, null
  br i1 %cmp103, label %land.lhs.true104, label %if.end114

land.lhs.true104:                                 ; preds = %do.body100
  %79 = load ptr, ptr %logger101, align 8, !tbaa !4
  %vtable105 = getelementptr inbounds %struct.aws_logger, ptr %79, i32 0, i32 0
  %80 = load ptr, ptr %vtable105, align 8, !tbaa !8
  %get_log_level106 = getelementptr inbounds %struct.aws_logger_vtable, ptr %80, i32 0, i32 1
  %81 = load ptr, ptr %get_log_level106, align 8, !tbaa !10
  %82 = load ptr, ptr %logger101, align 8, !tbaa !4
  %call107 = call i32 %81(ptr noundef %82, i32 noundef 1025)
  %cmp108 = icmp uge i32 %call107, 6
  br i1 %cmp108, label %if.then109, label %if.end114

if.then109:                                       ; preds = %land.lhs.true104
  %83 = load ptr, ptr %logger101, align 8, !tbaa !4
  %vtable110 = getelementptr inbounds %struct.aws_logger, ptr %83, i32 0, i32 0
  %84 = load ptr, ptr %vtable110, align 8, !tbaa !8
  %log111 = getelementptr inbounds %struct.aws_logger_vtable, ptr %84, i32 0, i32 0
  %85 = load ptr, ptr %log111, align 8, !tbaa !12
  %86 = load ptr, ptr %logger101, align 8, !tbaa !4
  %87 = load ptr, ptr %event_loop, align 8, !tbaa !4
  %88 = load ptr, ptr %event_data, align 8, !tbaa !4
  %handle = getelementptr inbounds %struct.epoll_event_data, ptr %88, i32 0, i32 1
  %89 = load ptr, ptr %handle, align 8, !tbaa !67
  %data112 = getelementptr inbounds %struct.aws_io_handle, ptr %89, i32 0, i32 0
  %90 = load i32, ptr %data112, align 8, !tbaa !21
  %call113 = call i32 (ptr, i32, i32, ptr, ...) %85(ptr noundef %86, i32 noundef 6, i32 noundef 1025, ptr noundef @.str.12, ptr noundef %87, i32 noundef %90)
  br label %if.end114

if.end114:                                        ; preds = %if.then109, %land.lhs.true104, %do.body100
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger101) #12
  br label %do.cond115

do.cond115:                                       ; preds = %if.end114
  br label %do.end116

do.end116:                                        ; preds = %do.cond115
  %91 = load ptr, ptr %event_data, align 8, !tbaa !4
  %on_event = getelementptr inbounds %struct.epoll_event_data, ptr %91, i32 0, i32 2
  %92 = load ptr, ptr %on_event, align 8, !tbaa !68
  %93 = load ptr, ptr %event_loop, align 8, !tbaa !4
  %94 = load ptr, ptr %event_data, align 8, !tbaa !4
  %handle117 = getelementptr inbounds %struct.epoll_event_data, ptr %94, i32 0, i32 1
  %95 = load ptr, ptr %handle117, align 8, !tbaa !67
  %96 = load i32, ptr %event_mask, align 4, !tbaa !19
  %97 = load ptr, ptr %event_data, align 8, !tbaa !4
  %user_data = getelementptr inbounds %struct.epoll_event_data, ptr %97, i32 0, i32 3
  %98 = load ptr, ptr %user_data, align 8, !tbaa !66
  call void %92(ptr noundef %93, ptr noundef %95, i32 noundef %96, ptr noundef %98)
  br label %if.end118

if.end118:                                        ; preds = %do.end116, %if.end97
  call void @llvm.lifetime.end.p0(i64 4, ptr %event_mask) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %event_data) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end118
  %99 = load i32, ptr %i, align 4, !tbaa !19
  %inc = add nsw i32 %99, 1
  store i32 %inc, ptr %i, align 4, !tbaa !19
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %100 = load ptr, ptr %event_loop, align 8, !tbaa !4
  call void @s_process_task_pre_queue(ptr noundef %100)
  call void @llvm.lifetime.start.p0(i64 8, ptr %now_ns) #12
  store i64 0, ptr %now_ns, align 8, !tbaa !17
  %101 = load ptr, ptr %event_loop, align 8, !tbaa !4
  %clock = getelementptr inbounds %struct.aws_event_loop, ptr %101, i32 0, i32 2
  %102 = load ptr, ptr %clock, align 8, !tbaa !74
  %call119 = call i32 %102(ptr noundef %now_ns)
  br label %do.body120

do.body120:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger121) #12
  %call122 = call ptr @aws_logger_get()
  store ptr %call122, ptr %logger121, align 8, !tbaa !4
  %103 = load ptr, ptr %logger121, align 8, !tbaa !4
  %cmp123 = icmp ne ptr %103, null
  br i1 %cmp123, label %land.lhs.true124, label %if.end133

land.lhs.true124:                                 ; preds = %do.body120
  %104 = load ptr, ptr %logger121, align 8, !tbaa !4
  %vtable125 = getelementptr inbounds %struct.aws_logger, ptr %104, i32 0, i32 0
  %105 = load ptr, ptr %vtable125, align 8, !tbaa !8
  %get_log_level126 = getelementptr inbounds %struct.aws_logger_vtable, ptr %105, i32 0, i32 1
  %106 = load ptr, ptr %get_log_level126, align 8, !tbaa !10
  %107 = load ptr, ptr %logger121, align 8, !tbaa !4
  %call127 = call i32 %106(ptr noundef %107, i32 noundef 1025)
  %cmp128 = icmp uge i32 %call127, 6
  br i1 %cmp128, label %if.then129, label %if.end133

if.then129:                                       ; preds = %land.lhs.true124
  %108 = load ptr, ptr %logger121, align 8, !tbaa !4
  %vtable130 = getelementptr inbounds %struct.aws_logger, ptr %108, i32 0, i32 0
  %109 = load ptr, ptr %vtable130, align 8, !tbaa !8
  %log131 = getelementptr inbounds %struct.aws_logger_vtable, ptr %109, i32 0, i32 0
  %110 = load ptr, ptr %log131, align 8, !tbaa !12
  %111 = load ptr, ptr %logger121, align 8, !tbaa !4
  %112 = load ptr, ptr %event_loop, align 8, !tbaa !4
  %call132 = call i32 (ptr, i32, i32, ptr, ...) %110(ptr noundef %111, i32 noundef 6, i32 noundef 1025, ptr noundef @.str.13, ptr noundef %112)
  br label %if.end133

if.end133:                                        ; preds = %if.then129, %land.lhs.true124, %do.body120
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger121) #12
  br label %do.cond134

do.cond134:                                       ; preds = %if.end133
  br label %do.end135

do.end135:                                        ; preds = %do.cond134
  %113 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %scheduler = getelementptr inbounds %struct.epoll_loop, ptr %113, i32 0, i32 0
  %114 = load i64, ptr %now_ns, align 8, !tbaa !17
  call void @aws_task_scheduler_run_all(ptr noundef %scheduler, i64 noundef %114)
  call void @llvm.lifetime.start.p0(i64 1, ptr %use_default_timeout) #12
  store i8 0, ptr %use_default_timeout, align 1, !tbaa !31
  %115 = load ptr, ptr %event_loop, align 8, !tbaa !4
  %clock136 = getelementptr inbounds %struct.aws_event_loop, ptr %115, i32 0, i32 2
  %116 = load ptr, ptr %clock136, align 8, !tbaa !74
  %call137 = call i32 %116(ptr noundef %now_ns)
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.then139, label %if.end140

if.then139:                                       ; preds = %do.end135
  store i8 1, ptr %use_default_timeout, align 1, !tbaa !31
  br label %if.end140

if.end140:                                        ; preds = %if.then139, %do.end135
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_run_time_ns) #12
  %117 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %scheduler141 = getelementptr inbounds %struct.epoll_loop, ptr %117, i32 0, i32 0
  %call142 = call zeroext i1 @aws_task_scheduler_has_tasks(ptr noundef %scheduler141, ptr noundef %next_run_time_ns)
  br i1 %call142, label %if.end144, label %if.then143

if.then143:                                       ; preds = %if.end140
  store i8 1, ptr %use_default_timeout, align 1, !tbaa !31
  br label %if.end144

if.end144:                                        ; preds = %if.then143, %if.end140
  %118 = load i8, ptr %use_default_timeout, align 1, !tbaa !31, !range !62, !noundef !63
  %tobool145 = trunc i8 %118 to i1
  br i1 %tobool145, label %if.then146, label %if.else

if.then146:                                       ; preds = %if.end144
  br label %do.body147

do.body147:                                       ; preds = %if.then146
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger148) #12
  %call149 = call ptr @aws_logger_get()
  store ptr %call149, ptr %logger148, align 8, !tbaa !4
  %119 = load ptr, ptr %logger148, align 8, !tbaa !4
  %cmp150 = icmp ne ptr %119, null
  br i1 %cmp150, label %land.lhs.true151, label %if.end160

land.lhs.true151:                                 ; preds = %do.body147
  %120 = load ptr, ptr %logger148, align 8, !tbaa !4
  %vtable152 = getelementptr inbounds %struct.aws_logger, ptr %120, i32 0, i32 0
  %121 = load ptr, ptr %vtable152, align 8, !tbaa !8
  %get_log_level153 = getelementptr inbounds %struct.aws_logger_vtable, ptr %121, i32 0, i32 1
  %122 = load ptr, ptr %get_log_level153, align 8, !tbaa !10
  %123 = load ptr, ptr %logger148, align 8, !tbaa !4
  %call154 = call i32 %122(ptr noundef %123, i32 noundef 1025)
  %cmp155 = icmp uge i32 %call154, 6
  br i1 %cmp155, label %if.then156, label %if.end160

if.then156:                                       ; preds = %land.lhs.true151
  %124 = load ptr, ptr %logger148, align 8, !tbaa !4
  %vtable157 = getelementptr inbounds %struct.aws_logger, ptr %124, i32 0, i32 0
  %125 = load ptr, ptr %vtable157, align 8, !tbaa !8
  %log158 = getelementptr inbounds %struct.aws_logger_vtable, ptr %125, i32 0, i32 0
  %126 = load ptr, ptr %log158, align 8, !tbaa !12
  %127 = load ptr, ptr %logger148, align 8, !tbaa !4
  %128 = load ptr, ptr %event_loop, align 8, !tbaa !4
  %call159 = call i32 (ptr, i32, i32, ptr, ...) %126(ptr noundef %127, i32 noundef 6, i32 noundef 1025, ptr noundef @.str.14, ptr noundef %128)
  br label %if.end160

if.end160:                                        ; preds = %if.then156, %land.lhs.true151, %do.body147
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger148) #12
  br label %do.cond161

do.cond161:                                       ; preds = %if.end160
  br label %do.end162

do.end162:                                        ; preds = %do.cond161
  store i32 100000, ptr %timeout, align 4, !tbaa !19
  br label %if.end188

if.else:                                          ; preds = %if.end144
  call void @llvm.lifetime.start.p0(i64 8, ptr %timeout_ns) #12
  %129 = load i64, ptr %next_run_time_ns, align 8, !tbaa !17
  %130 = load i64, ptr %now_ns, align 8, !tbaa !17
  %cmp163 = icmp ugt i64 %129, %130
  br i1 %cmp163, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %131 = load i64, ptr %next_run_time_ns, align 8, !tbaa !17
  %132 = load i64, ptr %now_ns, align 8, !tbaa !17
  %sub = sub i64 %131, %132
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, ptr %timeout_ns, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %timeout_ms64) #12
  %133 = load i64, ptr %timeout_ns, align 8, !tbaa !17
  %call164 = call i64 @aws_timestamp_convert(i64 noundef %133, i32 noundef 1000000000, i32 noundef 1000, ptr noundef null)
  store i64 %call164, ptr %timeout_ms64, align 8, !tbaa !17
  %134 = load i64, ptr %timeout_ms64, align 8, !tbaa !17
  %cmp165 = icmp ugt i64 %134, 2147483647
  br i1 %cmp165, label %cond.true166, label %cond.false167

cond.true166:                                     ; preds = %cond.end
  br label %cond.end168

cond.false167:                                    ; preds = %cond.end
  %135 = load i64, ptr %timeout_ms64, align 8, !tbaa !17
  %conv = trunc i64 %135 to i32
  br label %cond.end168

cond.end168:                                      ; preds = %cond.false167, %cond.true166
  %cond169 = phi i32 [ 2147483647, %cond.true166 ], [ %conv, %cond.false167 ]
  store i32 %cond169, ptr %timeout, align 4, !tbaa !19
  br label %do.body170

do.body170:                                       ; preds = %cond.end168
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger171) #12
  %call172 = call ptr @aws_logger_get()
  store ptr %call172, ptr %logger171, align 8, !tbaa !4
  %136 = load ptr, ptr %logger171, align 8, !tbaa !4
  %cmp173 = icmp ne ptr %136, null
  br i1 %cmp173, label %land.lhs.true175, label %if.end185

land.lhs.true175:                                 ; preds = %do.body170
  %137 = load ptr, ptr %logger171, align 8, !tbaa !4
  %vtable176 = getelementptr inbounds %struct.aws_logger, ptr %137, i32 0, i32 0
  %138 = load ptr, ptr %vtable176, align 8, !tbaa !8
  %get_log_level177 = getelementptr inbounds %struct.aws_logger_vtable, ptr %138, i32 0, i32 1
  %139 = load ptr, ptr %get_log_level177, align 8, !tbaa !10
  %140 = load ptr, ptr %logger171, align 8, !tbaa !4
  %call178 = call i32 %139(ptr noundef %140, i32 noundef 1025)
  %cmp179 = icmp uge i32 %call178, 6
  br i1 %cmp179, label %if.then181, label %if.end185

if.then181:                                       ; preds = %land.lhs.true175
  %141 = load ptr, ptr %logger171, align 8, !tbaa !4
  %vtable182 = getelementptr inbounds %struct.aws_logger, ptr %141, i32 0, i32 0
  %142 = load ptr, ptr %vtable182, align 8, !tbaa !8
  %log183 = getelementptr inbounds %struct.aws_logger_vtable, ptr %142, i32 0, i32 0
  %143 = load ptr, ptr %log183, align 8, !tbaa !12
  %144 = load ptr, ptr %logger171, align 8, !tbaa !4
  %145 = load ptr, ptr %event_loop, align 8, !tbaa !4
  %146 = load i64, ptr %timeout_ns, align 8, !tbaa !17
  %147 = load i32, ptr %timeout, align 4, !tbaa !19
  %call184 = call i32 (ptr, i32, i32, ptr, ...) %143(ptr noundef %144, i32 noundef 6, i32 noundef 1025, ptr noundef @.str.15, ptr noundef %145, i64 noundef %146, i32 noundef %147)
  br label %if.end185

if.end185:                                        ; preds = %if.then181, %land.lhs.true175, %do.body170
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger171) #12
  br label %do.cond186

do.cond186:                                       ; preds = %if.end185
  br label %do.end187

do.end187:                                        ; preds = %do.cond186
  call void @llvm.lifetime.end.p0(i64 8, ptr %timeout_ms64) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %timeout_ns) #12
  br label %if.end188

if.end188:                                        ; preds = %do.end187, %do.end162
  %148 = load ptr, ptr %event_loop, align 8, !tbaa !4
  call void @aws_event_loop_register_tick_end(ptr noundef %148)
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_run_time_ns) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr %use_default_timeout) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %now_ns) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %event_count) #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body189

do.body189:                                       ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger190) #12
  %call191 = call ptr @aws_logger_get()
  store ptr %call191, ptr %logger190, align 8, !tbaa !4
  %149 = load ptr, ptr %logger190, align 8, !tbaa !4
  %cmp192 = icmp ne ptr %149, null
  br i1 %cmp192, label %land.lhs.true194, label %if.end204

land.lhs.true194:                                 ; preds = %do.body189
  %150 = load ptr, ptr %logger190, align 8, !tbaa !4
  %vtable195 = getelementptr inbounds %struct.aws_logger, ptr %150, i32 0, i32 0
  %151 = load ptr, ptr %vtable195, align 8, !tbaa !8
  %get_log_level196 = getelementptr inbounds %struct.aws_logger_vtable, ptr %151, i32 0, i32 1
  %152 = load ptr, ptr %get_log_level196, align 8, !tbaa !10
  %153 = load ptr, ptr %logger190, align 8, !tbaa !4
  %call197 = call i32 %152(ptr noundef %153, i32 noundef 1025)
  %cmp198 = icmp uge i32 %call197, 5
  br i1 %cmp198, label %if.then200, label %if.end204

if.then200:                                       ; preds = %land.lhs.true194
  %154 = load ptr, ptr %logger190, align 8, !tbaa !4
  %vtable201 = getelementptr inbounds %struct.aws_logger, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %vtable201, align 8, !tbaa !8
  %log202 = getelementptr inbounds %struct.aws_logger_vtable, ptr %155, i32 0, i32 0
  %156 = load ptr, ptr %log202, align 8, !tbaa !12
  %157 = load ptr, ptr %logger190, align 8, !tbaa !4
  %158 = load ptr, ptr %event_loop, align 8, !tbaa !4
  %call203 = call i32 (ptr, i32, i32, ptr, ...) %156(ptr noundef %157, i32 noundef 5, i32 noundef 1025, ptr noundef @.str.16, ptr noundef %158)
  br label %if.end204

if.end204:                                        ; preds = %if.then200, %land.lhs.true194, %do.body189
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger190) #12
  br label %do.cond205

do.cond205:                                       ; preds = %if.end204
  br label %do.end206

do.end206:                                        ; preds = %do.cond205
  %159 = load ptr, ptr %event_loop, align 8, !tbaa !4
  %160 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %read_task_handle207 = getelementptr inbounds %struct.epoll_loop, ptr %160, i32 0, i32 5
  %call208 = call i32 @s_unsubscribe_from_io_events(ptr noundef %159, ptr noundef %read_task_handle207)
  %161 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %running_thread_id209 = getelementptr inbounds %struct.epoll_loop, ptr %161, i32 0, i32 4
  call void @aws_atomic_store_ptr(ptr noundef %running_thread_id209, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 1200, ptr %events) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %timeout) #12
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end206, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %epoll_loop) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %event_loop) #12
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

declare void @aws_thread_decrement_unjoined_count() #2

; Function Attrs: nounwind uwtable
define internal void @s_on_tasks_to_schedule(ptr noundef %event_loop, ptr noundef %handle, i32 noundef %events, ptr noundef %user_data) #0 {
entry:
  %event_loop.addr = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %events.addr = alloca i32, align 4
  %user_data.addr = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %epoll_loop = alloca ptr, align 8
  store ptr %event_loop, ptr %event_loop.addr, align 8, !tbaa !4
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !4
  store i32 %events, ptr %events.addr, align 4, !tbaa !19
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %handle.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #12
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %2 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %6 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %5(ptr noundef %6, i32 noundef 1025)
  %cmp2 = icmp uge i32 %call1, 6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable3 = getelementptr inbounds %struct.aws_logger, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %vtable3, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %log, align 8, !tbaa !12
  %10 = load ptr, ptr %logger, align 8, !tbaa !4
  %11 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %call4 = call i32 (ptr, i32, i32, ptr, ...) %9(ptr noundef %10, i32 noundef 6, i32 noundef 1025, ptr noundef @.str.17, ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #12
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %epoll_loop) #12
  %12 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %impl_data = getelementptr inbounds %struct.aws_event_loop, ptr %12, i32 0, i32 8
  %13 = load ptr, ptr %impl_data, align 8, !tbaa !49
  store ptr %13, ptr %epoll_loop, align 8, !tbaa !4
  %14 = load i32, ptr %events.addr, align 4, !tbaa !19
  %and = and i32 %14, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then5, label %if.end6

if.then5:                                         ; preds = %do.end
  %15 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %should_process_task_pre_queue = getelementptr inbounds %struct.epoll_loop, ptr %15, i32 0, i32 12
  store i8 1, ptr %should_process_task_pre_queue, align 4, !tbaa !75
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %epoll_loop) #12
  ret void
}

declare i32 @aws_thread_current_at_exit(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_aws_epoll_cleanup_aws_lc_thread_local_state(ptr noundef %user_data) #0 {
entry:
  %user_data.addr = alloca ptr, align 8
  store ptr %user_data, ptr %user_data.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %user_data.addr, align 8, !tbaa !4
  call void @aws_cal_thread_clean_up()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aws_event_loop_listen_for_io_events(i32 noundef %epoll_fd, ptr noundef %events, i32 noundef %timeout) #8 {
entry:
  %epoll_fd.addr = alloca i32, align 4
  %events.addr = alloca ptr, align 8
  %timeout.addr = alloca i32, align 4
  store i32 %epoll_fd, ptr %epoll_fd.addr, align 4, !tbaa !19
  store ptr %events, ptr %events.addr, align 8, !tbaa !4
  store i32 %timeout, ptr %timeout.addr, align 4, !tbaa !19
  %0 = load i32, ptr %epoll_fd.addr, align 4, !tbaa !19
  %1 = load ptr, ptr %events.addr, align 8, !tbaa !4
  %2 = load i32, ptr %timeout.addr, align 4, !tbaa !19
  %call = call i32 @epoll_wait(i32 noundef %0, ptr noundef %1, i32 noundef 100, i32 noundef %2)
  ret i32 %call
}

declare void @aws_event_loop_register_tick_start(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_process_task_pre_queue(ptr noundef %event_loop) #0 {
entry:
  %event_loop.addr = alloca ptr, align 8
  %epoll_loop = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %logger = alloca ptr, align 8
  %task_pre_queue = alloca %struct.aws_linked_list, align 8
  %count_ignore = alloca i64, align 8
  %node = alloca ptr, align 8
  %task = alloca ptr, align 8
  %logger19 = alloca ptr, align 8
  store ptr %event_loop, ptr %event_loop.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %epoll_loop) #12
  %0 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %impl_data = getelementptr inbounds %struct.aws_event_loop, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %impl_data, align 8, !tbaa !49
  store ptr %1, ptr %epoll_loop, align 8, !tbaa !4
  %2 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %should_process_task_pre_queue = getelementptr inbounds %struct.epoll_loop, ptr %2, i32 0, i32 12
  %3 = load i8, ptr %should_process_task_pre_queue, align 4, !tbaa !75, !range !62, !noundef !63
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #12
  %call = call ptr @aws_logger_get()
  store ptr %call, ptr %logger, align 8, !tbaa !4
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %do.body
  %5 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %call1 = call i32 %7(ptr noundef %8, i32 noundef 1025)
  %cmp2 = icmp uge i32 %call1, 6
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable4 = getelementptr inbounds %struct.aws_logger, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %vtable4, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %log, align 8, !tbaa !12
  %12 = load ptr, ptr %logger, align 8, !tbaa !4
  %13 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %call5 = call i32 (ptr, i32, i32, ptr, ...) %11(ptr noundef %12, i32 noundef 6, i32 noundef 1025, ptr noundef @.str.18, ptr noundef %13)
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #12
  br label %do.cond

do.cond:                                          ; preds = %if.end6
  br label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %should_process_task_pre_queue7 = getelementptr inbounds %struct.epoll_loop, ptr %14, i32 0, i32 12
  store i8 0, ptr %should_process_task_pre_queue7, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 32, ptr %task_pre_queue) #12
  call void @aws_linked_list_init(ptr noundef %task_pre_queue)
  call void @llvm.lifetime.start.p0(i64 8, ptr %count_ignore) #12
  store i64 0, ptr %count_ignore, align 8, !tbaa !17
  %15 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %task_pre_queue_mutex = getelementptr inbounds %struct.epoll_loop, ptr %15, i32 0, i32 7
  %call8 = call i32 @aws_mutex_lock(ptr noundef %task_pre_queue_mutex)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %16 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %read_task_handle = getelementptr inbounds %struct.epoll_loop, ptr %16, i32 0, i32 5
  %data = getelementptr inbounds %struct.aws_io_handle, ptr %read_task_handle, i32 0, i32 0
  %17 = load i32, ptr %data, align 8, !tbaa !21
  %call9 = call i64 @read(i32 noundef %17, ptr noundef %count_ignore, i64 noundef 8)
  %cmp10 = icmp sgt i64 %call9, -1
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %task_pre_queue11 = getelementptr inbounds %struct.epoll_loop, ptr %18, i32 0, i32 8
  call void @aws_linked_list_swap_contents(ptr noundef %task_pre_queue11, ptr noundef %task_pre_queue)
  %19 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %task_pre_queue_mutex12 = getelementptr inbounds %struct.epoll_loop, ptr %19, i32 0, i32 7
  %call13 = call i32 @aws_mutex_unlock(ptr noundef %task_pre_queue_mutex12)
  br label %while.cond14

while.cond14:                                     ; preds = %if.end38, %while.end
  %call15 = call zeroext i1 @aws_linked_list_empty(ptr noundef %task_pre_queue)
  %lnot = xor i1 %call15, true
  br i1 %lnot, label %while.body16, label %while.end39

while.body16:                                     ; preds = %while.cond14
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #12
  %call17 = call ptr @aws_linked_list_pop_front(ptr noundef %task_pre_queue)
  store ptr %call17, ptr %node, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #12
  %20 = load ptr, ptr %node, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %20, i64 -24
  store ptr %add.ptr, ptr %task, align 8, !tbaa !4
  br label %do.body18

do.body18:                                        ; preds = %while.body16
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger19) #12
  %call20 = call ptr @aws_logger_get()
  store ptr %call20, ptr %logger19, align 8, !tbaa !4
  %21 = load ptr, ptr %logger19, align 8, !tbaa !4
  %cmp21 = icmp ne ptr %21, null
  br i1 %cmp21, label %land.lhs.true22, label %if.end31

land.lhs.true22:                                  ; preds = %do.body18
  %22 = load ptr, ptr %logger19, align 8, !tbaa !4
  %vtable23 = getelementptr inbounds %struct.aws_logger, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %vtable23, align 8, !tbaa !8
  %get_log_level24 = getelementptr inbounds %struct.aws_logger_vtable, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %get_log_level24, align 8, !tbaa !10
  %25 = load ptr, ptr %logger19, align 8, !tbaa !4
  %call25 = call i32 %24(ptr noundef %25, i32 noundef 1025)
  %cmp26 = icmp uge i32 %call25, 6
  br i1 %cmp26, label %if.then27, label %if.end31

if.then27:                                        ; preds = %land.lhs.true22
  %26 = load ptr, ptr %logger19, align 8, !tbaa !4
  %vtable28 = getelementptr inbounds %struct.aws_logger, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %vtable28, align 8, !tbaa !8
  %log29 = getelementptr inbounds %struct.aws_logger_vtable, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %log29, align 8, !tbaa !12
  %29 = load ptr, ptr %logger19, align 8, !tbaa !4
  %30 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %task, align 8, !tbaa !4
  %call30 = call i32 (ptr, i32, i32, ptr, ...) %28(ptr noundef %29, i32 noundef 6, i32 noundef 1025, ptr noundef @.str.19, ptr noundef %30, ptr noundef %31)
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %land.lhs.true22, %do.body18
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger19) #12
  br label %do.cond32

do.cond32:                                        ; preds = %if.end31
  br label %do.end33

do.end33:                                         ; preds = %do.cond32
  %32 = load ptr, ptr %task, align 8, !tbaa !4
  %timestamp = getelementptr inbounds %struct.aws_task, ptr %32, i32 0, i32 2
  %33 = load i64, ptr %timestamp, align 8, !tbaa !76
  %cmp34 = icmp eq i64 %33, 0
  br i1 %cmp34, label %if.then35, label %if.else

if.then35:                                        ; preds = %do.end33
  %34 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %scheduler = getelementptr inbounds %struct.epoll_loop, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %task, align 8, !tbaa !4
  call void @aws_task_scheduler_schedule_now(ptr noundef %scheduler, ptr noundef %35)
  br label %if.end38

if.else:                                          ; preds = %do.end33
  %36 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %scheduler36 = getelementptr inbounds %struct.epoll_loop, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %task, align 8, !tbaa !4
  %38 = load ptr, ptr %task, align 8, !tbaa !4
  %timestamp37 = getelementptr inbounds %struct.aws_task, ptr %38, i32 0, i32 2
  %39 = load i64, ptr %timestamp37, align 8, !tbaa !76
  call void @aws_task_scheduler_schedule_future(ptr noundef %scheduler36, ptr noundef %37, i64 noundef %39)
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then35
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #12
  br label %while.cond14

while.end39:                                      ; preds = %while.cond14
  call void @llvm.lifetime.end.p0(i64 8, ptr %count_ignore) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr %task_pre_queue) #12
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end39, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %epoll_loop) #12
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

declare void @aws_task_scheduler_run_all(ptr noundef, i64 noundef) #2

declare zeroext i1 @aws_task_scheduler_has_tasks(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_timestamp_convert(i64 noundef %timestamp, i32 noundef %convert_from, i32 noundef %convert_to, ptr noundef %remainder) #4 {
entry:
  %timestamp.addr = alloca i64, align 8
  %convert_from.addr = alloca i32, align 4
  %convert_to.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %timestamp, ptr %timestamp.addr, align 8, !tbaa !17
  store i32 %convert_from, ptr %convert_from.addr, align 4, !tbaa !21
  store i32 %convert_to, ptr %convert_to.addr, align 4, !tbaa !21
  store ptr %remainder, ptr %remainder.addr, align 8, !tbaa !4
  %0 = load i64, ptr %timestamp.addr, align 8, !tbaa !17
  %1 = load i32, ptr %convert_from.addr, align 4, !tbaa !21
  %conv = zext i32 %1 to i64
  %2 = load i32, ptr %convert_to.addr, align 4, !tbaa !21
  %conv1 = zext i32 %2 to i64
  %3 = load ptr, ptr %remainder.addr, align 8, !tbaa !4
  %call = call i64 @aws_timestamp_convert_u64(i64 noundef %0, i64 noundef %conv, i64 noundef %conv1, ptr noundef %3)
  ret i64 %call
}

declare void @aws_event_loop_register_tick_end(ptr noundef) #2

declare void @aws_cal_thread_clean_up() #2

declare i32 @epoll_wait(i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @aws_mutex_lock(ptr noundef) #2

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_linked_list_swap_contents(ptr noalias noundef %a, ptr noalias noundef %b) #4 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %a_first = alloca ptr, align 8
  %a_last = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_first) #12
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %head = getelementptr inbounds %struct.aws_linked_list, ptr %0, i32 0, i32 0
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %head, i32 0, i32 0
  %1 = load ptr, ptr %next, align 8, !tbaa !54
  store ptr %1, ptr %a_first, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_last) #12
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %tail = getelementptr inbounds %struct.aws_linked_list, ptr %2, i32 0, i32 1
  %prev = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail, i32 0, i32 1
  %3 = load ptr, ptr %prev, align 8, !tbaa !56
  store ptr %3, ptr %a_last, align 8, !tbaa !4
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %call = call zeroext i1 @aws_linked_list_empty(ptr noundef %4)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !4
  call void @aws_linked_list_init(ptr noundef %5)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %head1 = getelementptr inbounds %struct.aws_linked_list, ptr %6, i32 0, i32 0
  %next2 = getelementptr inbounds %struct.aws_linked_list_node, ptr %head1, i32 0, i32 0
  %7 = load ptr, ptr %next2, align 8, !tbaa !54
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %head3 = getelementptr inbounds %struct.aws_linked_list, ptr %8, i32 0, i32 0
  %next4 = getelementptr inbounds %struct.aws_linked_list_node, ptr %head3, i32 0, i32 0
  store ptr %7, ptr %next4, align 8, !tbaa !54
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %head5 = getelementptr inbounds %struct.aws_linked_list, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %head6 = getelementptr inbounds %struct.aws_linked_list, ptr %10, i32 0, i32 0
  %next7 = getelementptr inbounds %struct.aws_linked_list_node, ptr %head6, i32 0, i32 0
  %11 = load ptr, ptr %next7, align 8, !tbaa !54
  %prev8 = getelementptr inbounds %struct.aws_linked_list_node, ptr %11, i32 0, i32 1
  store ptr %head5, ptr %prev8, align 8, !tbaa !73
  %12 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %tail9 = getelementptr inbounds %struct.aws_linked_list, ptr %12, i32 0, i32 1
  %prev10 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail9, i32 0, i32 1
  %13 = load ptr, ptr %prev10, align 8, !tbaa !56
  %14 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %tail11 = getelementptr inbounds %struct.aws_linked_list, ptr %14, i32 0, i32 1
  %prev12 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail11, i32 0, i32 1
  store ptr %13, ptr %prev12, align 8, !tbaa !56
  %15 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %tail13 = getelementptr inbounds %struct.aws_linked_list, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %tail14 = getelementptr inbounds %struct.aws_linked_list, ptr %16, i32 0, i32 1
  %prev15 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail14, i32 0, i32 1
  %17 = load ptr, ptr %prev15, align 8, !tbaa !56
  %next16 = getelementptr inbounds %struct.aws_linked_list_node, ptr %17, i32 0, i32 0
  store ptr %tail13, ptr %next16, align 8, !tbaa !72
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load ptr, ptr %a_first, align 8, !tbaa !4
  %19 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %tail17 = getelementptr inbounds %struct.aws_linked_list, ptr %19, i32 0, i32 1
  %cmp = icmp eq ptr %18, %tail17
  br i1 %cmp, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.end
  %20 = load ptr, ptr %b.addr, align 8, !tbaa !4
  call void @aws_linked_list_init(ptr noundef %20)
  br label %if.end32

if.else19:                                        ; preds = %if.end
  %21 = load ptr, ptr %a_first, align 8, !tbaa !4
  %22 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %head20 = getelementptr inbounds %struct.aws_linked_list, ptr %22, i32 0, i32 0
  %next21 = getelementptr inbounds %struct.aws_linked_list_node, ptr %head20, i32 0, i32 0
  store ptr %21, ptr %next21, align 8, !tbaa !54
  %23 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %head22 = getelementptr inbounds %struct.aws_linked_list, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %head23 = getelementptr inbounds %struct.aws_linked_list, ptr %24, i32 0, i32 0
  %next24 = getelementptr inbounds %struct.aws_linked_list_node, ptr %head23, i32 0, i32 0
  %25 = load ptr, ptr %next24, align 8, !tbaa !54
  %prev25 = getelementptr inbounds %struct.aws_linked_list_node, ptr %25, i32 0, i32 1
  store ptr %head22, ptr %prev25, align 8, !tbaa !73
  %26 = load ptr, ptr %a_last, align 8, !tbaa !4
  %27 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %tail26 = getelementptr inbounds %struct.aws_linked_list, ptr %27, i32 0, i32 1
  %prev27 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail26, i32 0, i32 1
  store ptr %26, ptr %prev27, align 8, !tbaa !56
  %28 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %tail28 = getelementptr inbounds %struct.aws_linked_list, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %tail29 = getelementptr inbounds %struct.aws_linked_list, ptr %29, i32 0, i32 1
  %prev30 = getelementptr inbounds %struct.aws_linked_list_node, ptr %tail29, i32 0, i32 1
  %30 = load ptr, ptr %prev30, align 8, !tbaa !56
  %next31 = getelementptr inbounds %struct.aws_linked_list_node, ptr %30, i32 0, i32 0
  store ptr %tail28, ptr %next31, align 8, !tbaa !72
  br label %if.end32

if.end32:                                         ; preds = %if.else19, %if.then18
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_last) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_first) #12
  ret void
}

declare i32 @aws_mutex_unlock(ptr noundef) #2

declare void @aws_task_scheduler_schedule_now(ptr noundef, ptr noundef) #2

declare void @aws_task_scheduler_schedule_future(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_timestamp_convert_u64(i64 noundef %ticks, i64 noundef %old_frequency, i64 noundef %new_frequency, ptr noundef %remainder) #4 {
entry:
  %ticks.addr = alloca i64, align 8
  %old_frequency.addr = alloca i64, align 8
  %new_frequency.addr = alloca i64, align 8
  %remainder.addr = alloca ptr, align 8
  %frequency_remainder = alloca i64, align 8
  %frequency_ratio = alloca i64, align 8
  %old_seconds_elapsed = alloca i64, align 8
  %old_remainder = alloca i64, align 8
  %new_ticks_whole_part = alloca i64, align 8
  %new_ticks_remainder_part = alloca i64, align 8
  store i64 %ticks, ptr %ticks.addr, align 8, !tbaa !17
  store i64 %old_frequency, ptr %old_frequency.addr, align 8, !tbaa !17
  store i64 %new_frequency, ptr %new_frequency.addr, align 8, !tbaa !17
  store ptr %remainder, ptr %remainder.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %old_frequency.addr, align 8, !tbaa !17
  %cmp = icmp ugt i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %do.body
  %1 = load i64, ptr %new_frequency.addr, align 8, !tbaa !17
  %cmp1 = icmp ugt i64 %1, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %do.body
  call void @aws_fatal_assert(ptr noundef @.str.20, ptr noundef @.str.21, i32 noundef 24) #14
  unreachable

if.end:                                           ; preds = %land.lhs.true
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %remainder.addr, align 8, !tbaa !4
  %cmp2 = icmp ne ptr %2, null
  br i1 %cmp2, label %if.then3, label %if.end11

if.then3:                                         ; preds = %do.end
  %3 = load ptr, ptr %remainder.addr, align 8, !tbaa !4
  store i64 0, ptr %3, align 8, !tbaa !17
  %4 = load i64, ptr %new_frequency.addr, align 8, !tbaa !17
  %5 = load i64, ptr %old_frequency.addr, align 8, !tbaa !17
  %cmp4 = icmp ult i64 %4, %5
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 8, ptr %frequency_remainder) #12
  %6 = load i64, ptr %old_frequency.addr, align 8, !tbaa !17
  %7 = load i64, ptr %new_frequency.addr, align 8, !tbaa !17
  %rem = urem i64 %6, %7
  store i64 %rem, ptr %frequency_remainder, align 8, !tbaa !17
  %8 = load i64, ptr %frequency_remainder, align 8, !tbaa !17
  %cmp6 = icmp eq i64 %8, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 8, ptr %frequency_ratio) #12
  %9 = load i64, ptr %old_frequency.addr, align 8, !tbaa !17
  %10 = load i64, ptr %new_frequency.addr, align 8, !tbaa !17
  %div = udiv i64 %9, %10
  store i64 %div, ptr %frequency_ratio, align 8, !tbaa !17
  %11 = load i64, ptr %ticks.addr, align 8, !tbaa !17
  %12 = load i64, ptr %frequency_ratio, align 8, !tbaa !17
  %rem8 = urem i64 %11, %12
  %13 = load ptr, ptr %remainder.addr, align 8, !tbaa !4
  store i64 %rem8, ptr %13, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 8, ptr %frequency_ratio) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %frequency_remainder) #12
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then3
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_seconds_elapsed) #12
  %14 = load i64, ptr %ticks.addr, align 8, !tbaa !17
  %15 = load i64, ptr %old_frequency.addr, align 8, !tbaa !17
  %div12 = udiv i64 %14, %15
  store i64 %div12, ptr %old_seconds_elapsed, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_remainder) #12
  %16 = load i64, ptr %ticks.addr, align 8, !tbaa !17
  %17 = load i64, ptr %old_seconds_elapsed, align 8, !tbaa !17
  %18 = load i64, ptr %old_frequency.addr, align 8, !tbaa !17
  %mul = mul i64 %17, %18
  %sub = sub i64 %16, %mul
  store i64 %sub, ptr %old_remainder, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_ticks_whole_part) #12
  %19 = load i64, ptr %old_seconds_elapsed, align 8, !tbaa !17
  %20 = load i64, ptr %new_frequency.addr, align 8, !tbaa !17
  %call = call i64 @aws_mul_u64_saturating(i64 noundef %19, i64 noundef %20)
  store i64 %call, ptr %new_ticks_whole_part, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_ticks_remainder_part) #12
  %21 = load i64, ptr %old_remainder, align 8, !tbaa !17
  %22 = load i64, ptr %new_frequency.addr, align 8, !tbaa !17
  %call13 = call i64 @aws_mul_u64_saturating(i64 noundef %21, i64 noundef %22)
  %23 = load i64, ptr %old_frequency.addr, align 8, !tbaa !17
  %div14 = udiv i64 %call13, %23
  store i64 %div14, ptr %new_ticks_remainder_part, align 8, !tbaa !17
  %24 = load i64, ptr %new_ticks_whole_part, align 8, !tbaa !17
  %25 = load i64, ptr %new_ticks_remainder_part, align 8, !tbaa !17
  %call15 = call i64 @aws_add_u64_saturating(i64 noundef %24, i64 noundef %25)
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_ticks_remainder_part) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_ticks_whole_part) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_remainder) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_seconds_elapsed) #12
  ret i64 %call15
}

; Function Attrs: noreturn
declare void @aws_fatal_assert(ptr noundef, ptr noundef, i32 noundef) #9

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_mul_u64_saturating(i64 noundef %a, i64 noundef %b) #4 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !17
  store i64 %b, ptr %b.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #12
  %0 = load i64, ptr %a.addr, align 8, !tbaa !17
  %1 = load i64, ptr %b.addr, align 8, !tbaa !17
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1)
  %3 = extractvalue { i64, i1 } %2, 1
  %4 = extractvalue { i64, i1 } %2, 0
  store i64 %4, ptr %res, align 8
  br i1 %3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %res, align 8, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %res, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #12
  ret i64 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @aws_add_u64_saturating(i64 noundef %a, i64 noundef %b) #4 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !17
  store i64 %b, ptr %b.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #12
  %0 = load i64, ptr %a.addr, align 8, !tbaa !17
  %1 = load i64, ptr %b.addr, align 8, !tbaa !17
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1)
  %3 = extractvalue { i64, i1 } %2, 1
  %4 = extractvalue { i64, i1 } %2, 0
  store i64 %4, ptr %res, align 8
  br i1 %3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %res, align 8, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %res, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #12
  ret i64 %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #10

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @aws_atomic_compare_exchange_ptr(ptr noundef %var, ptr noundef %expected, ptr noundef %desired) #4 {
entry:
  %var.addr = alloca ptr, align 8
  %expected.addr = alloca ptr, align 8
  %desired.addr = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !4
  store ptr %desired, ptr %desired.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %expected.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %desired.addr, align 8, !tbaa !4
  %call = call zeroext i1 @aws_atomic_compare_exchange_ptr_explicit(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 5, i32 noundef 5)
  ret i1 %call
}

declare void @aws_task_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_stop_task(ptr noundef %task, ptr noundef %args, i32 noundef %status) #0 {
entry:
  %task.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %event_loop = alloca ptr, align 8
  %epoll_loop = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  store ptr %args, ptr %args.addr, align 8, !tbaa !4
  store i32 %status, ptr %status.addr, align 4, !tbaa !21
  %0 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %event_loop) #12
  %1 = load ptr, ptr %args.addr, align 8, !tbaa !4
  store ptr %1, ptr %event_loop, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %epoll_loop) #12
  %2 = load ptr, ptr %event_loop, align 8, !tbaa !4
  %impl_data = getelementptr inbounds %struct.aws_event_loop, ptr %2, i32 0, i32 8
  %3 = load ptr, ptr %impl_data, align 8, !tbaa !49
  store ptr %3, ptr %epoll_loop, align 8, !tbaa !4
  %4 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %stop_task_ptr = getelementptr inbounds %struct.epoll_loop, ptr %4, i32 0, i32 10
  call void @aws_atomic_store_ptr(ptr noundef %stop_task_ptr, ptr noundef null)
  %5 = load i32, ptr %status.addr, align 4, !tbaa !21
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %should_continue = getelementptr inbounds %struct.epoll_loop, ptr %6, i32 0, i32 13
  store i8 0, ptr %should_continue, align 1, !tbaa !48
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %epoll_loop) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %event_loop) #12
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @aws_atomic_compare_exchange_ptr_explicit(ptr noundef %var, ptr noundef %expected, ptr noundef %desired, i32 noundef %order_success, i32 noundef %order_failure) #4 {
entry:
  %var.addr = alloca ptr, align 8
  %expected.addr = alloca ptr, align 8
  %desired.addr = alloca ptr, align 8
  %order_success.addr = alloca i32, align 4
  %order_failure.addr = alloca i32, align 4
  %.atomictmp = alloca ptr, align 8
  %cmpxchg.bool = alloca i8, align 1
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !4
  store ptr %desired, ptr %desired.addr, align 8, !tbaa !4
  store i32 %order_success, ptr %order_success.addr, align 4, !tbaa !21
  store i32 %order_failure, ptr %order_failure.addr, align 4, !tbaa !21
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.aws_atomic_var, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %order_success.addr, align 4, !tbaa !21
  %call = call i32 @aws_atomic_priv_xlate_order(i32 noundef %1)
  %2 = load ptr, ptr %expected.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %desired.addr, align 8, !tbaa !4
  store ptr %3, ptr %.atomictmp, align 8, !tbaa !4
  %4 = load i32, ptr %order_failure.addr, align 4, !tbaa !21
  %call1 = call i32 @aws_atomic_priv_xlate_order(i32 noundef %4)
  switch i32 %call, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 3, label %release
    i32 4, label %acqrel
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  switch i32 %call1, label %monotonic_fail [
    i32 1, label %acquire_fail
    i32 2, label %acquire_fail
    i32 5, label %seqcst_fail
  ]

acquire:                                          ; preds = %entry, %entry
  switch i32 %call1, label %monotonic_fail9 [
    i32 1, label %acquire_fail10
    i32 2, label %acquire_fail10
    i32 5, label %seqcst_fail11
  ]

release:                                          ; preds = %entry
  switch i32 %call1, label %monotonic_fail22 [
    i32 1, label %acquire_fail23
    i32 2, label %acquire_fail23
    i32 5, label %seqcst_fail24
  ]

acqrel:                                           ; preds = %entry
  switch i32 %call1, label %monotonic_fail35 [
    i32 1, label %acquire_fail36
    i32 2, label %acquire_fail36
    i32 5, label %seqcst_fail37
  ]

seqcst:                                           ; preds = %entry
  switch i32 %call1, label %monotonic_fail48 [
    i32 1, label %acquire_fail49
    i32 2, label %acquire_fail49
    i32 5, label %seqcst_fail50
  ]

atomic.continue:                                  ; preds = %atomic.continue51, %atomic.continue38, %atomic.continue25, %atomic.continue12, %atomic.continue2
  %5 = load i8, ptr %cmpxchg.bool, align 1, !tbaa !31, !range !62, !noundef !63
  %tobool = trunc i8 %5 to i1
  ret i1 %tobool

monotonic_fail:                                   ; preds = %monotonic
  %6 = load i64, ptr %2, align 8
  %7 = load i64, ptr %.atomictmp, align 8
  %8 = cmpxchg volatile ptr %value, i64 %6, i64 %7 monotonic monotonic, align 8
  %9 = extractvalue { i64, i1 } %8, 0
  %10 = extractvalue { i64, i1 } %8, 1
  br i1 %10, label %cmpxchg.continue, label %cmpxchg.store_expected

acquire_fail:                                     ; preds = %monotonic, %monotonic
  %11 = load i64, ptr %2, align 8
  %12 = load i64, ptr %.atomictmp, align 8
  %13 = cmpxchg volatile ptr %value, i64 %11, i64 %12 monotonic acquire, align 8
  %14 = extractvalue { i64, i1 } %13, 0
  %15 = extractvalue { i64, i1 } %13, 1
  br i1 %15, label %cmpxchg.continue4, label %cmpxchg.store_expected3

seqcst_fail:                                      ; preds = %monotonic
  %16 = load i64, ptr %2, align 8
  %17 = load i64, ptr %.atomictmp, align 8
  %18 = cmpxchg volatile ptr %value, i64 %16, i64 %17 monotonic seq_cst, align 8
  %19 = extractvalue { i64, i1 } %18, 0
  %20 = extractvalue { i64, i1 } %18, 1
  br i1 %20, label %cmpxchg.continue7, label %cmpxchg.store_expected6

atomic.continue2:                                 ; preds = %cmpxchg.continue7, %cmpxchg.continue4, %cmpxchg.continue
  br label %atomic.continue

cmpxchg.store_expected:                           ; preds = %monotonic_fail
  store i64 %9, ptr %2, align 8
  br label %cmpxchg.continue

cmpxchg.continue:                                 ; preds = %cmpxchg.store_expected, %monotonic_fail
  %frombool = zext i1 %10 to i8
  store i8 %frombool, ptr %cmpxchg.bool, align 1, !tbaa !31
  br label %atomic.continue2

cmpxchg.store_expected3:                          ; preds = %acquire_fail
  store i64 %14, ptr %2, align 8
  br label %cmpxchg.continue4

cmpxchg.continue4:                                ; preds = %cmpxchg.store_expected3, %acquire_fail
  %frombool5 = zext i1 %15 to i8
  store i8 %frombool5, ptr %cmpxchg.bool, align 1, !tbaa !31
  br label %atomic.continue2

cmpxchg.store_expected6:                          ; preds = %seqcst_fail
  store i64 %19, ptr %2, align 8
  br label %cmpxchg.continue7

cmpxchg.continue7:                                ; preds = %cmpxchg.store_expected6, %seqcst_fail
  %frombool8 = zext i1 %20 to i8
  store i8 %frombool8, ptr %cmpxchg.bool, align 1, !tbaa !31
  br label %atomic.continue2

monotonic_fail9:                                  ; preds = %acquire
  %21 = load i64, ptr %2, align 8
  %22 = load i64, ptr %.atomictmp, align 8
  %23 = cmpxchg volatile ptr %value, i64 %21, i64 %22 acquire monotonic, align 8
  %24 = extractvalue { i64, i1 } %23, 0
  %25 = extractvalue { i64, i1 } %23, 1
  br i1 %25, label %cmpxchg.continue14, label %cmpxchg.store_expected13

acquire_fail10:                                   ; preds = %acquire, %acquire
  %26 = load i64, ptr %2, align 8
  %27 = load i64, ptr %.atomictmp, align 8
  %28 = cmpxchg volatile ptr %value, i64 %26, i64 %27 acquire acquire, align 8
  %29 = extractvalue { i64, i1 } %28, 0
  %30 = extractvalue { i64, i1 } %28, 1
  br i1 %30, label %cmpxchg.continue17, label %cmpxchg.store_expected16

seqcst_fail11:                                    ; preds = %acquire
  %31 = load i64, ptr %2, align 8
  %32 = load i64, ptr %.atomictmp, align 8
  %33 = cmpxchg volatile ptr %value, i64 %31, i64 %32 acquire seq_cst, align 8
  %34 = extractvalue { i64, i1 } %33, 0
  %35 = extractvalue { i64, i1 } %33, 1
  br i1 %35, label %cmpxchg.continue20, label %cmpxchg.store_expected19

atomic.continue12:                                ; preds = %cmpxchg.continue20, %cmpxchg.continue17, %cmpxchg.continue14
  br label %atomic.continue

cmpxchg.store_expected13:                         ; preds = %monotonic_fail9
  store i64 %24, ptr %2, align 8
  br label %cmpxchg.continue14

cmpxchg.continue14:                               ; preds = %cmpxchg.store_expected13, %monotonic_fail9
  %frombool15 = zext i1 %25 to i8
  store i8 %frombool15, ptr %cmpxchg.bool, align 1, !tbaa !31
  br label %atomic.continue12

cmpxchg.store_expected16:                         ; preds = %acquire_fail10
  store i64 %29, ptr %2, align 8
  br label %cmpxchg.continue17

cmpxchg.continue17:                               ; preds = %cmpxchg.store_expected16, %acquire_fail10
  %frombool18 = zext i1 %30 to i8
  store i8 %frombool18, ptr %cmpxchg.bool, align 1, !tbaa !31
  br label %atomic.continue12

cmpxchg.store_expected19:                         ; preds = %seqcst_fail11
  store i64 %34, ptr %2, align 8
  br label %cmpxchg.continue20

cmpxchg.continue20:                               ; preds = %cmpxchg.store_expected19, %seqcst_fail11
  %frombool21 = zext i1 %35 to i8
  store i8 %frombool21, ptr %cmpxchg.bool, align 1, !tbaa !31
  br label %atomic.continue12

monotonic_fail22:                                 ; preds = %release
  %36 = load i64, ptr %2, align 8
  %37 = load i64, ptr %.atomictmp, align 8
  %38 = cmpxchg volatile ptr %value, i64 %36, i64 %37 release monotonic, align 8
  %39 = extractvalue { i64, i1 } %38, 0
  %40 = extractvalue { i64, i1 } %38, 1
  br i1 %40, label %cmpxchg.continue27, label %cmpxchg.store_expected26

acquire_fail23:                                   ; preds = %release, %release
  %41 = load i64, ptr %2, align 8
  %42 = load i64, ptr %.atomictmp, align 8
  %43 = cmpxchg volatile ptr %value, i64 %41, i64 %42 release acquire, align 8
  %44 = extractvalue { i64, i1 } %43, 0
  %45 = extractvalue { i64, i1 } %43, 1
  br i1 %45, label %cmpxchg.continue30, label %cmpxchg.store_expected29

seqcst_fail24:                                    ; preds = %release
  %46 = load i64, ptr %2, align 8
  %47 = load i64, ptr %.atomictmp, align 8
  %48 = cmpxchg volatile ptr %value, i64 %46, i64 %47 release seq_cst, align 8
  %49 = extractvalue { i64, i1 } %48, 0
  %50 = extractvalue { i64, i1 } %48, 1
  br i1 %50, label %cmpxchg.continue33, label %cmpxchg.store_expected32

atomic.continue25:                                ; preds = %cmpxchg.continue33, %cmpxchg.continue30, %cmpxchg.continue27
  br label %atomic.continue

cmpxchg.store_expected26:                         ; preds = %monotonic_fail22
  store i64 %39, ptr %2, align 8
  br label %cmpxchg.continue27

cmpxchg.continue27:                               ; preds = %cmpxchg.store_expected26, %monotonic_fail22
  %frombool28 = zext i1 %40 to i8
  store i8 %frombool28, ptr %cmpxchg.bool, align 1, !tbaa !31
  br label %atomic.continue25

cmpxchg.store_expected29:                         ; preds = %acquire_fail23
  store i64 %44, ptr %2, align 8
  br label %cmpxchg.continue30

cmpxchg.continue30:                               ; preds = %cmpxchg.store_expected29, %acquire_fail23
  %frombool31 = zext i1 %45 to i8
  store i8 %frombool31, ptr %cmpxchg.bool, align 1, !tbaa !31
  br label %atomic.continue25

cmpxchg.store_expected32:                         ; preds = %seqcst_fail24
  store i64 %49, ptr %2, align 8
  br label %cmpxchg.continue33

cmpxchg.continue33:                               ; preds = %cmpxchg.store_expected32, %seqcst_fail24
  %frombool34 = zext i1 %50 to i8
  store i8 %frombool34, ptr %cmpxchg.bool, align 1, !tbaa !31
  br label %atomic.continue25

monotonic_fail35:                                 ; preds = %acqrel
  %51 = load i64, ptr %2, align 8
  %52 = load i64, ptr %.atomictmp, align 8
  %53 = cmpxchg volatile ptr %value, i64 %51, i64 %52 acq_rel monotonic, align 8
  %54 = extractvalue { i64, i1 } %53, 0
  %55 = extractvalue { i64, i1 } %53, 1
  br i1 %55, label %cmpxchg.continue40, label %cmpxchg.store_expected39

acquire_fail36:                                   ; preds = %acqrel, %acqrel
  %56 = load i64, ptr %2, align 8
  %57 = load i64, ptr %.atomictmp, align 8
  %58 = cmpxchg volatile ptr %value, i64 %56, i64 %57 acq_rel acquire, align 8
  %59 = extractvalue { i64, i1 } %58, 0
  %60 = extractvalue { i64, i1 } %58, 1
  br i1 %60, label %cmpxchg.continue43, label %cmpxchg.store_expected42

seqcst_fail37:                                    ; preds = %acqrel
  %61 = load i64, ptr %2, align 8
  %62 = load i64, ptr %.atomictmp, align 8
  %63 = cmpxchg volatile ptr %value, i64 %61, i64 %62 acq_rel seq_cst, align 8
  %64 = extractvalue { i64, i1 } %63, 0
  %65 = extractvalue { i64, i1 } %63, 1
  br i1 %65, label %cmpxchg.continue46, label %cmpxchg.store_expected45

atomic.continue38:                                ; preds = %cmpxchg.continue46, %cmpxchg.continue43, %cmpxchg.continue40
  br label %atomic.continue

cmpxchg.store_expected39:                         ; preds = %monotonic_fail35
  store i64 %54, ptr %2, align 8
  br label %cmpxchg.continue40

cmpxchg.continue40:                               ; preds = %cmpxchg.store_expected39, %monotonic_fail35
  %frombool41 = zext i1 %55 to i8
  store i8 %frombool41, ptr %cmpxchg.bool, align 1, !tbaa !31
  br label %atomic.continue38

cmpxchg.store_expected42:                         ; preds = %acquire_fail36
  store i64 %59, ptr %2, align 8
  br label %cmpxchg.continue43

cmpxchg.continue43:                               ; preds = %cmpxchg.store_expected42, %acquire_fail36
  %frombool44 = zext i1 %60 to i8
  store i8 %frombool44, ptr %cmpxchg.bool, align 1, !tbaa !31
  br label %atomic.continue38

cmpxchg.store_expected45:                         ; preds = %seqcst_fail37
  store i64 %64, ptr %2, align 8
  br label %cmpxchg.continue46

cmpxchg.continue46:                               ; preds = %cmpxchg.store_expected45, %seqcst_fail37
  %frombool47 = zext i1 %65 to i8
  store i8 %frombool47, ptr %cmpxchg.bool, align 1, !tbaa !31
  br label %atomic.continue38

monotonic_fail48:                                 ; preds = %seqcst
  %66 = load i64, ptr %2, align 8
  %67 = load i64, ptr %.atomictmp, align 8
  %68 = cmpxchg volatile ptr %value, i64 %66, i64 %67 seq_cst monotonic, align 8
  %69 = extractvalue { i64, i1 } %68, 0
  %70 = extractvalue { i64, i1 } %68, 1
  br i1 %70, label %cmpxchg.continue53, label %cmpxchg.store_expected52

acquire_fail49:                                   ; preds = %seqcst, %seqcst
  %71 = load i64, ptr %2, align 8
  %72 = load i64, ptr %.atomictmp, align 8
  %73 = cmpxchg volatile ptr %value, i64 %71, i64 %72 seq_cst acquire, align 8
  %74 = extractvalue { i64, i1 } %73, 0
  %75 = extractvalue { i64, i1 } %73, 1
  br i1 %75, label %cmpxchg.continue56, label %cmpxchg.store_expected55

seqcst_fail50:                                    ; preds = %seqcst
  %76 = load i64, ptr %2, align 8
  %77 = load i64, ptr %.atomictmp, align 8
  %78 = cmpxchg volatile ptr %value, i64 %76, i64 %77 seq_cst seq_cst, align 8
  %79 = extractvalue { i64, i1 } %78, 0
  %80 = extractvalue { i64, i1 } %78, 1
  br i1 %80, label %cmpxchg.continue59, label %cmpxchg.store_expected58

atomic.continue51:                                ; preds = %cmpxchg.continue59, %cmpxchg.continue56, %cmpxchg.continue53
  br label %atomic.continue

cmpxchg.store_expected52:                         ; preds = %monotonic_fail48
  store i64 %69, ptr %2, align 8
  br label %cmpxchg.continue53

cmpxchg.continue53:                               ; preds = %cmpxchg.store_expected52, %monotonic_fail48
  %frombool54 = zext i1 %70 to i8
  store i8 %frombool54, ptr %cmpxchg.bool, align 1, !tbaa !31
  br label %atomic.continue51

cmpxchg.store_expected55:                         ; preds = %acquire_fail49
  store i64 %74, ptr %2, align 8
  br label %cmpxchg.continue56

cmpxchg.continue56:                               ; preds = %cmpxchg.store_expected55, %acquire_fail49
  %frombool57 = zext i1 %75 to i8
  store i8 %frombool57, ptr %cmpxchg.bool, align 1, !tbaa !31
  br label %atomic.continue51

cmpxchg.store_expected58:                         ; preds = %seqcst_fail50
  store i64 %79, ptr %2, align 8
  br label %cmpxchg.continue59

cmpxchg.continue59:                               ; preds = %cmpxchg.store_expected58, %seqcst_fail50
  %frombool60 = zext i1 %80 to i8
  store i8 %frombool60, ptr %cmpxchg.bool, align 1, !tbaa !31
  br label %atomic.continue51
}

declare i32 @aws_thread_join(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @s_schedule_task_common(ptr noundef %event_loop, ptr noundef %task, i64 noundef %run_at_nanos) #0 {
entry:
  %event_loop.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %run_at_nanos.addr = alloca i64, align 8
  %epoll_loop = alloca ptr, align 8
  %logger = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %logger13 = alloca ptr, align 8
  %counter = alloca i64, align 8
  %is_first_task = alloca i8, align 1
  %logger33 = alloca ptr, align 8
  %do_not_care = alloca i64, align 8
  store ptr %event_loop, ptr %event_loop.addr, align 8, !tbaa !4
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  store i64 %run_at_nanos, ptr %run_at_nanos.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %epoll_loop) #12
  %0 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %impl_data = getelementptr inbounds %struct.aws_event_loop, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %impl_data, align 8, !tbaa !49
  store ptr %1, ptr %epoll_loop, align 8, !tbaa !4
  %2 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %call = call zeroext i1 @s_is_on_callers_thread(ptr noundef %2)
  br i1 %call, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger) #12
  %call1 = call ptr @aws_logger_get()
  store ptr %call1, ptr %logger, align 8, !tbaa !4
  %3 = load ptr, ptr %logger, align 8, !tbaa !4
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %4 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable = getelementptr inbounds %struct.aws_logger, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %vtable, align 8, !tbaa !8
  %get_log_level = getelementptr inbounds %struct.aws_logger_vtable, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %get_log_level, align 8, !tbaa !10
  %7 = load ptr, ptr %logger, align 8, !tbaa !4
  %call2 = call i32 %6(ptr noundef %7, i32 noundef 1025)
  %cmp3 = icmp uge i32 %call2, 6
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %logger, align 8, !tbaa !4
  %vtable5 = getelementptr inbounds %struct.aws_logger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %vtable5, align 8, !tbaa !8
  %log = getelementptr inbounds %struct.aws_logger_vtable, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %log, align 8, !tbaa !12
  %11 = load ptr, ptr %logger, align 8, !tbaa !4
  %12 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %14 = load i64, ptr %run_at_nanos.addr, align 8, !tbaa !17
  %call6 = call i32 (ptr, i32, i32, ptr, ...) %10(ptr noundef %11, i32 noundef 6, i32 noundef 1025, ptr noundef @.str.24, ptr noundef %12, ptr noundef %13, i64 noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger) #12
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %15 = load i64, ptr %run_at_nanos.addr, align 8, !tbaa !17
  %cmp7 = icmp eq i64 %15, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %do.end
  %16 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %scheduler = getelementptr inbounds %struct.epoll_loop, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %task.addr, align 8, !tbaa !4
  call void @aws_task_scheduler_schedule_now(ptr noundef %scheduler, ptr noundef %17)
  br label %if.end10

if.else:                                          ; preds = %do.end
  %18 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %scheduler9 = getelementptr inbounds %struct.epoll_loop, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %20 = load i64, ptr %run_at_nanos.addr, align 8, !tbaa !17
  call void @aws_task_scheduler_schedule_future(ptr noundef %scheduler9, ptr noundef %19, i64 noundef %20)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %entry
  br label %do.body12

do.body12:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger13) #12
  %call14 = call ptr @aws_logger_get()
  store ptr %call14, ptr %logger13, align 8, !tbaa !4
  %21 = load ptr, ptr %logger13, align 8, !tbaa !4
  %cmp15 = icmp ne ptr %21, null
  br i1 %cmp15, label %land.lhs.true16, label %if.end25

land.lhs.true16:                                  ; preds = %do.body12
  %22 = load ptr, ptr %logger13, align 8, !tbaa !4
  %vtable17 = getelementptr inbounds %struct.aws_logger, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %vtable17, align 8, !tbaa !8
  %get_log_level18 = getelementptr inbounds %struct.aws_logger_vtable, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %get_log_level18, align 8, !tbaa !10
  %25 = load ptr, ptr %logger13, align 8, !tbaa !4
  %call19 = call i32 %24(ptr noundef %25, i32 noundef 1025)
  %cmp20 = icmp uge i32 %call19, 6
  br i1 %cmp20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %land.lhs.true16
  %26 = load ptr, ptr %logger13, align 8, !tbaa !4
  %vtable22 = getelementptr inbounds %struct.aws_logger, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %vtable22, align 8, !tbaa !8
  %log23 = getelementptr inbounds %struct.aws_logger_vtable, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %log23, align 8, !tbaa !12
  %29 = load ptr, ptr %logger13, align 8, !tbaa !4
  %30 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %32 = load i64, ptr %run_at_nanos.addr, align 8, !tbaa !17
  %call24 = call i32 (ptr, i32, i32, ptr, ...) %28(ptr noundef %29, i32 noundef 6, i32 noundef 1025, ptr noundef @.str.25, ptr noundef %30, ptr noundef %31, i64 noundef %32)
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %land.lhs.true16, %do.body12
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger13) #12
  br label %do.cond26

do.cond26:                                        ; preds = %if.end25
  br label %do.end27

do.end27:                                         ; preds = %do.cond26
  %33 = load i64, ptr %run_at_nanos.addr, align 8, !tbaa !17
  %34 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %timestamp = getelementptr inbounds %struct.aws_task, ptr %34, i32 0, i32 2
  store i64 %33, ptr %timestamp, align 8, !tbaa !76
  %35 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %task_pre_queue_mutex = getelementptr inbounds %struct.epoll_loop, ptr %35, i32 0, i32 7
  %call28 = call i32 @aws_mutex_lock(ptr noundef %task_pre_queue_mutex)
  call void @llvm.lifetime.start.p0(i64 8, ptr %counter) #12
  store i64 1, ptr %counter, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_first_task) #12
  %36 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %task_pre_queue = getelementptr inbounds %struct.epoll_loop, ptr %36, i32 0, i32 8
  %call29 = call zeroext i1 @aws_linked_list_empty(ptr noundef %task_pre_queue)
  %frombool = zext i1 %call29 to i8
  store i8 %frombool, ptr %is_first_task, align 1, !tbaa !31
  %37 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %task_pre_queue30 = getelementptr inbounds %struct.epoll_loop, ptr %37, i32 0, i32 8
  %38 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %node = getelementptr inbounds %struct.aws_task, ptr %38, i32 0, i32 3
  call void @aws_linked_list_push_back(ptr noundef %task_pre_queue30, ptr noundef %node)
  %39 = load i8, ptr %is_first_task, align 1, !tbaa !31, !range !62, !noundef !63
  %tobool = trunc i8 %39 to i1
  br i1 %tobool, label %if.then31, label %if.end49

if.then31:                                        ; preds = %do.end27
  br label %do.body32

do.body32:                                        ; preds = %if.then31
  call void @llvm.lifetime.start.p0(i64 8, ptr %logger33) #12
  %call34 = call ptr @aws_logger_get()
  store ptr %call34, ptr %logger33, align 8, !tbaa !4
  %40 = load ptr, ptr %logger33, align 8, !tbaa !4
  %cmp35 = icmp ne ptr %40, null
  br i1 %cmp35, label %land.lhs.true36, label %if.end45

land.lhs.true36:                                  ; preds = %do.body32
  %41 = load ptr, ptr %logger33, align 8, !tbaa !4
  %vtable37 = getelementptr inbounds %struct.aws_logger, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %vtable37, align 8, !tbaa !8
  %get_log_level38 = getelementptr inbounds %struct.aws_logger_vtable, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %get_log_level38, align 8, !tbaa !10
  %44 = load ptr, ptr %logger33, align 8, !tbaa !4
  %call39 = call i32 %43(ptr noundef %44, i32 noundef 1025)
  %cmp40 = icmp uge i32 %call39, 6
  br i1 %cmp40, label %if.then41, label %if.end45

if.then41:                                        ; preds = %land.lhs.true36
  %45 = load ptr, ptr %logger33, align 8, !tbaa !4
  %vtable42 = getelementptr inbounds %struct.aws_logger, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %vtable42, align 8, !tbaa !8
  %log43 = getelementptr inbounds %struct.aws_logger_vtable, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %log43, align 8, !tbaa !12
  %48 = load ptr, ptr %logger33, align 8, !tbaa !4
  %49 = load ptr, ptr %event_loop.addr, align 8, !tbaa !4
  %call44 = call i32 (ptr, i32, i32, ptr, ...) %47(ptr noundef %48, i32 noundef 6, i32 noundef 1025, ptr noundef @.str.26, ptr noundef %49)
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %land.lhs.true36, %do.body32
  call void @llvm.lifetime.end.p0(i64 8, ptr %logger33) #12
  br label %do.cond46

do.cond46:                                        ; preds = %if.end45
  br label %do.end47

do.end47:                                         ; preds = %do.cond46
  call void @llvm.lifetime.start.p0(i64 8, ptr %do_not_care) #12
  %50 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %write_task_handle = getelementptr inbounds %struct.epoll_loop, ptr %50, i32 0, i32 6
  %data = getelementptr inbounds %struct.aws_io_handle, ptr %write_task_handle, i32 0, i32 0
  %51 = load i32, ptr %data, align 8, !tbaa !21
  %call48 = call i64 @write(i32 noundef %51, ptr noundef %counter, i64 noundef 8)
  store i64 %call48, ptr %do_not_care, align 8, !tbaa !17
  %52 = load i64, ptr %do_not_care, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 8, ptr %do_not_care) #12
  br label %if.end49

if.end49:                                         ; preds = %do.end47, %do.end27
  %53 = load ptr, ptr %epoll_loop, align 8, !tbaa !4
  %task_pre_queue_mutex50 = getelementptr inbounds %struct.epoll_loop, ptr %53, i32 0, i32 7
  %call51 = call i32 @aws_mutex_unlock(ptr noundef %task_pre_queue_mutex50)
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_first_task) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr %counter) #12
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end10
  call void @llvm.lifetime.end.p0(i64 8, ptr %epoll_loop) #12
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

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_linked_list_push_back(ptr noundef %list, ptr noundef %node) #4 {
entry:
  %list.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !4
  store ptr %node, ptr %node.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %list.addr, align 8, !tbaa !4
  %tail = getelementptr inbounds %struct.aws_linked_list, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %node.addr, align 8, !tbaa !4
  call void @aws_linked_list_insert_before(ptr noundef %tail, ptr noundef %1)
  ret void
}

declare i64 @write(i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @aws_linked_list_insert_before(ptr noundef %before, ptr noundef %to_add) #4 {
entry:
  %before.addr = alloca ptr, align 8
  %to_add.addr = alloca ptr, align 8
  store ptr %before, ptr %before.addr, align 8, !tbaa !4
  store ptr %to_add, ptr %to_add.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %before.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %to_add.addr, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.aws_linked_list_node, ptr %1, i32 0, i32 0
  store ptr %0, ptr %next, align 8, !tbaa !72
  %2 = load ptr, ptr %before.addr, align 8, !tbaa !4
  %prev = getelementptr inbounds %struct.aws_linked_list_node, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %prev, align 8, !tbaa !73
  %4 = load ptr, ptr %to_add.addr, align 8, !tbaa !4
  %prev1 = getelementptr inbounds %struct.aws_linked_list_node, ptr %4, i32 0, i32 1
  store ptr %3, ptr %prev1, align 8, !tbaa !73
  %5 = load ptr, ptr %to_add.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %before.addr, align 8, !tbaa !4
  %prev2 = getelementptr inbounds %struct.aws_linked_list_node, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %prev2, align 8, !tbaa !73
  %next3 = getelementptr inbounds %struct.aws_linked_list_node, ptr %7, i32 0, i32 0
  store ptr %5, ptr %next3, align 8, !tbaa !72
  %8 = load ptr, ptr %to_add.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %before.addr, align 8, !tbaa !4
  %prev4 = getelementptr inbounds %struct.aws_linked_list_node, ptr %9, i32 0, i32 1
  store ptr %8, ptr %prev4, align 8, !tbaa !73
  ret void
}

declare void @aws_task_scheduler_cancel_task(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @epoll_ctl(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: nounwind uwtable
define internal void @s_unsubscribe_cleanup_task(ptr noundef %task, ptr noundef %arg, i32 noundef %status) #0 {
entry:
  %task.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %event_data = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  store i32 %status, ptr %status.addr, align 4, !tbaa !21
  %0 = load ptr, ptr %task.addr, align 8, !tbaa !4
  %1 = load i32, ptr %status.addr, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %event_data) #12
  %2 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  store ptr %2, ptr %event_data, align 8, !tbaa !4
  %3 = load ptr, ptr %event_data, align 8, !tbaa !4
  call void @s_free_io_event_resources(ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %event_data) #12
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @aws_atomic_load_ptr(ptr noundef %var) #4 {
entry:
  %var.addr = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %call = call ptr @aws_atomic_load_ptr_explicit(ptr noundef %0, i32 noundef 5)
  ret ptr %call
}

declare zeroext i1 @aws_thread_thread_id_equal(i64 noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @aws_atomic_load_ptr_explicit(ptr noundef %var, i32 noundef %memory_order) #4 {
entry:
  %var.addr = alloca ptr, align 8
  %memory_order.addr = alloca i32, align 4
  %atomic-temp = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8, !tbaa !4
  store i32 %memory_order, ptr %memory_order.addr, align 4, !tbaa !21
  %0 = load ptr, ptr %var.addr, align 8, !tbaa !4
  %value = getelementptr inbounds %struct.aws_atomic_var, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %memory_order.addr, align 4, !tbaa !21
  %call = call i32 @aws_atomic_priv_xlate_order(i32 noundef %1)
  switch i32 %call, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 5, label %seqcst
  ]

monotonic:                                        ; preds = %entry
  %2 = load atomic volatile i64, ptr %value monotonic, align 8
  store i64 %2, ptr %atomic-temp, align 8
  br label %atomic.continue

acquire:                                          ; preds = %entry, %entry
  %3 = load atomic volatile i64, ptr %value acquire, align 8
  store i64 %3, ptr %atomic-temp, align 8
  br label %atomic.continue

seqcst:                                           ; preds = %entry
  %4 = load atomic volatile i64, ptr %value seq_cst, align 8
  store i64 %4, ptr %atomic-temp, align 8
  br label %atomic.continue

atomic.continue:                                  ; preds = %seqcst, %acquire, %monotonic
  %5 = load ptr, ptr %atomic-temp, align 8, !tbaa !4
  ret ptr %5
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn }

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
!8 = !{!9, !5, i64 0}
!9 = !{!"aws_logger", !5, i64 0, !5, i64 8, !5, i64 16}
!10 = !{!11, !5, i64 8}
!11 = !{!"aws_logger_vtable", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!12 = !{!11, !5, i64 0}
!13 = !{!14, !5, i64 0}
!14 = !{!"aws_event_loop_options", !5, i64 0, !5, i64 8}
!15 = !{!14, !5, i64 8}
!16 = !{i64 0, i64 8, !17, i64 8, i64 4, !19, i64 12, i64 4, !21, i64 16, i64 8, !17, i64 24, i64 8, !4}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !6, i64 0}
!21 = !{!6, !6, i64 0}
!22 = !{!23, !20, i64 16}
!23 = !{!"__pthread_mutex_s", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !24, i64 20, !24, i64 22, !25, i64 24}
!24 = !{!"short", !6, i64 0}
!25 = !{!"__pthread_internal_list", !5, i64 0, !5, i64 8}
!26 = !{!27, !28, i64 40}
!27 = !{!"aws_mutex", !6, i64 0, !28, i64 40}
!28 = !{!"_Bool", !6, i64 0}
!29 = !{i64 0, i64 4, !19, i64 4, i64 4, !19, i64 8, i64 4, !19, i64 12, i64 4, !19, i64 16, i64 4, !19, i64 20, i64 2, !30, i64 22, i64 2, !30, i64 24, i64 8, !4, i64 32, i64 8, !4, i64 0, i64 40, !21, i64 0, i64 8, !17, i64 40, i64 1, !31}
!30 = !{!24, !24, i64 0}
!31 = !{!28, !28, i64 0}
!32 = !{!33, !20, i64 416}
!33 = !{!"epoll_loop", !34, i64 0, !39, i64 160, !40, i64 184, !18, i64 216, !42, i64 224, !43, i64 232, !43, i64 248, !27, i64 264, !37, i64 312, !44, i64 344, !42, i64 408, !20, i64 416, !28, i64 420, !28, i64 421}
!34 = !{!"aws_task_scheduler", !5, i64 0, !35, i64 8, !37, i64 96, !37, i64 128}
!35 = !{!"aws_priority_queue", !5, i64 0, !36, i64 8, !36, i64 48}
!36 = !{!"aws_array_list", !5, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !5, i64 32}
!37 = !{!"aws_linked_list", !38, i64 0, !38, i64 16}
!38 = !{!"aws_linked_list_node", !5, i64 0, !5, i64 8}
!39 = !{!"aws_thread", !5, i64 0, !6, i64 8, !18, i64 16}
!40 = !{!"aws_thread_options", !18, i64 0, !20, i64 8, !6, i64 12, !41, i64 16}
!41 = !{!"aws_byte_cursor", !18, i64 0, !5, i64 8}
!42 = !{!"aws_atomic_var", !5, i64 0}
!43 = !{!"aws_io_handle", !6, i64 0, !5, i64 8}
!44 = !{!"aws_task", !5, i64 0, !5, i64 8, !18, i64 16, !38, i64 24, !45, i64 40, !5, i64 48, !6, i64 56}
!45 = !{!"aws_priority_queue_node", !18, i64 0}
!46 = !{!43, !5, i64 8}
!47 = !{i64 0, i64 4, !19, i64 0, i64 8, !4, i64 8, i64 8, !4}
!48 = !{!33, !28, i64 421}
!49 = !{!50, !5, i64 64}
!50 = !{!"aws_event_loop", !5, i64 0, !5, i64 8, !5, i64 16, !51, i64 24, !42, i64 32, !18, i64 40, !18, i64 48, !42, i64 56, !5, i64 64}
!51 = !{!"aws_hash_table", !5, i64 0}
!52 = !{!50, !5, i64 0}
!53 = !{!42, !5, i64 0}
!54 = !{!37, !5, i64 0}
!55 = !{!37, !5, i64 8}
!56 = !{!37, !5, i64 24}
!57 = !{!37, !5, i64 16}
!58 = !{!33, !18, i64 216}
!59 = !{!44, !5, i64 0}
!60 = !{!44, !5, i64 8}
!61 = !{!50, !5, i64 8}
!62 = !{i8 0, i8 2}
!63 = !{}
!64 = !{!65, !5, i64 0}
!65 = !{!"epoll_event_data", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !44, i64 32, !28, i64 96}
!66 = !{!65, !5, i64 24}
!67 = !{!65, !5, i64 8}
!68 = !{!65, !5, i64 16}
!69 = !{!65, !28, i64 96}
!70 = !{!71, !20, i64 0}
!71 = !{!"epoll_event", !20, i64 0, !6, i64 4}
!72 = !{!38, !5, i64 0}
!73 = !{!38, !5, i64 8}
!74 = !{!50, !5, i64 16}
!75 = !{!33, !28, i64 420}
!76 = !{!44, !18, i64 16}
