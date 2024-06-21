; ModuleID = 'samples/118.bc'
source_filename = "/local-ssd/sicm-4ehu3pb3d2buvjdr6e6fvsbisdcqkltc-build/aidengro/spack-stage-sicm-master-4ehu3pb3d2buvjdr6e6fvsbisdcqkltc/spack-src/src/low/sicm_arena.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.extent_hooks_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.pthread_mutexattr_t = type { i32 }
%struct.sicm_device_list = type { i32, ptr }
%struct.sarena = type { ptr, i32, %struct.sicm_device_list, i64, i64, ptr, ptr, i32, %struct.extent_hooks_s, ptr, i32, i32 }
%struct.extent_arr = type { %union.pthread_mutex_t, i64, i64, i64, ptr }
%struct.sicm_arena_list = type { i32, ptr }
%struct.extent_info = type { ptr, ptr, ptr }
%struct.bitmask = type { i64, ptr }

@.str = private unnamed_addr constant [17 x i8] c"arena.%u.destroy\00", align 1
@sa_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@sa_num = internal global i32 0, align 4
@sa_list = internal global ptr null, align 8
@sa_default_key = internal global i32 0, align 4
@sa_lookup_mib = internal global [2 x i64] zeroinitializer, align 16
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"can't setup hooks: %d\0A\00", align 1
@sa_init = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"what?\00", align 1
@sicm_arena_mmap_hooks = external global %struct.extent_hooks_s, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"arenas.create\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"can't create an arena: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"arenas.lookup\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"can't get mib: %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define ptr @sicm_arena_create(i64 noundef %sz, i32 noundef %flags, ptr noundef %devs) #0 {
entry:
  %sz.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %devs.addr = alloca ptr, align 8
  store i64 %sz, ptr %sz.addr, align 8, !tbaa !4
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !8
  store ptr %devs, ptr %devs.addr, align 8, !tbaa !9
  %0 = load i64, ptr %sz.addr, align 8, !tbaa !4
  %1 = load i32, ptr %flags.addr, align 4, !tbaa !8
  %2 = load ptr, ptr %devs.addr, align 8, !tbaa !9
  %call = call ptr @sicm_arena_new(i64 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef -1, i64 noundef 0, i32 noundef -1, i64 noundef 0)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define internal ptr @sicm_arena_new(i64 noundef %sz, i32 noundef %flags, ptr noundef %devs, i32 noundef %fd, i64 noundef %offset, i32 noundef %mutexfd, i64 noundef %mutexoff) #0 {
entry:
  %retval = alloca ptr, align 8
  %sz.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %devs.addr = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %mutexfd.addr = alloca i32, align 4
  %mutexoff.addr = alloca i64, align 8
  %err = alloca i32, align 4
  %cpgsz = alloca i32, align 4
  %sa = alloca ptr, align 8
  %arena_ind_sz = alloca i64, align 8
  %new_hooks = alloca ptr, align 8
  %arena_ind = alloca i32, align 4
  %attr = alloca %union.pthread_mutexattr_t, align 4
  %nodemask = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  store i64 %sz, ptr %sz.addr, align 8, !tbaa !4
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !8
  store ptr %devs, ptr %devs.addr, align 8, !tbaa !9
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !11
  store i64 %offset, ptr %offset.addr, align 8, !tbaa !4
  store i32 %mutexfd, ptr %mutexfd.addr, align 4, !tbaa !11
  store i64 %mutexoff, ptr %mutexoff.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpgsz) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %sa) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %arena_ind_sz) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_hooks) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %arena_ind) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %attr) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %nodemask) #9
  %call = call i32 @pthread_once(ptr noundef @sa_init, ptr noundef @sarena_init)
  %0 = load ptr, ptr %devs.addr, align 8, !tbaa !9
  %call1 = call ptr @sicm_device_list_check_numa(ptr noundef %0)
  store ptr %call1, ptr %nodemask, align 8, !tbaa !9
  %1 = load ptr, ptr %nodemask, align 8, !tbaa !9
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %devs.addr, align 8, !tbaa !9
  %count = getelementptr inbounds %struct.sicm_device_list, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %count, align 8, !tbaa !13
  %cmp2 = icmp ugt i32 %3, 1
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 1, ptr %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %4 = load i32, ptr %i, align 4, !tbaa !11
  %5 = load ptr, ptr %devs.addr, align 8, !tbaa !9
  %count4 = getelementptr inbounds %struct.sicm_device_list, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %count4, align 8, !tbaa !13
  %cmp5 = icmp ult i32 %4, %6
  br i1 %cmp5, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !tbaa !11
  %inc = add i32 %7, 1
  store i32 %inc, ptr %i, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  br label %if.end6

if.end6:                                          ; preds = %for.end, %if.end
  %call7 = call noalias ptr @malloc(i64 noundef 160) #10
  store ptr %call7, ptr %sa, align 8, !tbaa !9
  %8 = load ptr, ptr %sa, align 8, !tbaa !9
  %cmp8 = icmp eq ptr %8, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %9 = load i32, ptr %flags.addr, align 4, !tbaa !8
  %10 = load ptr, ptr %sa, align 8, !tbaa !9
  %flags11 = getelementptr inbounds %struct.sarena, ptr %10, i32 0, i32 1
  store i32 %9, ptr %flags11, align 8, !tbaa !15
  %11 = load ptr, ptr %devs.addr, align 8, !tbaa !9
  %count12 = getelementptr inbounds %struct.sicm_device_list, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %count12, align 8, !tbaa !13
  %13 = load ptr, ptr %sa, align 8, !tbaa !9
  %devs13 = getelementptr inbounds %struct.sarena, ptr %13, i32 0, i32 2
  %count14 = getelementptr inbounds %struct.sicm_device_list, ptr %devs13, i32 0, i32 0
  store i32 %12, ptr %count14, align 8, !tbaa !18
  %14 = load ptr, ptr %devs.addr, align 8, !tbaa !9
  %count15 = getelementptr inbounds %struct.sicm_device_list, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %count15, align 8, !tbaa !13
  %conv = zext i32 %15 to i64
  %mul = mul i64 %conv, 8
  %call16 = call noalias ptr @malloc(i64 noundef %mul) #10
  %16 = load ptr, ptr %sa, align 8, !tbaa !9
  %devs17 = getelementptr inbounds %struct.sarena, ptr %16, i32 0, i32 2
  %devices = getelementptr inbounds %struct.sicm_device_list, ptr %devs17, i32 0, i32 1
  store ptr %call16, ptr %devices, align 8, !tbaa !19
  %17 = load ptr, ptr %sa, align 8, !tbaa !9
  %devs18 = getelementptr inbounds %struct.sarena, ptr %17, i32 0, i32 2
  %devices19 = getelementptr inbounds %struct.sicm_device_list, ptr %devs18, i32 0, i32 1
  %18 = load ptr, ptr %devices19, align 8, !tbaa !19
  %cmp20 = icmp eq ptr %18, null
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end10
  %19 = load ptr, ptr %sa, align 8, !tbaa !9
  call void @free(ptr noundef %19) #9
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end10
  %20 = load ptr, ptr %sa, align 8, !tbaa !9
  %devs24 = getelementptr inbounds %struct.sarena, ptr %20, i32 0, i32 2
  %devices25 = getelementptr inbounds %struct.sicm_device_list, ptr %devs24, i32 0, i32 1
  %21 = load ptr, ptr %devices25, align 8, !tbaa !19
  %22 = load ptr, ptr %devs.addr, align 8, !tbaa !9
  %devices26 = getelementptr inbounds %struct.sicm_device_list, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %devices26, align 8, !tbaa !20
  %24 = load ptr, ptr %devs.addr, align 8, !tbaa !9
  %count27 = getelementptr inbounds %struct.sicm_device_list, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %count27, align 8, !tbaa !13
  %conv28 = zext i32 %25 to i64
  %mul29 = mul i64 %conv28, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %21, ptr align 8 %23, i64 %mul29, i1 false)
  %26 = load i32, ptr %mutexfd.addr, align 4, !tbaa !11
  %cmp30 = icmp eq i32 %26, -1
  %27 = zext i1 %cmp30 to i64
  %cond = select i1 %cmp30, i32 34, i32 1
  %28 = load i32, ptr %mutexfd.addr, align 4, !tbaa !11
  %29 = load i64, ptr %mutexoff.addr, align 8, !tbaa !4
  %call32 = call ptr @mmap(ptr noundef null, i64 noundef 40, i32 noundef 3, i32 noundef %cond, i32 noundef %28, i64 noundef %29) #9
  %30 = load ptr, ptr %sa, align 8, !tbaa !9
  %mutex = getelementptr inbounds %struct.sarena, ptr %30, i32 0, i32 0
  store ptr %call32, ptr %mutex, align 8, !tbaa !21
  %31 = load ptr, ptr %sa, align 8, !tbaa !9
  %mutex33 = getelementptr inbounds %struct.sarena, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %mutex33, align 8, !tbaa !21
  %cmp34 = icmp eq ptr %32, inttoptr (i64 -1 to ptr)
  br i1 %cmp34, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end23
  call void @perror(ptr noundef @.str.2)
  %33 = load ptr, ptr %sa, align 8, !tbaa !9
  %devs37 = getelementptr inbounds %struct.sarena, ptr %33, i32 0, i32 2
  %devices38 = getelementptr inbounds %struct.sicm_device_list, ptr %devs37, i32 0, i32 1
  %34 = load ptr, ptr %devices38, align 8, !tbaa !19
  call void @free(ptr noundef %34) #9
  %35 = load ptr, ptr %sa, align 8, !tbaa !9
  call void @free(ptr noundef %35) #9
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end39:                                         ; preds = %if.end23
  %call40 = call i32 @pthread_mutexattr_init(ptr noundef %attr) #9
  %36 = load i32, ptr %mutexfd.addr, align 4, !tbaa !11
  %cmp41 = icmp sge i32 %36, 0
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end39
  %call44 = call i32 @pthread_mutexattr_setpshared(ptr noundef %attr, i32 noundef 1) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end39
  %37 = load ptr, ptr %sa, align 8, !tbaa !9
  %mutex46 = getelementptr inbounds %struct.sarena, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %mutex46, align 8, !tbaa !21
  %call47 = call i32 @pthread_mutex_init(ptr noundef %38, ptr noundef %attr) #9
  %39 = load ptr, ptr %sa, align 8, !tbaa !9
  %size = getelementptr inbounds %struct.sarena, ptr %39, i32 0, i32 4
  store i64 0, ptr %size, align 8, !tbaa !22
  %40 = load i64, ptr %sz.addr, align 8, !tbaa !4
  %41 = load ptr, ptr %sa, align 8, !tbaa !9
  %maxsize = getelementptr inbounds %struct.sarena, ptr %41, i32 0, i32 3
  store i64 %40, ptr %maxsize, align 8, !tbaa !23
  %42 = load ptr, ptr %nodemask, align 8, !tbaa !9
  %43 = load ptr, ptr %sa, align 8, !tbaa !9
  %nodemask48 = getelementptr inbounds %struct.sarena, ptr %43, i32 0, i32 5
  store ptr %42, ptr %nodemask48, align 8, !tbaa !24
  %44 = load ptr, ptr %sa, align 8, !tbaa !9
  %fd49 = getelementptr inbounds %struct.sarena, ptr %44, i32 0, i32 11
  store i32 -1, ptr %fd49, align 4, !tbaa !25
  %call50 = call ptr @extent_arr_init()
  %45 = load ptr, ptr %sa, align 8, !tbaa !9
  %extents = getelementptr inbounds %struct.sarena, ptr %45, i32 0, i32 9
  store ptr %call50, ptr %extents, align 8, !tbaa !26
  %46 = load ptr, ptr %sa, align 8, !tbaa !9
  %hooks = getelementptr inbounds %struct.sarena, ptr %46, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %hooks, ptr align 8 @sicm_arena_mmap_hooks, i64 72, i1 false), !tbaa.struct !27
  %47 = load ptr, ptr %sa, align 8, !tbaa !9
  %hooks51 = getelementptr inbounds %struct.sarena, ptr %47, i32 0, i32 8
  store ptr %hooks51, ptr %new_hooks, align 8, !tbaa !9
  store i64 4, ptr %arena_ind_sz, align 8, !tbaa !4
  store i32 -1, ptr %arena_ind, align 4, !tbaa !11
  %call52 = call i32 @je_mallctl(ptr noundef @.str.3, ptr noundef %arena_ind, ptr noundef %arena_ind_sz, ptr noundef %new_hooks, i64 noundef 8) #9
  store i32 %call52, ptr %err, align 4, !tbaa !11
  %48 = load i32, ptr %err, align 4, !tbaa !11
  %cmp53 = icmp ne i32 %48, 0
  br i1 %cmp53, label %if.then55, label %if.end63

