; ModuleID = 'samples/959.bc'
source_filename = "src/hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malloc_mutex_s = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.mutex_prof_data_t, %union.pthread_mutex_t, %struct.atomic_b_t }
%struct.mutex_prof_data_t = type { %struct.nstime_t, %struct.nstime_t, i64, i64, i32, %struct.atomic_u32_t, i64, ptr, i64 }
%struct.nstime_t = type { i64 }
%struct.atomic_u32_t = type { i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.atomic_b_t = type { i8 }
%struct.atomic_u_t = type { i32 }
%struct.seq_hooks_t = type { %struct.atomic_zu_t, [5 x %struct.atomic_zu_t] }
%struct.atomic_zu_t = type { i64 }
%struct.tsd_s = type { %struct.atomic_u8_t, i8, i8, i8, i32, i64, i64, i64, i64, ptr, %struct.rtree_ctx_s, ptr, ptr, ptr, %struct.tsd_binshards_s, %struct.tcache_s, %struct.witness_tsd_s }
%struct.atomic_u8_t = type { i8 }
%struct.rtree_ctx_s = type { [16 x %struct.rtree_ctx_cache_elm_s], [8 x %struct.rtree_ctx_cache_elm_s] }
%struct.rtree_ctx_cache_elm_s = type { i64, ptr }
%struct.tsd_binshards_s = type { [39 x i8] }
%struct.tcache_s = type { i64, %struct.ticker_t, [39 x %struct.cache_bin_s], %struct.anon.1, %struct.anon.2, i8, %struct.cache_bin_array_descriptor_s, ptr, i32, [39 x i8], [196 x %struct.cache_bin_s] }
%struct.ticker_t = type { i32, i32 }
%struct.cache_bin_s = type { i32, i32, %struct.cache_bin_stats_s, ptr }
%struct.cache_bin_stats_s = type { i64 }
%struct.anon.1 = type { ptr, ptr }
%struct.anon.2 = type { ptr, ptr }
%struct.cache_bin_array_descriptor_s = type { %struct.anon.3, ptr, ptr }
%struct.anon.3 = type { ptr, ptr }
%struct.witness_tsd_s = type { %struct.witness_list_t, i8 }
%struct.witness_list_t = type { ptr }
%struct.hooks_internal_s = type { %struct.hooks_s, i8 }
%struct.hooks_s = type { ptr, ptr, ptr, ptr }
%struct.tsdn_s = type { %struct.tsd_s }

@hooks_mu = internal global %struct.malloc_mutex_s zeroinitializer, align 8, !dbg !0
@.str = private unnamed_addr constant [6 x i8] c"hooks\00", align 1, !dbg !268
@nhooks = internal global %struct.atomic_u_t zeroinitializer, align 4, !dbg !278
@hooks = internal global [4 x %struct.seq_hooks_t] zeroinitializer, align 16, !dbg !273
@hook_reentrantp.in_hook_global = internal global i8 1, align 1, !dbg !284
@tsd_booted = external global i8, align 1
@tsd_tls = external thread_local(initialexec) global %struct.tsd_s, align 8

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hook_boot() #0 !dbg !370 {
entry:
  %call = call zeroext i1 @malloc_mutex_init(ptr noundef @hooks_mu, ptr noundef @.str, i32 noundef 21, i32 noundef 0), !dbg !373
  ret i1 %call, !dbg !374
}

declare !dbg !375 zeroext i1 @malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @hook_install(ptr noundef %tsdn, ptr noundef %to_install) #0 !dbg !379 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %to_install.addr = alloca ptr, align 8
  %ret = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !407, metadata !DIExpression()), !dbg !414
  store ptr %to_install, ptr %to_install.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %to_install.addr, metadata !408, metadata !DIExpression()), !dbg !415
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !416, !tbaa !410
  call void @malloc_mutex_lock(ptr noundef %0, ptr noundef @hooks_mu), !dbg !417
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #9, !dbg !418
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !409, metadata !DIExpression()), !dbg !419
  %1 = load ptr, ptr %to_install.addr, align 8, !dbg !420, !tbaa !410
  %call = call ptr @hook_install_locked(ptr noundef %1), !dbg !421
  store ptr %call, ptr %ret, align 8, !dbg !419, !tbaa !410
  %2 = load ptr, ptr %ret, align 8, !dbg !422, !tbaa !410
  %cmp = icmp ne ptr %2, null, !dbg !424
  br i1 %cmp, label %if.then, label %if.end, !dbg !425

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %tsdn.addr, align 8, !dbg !426, !tbaa !410
  call void @tsd_global_slow_inc(ptr noundef %3), !dbg !428
  br label %if.end, !dbg !429

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %tsdn.addr, align 8, !dbg !430, !tbaa !410
  call void @malloc_mutex_unlock(ptr noundef %4, ptr noundef @hooks_mu), !dbg !431
  %5 = load ptr, ptr %ret, align 8, !dbg !432, !tbaa !410
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #9, !dbg !433
  ret ptr %5, !dbg !434
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @malloc_mutex_lock(ptr noundef %tsdn, ptr noundef %mutex) #2 !dbg !435 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %mutex.addr = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !439, metadata !DIExpression()), !dbg !441
  store ptr %mutex, ptr %mutex.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %mutex.addr, metadata !440, metadata !DIExpression()), !dbg !442
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !443, !tbaa !410
  %call = call ptr @tsdn_witness_tsdp_get(ptr noundef %0), !dbg !444
  %1 = load ptr, ptr %mutex.addr, align 8, !dbg !445, !tbaa !410
  %2 = getelementptr inbounds %struct.malloc_mutex_s, ptr %1, i32 0, i32 0, !dbg !446
  call void @witness_assert_not_owner(ptr noundef %call, ptr noundef %2), !dbg !447
  %3 = load ptr, ptr %mutex.addr, align 8, !dbg !448, !tbaa !410
  %call1 = call zeroext i1 @malloc_mutex_trylock_final(ptr noundef %3), !dbg !452
  br i1 %call1, label %if.then, label %if.end, !dbg !453

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %mutex.addr, align 8, !dbg !454, !tbaa !410
  call void @malloc_mutex_lock_slow(ptr noundef %4), !dbg !456
  %5 = load ptr, ptr %mutex.addr, align 8, !dbg !457, !tbaa !410
  %6 = getelementptr inbounds %struct.malloc_mutex_s, ptr %5, i32 0, i32 0, !dbg !458
  %locked = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 2, !dbg !458
  call void @atomic_store_b(ptr noundef %locked, i1 noundef zeroext true, i32 noundef 0), !dbg !459
  br label %if.end, !dbg !460

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %tsdn.addr, align 8, !dbg !461, !tbaa !410
  %8 = load ptr, ptr %mutex.addr, align 8, !dbg !462, !tbaa !410
  call void @mutex_owner_stats_update(ptr noundef %7, ptr noundef %8), !dbg !463
  %9 = load ptr, ptr %tsdn.addr, align 8, !dbg !464, !tbaa !410
  %call2 = call ptr @tsdn_witness_tsdp_get(ptr noundef %9), !dbg !465
  %10 = load ptr, ptr %mutex.addr, align 8, !dbg !466, !tbaa !410
  %11 = getelementptr inbounds %struct.malloc_mutex_s, ptr %10, i32 0, i32 0, !dbg !467
  call void @witness_lock(ptr noundef %call2, ptr noundef %11), !dbg !468
  ret void, !dbg !469
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal ptr @hook_install_locked(ptr noundef %to_install) #0 !dbg !470 {
entry:
  %retval = alloca ptr, align 8
  %to_install.addr = alloca ptr, align 8
  %hooks_internal = alloca %struct.hooks_internal_s, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %success = alloca i8, align 1
  store ptr %to_install, ptr %to_install.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %to_install.addr, metadata !474, metadata !DIExpression()), !dbg !486
  call void @llvm.lifetime.start.p0(i64 40, ptr %hooks_internal) #9, !dbg !487
  tail call void @llvm.dbg.declare(metadata ptr %hooks_internal, metadata !475, metadata !DIExpression()), !dbg !488
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !489
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !481, metadata !DIExpression()), !dbg !490
  store i32 0, ptr %i, align 4, !dbg !490, !tbaa !491
  br label %for.cond, !dbg !489

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !493, !tbaa !491
  %cmp = icmp slt i32 %0, 4, !dbg !494
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !495

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup7, !dbg !495

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #9, !dbg !496
  tail call void @llvm.dbg.declare(metadata ptr %success, metadata !483, metadata !DIExpression()), !dbg !497
  %1 = load i32, ptr %i, align 4, !dbg !498, !tbaa !491
  %idxprom = sext i32 %1 to i64, !dbg !499
  %arrayidx = getelementptr inbounds [4 x %struct.seq_hooks_t], ptr @hooks, i64 0, i64 %idxprom, !dbg !499
  %call = call zeroext i1 @seq_try_load_hooks(ptr noundef %hooks_internal, ptr noundef %arrayidx), !dbg !500
  %frombool = zext i1 %call to i8, !dbg !497
  store i8 %frombool, ptr %success, align 1, !dbg !497, !tbaa !501
  br label %do.body, !dbg !503

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !504

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !504

do.end:                                           ; preds = %do.cond
  %in_use = getelementptr inbounds %struct.hooks_internal_s, ptr %hooks_internal, i32 0, i32 1, !dbg !506
  %2 = load i8, ptr %in_use, align 8, !dbg !506, !tbaa !508, !range !511, !noundef !512
  %tobool = trunc i8 %2 to i1, !dbg !506
  br i1 %tobool, label %if.end, label %if.then, !dbg !513

if.then:                                          ; preds = %do.end
  %hooks = getelementptr inbounds %struct.hooks_internal_s, ptr %hooks_internal, i32 0, i32 0, !dbg !514
  %3 = load ptr, ptr %to_install.addr, align 8, !dbg !516, !tbaa !410
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %hooks, ptr align 8 %3, i64 32, i1 false), !dbg !517, !tbaa.struct !518
  %in_use1 = getelementptr inbounds %struct.hooks_internal_s, ptr %hooks_internal, i32 0, i32 1, !dbg !519
  store i8 1, ptr %in_use1, align 8, !dbg !520, !tbaa !508
  %4 = load i32, ptr %i, align 4, !dbg !521, !tbaa !491
  %idxprom2 = sext i32 %4 to i64, !dbg !522
  %arrayidx3 = getelementptr inbounds [4 x %struct.seq_hooks_t], ptr @hooks, i64 0, i64 %idxprom2, !dbg !522
  call void @seq_store_hooks(ptr noundef %arrayidx3, ptr noundef %hooks_internal), !dbg !523
  %call4 = call i32 @atomic_load_u(ptr noundef @nhooks, i32 noundef 0), !dbg !524
  %add = add i32 %call4, 1, !dbg !525
  call void @atomic_store_u(ptr noundef @nhooks, i32 noundef %add, i32 noundef 0), !dbg !526
  %5 = load i32, ptr %i, align 4, !dbg !527, !tbaa !491
  %idxprom5 = sext i32 %5 to i64, !dbg !528
  %arrayidx6 = getelementptr inbounds [4 x %struct.seq_hooks_t], ptr @hooks, i64 0, i64 %idxprom5, !dbg !528
  store ptr %arrayidx6, ptr %retval, align 8, !dbg !529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !529

if.end:                                           ; preds = %do.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !530
  br label %cleanup, !dbg !530

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #9, !dbg !530
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup7 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !531

for.inc:                                          ; preds = %cleanup.cont
  %6 = load i32, ptr %i, align 4, !dbg !532, !tbaa !491
  %inc = add nsw i32 %6, 1, !dbg !532
  store i32 %inc, ptr %i, align 4, !dbg !532, !tbaa !491
  br label %for.cond, !dbg !533, !llvm.loop !534

cleanup7:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !533
  %cleanup.dest8 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest8, label %cleanup9 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup7
  store ptr null, ptr %retval, align 8, !dbg !536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !536

cleanup9:                                         ; preds = %for.end, %cleanup7
  call void @llvm.lifetime.end.p0(i64 40, ptr %hooks_internal) #9, !dbg !537
  %7 = load ptr, ptr %retval, align 8, !dbg !537
  ret ptr %7, !dbg !537
}

declare !dbg !538 void @tsd_global_slow_inc(ptr noundef) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @malloc_mutex_unlock(ptr noundef %tsdn, ptr noundef %mutex) #2 !dbg !541 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %mutex.addr = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !543, metadata !DIExpression()), !dbg !545
  store ptr %mutex, ptr %mutex.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %mutex.addr, metadata !544, metadata !DIExpression()), !dbg !546
  %0 = load ptr, ptr %mutex.addr, align 8, !dbg !547, !tbaa !410
  %1 = getelementptr inbounds %struct.malloc_mutex_s, ptr %0, i32 0, i32 0, !dbg !548
  %locked = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2, !dbg !548
  call void @atomic_store_b(ptr noundef %locked, i1 noundef zeroext false, i32 noundef 0), !dbg !549
  %2 = load ptr, ptr %tsdn.addr, align 8, !dbg !550, !tbaa !410
  %call = call ptr @tsdn_witness_tsdp_get(ptr noundef %2), !dbg !551
  %3 = load ptr, ptr %mutex.addr, align 8, !dbg !552, !tbaa !410
  %4 = getelementptr inbounds %struct.malloc_mutex_s, ptr %3, i32 0, i32 0, !dbg !553
  call void @witness_unlock(ptr noundef %call, ptr noundef %4), !dbg !554
  %5 = load ptr, ptr %mutex.addr, align 8, !dbg !555, !tbaa !410
  %6 = getelementptr inbounds %struct.malloc_mutex_s, ptr %5, i32 0, i32 0, !dbg !555
  %lock = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 1, !dbg !555
  %call1 = call i32 @pthread_mutex_unlock(ptr noundef %lock) #9, !dbg !555
  ret void, !dbg !558
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @hook_remove(ptr noundef %tsdn, ptr noundef %opaque) #0 !dbg !559 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %opaque.addr = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !563, metadata !DIExpression()), !dbg !565
  store ptr %opaque, ptr %opaque.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %opaque.addr, metadata !564, metadata !DIExpression()), !dbg !566
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !567, !tbaa !410
  call void @malloc_mutex_lock(ptr noundef %0, ptr noundef @hooks_mu), !dbg !568
  %1 = load ptr, ptr %opaque.addr, align 8, !dbg !569, !tbaa !410
  call void @hook_remove_locked(ptr noundef %1), !dbg !570
  %2 = load ptr, ptr %tsdn.addr, align 8, !dbg !571, !tbaa !410
  call void @tsd_global_slow_dec(ptr noundef %2), !dbg !572
  %3 = load ptr, ptr %tsdn.addr, align 8, !dbg !573, !tbaa !410
  call void @malloc_mutex_unlock(ptr noundef %3, ptr noundef @hooks_mu), !dbg !574
  ret void, !dbg !575
}

; Function Attrs: nounwind uwtable
define internal void @hook_remove_locked(ptr noundef %to_remove) #0 !dbg !576 {
entry:
  %to_remove.addr = alloca ptr, align 8
  %hooks_internal = alloca %struct.hooks_internal_s, align 8
  %success = alloca i8, align 1
  store ptr %to_remove, ptr %to_remove.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %to_remove.addr, metadata !580, metadata !DIExpression()), !dbg !583
  call void @llvm.lifetime.start.p0(i64 40, ptr %hooks_internal) #9, !dbg !584
  tail call void @llvm.dbg.declare(metadata ptr %hooks_internal, metadata !581, metadata !DIExpression()), !dbg !585
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #9, !dbg !586
  tail call void @llvm.dbg.declare(metadata ptr %success, metadata !582, metadata !DIExpression()), !dbg !587
  %0 = load ptr, ptr %to_remove.addr, align 8, !dbg !588, !tbaa !410
  %call = call zeroext i1 @seq_try_load_hooks(ptr noundef %hooks_internal, ptr noundef %0), !dbg !589
  %frombool = zext i1 %call to i8, !dbg !587
  store i8 %frombool, ptr %success, align 1, !dbg !587, !tbaa !501
  br label %do.body, !dbg !590

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !591

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !591

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !593

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !594

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !594

do.end3:                                          ; preds = %do.cond2
  %in_use = getelementptr inbounds %struct.hooks_internal_s, ptr %hooks_internal, i32 0, i32 1, !dbg !596
  store i8 0, ptr %in_use, align 8, !dbg !597, !tbaa !508
  %1 = load ptr, ptr %to_remove.addr, align 8, !dbg !598, !tbaa !410
  call void @seq_store_hooks(ptr noundef %1, ptr noundef %hooks_internal), !dbg !599
  %call4 = call i32 @atomic_load_u(ptr noundef @nhooks, i32 noundef 0), !dbg !600
  %sub = sub i32 %call4, 1, !dbg !601
  call void @atomic_store_u(ptr noundef @nhooks, i32 noundef %sub, i32 noundef 0), !dbg !602
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #9, !dbg !603
  call void @llvm.lifetime.end.p0(i64 40, ptr %hooks_internal) #9, !dbg !603
  ret void, !dbg !603
}

declare !dbg !604 void @tsd_global_slow_dec(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @hook_invoke_alloc(i32 noundef %type, ptr noundef %result, i64 noundef %result_raw, ptr noundef %args_raw) #0 !dbg !605 {
entry:
  %type.addr = alloca i32, align 4
  %result.addr = alloca ptr, align 8
  %result_raw.addr = alloca i64, align 8
  %args_raw.addr = alloca ptr, align 8
  %in_hook = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %hook = alloca %struct.hooks_internal_s, align 8
  %for_each_hook_counter = alloca i32, align 4
  %for_each_hook_success = alloca i8, align 1
  %h = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4, !tbaa !621
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !609, metadata !DIExpression()), !dbg !622
  store ptr %result, ptr %result.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !610, metadata !DIExpression()), !dbg !623
  store i64 %result_raw, ptr %result_raw.addr, align 8, !tbaa !624
  tail call void @llvm.dbg.declare(metadata ptr %result_raw.addr, metadata !611, metadata !DIExpression()), !dbg !626
  store ptr %args_raw, ptr %args_raw.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %args_raw.addr, metadata !612, metadata !DIExpression()), !dbg !627
  %call = call i32 @atomic_load_u(ptr noundef @nhooks, i32 noundef 0), !dbg !628
  %cmp = icmp eq i32 %call, 0, !dbg !628
  %lnot = xor i1 %cmp, true, !dbg !628
  %lnot1 = xor i1 %lnot, true, !dbg !628
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !628
  %conv = sext i32 %lnot.ext to i64, !dbg !628
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !628
  %tobool = icmp ne i64 %expval, 0, !dbg !628
  br i1 %tobool, label %if.then, label %if.end, !dbg !630

if.then:                                          ; preds = %entry
  br label %cleanup.cont23, !dbg !631

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %in_hook) #9, !dbg !630
  tail call void @llvm.dbg.declare(metadata ptr %in_hook, metadata !613, metadata !DIExpression()), !dbg !630
  %call2 = call ptr @hook_reentrantp(), !dbg !630
  store ptr %call2, ptr %in_hook, align 8, !dbg !630, !tbaa !410
  %0 = load ptr, ptr %in_hook, align 8, !dbg !633, !tbaa !410
  %1 = load i8, ptr %0, align 1, !dbg !633, !tbaa !501, !range !511, !noundef !512
  %tobool3 = trunc i8 %1 to i1, !dbg !633
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !630

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !635

if.end5:                                          ; preds = %if.end
  %2 = load ptr, ptr %in_hook, align 8, !dbg !630, !tbaa !410
  store i8 1, ptr %2, align 1, !dbg !630, !tbaa !501
  call void @llvm.lifetime.start.p0(i64 40, ptr %hook) #9, !dbg !637
  tail call void @llvm.dbg.declare(metadata ptr %hook, metadata !614, metadata !DIExpression()), !dbg !638
  call void @llvm.lifetime.start.p0(i64 4, ptr %for_each_hook_counter) #9, !dbg !639
  tail call void @llvm.dbg.declare(metadata ptr %for_each_hook_counter, metadata !615, metadata !DIExpression()), !dbg !639
  store i32 0, ptr %for_each_hook_counter, align 4, !dbg !639, !tbaa !491
  br label %for.cond, !dbg !639

for.cond:                                         ; preds = %for.inc, %if.end5
  %3 = load i32, ptr %for_each_hook_counter, align 4, !dbg !640, !tbaa !491
  %cmp6 = icmp slt i32 %3, 4, !dbg !640
  br i1 %cmp6, label %for.body, label %for.cond.cleanup, !dbg !639

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %for_each_hook_counter) #9, !dbg !640
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %for_each_hook_success) #9, !dbg !641
  tail call void @llvm.dbg.declare(metadata ptr %for_each_hook_success, metadata !617, metadata !DIExpression()), !dbg !641
  %4 = load i32, ptr %for_each_hook_counter, align 4, !dbg !641, !tbaa !491
  %idxprom = sext i32 %4 to i64, !dbg !641
  %arrayidx = getelementptr inbounds [4 x %struct.seq_hooks_t], ptr @hooks, i64 0, i64 %idxprom, !dbg !641
  %call8 = call zeroext i1 @seq_try_load_hooks(ptr noundef %hook, ptr noundef %arrayidx), !dbg !641
  %frombool = zext i1 %call8 to i8, !dbg !641
  store i8 %frombool, ptr %for_each_hook_success, align 1, !dbg !641, !tbaa !501
  %5 = load i8, ptr %for_each_hook_success, align 1, !dbg !642, !tbaa !501, !range !511, !noundef !512
  %tobool9 = trunc i8 %5 to i1, !dbg !642
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !641

if.then10:                                        ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !644

if.end11:                                         ; preds = %for.body
  %in_use = getelementptr inbounds %struct.hooks_internal_s, ptr %hook, i32 0, i32 1, !dbg !646
  %6 = load i8, ptr %in_use, align 8, !dbg !646, !tbaa !508, !range !511, !noundef !512
  %tobool12 = trunc i8 %6 to i1, !dbg !646
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !641

if.then13:                                        ; preds = %if.end11
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !648

if.end14:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #9, !dbg !650
  tail call void @llvm.dbg.declare(metadata ptr %h, metadata !620, metadata !DIExpression()), !dbg !651
  %hooks = getelementptr inbounds %struct.hooks_internal_s, ptr %hook, i32 0, i32 0, !dbg !652
  %alloc_hook = getelementptr inbounds %struct.hooks_s, ptr %hooks, i32 0, i32 0, !dbg !653
  %7 = load ptr, ptr %alloc_hook, align 8, !dbg !653, !tbaa !654
  store ptr %7, ptr %h, align 8, !dbg !651, !tbaa !410
  %8 = load ptr, ptr %h, align 8, !dbg !655, !tbaa !410
  %cmp15 = icmp ne ptr %8, null, !dbg !657
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !658

if.then17:                                        ; preds = %if.end14
  %9 = load ptr, ptr %h, align 8, !dbg !659, !tbaa !410
  %hooks18 = getelementptr inbounds %struct.hooks_internal_s, ptr %hook, i32 0, i32 0, !dbg !661
  %extra = getelementptr inbounds %struct.hooks_s, ptr %hooks18, i32 0, i32 3, !dbg !662
  %10 = load ptr, ptr %extra, align 8, !dbg !662, !tbaa !663
  %11 = load i32, ptr %type.addr, align 4, !dbg !664, !tbaa !621
  %12 = load ptr, ptr %result.addr, align 8, !dbg !665, !tbaa !410
  %13 = load i64, ptr %result_raw.addr, align 8, !dbg !666, !tbaa !624
  %14 = load ptr, ptr %args_raw.addr, align 8, !dbg !667, !tbaa !410
  call void %9(ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14), !dbg !659
  br label %if.end19, !dbg !668

if.end19:                                         ; preds = %if.then17, %if.end14
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #9, !dbg !669
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !669
  br label %cleanup, !dbg !669

cleanup:                                          ; preds = %if.end19, %if.then13, %if.then10
  call void @llvm.lifetime.end.p0(i64 1, ptr %for_each_hook_success) #9, !dbg !669
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !670

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %15 = load i32, ptr %for_each_hook_counter, align 4, !dbg !640, !tbaa !491
  %inc = add nsw i32 %15, 1, !dbg !640
  store i32 %inc, ptr %for_each_hook_counter, align 4, !dbg !640, !tbaa !491
  br label %for.cond, !dbg !640, !llvm.loop !671

for.end:                                          ; preds = %for.cond.cleanup
  %16 = load ptr, ptr %in_hook, align 8, !dbg !673, !tbaa !410
  store i8 0, ptr %16, align 1, !dbg !673, !tbaa !501
  call void @llvm.lifetime.end.p0(i64 40, ptr %hook) #9, !dbg !674
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !674
  br label %cleanup21, !dbg !674

cleanup21:                                        ; preds = %for.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %in_hook) #9, !dbg !674
  %cleanup.dest22 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest22, label %unreachable [
    i32 0, label %cleanup.cont23
    i32 1, label %cleanup.cont23
  ]

cleanup.cont23:                                   ; preds = %if.then, %cleanup21, %cleanup21
  ret void, !dbg !674

unreachable:                                      ; preds = %cleanup21, %cleanup
  unreachable
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @atomic_load_u(ptr noundef %a, i32 noundef %mo) #4 !dbg !675 {
entry:
  %a.addr = alloca ptr, align 8
  %mo.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !682, metadata !DIExpression()), !dbg !685
  store i32 %mo, ptr %mo.addr, align 4, !tbaa !621
  tail call void @llvm.dbg.declare(metadata ptr %mo.addr, metadata !683, metadata !DIExpression()), !dbg !685
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #9, !dbg !685
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !684, metadata !DIExpression()), !dbg !685
  %0 = load ptr, ptr %a.addr, align 8, !dbg !685, !tbaa !410
  %repr = getelementptr inbounds %struct.atomic_u_t, ptr %0, i32 0, i32 0, !dbg !685
  %1 = load i32, ptr %mo.addr, align 4, !dbg !685, !tbaa !621
  %call = call i32 @atomic_enum_to_builtin(i32 noundef %1), !dbg !685
  switch i32 %call, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 5, label %seqcst
  ], !dbg !685

monotonic:                                        ; preds = %entry
  %2 = load atomic i32, ptr %repr monotonic, align 4, !dbg !685
  store i32 %2, ptr %result, align 4, !dbg !685
  br label %atomic.continue, !dbg !685

acquire:                                          ; preds = %entry, %entry
  %3 = load atomic i32, ptr %repr acquire, align 4, !dbg !685
  store i32 %3, ptr %result, align 4, !dbg !685
  br label %atomic.continue, !dbg !685

seqcst:                                           ; preds = %entry
  %4 = load atomic i32, ptr %repr seq_cst, align 4, !dbg !685
  store i32 %4, ptr %result, align 4, !dbg !685
  br label %atomic.continue, !dbg !685

atomic.continue:                                  ; preds = %seqcst, %acquire, %monotonic
  %5 = load i32, ptr %result, align 4, !dbg !685, !tbaa !491
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #9, !dbg !685
  ret i32 %5, !dbg !685
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @seq_try_load_hooks(ptr noundef %dst, ptr noundef %src) #2 !dbg !686 {
entry:
  %retval = alloca i1, align 1
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %buf = alloca [5 x i64], align 16
  %seq1 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i64, align 8
  %seq2 = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !691, metadata !DIExpression()), !dbg !699
  store ptr %src, ptr %src.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !692, metadata !DIExpression()), !dbg !699
  call void @llvm.lifetime.start.p0(i64 40, ptr %buf) #9, !dbg !699
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !693, metadata !DIExpression()), !dbg !699
  call void @llvm.lifetime.start.p0(i64 8, ptr %seq1) #9, !dbg !699
  tail call void @llvm.dbg.declare(metadata ptr %seq1, metadata !695, metadata !DIExpression()), !dbg !699
  %0 = load ptr, ptr %src.addr, align 8, !dbg !699, !tbaa !410
  %seq = getelementptr inbounds %struct.seq_hooks_t, ptr %0, i32 0, i32 0, !dbg !699
  %call = call i64 @atomic_load_zu(ptr noundef %seq, i32 noundef 1), !dbg !699
  store i64 %call, ptr %seq1, align 8, !dbg !699, !tbaa !624
  %1 = load i64, ptr %seq1, align 8, !dbg !700, !tbaa !624
  %rem = urem i64 %1, 2, !dbg !700
  %cmp = icmp ne i64 %rem, 0, !dbg !700
  br i1 %cmp, label %if.then, label %if.end, !dbg !699

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !702
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup9, !dbg !702

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9, !dbg !704
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !696, metadata !DIExpression()), !dbg !704
  store i64 0, ptr %i, align 8, !dbg !704, !tbaa !624
  br label %for.cond, !dbg !704

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i64, ptr %i, align 8, !dbg !705, !tbaa !624
  %cmp1 = icmp ult i64 %2, 5, !dbg !705
  br i1 %cmp1, label %for.body, label %for.cond.cleanup, !dbg !704

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9, !dbg !705
  br label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %src.addr, align 8, !dbg !707, !tbaa !410
  %data = getelementptr inbounds %struct.seq_hooks_t, ptr %3, i32 0, i32 1, !dbg !707
  %4 = load i64, ptr %i, align 8, !dbg !707, !tbaa !624
  %arrayidx = getelementptr inbounds [5 x %struct.atomic_zu_t], ptr %data, i64 0, i64 %4, !dbg !707
  %call2 = call i64 @atomic_load_zu(ptr noundef %arrayidx, i32 noundef 0), !dbg !707
  %5 = load i64, ptr %i, align 8, !dbg !707, !tbaa !624
  %arrayidx3 = getelementptr inbounds [5 x i64], ptr %buf, i64 0, i64 %5, !dbg !707
  store i64 %call2, ptr %arrayidx3, align 8, !dbg !707, !tbaa !624
  br label %for.inc, !dbg !707

for.inc:                                          ; preds = %for.body
  %6 = load i64, ptr %i, align 8, !dbg !705, !tbaa !624
  %inc = add i64 %6, 1, !dbg !705
  store i64 %inc, ptr %i, align 8, !dbg !705, !tbaa !624
  br label %for.cond, !dbg !705, !llvm.loop !709

for.end:                                          ; preds = %for.cond.cleanup
  call void @atomic_fence(i32 noundef 1), !dbg !699
  call void @llvm.lifetime.start.p0(i64 8, ptr %seq2) #9, !dbg !699
  tail call void @llvm.dbg.declare(metadata ptr %seq2, metadata !698, metadata !DIExpression()), !dbg !699
  %7 = load ptr, ptr %src.addr, align 8, !dbg !699, !tbaa !410
  %seq4 = getelementptr inbounds %struct.seq_hooks_t, ptr %7, i32 0, i32 0, !dbg !699
  %call5 = call i64 @atomic_load_zu(ptr noundef %seq4, i32 noundef 0), !dbg !699
  store i64 %call5, ptr %seq2, align 8, !dbg !699, !tbaa !624
  %8 = load i64, ptr %seq1, align 8, !dbg !710, !tbaa !624
  %9 = load i64, ptr %seq2, align 8, !dbg !710, !tbaa !624
  %cmp6 = icmp ne i64 %8, %9, !dbg !710
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !699

if.then7:                                         ; preds = %for.end
  store i1 false, ptr %retval, align 1, !dbg !712
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !712

if.end8:                                          ; preds = %for.end
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !699, !tbaa !410
  %arraydecay = getelementptr inbounds [5 x i64], ptr %buf, i64 0, i64 0, !dbg !699
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 16 %arraydecay, i64 40, i1 false), !dbg !699
  store i1 true, ptr %retval, align 1, !dbg !699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !699

cleanup:                                          ; preds = %if.end8, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %seq2) #9, !dbg !699
  br label %cleanup9

cleanup9:                                         ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %seq1) #9, !dbg !699
  call void @llvm.lifetime.end.p0(i64 40, ptr %buf) #9, !dbg !699
  %11 = load i1, ptr %retval, align 1, !dbg !699
  ret i1 %11, !dbg !699
}

; Function Attrs: nounwind uwtable
define dso_local void @hook_invoke_dalloc(i32 noundef %type, ptr noundef %address, ptr noundef %args_raw) #0 !dbg !714 {
entry:
  %type.addr = alloca i32, align 4
  %address.addr = alloca ptr, align 8
  %args_raw.addr = alloca ptr, align 8
  %in_hook = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %hook = alloca %struct.hooks_internal_s, align 8
  %for_each_hook_counter = alloca i32, align 4
  %for_each_hook_success = alloca i8, align 1
  %h = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4, !tbaa !621
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !718, metadata !DIExpression()), !dbg !729
  store ptr %address, ptr %address.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !719, metadata !DIExpression()), !dbg !730
  store ptr %args_raw, ptr %args_raw.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %args_raw.addr, metadata !720, metadata !DIExpression()), !dbg !731
  %call = call i32 @atomic_load_u(ptr noundef @nhooks, i32 noundef 0), !dbg !732
  %cmp = icmp eq i32 %call, 0, !dbg !732
  %lnot = xor i1 %cmp, true, !dbg !732
  %lnot1 = xor i1 %lnot, true, !dbg !732
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !732
  %conv = sext i32 %lnot.ext to i64, !dbg !732
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !732
  %tobool = icmp ne i64 %expval, 0, !dbg !732
  br i1 %tobool, label %if.then, label %if.end, !dbg !734

if.then:                                          ; preds = %entry
  br label %cleanup.cont23, !dbg !735

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %in_hook) #9, !dbg !734
  tail call void @llvm.dbg.declare(metadata ptr %in_hook, metadata !721, metadata !DIExpression()), !dbg !734
  %call2 = call ptr @hook_reentrantp(), !dbg !734
  store ptr %call2, ptr %in_hook, align 8, !dbg !734, !tbaa !410
  %0 = load ptr, ptr %in_hook, align 8, !dbg !737, !tbaa !410
  %1 = load i8, ptr %0, align 1, !dbg !737, !tbaa !501, !range !511, !noundef !512
  %tobool3 = trunc i8 %1 to i1, !dbg !737
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !734

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !739

if.end5:                                          ; preds = %if.end
  %2 = load ptr, ptr %in_hook, align 8, !dbg !734, !tbaa !410
  store i8 1, ptr %2, align 1, !dbg !734, !tbaa !501
  call void @llvm.lifetime.start.p0(i64 40, ptr %hook) #9, !dbg !741
  tail call void @llvm.dbg.declare(metadata ptr %hook, metadata !722, metadata !DIExpression()), !dbg !742
  call void @llvm.lifetime.start.p0(i64 4, ptr %for_each_hook_counter) #9, !dbg !743
  tail call void @llvm.dbg.declare(metadata ptr %for_each_hook_counter, metadata !723, metadata !DIExpression()), !dbg !743
  store i32 0, ptr %for_each_hook_counter, align 4, !dbg !743, !tbaa !491
  br label %for.cond, !dbg !743

for.cond:                                         ; preds = %for.inc, %if.end5
  %3 = load i32, ptr %for_each_hook_counter, align 4, !dbg !744, !tbaa !491
  %cmp6 = icmp slt i32 %3, 4, !dbg !744
  br i1 %cmp6, label %for.body, label %for.cond.cleanup, !dbg !743

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %for_each_hook_counter) #9, !dbg !744
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %for_each_hook_success) #9, !dbg !745
  tail call void @llvm.dbg.declare(metadata ptr %for_each_hook_success, metadata !725, metadata !DIExpression()), !dbg !745
  %4 = load i32, ptr %for_each_hook_counter, align 4, !dbg !745, !tbaa !491
  %idxprom = sext i32 %4 to i64, !dbg !745
  %arrayidx = getelementptr inbounds [4 x %struct.seq_hooks_t], ptr @hooks, i64 0, i64 %idxprom, !dbg !745
  %call8 = call zeroext i1 @seq_try_load_hooks(ptr noundef %hook, ptr noundef %arrayidx), !dbg !745
  %frombool = zext i1 %call8 to i8, !dbg !745
  store i8 %frombool, ptr %for_each_hook_success, align 1, !dbg !745, !tbaa !501
  %5 = load i8, ptr %for_each_hook_success, align 1, !dbg !746, !tbaa !501, !range !511, !noundef !512
  %tobool9 = trunc i8 %5 to i1, !dbg !746
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !745

if.then10:                                        ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !748

if.end11:                                         ; preds = %for.body
  %in_use = getelementptr inbounds %struct.hooks_internal_s, ptr %hook, i32 0, i32 1, !dbg !750
  %6 = load i8, ptr %in_use, align 8, !dbg !750, !tbaa !508, !range !511, !noundef !512
  %tobool12 = trunc i8 %6 to i1, !dbg !750
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !745

if.then13:                                        ; preds = %if.end11
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !752

if.end14:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #9, !dbg !754
  tail call void @llvm.dbg.declare(metadata ptr %h, metadata !728, metadata !DIExpression()), !dbg !755
  %hooks = getelementptr inbounds %struct.hooks_internal_s, ptr %hook, i32 0, i32 0, !dbg !756
  %dalloc_hook = getelementptr inbounds %struct.hooks_s, ptr %hooks, i32 0, i32 1, !dbg !757
  %7 = load ptr, ptr %dalloc_hook, align 8, !dbg !757, !tbaa !758
  store ptr %7, ptr %h, align 8, !dbg !755, !tbaa !410
  %8 = load ptr, ptr %h, align 8, !dbg !759, !tbaa !410
  %cmp15 = icmp ne ptr %8, null, !dbg !761
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !762

if.then17:                                        ; preds = %if.end14
  %9 = load ptr, ptr %h, align 8, !dbg !763, !tbaa !410
  %hooks18 = getelementptr inbounds %struct.hooks_internal_s, ptr %hook, i32 0, i32 0, !dbg !765
  %extra = getelementptr inbounds %struct.hooks_s, ptr %hooks18, i32 0, i32 3, !dbg !766
  %10 = load ptr, ptr %extra, align 8, !dbg !766, !tbaa !663
  %11 = load i32, ptr %type.addr, align 4, !dbg !767, !tbaa !621
  %12 = load ptr, ptr %address.addr, align 8, !dbg !768, !tbaa !410
  %13 = load ptr, ptr %args_raw.addr, align 8, !dbg !769, !tbaa !410
  call void %9(ptr noundef %10, i32 noundef %11, ptr noundef %12, ptr noundef %13), !dbg !763
  br label %if.end19, !dbg !770

if.end19:                                         ; preds = %if.then17, %if.end14
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #9, !dbg !771
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !771
  br label %cleanup, !dbg !771

cleanup:                                          ; preds = %if.end19, %if.then13, %if.then10
  call void @llvm.lifetime.end.p0(i64 1, ptr %for_each_hook_success) #9, !dbg !771
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !772

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %14 = load i32, ptr %for_each_hook_counter, align 4, !dbg !744, !tbaa !491
  %inc = add nsw i32 %14, 1, !dbg !744
  store i32 %inc, ptr %for_each_hook_counter, align 4, !dbg !744, !tbaa !491
  br label %for.cond, !dbg !744, !llvm.loop !773

for.end:                                          ; preds = %for.cond.cleanup
  %15 = load ptr, ptr %in_hook, align 8, !dbg !775, !tbaa !410
  store i8 0, ptr %15, align 1, !dbg !775, !tbaa !501
  call void @llvm.lifetime.end.p0(i64 40, ptr %hook) #9, !dbg !776
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !776
  br label %cleanup21, !dbg !776

cleanup21:                                        ; preds = %for.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %in_hook) #9, !dbg !776
  %cleanup.dest22 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest22, label %unreachable [
    i32 0, label %cleanup.cont23
    i32 1, label %cleanup.cont23
  ]

cleanup.cont23:                                   ; preds = %if.then, %cleanup21, %cleanup21
  ret void, !dbg !776

unreachable:                                      ; preds = %cleanup21, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @hook_invoke_expand(i32 noundef %type, ptr noundef %address, i64 noundef %old_usize, i64 noundef %new_usize, i64 noundef %result_raw, ptr noundef %args_raw) #0 !dbg !777 {
entry:
  %type.addr = alloca i32, align 4
  %address.addr = alloca ptr, align 8
  %old_usize.addr = alloca i64, align 8
  %new_usize.addr = alloca i64, align 8
  %result_raw.addr = alloca i64, align 8
  %args_raw.addr = alloca ptr, align 8
  %in_hook = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %hook = alloca %struct.hooks_internal_s, align 8
  %for_each_hook_counter = alloca i32, align 4
  %for_each_hook_success = alloca i8, align 1
  %h = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4, !tbaa !621
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !781, metadata !DIExpression()), !dbg !795
  store ptr %address, ptr %address.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !782, metadata !DIExpression()), !dbg !796
  store i64 %old_usize, ptr %old_usize.addr, align 8, !tbaa !624
  tail call void @llvm.dbg.declare(metadata ptr %old_usize.addr, metadata !783, metadata !DIExpression()), !dbg !797
  store i64 %new_usize, ptr %new_usize.addr, align 8, !tbaa !624
  tail call void @llvm.dbg.declare(metadata ptr %new_usize.addr, metadata !784, metadata !DIExpression()), !dbg !798
  store i64 %result_raw, ptr %result_raw.addr, align 8, !tbaa !624
  tail call void @llvm.dbg.declare(metadata ptr %result_raw.addr, metadata !785, metadata !DIExpression()), !dbg !799
  store ptr %args_raw, ptr %args_raw.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %args_raw.addr, metadata !786, metadata !DIExpression()), !dbg !800
  %call = call i32 @atomic_load_u(ptr noundef @nhooks, i32 noundef 0), !dbg !801
  %cmp = icmp eq i32 %call, 0, !dbg !801
  %lnot = xor i1 %cmp, true, !dbg !801
  %lnot1 = xor i1 %lnot, true, !dbg !801
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !801
  %conv = sext i32 %lnot.ext to i64, !dbg !801
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !801
  %tobool = icmp ne i64 %expval, 0, !dbg !801
  br i1 %tobool, label %if.then, label %if.end, !dbg !803