if.then55:                                        ; preds = %if.end45
  %49 = load ptr, ptr @stderr, align 8, !tbaa !9
  %50 = load i32, ptr %err, align 4, !tbaa !11
  %call56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.4, i32 noundef %50)
  %51 = load ptr, ptr %sa, align 8, !tbaa !9
  %mutex57 = getelementptr inbounds %struct.sarena, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %mutex57, align 8, !tbaa !21
  %call58 = call i32 @pthread_mutex_destroy(ptr noundef %52) #9
  %53 = load ptr, ptr %sa, align 8, !tbaa !9
  %mutex59 = getelementptr inbounds %struct.sarena, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %mutex59, align 8, !tbaa !21
  %call60 = call i32 @munmap(ptr noundef %54, i64 noundef 40) #9
  %55 = load ptr, ptr %sa, align 8, !tbaa !9
  %devs61 = getelementptr inbounds %struct.sarena, ptr %55, i32 0, i32 2
  %devices62 = getelementptr inbounds %struct.sicm_device_list, ptr %devs61, i32 0, i32 1
  %56 = load ptr, ptr %devices62, align 8, !tbaa !19
  call void @free(ptr noundef %56) #9
  %57 = load ptr, ptr %sa, align 8, !tbaa !9
  call void @free(ptr noundef %57) #9
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end63:                                         ; preds = %if.end45
  %58 = load i32, ptr %arena_ind, align 4, !tbaa !11
  %59 = load ptr, ptr %sa, align 8, !tbaa !9
  %arena_ind64 = getelementptr inbounds %struct.sarena, ptr %59, i32 0, i32 7
  store i32 %58, ptr %arena_ind64, align 8, !tbaa !28
  %60 = load i64, ptr %offset.addr, align 8, !tbaa !4
  %61 = load ptr, ptr %sa, align 8, !tbaa !9
  %size65 = getelementptr inbounds %struct.sarena, ptr %61, i32 0, i32 4
  store i64 %60, ptr %size65, align 8, !tbaa !22
  %62 = load i32, ptr %fd.addr, align 4, !tbaa !11
  %63 = load ptr, ptr %sa, align 8, !tbaa !9
  %fd66 = getelementptr inbounds %struct.sarena, ptr %63, i32 0, i32 11
  store i32 %62, ptr %fd66, align 4, !tbaa !25
  %call67 = call i32 @pthread_mutex_lock(ptr noundef @sa_mutex) #9
  %64 = load ptr, ptr @sa_list, align 8, !tbaa !9
  %65 = load ptr, ptr %sa, align 8, !tbaa !9
  %next = getelementptr inbounds %struct.sarena, ptr %65, i32 0, i32 6
  store ptr %64, ptr %next, align 8, !tbaa !29
  %66 = load ptr, ptr %sa, align 8, !tbaa !9
  store ptr %66, ptr @sa_list, align 8, !tbaa !9
  %67 = load i32, ptr @sa_num, align 4, !tbaa !11
  %inc68 = add nsw i32 %67, 1
  store i32 %inc68, ptr @sa_num, align 4, !tbaa !11
  %call69 = call i32 @pthread_mutex_unlock(ptr noundef @sa_mutex) #9
  %68 = load ptr, ptr %sa, align 8, !tbaa !9
  store ptr %68, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.then55, %if.then36, %if.then22, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nodemask) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %attr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %arena_ind) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_hooks) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %arena_ind_sz) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %sa) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpgsz) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9
  %69 = load ptr, ptr %retval, align 8
  ret ptr %69
}