if.then:                                          ; preds = %entry
  br label %cleanup.cont23, !dbg !804

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %in_hook) #9, !dbg !803
  tail call void @llvm.dbg.declare(metadata ptr %in_hook, metadata !787, metadata !DIExpression()), !dbg !803
  %call2 = call ptr @hook_reentrantp(), !dbg !803
  store ptr %call2, ptr %in_hook, align 8, !dbg !803, !tbaa !410
  %0 = load ptr, ptr %in_hook, align 8, !dbg !806, !tbaa !410
  %1 = load i8, ptr %0, align 1, !dbg !806, !tbaa !501, !range !511, !noundef !512
  %tobool3 = trunc i8 %1 to i1, !dbg !806
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !803

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !808

if.end5:                                          ; preds = %if.end
  %2 = load ptr, ptr %in_hook, align 8, !dbg !803, !tbaa !410
  store i8 1, ptr %2, align 1, !dbg !803, !tbaa !501
  call void @llvm.lifetime.start.p0(i64 40, ptr %hook) #9, !dbg !810
  tail call void @llvm.dbg.declare(metadata ptr %hook, metadata !788, metadata !DIExpression()), !dbg !811
  call void @llvm.lifetime.start.p0(i64 4, ptr %for_each_hook_counter) #9, !dbg !812
  tail call void @llvm.dbg.declare(metadata ptr %for_each_hook_counter, metadata !789, metadata !DIExpression()), !dbg !812
  store i32 0, ptr %for_each_hook_counter, align 4, !dbg !812, !tbaa !491
  br label %for.cond, !dbg !812

for.cond:                                         ; preds = %for.inc, %if.end5
  %3 = load i32, ptr %for_each_hook_counter, align 4, !dbg !813, !tbaa !491
  %cmp6 = icmp slt i32 %3, 4, !dbg !813
  br i1 %cmp6, label %for.body, label %for.cond.cleanup, !dbg !812

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %for_each_hook_counter) #9, !dbg !813
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %for_each_hook_success) #9, !dbg !814
  tail call void @llvm.dbg.declare(metadata ptr %for_each_hook_success, metadata !791, metadata !DIExpression()), !dbg !814
  %4 = load i32, ptr %for_each_hook_counter, align 4, !dbg !814, !tbaa !491
  %idxprom = sext i32 %4 to i64, !dbg !814
  %arrayidx = getelementptr inbounds [4 x %struct.seq_hooks_t], ptr @hooks, i64 0, i64 %idxprom, !dbg !814
  %call8 = call zeroext i1 @seq_try_load_hooks(ptr noundef %hook, ptr noundef %arrayidx), !dbg !814
  %frombool = zext i1 %call8 to i8, !dbg !814
  store i8 %frombool, ptr %for_each_hook_success, align 1, !dbg !814, !tbaa !501
  %5 = load i8, ptr %for_each_hook_success, align 1, !dbg !815, !tbaa !501, !range !511, !noundef !512
  %tobool9 = trunc i8 %5 to i1, !dbg !815
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !814

if.then10:                                        ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !817

if.end11:                                         ; preds = %for.body
  %in_use = getelementptr inbounds %struct.hooks_internal_s, ptr %hook, i32 0, i32 1, !dbg !819
  %6 = load i8, ptr %in_use, align 8, !dbg !819, !tbaa !508, !range !511, !noundef !512
  %tobool12 = trunc i8 %6 to i1, !dbg !819
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !814

if.then13:                                        ; preds = %if.end11
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !821

if.end14:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #9, !dbg !823
  tail call void @llvm.dbg.declare(metadata ptr %h, metadata !794, metadata !DIExpression()), !dbg !824
  %hooks = getelementptr inbounds %struct.hooks_internal_s, ptr %hook, i32 0, i32 0, !dbg !825
  %expand_hook = getelementptr inbounds %struct.hooks_s, ptr %hooks, i32 0, i32 2, !dbg !826
  %7 = load ptr, ptr %expand_hook, align 8, !dbg !826, !tbaa !827
  store ptr %7, ptr %h, align 8, !dbg !824, !tbaa !410
  %8 = load ptr, ptr %h, align 8, !dbg !828, !tbaa !410
  %cmp15 = icmp ne ptr %8, null, !dbg !830
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !831

if.then17:                                        ; preds = %if.end14
  %9 = load ptr, ptr %h, align 8, !dbg !832, !tbaa !410
  %hooks18 = getelementptr inbounds %struct.hooks_internal_s, ptr %hook, i32 0, i32 0, !dbg !834
  %extra = getelementptr inbounds %struct.hooks_s, ptr %hooks18, i32 0, i32 3, !dbg !835
  %10 = load ptr, ptr %extra, align 8, !dbg !835, !tbaa !663
  %11 = load i32, ptr %type.addr, align 4, !dbg !836, !tbaa !621
  %12 = load ptr, ptr %address.addr, align 8, !dbg !837, !tbaa !410
  %13 = load i64, ptr %old_usize.addr, align 8, !dbg !838, !tbaa !624
  %14 = load i64, ptr %new_usize.addr, align 8, !dbg !839, !tbaa !624
  %15 = load i64, ptr %result_raw.addr, align 8, !dbg !840, !tbaa !624
  %16 = load ptr, ptr %args_raw.addr, align 8, !dbg !841, !tbaa !410
  call void %9(ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, ptr noundef %16), !dbg !832
  br label %if.end19, !dbg !842

if.end19:                                         ; preds = %if.then17, %if.end14
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #9, !dbg !843
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !843
  br label %cleanup, !dbg !843

cleanup:                                          ; preds = %if.end19, %if.then13, %if.then10
  call void @llvm.lifetime.end.p0(i64 1, ptr %for_each_hook_success) #9, !dbg !843
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !844

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %17 = load i32, ptr %for_each_hook_counter, align 4, !dbg !813, !tbaa !491
  %inc = add nsw i32 %17, 1, !dbg !813
  store i32 %inc, ptr %for_each_hook_counter, align 4, !dbg !813, !tbaa !491
  br label %for.cond, !dbg !813, !llvm.loop !845

for.end:                                          ; preds = %for.cond.cleanup
  %18 = load ptr, ptr %in_hook, align 8, !dbg !847, !tbaa !410
  store i8 0, ptr %18, align 1, !dbg !847, !tbaa !501
  call void @llvm.lifetime.end.p0(i64 40, ptr %hook) #9, !dbg !848
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !848
  br label %cleanup21, !dbg !848

cleanup21:                                        ; preds = %for.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %in_hook) #9, !dbg !848
  %cleanup.dest22 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest22, label %unreachable [
    i32 0, label %cleanup.cont23
    i32 1, label %cleanup.cont23
  ]

cleanup.cont23:                                   ; preds = %if.then, %cleanup21, %cleanup21
  ret void, !dbg !848

unreachable:                                      ; preds = %cleanup21, %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @witness_assert_not_owner(ptr noundef %witness_tsdn, ptr noundef %witness) #2 !dbg !849 {
entry:
  %witness_tsdn.addr = alloca ptr, align 8
  %witness.addr = alloca ptr, align 8
  %witness_tsd = alloca ptr, align 8
  %witnesses = alloca ptr, align 8
  %w = alloca ptr, align 8
  store ptr %witness_tsdn, ptr %witness_tsdn.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %witness_tsdn.addr, metadata !853, metadata !DIExpression()), !dbg !860
  store ptr %witness, ptr %witness.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %witness.addr, metadata !854, metadata !DIExpression()), !dbg !861
  call void @llvm.lifetime.start.p0(i64 8, ptr %witness_tsd) #9, !dbg !862
  tail call void @llvm.dbg.declare(metadata ptr %witness_tsd, metadata !855, metadata !DIExpression()), !dbg !863
  call void @llvm.lifetime.start.p0(i64 8, ptr %witnesses) #9, !dbg !864
  tail call void @llvm.dbg.declare(metadata ptr %witnesses, metadata !857, metadata !DIExpression()), !dbg !865
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #9, !dbg !866
  tail call void @llvm.dbg.declare(metadata ptr %w, metadata !859, metadata !DIExpression()), !dbg !867
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #9, !dbg !868
  call void @llvm.lifetime.end.p0(i64 8, ptr %witnesses) #9, !dbg !868
  call void @llvm.lifetime.end.p0(i64 8, ptr %witness_tsd) #9, !dbg !868
  ret void, !dbg !868
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsdn_witness_tsdp_get(ptr noundef %tsdn) #4 !dbg !869 {
entry:
  %retval = alloca ptr, align 8
  %tsdn.addr = alloca ptr, align 8
  %tsd = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !873, metadata !DIExpression()), !dbg !875
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !876, !tbaa !410
  %call = call zeroext i1 @tsdn_null(ptr noundef %0), !dbg !876
  br i1 %call, label %if.then, label %if.end, !dbg !875

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !878
  br label %return, !dbg !878

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsd) #9, !dbg !875
  tail call void @llvm.dbg.declare(metadata ptr %tsd, metadata !874, metadata !DIExpression()), !dbg !875
  %1 = load ptr, ptr %tsdn.addr, align 8, !dbg !875, !tbaa !410
  %call1 = call ptr @tsdn_tsd(ptr noundef %1), !dbg !875
  store ptr %call1, ptr %tsd, align 8, !dbg !875, !tbaa !410
  %2 = load ptr, ptr %tsd, align 8, !dbg !875, !tbaa !410
  %call2 = call ptr @tsd_witness_tsdp_get(ptr noundef %2), !dbg !875
  store ptr %call2, ptr %retval, align 8, !dbg !875
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsd) #9, !dbg !875
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8, !dbg !875
  ret ptr %3, !dbg !875
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @malloc_mutex_trylock_final(ptr noundef %mutex) #2 !dbg !880 {
entry:
  %mutex.addr = alloca ptr, align 8
  store ptr %mutex, ptr %mutex.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %mutex.addr, metadata !884, metadata !DIExpression()), !dbg !885
  %0 = load ptr, ptr %mutex.addr, align 8, !dbg !886, !tbaa !410
  %1 = getelementptr inbounds %struct.malloc_mutex_s, ptr %0, i32 0, i32 0, !dbg !886
  %lock = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1, !dbg !886
  %call = call i32 @pthread_mutex_trylock(ptr noundef %lock) #9, !dbg !886
  %cmp = icmp ne i32 %call, 0, !dbg !886
  ret i1 %cmp, !dbg !887
}

declare !dbg !888 void @malloc_mutex_lock_slow(ptr noundef) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal void @atomic_store_b(ptr noundef %a, i1 noundef zeroext %val, i32 noundef %mo) #4 !dbg !891 {
entry:
  %a.addr = alloca ptr, align 8
  %val.addr = alloca i8, align 1
  %mo.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !896, metadata !DIExpression()), !dbg !899
  %frombool = zext i1 %val to i8
  store i8 %frombool, ptr %val.addr, align 1, !tbaa !501
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !897, metadata !DIExpression()), !dbg !899
  store i32 %mo, ptr %mo.addr, align 4, !tbaa !621
  tail call void @llvm.dbg.declare(metadata ptr %mo.addr, metadata !898, metadata !DIExpression()), !dbg !899
  %0 = load ptr, ptr %a.addr, align 8, !dbg !899, !tbaa !410
  %repr = getelementptr inbounds %struct.atomic_b_t, ptr %0, i32 0, i32 0, !dbg !899
  %1 = load i32, ptr %mo.addr, align 4, !dbg !899, !tbaa !621
  %call = call i32 @atomic_enum_to_builtin(i32 noundef %1), !dbg !899
  switch i32 %call, label %monotonic [
    i32 3, label %release
    i32 5, label %seqcst
  ], !dbg !899

monotonic:                                        ; preds = %entry
  %2 = load i8, ptr %val.addr, align 1, !dbg !899
  store atomic i8 %2, ptr %repr monotonic, align 1, !dbg !899
  br label %atomic.continue, !dbg !899

release:                                          ; preds = %entry
  %3 = load i8, ptr %val.addr, align 1, !dbg !899
  store atomic i8 %3, ptr %repr release, align 1, !dbg !899
  br label %atomic.continue, !dbg !899

seqcst:                                           ; preds = %entry
  %4 = load i8, ptr %val.addr, align 1, !dbg !899
  store atomic i8 %4, ptr %repr seq_cst, align 1, !dbg !899
  br label %atomic.continue, !dbg !899

atomic.continue:                                  ; preds = %seqcst, %release, %monotonic
  ret void, !dbg !899
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @mutex_owner_stats_update(ptr noundef %tsdn, ptr noundef %mutex) #2 !dbg !900 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %mutex.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !902, metadata !DIExpression()), !dbg !908
  store ptr %mutex, ptr %mutex.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %mutex.addr, metadata !903, metadata !DIExpression()), !dbg !909
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #9, !dbg !910
  tail call void @llvm.dbg.declare(metadata ptr %data, metadata !904, metadata !DIExpression()), !dbg !911
  %0 = load ptr, ptr %mutex.addr, align 8, !dbg !912, !tbaa !410
  %1 = getelementptr inbounds %struct.malloc_mutex_s, ptr %0, i32 0, i32 0, !dbg !913
  %prof_data = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !913
  store ptr %prof_data, ptr %data, align 8, !dbg !911, !tbaa !410
  %2 = load ptr, ptr %data, align 8, !dbg !914, !tbaa !410
  %n_lock_ops = getelementptr inbounds %struct.mutex_prof_data_t, ptr %2, i32 0, i32 8, !dbg !915
  %3 = load i64, ptr %n_lock_ops, align 8, !dbg !916, !tbaa !917
  %inc = add i64 %3, 1, !dbg !916
  store i64 %inc, ptr %n_lock_ops, align 8, !dbg !916, !tbaa !917
  %4 = load ptr, ptr %data, align 8, !dbg !921, !tbaa !410
  %prev_owner = getelementptr inbounds %struct.mutex_prof_data_t, ptr %4, i32 0, i32 7, !dbg !923
  %5 = load ptr, ptr %prev_owner, align 8, !dbg !923, !tbaa !924
  %6 = load ptr, ptr %tsdn.addr, align 8, !dbg !925, !tbaa !410
  %cmp = icmp ne ptr %5, %6, !dbg !926
  br i1 %cmp, label %if.then, label %if.end, !dbg !927

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %tsdn.addr, align 8, !dbg !928, !tbaa !410
  %8 = load ptr, ptr %data, align 8, !dbg !930, !tbaa !410
  %prev_owner1 = getelementptr inbounds %struct.mutex_prof_data_t, ptr %8, i32 0, i32 7, !dbg !931
  store ptr %7, ptr %prev_owner1, align 8, !dbg !932, !tbaa !924
  %9 = load ptr, ptr %data, align 8, !dbg !933, !tbaa !410
  %n_owner_switches = getelementptr inbounds %struct.mutex_prof_data_t, ptr %9, i32 0, i32 6, !dbg !934
  %10 = load i64, ptr %n_owner_switches, align 8, !dbg !935, !tbaa !936
  %inc2 = add i64 %10, 1, !dbg !935
  store i64 %inc2, ptr %n_owner_switches, align 8, !dbg !935, !tbaa !936
  br label %if.end, !dbg !937

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #9, !dbg !938
  ret void, !dbg !939
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @witness_lock(ptr noundef %witness_tsdn, ptr noundef %witness) #2 !dbg !940 {
entry:
  %witness_tsdn.addr = alloca ptr, align 8
  %witness.addr = alloca ptr, align 8
  %witness_tsd = alloca ptr, align 8
  %witnesses = alloca ptr, align 8
  %w = alloca ptr, align 8
  store ptr %witness_tsdn, ptr %witness_tsdn.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %witness_tsdn.addr, metadata !944, metadata !DIExpression()), !dbg !949
  store ptr %witness, ptr %witness.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %witness.addr, metadata !945, metadata !DIExpression()), !dbg !950
  call void @llvm.lifetime.start.p0(i64 8, ptr %witness_tsd) #9, !dbg !951
  tail call void @llvm.dbg.declare(metadata ptr %witness_tsd, metadata !946, metadata !DIExpression()), !dbg !952
  call void @llvm.lifetime.start.p0(i64 8, ptr %witnesses) #9, !dbg !953
  tail call void @llvm.dbg.declare(metadata ptr %witnesses, metadata !947, metadata !DIExpression()), !dbg !954
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #9, !dbg !955
  tail call void @llvm.dbg.declare(metadata ptr %w, metadata !948, metadata !DIExpression()), !dbg !956
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #9, !dbg !957
  call void @llvm.lifetime.end.p0(i64 8, ptr %witnesses) #9, !dbg !957
  call void @llvm.lifetime.end.p0(i64 8, ptr %witness_tsd) #9, !dbg !957
  ret void, !dbg !957
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i1 @tsdn_null(ptr noundef %tsdn) #4 !dbg !958 {
entry:
  %tsdn.addr = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !964, metadata !DIExpression()), !dbg !965
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !966, !tbaa !410
  %cmp = icmp eq ptr %0, null, !dbg !967
  ret i1 %cmp, !dbg !968
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsdn_tsd(ptr noundef %tsdn) #4 !dbg !969 {
entry:
  %tsdn.addr = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !973, metadata !DIExpression()), !dbg !974
  br label %do.body, !dbg !975

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !976

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !978, !tbaa !410
  %tsd = getelementptr inbounds %struct.tsdn_s, ptr %0, i32 0, i32 0, !dbg !979
  ret ptr %tsd, !dbg !980
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_witness_tsdp_get(ptr noundef %tsd) #4 !dbg !981 {
entry:
  %tsd.addr = alloca ptr, align 8
  %state = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !985, metadata !DIExpression()), !dbg !987
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #9, !dbg !987
  tail call void @llvm.dbg.declare(metadata ptr %state, metadata !986, metadata !DIExpression()), !dbg !987
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !987, !tbaa !410
  %call = call zeroext i8 @tsd_state_get(ptr noundef %0), !dbg !987
  store i8 %call, ptr %state, align 1, !dbg !987, !tbaa !621
  br label %do.body, !dbg !987

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !988

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !988

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !987, !tbaa !410
  %call1 = call ptr @tsd_witness_tsdp_get_unsafe(ptr noundef %1), !dbg !987
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #9, !dbg !987
  ret ptr %call1, !dbg !987
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @tsd_state_get(ptr noundef %tsd) #4 !dbg !990 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !994, metadata !DIExpression()), !dbg !995
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !996, !tbaa !410
  %state = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 0, !dbg !997
  %1 = load i8, ptr %state, align 8, !dbg !998, !tbaa !621
  ret i8 %1, !dbg !999
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_witness_tsdp_get_unsafe(ptr noundef %tsd) #4 !dbg !1000 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1002, metadata !DIExpression()), !dbg !1003
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1003, !tbaa !410
  %cant_access_tsd_items_directly_use_a_getter_or_setter_witness_tsd = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 16, !dbg !1003
  ret ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_witness_tsd, !dbg !1003
}

; Function Attrs: nounwind
declare !dbg !1004 i32 @pthread_mutex_trylock(ptr noundef) #6

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @atomic_enum_to_builtin(i32 noundef %mo) #4 !dbg !1009 {
entry:
  %retval = alloca i32, align 4
  %mo.addr = alloca i32, align 4
  store i32 %mo, ptr %mo.addr, align 4, !tbaa !621
  tail call void @llvm.dbg.declare(metadata ptr %mo.addr, metadata !1013, metadata !DIExpression()), !dbg !1014
  %0 = load i32, ptr %mo.addr, align 4, !dbg !1015, !tbaa !621
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
  ], !dbg !1016

sw.bb:                                            ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1017
  br label %do.end, !dbg !1017

sw.bb1:                                           ; preds = %entry
  store i32 2, ptr %retval, align 4, !dbg !1019
  br label %do.end, !dbg !1019

sw.bb2:                                           ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !1020
  br label %do.end, !dbg !1020

sw.bb3:                                           ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !1021
  br label %do.end, !dbg !1021

sw.bb4:                                           ; preds = %entry
  store i32 5, ptr %retval, align 4, !dbg !1022
  br label %do.end, !dbg !1022

sw.epilog:                                        ; preds = %entry
  br label %do.body, !dbg !1023

do.body:                                          ; preds = %sw.epilog
  unreachable, !dbg !1024