; Function Attrs: nounwind uwtable
define ptr @sicm_arena_create_mmapped(i64 noundef %sz, i32 noundef %flags, ptr noundef %devs, i32 noundef %fd, i64 noundef %offset, i32 noundef %mutex_fd, i64 noundef %mutex_offset) #0 {
entry:
  %sz.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %devs.addr = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %mutex_fd.addr = alloca i32, align 4
  %mutex_offset.addr = alloca i64, align 8
  store i64 %sz, ptr %sz.addr, align 8, !tbaa !4
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !8
  store ptr %devs, ptr %devs.addr, align 8, !tbaa !9
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !11
  store i64 %offset, ptr %offset.addr, align 8, !tbaa !4
  store i32 %mutex_fd, ptr %mutex_fd.addr, align 4, !tbaa !11
  store i64 %mutex_offset, ptr %mutex_offset.addr, align 8, !tbaa !4
  %0 = load i64, ptr %sz.addr, align 8, !tbaa !4
  %1 = load i32, ptr %flags.addr, align 4, !tbaa !8
  %2 = load ptr, ptr %devs.addr, align 8, !tbaa !9
  %3 = load i32, ptr %fd.addr, align 4, !tbaa !11
  %4 = load i64, ptr %offset.addr, align 8, !tbaa !4
  %5 = load i32, ptr %mutex_fd.addr, align 4, !tbaa !11
  %6 = load i64, ptr %mutex_offset.addr, align 8, !tbaa !4
  %call = call ptr @sicm_arena_new(i64 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i64 noundef %6)
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define void @sicm_arena_destroy(ptr noundef %arena) #0 {
entry:
  %arena.addr = alloca ptr, align 8
  %sa = alloca ptr, align 8
  %str = alloca [32 x i8], align 16
  %arena_ind_sz = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arena, ptr %arena.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %sa) #9
  %0 = load ptr, ptr %arena.addr, align 8, !tbaa !9
  store ptr %0, ptr %sa, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %str) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %arena_ind_sz) #9
  %1 = load ptr, ptr %sa, align 8, !tbaa !9
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8], ptr %str, i64 0, i64 0
  %2 = load ptr, ptr %sa, align 8, !tbaa !9
  %arena_ind = getelementptr inbounds %struct.sarena, ptr %2, i32 0, i32 7
  %3 = load i32, ptr %arena_ind, align 8, !tbaa !28
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 32, ptr noundef @.str, i32 noundef %3) #9
  store i64 4, ptr %arena_ind_sz, align 8, !tbaa !4
  %arraydecay1 = getelementptr inbounds [32 x i8], ptr %str, i64 0, i64 0
  %4 = load ptr, ptr %sa, align 8, !tbaa !9
  %arena_ind2 = getelementptr inbounds %struct.sarena, ptr %4, i32 0, i32 7
  %call3 = call i32 @je_mallctl(ptr noundef %arraydecay1, ptr noundef %arena_ind2, ptr noundef %arena_ind_sz, ptr noundef null, i64 noundef 0) #9
  %5 = load ptr, ptr %sa, align 8, !tbaa !9
  %extents = getelementptr inbounds %struct.sarena, ptr %5, i32 0, i32 9
  %6 = load ptr, ptr %extents, align 8, !tbaa !26
  call void @extent_arr_free(ptr noundef %6)
  %7 = load ptr, ptr %sa, align 8, !tbaa !9
  %mutex = getelementptr inbounds %struct.sarena, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %mutex, align 8, !tbaa !21
  %call4 = call i32 @munmap(ptr noundef %8, i64 noundef 40) #9
  %9 = load ptr, ptr %sa, align 8, !tbaa !9
  %devs = getelementptr inbounds %struct.sarena, ptr %9, i32 0, i32 2
  %devices = getelementptr inbounds %struct.sicm_device_list, ptr %devs, i32 0, i32 1
  %10 = load ptr, ptr %devices, align 8, !tbaa !19
  call void @free(ptr noundef %10) #9
  %11 = load ptr, ptr %sa, align 8, !tbaa !9
  %nodemask = getelementptr inbounds %struct.sarena, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %nodemask, align 8, !tbaa !24
  call void @numa_free_nodemask(ptr noundef %12)
  %13 = load ptr, ptr %sa, align 8, !tbaa !9
  call void @free(ptr noundef %13) #9
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %arena_ind_sz) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr %str) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %sa) #9
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind
declare i32 @je_mallctl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @extent_arr_free(ptr noundef %a) #3 {
entry:
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arr = getelementptr inbounds %struct.extent_arr, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %arr, align 8, !tbaa !30
  call void @free(ptr noundef %1) #9
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !9
  call void @free(ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @numa_free_nodemask(ptr noundef %b) #3 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %b.addr, align 8, !tbaa !9
  call void @numa_bitmask_free(ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define ptr @sicm_arenas_list() #0 {
entry:
  %i = alloca i32, align 4
  %l = alloca ptr, align 8
  %a = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #9
  %call = call i32 @pthread_mutex_lock(ptr noundef @sa_mutex) #9
  %0 = load i32, ptr @sa_num, align 4, !tbaa !11
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %add = add i64 16, %mul
  %call1 = call noalias ptr @malloc(i64 noundef %add) #10
  store ptr %call1, ptr %l, align 8, !tbaa !9
  %1 = load ptr, ptr %l, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds %struct.sicm_arena_list, ptr %1, i64 1
  %2 = load ptr, ptr %l, align 8, !tbaa !9
  %arenas = getelementptr inbounds %struct.sicm_arena_list, ptr %2, i32 0, i32 1
  store ptr %arrayidx, ptr %arenas, align 8, !tbaa !32
  store i32 0, ptr %i, align 4, !tbaa !11
  %3 = load ptr, ptr @sa_list, align 8, !tbaa !9
  store ptr %3, ptr %a, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !tbaa !11
  %5 = load i32, ptr @sa_num, align 4, !tbaa !11
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load ptr, ptr %a, align 8, !tbaa !9
  %cmp3 = icmp ne ptr %6, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load ptr, ptr %a, align 8, !tbaa !9
  %9 = load ptr, ptr %l, align 8, !tbaa !9
  %arenas5 = getelementptr inbounds %struct.sicm_arena_list, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %arenas5, align 8, !tbaa !32
  %11 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  store ptr %8, ptr %arrayidx6, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !tbaa !11
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !11
  %13 = load ptr, ptr %a, align 8, !tbaa !9
  %next = getelementptr inbounds %struct.sarena, ptr %13, i32 0, i32 6
  %14 = load ptr, ptr %next, align 8, !tbaa !29
  store ptr %14, ptr %a, align 8, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %land.end
  %15 = load i32, ptr %i, align 4, !tbaa !11
  %16 = load ptr, ptr %l, align 8, !tbaa !9
  %count = getelementptr inbounds %struct.sicm_arena_list, ptr %16, i32 0, i32 0
  store i32 %15, ptr %count, align 8, !tbaa !34
  %17 = load ptr, ptr %l, align 8, !tbaa !9
  call void @free(ptr noundef %17) #9
  %call7 = call i32 @pthread_mutex_unlock(ptr noundef @sa_mutex) #9
  %18 = load ptr, ptr %l, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  ret ptr %18
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #2

; Function Attrs: nounwind uwtable
define { i32, ptr } @sicm_arena_get_devices(ptr noundef %a) #0 {
entry:
  %retval = alloca %struct.sicm_device_list, align 8
  %a.addr = alloca ptr, align 8
  %sa = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %sa) #9
  %count = getelementptr inbounds %struct.sicm_device_list, ptr %retval, i32 0, i32 0
  store i32 0, ptr %count, align 8, !tbaa !13
  %devices = getelementptr inbounds %struct.sicm_device_list, ptr %retval, i32 0, i32 1
  store ptr null, ptr %devices, align 8, !tbaa !20
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  store ptr %0, ptr %sa, align 8, !tbaa !9
  %1 = load ptr, ptr %sa, align 8, !tbaa !9
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %sa, align 8, !tbaa !9
  %mutex = getelementptr inbounds %struct.sarena, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %mutex, align 8, !tbaa !21
  %call = call i32 @pthread_mutex_lock(ptr noundef %3) #9
  %4 = load ptr, ptr %sa, align 8, !tbaa !9
  %devs = getelementptr inbounds %struct.sarena, ptr %4, i32 0, i32 2
  %count1 = getelementptr inbounds %struct.sicm_device_list, ptr %devs, i32 0, i32 0
  %5 = load i32, ptr %count1, align 8, !tbaa !18
  %count2 = getelementptr inbounds %struct.sicm_device_list, ptr %retval, i32 0, i32 0
  store i32 %5, ptr %count2, align 8, !tbaa !13
  %count3 = getelementptr inbounds %struct.sicm_device_list, ptr %retval, i32 0, i32 0
  %6 = load i32, ptr %count3, align 8, !tbaa !13
  %conv = zext i32 %6 to i64
  %mul = mul i64 %conv, 8
  %call4 = call noalias ptr @malloc(i64 noundef %mul) #10
  %devices5 = getelementptr inbounds %struct.sicm_device_list, ptr %retval, i32 0, i32 1
  store ptr %call4, ptr %devices5, align 8, !tbaa !20
  %devices6 = getelementptr inbounds %struct.sicm_device_list, ptr %retval, i32 0, i32 1
  %7 = load ptr, ptr %devices6, align 8, !tbaa !20
  %8 = load ptr, ptr %sa, align 8, !tbaa !9
  %devs7 = getelementptr inbounds %struct.sarena, ptr %8, i32 0, i32 2
  %devices8 = getelementptr inbounds %struct.sicm_device_list, ptr %devs7, i32 0, i32 1
  %9 = load ptr, ptr %devices8, align 8, !tbaa !19
  %count9 = getelementptr inbounds %struct.sicm_device_list, ptr %retval, i32 0, i32 0
  %10 = load i32, ptr %count9, align 8, !tbaa !13
  %conv10 = zext i32 %10 to i64
  %mul11 = mul i64 %conv10, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %9, i64 %mul11, i1 false)
  %11 = load ptr, ptr %sa, align 8, !tbaa !9
  %mutex12 = getelementptr inbounds %struct.sarena, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %mutex12, align 8, !tbaa !21
  %call13 = call i32 @pthread_mutex_unlock(ptr noundef %12) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %sa) #9
  %13 = load { i32, ptr }, ptr %retval, align 8
  ret { i32, ptr } %13
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define i32 @sicm_arena_set_device(ptr noundef %sa, ptr noundef %dev) #0 {
entry:
  %sa.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %sa, ptr %sa.addr, align 8, !tbaa !9
  store ptr %dev, ptr %dev.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %sa.addr, align 8, !tbaa !9
  %call = call i32 @sicm_arena_set_device_array(ptr noundef %0, ptr noundef %dev.addr, i64 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @sicm_arena_set_device_array(ptr noundef %sa, ptr noundef %devs, i64 noundef %count) #0 {
entry:
  %sa.addr = alloca ptr, align 8
  %devs.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %list = alloca %struct.sicm_device_list, align 8
  store ptr %sa, ptr %sa.addr, align 8, !tbaa !9
  store ptr %devs, ptr %devs.addr, align 8, !tbaa !9
  store i64 %count, ptr %count.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %list) #9
  %0 = load i64, ptr %count.addr, align 8, !tbaa !4
  %conv = trunc i64 %0 to i32
  %count1 = getelementptr inbounds %struct.sicm_device_list, ptr %list, i32 0, i32 0
  store i32 %conv, ptr %count1, align 8, !tbaa !13
  %1 = load ptr, ptr %devs.addr, align 8, !tbaa !9
  %devices = getelementptr inbounds %struct.sicm_device_list, ptr %list, i32 0, i32 1
  store ptr %1, ptr %devices, align 8, !tbaa !20
  %2 = load ptr, ptr %sa.addr, align 8, !tbaa !9
  %call = call i32 @sicm_arena_set_device_list(ptr noundef %2, ptr noundef %list)
  call void @llvm.lifetime.end.p0(i64 16, ptr %list) #9
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @sicm_arena_set_device_list(ptr noundef %a, ptr noundef %devs) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %devs.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %node = alloca i32, align 4
  %oldnumaid = alloca i32, align 4
  %i = alloca i64, align 8
  %sa = alloca ptr, align 8
  %nodemask = alloca ptr, align 8
  %oldnodemask = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %devs, ptr %devs.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %node) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldnumaid) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %sa) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %nodemask) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldnodemask) #9
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  store ptr %0, ptr %sa, align 8, !tbaa !9
  %1 = load ptr, ptr %sa, align 8, !tbaa !9
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %devs.addr, align 8, !tbaa !9
  %call = call ptr @sicm_device_list_check_numa(ptr noundef %2)
  store ptr %call, ptr %nodemask, align 8, !tbaa !9
  %3 = load ptr, ptr %nodemask, align 8, !tbaa !9
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %devs.addr, align 8, !tbaa !9
  %devices = getelementptr inbounds %struct.sicm_device_list, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %devices, align 8, !tbaa !20
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %call4 = call i32 @sicm_device_page_size(ptr noundef %6)
  %7 = load ptr, ptr %sa, align 8, !tbaa !9
  %devs5 = getelementptr inbounds %struct.sarena, ptr %7, i32 0, i32 2
  %devices6 = getelementptr inbounds %struct.sicm_device_list, ptr %devs5, i32 0, i32 1
  %8 = load ptr, ptr %devices6, align 8, !tbaa !19
  %arrayidx7 = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx7, align 8, !tbaa !9
  %call8 = call i32 @sicm_device_page_size(ptr noundef %9)
  %cmp9 = icmp ne i32 %call4, %call8
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end3
  store i32 -22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  store i32 0, ptr %err, align 4, !tbaa !11
  %10 = load ptr, ptr %sa, align 8, !tbaa !9
  %mutex = getelementptr inbounds %struct.sarena, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %mutex, align 8, !tbaa !21
  %call12 = call i32 @pthread_mutex_lock(ptr noundef %11) #9
  %12 = load ptr, ptr %sa, align 8, !tbaa !9
  %nodemask13 = getelementptr inbounds %struct.sarena, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %nodemask13, align 8, !tbaa !24
  store ptr %13, ptr %oldnodemask, align 8, !tbaa !9
  %14 = load ptr, ptr %nodemask, align 8, !tbaa !9
  %15 = load ptr, ptr %sa, align 8, !tbaa !9
  %nodemask14 = getelementptr inbounds %struct.sarena, ptr %15, i32 0, i32 5
  store ptr %14, ptr %nodemask14, align 8, !tbaa !24
  %16 = load ptr, ptr %sa, align 8, !tbaa !9
  %err15 = getelementptr inbounds %struct.sarena, ptr %16, i32 0, i32 10
  store i32 0, ptr %err15, align 8, !tbaa !35
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %17 = load i64, ptr %i, align 8, !tbaa !4
  %18 = load ptr, ptr %sa, align 8, !tbaa !9
  %extents = getelementptr inbounds %struct.sarena, ptr %18, i32 0, i32 9
  %19 = load ptr, ptr %extents, align 8, !tbaa !26
  %index = getelementptr inbounds %struct.extent_arr, ptr %19, i32 0, i32 2
  %20 = load i64, ptr %index, align 8, !tbaa !36
  %cmp16 = icmp ult i64 %17, %20
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %sa, align 8, !tbaa !9
  %extents17 = getelementptr inbounds %struct.sarena, ptr %21, i32 0, i32 9
  %22 = load ptr, ptr %extents17, align 8, !tbaa !26
  %arr = getelementptr inbounds %struct.extent_arr, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %arr, align 8, !tbaa !30
  %24 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx18 = getelementptr inbounds %struct.extent_info, ptr %23, i64 %24
  %start = getelementptr inbounds %struct.extent_info, ptr %arrayidx18, i32 0, i32 0
  %25 = load ptr, ptr %start, align 8, !tbaa !37
  %tobool = icmp ne ptr %25, null
  br i1 %tobool, label %if.end24, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %26 = load ptr, ptr %sa, align 8, !tbaa !9
  %extents19 = getelementptr inbounds %struct.sarena, ptr %26, i32 0, i32 9
  %27 = load ptr, ptr %extents19, align 8, !tbaa !26
  %arr20 = getelementptr inbounds %struct.extent_arr, ptr %27, i32 0, i32 4
  %28 = load ptr, ptr %arr20, align 8, !tbaa !30
  %29 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx21 = getelementptr inbounds %struct.extent_info, ptr %28, i64 %29
  %end = getelementptr inbounds %struct.extent_info, ptr %arrayidx21, i32 0, i32 1
  %30 = load ptr, ptr %end, align 8, !tbaa !39
  %tobool22 = icmp ne ptr %30, null
  br i1 %tobool22, label %if.end24, label %if.then23

if.then23:                                        ; preds = %land.lhs.true
  br label %for.inc

if.end24:                                         ; preds = %land.lhs.true, %for.body
  %31 = load ptr, ptr %sa, align 8, !tbaa !9
  %32 = load ptr, ptr %sa, align 8, !tbaa !9
  %extents25 = getelementptr inbounds %struct.sarena, ptr %32, i32 0, i32 9
  %33 = load ptr, ptr %extents25, align 8, !tbaa !26
  %arr26 = getelementptr inbounds %struct.extent_arr, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %arr26, align 8, !tbaa !30
  %35 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx27 = getelementptr inbounds %struct.extent_info, ptr %34, i64 %35
  %start28 = getelementptr inbounds %struct.extent_info, ptr %arrayidx27, i32 0, i32 0
  %36 = load ptr, ptr %start28, align 8, !tbaa !37
  %37 = load ptr, ptr %sa, align 8, !tbaa !9
  %extents29 = getelementptr inbounds %struct.sarena, ptr %37, i32 0, i32 9
  %38 = load ptr, ptr %extents29, align 8, !tbaa !26
  %arr30 = getelementptr inbounds %struct.extent_arr, ptr %38, i32 0, i32 4
  %39 = load ptr, ptr %arr30, align 8, !tbaa !30
  %40 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx31 = getelementptr inbounds %struct.extent_info, ptr %39, i64 %40
  %end32 = getelementptr inbounds %struct.extent_info, ptr %arrayidx31, i32 0, i32 1
  %41 = load ptr, ptr %end32, align 8, !tbaa !39
  call void @sicm_arena_range_move(ptr noundef %31, ptr noundef %36, ptr noundef %41)
  br label %for.inc

for.inc:                                          ; preds = %if.end24, %if.then23
  %42 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add i64 %42, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load ptr, ptr %sa, align 8, !tbaa !9
  %err33 = getelementptr inbounds %struct.sarena, ptr %43, i32 0, i32 10
  %44 = load i32, ptr %err33, align 8, !tbaa !35
  %tobool34 = icmp ne i32 %44, 0
  br i1 %tobool34, label %if.then35, label %if.else