do.end:                                           ; preds = %sw.bb, %sw.bb1, %sw.bb2, %sw.bb3, %sw.bb4
  %1 = load i32, ptr %retval, align 4, !dbg !1026
  ret i32 %1, !dbg !1026
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: inlinehint nounwind uwtable
define internal void @seq_store_hooks(ptr noundef %dst, ptr noundef %src) #2 !dbg !1027 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %buf = alloca [5 x i64], align 16
  %old_seq = alloca i64, align 8
  %i = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1031, metadata !DIExpression()), !dbg !1037
  store ptr %src, ptr %src.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1032, metadata !DIExpression()), !dbg !1037
  call void @llvm.lifetime.start.p0(i64 40, ptr %buf) #9, !dbg !1037
  tail call void @llvm.dbg.declare(metadata ptr %buf, metadata !1033, metadata !DIExpression()), !dbg !1037
  %arrayidx = getelementptr inbounds [5 x i64], ptr %buf, i64 0, i64 4, !dbg !1037
  store i64 0, ptr %arrayidx, align 16, !dbg !1037, !tbaa !624
  %arraydecay = getelementptr inbounds [5 x i64], ptr %buf, i64 0, i64 0, !dbg !1037
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1037, !tbaa !410
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay, ptr align 8 %0, i64 40, i1 false), !dbg !1037
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_seq) #9, !dbg !1037
  tail call void @llvm.dbg.declare(metadata ptr %old_seq, metadata !1034, metadata !DIExpression()), !dbg !1037
  %1 = load ptr, ptr %dst.addr, align 8, !dbg !1037, !tbaa !410
  %seq = getelementptr inbounds %struct.seq_hooks_t, ptr %1, i32 0, i32 0, !dbg !1037
  %call = call i64 @atomic_load_zu(ptr noundef %seq, i32 noundef 0), !dbg !1037
  store i64 %call, ptr %old_seq, align 8, !dbg !1037, !tbaa !624
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !1037, !tbaa !410
  %seq1 = getelementptr inbounds %struct.seq_hooks_t, ptr %2, i32 0, i32 0, !dbg !1037
  %3 = load i64, ptr %old_seq, align 8, !dbg !1037, !tbaa !624
  %add = add i64 %3, 1, !dbg !1037
  call void @atomic_store_zu(ptr noundef %seq1, i64 noundef %add, i32 noundef 0), !dbg !1037
  call void @atomic_fence(i32 noundef 2), !dbg !1037
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #9, !dbg !1038
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !1035, metadata !DIExpression()), !dbg !1038
  store i64 0, ptr %i, align 8, !dbg !1038, !tbaa !624
  br label %for.cond, !dbg !1038

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, ptr %i, align 8, !dbg !1039, !tbaa !624
  %cmp = icmp ult i64 %4, 5, !dbg !1039
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1038

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #9, !dbg !1039
  br label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !1041, !tbaa !410
  %data = getelementptr inbounds %struct.seq_hooks_t, ptr %5, i32 0, i32 1, !dbg !1041
  %6 = load i64, ptr %i, align 8, !dbg !1041, !tbaa !624
  %arrayidx2 = getelementptr inbounds [5 x %struct.atomic_zu_t], ptr %data, i64 0, i64 %6, !dbg !1041
  %7 = load i64, ptr %i, align 8, !dbg !1041, !tbaa !624
  %arrayidx3 = getelementptr inbounds [5 x i64], ptr %buf, i64 0, i64 %7, !dbg !1041
  %8 = load i64, ptr %arrayidx3, align 8, !dbg !1041, !tbaa !624
  call void @atomic_store_zu(ptr noundef %arrayidx2, i64 noundef %8, i32 noundef 0), !dbg !1041
  br label %for.inc, !dbg !1041

for.inc:                                          ; preds = %for.body
  %9 = load i64, ptr %i, align 8, !dbg !1039, !tbaa !624
  %inc = add i64 %9, 1, !dbg !1039
  store i64 %inc, ptr %i, align 8, !dbg !1039, !tbaa !624
  br label %for.cond, !dbg !1039, !llvm.loop !1043

for.end:                                          ; preds = %for.cond.cleanup
  %10 = load ptr, ptr %dst.addr, align 8, !dbg !1037, !tbaa !410
  %seq4 = getelementptr inbounds %struct.seq_hooks_t, ptr %10, i32 0, i32 0, !dbg !1037
  %11 = load i64, ptr %old_seq, align 8, !dbg !1037, !tbaa !624
  %add5 = add i64 %11, 2, !dbg !1037
  call void @atomic_store_zu(ptr noundef %seq4, i64 noundef %add5, i32 noundef 2), !dbg !1037
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_seq) #9, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 40, ptr %buf) #9, !dbg !1037
  ret void, !dbg !1037
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @atomic_store_u(ptr noundef %a, i32 noundef %val, i32 noundef %mo) #4 !dbg !1044 {
entry:
  %a.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %mo.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1049, metadata !DIExpression()), !dbg !1052
  store i32 %val, ptr %val.addr, align 4, !tbaa !491
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1050, metadata !DIExpression()), !dbg !1052
  store i32 %mo, ptr %mo.addr, align 4, !tbaa !621
  tail call void @llvm.dbg.declare(metadata ptr %mo.addr, metadata !1051, metadata !DIExpression()), !dbg !1052
  %0 = load ptr, ptr %a.addr, align 8, !dbg !1052, !tbaa !410
  %repr = getelementptr inbounds %struct.atomic_u_t, ptr %0, i32 0, i32 0, !dbg !1052
  %1 = load i32, ptr %mo.addr, align 4, !dbg !1052, !tbaa !621
  %call = call i32 @atomic_enum_to_builtin(i32 noundef %1), !dbg !1052
  switch i32 %call, label %monotonic [
    i32 3, label %release
    i32 5, label %seqcst
  ], !dbg !1052

monotonic:                                        ; preds = %entry
  %2 = load i32, ptr %val.addr, align 4, !dbg !1052
  store atomic i32 %2, ptr %repr monotonic, align 4, !dbg !1052
  br label %atomic.continue, !dbg !1052

release:                                          ; preds = %entry
  %3 = load i32, ptr %val.addr, align 4, !dbg !1052
  store atomic i32 %3, ptr %repr release, align 4, !dbg !1052
  br label %atomic.continue, !dbg !1052

seqcst:                                           ; preds = %entry
  %4 = load i32, ptr %val.addr, align 4, !dbg !1052
  store atomic i32 %4, ptr %repr seq_cst, align 4, !dbg !1052
  br label %atomic.continue, !dbg !1052

atomic.continue:                                  ; preds = %seqcst, %release, %monotonic
  ret void, !dbg !1052
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @atomic_load_zu(ptr noundef %a, i32 noundef %mo) #4 !dbg !1053 {
entry:
  %a.addr = alloca ptr, align 8
  %mo.addr = alloca i32, align 4
  %result = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1059, metadata !DIExpression()), !dbg !1062
  store i32 %mo, ptr %mo.addr, align 4, !tbaa !621
  tail call void @llvm.dbg.declare(metadata ptr %mo.addr, metadata !1060, metadata !DIExpression()), !dbg !1062
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #9, !dbg !1062
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !1061, metadata !DIExpression()), !dbg !1062
  %0 = load ptr, ptr %a.addr, align 8, !dbg !1062, !tbaa !410
  %repr = getelementptr inbounds %struct.atomic_zu_t, ptr %0, i32 0, i32 0, !dbg !1062
  %1 = load i32, ptr %mo.addr, align 4, !dbg !1062, !tbaa !621
  %call = call i32 @atomic_enum_to_builtin(i32 noundef %1), !dbg !1062
  switch i32 %call, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 5, label %seqcst
  ], !dbg !1062

monotonic:                                        ; preds = %entry
  %2 = load atomic i64, ptr %repr monotonic, align 8, !dbg !1062
  store i64 %2, ptr %result, align 8, !dbg !1062
  br label %atomic.continue, !dbg !1062

acquire:                                          ; preds = %entry, %entry
  %3 = load atomic i64, ptr %repr acquire, align 8, !dbg !1062
  store i64 %3, ptr %result, align 8, !dbg !1062
  br label %atomic.continue, !dbg !1062

seqcst:                                           ; preds = %entry
  %4 = load atomic i64, ptr %repr seq_cst, align 8, !dbg !1062
  store i64 %4, ptr %result, align 8, !dbg !1062
  br label %atomic.continue, !dbg !1062

atomic.continue:                                  ; preds = %seqcst, %acquire, %monotonic
  %5 = load i64, ptr %result, align 8, !dbg !1062, !tbaa !624
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #9, !dbg !1062
  ret i64 %5, !dbg !1062
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @atomic_store_zu(ptr noundef %a, i64 noundef %val, i32 noundef %mo) #4 !dbg !1063 {
entry:
  %a.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  %mo.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1068, metadata !DIExpression()), !dbg !1071
  store i64 %val, ptr %val.addr, align 8, !tbaa !624
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1069, metadata !DIExpression()), !dbg !1071
  store i32 %mo, ptr %mo.addr, align 4, !tbaa !621
  tail call void @llvm.dbg.declare(metadata ptr %mo.addr, metadata !1070, metadata !DIExpression()), !dbg !1071
  %0 = load ptr, ptr %a.addr, align 8, !dbg !1071, !tbaa !410
  %repr = getelementptr inbounds %struct.atomic_zu_t, ptr %0, i32 0, i32 0, !dbg !1071
  %1 = load i32, ptr %mo.addr, align 4, !dbg !1071, !tbaa !621
  %call = call i32 @atomic_enum_to_builtin(i32 noundef %1), !dbg !1071
  switch i32 %call, label %monotonic [
    i32 3, label %release
    i32 5, label %seqcst
  ], !dbg !1071

monotonic:                                        ; preds = %entry
  %2 = load i64, ptr %val.addr, align 8, !dbg !1071
  store atomic i64 %2, ptr %repr monotonic, align 8, !dbg !1071
  br label %atomic.continue, !dbg !1071

release:                                          ; preds = %entry
  %3 = load i64, ptr %val.addr, align 8, !dbg !1071
  store atomic i64 %3, ptr %repr release, align 8, !dbg !1071
  br label %atomic.continue, !dbg !1071

seqcst:                                           ; preds = %entry
  %4 = load i64, ptr %val.addr, align 8, !dbg !1071
  store atomic i64 %4, ptr %repr seq_cst, align 8, !dbg !1071
  br label %atomic.continue, !dbg !1071

atomic.continue:                                  ; preds = %seqcst, %release, %monotonic
  ret void, !dbg !1071
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @atomic_fence(i32 noundef %mo) #4 !dbg !1072 {
entry:
  %mo.addr = alloca i32, align 4
  store i32 %mo, ptr %mo.addr, align 4, !tbaa !621
  tail call void @llvm.dbg.declare(metadata ptr %mo.addr, metadata !1076, metadata !DIExpression()), !dbg !1077
  %0 = load i32, ptr %mo.addr, align 4, !dbg !1078, !tbaa !621
  %call = call i32 @atomic_enum_to_builtin(i32 noundef %0), !dbg !1079
  switch i32 %call, label %atomic.continue [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 3, label %release
    i32 4, label %acqrel
    i32 5, label %seqcst
  ], !dbg !1080

acquire:                                          ; preds = %entry, %entry
  fence acquire, !dbg !1080
  br label %atomic.continue, !dbg !1080

release:                                          ; preds = %entry
  fence release, !dbg !1080
  br label %atomic.continue, !dbg !1080

acqrel:                                           ; preds = %entry
  fence acq_rel, !dbg !1080
  br label %atomic.continue, !dbg !1080

seqcst:                                           ; preds = %entry
  fence seq_cst, !dbg !1080
  br label %atomic.continue, !dbg !1080

atomic.continue:                                  ; preds = %seqcst, %acqrel, %release, %acquire, %entry
  ret void, !dbg !1081
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @witness_unlock(ptr noundef %witness_tsdn, ptr noundef %witness) #2 !dbg !1082 {
entry:
  %witness_tsdn.addr = alloca ptr, align 8
  %witness.addr = alloca ptr, align 8
  %witness_tsd = alloca ptr, align 8
  %witnesses = alloca ptr, align 8
  store ptr %witness_tsdn, ptr %witness_tsdn.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %witness_tsdn.addr, metadata !1084, metadata !DIExpression()), !dbg !1088
  store ptr %witness, ptr %witness.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %witness.addr, metadata !1085, metadata !DIExpression()), !dbg !1089
  call void @llvm.lifetime.start.p0(i64 8, ptr %witness_tsd) #9, !dbg !1090
  tail call void @llvm.dbg.declare(metadata ptr %witness_tsd, metadata !1086, metadata !DIExpression()), !dbg !1091
  call void @llvm.lifetime.start.p0(i64 8, ptr %witnesses) #9, !dbg !1092
  tail call void @llvm.dbg.declare(metadata ptr %witnesses, metadata !1087, metadata !DIExpression()), !dbg !1093
  call void @llvm.lifetime.end.p0(i64 8, ptr %witnesses) #9, !dbg !1094
  call void @llvm.lifetime.end.p0(i64 8, ptr %witness_tsd) #9, !dbg !1094
  ret void, !dbg !1094
}

; Function Attrs: nounwind
declare !dbg !1095 i32 @pthread_mutex_unlock(ptr noundef) #6

; Function Attrs: nounwind uwtable
define internal ptr @hook_reentrantp() #0 !dbg !286 {
entry:
  %retval = alloca ptr, align 8
  %tsdn = alloca ptr, align 8
  %tcache = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsdn) #9, !dbg !1096
  tail call void @llvm.dbg.declare(metadata ptr %tsdn, metadata !291, metadata !DIExpression()), !dbg !1097
  %call = call ptr @tsdn_fetch(), !dbg !1098
  store ptr %call, ptr %tsdn, align 8, !dbg !1097, !tbaa !410
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcache) #9, !dbg !1099
  tail call void @llvm.dbg.declare(metadata ptr %tcache, metadata !292, metadata !DIExpression()), !dbg !1100
  %0 = load ptr, ptr %tsdn, align 8, !dbg !1101, !tbaa !410
  %call1 = call ptr @tsdn_tcachep_get(ptr noundef %0), !dbg !1102
  store ptr %call1, ptr %tcache, align 8, !dbg !1100, !tbaa !410
  %1 = load ptr, ptr %tcache, align 8, !dbg !1103, !tbaa !410
  %cmp = icmp ne ptr %1, null, !dbg !1105
  br i1 %cmp, label %if.then, label %if.end, !dbg !1106

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tcache, align 8, !dbg !1107, !tbaa !410
  %in_hook = getelementptr inbounds %struct.tcache_s, ptr %2, i32 0, i32 5, !dbg !1109
  store ptr %in_hook, ptr %retval, align 8, !dbg !1110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1110

if.end:                                           ; preds = %entry
  store ptr @hook_reentrantp.in_hook_global, ptr %retval, align 8, !dbg !1111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1111

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcache) #9, !dbg !1112
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsdn) #9, !dbg !1112
  %3 = load ptr, ptr %retval, align 8, !dbg !1112
  ret ptr %3, !dbg !1112
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsdn_fetch() #4 !dbg !1113 {
entry:
  %retval = alloca ptr, align 8
  %call = call zeroext i1 @tsd_booted_get(), !dbg !1116
  br i1 %call, label %if.end, label %if.then, !dbg !1118

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1119
  br label %return, !dbg !1119

if.end:                                           ; preds = %entry
  %call1 = call ptr @tsd_fetch_impl(i1 noundef zeroext false, i1 noundef zeroext false), !dbg !1121
  %call2 = call ptr @tsd_tsdn(ptr noundef %call1), !dbg !1122
  store ptr %call2, ptr %retval, align 8, !dbg !1123
  br label %return, !dbg !1123

return:                                           ; preds = %if.end, %if.then
  %0 = load ptr, ptr %retval, align 8, !dbg !1124
  ret ptr %0, !dbg !1124
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsdn_tcachep_get(ptr noundef %tsdn) #4 !dbg !1125 {
entry:
  %retval = alloca ptr, align 8
  %tsdn.addr = alloca ptr, align 8
  %tsd = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !1129, metadata !DIExpression()), !dbg !1131
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !1132, !tbaa !410
  %call = call zeroext i1 @tsdn_null(ptr noundef %0), !dbg !1132
  br i1 %call, label %if.then, label %if.end, !dbg !1131

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1134
  br label %return, !dbg !1134

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsd) #9, !dbg !1131
  tail call void @llvm.dbg.declare(metadata ptr %tsd, metadata !1130, metadata !DIExpression()), !dbg !1131
  %1 = load ptr, ptr %tsdn.addr, align 8, !dbg !1131, !tbaa !410
  %call1 = call ptr @tsdn_tsd(ptr noundef %1), !dbg !1131
  store ptr %call1, ptr %tsd, align 8, !dbg !1131, !tbaa !410
  %2 = load ptr, ptr %tsd, align 8, !dbg !1131, !tbaa !410
  %call2 = call ptr @tsd_tcachep_get(ptr noundef %2), !dbg !1131
  store ptr %call2, ptr %retval, align 8, !dbg !1131
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsd) #9, !dbg !1131
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8, !dbg !1131
  ret ptr %3, !dbg !1131
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i1 @tsd_booted_get() #4 !dbg !1136 {
entry:
  %0 = load i8, ptr @tsd_booted, align 1, !dbg !1138, !tbaa !501, !range !511, !noundef !512
  %tobool = trunc i8 %0 to i1, !dbg !1138
  ret i1 %tobool, !dbg !1139
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_tsdn(ptr noundef %tsd) #4 !dbg !1140 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1144, metadata !DIExpression()), !dbg !1145
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1146, !tbaa !410
  ret ptr %0, !dbg !1147
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_fetch_impl(i1 noundef zeroext %init, i1 noundef zeroext %minimal) #4 !dbg !1148 {
entry:
  %retval = alloca ptr, align 8
  %init.addr = alloca i8, align 1
  %minimal.addr = alloca i8, align 1
  %tsd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %frombool = zext i1 %init to i8
  store i8 %frombool, ptr %init.addr, align 1, !tbaa !501
  tail call void @llvm.dbg.declare(metadata ptr %init.addr, metadata !1152, metadata !DIExpression()), !dbg !1155
  %frombool1 = zext i1 %minimal to i8
  store i8 %frombool1, ptr %minimal.addr, align 1, !tbaa !501
  tail call void @llvm.dbg.declare(metadata ptr %minimal.addr, metadata !1153, metadata !DIExpression()), !dbg !1156
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsd) #9, !dbg !1157
  tail call void @llvm.dbg.declare(metadata ptr %tsd, metadata !1154, metadata !DIExpression()), !dbg !1158
  %0 = load i8, ptr %init.addr, align 1, !dbg !1159, !tbaa !501, !range !511, !noundef !512
  %tobool = trunc i8 %0 to i1, !dbg !1159
  %call = call ptr @tsd_get(i1 noundef zeroext %tobool), !dbg !1160
  store ptr %call, ptr %tsd, align 8, !dbg !1158, !tbaa !410
  %1 = load i8, ptr %init.addr, align 1, !dbg !1161, !tbaa !501, !range !511, !noundef !512
  %tobool2 = trunc i8 %1 to i1, !dbg !1161
  br i1 %tobool2, label %if.end, label %land.lhs.true, !dbg !1163

land.lhs.true:                                    ; preds = %entry
  %call3 = call zeroext i1 @tsd_get_allocates(), !dbg !1164
  br i1 %call3, label %land.lhs.true4, label %if.end, !dbg !1165

land.lhs.true4:                                   ; preds = %land.lhs.true
  %2 = load ptr, ptr %tsd, align 8, !dbg !1166, !tbaa !410
  %cmp = icmp eq ptr %2, null, !dbg !1167
  br i1 %cmp, label %if.then, label %if.end, !dbg !1168

if.then:                                          ; preds = %land.lhs.true4
  store ptr null, ptr %retval, align 8, !dbg !1169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1169

if.end:                                           ; preds = %land.lhs.true4, %land.lhs.true, %entry
  br label %do.body, !dbg !1171

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !1172

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1172

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %tsd, align 8, !dbg !1174, !tbaa !410
  %call5 = call zeroext i8 @tsd_state_get(ptr noundef %3), !dbg !1174
  %conv = zext i8 %call5 to i32, !dbg !1174
  %cmp6 = icmp ne i32 %conv, 0, !dbg !1174
  %lnot = xor i1 %cmp6, true, !dbg !1174
  %lnot8 = xor i1 %lnot, true, !dbg !1174
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !1174
  %conv9 = sext i32 %lnot.ext to i64, !dbg !1174
  %expval = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !1174
  %tobool10 = icmp ne i64 %expval, 0, !dbg !1174
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !1176

if.then11:                                        ; preds = %do.end
  %4 = load ptr, ptr %tsd, align 8, !dbg !1177, !tbaa !410
  %5 = load i8, ptr %minimal.addr, align 1, !dbg !1179, !tbaa !501, !range !511, !noundef !512
  %tobool12 = trunc i8 %5 to i1, !dbg !1179
  %call13 = call ptr @tsd_fetch_slow(ptr noundef %4, i1 noundef zeroext %tobool12), !dbg !1180
  store ptr %call13, ptr %retval, align 8, !dbg !1181
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1181

if.end14:                                         ; preds = %do.end
  br label %do.body15, !dbg !1182

do.body15:                                        ; preds = %if.end14
  br label %do.cond16, !dbg !1183

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !1183

do.end17:                                         ; preds = %do.cond16
  %6 = load ptr, ptr %tsd, align 8, !dbg !1185, !tbaa !410
  call void @tsd_assert_fast(ptr noundef %6), !dbg !1186
  %7 = load ptr, ptr %tsd, align 8, !dbg !1187, !tbaa !410
  store ptr %7, ptr %retval, align 8, !dbg !1188
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1188