if.then35:                                        ; preds = %for.end
  %45 = load ptr, ptr %sa, align 8, !tbaa !9
  %err36 = getelementptr inbounds %struct.sarena, ptr %45, i32 0, i32 10
  %46 = load i32, ptr %err36, align 8, !tbaa !35
  store i32 %46, ptr %err, align 4, !tbaa !11
  %47 = load ptr, ptr %oldnodemask, align 8, !tbaa !9
  %48 = load ptr, ptr %sa, align 8, !tbaa !9
  %nodemask37 = getelementptr inbounds %struct.sarena, ptr %48, i32 0, i32 5
  store ptr %47, ptr %nodemask37, align 8, !tbaa !24
  %49 = load ptr, ptr %sa, align 8, !tbaa !9
  %err38 = getelementptr inbounds %struct.sarena, ptr %49, i32 0, i32 10
  store i32 0, ptr %err38, align 8, !tbaa !35
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc65, %if.then35
  %50 = load i64, ptr %i, align 8, !tbaa !4
  %51 = load ptr, ptr %sa, align 8, !tbaa !9
  %extents40 = getelementptr inbounds %struct.sarena, ptr %51, i32 0, i32 9
  %52 = load ptr, ptr %extents40, align 8, !tbaa !26
  %index41 = getelementptr inbounds %struct.extent_arr, ptr %52, i32 0, i32 2
  %53 = load i64, ptr %index41, align 8, !tbaa !36
  %cmp42 = icmp ult i64 %50, %53
  br i1 %cmp42, label %for.body43, label %for.end67

for.body43:                                       ; preds = %for.cond39
  %54 = load ptr, ptr %sa, align 8, !tbaa !9
  %extents44 = getelementptr inbounds %struct.sarena, ptr %54, i32 0, i32 9
  %55 = load ptr, ptr %extents44, align 8, !tbaa !26
  %arr45 = getelementptr inbounds %struct.extent_arr, ptr %55, i32 0, i32 4
  %56 = load ptr, ptr %arr45, align 8, !tbaa !30
  %57 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx46 = getelementptr inbounds %struct.extent_info, ptr %56, i64 %57
  %start47 = getelementptr inbounds %struct.extent_info, ptr %arrayidx46, i32 0, i32 0
  %58 = load ptr, ptr %start47, align 8, !tbaa !37
  %tobool48 = icmp ne ptr %58, null
  br i1 %tobool48, label %if.end56, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %for.body43
  %59 = load ptr, ptr %sa, align 8, !tbaa !9
  %extents50 = getelementptr inbounds %struct.sarena, ptr %59, i32 0, i32 9
  %60 = load ptr, ptr %extents50, align 8, !tbaa !26
  %arr51 = getelementptr inbounds %struct.extent_arr, ptr %60, i32 0, i32 4
  %61 = load ptr, ptr %arr51, align 8, !tbaa !30
  %62 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx52 = getelementptr inbounds %struct.extent_info, ptr %61, i64 %62
  %end53 = getelementptr inbounds %struct.extent_info, ptr %arrayidx52, i32 0, i32 1
  %63 = load ptr, ptr %end53, align 8, !tbaa !39
  %tobool54 = icmp ne ptr %63, null
  br i1 %tobool54, label %if.end56, label %if.then55

if.then55:                                        ; preds = %land.lhs.true49
  br label %for.inc65

if.end56:                                         ; preds = %land.lhs.true49, %for.body43
  %64 = load ptr, ptr %sa, align 8, !tbaa !9
  %65 = load ptr, ptr %sa, align 8, !tbaa !9
  %extents57 = getelementptr inbounds %struct.sarena, ptr %65, i32 0, i32 9
  %66 = load ptr, ptr %extents57, align 8, !tbaa !26
  %arr58 = getelementptr inbounds %struct.extent_arr, ptr %66, i32 0, i32 4
  %67 = load ptr, ptr %arr58, align 8, !tbaa !30
  %68 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx59 = getelementptr inbounds %struct.extent_info, ptr %67, i64 %68
  %start60 = getelementptr inbounds %struct.extent_info, ptr %arrayidx59, i32 0, i32 0
  %69 = load ptr, ptr %start60, align 8, !tbaa !37
  %70 = load ptr, ptr %sa, align 8, !tbaa !9
  %extents61 = getelementptr inbounds %struct.sarena, ptr %70, i32 0, i32 9
  %71 = load ptr, ptr %extents61, align 8, !tbaa !26
  %arr62 = getelementptr inbounds %struct.extent_arr, ptr %71, i32 0, i32 4
  %72 = load ptr, ptr %arr62, align 8, !tbaa !30
  %73 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx63 = getelementptr inbounds %struct.extent_info, ptr %72, i64 %73
  %end64 = getelementptr inbounds %struct.extent_info, ptr %arrayidx63, i32 0, i32 1
  %74 = load ptr, ptr %end64, align 8, !tbaa !39
  call void @sicm_arena_range_move(ptr noundef %64, ptr noundef %69, ptr noundef %74)
  br label %for.inc65

for.inc65:                                        ; preds = %if.end56, %if.then55
  %75 = load i64, ptr %i, align 8, !tbaa !4
  %inc66 = add i64 %75, 1
  store i64 %inc66, ptr %i, align 8, !tbaa !4
  br label %for.cond39

for.end67:                                        ; preds = %for.cond39
  %76 = load ptr, ptr %nodemask, align 8, !tbaa !9
  call void @numa_free_nodemask(ptr noundef %76)
  %77 = load ptr, ptr %sa, align 8, !tbaa !9
  %err68 = getelementptr inbounds %struct.sarena, ptr %77, i32 0, i32 10
  %78 = load i32, ptr %err68, align 8, !tbaa !35
  store i32 %78, ptr %err, align 4, !tbaa !11
  br label %if.end83

if.else:                                          ; preds = %for.end
  %79 = load ptr, ptr %devs.addr, align 8, !tbaa !9
  %count = getelementptr inbounds %struct.sicm_device_list, ptr %79, i32 0, i32 0
  %80 = load i32, ptr %count, align 8, !tbaa !13
  %81 = load ptr, ptr %sa, align 8, !tbaa !9
  %devs69 = getelementptr inbounds %struct.sarena, ptr %81, i32 0, i32 2
  %count70 = getelementptr inbounds %struct.sicm_device_list, ptr %devs69, i32 0, i32 0
  store i32 %80, ptr %count70, align 8, !tbaa !18
  %82 = load ptr, ptr %sa, align 8, !tbaa !9
  %devs71 = getelementptr inbounds %struct.sarena, ptr %82, i32 0, i32 2
  %devices72 = getelementptr inbounds %struct.sicm_device_list, ptr %devs71, i32 0, i32 1
  %83 = load ptr, ptr %devices72, align 8, !tbaa !19
  %84 = load ptr, ptr %devs.addr, align 8, !tbaa !9
  %count73 = getelementptr inbounds %struct.sicm_device_list, ptr %84, i32 0, i32 0
  %85 = load i32, ptr %count73, align 8, !tbaa !13
  %conv = zext i32 %85 to i64
  %mul = mul i64 %conv, 8
  %call74 = call ptr @realloc(ptr noundef %83, i64 noundef %mul) #11
  %86 = load ptr, ptr %sa, align 8, !tbaa !9
  %devs75 = getelementptr inbounds %struct.sarena, ptr %86, i32 0, i32 2
  %devices76 = getelementptr inbounds %struct.sicm_device_list, ptr %devs75, i32 0, i32 1
  store ptr %call74, ptr %devices76, align 8, !tbaa !19
  %87 = load ptr, ptr %sa, align 8, !tbaa !9
  %devs77 = getelementptr inbounds %struct.sarena, ptr %87, i32 0, i32 2
  %devices78 = getelementptr inbounds %struct.sicm_device_list, ptr %devs77, i32 0, i32 1
  %88 = load ptr, ptr %devices78, align 8, !tbaa !19
  %89 = load ptr, ptr %devs.addr, align 8, !tbaa !9
  %devices79 = getelementptr inbounds %struct.sicm_device_list, ptr %89, i32 0, i32 1
  %90 = load ptr, ptr %devices79, align 8, !tbaa !20
  %91 = load ptr, ptr %devs.addr, align 8, !tbaa !9
  %count80 = getelementptr inbounds %struct.sicm_device_list, ptr %91, i32 0, i32 0
  %92 = load i32, ptr %count80, align 8, !tbaa !13
  %conv81 = zext i32 %92 to i64
  %mul82 = mul i64 %conv81, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %88, ptr align 8 %90, i64 %mul82, i1 false)
  %93 = load ptr, ptr %oldnodemask, align 8, !tbaa !9
  call void @numa_free_nodemask(ptr noundef %93)
  br label %if.end83

if.end83:                                         ; preds = %if.else, %for.end67
  %94 = load ptr, ptr %sa, align 8, !tbaa !9
  %mutex84 = getelementptr inbounds %struct.sarena, ptr %94, i32 0, i32 0
  %95 = load ptr, ptr %mutex84, align 8, !tbaa !21
  %call85 = call i32 @pthread_mutex_unlock(ptr noundef %95) #9
  %96 = load i32, ptr %err, align 4, !tbaa !11
  store i32 %96, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.then10, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldnodemask) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %nodemask) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %sa) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldnumaid) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %node) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9
  %97 = load i32, ptr %retval, align 4
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define internal ptr @sicm_device_list_check_numa(ptr noundef %devs) #0 {
entry:
  %retval = alloca ptr, align 8
  %devs.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cpgsz = alloca i32, align 4
  %nodemask = alloca ptr, align 8
  %numaid = alloca i32, align 4
  %pgsz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %devs, ptr %devs.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpgsz) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %nodemask) #9
  store i32 -1, ptr %cpgsz, align 4, !tbaa !11
  %call = call ptr @numa_allocate_nodemask()
  store ptr %call, ptr %nodemask, align 8, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !11
  %1 = load ptr, ptr %devs.addr, align 8, !tbaa !9
  %count = getelementptr inbounds %struct.sicm_device_list, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %count, align 8, !tbaa !13
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %numaid) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %pgsz) #9
  %3 = load ptr, ptr %devs.addr, align 8, !tbaa !9
  %devices = getelementptr inbounds %struct.sicm_device_list, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %devices, align 8, !tbaa !20
  %5 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %call1 = call i32 @sicm_numa_id(ptr noundef %6)
  store i32 %call1, ptr %numaid, align 4, !tbaa !11
  %7 = load ptr, ptr %devs.addr, align 8, !tbaa !9
  %devices2 = getelementptr inbounds %struct.sicm_device_list, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %devices2, align 8, !tbaa !20
  %9 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %8, i64 %idxprom3
  %10 = load ptr, ptr %arrayidx4, align 8, !tbaa !9
  %call5 = call i32 @sicm_device_page_size(ptr noundef %10)
  store i32 %call5, ptr %pgsz, align 4, !tbaa !11
  %11 = load i32, ptr %numaid, align 4, !tbaa !11
  %cmp6 = icmp slt i32 %11, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  %12 = load i32, ptr %cpgsz, align 4, !tbaa !11
  %13 = load i32, ptr %pgsz, align 4, !tbaa !11
  %cmp7 = icmp ne i32 %12, %13
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  %14 = load i32, ptr %cpgsz, align 4, !tbaa !11
  %cmp9 = icmp eq i32 %14, -1
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then8
  %15 = load i32, ptr %pgsz, align 4, !tbaa !11
  store i32 %15, ptr %cpgsz, align 4, !tbaa !11
  br label %if.end11

if.else:                                          ; preds = %if.then8
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.then10
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  %16 = load ptr, ptr %nodemask, align 8, !tbaa !9
  %17 = load i32, ptr %numaid, align 4, !tbaa !11
  %call13 = call ptr @numa_bitmask_setbit(ptr noundef %16, i32 noundef %17)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then, %if.end12
  call void @llvm.lifetime.end.p0(i64 4, ptr %pgsz) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %numaid) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup15 [
    i32 0, label %cleanup.cont
    i32 5, label %error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %18 = load i32, ptr %i, align 4, !tbaa !11
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %nodemask, align 8, !tbaa !9
  store ptr %19, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15

error:                                            ; preds = %cleanup
  %20 = load ptr, ptr %nodemask, align 8, !tbaa !9
  call void @numa_free_nodemask(ptr noundef %20)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15

cleanup15:                                        ; preds = %error, %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %nodemask) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpgsz) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  %21 = load ptr, ptr %retval, align 8
  ret ptr %21
}

declare i32 @sicm_device_page_size(ptr noundef) #6

; Function Attrs: nounwind uwtable
define internal void @sicm_arena_range_move(ptr noundef %aux, ptr noundef %start, ptr noundef %end) #0 {
entry:
  %aux.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %mpol = alloca i32, align 4
  %nodemaskp = alloca ptr, align 8
  %maxnode = alloca i64, align 8
  %sa = alloca ptr, align 8
  store ptr %aux, ptr %aux.addr, align 8, !tbaa !9
  store ptr %start, ptr %start.addr, align 8, !tbaa !9
  store ptr %end, ptr %end.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %mpol) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %nodemaskp) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxnode) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %sa) #9
  %0 = load ptr, ptr %aux.addr, align 8, !tbaa !9
  store ptr %0, ptr %sa, align 8, !tbaa !9
  %1 = load ptr, ptr %sa, align 8, !tbaa !9
  %flags = getelementptr inbounds %struct.sarena, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %flags, align 8, !tbaa !15
  %and = and i32 %2, 7
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store i32 2, ptr %mpol, align 4, !tbaa !11
  %3 = load ptr, ptr %sa, align 8, !tbaa !9
  %nodemask = getelementptr inbounds %struct.sarena, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %nodemask, align 8, !tbaa !24
  %maskp = getelementptr inbounds %struct.bitmask, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %maskp, align 8, !tbaa !40
  store ptr %5, ptr %nodemaskp, align 8, !tbaa !9
  %6 = load ptr, ptr %sa, align 8, !tbaa !9
  %nodemask1 = getelementptr inbounds %struct.sarena, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %nodemask1, align 8, !tbaa !24
  %size = getelementptr inbounds %struct.bitmask, ptr %7, i32 0, i32 0
  %8 = load i64, ptr %size, align 8, !tbaa !42
  %add = add i64 %8, 1
  store i64 %add, ptr %maxnode, align 8, !tbaa !4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i32 1, ptr %mpol, align 4, !tbaa !11
  %9 = load ptr, ptr %sa, align 8, !tbaa !9
  %nodemask3 = getelementptr inbounds %struct.sarena, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %nodemask3, align 8, !tbaa !24
  %maskp4 = getelementptr inbounds %struct.bitmask, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %maskp4, align 8, !tbaa !40
  store ptr %11, ptr %nodemaskp, align 8, !tbaa !9
  %12 = load ptr, ptr %sa, align 8, !tbaa !9
  %nodemask5 = getelementptr inbounds %struct.sarena, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %nodemask5, align 8, !tbaa !24
  %size6 = getelementptr inbounds %struct.bitmask, ptr %13, i32 0, i32 0
  %14 = load i64, ptr %size6, align 8, !tbaa !42
  %add7 = add i64 %14, 1
  store i64 %add7, ptr %maxnode, align 8, !tbaa !4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 0, ptr %mpol, align 4, !tbaa !11
  store ptr null, ptr %nodemaskp, align 8, !tbaa !9
  store i64 0, ptr %maxnode, align 8, !tbaa !4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  %15 = load ptr, ptr %start.addr, align 8, !tbaa !9
  %16 = load ptr, ptr %end.addr, align 8, !tbaa !9
  %17 = load ptr, ptr %start.addr, align 8, !tbaa !9
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %17 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %18 = load i32, ptr %mpol, align 4, !tbaa !11
  %19 = load ptr, ptr %nodemaskp, align 8, !tbaa !9
  %20 = load i64, ptr %maxnode, align 8, !tbaa !4
  %call = call i64 @mbind(ptr noundef %15, i64 noundef %sub.ptr.sub, i32 noundef %18, ptr noundef %19, i64 noundef %20, i32 noundef 2)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %err, align 4, !tbaa !11
  %21 = load i32, ptr %err, align 4, !tbaa !11
  %cmp = icmp slt i32 %21, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.epilog
  %22 = load ptr, ptr %sa, align 8, !tbaa !9
  %err9 = getelementptr inbounds %struct.sarena, ptr %22, i32 0, i32 10
  %23 = load i32, ptr %err9, align 8, !tbaa !35
  %cmp10 = icmp eq i32 %23, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %24 = load i32, ptr %err, align 4, !tbaa !11
  %25 = load ptr, ptr %sa, align 8, !tbaa !9
  %err12 = getelementptr inbounds %struct.sarena, ptr %25, i32 0, i32 10
  store i32 %24, ptr %err12, align 8, !tbaa !35
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.epilog
  call void @llvm.lifetime.end.p0(i64 8, ptr %sa) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxnode) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %nodemaskp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %mpol) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9
  ret void
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #7

; Function Attrs: nounwind uwtable
define i64 @sicm_arena_size(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %sa = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %sa) #9
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  store ptr %0, ptr %sa, align 8, !tbaa !9
  %1 = load ptr, ptr %sa, align 8, !tbaa !9
  %mutex = getelementptr inbounds %struct.sarena, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %mutex, align 8, !tbaa !21
  %call = call i32 @pthread_mutex_lock(ptr noundef %2) #9
  %3 = load ptr, ptr %sa, align 8, !tbaa !9
  %size = getelementptr inbounds %struct.sarena, ptr %3, i32 0, i32 4
  %4 = load i64, ptr %size, align 8, !tbaa !22
  store i64 %4, ptr %ret, align 8, !tbaa !4
  %5 = load ptr, ptr %sa, align 8, !tbaa !9
  %mutex1 = getelementptr inbounds %struct.sarena, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %mutex1, align 8, !tbaa !21
  %call2 = call i32 @pthread_mutex_unlock(ptr noundef %6) #9
  %7 = load i64, ptr %ret, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %sa) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #9
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define ptr @sicm_arena_alloc(ptr noundef %a, i64 noundef %sz) #0 {
entry:
  %retval = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %sz.addr = alloca i64, align 8
  %sa = alloca ptr, align 8
  %flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %sz, ptr %sz.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sa) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #9
  %0 = load i64, ptr %sz.addr, align 8, !tbaa !4
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noalias ptr @je_malloc(i64 noundef 0) #10
  store ptr %call, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !9
  store ptr %1, ptr %sa, align 8, !tbaa !9
  store i32 0, ptr %flags, align 4, !tbaa !11
  %2 = load ptr, ptr %sa, align 8, !tbaa !9
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %sa, align 8, !tbaa !9
  %arena_ind = getelementptr inbounds %struct.sarena, ptr %3, i32 0, i32 7
  %4 = load i32, ptr %arena_ind, align 8, !tbaa !28
  %add = add nsw i32 %4, 1
  %shl = shl i32 %add, 20
  %or = or i32 %shl, 256
  store i32 %or, ptr %flags, align 4, !tbaa !11
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load i64, ptr %sz.addr, align 8, !tbaa !4
  %6 = load i32, ptr %flags, align 4, !tbaa !11
  %call4 = call noalias ptr @je_mallocx(i64 noundef %5, i32 noundef %6) #10
  store ptr %call4, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %sa) #9
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @je_malloc(i64 noundef) #4

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @je_mallocx(i64 noundef, i32 noundef) #4