cleanup:                                          ; preds = %do.end17, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsd) #9, !dbg !1189
  %8 = load ptr, ptr %retval, align 8, !dbg !1189
  ret ptr %8, !dbg !1189
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_get(i1 noundef zeroext %init) #4 !dbg !1190 {
entry:
  %init.addr = alloca i8, align 1
  %frombool = zext i1 %init to i8
  store i8 %frombool, ptr %init.addr, align 1, !tbaa !501
  tail call void @llvm.dbg.declare(metadata ptr %init.addr, metadata !1194, metadata !DIExpression()), !dbg !1195
  %0 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tsd_tls), !dbg !1196
  ret ptr %0, !dbg !1197
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i1 @tsd_get_allocates() #4 !dbg !1198 {
entry:
  ret i1 false, !dbg !1199
}

declare !dbg !1200 ptr @tsd_fetch_slow(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal void @tsd_assert_fast(ptr noundef %tsd) #4 !dbg !1203 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1207, metadata !DIExpression()), !dbg !1208
  br label %do.body, !dbg !1209

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1210

do.end:                                           ; preds = %do.body
  ret void, !dbg !1212
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #8

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_tcachep_get(ptr noundef %tsd) #4 !dbg !1213 {
entry:
  %tsd.addr = alloca ptr, align 8
  %state = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1217, metadata !DIExpression()), !dbg !1219
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #9, !dbg !1219
  tail call void @llvm.dbg.declare(metadata ptr %state, metadata !1218, metadata !DIExpression()), !dbg !1219
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1219, !tbaa !410
  %call = call zeroext i8 @tsd_state_get(ptr noundef %0), !dbg !1219
  store i8 %call, ptr %state, align 1, !dbg !1219, !tbaa !621
  br label %do.body, !dbg !1219

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1220

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1220

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !1219, !tbaa !410
  %call1 = call ptr @tsd_tcachep_get_unsafe(ptr noundef %1), !dbg !1219
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #9, !dbg !1219
  ret ptr %call1, !dbg !1219
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_tcachep_get_unsafe(ptr noundef %tsd) #4 !dbg !1222 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !410
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1224, metadata !DIExpression()), !dbg !1225
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1225, !tbaa !410
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 15, !dbg !1225
  ret ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache, !dbg !1225
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!363, !364, !365, !366, !367, !368}
!llvm.ident = !{!369}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hooks_mu", scope: !2, file: !3, line: 19, type: !293, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !54, globals: !267, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/hook.c", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/deps/jemalloc", checksumkind: CSK_MD5, checksum: "bab9498619553dedcf114388a17026fc")
!4 = !{!5, !11, !23, !30, !35, !43}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "include/jemalloc/internal/mutex.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/deps/jemalloc", checksumkind: CSK_MD5, checksum: "917cce942e4a6b564502cd3d8e486d0c")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "malloc_mutex_rank_exclusive", value: 0)
!10 = !DIEnumerator(name: "malloc_mutex_address_ordered", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hook_alloc_e", file: !12, line: 51, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "include/jemalloc/internal/hook.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/deps/jemalloc", checksumkind: CSK_MD5, checksum: "cba63ef3cb81715a9e481d9adc3b20e5")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22}
!14 = !DIEnumerator(name: "hook_alloc_malloc", value: 0)
!15 = !DIEnumerator(name: "hook_alloc_posix_memalign", value: 1)
!16 = !DIEnumerator(name: "hook_alloc_aligned_alloc", value: 2)
!17 = !DIEnumerator(name: "hook_alloc_calloc", value: 3)
!18 = !DIEnumerator(name: "hook_alloc_memalign", value: 4)
!19 = !DIEnumerator(name: "hook_alloc_valloc", value: 5)
!20 = !DIEnumerator(name: "hook_alloc_mallocx", value: 6)
!21 = !DIEnumerator(name: "hook_alloc_realloc", value: 7)
!22 = !DIEnumerator(name: "hook_alloc_rallocx", value: 8)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hook_dalloc_e", file: !12, line: 70, baseType: !7, size: 32, elements: !24)
!24 = !{!25, !26, !27, !28, !29}
!25 = !DIEnumerator(name: "hook_dalloc_free", value: 0)
!26 = !DIEnumerator(name: "hook_dalloc_dallocx", value: 1)
!27 = !DIEnumerator(name: "hook_dalloc_sdallocx", value: 2)
!28 = !DIEnumerator(name: "hook_dalloc_realloc", value: 3)
!29 = !DIEnumerator(name: "hook_dalloc_rallocx", value: 4)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hook_expand_e", file: !12, line: 85, baseType: !7, size: 32, elements: !31)
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "hook_expand_realloc", value: 0)
!33 = !DIEnumerator(name: "hook_expand_rallocx", value: 1)
!34 = !DIEnumerator(name: "hook_expand_xallocx", value: 2)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 8, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "include/jemalloc/internal/atomic_gcc_atomic.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/deps/jemalloc", checksumkind: CSK_MD5, checksum: "08b4de137309508f556f5697e2840f8f")
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "atomic_memory_order_relaxed", value: 0)
!39 = !DIEnumerator(name: "atomic_memory_order_acquire", value: 1)
!40 = !DIEnumerator(name: "atomic_memory_order_release", value: 2)
!41 = !DIEnumerator(name: "atomic_memory_order_acq_rel", value: 3)
!42 = !DIEnumerator(name: "atomic_memory_order_seq_cst", value: 4)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !44, line: 125, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "include/jemalloc/internal/tsd.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/deps/jemalloc", checksumkind: CSK_MD5, checksum: "9f081fe8da1112924f8bffbbaecc948d")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53}
!46 = !DIEnumerator(name: "tsd_state_nominal", value: 0)
!47 = !DIEnumerator(name: "tsd_state_nominal_slow", value: 1)
!48 = !DIEnumerator(name: "tsd_state_nominal_recompute", value: 2)
!49 = !DIEnumerator(name: "tsd_state_nominal_max", value: 2)
!50 = !DIEnumerator(name: "tsd_state_minimal_initialized", value: 3)
!51 = !DIEnumerator(name: "tsd_state_purgatory", value: 4)
!52 = !DIEnumerator(name: "tsd_state_reincarnated", value: 5)
!53 = !DIEnumerator(name: "tsd_state_uninitialized", value: 6)
!54 = !{!55, !56, !73, !113, !119, !235}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_hooks_t", file: !3, line: 15, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 15, size: 384, elements: !59)
!59 = !{!60, !69}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !58, file: !3, line: 15, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_zu_t", file: !62, line: 72, baseType: !63)
!62 = !DIFile(filename: "include/jemalloc/internal/atomic.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/deps/jemalloc", checksumkind: CSK_MD5, checksum: "f4ec326d3284c13a241314e27e68ccae")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 72, size: 64, elements: !64)
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !63, file: !62, line: 72, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !67, line: 70, baseType: !68)
!67 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!68 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !58, file: !3, line: 15, baseType: !70, size: 320, offset: 64)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 320, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 5)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "witness_tsdn_t", file: !75, line: 119, baseType: !76)
!75 = !DIFile(filename: "include/jemalloc/internal/witness.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/deps/jemalloc", checksumkind: CSK_MD5, checksum: "fb8675f0725894e4a6abb6181efc1d0a")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "witness_tsdn_s", file: !75, line: 120, size: 128, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "witness_tsd", scope: !76, file: !75, line: 121, baseType: !79, size: 128)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "witness_tsd_t", file: !75, line: 107, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "witness_tsd_s", file: !75, line: 108, size: 128, elements: !81)
!81 = !{!82, !111}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "witnesses", scope: !80, file: !75, line: 109, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "witness_list_t", file: !75, line: 76, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !75, line: 76, size: 64, elements: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "qlh_first", scope: !84, file: !75, line: 76, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "witness_t", file: !75, line: 74, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "witness_s", file: !75, line: 80, size: 384, elements: !90)
!90 = !{!91, !95, !97, !105, !106}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !89, file: !75, line: 82, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "rank", scope: !89, file: !75, line: 88, baseType: !96, size: 32, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "witness_rank_t", file: !75, line: 75, baseType: !7)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !89, file: !75, line: 95, baseType: !98, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "witness_comp_t", file: !75, line: 77, baseType: !100)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !103, !55, !103, !55}
!102 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !89, file: !75, line: 98, baseType: !55, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !89, file: !75, line: 101, baseType: !107, size: 128, offset: 256)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !75, line: 101, size: 128, elements: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "qre_next", scope: !107, file: !75, line: 101, baseType: !87, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "qre_prev", scope: !107, file: !75, line: 101, baseType: !87, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "forking", scope: !80, file: !75, line: 110, baseType: !112, size: 8, offset: 64)
!112 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !115, line: 24, baseType: !116)
!115 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !117, line: 38, baseType: !118)
!117 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!118 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "tsdn_t", file: !121, line: 7, baseType: !122)
!121 = !DIFile(filename: "include/jemalloc/internal/tsd_types.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/deps/jemalloc", checksumkind: CSK_MD5, checksum: "d541d97bbf6e4823e1bac63f2add6f7d")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tsdn_s", file: !44, line: 219, size: 50368, elements: !123)
!123 = !{!124}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tsd", scope: !122, file: !44, line: 220, baseType: !125, size: 50368)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "tsd_t", file: !121, line: 6, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tsd_s", file: !44, line: 185, size: 50368, elements: !127)
!127 = !{!128, !133, !134, !135, !140, !143, !146, !147, !148, !152, !157, !180, !185, !186, !190, !199, !266}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !126, file: !44, line: 196, baseType: !129, size: 8)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_u8_t", file: !62, line: 76, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 76, size: 8, elements: !131)
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !130, file: !62, line: 76, baseType: !114, size: 8)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_tcache_enabled", scope: !126, file: !44, line: 199, baseType: !112, size: 8, offset: 8)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_arenas_tdata_bypass", scope: !126, file: !44, line: 199, baseType: !112, size: 8, offset: 16)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_reentrancy_level", scope: !126, file: !44, line: 199, baseType: !136, size: 8, offset: 24)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !137, line: 24, baseType: !138)
!137 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !117, line: 37, baseType: !139)
!139 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_narenas_tdata", scope: !126, file: !44, line: 199, baseType: !141, size: 32, offset: 32)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !115, line: 26, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !117, line: 42, baseType: !7)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_offset_state", scope: !126, file: !44, line: 199, baseType: !144, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !115, line: 27, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !117, line: 45, baseType: !68)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_thread_allocated", scope: !126, file: !44, line: 199, baseType: !144, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_thread_deallocated", scope: !126, file: !44, line: 199, baseType: !144, size: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_bytes_until_sample", scope: !126, file: !44, line: 199, baseType: !149, size: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !137, line: 27, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !117, line: 44, baseType: !151)
!151 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_prof_tdata", scope: !126, file: !44, line: 199, baseType: !153, size: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "prof_tdata_t", file: !155, line: 9, baseType: !156)
!155 = !DIFile(filename: "include/jemalloc/internal/prof_types.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/deps/jemalloc", checksumkind: CSK_MD5, checksum: "893bb7e5be32d3ed1d6a52ee080689bf")
!156 = !DICompositeType(tag: DW_TAG_structure_type, name: "prof_tdata_s", file: !155, line: 9, flags: DIFlagFwdDecl)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_rtree_ctx", scope: !126, file: !44, line: 199, baseType: !158, size: 3072, offset: 384)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtree_ctx_t", file: !159, line: 40, baseType: !160)
!159 = !DIFile(filename: "include/jemalloc/internal/rtree_tsd.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/deps/jemalloc", checksumkind: CSK_MD5, checksum: "e327e8ed7b8fd5299eed4833d6c507b8")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtree_ctx_s", file: !159, line: 41, size: 3072, elements: !161)
!161 = !{!162, !176}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !160, file: !159, line: 43, baseType: !163, size: 2048)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 2048, elements: !174)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtree_ctx_cache_elm_t", file: !159, line: 34, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtree_ctx_cache_elm_s", file: !159, line: 35, size: 128, elements: !166)
!166 = !{!167, !170}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "leafkey", scope: !165, file: !159, line: 36, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !169, line: 90, baseType: !68)
!169 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!170 = !DIDerivedType(tag: DW_TAG_member, name: "leaf", scope: !165, file: !159, line: 37, baseType: !171, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtree_leaf_elm_t", file: !159, line: 32, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtree_leaf_elm_s", file: !159, line: 32, flags: DIFlagFwdDecl)
!174 = !{!175}
!175 = !DISubrange(count: 16)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "l2_cache", scope: !160, file: !159, line: 45, baseType: !177, size: 1024, offset: 2048)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 1024, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 8)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_iarena", scope: !126, file: !44, line: 199, baseType: !181, size: 64, offset: 3456)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "arena_t", file: !183, line: 18, baseType: !184)
!183 = !DIFile(filename: "include/jemalloc/internal/arena_types.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/deps/jemalloc", checksumkind: CSK_MD5, checksum: "1e2faaf6aaaed7809a70484596be6198")
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "arena_s", file: !183, line: 18, flags: DIFlagFwdDecl)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_arena", scope: !126, file: !44, line: 199, baseType: !181, size: 64, offset: 3520)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_arenas_tdata", scope: !126, file: !44, line: 199, baseType: !187, size: 64, offset: 3584)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "arena_tdata_t", file: !183, line: 19, baseType: !189)
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "arena_tdata_s", file: !183, line: 19, flags: DIFlagFwdDecl)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_binshards", scope: !126, file: !44, line: 199, baseType: !191, size: 312, offset: 3648)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "tsd_binshards_t", file: !192, line: 12, baseType: !193)
!192 = !DIFile(filename: "include/jemalloc/internal/bin_types.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/deps/jemalloc", checksumkind: CSK_MD5, checksum: "900f45601acc6d8c9838905f3ff9fe5c")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tsd_binshards_s", file: !192, line: 13, size: 312, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "binshard", scope: !193, file: !192, line: 14, baseType: !196, size: 312)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 312, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 39)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_tcache", scope: !126, file: !44, line: 199, baseType: !200, size: 46272, offset: 3968)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcache_t", file: !201, line: 6, baseType: !202)
!201 = !DIFile(filename: "include/jemalloc/internal/tcache_types.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/deps/jemalloc", checksumkind: CSK_MD5, checksum: "9b2852fa8ffe77d9fa097e3d9e569fb0")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcache_s", file: !203, line: 13, size: 46272, elements: !204)
!203 = !DIFile(filename: "include/jemalloc/internal/tcache_structs.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/deps/jemalloc", checksumkind: CSK_MD5, checksum: "639b312cb1f4b9dc92d248ca33e2878d")
!204 = !{!205, !206, !215, !231, !237, !243, !244, !257, !258, !261, !262}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "prof_accumbytes", scope: !202, file: !203, line: 20, baseType: !144, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "gc_ticker", scope: !202, file: !203, line: 22, baseType: !207, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "ticker_t", file: !208, line: 17, baseType: !209)
!208 = !DIFile(filename: "include/jemalloc/internal/ticker.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/deps/jemalloc", checksumkind: CSK_MD5, checksum: "2982b928838e20f58cc0968805d8a2fd")
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !208, line: 14, size: 64, elements: !210)
!210 = !{!211, !214}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !209, file: !208, line: 15, baseType: !212, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !137, line: 26, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !117, line: 41, baseType: !102)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "nticks", scope: !209, file: !208, line: 16, baseType: !212, size: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "bins_small", scope: !202, file: !203, line: 28, baseType: !216, size: 7488, offset: 128)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 7488, elements: !197)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_bin_t", file: !218, line: 43, baseType: !219)
!218 = !DIFile(filename: "include/jemalloc/internal/cache_bin.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/deps/jemalloc", checksumkind: CSK_MD5, checksum: "9d448b7baf024f90644dd6d3180d79e7")
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_bin_s", file: !218, line: 44, size: 192, elements: !220)
!220 = !{!221, !223, !224, !229}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "low_water", scope: !219, file: !218, line: 46, baseType: !222, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_bin_sz_t", file: !218, line: 22, baseType: !212)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "ncached", scope: !219, file: !218, line: 48, baseType: !222, size: 32, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tstats", scope: !219, file: !218, line: 54, baseType: !225, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_bin_stats_t", file: !218, line: 24, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_bin_stats_s", file: !218, line: 25, size: 64, elements: !227)
!227 = !{!228}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "nrequests", scope: !226, file: !218, line: 30, baseType: !144, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "avail", scope: !219, file: !218, line: 64, baseType: !230, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !202, file: !203, line: 35, baseType: !232, size: 128, offset: 7616)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !202, file: !203, line: 35, size: 128, elements: !233)
!233 = !{!234, !236}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "qre_next", scope: !232, file: !203, line: 35, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "qre_prev", scope: !232, file: !203, line: 35, baseType: !235, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tsd_link", scope: !202, file: !203, line: 38, baseType: !238, size: 128, offset: 7744)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !202, file: !203, line: 38, size: 128, elements: !239)
!239 = !{!240, !242}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "qre_next", scope: !238, file: !203, line: 38, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "qre_prev", scope: !238, file: !203, line: 38, baseType: !241, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "in_hook", scope: !202, file: !203, line: 39, baseType: !112, size: 8, offset: 7872)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "cache_bin_array_descriptor", scope: !202, file: !203, line: 46, baseType: !245, size: 256, offset: 7936)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_bin_array_descriptor_t", file: !218, line: 67, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_bin_array_descriptor_s", file: !218, line: 68, size: 256, elements: !247)
!247 = !{!248, !254, !256}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !246, file: !218, line: 73, baseType: !249, size: 128)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !246, file: !218, line: 73, size: 128, elements: !250)
!250 = !{!251, !253}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "qre_next", scope: !249, file: !218, line: 73, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "qre_prev", scope: !249, file: !218, line: 73, baseType: !252, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "bins_small", scope: !246, file: !218, line: 75, baseType: !255, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "bins_large", scope: !246, file: !218, line: 76, baseType: !255, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "arena", scope: !202, file: !203, line: 49, baseType: !181, size: 64, offset: 8192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next_gc_bin", scope: !202, file: !203, line: 51, baseType: !259, size: 32, offset: 8256)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "szind_t", file: !260, line: 10, baseType: !7)
!260 = !DIFile(filename: "include/jemalloc/internal/jemalloc_internal_types.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/deps/jemalloc", checksumkind: CSK_MD5, checksum: "9fabb1c7fca697e7a645839e73a4d9d5")
!261 = !DIDerivedType(tag: DW_TAG_member, name: "lg_fill_div", scope: !202, file: !203, line: 53, baseType: !196, size: 312, offset: 8288)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "bins_large", scope: !202, file: !203, line: 59, baseType: !263, size: 37632, offset: 8640)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 37632, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 196)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_witness_tsd", scope: !126, file: !44, line: 199, baseType: !79, size: 128, offset: 50240)
!267 = !{!268, !273, !0, !278, !284}
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !3, line: 23, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 48, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 6)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(name: "hooks", scope: !2, file: !3, line: 18, type: !275, isLocal: true, isDefinition: true)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 1536, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 4)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(name: "nhooks", scope: !2, file: !3, line: 17, type: !280, isLocal: true, isDefinition: true)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_u_t", file: !62, line: 70, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 70, size: 32, elements: !282)
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !281, file: !62, line: 70, baseType: !7, size: 32)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(name: "in_hook_global", scope: !286, file: !3, line: 131, type: !112, isLocal: true, isDefinition: true)
!286 = distinct !DISubprogram(name: "hook_reentrantp", scope: !3, file: !3, line: 103, type: !287, scopeLine: 103, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !290)
!287 = !DISubroutineType(types: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!290 = !{!291, !292}
!291 = !DILocalVariable(name: "tsdn", scope: !286, file: !3, line: 132, type: !119)
!292 = !DILocalVariable(name: "tcache", scope: !286, file: !3, line: 133, type: !235)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "malloc_mutex_t", file: !6, line: 19, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "malloc_mutex_s", file: !6, line: 20, size: 896, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, scope: !294, file: !6, line: 21, baseType: !297, size: 896)
!297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !294, file: !6, line: 21, size: 896, elements: !298)
!298 = !{!299, !360, !361}
!299 = !DIDerivedType(tag: DW_TAG_member, scope: !297, file: !6, line: 22, baseType: !300, size: 896)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !297, file: !6, line: 22, size: 896, elements: !301)
!301 = !{!302, !325, !355}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "prof_data", scope: !300, file: !6, line: 31, baseType: !303, size: 512)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "mutex_prof_data_t", file: !304, line: 106, baseType: !305)
!304 = !DIFile(filename: "include/jemalloc/internal/mutex_prof.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/deps/jemalloc", checksumkind: CSK_MD5, checksum: "4a1798f9510ae9d91f888a30d80fb7cc")
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !304, line: 76, size: 512, elements: !306)
!306 = !{!307, !313, !314, !315, !316, !317, !322, !323, !324}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "tot_wait_time", scope: !305, file: !304, line: 82, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "nstime_t", file: !309, line: 10, baseType: !310)
!309 = !DIFile(filename: "include/jemalloc/internal/nstime.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/deps/jemalloc", checksumkind: CSK_MD5, checksum: "3b54840f5e61842f175755b038667aab")
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !309, line: 8, size: 64, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !310, file: !309, line: 9, baseType: !144, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "max_wait_time", scope: !305, file: !304, line: 84, baseType: !308, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "n_wait_times", scope: !305, file: !304, line: 86, baseType: !144, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "n_spin_acquired", scope: !305, file: !304, line: 88, baseType: !144, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "max_n_thds", scope: !305, file: !304, line: 90, baseType: !141, size: 32, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "n_waiting_thds", scope: !305, file: !304, line: 92, baseType: !318, size: 32, offset: 288)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_u32_t", file: !62, line: 78, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 78, size: 32, elements: !320)
!320 = !{!321}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !319, file: !62, line: 78, baseType: !141, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "n_owner_switches", scope: !305, file: !304, line: 101, baseType: !144, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "prev_owner", scope: !305, file: !304, line: 103, baseType: !119, size: 64, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "n_lock_ops", scope: !305, file: !304, line: 105, baseType: !144, size: 64, offset: 448)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !300, file: !6, line: 44, baseType: !326, size: 320, offset: 512)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !327, line: 72, baseType: !328)
!327 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!328 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !327, line: 67, size: 320, elements: !329)
!329 = !{!330, !350, !354}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !328, file: !327, line: 69, baseType: !331, size: 320)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !332, line: 22, size: 320, elements: !333)
!332 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!333 = !{!334, !335, !336, !337, !338, !339, !341, !342}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !331, file: !332, line: 24, baseType: !102, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !331, file: !332, line: 25, baseType: !7, size: 32, offset: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !331, file: !332, line: 26, baseType: !102, size: 32, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !331, file: !332, line: 28, baseType: !7, size: 32, offset: 96)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !331, file: !332, line: 32, baseType: !102, size: 32, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !331, file: !332, line: 34, baseType: !340, size: 16, offset: 160)
!340 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !331, file: !332, line: 35, baseType: !340, size: 16, offset: 176)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !331, file: !332, line: 36, baseType: !343, size: 128, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !344, line: 55, baseType: !345)
!344 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !344, line: 51, size: 128, elements: !346)
!346 = !{!347, !349}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !345, file: !344, line: 53, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !345, file: !344, line: 54, baseType: !348, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !328, file: !327, line: 70, baseType: !351, size: 320)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 320, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 40)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !328, file: !327, line: 71, baseType: !151, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !300, file: !6, line: 50, baseType: !356, size: 8, offset: 832)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_b_t", file: !62, line: 68, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 68, size: 8, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !357, file: !62, line: 68, baseType: !112, size: 8)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "witness", scope: !297, file: !6, line: 59, baseType: !88, size: 384)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "lock_order", scope: !297, file: !6, line: 60, baseType: !362, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "malloc_mutex_lock_order_t", file: !6, line: 17, baseType: !5)
!363 = !{i32 7, !"Dwarf Version", i32 5}
!364 = !{i32 2, !"Debug Info Version", i32 3}
!365 = !{i32 1, !"wchar_size", i32 4}
!366 = !{i32 8, !"PIC Level", i32 2}
!367 = !{i32 7, !"PIE Level", i32 2}
!368 = !{i32 7, !"uwtable", i32 2}
!369 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!370 = distinct !DISubprogram(name: "hook_boot", scope: !3, file: !3, line: 22, type: !371, scopeLine: 22, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!371 = !DISubroutineType(types: !372)
!372 = !{!112}
!373 = !DILocation(line: 23, column: 9, scope: !370)
!374 = !DILocation(line: 23, column: 2, scope: !370)
!375 = !DISubprogram(name: "malloc_mutex_init", scope: !6, file: !6, line: 143, type: !376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!376 = !DISubroutineType(types: !377)
!377 = !{!112, !378, !92, !96, !362}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!379 = distinct !DISubprogram(name: "hook_install", scope: !3, file: !3, line: 48, type: !380, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !406)
!380 = !DISubroutineType(types: !381)
!381 = !{!55, !119, !382}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "hooks_t", file: !12, line: 103, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hooks_s", file: !12, line: 104, size: 256, elements: !385)
!385 = !{!386, !393, !399, !405}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_hook", scope: !384, file: !12, line: 105, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "hook_alloc", file: !12, line: 92, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !55, !391, !55, !168, !392}
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "hook_alloc_t", file: !12, line: 68, baseType: !11)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "dalloc_hook", scope: !384, file: !12, line: 106, baseType: !394, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "hook_dalloc", file: !12, line: 96, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !55, !398, !55, !392}
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "hook_dalloc_t", file: !12, line: 82, baseType: !23)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "expand_hook", scope: !384, file: !12, line: 107, baseType: !400, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "hook_expand", file: !12, line: 99, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !55, !404, !55, !66, !66, !168, !392}
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "hook_expand_t", file: !12, line: 90, baseType: !30)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !384, file: !12, line: 108, baseType: !55, size: 64, offset: 192)
!406 = !{!407, !408, !409}
!407 = !DILocalVariable(name: "tsdn", arg: 1, scope: !379, file: !3, line: 48, type: !119)
!408 = !DILocalVariable(name: "to_install", arg: 2, scope: !379, file: !3, line: 48, type: !382)
!409 = !DILocalVariable(name: "ret", scope: !379, file: !3, line: 50, type: !55)
!410 = !{!411, !411, i64 0}
!411 = !{!"any pointer", !412, i64 0}
!412 = !{!"omnipotent char", !413, i64 0}
!413 = !{!"Simple C/C++ TBAA"}
!414 = !DILocation(line: 48, column: 22, scope: !379)
!415 = !DILocation(line: 48, column: 37, scope: !379)
!416 = !DILocation(line: 49, column: 20, scope: !379)
!417 = !DILocation(line: 49, column: 2, scope: !379)
!418 = !DILocation(line: 50, column: 2, scope: !379)
!419 = !DILocation(line: 50, column: 8, scope: !379)
!420 = !DILocation(line: 50, column: 34, scope: !379)
!421 = !DILocation(line: 50, column: 14, scope: !379)
!422 = !DILocation(line: 51, column: 6, scope: !423)
!423 = distinct !DILexicalBlock(scope: !379, file: !3, line: 51, column: 6)
!424 = !DILocation(line: 51, column: 10, scope: !423)
!425 = !DILocation(line: 51, column: 6, scope: !379)
!426 = !DILocation(line: 52, column: 23, scope: !427)
!427 = distinct !DILexicalBlock(scope: !423, file: !3, line: 51, column: 19)
!428 = !DILocation(line: 52, column: 3, scope: !427)
!429 = !DILocation(line: 53, column: 2, scope: !427)
!430 = !DILocation(line: 54, column: 22, scope: !379)
!431 = !DILocation(line: 54, column: 2, scope: !379)
!432 = !DILocation(line: 55, column: 9, scope: !379)
!433 = !DILocation(line: 56, column: 1, scope: !379)
!434 = !DILocation(line: 55, column: 2, scope: !379)
!435 = distinct !DISubprogram(name: "malloc_mutex_lock", scope: !6, file: !6, line: 217, type: !436, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !438)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !119, !378}
!438 = !{!439, !440}
!439 = !DILocalVariable(name: "tsdn", arg: 1, scope: !435, file: !6, line: 217, type: !119)
!440 = !DILocalVariable(name: "mutex", arg: 2, scope: !435, file: !6, line: 217, type: !378)
!441 = !DILocation(line: 217, column: 27, scope: !435)
!442 = !DILocation(line: 217, column: 49, scope: !435)
!443 = !DILocation(line: 218, column: 49, scope: !435)
!444 = !DILocation(line: 218, column: 27, scope: !435)
!445 = !DILocation(line: 218, column: 57, scope: !435)
!446 = !DILocation(line: 218, column: 64, scope: !435)
!447 = !DILocation(line: 218, column: 2, scope: !435)
!448 = !DILocation(line: 220, column: 34, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !6, line: 220, column: 7)
!450 = distinct !DILexicalBlock(scope: !451, file: !6, line: 219, column: 18)
!451 = distinct !DILexicalBlock(scope: !435, file: !6, line: 219, column: 6)
!452 = !DILocation(line: 220, column: 7, scope: !449)
!453 = !DILocation(line: 220, column: 7, scope: !450)
!454 = !DILocation(line: 221, column: 27, scope: !455)
!455 = distinct !DILexicalBlock(scope: !449, file: !6, line: 220, column: 42)
!456 = !DILocation(line: 221, column: 4, scope: !455)
!457 = !DILocation(line: 222, column: 20, scope: !455)
!458 = !DILocation(line: 222, column: 27, scope: !455)
!459 = !DILocation(line: 222, column: 4, scope: !455)
!460 = !DILocation(line: 223, column: 3, scope: !455)
!461 = !DILocation(line: 224, column: 28, scope: !450)
!462 = !DILocation(line: 224, column: 34, scope: !450)
!463 = !DILocation(line: 224, column: 3, scope: !450)
!464 = !DILocation(line: 226, column: 37, scope: !435)
!465 = !DILocation(line: 226, column: 15, scope: !435)
!466 = !DILocation(line: 226, column: 45, scope: !435)
!467 = !DILocation(line: 226, column: 52, scope: !435)
!468 = !DILocation(line: 226, column: 2, scope: !435)
!469 = !DILocation(line: 227, column: 1, scope: !435)
!470 = distinct !DISubprogram(name: "hook_install_locked", scope: !3, file: !3, line: 28, type: !471, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !473)
!471 = !DISubroutineType(types: !472)
!472 = !{!55, !382}
!473 = !{!474, !475, !481, !483}
!474 = !DILocalVariable(name: "to_install", arg: 1, scope: !470, file: !3, line: 28, type: !382)
!475 = !DILocalVariable(name: "hooks_internal", scope: !470, file: !3, line: 29, type: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "hooks_internal_t", file: !3, line: 9, baseType: !477)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hooks_internal_s", file: !3, line: 10, size: 320, elements: !478)
!478 = !{!479, !480}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "hooks", scope: !477, file: !3, line: 11, baseType: !383, size: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !477, file: !3, line: 12, baseType: !112, size: 8, offset: 256)
!481 = !DILocalVariable(name: "i", scope: !482, file: !3, line: 30, type: !102)
!482 = distinct !DILexicalBlock(scope: !470, file: !3, line: 30, column: 2)
!483 = !DILocalVariable(name: "success", scope: !484, file: !3, line: 31, type: !112)
!484 = distinct !DILexicalBlock(scope: !485, file: !3, line: 30, column: 37)
!485 = distinct !DILexicalBlock(scope: !482, file: !3, line: 30, column: 2)
!486 = !DILocation(line: 28, column: 30, scope: !470)
!487 = !DILocation(line: 29, column: 2, scope: !470)
!488 = !DILocation(line: 29, column: 19, scope: !470)
!489 = !DILocation(line: 30, column: 7, scope: !482)
!490 = !DILocation(line: 30, column: 11, scope: !482)
!491 = !{!492, !492, i64 0}
!492 = !{!"int", !412, i64 0}
!493 = !DILocation(line: 30, column: 18, scope: !485)
!494 = !DILocation(line: 30, column: 20, scope: !485)
!495 = !DILocation(line: 30, column: 2, scope: !482)
!496 = !DILocation(line: 31, column: 3, scope: !484)
!497 = !DILocation(line: 31, column: 8, scope: !484)
!498 = !DILocation(line: 31, column: 61, scope: !484)
!499 = !DILocation(line: 31, column: 55, scope: !484)
!500 = !DILocation(line: 31, column: 18, scope: !484)
!501 = !{!502, !502, i64 0}
!502 = !{!"_Bool", !412, i64 0}
!503 = !DILocation(line: 33, column: 3, scope: !484)
!504 = !DILocation(line: 33, column: 3, scope: !505)
!505 = distinct !DILexicalBlock(scope: !484, file: !3, line: 33, column: 3)
!506 = !DILocation(line: 34, column: 23, scope: !507)
!507 = distinct !DILexicalBlock(scope: !484, file: !3, line: 34, column: 7)
!508 = !{!509, !502, i64 32}
!509 = !{!"hooks_internal_s", !510, i64 0, !502, i64 32}
!510 = !{!"hooks_s", !411, i64 0, !411, i64 8, !411, i64 16, !411, i64 24}
!511 = !{i8 0, i8 2}
!512 = !{}
!513 = !DILocation(line: 34, column: 7, scope: !484)
!514 = !DILocation(line: 35, column: 19, scope: !515)
!515 = distinct !DILexicalBlock(scope: !507, file: !3, line: 34, column: 31)
!516 = !DILocation(line: 35, column: 28, scope: !515)
!517 = !DILocation(line: 35, column: 27, scope: !515)
!518 = !{i64 0, i64 8, !410, i64 8, i64 8, !410, i64 16, i64 8, !410, i64 24, i64 8, !410}
!519 = !DILocation(line: 36, column: 19, scope: !515)
!520 = !DILocation(line: 36, column: 26, scope: !515)
!521 = !DILocation(line: 37, column: 27, scope: !515)
!522 = !DILocation(line: 37, column: 21, scope: !515)
!523 = !DILocation(line: 37, column: 4, scope: !515)
!524 = !DILocation(line: 39, column: 8, scope: !515)
!525 = !DILocation(line: 39, column: 47, scope: !515)
!526 = !DILocation(line: 38, column: 4, scope: !515)
!527 = !DILocation(line: 41, column: 18, scope: !515)
!528 = !DILocation(line: 41, column: 12, scope: !515)
!529 = !DILocation(line: 41, column: 4, scope: !515)
!530 = !DILocation(line: 43, column: 2, scope: !485)
!531 = !DILocation(line: 43, column: 2, scope: !484)
!532 = !DILocation(line: 30, column: 33, scope: !485)
!533 = !DILocation(line: 30, column: 2, scope: !485)
!534 = distinct !{!534, !495, !535}
!535 = !DILocation(line: 43, column: 2, scope: !482)
!536 = !DILocation(line: 44, column: 2, scope: !470)
!537 = !DILocation(line: 45, column: 1, scope: !470)
!538 = !DISubprogram(name: "tsd_global_slow_inc", scope: !44, file: !44, line: 121, type: !539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !119}
!541 = distinct !DISubprogram(name: "malloc_mutex_unlock", scope: !6, file: !6, line: 230, type: !436, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !542)
!542 = !{!543, !544}
!543 = !DILocalVariable(name: "tsdn", arg: 1, scope: !541, file: !6, line: 230, type: !119)
!544 = !DILocalVariable(name: "mutex", arg: 2, scope: !541, file: !6, line: 230, type: !378)
!545 = !DILocation(line: 230, column: 29, scope: !541)
!546 = !DILocation(line: 230, column: 51, scope: !541)
!547 = !DILocation(line: 231, column: 18, scope: !541)
!548 = !DILocation(line: 231, column: 25, scope: !541)
!549 = !DILocation(line: 231, column: 2, scope: !541)
!550 = !DILocation(line: 232, column: 39, scope: !541)
!551 = !DILocation(line: 232, column: 17, scope: !541)
!552 = !DILocation(line: 232, column: 47, scope: !541)
!553 = !DILocation(line: 232, column: 54, scope: !541)
!554 = !DILocation(line: 232, column: 2, scope: !541)
!555 = !DILocation(line: 234, column: 3, scope: !556)
!556 = distinct !DILexicalBlock(scope: !557, file: !6, line: 233, column: 18)
!557 = distinct !DILexicalBlock(scope: !541, file: !6, line: 233, column: 6)
!558 = !DILocation(line: 236, column: 1, scope: !541)
!559 = distinct !DISubprogram(name: "hook_remove", scope: !3, file: !3, line: 73, type: !560, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !562)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !119, !55}
!562 = !{!563, !564}
!563 = !DILocalVariable(name: "tsdn", arg: 1, scope: !559, file: !3, line: 73, type: !119)
!564 = !DILocalVariable(name: "opaque", arg: 2, scope: !559, file: !3, line: 73, type: !55)
!565 = !DILocation(line: 73, column: 21, scope: !559)
!566 = !DILocation(line: 73, column: 33, scope: !559)
!567 = !DILocation(line: 81, column: 20, scope: !559)
!568 = !DILocation(line: 81, column: 2, scope: !559)
!569 = !DILocation(line: 82, column: 36, scope: !559)
!570 = !DILocation(line: 82, column: 2, scope: !559)
!571 = !DILocation(line: 83, column: 22, scope: !559)
!572 = !DILocation(line: 83, column: 2, scope: !559)
!573 = !DILocation(line: 84, column: 22, scope: !559)
!574 = !DILocation(line: 84, column: 2, scope: !559)
!575 = !DILocation(line: 85, column: 1, scope: !559)
!576 = distinct !DISubprogram(name: "hook_remove_locked", scope: !3, file: !3, line: 59, type: !577, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !579)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !56}
!579 = !{!580, !581, !582}
!580 = !DILocalVariable(name: "to_remove", arg: 1, scope: !576, file: !3, line: 59, type: !56)
!581 = !DILocalVariable(name: "hooks_internal", scope: !576, file: !3, line: 60, type: !476)
!582 = !DILocalVariable(name: "success", scope: !576, file: !3, line: 61, type: !112)
!583 = !DILocation(line: 59, column: 33, scope: !576)
!584 = !DILocation(line: 60, column: 2, scope: !576)
!585 = !DILocation(line: 60, column: 19, scope: !576)
!586 = !DILocation(line: 61, column: 2, scope: !576)
!587 = !DILocation(line: 61, column: 7, scope: !576)
!588 = !DILocation(line: 61, column: 53, scope: !576)
!589 = !DILocation(line: 61, column: 17, scope: !576)
!590 = !DILocation(line: 63, column: 2, scope: !576)
!591 = !DILocation(line: 63, column: 2, scope: !592)
!592 = distinct !DILexicalBlock(scope: !576, file: !3, line: 63, column: 2)
!593 = !DILocation(line: 65, column: 2, scope: !576)
!594 = !DILocation(line: 65, column: 2, scope: !595)
!595 = distinct !DILexicalBlock(scope: !576, file: !3, line: 65, column: 2)
!596 = !DILocation(line: 66, column: 17, scope: !576)
!597 = !DILocation(line: 66, column: 24, scope: !576)
!598 = !DILocation(line: 67, column: 18, scope: !576)
!599 = !DILocation(line: 67, column: 2, scope: !576)
!600 = !DILocation(line: 68, column: 26, scope: !576)
!601 = !DILocation(line: 68, column: 65, scope: !576)
!602 = !DILocation(line: 68, column: 2, scope: !576)
!603 = !DILocation(line: 70, column: 1, scope: !576)
!604 = !DISubprogram(name: "tsd_global_slow_dec", scope: !44, file: !44, line: 122, type: !539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!605 = distinct !DISubprogram(name: "hook_invoke_alloc", scope: !3, file: !3, line: 154, type: !606, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !608)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !391, !55, !168, !392}
!608 = !{!609, !610, !611, !612, !613, !614, !615, !617, !620}
!609 = !DILocalVariable(name: "type", arg: 1, scope: !605, file: !3, line: 154, type: !391)
!610 = !DILocalVariable(name: "result", arg: 2, scope: !605, file: !3, line: 154, type: !55)
!611 = !DILocalVariable(name: "result_raw", arg: 3, scope: !605, file: !3, line: 154, type: !168)
!612 = !DILocalVariable(name: "args_raw", arg: 4, scope: !605, file: !3, line: 155, type: !392)
!613 = !DILocalVariable(name: "in_hook", scope: !605, file: !3, line: 156, type: !289)
!614 = !DILocalVariable(name: "hook", scope: !605, file: !3, line: 158, type: !476)
!615 = !DILocalVariable(name: "for_each_hook_counter", scope: !616, file: !3, line: 159, type: !102)
!616 = distinct !DILexicalBlock(scope: !605, file: !3, line: 159, column: 2)
!617 = !DILocalVariable(name: "for_each_hook_success", scope: !618, file: !3, line: 159, type: !112)
!618 = distinct !DILexicalBlock(scope: !619, file: !3, line: 159, column: 2)
!619 = distinct !DILexicalBlock(scope: !616, file: !3, line: 159, column: 2)
!620 = !DILocalVariable(name: "h", scope: !618, file: !3, line: 160, type: !387)
!621 = !{!412, !412, i64 0}
!622 = !DILocation(line: 154, column: 32, scope: !605)
!623 = !DILocation(line: 154, column: 44, scope: !605)
!624 = !{!625, !625, i64 0}
!625 = !{!"long", !412, i64 0}
!626 = !DILocation(line: 154, column: 62, scope: !605)
!627 = !DILocation(line: 155, column: 15, scope: !605)
!628 = !DILocation(line: 156, column: 2, scope: !629)
!629 = distinct !DILexicalBlock(scope: !605, file: !3, line: 156, column: 2)
!630 = !DILocation(line: 156, column: 2, scope: !605)
!631 = !DILocation(line: 156, column: 2, scope: !632)
!632 = distinct !DILexicalBlock(scope: !629, file: !3, line: 156, column: 2)
!633 = !DILocation(line: 156, column: 2, scope: !634)
!634 = distinct !DILexicalBlock(scope: !605, file: !3, line: 156, column: 2)
!635 = !DILocation(line: 156, column: 2, scope: !636)
!636 = distinct !DILexicalBlock(scope: !634, file: !3, line: 156, column: 2)
!637 = !DILocation(line: 158, column: 2, scope: !605)
!638 = !DILocation(line: 158, column: 19, scope: !605)
!639 = !DILocation(line: 159, column: 2, scope: !616)
!640 = !DILocation(line: 159, column: 2, scope: !619)
!641 = !DILocation(line: 159, column: 2, scope: !618)
!642 = !DILocation(line: 159, column: 2, scope: !643)
!643 = distinct !DILexicalBlock(scope: !618, file: !3, line: 159, column: 2)
!644 = !DILocation(line: 159, column: 2, scope: !645)
!645 = distinct !DILexicalBlock(scope: !643, file: !3, line: 159, column: 2)
!646 = !DILocation(line: 159, column: 2, scope: !647)
!647 = distinct !DILexicalBlock(scope: !618, file: !3, line: 159, column: 2)
!648 = !DILocation(line: 159, column: 2, scope: !649)
!649 = distinct !DILexicalBlock(scope: !647, file: !3, line: 159, column: 2)
!650 = !DILocation(line: 160, column: 3, scope: !618)
!651 = !DILocation(line: 160, column: 14, scope: !618)
!652 = !DILocation(line: 160, column: 23, scope: !618)
!653 = !DILocation(line: 160, column: 29, scope: !618)
!654 = !{!509, !411, i64 0}
!655 = !DILocation(line: 161, column: 7, scope: !656)
!656 = distinct !DILexicalBlock(scope: !618, file: !3, line: 161, column: 7)
!657 = !DILocation(line: 161, column: 9, scope: !656)
!658 = !DILocation(line: 161, column: 7, scope: !618)
!659 = !DILocation(line: 162, column: 4, scope: !660)
!660 = distinct !DILexicalBlock(scope: !656, file: !3, line: 161, column: 18)
!661 = !DILocation(line: 162, column: 11, scope: !660)
!662 = !DILocation(line: 162, column: 17, scope: !660)
!663 = !{!509, !411, i64 24}
!664 = !DILocation(line: 162, column: 24, scope: !660)
!665 = !DILocation(line: 162, column: 30, scope: !660)
!666 = !DILocation(line: 162, column: 38, scope: !660)
!667 = !DILocation(line: 162, column: 50, scope: !660)
!668 = !DILocation(line: 163, column: 3, scope: !660)
!669 = !DILocation(line: 164, column: 2, scope: !619)
!670 = !DILocation(line: 164, column: 2, scope: !618)
!671 = distinct !{!671, !639, !672}
!672 = !DILocation(line: 164, column: 2, scope: !616)
!673 = !DILocation(line: 166, column: 2, scope: !605)
!674 = !DILocation(line: 167, column: 1, scope: !605)
!675 = distinct !DISubprogram(name: "atomic_load_u", scope: !62, file: !62, line: 70, type: !676, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !681)
!676 = !DISubroutineType(types: !677)
!677 = !{!7, !678, !680}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_memory_order_t", file: !36, line: 14, baseType: !35)
!681 = !{!682, !683, !684}
!682 = !DILocalVariable(name: "a", arg: 1, scope: !675, file: !62, line: 70, type: !678)
!683 = !DILocalVariable(name: "mo", arg: 2, scope: !675, file: !62, line: 70, type: !680)
!684 = !DILocalVariable(name: "result", scope: !675, file: !62, line: 70, type: !7)
!685 = !DILocation(line: 70, column: 1, scope: !675)
!686 = distinct !DISubprogram(name: "seq_try_load_hooks", scope: !3, file: !3, line: 15, type: !687, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !690)
!687 = !DISubroutineType(types: !688)
!688 = !{!112, !689, !56}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!690 = !{!691, !692, !693, !695, !696, !698}
!691 = !DILocalVariable(name: "dst", arg: 1, scope: !686, file: !3, line: 15, type: !689)
!692 = !DILocalVariable(name: "src", arg: 2, scope: !686, file: !3, line: 15, type: !56)
!693 = !DILocalVariable(name: "buf", scope: !686, file: !3, line: 15, type: !694)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 320, elements: !71)
!695 = !DILocalVariable(name: "seq1", scope: !686, file: !3, line: 15, type: !66)
!696 = !DILocalVariable(name: "i", scope: !697, file: !3, line: 15, type: !66)
!697 = distinct !DILexicalBlock(scope: !686, file: !3, line: 15, column: 1)
!698 = !DILocalVariable(name: "seq2", scope: !686, file: !3, line: 15, type: !66)
!699 = !DILocation(line: 15, column: 1, scope: !686)
!700 = !DILocation(line: 15, column: 1, scope: !701)
!701 = distinct !DILexicalBlock(scope: !686, file: !3, line: 15, column: 1)
!702 = !DILocation(line: 15, column: 1, scope: !703)
!703 = distinct !DILexicalBlock(scope: !701, file: !3, line: 15, column: 1)
!704 = !DILocation(line: 15, column: 1, scope: !697)
!705 = !DILocation(line: 15, column: 1, scope: !706)
!706 = distinct !DILexicalBlock(scope: !697, file: !3, line: 15, column: 1)
!707 = !DILocation(line: 15, column: 1, scope: !708)
!708 = distinct !DILexicalBlock(scope: !706, file: !3, line: 15, column: 1)
!709 = distinct !{!709, !704, !704}
!710 = !DILocation(line: 15, column: 1, scope: !711)
!711 = distinct !DILexicalBlock(scope: !686, file: !3, line: 15, column: 1)
!712 = !DILocation(line: 15, column: 1, scope: !713)
!713 = distinct !DILexicalBlock(scope: !711, file: !3, line: 15, column: 1)
!714 = distinct !DISubprogram(name: "hook_invoke_dalloc", scope: !3, file: !3, line: 170, type: !715, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !717)
!715 = !DISubroutineType(types: !716)
!716 = !{null, !398, !55, !392}
!717 = !{!718, !719, !720, !721, !722, !723, !725, !728}
!718 = !DILocalVariable(name: "type", arg: 1, scope: !714, file: !3, line: 170, type: !398)
!719 = !DILocalVariable(name: "address", arg: 2, scope: !714, file: !3, line: 170, type: !55)
!720 = !DILocalVariable(name: "args_raw", arg: 3, scope: !714, file: !3, line: 170, type: !392)
!721 = !DILocalVariable(name: "in_hook", scope: !714, file: !3, line: 171, type: !289)
!722 = !DILocalVariable(name: "hook", scope: !714, file: !3, line: 172, type: !476)
!723 = !DILocalVariable(name: "for_each_hook_counter", scope: !724, file: !3, line: 173, type: !102)
!724 = distinct !DILexicalBlock(scope: !714, file: !3, line: 173, column: 2)
!725 = !DILocalVariable(name: "for_each_hook_success", scope: !726, file: !3, line: 173, type: !112)
!726 = distinct !DILexicalBlock(scope: !727, file: !3, line: 173, column: 2)
!727 = distinct !DILexicalBlock(scope: !724, file: !3, line: 173, column: 2)
!728 = !DILocalVariable(name: "h", scope: !726, file: !3, line: 174, type: !394)
!729 = !DILocation(line: 170, column: 34, scope: !714)
!730 = !DILocation(line: 170, column: 46, scope: !714)
!731 = !DILocation(line: 170, column: 65, scope: !714)
!732 = !DILocation(line: 171, column: 2, scope: !733)
!733 = distinct !DILexicalBlock(scope: !714, file: !3, line: 171, column: 2)
!734 = !DILocation(line: 171, column: 2, scope: !714)
!735 = !DILocation(line: 171, column: 2, scope: !736)
!736 = distinct !DILexicalBlock(scope: !733, file: !3, line: 171, column: 2)
!737 = !DILocation(line: 171, column: 2, scope: !738)
!738 = distinct !DILexicalBlock(scope: !714, file: !3, line: 171, column: 2)
!739 = !DILocation(line: 171, column: 2, scope: !740)
!740 = distinct !DILexicalBlock(scope: !738, file: !3, line: 171, column: 2)
!741 = !DILocation(line: 172, column: 2, scope: !714)
!742 = !DILocation(line: 172, column: 19, scope: !714)
!743 = !DILocation(line: 173, column: 2, scope: !724)
!744 = !DILocation(line: 173, column: 2, scope: !727)
!745 = !DILocation(line: 173, column: 2, scope: !726)
!746 = !DILocation(line: 173, column: 2, scope: !747)
!747 = distinct !DILexicalBlock(scope: !726, file: !3, line: 173, column: 2)
!748 = !DILocation(line: 173, column: 2, scope: !749)
!749 = distinct !DILexicalBlock(scope: !747, file: !3, line: 173, column: 2)
!750 = !DILocation(line: 173, column: 2, scope: !751)
!751 = distinct !DILexicalBlock(scope: !726, file: !3, line: 173, column: 2)
!752 = !DILocation(line: 173, column: 2, scope: !753)
!753 = distinct !DILexicalBlock(scope: !751, file: !3, line: 173, column: 2)
!754 = !DILocation(line: 174, column: 3, scope: !726)
!755 = !DILocation(line: 174, column: 15, scope: !726)
!756 = !DILocation(line: 174, column: 24, scope: !726)
!757 = !DILocation(line: 174, column: 30, scope: !726)
!758 = !{!509, !411, i64 8}
!759 = !DILocation(line: 175, column: 7, scope: !760)
!760 = distinct !DILexicalBlock(scope: !726, file: !3, line: 175, column: 7)
!761 = !DILocation(line: 175, column: 9, scope: !760)
!762 = !DILocation(line: 175, column: 7, scope: !726)
!763 = !DILocation(line: 176, column: 4, scope: !764)
!764 = distinct !DILexicalBlock(scope: !760, file: !3, line: 175, column: 18)
!765 = !DILocation(line: 176, column: 11, scope: !764)
!766 = !DILocation(line: 176, column: 17, scope: !764)
!767 = !DILocation(line: 176, column: 24, scope: !764)
!768 = !DILocation(line: 176, column: 30, scope: !764)
!769 = !DILocation(line: 176, column: 39, scope: !764)
!770 = !DILocation(line: 177, column: 3, scope: !764)
!771 = !DILocation(line: 178, column: 2, scope: !727)
!772 = !DILocation(line: 178, column: 2, scope: !726)
!773 = distinct !{!773, !743, !774}
!774 = !DILocation(line: 178, column: 2, scope: !724)
!775 = !DILocation(line: 179, column: 2, scope: !714)
!776 = !DILocation(line: 180, column: 1, scope: !714)
!777 = distinct !DISubprogram(name: "hook_invoke_expand", scope: !3, file: !3, line: 183, type: !778, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !780)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !404, !55, !66, !66, !168, !392}
!780 = !{!781, !782, !783, !784, !785, !786, !787, !788, !789, !791, !794}
!781 = !DILocalVariable(name: "type", arg: 1, scope: !777, file: !3, line: 183, type: !404)
!782 = !DILocalVariable(name: "address", arg: 2, scope: !777, file: !3, line: 183, type: !55)
!783 = !DILocalVariable(name: "old_usize", arg: 3, scope: !777, file: !3, line: 183, type: !66)
!784 = !DILocalVariable(name: "new_usize", arg: 4, scope: !777, file: !3, line: 184, type: !66)
!785 = !DILocalVariable(name: "result_raw", arg: 5, scope: !777, file: !3, line: 184, type: !168)
!786 = !DILocalVariable(name: "args_raw", arg: 6, scope: !777, file: !3, line: 184, type: !392)
!787 = !DILocalVariable(name: "in_hook", scope: !777, file: !3, line: 185, type: !289)
!788 = !DILocalVariable(name: "hook", scope: !777, file: !3, line: 186, type: !476)
!789 = !DILocalVariable(name: "for_each_hook_counter", scope: !790, file: !3, line: 187, type: !102)
!790 = distinct !DILexicalBlock(scope: !777, file: !3, line: 187, column: 2)
!791 = !DILocalVariable(name: "for_each_hook_success", scope: !792, file: !3, line: 187, type: !112)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 187, column: 2)
!793 = distinct !DILexicalBlock(scope: !790, file: !3, line: 187, column: 2)
!794 = !DILocalVariable(name: "h", scope: !792, file: !3, line: 188, type: !400)
!795 = !DILocation(line: 183, column: 34, scope: !777)
!796 = !DILocation(line: 183, column: 46, scope: !777)
!797 = !DILocation(line: 183, column: 62, scope: !777)
!798 = !DILocation(line: 184, column: 12, scope: !777)
!799 = !DILocation(line: 184, column: 33, scope: !777)
!800 = !DILocation(line: 184, column: 55, scope: !777)
!801 = !DILocation(line: 185, column: 2, scope: !802)
!802 = distinct !DILexicalBlock(scope: !777, file: !3, line: 185, column: 2)
!803 = !DILocation(line: 185, column: 2, scope: !777)
!804 = !DILocation(line: 185, column: 2, scope: !805)
!805 = distinct !DILexicalBlock(scope: !802, file: !3, line: 185, column: 2)
!806 = !DILocation(line: 185, column: 2, scope: !807)
!807 = distinct !DILexicalBlock(scope: !777, file: !3, line: 185, column: 2)
!808 = !DILocation(line: 185, column: 2, scope: !809)
!809 = distinct !DILexicalBlock(scope: !807, file: !3, line: 185, column: 2)
!810 = !DILocation(line: 186, column: 2, scope: !777)
!811 = !DILocation(line: 186, column: 19, scope: !777)
!812 = !DILocation(line: 187, column: 2, scope: !790)
!813 = !DILocation(line: 187, column: 2, scope: !793)
!814 = !DILocation(line: 187, column: 2, scope: !792)
!815 = !DILocation(line: 187, column: 2, scope: !816)
!816 = distinct !DILexicalBlock(scope: !792, file: !3, line: 187, column: 2)
!817 = !DILocation(line: 187, column: 2, scope: !818)
!818 = distinct !DILexicalBlock(scope: !816, file: !3, line: 187, column: 2)
!819 = !DILocation(line: 187, column: 2, scope: !820)
!820 = distinct !DILexicalBlock(scope: !792, file: !3, line: 187, column: 2)
!821 = !DILocation(line: 187, column: 2, scope: !822)
!822 = distinct !DILexicalBlock(scope: !820, file: !3, line: 187, column: 2)
!823 = !DILocation(line: 188, column: 3, scope: !792)
!824 = !DILocation(line: 188, column: 15, scope: !792)
!825 = !DILocation(line: 188, column: 24, scope: !792)
!826 = !DILocation(line: 188, column: 30, scope: !792)
!827 = !{!509, !411, i64 16}
!828 = !DILocation(line: 189, column: 7, scope: !829)
!829 = distinct !DILexicalBlock(scope: !792, file: !3, line: 189, column: 7)
!830 = !DILocation(line: 189, column: 9, scope: !829)
!831 = !DILocation(line: 189, column: 7, scope: !792)
!832 = !DILocation(line: 190, column: 4, scope: !833)
!833 = distinct !DILexicalBlock(scope: !829, file: !3, line: 189, column: 18)
!834 = !DILocation(line: 190, column: 11, scope: !833)
!835 = !DILocation(line: 190, column: 17, scope: !833)
!836 = !DILocation(line: 190, column: 24, scope: !833)
!837 = !DILocation(line: 190, column: 30, scope: !833)
!838 = !DILocation(line: 190, column: 39, scope: !833)
!839 = !DILocation(line: 190, column: 50, scope: !833)
!840 = !DILocation(line: 191, column: 8, scope: !833)
!841 = !DILocation(line: 191, column: 20, scope: !833)
!842 = !DILocation(line: 192, column: 3, scope: !833)
!843 = !DILocation(line: 193, column: 2, scope: !793)
!844 = !DILocation(line: 193, column: 2, scope: !792)
!845 = distinct !{!845, !812, !846}
!846 = !DILocation(line: 193, column: 2, scope: !790)
!847 = !DILocation(line: 194, column: 2, scope: !777)
!848 = !DILocation(line: 195, column: 1, scope: !777)
!849 = distinct !DISubprogram(name: "witness_assert_not_owner", scope: !75, file: !75, line: 205, type: !850, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !852)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !73, !103}
!852 = !{!853, !854, !855, !857, !859}
!853 = !DILocalVariable(name: "witness_tsdn", arg: 1, scope: !849, file: !75, line: 205, type: !73)
!854 = !DILocalVariable(name: "witness", arg: 2, scope: !849, file: !75, line: 206, type: !103)
!855 = !DILocalVariable(name: "witness_tsd", scope: !849, file: !75, line: 207, type: !856)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!857 = !DILocalVariable(name: "witnesses", scope: !849, file: !75, line: 208, type: !858)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!859 = !DILocalVariable(name: "w", scope: !849, file: !75, line: 209, type: !87)
!860 = !DILocation(line: 205, column: 42, scope: !849)
!861 = !DILocation(line: 206, column: 22, scope: !849)
!862 = !DILocation(line: 207, column: 2, scope: !849)
!863 = !DILocation(line: 207, column: 17, scope: !849)
!864 = !DILocation(line: 208, column: 2, scope: !849)
!865 = !DILocation(line: 208, column: 18, scope: !849)
!866 = !DILocation(line: 209, column: 2, scope: !849)
!867 = !DILocation(line: 209, column: 13, scope: !849)
!868 = !DILocation(line: 229, column: 1, scope: !849)
!869 = distinct !DISubprogram(name: "tsdn_witness_tsdp_get", scope: !44, file: !44, line: 300, type: !870, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !872)
!870 = !DISubroutineType(types: !871)
!871 = !{!73, !119}
!872 = !{!873, !874}
!873 = !DILocalVariable(name: "tsdn", arg: 1, scope: !869, file: !44, line: 300, type: !119)
!874 = !DILocalVariable(name: "tsd", scope: !869, file: !44, line: 300, type: !241)
!875 = !DILocation(line: 300, column: 1, scope: !869)
!876 = !DILocation(line: 300, column: 1, scope: !877)
!877 = distinct !DILexicalBlock(scope: !869, file: !44, line: 300, column: 1)
!878 = !DILocation(line: 300, column: 1, scope: !879)
!879 = distinct !DILexicalBlock(scope: !877, file: !44, line: 300, column: 1)
!880 = distinct !DISubprogram(name: "malloc_mutex_trylock_final", scope: !6, file: !6, line: 160, type: !881, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !883)
!881 = !DISubroutineType(types: !882)
!882 = !{!112, !378}
!883 = !{!884}
!884 = !DILocalVariable(name: "mutex", arg: 1, scope: !880, file: !6, line: 160, type: !378)
!885 = !DILocation(line: 160, column: 44, scope: !880)
!886 = !DILocation(line: 161, column: 9, scope: !880)
!887 = !DILocation(line: 161, column: 2, scope: !880)
!888 = !DISubprogram(name: "malloc_mutex_lock_slow", scope: !6, file: !6, line: 151, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !378}
!891 = distinct !DISubprogram(name: "atomic_store_b", scope: !62, file: !62, line: 68, type: !892, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !895)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !894, !112, !680}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!895 = !{!896, !897, !898}
!896 = !DILocalVariable(name: "a", arg: 1, scope: !891, file: !62, line: 68, type: !894)
!897 = !DILocalVariable(name: "val", arg: 2, scope: !891, file: !62, line: 68, type: !112)
!898 = !DILocalVariable(name: "mo", arg: 3, scope: !891, file: !62, line: 68, type: !680)
!899 = !DILocation(line: 68, column: 1, scope: !891)
!900 = distinct !DISubprogram(name: "mutex_owner_stats_update", scope: !6, file: !6, line: 165, type: !436, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !901)
!901 = !{!902, !903, !904}
!902 = !DILocalVariable(name: "tsdn", arg: 1, scope: !900, file: !6, line: 165, type: !119)
!903 = !DILocalVariable(name: "mutex", arg: 2, scope: !900, file: !6, line: 165, type: !378)
!904 = !DILocalVariable(name: "data", scope: !905, file: !6, line: 167, type: !907)
!905 = distinct !DILexicalBlock(scope: !906, file: !6, line: 166, column: 20)
!906 = distinct !DILexicalBlock(scope: !900, file: !6, line: 166, column: 6)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!908 = !DILocation(line: 165, column: 34, scope: !900)
!909 = !DILocation(line: 165, column: 56, scope: !900)
!910 = !DILocation(line: 167, column: 3, scope: !905)
!911 = !DILocation(line: 167, column: 22, scope: !905)
!912 = !DILocation(line: 167, column: 30, scope: !905)
!913 = !DILocation(line: 167, column: 37, scope: !905)
!914 = !DILocation(line: 168, column: 3, scope: !905)
!915 = !DILocation(line: 168, column: 9, scope: !905)
!916 = !DILocation(line: 168, column: 19, scope: !905)
!917 = !{!918, !625, i64 56}
!918 = !{!"", !919, i64 0, !919, i64 8, !625, i64 16, !625, i64 24, !492, i64 32, !920, i64 36, !625, i64 40, !411, i64 48, !625, i64 56}
!919 = !{!"", !625, i64 0}
!920 = !{!"", !492, i64 0}
!921 = !DILocation(line: 169, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !905, file: !6, line: 169, column: 7)
!923 = !DILocation(line: 169, column: 13, scope: !922)
!924 = !{!918, !411, i64 48}
!925 = !DILocation(line: 169, column: 27, scope: !922)
!926 = !DILocation(line: 169, column: 24, scope: !922)
!927 = !DILocation(line: 169, column: 7, scope: !905)
!928 = !DILocation(line: 170, column: 23, scope: !929)
!929 = distinct !DILexicalBlock(scope: !922, file: !6, line: 169, column: 33)
!930 = !DILocation(line: 170, column: 4, scope: !929)
!931 = !DILocation(line: 170, column: 10, scope: !929)
!932 = !DILocation(line: 170, column: 21, scope: !929)
!933 = !DILocation(line: 171, column: 4, scope: !929)
!934 = !DILocation(line: 171, column: 10, scope: !929)
!935 = !DILocation(line: 171, column: 26, scope: !929)
!936 = !{!918, !625, i64 40}
!937 = !DILocation(line: 172, column: 3, scope: !929)
!938 = !DILocation(line: 173, column: 2, scope: !906)
!939 = !DILocation(line: 174, column: 1, scope: !900)
!940 = distinct !DISubprogram(name: "witness_lock", scope: !75, file: !75, line: 275, type: !941, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !943)
!941 = !DISubroutineType(types: !942)
!942 = !{null, !73, !87}
!943 = !{!944, !945, !946, !947, !948}
!944 = !DILocalVariable(name: "witness_tsdn", arg: 1, scope: !940, file: !75, line: 275, type: !73)
!945 = !DILocalVariable(name: "witness", arg: 2, scope: !940, file: !75, line: 275, type: !87)
!946 = !DILocalVariable(name: "witness_tsd", scope: !940, file: !75, line: 276, type: !856)
!947 = !DILocalVariable(name: "witnesses", scope: !940, file: !75, line: 277, type: !858)
!948 = !DILocalVariable(name: "w", scope: !940, file: !75, line: 278, type: !87)
!949 = !DILocation(line: 275, column: 30, scope: !940)
!950 = !DILocation(line: 275, column: 55, scope: !940)
!951 = !DILocation(line: 276, column: 2, scope: !940)
!952 = !DILocation(line: 276, column: 17, scope: !940)
!953 = !DILocation(line: 277, column: 2, scope: !940)
!954 = !DILocation(line: 277, column: 18, scope: !940)
!955 = !DILocation(line: 278, column: 2, scope: !940)
!956 = !DILocation(line: 278, column: 13, scope: !940)
!957 = !DILocation(line: 315, column: 1, scope: !940)
!958 = distinct !DISubprogram(name: "tsdn_null", scope: !44, file: !44, line: 229, type: !959, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !963)
!959 = !DISubroutineType(types: !960)
!960 = !{!112, !961}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!963 = !{!964}
!964 = !DILocalVariable(name: "tsdn", arg: 1, scope: !958, file: !44, line: 229, type: !961)
!965 = !DILocation(line: 229, column: 25, scope: !958)
!966 = !DILocation(line: 230, column: 9, scope: !958)
!967 = !DILocation(line: 230, column: 14, scope: !958)
!968 = !DILocation(line: 230, column: 2, scope: !958)
!969 = distinct !DISubprogram(name: "tsdn_tsd", scope: !44, file: !44, line: 234, type: !970, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !972)
!970 = !DISubroutineType(types: !971)
!971 = !{!241, !119}
!972 = !{!973}
!973 = !DILocalVariable(name: "tsdn", arg: 1, scope: !969, file: !44, line: 234, type: !119)
!974 = !DILocation(line: 234, column: 18, scope: !969)
!975 = !DILocation(line: 235, column: 2, scope: !969)
!976 = !DILocation(line: 235, column: 2, scope: !977)
!977 = distinct !DILexicalBlock(scope: !969, file: !44, line: 235, column: 2)
!978 = !DILocation(line: 237, column: 10, scope: !969)
!979 = !DILocation(line: 237, column: 16, scope: !969)
!980 = !DILocation(line: 237, column: 2, scope: !969)
!981 = distinct !DISubprogram(name: "tsd_witness_tsdp_get", scope: !44, file: !44, line: 284, type: !982, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !984)
!982 = !DISubroutineType(types: !983)
!983 = !{!856, !241}
!984 = !{!985, !986}
!985 = !DILocalVariable(name: "tsd", arg: 1, scope: !981, file: !44, line: 284, type: !241)
!986 = !DILocalVariable(name: "state", scope: !981, file: !44, line: 284, type: !114)
!987 = !DILocation(line: 284, column: 1, scope: !981)
!988 = !DILocation(line: 284, column: 1, scope: !989)
!989 = distinct !DILexicalBlock(scope: !981, file: !44, line: 284, column: 1)
!990 = distinct !DISubprogram(name: "tsd_state_get", scope: !44, file: !44, line: 204, type: !991, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !993)
!991 = !DISubroutineType(types: !992)
!992 = !{!114, !241}
!993 = !{!994}
!994 = !DILocalVariable(name: "tsd", arg: 1, scope: !990, file: !44, line: 204, type: !241)
!995 = !DILocation(line: 204, column: 22, scope: !990)
!996 = !DILocation(line: 211, column: 22, scope: !990)
!997 = !DILocation(line: 211, column: 27, scope: !990)
!998 = !DILocation(line: 211, column: 9, scope: !990)
!999 = !DILocation(line: 211, column: 2, scope: !990)
!1000 = distinct !DISubprogram(name: "tsd_witness_tsdp_get_unsafe", scope: !44, file: !44, line: 265, type: !982, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1001)
!1001 = !{!1002}
!1002 = !DILocalVariable(name: "tsd", arg: 1, scope: !1000, file: !44, line: 265, type: !241)
!1003 = !DILocation(line: 265, column: 1, scope: !1000)
!1004 = !DISubprogram(name: "pthread_mutex_trylock", scope: !1005, file: !1005, line: 790, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1005 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!102, !1008}
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!1009 = distinct !DISubprogram(name: "atomic_enum_to_builtin", scope: !36, file: !36, line: 17, type: !1010, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1012)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!102, !680}
!1012 = !{!1013}
!1013 = !DILocalVariable(name: "mo", arg: 1, scope: !1009, file: !36, line: 17, type: !680)
!1014 = !DILocation(line: 17, column: 46, scope: !1009)
!1015 = !DILocation(line: 18, column: 10, scope: !1009)
!1016 = !DILocation(line: 18, column: 2, scope: !1009)
!1017 = !DILocation(line: 20, column: 3, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1009, file: !36, line: 18, column: 14)
!1019 = !DILocation(line: 22, column: 3, scope: !1018)
!1020 = !DILocation(line: 24, column: 3, scope: !1018)
!1021 = !DILocation(line: 26, column: 3, scope: !1018)
!1022 = !DILocation(line: 28, column: 3, scope: !1018)
!1023 = !DILocation(line: 31, column: 2, scope: !1009)
!1024 = !DILocation(line: 31, column: 2, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1009, file: !36, line: 31, column: 2)
!1026 = !DILocation(line: 32, column: 1, scope: !1009)
!1027 = distinct !DISubprogram(name: "seq_store_hooks", scope: !3, file: !3, line: 15, type: !1028, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1030)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !56, !689}
!1030 = !{!1031, !1032, !1033, !1034, !1035}
!1031 = !DILocalVariable(name: "dst", arg: 1, scope: !1027, file: !3, line: 15, type: !56)
!1032 = !DILocalVariable(name: "src", arg: 2, scope: !1027, file: !3, line: 15, type: !689)
!1033 = !DILocalVariable(name: "buf", scope: !1027, file: !3, line: 15, type: !694)
!1034 = !DILocalVariable(name: "old_seq", scope: !1027, file: !3, line: 15, type: !66)
!1035 = !DILocalVariable(name: "i", scope: !1036, file: !3, line: 15, type: !66)
!1036 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 15, column: 1)
!1037 = !DILocation(line: 15, column: 1, scope: !1027)
!1038 = !DILocation(line: 15, column: 1, scope: !1036)
!1039 = !DILocation(line: 15, column: 1, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 15, column: 1)
!1041 = !DILocation(line: 15, column: 1, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 15, column: 1)
!1043 = distinct !{!1043, !1038, !1038}
!1044 = distinct !DISubprogram(name: "atomic_store_u", scope: !62, file: !62, line: 70, type: !1045, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1048)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{null, !1047, !7, !680}
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!1048 = !{!1049, !1050, !1051}
!1049 = !DILocalVariable(name: "a", arg: 1, scope: !1044, file: !62, line: 70, type: !1047)
!1050 = !DILocalVariable(name: "val", arg: 2, scope: !1044, file: !62, line: 70, type: !7)
!1051 = !DILocalVariable(name: "mo", arg: 3, scope: !1044, file: !62, line: 70, type: !680)
!1052 = !DILocation(line: 70, column: 1, scope: !1044)
!1053 = distinct !DISubprogram(name: "atomic_load_zu", scope: !62, file: !62, line: 72, type: !1054, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1058)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!66, !1056, !680}
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!1058 = !{!1059, !1060, !1061}
!1059 = !DILocalVariable(name: "a", arg: 1, scope: !1053, file: !62, line: 72, type: !1056)
!1060 = !DILocalVariable(name: "mo", arg: 2, scope: !1053, file: !62, line: 72, type: !680)
!1061 = !DILocalVariable(name: "result", scope: !1053, file: !62, line: 72, type: !66)
!1062 = !DILocation(line: 72, column: 1, scope: !1053)
!1063 = distinct !DISubprogram(name: "atomic_store_zu", scope: !62, file: !62, line: 72, type: !1064, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1067)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !1066, !66, !680}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!1067 = !{!1068, !1069, !1070}
!1068 = !DILocalVariable(name: "a", arg: 1, scope: !1063, file: !62, line: 72, type: !1066)
!1069 = !DILocalVariable(name: "val", arg: 2, scope: !1063, file: !62, line: 72, type: !66)
!1070 = !DILocalVariable(name: "mo", arg: 3, scope: !1063, file: !62, line: 72, type: !680)
!1071 = !DILocation(line: 72, column: 1, scope: !1063)
!1072 = distinct !DISubprogram(name: "atomic_fence", scope: !36, file: !36, line: 35, type: !1073, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1075)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !680}
!1075 = !{!1076}
!1076 = !DILocalVariable(name: "mo", arg: 1, scope: !1072, file: !36, line: 35, type: !680)
!1077 = !DILocation(line: 35, column: 36, scope: !1072)
!1078 = !DILocation(line: 36, column: 47, scope: !1072)
!1079 = !DILocation(line: 36, column: 24, scope: !1072)
!1080 = !DILocation(line: 36, column: 2, scope: !1072)
!1081 = !DILocation(line: 37, column: 1, scope: !1072)
!1082 = distinct !DISubprogram(name: "witness_unlock", scope: !75, file: !75, line: 318, type: !941, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1083)
!1083 = !{!1084, !1085, !1086, !1087}
!1084 = !DILocalVariable(name: "witness_tsdn", arg: 1, scope: !1082, file: !75, line: 318, type: !73)
!1085 = !DILocalVariable(name: "witness", arg: 2, scope: !1082, file: !75, line: 318, type: !87)
!1086 = !DILocalVariable(name: "witness_tsd", scope: !1082, file: !75, line: 319, type: !856)
!1087 = !DILocalVariable(name: "witnesses", scope: !1082, file: !75, line: 320, type: !858)
!1088 = !DILocation(line: 318, column: 32, scope: !1082)
!1089 = !DILocation(line: 318, column: 57, scope: !1082)
!1090 = !DILocation(line: 319, column: 2, scope: !1082)
!1091 = !DILocation(line: 319, column: 17, scope: !1082)
!1092 = !DILocation(line: 320, column: 2, scope: !1082)
!1093 = !DILocation(line: 320, column: 18, scope: !1082)
!1094 = !DILocation(line: 345, column: 1, scope: !1082)
!1095 = !DISubprogram(name: "pthread_mutex_unlock", scope: !1005, file: !1005, line: 835, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1096 = !DILocation(line: 132, column: 2, scope: !286)
!1097 = !DILocation(line: 132, column: 10, scope: !286)
!1098 = !DILocation(line: 132, column: 17, scope: !286)
!1099 = !DILocation(line: 133, column: 2, scope: !286)
!1100 = !DILocation(line: 133, column: 12, scope: !286)
!1101 = !DILocation(line: 133, column: 38, scope: !286)
!1102 = !DILocation(line: 133, column: 21, scope: !286)
!1103 = !DILocation(line: 134, column: 6, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !286, file: !3, line: 134, column: 6)
!1105 = !DILocation(line: 134, column: 13, scope: !1104)
!1106 = !DILocation(line: 134, column: 6, scope: !286)
!1107 = !DILocation(line: 135, column: 11, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 134, column: 22)
!1109 = !DILocation(line: 135, column: 19, scope: !1108)
!1110 = !DILocation(line: 135, column: 3, scope: !1108)
!1111 = !DILocation(line: 137, column: 2, scope: !286)
!1112 = !DILocation(line: 138, column: 1, scope: !286)
!1113 = distinct !DISubprogram(name: "tsdn_fetch", scope: !44, file: !44, line: 389, type: !1114, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!119}
!1116 = !DILocation(line: 390, column: 7, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1113, file: !44, line: 390, column: 6)
!1118 = !DILocation(line: 390, column: 6, scope: !1113)
!1119 = !DILocation(line: 391, column: 3, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1117, file: !44, line: 390, column: 25)
!1121 = !DILocation(line: 394, column: 18, scope: !1113)
!1122 = !DILocation(line: 394, column: 9, scope: !1113)
!1123 = !DILocation(line: 394, column: 2, scope: !1113)
!1124 = !DILocation(line: 395, column: 1, scope: !1113)
!1125 = distinct !DISubprogram(name: "tsdn_tcachep_get", scope: !44, file: !44, line: 300, type: !1126, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1128)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!235, !119}
!1128 = !{!1129, !1130}
!1129 = !DILocalVariable(name: "tsdn", arg: 1, scope: !1125, file: !44, line: 300, type: !119)
!1130 = !DILocalVariable(name: "tsd", scope: !1125, file: !44, line: 300, type: !241)
!1131 = !DILocation(line: 300, column: 1, scope: !1125)
!1132 = !DILocation(line: 300, column: 1, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1125, file: !44, line: 300, column: 1)
!1134 = !DILocation(line: 300, column: 1, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1133, file: !44, line: 300, column: 1)
!1136 = distinct !DISubprogram(name: "tsd_booted_get", scope: !1137, file: !1137, line: 33, type: !371, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1137 = !DIFile(filename: "include/jemalloc/internal/tsd_tls.h", directory: "/local-ssd/redis-zaggizygmons7rsmaxi2xan4oijpzazf-build/aidengro/spack-stage-redis-7.0.5-zaggizygmons7rsmaxi2xan4oijpzazf/spack-src/deps/jemalloc", checksumkind: CSK_MD5, checksum: "7b94df309a69d75a52041880bc8b71c7")
!1138 = !DILocation(line: 34, column: 9, scope: !1136)
!1139 = !DILocation(line: 34, column: 2, scope: !1136)
!1140 = distinct !DISubprogram(name: "tsd_tsdn", scope: !44, file: !44, line: 224, type: !1141, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1143)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!119, !241}
!1143 = !{!1144}
!1144 = !DILocalVariable(name: "tsd", arg: 1, scope: !1140, file: !44, line: 224, type: !241)
!1145 = !DILocation(line: 224, column: 17, scope: !1140)
!1146 = !DILocation(line: 225, column: 19, scope: !1140)
!1147 = !DILocation(line: 225, column: 2, scope: !1140)
!1148 = distinct !DISubprogram(name: "tsd_fetch_impl", scope: !44, file: !44, line: 345, type: !1149, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1151)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!241, !112, !112}
!1151 = !{!1152, !1153, !1154}
!1152 = !DILocalVariable(name: "init", arg: 1, scope: !1148, file: !44, line: 345, type: !112)
!1153 = !DILocalVariable(name: "minimal", arg: 2, scope: !1148, file: !44, line: 345, type: !112)
!1154 = !DILocalVariable(name: "tsd", scope: !1148, file: !44, line: 346, type: !241)
!1155 = !DILocation(line: 345, column: 21, scope: !1148)
!1156 = !DILocation(line: 345, column: 32, scope: !1148)
!1157 = !DILocation(line: 346, column: 2, scope: !1148)
!1158 = !DILocation(line: 346, column: 9, scope: !1148)
!1159 = !DILocation(line: 346, column: 23, scope: !1148)
!1160 = !DILocation(line: 346, column: 15, scope: !1148)
!1161 = !DILocation(line: 348, column: 7, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1148, file: !44, line: 348, column: 6)
!1163 = !DILocation(line: 348, column: 12, scope: !1162)
!1164 = !DILocation(line: 348, column: 15, scope: !1162)
!1165 = !DILocation(line: 348, column: 35, scope: !1162)
!1166 = !DILocation(line: 348, column: 38, scope: !1162)
!1167 = !DILocation(line: 348, column: 42, scope: !1162)
!1168 = !DILocation(line: 348, column: 6, scope: !1148)
!1169 = !DILocation(line: 349, column: 3, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1162, file: !44, line: 348, column: 51)
!1171 = !DILocation(line: 351, column: 2, scope: !1148)
!1172 = !DILocation(line: 351, column: 2, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1148, file: !44, line: 351, column: 2)
!1174 = !DILocation(line: 353, column: 6, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1148, file: !44, line: 353, column: 6)
!1176 = !DILocation(line: 353, column: 6, scope: !1148)
!1177 = !DILocation(line: 354, column: 25, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1175, file: !44, line: 353, column: 57)
!1179 = !DILocation(line: 354, column: 30, scope: !1178)
!1180 = !DILocation(line: 354, column: 10, scope: !1178)
!1181 = !DILocation(line: 354, column: 3, scope: !1178)
!1182 = !DILocation(line: 356, column: 2, scope: !1148)
!1183 = !DILocation(line: 356, column: 2, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1148, file: !44, line: 356, column: 2)
!1185 = !DILocation(line: 357, column: 18, scope: !1148)
!1186 = !DILocation(line: 357, column: 2, scope: !1148)
!1187 = !DILocation(line: 359, column: 9, scope: !1148)
!1188 = !DILocation(line: 359, column: 2, scope: !1148)
!1189 = !DILocation(line: 360, column: 1, scope: !1148)
!1190 = distinct !DISubprogram(name: "tsd_get", scope: !1137, file: !1137, line: 44, type: !1191, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1193)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!241, !112}
!1193 = !{!1194}
!1194 = !DILocalVariable(name: "init", arg: 1, scope: !1190, file: !1137, line: 44, type: !112)
!1195 = !DILocation(line: 44, column: 14, scope: !1190)
!1196 = !DILocation(line: 45, column: 10, scope: !1190)
!1197 = !DILocation(line: 45, column: 2, scope: !1190)
!1198 = distinct !DISubprogram(name: "tsd_get_allocates", scope: !1137, file: !1137, line: 38, type: !371, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1199 = !DILocation(line: 39, column: 2, scope: !1198)
!1200 = !DISubprogram(name: "tsd_fetch_slow", scope: !44, file: !44, line: 110, type: !1201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!241, !241, !112}
!1203 = distinct !DISubprogram(name: "tsd_assert_fast", scope: !44, file: !44, line: 324, type: !1204, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1206)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !241}
!1206 = !{!1207}
!1207 = !DILocalVariable(name: "tsd", arg: 1, scope: !1203, file: !44, line: 324, type: !241)
!1208 = !DILocation(line: 324, column: 24, scope: !1203)
!1209 = !DILocation(line: 330, column: 2, scope: !1203)
!1210 = !DILocation(line: 330, column: 2, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1203, file: !44, line: 330, column: 2)
!1212 = !DILocation(line: 332, column: 1, scope: !1203)
!1213 = distinct !DISubprogram(name: "tsd_tcachep_get", scope: !44, file: !44, line: 284, type: !1214, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1216)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!235, !241}
!1216 = !{!1217, !1218}
!1217 = !DILocalVariable(name: "tsd", arg: 1, scope: !1213, file: !44, line: 284, type: !241)
!1218 = !DILocalVariable(name: "state", scope: !1213, file: !44, line: 284, type: !114)
!1219 = !DILocation(line: 284, column: 1, scope: !1213)
!1220 = !DILocation(line: 284, column: 1, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1213, file: !44, line: 284, column: 1)
!1222 = distinct !DISubprogram(name: "tsd_tcachep_get_unsafe", scope: !44, file: !44, line: 265, type: !1214, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1223)
!1223 = !{!1224}
!1224 = !DILocalVariable(name: "tsd", arg: 1, scope: !1222, file: !44, line: 265, type: !241)
!1225 = !DILocation(line: 265, column: 1, scope: !1222)