; Function Attrs: nounwind uwtable
define ptr @sicm_arena_alloc_aligned(ptr noundef %a, i64 noundef %sz, i64 noundef %align) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %sz.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %sa = alloca ptr, align 8
  %flags = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %sz, ptr %sz.addr, align 8, !tbaa !4
  store i64 %align, ptr %align.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sa) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #9
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  store ptr %0, ptr %sa, align 8, !tbaa !9
  store i32 0, ptr %flags, align 4, !tbaa !11
  %1 = load ptr, ptr %sa, align 8, !tbaa !9
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %sa, align 8, !tbaa !9
  %arena_ind = getelementptr inbounds %struct.sarena, ptr %2, i32 0, i32 7
  %3 = load i32, ptr %arena_ind, align 8, !tbaa !28
  %add = add nsw i32 %3, 1
  %shl = shl i32 %add, 20
  %or = or i32 %shl, 256
  %4 = load i64, ptr %align.addr, align 8, !tbaa !4
  %cmp1 = icmp ult i64 %4, 2147483647
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %5 = load i64, ptr %align.addr, align 8, !tbaa !4
  %conv = trunc i64 %5 to i32
  %call = call i32 @ffs(i32 noundef %conv) #12
  %sub = sub nsw i32 %call, 1
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %6 = load i64, ptr %align.addr, align 8, !tbaa !4
  %shr = lshr i64 %6, 32
  %conv2 = trunc i64 %shr to i32
  %call3 = call i32 @ffs(i32 noundef %conv2) #12
  %add4 = add nsw i32 %call3, 31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %add4, %cond.false ]
  %or5 = or i32 %or, %cond
  store i32 %or5, ptr %flags, align 4, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %7 = load i64, ptr %sz.addr, align 8, !tbaa !4
  %8 = load i32, ptr %flags, align 4, !tbaa !11
  %call6 = call noalias ptr @je_mallocx(i64 noundef %7, i32 noundef %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %sa) #9
  ret ptr %call6
}

; Function Attrs: nounwind willreturn memory(none)
declare i32 @ffs(i32 noundef) #8

; Function Attrs: nounwind uwtable
define ptr @sicm_arena_realloc(ptr noundef %a, ptr noundef %ptr, i64 noundef %sz) #0 {
entry:
  %retval = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %sz.addr = alloca i64, align 8
  %sa = alloca ptr, align 8
  %flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store i64 %sz, ptr %sz.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sa) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #9
  %0 = load i64, ptr %sz.addr, align 8, !tbaa !4
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @sicm_free(ptr noundef %1)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !9
  store ptr %2, ptr %sa, align 8, !tbaa !9
  store i32 0, ptr %flags, align 4, !tbaa !11
  %3 = load ptr, ptr %sa, align 8, !tbaa !9
  %cmp1 = icmp ne ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %sa, align 8, !tbaa !9
  %arena_ind = getelementptr inbounds %struct.sarena, ptr %4, i32 0, i32 7
  %5 = load i32, ptr %arena_ind, align 8, !tbaa !28
  %add = add nsw i32 %5, 1
  %shl = shl i32 %add, 20
  %or = or i32 %shl, 256
  store i32 %or, ptr %flags, align 4, !tbaa !11
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  %7 = load i64, ptr %sz.addr, align 8, !tbaa !4
  %8 = load i32, ptr %flags, align 4, !tbaa !11
  %call = call ptr @je_rallocx(ptr noundef %6, i64 noundef %7, i32 noundef %8) #11
  store ptr %call, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %sa) #9
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define void @sicm_free(ptr noundef %ptr) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @je_free(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind allocsize(1)
declare ptr @je_rallocx(ptr noundef, i64 noundef, i32 noundef) #7

; Function Attrs: nounwind uwtable
define ptr @sicm_alloc(i64 noundef %sz) #0 {
entry:
  %sz.addr = alloca i64, align 8
  %sa = alloca ptr, align 8
  %ret = alloca ptr, align 8
  store i64 %sz, ptr %sz.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sa) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #9
  %0 = load i32, ptr @sa_default_key, align 4, !tbaa !11
  %call = call ptr @pthread_getspecific(i32 noundef %0) #9
  store ptr %call, ptr %sa, align 8, !tbaa !9
  %1 = load ptr, ptr %sa, align 8, !tbaa !9
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %sa, align 8, !tbaa !9
  %3 = load i64, ptr %sz.addr, align 8, !tbaa !4
  %call1 = call ptr @sicm_arena_alloc(ptr noundef %2, i64 noundef %3)
  store ptr %call1, ptr %ret, align 8, !tbaa !9
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i64, ptr %sz.addr, align 8, !tbaa !4
  %call2 = call noalias ptr @je_malloc(i64 noundef %4) #10
  store ptr %call2, ptr %ret, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %ret, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %sa) #9
  ret ptr %5
}

; Function Attrs: nounwind
declare ptr @pthread_getspecific(i32 noundef) #2

; Function Attrs: nounwind uwtable
define ptr @sicm_alloc_aligned(i64 noundef %sz, i64 noundef %align) #0 {
entry:
  %sz.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %sa = alloca ptr, align 8
  %ret = alloca ptr, align 8
  store i64 %sz, ptr %sz.addr, align 8, !tbaa !4
  store i64 %align, ptr %align.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sa) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #9
  %0 = load i32, ptr @sa_default_key, align 4, !tbaa !11
  %call = call ptr @pthread_getspecific(i32 noundef %0) #9
  store ptr %call, ptr %sa, align 8, !tbaa !9
  %1 = load ptr, ptr %sa, align 8, !tbaa !9
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %sa, align 8, !tbaa !9
  %3 = load i64, ptr %sz.addr, align 8, !tbaa !4
  %4 = load i64, ptr %align.addr, align 8, !tbaa !4
  %call1 = call ptr @sicm_arena_alloc_aligned(ptr noundef %2, i64 noundef %3, i64 noundef %4)
  store ptr %call1, ptr %ret, align 8, !tbaa !9
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i64, ptr %align.addr, align 8, !tbaa !4
  %6 = load i64, ptr %sz.addr, align 8, !tbaa !4
  %call2 = call noalias ptr @je_aligned_alloc(i64 noundef %5, i64 noundef %6) #11
  store ptr %call2, ptr %ret, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load ptr, ptr %ret, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %sa) #9
  ret ptr %7
}

; Function Attrs: nounwind allocsize(1)
declare noalias ptr @je_aligned_alloc(i64 noundef, i64 noundef) #7

; Function Attrs: nounwind
declare void @je_free(ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @sicm_realloc(ptr noundef %ptr, i64 noundef %sz) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %sz.addr = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store i64 %sz, ptr %sz.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  %1 = load i64, ptr %sz.addr, align 8, !tbaa !4
  %call = call ptr @je_rallocx(ptr noundef %0, i64 noundef %1, i32 noundef 256) #11
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define void @sicm_arena_set_default(ptr noundef %sa) #0 {
entry:
  %sa.addr = alloca ptr, align 8
  store ptr %sa, ptr %sa.addr, align 8, !tbaa !9
  %0 = load i32, ptr @sa_default_key, align 4, !tbaa !11
  %1 = load ptr, ptr %sa.addr, align 8, !tbaa !9
  %call = call i32 @pthread_setspecific(i32 noundef %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @sicm_arena_get_default() #0 {
entry:
  %sa = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %sa) #9
  %0 = load i32, ptr @sa_default_key, align 4, !tbaa !11
  %call = call ptr @pthread_getspecific(i32 noundef %0) #9
  store ptr %call, ptr %sa, align 8, !tbaa !9
  %1 = load ptr, ptr %sa, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %sa) #9
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define ptr @sarena_ptr2sarena(ptr noundef %ptr) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %arena_ind = alloca i32, align 4
  %ai_sz = alloca i64, align 8
  %sa = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %arena_ind) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai_sz) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %sa) #9
  store ptr null, ptr %sa, align 8, !tbaa !9
  store i64 4, ptr %ai_sz, align 8, !tbaa !4
  %call = call i32 @je_mallctlbymib(ptr noundef @sa_lookup_mib, i64 noundef 2, ptr noundef %arena_ind, ptr noundef %ai_sz, ptr noundef %ptr.addr, i64 noundef 8) #9
  store i32 %call, ptr %err, align 4, !tbaa !11
  %0 = load i32, ptr %err, align 4, !tbaa !11
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !9
  %2 = load i32, ptr %err, align 4, !tbaa !11
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, i32 noundef %2)
  br label %out

if.end:                                           ; preds = %entry
  %call2 = call i32 @pthread_mutex_lock(ptr noundef @sa_mutex) #9
  %3 = load ptr, ptr @sa_list, align 8, !tbaa !9
  store ptr %3, ptr %sa, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %sa, align 8, !tbaa !9
  %cmp3 = icmp ne ptr %4, null
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %sa, align 8, !tbaa !9
  %arena_ind4 = getelementptr inbounds %struct.sarena, ptr %5, i32 0, i32 7
  %6 = load i32, ptr %arena_ind4, align 8, !tbaa !28
  %7 = load i32, ptr %arena_ind, align 4, !tbaa !11
  %cmp5 = icmp eq i32 %6, %7
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  br label %for.end

if.end7:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %8 = load ptr, ptr %sa, align 8, !tbaa !9
  %next = getelementptr inbounds %struct.sarena, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %next, align 8, !tbaa !29
  store ptr %9, ptr %sa, align 8, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %if.then6, %for.cond
  %call8 = call i32 @pthread_mutex_unlock(ptr noundef @sa_mutex) #9
  br label %out

out:                                              ; preds = %for.end, %if.then
  %10 = load ptr, ptr %sa, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %sa) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai_sz) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %arena_ind) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9
  ret ptr %10
}

; Function Attrs: nounwind
declare i32 @je_mallctlbymib(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #6

; Function Attrs: nounwind uwtable
define ptr @sicm_arena_lookup(ptr noundef %ptr) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  %call = call ptr @sarena_ptr2sarena(ptr noundef %0)
  ret ptr %call
}

declare i32 @pthread_once(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #2

declare void @perror(ptr noundef) #6

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_init(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_mutexattr_setpshared(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @sarena_init() #0 {
entry:
  %err = alloca i32, align 4
  %miblen = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %miblen) #9
  %call = call i32 @pthread_key_create(ptr noundef @sa_default_key, ptr noundef null) #9
  store i64 2, ptr %miblen, align 8, !tbaa !4
  %call1 = call i32 @je_mallctlnametomib(ptr noundef @.str.5, ptr noundef @sa_lookup_mib, ptr noundef %miblen) #9
  store i32 %call1, ptr %err, align 4, !tbaa !11
  %0 = load i32, ptr %err, align 4, !tbaa !11
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !tbaa !9
  %2 = load i32, ptr %err, align 4, !tbaa !11
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.6, i32 noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %miblen) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_key_create(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @je_mallctlnametomib(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @extent_arr_init() #3 {
entry:
  %a = alloca ptr, align 8
  %i = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9
  %call = call noalias ptr @malloc(i64 noundef 72) #10
  store ptr %call, ptr %a, align 8, !tbaa !9
  %0 = load ptr, ptr %a, align 8, !tbaa !9
  %max_extents = getelementptr inbounds %struct.extent_arr, ptr %0, i32 0, i32 1
  store i64 2, ptr %max_extents, align 8, !tbaa !43
  %1 = load ptr, ptr %a, align 8, !tbaa !9
  %index = getelementptr inbounds %struct.extent_arr, ptr %1, i32 0, i32 2
  store i64 0, ptr %index, align 8, !tbaa !36
  %2 = load ptr, ptr %a, align 8, !tbaa !9
  %deleted = getelementptr inbounds %struct.extent_arr, ptr %2, i32 0, i32 3
  store i64 0, ptr %deleted, align 8, !tbaa !44
  %3 = load ptr, ptr %a, align 8, !tbaa !9
  %mutex = getelementptr inbounds %struct.extent_arr, ptr %3, i32 0, i32 0
  %call1 = call i32 @pthread_mutex_init(ptr noundef %mutex, ptr noundef null) #9
  %4 = load ptr, ptr %a, align 8, !tbaa !9
  %max_extents2 = getelementptr inbounds %struct.extent_arr, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %max_extents2, align 8, !tbaa !43
  %mul = mul i64 24, %5
  %call3 = call noalias ptr @malloc(i64 noundef %mul) #10
  %6 = load ptr, ptr %a, align 8, !tbaa !9
  %arr = getelementptr inbounds %struct.extent_arr, ptr %6, i32 0, i32 4
  store ptr %call3, ptr %arr, align 8, !tbaa !30
  store i64 0, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, ptr %i, align 8, !tbaa !4
  %8 = load ptr, ptr %a, align 8, !tbaa !9
  %index4 = getelementptr inbounds %struct.extent_arr, ptr %8, i32 0, i32 2
  %9 = load i64, ptr %index4, align 8, !tbaa !36
  %cmp = icmp ult i64 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %a, align 8, !tbaa !9
  %arr5 = getelementptr inbounds %struct.extent_arr, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %arr5, align 8, !tbaa !30
  %12 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.extent_info, ptr %11, i64 %12
  %start = getelementptr inbounds %struct.extent_info, ptr %arrayidx, i32 0, i32 0
  store ptr null, ptr %start, align 8, !tbaa !37
  %13 = load ptr, ptr %a, align 8, !tbaa !9
  %arr6 = getelementptr inbounds %struct.extent_arr, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %arr6, align 8, !tbaa !30
  %15 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx7 = getelementptr inbounds %struct.extent_info, ptr %14, i64 %15
  %end = getelementptr inbounds %struct.extent_info, ptr %arrayidx7, i32 0, i32 1
  store ptr null, ptr %end, align 8, !tbaa !39
  %16 = load ptr, ptr %a, align 8, !tbaa !9
  %arr8 = getelementptr inbounds %struct.extent_arr, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %arr8, align 8, !tbaa !30
  %18 = load i64, ptr %i, align 8, !tbaa !4
  %arrayidx9 = getelementptr inbounds %struct.extent_info, ptr %17, i64 %18
  %arena = getelementptr inbounds %struct.extent_info, ptr %arrayidx9, i32 0, i32 2
  store ptr null, ptr %arena, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i64, ptr %i, align 8, !tbaa !4
  %inc = add i64 %19, 1
  store i64 %inc, ptr %i, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %a, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #9
  ret ptr %20
}

declare void @numa_bitmask_free(ptr noundef) #6

declare ptr @numa_allocate_nodemask() #6

declare i32 @sicm_numa_id(ptr noundef) #6

declare ptr @numa_bitmask_setbit(ptr noundef, i32 noundef) #6

declare i64 @mbind(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(1) }
attributes #12 = { nounwind willreturn memory(none) }

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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!14, !12, i64 0}
!14 = !{!"sicm_device_list", !12, i64 0, !10, i64 8}
!15 = !{!16, !6, i64 8}
!16 = !{!"sarena", !10, i64 0, !6, i64 8, !14, i64 16, !5, i64 32, !5, i64 40, !10, i64 48, !10, i64 56, !12, i64 64, !17, i64 72, !10, i64 144, !12, i64 152, !12, i64 156}
!17 = !{!"extent_hooks_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64}
!18 = !{!16, !12, i64 16}
!19 = !{!16, !10, i64 24}
!20 = !{!14, !10, i64 8}
!21 = !{!16, !10, i64 0}
!22 = !{!16, !5, i64 40}
!23 = !{!16, !5, i64 32}
!24 = !{!16, !10, i64 48}
!25 = !{!16, !12, i64 156}
!26 = !{!16, !10, i64 144}
!27 = !{i64 0, i64 8, !9, i64 8, i64 8, !9, i64 16, i64 8, !9, i64 24, i64 8, !9, i64 32, i64 8, !9, i64 40, i64 8, !9, i64 48, i64 8, !9, i64 56, i64 8, !9, i64 64, i64 8, !9}
!28 = !{!16, !12, i64 64}
!29 = !{!16, !10, i64 56}
!30 = !{!31, !10, i64 64}
!31 = !{!"extent_arr", !6, i64 0, !5, i64 40, !5, i64 48, !5, i64 56, !10, i64 64}
!32 = !{!33, !10, i64 8}
!33 = !{!"sicm_arena_list", !12, i64 0, !10, i64 8}
!34 = !{!33, !12, i64 0}
!35 = !{!16, !12, i64 152}
!36 = !{!31, !5, i64 48}
!37 = !{!38, !10, i64 0}
!38 = !{!"extent_info", !10, i64 0, !10, i64 8, !10, i64 16}
!39 = !{!38, !10, i64 8}
!40 = !{!41, !10, i64 8}
!41 = !{!"bitmask", !5, i64 0, !10, i64 8}
!42 = !{!41, !5, i64 0}
!43 = !{!31, !5, i64 40}
!44 = !{!31, !5, i64 56}
!45 = !{!38, !10, i64 16}
