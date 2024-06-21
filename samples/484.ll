; ModuleID = 'samples/484.bc'
source_filename = "/local-ssd/mimalloc-32rhnq2fuerj63olibzpzqg3i5646tsw-build/aidengro/spack-stage-mimalloc-2.1.2-32rhnq2fuerj63olibzpzqg3i5646tsw/spack-src/src/heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mi_heap_s = type { ptr, [130 x ptr], [75 x %struct.mi_page_queue_s], ptr, i64, i32, i64, [2 x i64], %struct.mi_random_cxt_s, i64, i64, i64, ptr, i8 }
%struct.mi_page_queue_s = type { ptr, ptr, i64 }
%struct.mi_random_cxt_s = type { [16 x i32], [16 x i32], i32, i8 }
%struct.mi_tld_s = type { i64, i8, ptr, ptr, %struct.mi_segments_tld_s, %struct.mi_os_tld_s, %struct.mi_stats_s }
%struct.mi_segments_tld_s = type { [36 x %struct.mi_span_queue_s], i64, i64, i64, i64, ptr, ptr }
%struct.mi_span_queue_s = type { ptr, ptr, i64 }
%struct.mi_os_tld_s = type { i64, ptr }
%struct.mi_stats_s = type { %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_count_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s, %struct.mi_stat_counter_s }
%struct.mi_stat_count_s = type { i64, i64, i64, i64 }
%struct.mi_stat_counter_s = type { i64, i64 }
%struct.mi_memid_s = type { %union.anon, i8, i8, i8, i32 }
%union.anon = type { %struct.mi_memid_os_info }
%struct.mi_memid_os_info = type { ptr, i64 }
%struct.mi_page_s = type { i32, i32, i8, i16, i16, %union.mi_page_flags_s, i8, ptr, i32, i32, ptr, [2 x i64], i64, i64, ptr, ptr, [1 x i64] }
%union.mi_page_flags_s = type { i8 }
%struct.mi_segment_s = type { %struct.mi_memid_s, i8, i8, i64, i64, %struct.mi_commit_mask_s, %struct.mi_commit_mask_s, ptr, ptr, i64, i64, i64, i64, i64, i64, i32, i64, i64, [513 x %struct.mi_page_s] }
%struct.mi_commit_mask_s = type { [8 x i64] }
%struct.mi_visit_blocks_args_s = type { i8, ptr, ptr }
%struct.mi_heap_area_ex_s = type { %struct.mi_heap_area_s, ptr }
%struct.mi_heap_area_s = type { ptr, i64, i64, i64, i64, i64 }
%struct.mi_block_s = type { i64 }

@_mi_heap_empty = external constant %struct.mi_heap_s, align 8
@_mi_heap_default = external thread_local(initialexec) global ptr, align 8
@_mi_heap_main = external global %struct.mi_heap_s, align 8

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_collect_abandon(ptr noundef %heap) #0 {
entry:
  %heap.addr = alloca ptr, align 8
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  call void @mi_heap_collect_ex(ptr noundef %0, i32 noundef 2) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mi_heap_collect_ex(ptr noundef %heap, i32 noundef %collect) #0 {
entry:
  %heap.addr = alloca ptr, align 8
  %collect.addr = alloca i32, align 4
  %force = alloca i8, align 1
  %force_main = alloca i8, align 1
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  store i32 %collect, ptr %collect.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %call = call zeroext i1 @mi_heap_is_initialized(ptr noundef %1) #9
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 1, ptr %force) #10
  %2 = load i32, ptr %collect.addr, align 4, !tbaa !8
  %cmp1 = icmp uge i32 %2, 1
  %frombool = zext i1 %cmp1 to i8
  store i8 %frombool, ptr %force, align 1, !tbaa !9
  %3 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %4 = load i8, ptr %force, align 1, !tbaa !9, !range !11, !noundef !12
  %tobool = trunc i8 %4 to i1
  call void @_mi_deferred_free(ptr noundef %3, i1 noundef zeroext %tobool) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr %force_main) #10
  %5 = load i32, ptr %collect.addr, align 4, !tbaa !8
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end
  %call3 = call zeroext i1 @_mi_is_main_thread() #9
  br i1 %call3, label %land.lhs.true4, label %land.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %6 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %call5 = call zeroext i1 @mi_heap_is_backing(ptr noundef %6) #9
  br i1 %call5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true4
  %7 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %no_reclaim = getelementptr inbounds %struct.mi_heap_s, ptr %7, i32 0, i32 13
  %8 = load i8, ptr %no_reclaim, align 8, !tbaa !13, !range !11, !noundef !12
  %tobool6 = trunc i8 %8 to i1
  %lnot = xor i1 %tobool6, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4, %land.lhs.true, %if.end
  %9 = phi i1 [ false, %land.lhs.true4 ], [ false, %land.lhs.true ], [ false, %if.end ], [ %lnot, %land.rhs ]
  %frombool7 = zext i1 %9 to i8
  store i8 %frombool7, ptr %force_main, align 1, !tbaa !9
  %10 = load i8, ptr %force_main, align 1, !tbaa !9, !range !11, !noundef !12
  %tobool8 = trunc i8 %10 to i1
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.end
  %11 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %tld = getelementptr inbounds %struct.mi_heap_s, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %tld, align 8, !tbaa !18
  %segments = getelementptr inbounds %struct.mi_tld_s, ptr %13, i32 0, i32 4
  call void @_mi_abandoned_reclaim_all(ptr noundef %11, ptr noundef %segments) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %land.end
  %14 = load i32, ptr %collect.addr, align 4, !tbaa !8
  %cmp11 = icmp eq i32 %14, 2
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %15 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %call13 = call zeroext i1 @mi_heap_visit_pages(ptr noundef %15, ptr noundef @mi_heap_page_never_delayed_free, ptr noundef null, ptr noundef null) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  %16 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  call void @_mi_heap_delayed_free_all(ptr noundef %16) #9
  %17 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %18 = load i8, ptr %force, align 1, !tbaa !9, !range !11, !noundef !12
  %tobool15 = trunc i8 %18 to i1
  call void @_mi_heap_collect_retired(ptr noundef %17, i1 noundef zeroext %tobool15) #9
  %19 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %call16 = call zeroext i1 @mi_heap_visit_pages(ptr noundef %19, ptr noundef @mi_heap_page_collect, ptr noundef %collect.addr, ptr noundef null) #9
  %20 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %21 = load i32, ptr %collect.addr, align 4, !tbaa !8
  %cmp17 = icmp eq i32 %21, 1
  %22 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %tld18 = getelementptr inbounds %struct.mi_heap_s, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %tld18, align 8, !tbaa !18
  %segments19 = getelementptr inbounds %struct.mi_tld_s, ptr %23, i32 0, i32 4
  call void @_mi_abandoned_collect(ptr noundef %20, i1 noundef zeroext %cmp17, ptr noundef %segments19) #9
  %24 = load i8, ptr %force, align 1, !tbaa !9, !range !11, !noundef !12
  %tobool20 = trunc i8 %24 to i1
  br i1 %tobool20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end14
  %25 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %tld22 = getelementptr inbounds %struct.mi_heap_s, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %tld22, align 8, !tbaa !18
  %segments23 = getelementptr inbounds %struct.mi_tld_s, ptr %26, i32 0, i32 4
  call void @_mi_segment_thread_collect(ptr noundef %segments23) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end14
  %27 = load i8, ptr %force, align 1, !tbaa !9, !range !11, !noundef !12
  %tobool25 = trunc i8 %27 to i1
  br i1 %tobool25, label %land.lhs.true26, label %if.end32

land.lhs.true26:                                  ; preds = %if.end24
  %call27 = call zeroext i1 @_mi_is_main_thread() #9
  br i1 %call27, label %land.lhs.true28, label %if.end32

land.lhs.true28:                                  ; preds = %land.lhs.true26
  %28 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %call29 = call zeroext i1 @mi_heap_is_backing(ptr noundef %28) #9
  br i1 %call29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %land.lhs.true28
  call void @_mi_thread_data_collect() #9
  %29 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %tld31 = getelementptr inbounds %struct.mi_heap_s, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %tld31, align 8, !tbaa !18
  %stats = getelementptr inbounds %struct.mi_tld_s, ptr %30, i32 0, i32 6
  call void @_mi_arena_collect(i1 noundef zeroext true, ptr noundef %stats) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %land.lhs.true28, %land.lhs.true26, %if.end24
  call void @llvm.lifetime.end.p0(i64 1, ptr %force_main) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr %force) #10
  br label %return

return:                                           ; preds = %if.end32, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_heap_collect(ptr noundef %heap, i1 noundef zeroext %force) #0 {
entry:
  %heap.addr = alloca ptr, align 8
  %force.addr = alloca i8, align 1
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  %frombool = zext i1 %force to i8
  store i8 %frombool, ptr %force.addr, align 1, !tbaa !9
  %0 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %1 = load i8, ptr %force.addr, align 1, !tbaa !9, !range !11, !noundef !12
  %tobool = trunc i8 %1 to i1
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  call void @mi_heap_collect_ex(ptr noundef %0, i32 noundef %cond) #9
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_collect(i1 noundef zeroext %force) #0 {
entry:
  %force.addr = alloca i8, align 1
  %frombool = zext i1 %force to i8
  store i8 %frombool, ptr %force.addr, align 1, !tbaa !9
  %call = call ptr @mi_prim_get_default_heap() #9
  %0 = load i8, ptr %force.addr, align 1, !tbaa !9, !range !11, !noundef !12
  %tobool = trunc i8 %0 to i1
  call void @mi_heap_collect(ptr noundef %call, i1 noundef zeroext %tobool) #9
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @mi_prim_get_default_heap() #1 {
entry:
  %0 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %1 = load ptr, ptr %0, align 8, !tbaa !4
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_get_default() #0 {
entry:
  call void @mi_thread_init() #9
  %call = call ptr @mi_prim_get_default_heap() #9
  ret ptr %call
}

declare void @mi_thread_init() #2

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_get_backing() #0 {
entry:
  %heap = alloca ptr, align 8
  %bheap = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %heap) #10
  %call = call ptr @mi_heap_get_default() #9
  store ptr %call, ptr %heap, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bheap) #10
  %0 = load ptr, ptr %heap, align 8, !tbaa !4
  %tld = getelementptr inbounds %struct.mi_heap_s, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %tld, align 8, !tbaa !18
  %heap_backing = getelementptr inbounds %struct.mi_tld_s, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %heap_backing, align 8, !tbaa !19
  store ptr %2, ptr %bheap, align 8, !tbaa !4
  %3 = load ptr, ptr %bheap, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bheap) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %heap) #10
  ret ptr %3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_new_in_arena(i32 noundef %arena_id) #0 {
entry:
  %retval = alloca ptr, align 8
  %arena_id.addr = alloca i32, align 4
  %bheap = alloca ptr, align 8
  %heap = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %arena_id, ptr %arena_id.addr, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %bheap) #10
  %call = call ptr @mi_heap_get_backing() #9
  store ptr %call, ptr %bheap, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %heap) #10
  %0 = load ptr, ptr %bheap, align 8, !tbaa !4
  %call1 = call noalias ptr @mi_heap_malloc(ptr noundef %0, i64 noundef 3072) #9
  store ptr %call1, ptr %heap, align 8, !tbaa !4
  %1 = load ptr, ptr %heap, align 8, !tbaa !4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %heap, align 8, !tbaa !4
  call void @_mi_memcpy_aligned(ptr noundef %2, ptr noundef @_mi_heap_empty, i64 noundef 3072) #9
  %3 = load ptr, ptr %bheap, align 8, !tbaa !4
  %tld = getelementptr inbounds %struct.mi_heap_s, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %tld, align 8, !tbaa !18
  %5 = load ptr, ptr %heap, align 8, !tbaa !4
  %tld2 = getelementptr inbounds %struct.mi_heap_s, ptr %5, i32 0, i32 0
  store ptr %4, ptr %tld2, align 8, !tbaa !18
  %call3 = call i64 @_mi_thread_id() #9
  %6 = load ptr, ptr %heap, align 8, !tbaa !4
  %thread_id = getelementptr inbounds %struct.mi_heap_s, ptr %6, i32 0, i32 4
  store i64 %call3, ptr %thread_id, align 8, !tbaa !28
  %7 = load i32, ptr %arena_id.addr, align 4, !tbaa !27
  %8 = load ptr, ptr %heap, align 8, !tbaa !4
  %arena_id4 = getelementptr inbounds %struct.mi_heap_s, ptr %8, i32 0, i32 5
  store i32 %7, ptr %arena_id4, align 8, !tbaa !29
  %9 = load ptr, ptr %bheap, align 8, !tbaa !4
  %random = getelementptr inbounds %struct.mi_heap_s, ptr %9, i32 0, i32 8
  %10 = load ptr, ptr %heap, align 8, !tbaa !4
  %random5 = getelementptr inbounds %struct.mi_heap_s, ptr %10, i32 0, i32 8
  call void @_mi_random_split(ptr noundef %random, ptr noundef %random5) #9
  %11 = load ptr, ptr %heap, align 8, !tbaa !4
  %call6 = call i64 @_mi_heap_random_next(ptr noundef %11) #9
  %or = or i64 %call6, 1
  %12 = load ptr, ptr %heap, align 8, !tbaa !4
  %cookie = getelementptr inbounds %struct.mi_heap_s, ptr %12, i32 0, i32 6
  store i64 %or, ptr %cookie, align 8, !tbaa !30
  %13 = load ptr, ptr %heap, align 8, !tbaa !4
  %call7 = call i64 @_mi_heap_random_next(ptr noundef %13) #9
  %14 = load ptr, ptr %heap, align 8, !tbaa !4
  %keys = getelementptr inbounds %struct.mi_heap_s, ptr %14, i32 0, i32 7
  %arrayidx = getelementptr inbounds [2 x i64], ptr %keys, i64 0, i64 0
  store i64 %call7, ptr %arrayidx, align 8, !tbaa !31
  %15 = load ptr, ptr %heap, align 8, !tbaa !4
  %call8 = call i64 @_mi_heap_random_next(ptr noundef %15) #9
  %16 = load ptr, ptr %heap, align 8, !tbaa !4
  %keys9 = getelementptr inbounds %struct.mi_heap_s, ptr %16, i32 0, i32 7
  %arrayidx10 = getelementptr inbounds [2 x i64], ptr %keys9, i64 0, i64 1
  store i64 %call8, ptr %arrayidx10, align 8, !tbaa !31
  %17 = load ptr, ptr %heap, align 8, !tbaa !4
  %no_reclaim = getelementptr inbounds %struct.mi_heap_s, ptr %17, i32 0, i32 13
  store i8 1, ptr %no_reclaim, align 8, !tbaa !13
  %18 = load ptr, ptr %heap, align 8, !tbaa !4
  %tld11 = getelementptr inbounds %struct.mi_heap_s, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %tld11, align 8, !tbaa !18
  %heaps = getelementptr inbounds %struct.mi_tld_s, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %heaps, align 8, !tbaa !32
  %21 = load ptr, ptr %heap, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.mi_heap_s, ptr %21, i32 0, i32 12
  store ptr %20, ptr %next, align 8, !tbaa !33
  %22 = load ptr, ptr %heap, align 8, !tbaa !4
  %23 = load ptr, ptr %heap, align 8, !tbaa !4
  %tld12 = getelementptr inbounds %struct.mi_heap_s, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %tld12, align 8, !tbaa !18
  %heaps13 = getelementptr inbounds %struct.mi_tld_s, ptr %24, i32 0, i32 3
  store ptr %22, ptr %heaps13, align 8, !tbaa !32
  %25 = load ptr, ptr %heap, align 8, !tbaa !4
  store ptr %25, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %heap) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %bheap) #10
  %26 = load ptr, ptr %retval, align 8
  ret ptr %26
}

declare noalias ptr @mi_heap_malloc(ptr noundef, i64 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @_mi_memcpy_aligned(ptr noundef %dst, ptr noundef %src, i64 noundef %n) #1 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %adst = alloca ptr, align 8
  %asrc = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  store ptr %src, ptr %src.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %adst) #10
  %0 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 8) ]
  store ptr %0, ptr %adst, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %asrc) #10
  %1 = load ptr, ptr %src.addr, align 8, !tbaa !4
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  store ptr %1, ptr %asrc, align 8, !tbaa !4
  %2 = load ptr, ptr %adst, align 8, !tbaa !4
  %3 = load ptr, ptr %asrc, align 8, !tbaa !4
  %4 = load i64, ptr %n.addr, align 8, !tbaa !31
  call void @_mi_memcpy(ptr noundef %2, ptr noundef %3, i64 noundef %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %asrc) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %adst) #10
  ret void
}

declare i64 @_mi_thread_id() #2

declare void @_mi_random_split(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden i64 @_mi_heap_random_next(ptr noundef %heap) #0 {
entry:
  %heap.addr = alloca ptr, align 8
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %random = getelementptr inbounds %struct.mi_heap_s, ptr %0, i32 0, i32 8
  %call = call i64 @_mi_random_next(ptr noundef %random) #9
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_new() #0 {
entry:
  %call = call i32 @_mi_arena_id_none() #9
  %call1 = call ptr @mi_heap_new_in_arena(i32 noundef %call) #9
  ret ptr %call1
}

declare i32 @_mi_arena_id_none() #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @_mi_heap_memid_is_suitable(ptr noundef %heap, ptr noundef byval(%struct.mi_memid_s) align 8 %memid) #0 {
entry:
  %heap.addr = alloca ptr, align 8
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %arena_id = getelementptr inbounds %struct.mi_heap_s, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %arena_id, align 8, !tbaa !29
  %call = call zeroext i1 @_mi_arena_memid_is_suitable(ptr noundef byval(%struct.mi_memid_s) align 8 %memid, i32 noundef %1) #9
  ret i1 %call
}

declare zeroext i1 @_mi_arena_memid_is_suitable(ptr noundef byval(%struct.mi_memid_s) align 8, i32 noundef) #2

declare i64 @_mi_random_next(ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_destroy_pages(ptr noundef %heap) #0 {
entry:
  %heap.addr = alloca ptr, align 8
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %call = call zeroext i1 @mi_heap_visit_pages(ptr noundef %0, ptr noundef @_mi_heap_page_destroy, ptr noundef null, ptr noundef null) #9
  %1 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  call void @mi_heap_reset_pages(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mi_heap_visit_pages(ptr noundef %heap, ptr noundef %fn, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %retval = alloca i1, align 1
  %heap.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %pq = alloca ptr, align 8
  %page = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  store ptr %fn, ptr %fn.addr, align 8, !tbaa !4
  store ptr %arg1, ptr %arg1.addr, align 8, !tbaa !4
  store ptr %arg2, ptr %arg2.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %page_count = getelementptr inbounds %struct.mi_heap_s, ptr %1, i32 0, i32 9
  %2 = load i64, ptr %page_count, align 8, !tbaa !34
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  store i64 0, ptr %i, align 8, !tbaa !31
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, ptr %i, align 8, !tbaa !31
  %cmp2 = icmp ule i64 %3, 74
  br i1 %cmp2, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup11

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pq) #10
  %4 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %pages = getelementptr inbounds %struct.mi_heap_s, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %i, align 8, !tbaa !31
  %arrayidx = getelementptr inbounds [75 x %struct.mi_page_queue_s], ptr %pages, i64 0, i64 %5
  store ptr %arrayidx, ptr %pq, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #10
  %6 = load ptr, ptr %pq, align 8, !tbaa !4
  %first = getelementptr inbounds %struct.mi_page_queue_s, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %first, align 8, !tbaa !35
  store ptr %7, ptr %page, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %for.body
  %8 = load ptr, ptr %page, align 8, !tbaa !4
  %cmp3 = icmp ne ptr %8, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #10
  %9 = load ptr, ptr %page, align 8, !tbaa !4
  %next4 = getelementptr inbounds %struct.mi_page_s, ptr %9, i32 0, i32 14
  %10 = load ptr, ptr %next4, align 8, !tbaa !37
  store ptr %10, ptr %next, align 8, !tbaa !4
  %11 = load ptr, ptr %fn.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %pq, align 8, !tbaa !4
  %14 = load ptr, ptr %page, align 8, !tbaa !4
  %15 = load ptr, ptr %arg1.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %arg2.addr, align 8, !tbaa !4
  %call = call zeroext i1 %11(ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16) #9
  br i1 %call, label %if.end6, label %if.then5

if.then5:                                         ; preds = %while.body
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %while.body
  %17 = load ptr, ptr %next, align 8, !tbaa !4
  store ptr %17, ptr %page, align 8, !tbaa !4
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup7 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !llvm.loop !40

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup7

cleanup7:                                         ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %pq) #10
  %cleanup.dest9 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest9, label %cleanup11 [
    i32 0, label %cleanup.cont10
  ]

cleanup.cont10:                                   ; preds = %cleanup7
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont10
  %18 = load i64, ptr %i, align 8, !tbaa !31
  %inc = add i64 %18, 1
  store i64 %inc, ptr %i, align 8, !tbaa !31
  br label %for.cond, !llvm.loop !42

cleanup11:                                        ; preds = %cleanup7, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %cleanup.dest12 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest12, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup11
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %cleanup11, %if.then
  %19 = load i1, ptr %retval, align 1
  ret i1 %19

unreachable:                                      ; preds = %cleanup11
  unreachable
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @_mi_heap_page_destroy(ptr noundef %heap, ptr noundef %pq, ptr noundef %page, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %heap.addr = alloca ptr, align 8
  %pq.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %bsize = alloca i64, align 8
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  store ptr %pq, ptr %pq.addr, align 8, !tbaa !4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store ptr %arg1, ptr %arg1.addr, align 8, !tbaa !4
  store ptr %arg2, ptr %arg2.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %arg1.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %arg2.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %pq.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %page.addr, align 8, !tbaa !4
  call void @_mi_page_use_delayed_free(ptr noundef %4, i32 noundef 3, i1 noundef zeroext false) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %bsize) #10
  %5 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @mi_page_block_size(ptr noundef %5) #9
  store i64 %call, ptr %bsize, align 8, !tbaa !31
  %6 = load i64, ptr %bsize, align 8, !tbaa !31
  %cmp = icmp ugt i64 %6, 131072
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %7 = load i64, ptr %bsize, align 8, !tbaa !31
  %cmp1 = icmp ule i64 %7, 16777216
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  br label %if.end

if.else:                                          ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %8 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %used = getelementptr inbounds %struct.mi_page_s, ptr %8, i32 0, i32 8
  store i32 0, ptr %used, align 8, !tbaa !43
  %9 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.mi_page_s, ptr %9, i32 0, i32 14
  store ptr null, ptr %next, align 8, !tbaa !37
  %10 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %prev = getelementptr inbounds %struct.mi_page_s, ptr %10, i32 0, i32 15
  store ptr null, ptr %prev, align 8, !tbaa !44
  %11 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %tld = getelementptr inbounds %struct.mi_heap_s, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %tld, align 8, !tbaa !18
  %segments = getelementptr inbounds %struct.mi_tld_s, ptr %13, i32 0, i32 4
  call void @_mi_segment_page_free(ptr noundef %11, i1 noundef zeroext false, ptr noundef %segments) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %bsize) #10
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal void @mi_heap_reset_pages(ptr noundef %heap) #0 {
entry:
  %heap.addr = alloca ptr, align 8
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %pages_free_direct = getelementptr inbounds %struct.mi_heap_s, ptr %0, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr align 8 %pages_free_direct, i8 0, i64 1040, i1 false)
  %1 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %pages = getelementptr inbounds %struct.mi_heap_s, ptr %1, i32 0, i32 2
  call void @_mi_memcpy_aligned(ptr noundef %pages, ptr noundef getelementptr inbounds (%struct.mi_heap_s, ptr @_mi_heap_empty, i32 0, i32 2), i64 noundef 1800) #9
  %2 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %thread_delayed_free = getelementptr inbounds %struct.mi_heap_s, ptr %2, i32 0, i32 3
  store atomic i64 0, ptr %thread_delayed_free seq_cst, align 8, !tbaa !45
  %3 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %page_count = getelementptr inbounds %struct.mi_heap_s, ptr %3, i32 0, i32 9
  store i64 0, ptr %page_count, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mi_heap_destroy(ptr noundef %heap) #0 {
entry:
  %heap.addr = alloca ptr, align 8
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %call = call zeroext i1 @mi_heap_is_initialized(ptr noundef %1) #9
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end2

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %no_reclaim = getelementptr inbounds %struct.mi_heap_s, ptr %2, i32 0, i32 13
  %3 = load i8, ptr %no_reclaim, align 8, !tbaa !13, !range !11, !noundef !12
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  call void @mi_heap_delete(ptr noundef %4) #9
  br label %if.end2

if.else:                                          ; preds = %if.end
  %5 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  call void @_mi_heap_destroy_pages(ptr noundef %5) #9
  %6 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  call void @mi_heap_free(ptr noundef %6) #9
  br label %if.end2

if.end2:                                          ; preds = %if.then, %if.else, %if.then1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @mi_heap_is_initialized(ptr noundef %heap) #1 {
entry:
  %heap.addr = alloca ptr, align 8
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %0, @_mi_heap_empty
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define hidden void @mi_heap_delete(ptr noundef %heap) #0 {
entry:
  %heap.addr = alloca ptr, align 8
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %call = call zeroext i1 @mi_heap_is_initialized(ptr noundef %1) #9
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %call1 = call zeroext i1 @mi_heap_is_backing(ptr noundef %2) #9
  br i1 %call1, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %tld = getelementptr inbounds %struct.mi_heap_s, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %tld, align 8, !tbaa !18
  %heap_backing = getelementptr inbounds %struct.mi_tld_s, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %heap_backing, align 8, !tbaa !19
  %6 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  call void @mi_heap_absorb(ptr noundef %5, ptr noundef %6) #9
  br label %if.end3

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  call void @_mi_heap_collect_abandon(ptr noundef %7) #9
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %8 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  call void @mi_heap_free(ptr noundef %8) #9
  br label %return

return:                                           ; preds = %if.end3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mi_heap_free(ptr noundef %heap) #0 {
entry:
  %heap.addr = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %curr = alloca ptr, align 8
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %call = call zeroext i1 @mi_heap_is_initialized(ptr noundef %1) #9
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %call1 = call zeroext i1 @mi_heap_is_backing(ptr noundef %2) #9
  br i1 %call1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %call4 = call zeroext i1 @mi_heap_is_default(ptr noundef %3) #9
  br i1 %call4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %4 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %tld = getelementptr inbounds %struct.mi_heap_s, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %tld, align 8, !tbaa !18
  %heap_backing = getelementptr inbounds %struct.mi_tld_s, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %heap_backing, align 8, !tbaa !19
  call void @_mi_heap_set_default_direct(ptr noundef %6) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #10
  store ptr null, ptr %prev, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %curr) #10
  %7 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %tld7 = getelementptr inbounds %struct.mi_heap_s, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %tld7, align 8, !tbaa !18
  %heaps = getelementptr inbounds %struct.mi_tld_s, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %heaps, align 8, !tbaa !32
  store ptr %9, ptr %curr, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end6
  %10 = load ptr, ptr %curr, align 8, !tbaa !4
  %11 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %cmp8 = icmp ne ptr %10, %11
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load ptr, ptr %curr, align 8, !tbaa !4
  %cmp9 = icmp ne ptr %12, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp9, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load ptr, ptr %curr, align 8, !tbaa !4
  store ptr %14, ptr %prev, align 8, !tbaa !4
  %15 = load ptr, ptr %curr, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.mi_heap_s, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %next, align 8, !tbaa !33
  store ptr %16, ptr %curr, align 8, !tbaa !4
  br label %while.cond, !llvm.loop !46

while.end:                                        ; preds = %land.end
  %17 = load ptr, ptr %curr, align 8, !tbaa !4
  %18 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %cmp10 = icmp eq ptr %17, %18
  br i1 %cmp10, label %if.then11, label %if.end20

if.then11:                                        ; preds = %while.end
  %19 = load ptr, ptr %prev, align 8, !tbaa !4
  %cmp12 = icmp ne ptr %19, null
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then11
  %20 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %next14 = getelementptr inbounds %struct.mi_heap_s, ptr %20, i32 0, i32 12
  %21 = load ptr, ptr %next14, align 8, !tbaa !33
  %22 = load ptr, ptr %prev, align 8, !tbaa !4
  %next15 = getelementptr inbounds %struct.mi_heap_s, ptr %22, i32 0, i32 12
  store ptr %21, ptr %next15, align 8, !tbaa !33
  br label %if.end19

if.else:                                          ; preds = %if.then11
  %23 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %next16 = getelementptr inbounds %struct.mi_heap_s, ptr %23, i32 0, i32 12
  %24 = load ptr, ptr %next16, align 8, !tbaa !33
  %25 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %tld17 = getelementptr inbounds %struct.mi_heap_s, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %tld17, align 8, !tbaa !18
  %heaps18 = getelementptr inbounds %struct.mi_tld_s, ptr %26, i32 0, i32 3
  store ptr %24, ptr %heaps18, align 8, !tbaa !32
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then13
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %while.end
  %27 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  call void @mi_free(ptr noundef %27) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %curr) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #10
  br label %return

return:                                           ; preds = %if.end20, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_unsafe_destroy_all() #0 {
entry:
  %bheap = alloca ptr, align 8
  %curr = alloca ptr, align 8
  %next = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bheap) #10
  %call = call ptr @mi_heap_get_backing() #9
  store ptr %call, ptr %bheap, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %curr) #10
  %0 = load ptr, ptr %bheap, align 8, !tbaa !4
  %tld = getelementptr inbounds %struct.mi_heap_s, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %tld, align 8, !tbaa !18
  %heaps = getelementptr inbounds %struct.mi_tld_s, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %heaps, align 8, !tbaa !32
  store ptr %2, ptr %curr, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load ptr, ptr %curr, align 8, !tbaa !4
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #10
  %4 = load ptr, ptr %curr, align 8, !tbaa !4
  %next1 = getelementptr inbounds %struct.mi_heap_s, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %next1, align 8, !tbaa !33
  store ptr %5, ptr %next, align 8, !tbaa !4
  %6 = load ptr, ptr %curr, align 8, !tbaa !4
  %no_reclaim = getelementptr inbounds %struct.mi_heap_s, ptr %6, i32 0, i32 13
  %7 = load i8, ptr %no_reclaim, align 8, !tbaa !13, !range !11, !noundef !12
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %8 = load ptr, ptr %curr, align 8, !tbaa !4
  call void @mi_heap_destroy(ptr noundef %8) #9
  br label %if.end

if.else:                                          ; preds = %while.body
  %9 = load ptr, ptr %curr, align 8, !tbaa !4
  call void @_mi_heap_destroy_pages(ptr noundef %9) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load ptr, ptr %next, align 8, !tbaa !4
  store ptr %10, ptr %curr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #10
  br label %while.cond, !llvm.loop !47

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %curr) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %bheap) #10
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @mi_heap_is_backing(ptr noundef %heap) #1 {
entry:
  %heap.addr = alloca ptr, align 8
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %tld = getelementptr inbounds %struct.mi_heap_s, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %tld, align 8, !tbaa !18
  %heap_backing = getelementptr inbounds %struct.mi_tld_s, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %heap_backing, align 8, !tbaa !19
  %3 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %2, %3
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal void @mi_heap_absorb(ptr noundef %heap, ptr noundef %from) #0 {
entry:
  %heap.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %pq = alloca ptr, align 8
  %append = alloca ptr, align 8
  %pcount = alloca i64, align 8
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  store ptr %from, ptr %from.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %page_count = getelementptr inbounds %struct.mi_heap_s, ptr %1, i32 0, i32 9
  %2 = load i64, ptr %page_count, align 8, !tbaa !34
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %call = call zeroext i1 @_mi_heap_delayed_free_partial(ptr noundef %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  store i64 0, ptr %i, align 8, !tbaa !31
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i64, ptr %i, align 8, !tbaa !31
  %cmp2 = icmp ule i64 %4, 74
  br i1 %cmp2, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pq) #10
  %5 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %pages = getelementptr inbounds %struct.mi_heap_s, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %i, align 8, !tbaa !31
  %arrayidx = getelementptr inbounds [75 x %struct.mi_page_queue_s], ptr %pages, i64 0, i64 %6
  store ptr %arrayidx, ptr %pq, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %append) #10
  %7 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %pages3 = getelementptr inbounds %struct.mi_heap_s, ptr %7, i32 0, i32 2
  %8 = load i64, ptr %i, align 8, !tbaa !31
  %arrayidx4 = getelementptr inbounds [75 x %struct.mi_page_queue_s], ptr %pages3, i64 0, i64 %8
  store ptr %arrayidx4, ptr %append, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcount) #10
  %9 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %pq, align 8, !tbaa !4
  %11 = load ptr, ptr %append, align 8, !tbaa !4
  %call5 = call i64 @_mi_page_queue_append(ptr noundef %9, ptr noundef %10, ptr noundef %11) #9
  store i64 %call5, ptr %pcount, align 8, !tbaa !31
  %12 = load i64, ptr %pcount, align 8, !tbaa !31
  %13 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %page_count6 = getelementptr inbounds %struct.mi_heap_s, ptr %13, i32 0, i32 9
  %14 = load i64, ptr %page_count6, align 8, !tbaa !34
  %add = add i64 %14, %12
  store i64 %add, ptr %page_count6, align 8, !tbaa !34
  %15 = load i64, ptr %pcount, align 8, !tbaa !31
  %16 = load ptr, ptr %from.addr, align 8, !tbaa !4
  %page_count7 = getelementptr inbounds %struct.mi_heap_s, ptr %16, i32 0, i32 9
  %17 = load i64, ptr %page_count7, align 8, !tbaa !34
  %sub = sub i64 %17, %15
  store i64 %sub, ptr %page_count7, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcount) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %append) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %pq) #10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, ptr %i, align 8, !tbaa !31
  %inc = add i64 %18, 1
  store i64 %inc, ptr %i, align 8, !tbaa !31
  br label %for.cond, !llvm.loop !48

for.end:                                          ; preds = %for.cond.cleanup
  %19 = load ptr, ptr %from.addr, align 8, !tbaa !4
  call void @_mi_heap_delayed_free_all(ptr noundef %19) #9
  %20 = load ptr, ptr %from.addr, align 8, !tbaa !4
  call void @mi_heap_reset_pages(ptr noundef %20) #9
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_set_default(ptr noundef %heap) #0 {
entry:
  %retval = alloca ptr, align 8
  %heap.addr = alloca ptr, align 8
  %old = alloca ptr, align 8
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %call = call zeroext i1 @mi_heap_is_initialized(ptr noundef %1) #9
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #10
  %call1 = call ptr @mi_prim_get_default_heap() #9
  store ptr %call1, ptr %old, align 8, !tbaa !4
  %2 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  call void @_mi_heap_set_default_direct(ptr noundef %2) #9
  %3 = load ptr, ptr %old, align 8, !tbaa !4
  store ptr %3, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8
  ret ptr %4
}

declare void @_mi_heap_set_default_direct(ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @mi_heap_contains_block(ptr noundef %heap, ptr noundef %p) #0 {
entry:
  %retval = alloca i1, align 1
  %heap.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %call = call zeroext i1 @mi_heap_is_initialized(ptr noundef %1) #9
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %call1 = call ptr @mi_heap_of_block(ptr noundef %3) #9
  %cmp2 = icmp eq ptr %2, %call1
  store i1 %cmp2, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i1, ptr %retval, align 1
  ret i1 %4
}

; Function Attrs: nounwind uwtable
define internal ptr @mi_heap_of_block(ptr noundef %p) #0 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %segment = alloca ptr, align 8
  %valid = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %segment) #10
  %1 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %call = call ptr @_mi_ptr_segment(ptr noundef %1) #9
  store ptr %call, ptr %segment, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %valid) #10
  %2 = load ptr, ptr %segment, align 8, !tbaa !4
  %call1 = call i64 @_mi_ptr_cookie(ptr noundef %2) #9
  %3 = load ptr, ptr %segment, align 8, !tbaa !4
  %cookie = getelementptr inbounds %struct.mi_segment_s, ptr %3, i32 0, i32 12
  %4 = load i64, ptr %cookie, align 8, !tbaa !49
  %cmp2 = icmp eq i64 %call1, %4
  %frombool = zext i1 %cmp2 to i8
  store i8 %frombool, ptr %valid, align 1, !tbaa !9
  %5 = load i8, ptr %valid, align 1, !tbaa !9, !range !11, !noundef !12
  %tobool = trunc i8 %5 to i1
  %lnot = xor i1 %tobool, true
  %lnot3 = xor i1 %lnot, true
  %lnot4 = xor i1 %lnot3, true
  %lnot.ext = zext i1 %lnot4 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool5 = icmp ne i64 %expval, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = load ptr, ptr %segment, align 8, !tbaa !4
  %7 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %call8 = call ptr @_mi_segment_page_of(ptr noundef %6, ptr noundef %7) #9
  %call9 = call ptr @mi_page_heap(ptr noundef %call8) #9
  store ptr %call9, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 1, ptr %valid) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %segment) #10
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @mi_heap_check_owned(ptr noundef %heap, ptr noundef %p) #0 {
entry:
  %retval = alloca i1, align 1
  %heap.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %found = alloca i8, align 1
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %call = call zeroext i1 @mi_heap_is_initialized(ptr noundef %1) #9
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %3 = ptrtoint ptr %2 to i64
  %and = and i64 %3, 7
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1
  br label %return

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %found) #10
  store i8 0, ptr %found, align 1, !tbaa !9
  %4 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %call4 = call zeroext i1 @mi_heap_visit_pages(ptr noundef %4, ptr noundef @mi_heap_page_check_owned, ptr noundef %5, ptr noundef %found) #9
  %6 = load i8, ptr %found, align 1, !tbaa !9, !range !11, !noundef !12
  %tobool = trunc i8 %6 to i1
  store i1 %tobool, ptr %retval, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr %found) #10
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %7 = load i1, ptr %retval, align 1
  ret i1 %7
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mi_heap_page_check_owned(ptr noundef %heap, ptr noundef %pq, ptr noundef %page, ptr noundef %p, ptr noundef %vfound) #0 {
entry:
  %heap.addr = alloca ptr, align 8
  %pq.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %vfound.addr = alloca ptr, align 8
  %found = alloca ptr, align 8
  %segment = alloca ptr, align 8
  %start = alloca ptr, align 8
  %end = alloca ptr, align 8
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  store ptr %pq, ptr %pq.addr, align 8, !tbaa !4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store ptr %vfound, ptr %vfound.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %pq.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %found) #10
  %2 = load ptr, ptr %vfound.addr, align 8, !tbaa !4
  store ptr %2, ptr %found, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %segment) #10
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call ptr @_mi_page_segment(ptr noundef %3) #9
  store ptr %call, ptr %segment, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #10
  %4 = load ptr, ptr %segment, align 8, !tbaa !4
  %5 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call1 = call ptr @_mi_page_start(ptr noundef %4, ptr noundef %5, ptr noundef null) #9
  store ptr %call1, ptr %start, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #10
  %6 = load ptr, ptr %start, align 8, !tbaa !4
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %capacity = getelementptr inbounds %struct.mi_page_s, ptr %7, i32 0, i32 3
  %8 = load i16, ptr %capacity, align 2, !tbaa !53
  %conv = zext i16 %8 to i64
  %9 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call2 = call i64 @mi_page_block_size(ptr noundef %9) #9
  %mul = mul i64 %conv, %call2
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %mul
  store ptr %add.ptr, ptr %end, align 8, !tbaa !4
  %10 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %start, align 8, !tbaa !4
  %cmp = icmp uge ptr %10, %11
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %12 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %end, align 8, !tbaa !4
  %cmp4 = icmp ult ptr %12, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %14 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ]
  %15 = load ptr, ptr %found, align 8, !tbaa !4
  %frombool = zext i1 %14 to i8
  store i8 %frombool, ptr %15, align 1, !tbaa !9
  %16 = load ptr, ptr %found, align 8, !tbaa !4
  %17 = load i8, ptr %16, align 1, !tbaa !9, !range !11, !noundef !12
  %tobool = trunc i8 %17 to i1
  %lnot = xor i1 %tobool, true
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %segment) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %found) #10
  ret i1 %lnot
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @mi_check_owned(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  %call = call ptr @mi_prim_get_default_heap() #9
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %call1 = call zeroext i1 @mi_heap_check_owned(ptr noundef %call, ptr noundef %0) #9
  ret i1 %call1
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @mi_heap_visit_blocks(ptr noundef %heap, i1 noundef zeroext %visit_blocks, ptr noundef %visitor, ptr noundef %arg) #0 {
entry:
  %heap.addr = alloca ptr, align 8
  %visit_blocks.addr = alloca i8, align 1
  %visitor.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %args = alloca %struct.mi_visit_blocks_args_s, align 8
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  %frombool = zext i1 %visit_blocks to i8
  store i8 %frombool, ptr %visit_blocks.addr, align 1, !tbaa !9
  store ptr %visitor, ptr %visitor.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #10
  %visit_blocks1 = getelementptr inbounds %struct.mi_visit_blocks_args_s, ptr %args, i32 0, i32 0
  %0 = load i8, ptr %visit_blocks.addr, align 1, !tbaa !9, !range !11, !noundef !12
  %tobool = trunc i8 %0 to i1
  %frombool2 = zext i1 %tobool to i8
  store i8 %frombool2, ptr %visit_blocks1, align 8, !tbaa !54
  %visitor3 = getelementptr inbounds %struct.mi_visit_blocks_args_s, ptr %args, i32 0, i32 1
  %1 = load ptr, ptr %visitor.addr, align 8, !tbaa !4
  store ptr %1, ptr %visitor3, align 8, !tbaa !56
  %arg4 = getelementptr inbounds %struct.mi_visit_blocks_args_s, ptr %args, i32 0, i32 2
  %2 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  store ptr %2, ptr %arg4, align 8, !tbaa !57
  %3 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %call = call zeroext i1 @mi_heap_visit_areas(ptr noundef %3, ptr noundef @mi_heap_area_visitor, ptr noundef %args) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #10
  ret i1 %call
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mi_heap_visit_areas(ptr noundef %heap, ptr noundef %visitor, ptr noundef %arg) #0 {
entry:
  %retval = alloca i1, align 1
  %heap.addr = alloca ptr, align 8
  %visitor.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  store ptr %visitor, ptr %visitor.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %visitor.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %visitor.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call = call zeroext i1 @mi_heap_visit_pages(ptr noundef %1, ptr noundef @mi_heap_visit_areas_page, ptr noundef %2, ptr noundef %3) #9
  store i1 %call, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i1, ptr %retval, align 1
  ret i1 %4
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mi_heap_area_visitor(ptr noundef %heap, ptr noundef %xarea, ptr noundef %arg) #0 {
entry:
  %retval = alloca i1, align 1
  %heap.addr = alloca ptr, align 8
  %xarea.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %args = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  store ptr %xarea, ptr %xarea.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %args) #10
  %0 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  store ptr %0, ptr %args, align 8, !tbaa !4
  %1 = load ptr, ptr %args, align 8, !tbaa !4
  %visitor = getelementptr inbounds %struct.mi_visit_blocks_args_s, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %visitor, align 8, !tbaa !56
  %3 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %xarea.addr, align 8, !tbaa !4
  %area = getelementptr inbounds %struct.mi_heap_area_ex_s, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %xarea.addr, align 8, !tbaa !4
  %area1 = getelementptr inbounds %struct.mi_heap_area_ex_s, ptr %5, i32 0, i32 0
  %block_size = getelementptr inbounds %struct.mi_heap_area_s, ptr %area1, i32 0, i32 4
  %6 = load i64, ptr %block_size, align 8, !tbaa !58
  %7 = load ptr, ptr %args, align 8, !tbaa !4
  %arg2 = getelementptr inbounds %struct.mi_visit_blocks_args_s, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %arg2, align 8, !tbaa !57
  %call = call zeroext i1 %2(ptr noundef %3, ptr noundef %area, ptr noundef null, i64 noundef %6, ptr noundef %8) #9
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %args, align 8, !tbaa !4
  %visit_blocks = getelementptr inbounds %struct.mi_visit_blocks_args_s, ptr %9, i32 0, i32 0
  %10 = load i8, ptr %visit_blocks, align 8, !tbaa !54, !range !11, !noundef !12
  %tobool = trunc i8 %10 to i1
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %11 = load ptr, ptr %xarea.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %args, align 8, !tbaa !4
  %visitor4 = getelementptr inbounds %struct.mi_visit_blocks_args_s, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %visitor4, align 8, !tbaa !56
  %14 = load ptr, ptr %args, align 8, !tbaa !4
  %arg5 = getelementptr inbounds %struct.mi_visit_blocks_args_s, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %arg5, align 8, !tbaa !57
  %call6 = call zeroext i1 @mi_heap_area_visit_blocks(ptr noundef %11, ptr noundef %13, ptr noundef %15) #9
  store i1 %call6, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %args) #10
  %16 = load i1, ptr %retval, align 1
  ret i1 %16
}

declare void @_mi_deferred_free(ptr noundef, i1 noundef zeroext) #2

declare zeroext i1 @_mi_is_main_thread() #2

declare void @_mi_abandoned_reclaim_all(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mi_heap_page_never_delayed_free(ptr noundef %heap, ptr noundef %pq, ptr noundef %page, ptr noundef %arg1, ptr noundef %arg2) #0 {
entry:
  %heap.addr = alloca ptr, align 8
  %pq.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  store ptr %pq, ptr %pq.addr, align 8, !tbaa !4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store ptr %arg1, ptr %arg1.addr, align 8, !tbaa !4
  store ptr %arg2, ptr %arg2.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %arg1.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %arg2.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %pq.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %page.addr, align 8, !tbaa !4
  call void @_mi_page_use_delayed_free(ptr noundef %4, i32 noundef 3, i1 noundef zeroext false) #9
  ret i1 true
}

declare void @_mi_heap_delayed_free_all(ptr noundef) #2

declare void @_mi_heap_collect_retired(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mi_heap_page_collect(ptr noundef %heap, ptr noundef %pq, ptr noundef %page, ptr noundef %arg_collect, ptr noundef %arg2) #0 {
entry:
  %heap.addr = alloca ptr, align 8
  %pq.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %arg_collect.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %collect = alloca i32, align 4
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  store ptr %pq, ptr %pq.addr, align 8, !tbaa !4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store ptr %arg_collect, ptr %arg_collect.addr, align 8, !tbaa !4
  store ptr %arg2, ptr %arg2.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %arg2.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %collect) #10
  %2 = load ptr, ptr %arg_collect.addr, align 8, !tbaa !4
  %3 = load i32, ptr %2, align 4, !tbaa !8
  store i32 %3, ptr %collect, align 4, !tbaa !8
  %4 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %5 = load i32, ptr %collect, align 4, !tbaa !8
  %cmp = icmp uge i32 %5, 1
  call void @_mi_page_free_collect(ptr noundef %4, i1 noundef zeroext %cmp) #9
  %6 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call zeroext i1 @mi_page_all_free(ptr noundef %6) #9
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %pq.addr, align 8, !tbaa !4
  %9 = load i32, ptr %collect, align 4, !tbaa !8
  %cmp1 = icmp uge i32 %9, 1
  call void @_mi_page_free(ptr noundef %7, ptr noundef %8, i1 noundef zeroext %cmp1) #9
  br label %if.end4

if.else:                                          ; preds = %entry
  %10 = load i32, ptr %collect, align 4, !tbaa !8
  %cmp2 = icmp eq i32 %10, 2
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %11 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %pq.addr, align 8, !tbaa !4
  call void @_mi_page_abandon(ptr noundef %11, ptr noundef %12) #9
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %collect) #10
  ret i1 true
}

declare void @_mi_abandoned_collect(ptr noundef, i1 noundef zeroext, ptr noundef) #2

declare void @_mi_segment_thread_collect(ptr noundef) #2

declare void @_mi_thread_data_collect() #2

declare void @_mi_arena_collect(i1 noundef zeroext, ptr noundef) #2

declare void @_mi_page_use_delayed_free(ptr noundef, i32 noundef, i1 noundef zeroext) #2

declare void @_mi_page_free_collect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @mi_page_all_free(ptr noundef %page) #1 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %used = getelementptr inbounds %struct.mi_page_s, ptr %0, i32 0, i32 8
  %1 = load i32, ptr %used, align 8, !tbaa !43
  %cmp = icmp eq i32 %1, 0
  ret i1 %cmp
}

declare void @_mi_page_free(ptr noundef, ptr noundef, i1 noundef zeroext) #2

declare void @_mi_page_abandon(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @_mi_memcpy(ptr noundef %dst, ptr noundef %src, i64 noundef %n) #1 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8, !tbaa !4
  store ptr %src, ptr %src.addr, align 8, !tbaa !4
  store i64 %n, ptr %n.addr, align 8, !tbaa !31
  %0 = load ptr, ptr %dst.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %src.addr, align 8, !tbaa !4
  %2 = load i64, ptr %n.addr, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %2, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @mi_page_block_size(ptr noundef %page) #1 {
entry:
  %retval = alloca i64, align 8
  %page.addr = alloca ptr, align 8
  %bsize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %psize = alloca i64, align 8
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bsize) #10
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %xblock_size = getelementptr inbounds %struct.mi_page_s, ptr %0, i32 0, i32 9
  %1 = load i32, ptr %xblock_size, align 4, !tbaa !61
  %conv = zext i32 %1 to i64
  store i64 %conv, ptr %bsize, align 8, !tbaa !31
  %2 = load i64, ptr %bsize, align 8, !tbaa !31
  %cmp = icmp ult i64 %2, 2147483648
  %lnot = xor i1 %cmp, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv3 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %bsize, align 8, !tbaa !31
  store i64 %3, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %psize) #10
  %4 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call ptr @_mi_page_segment(ptr noundef %4) #9
  %5 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call4 = call ptr @_mi_segment_page_start(ptr noundef %call, ptr noundef %5, ptr noundef %psize) #9
  %6 = load i64, ptr %psize, align 8, !tbaa !31
  store i64 %6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %psize) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bsize) #10
  %7 = load i64, ptr %retval, align 8
  ret i64 %7
}

declare void @_mi_segment_page_free(ptr noundef, i1 noundef zeroext, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

declare ptr @_mi_segment_page_start(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @_mi_page_segment(ptr noundef %page) #1 {
entry:
  %page.addr = alloca ptr, align 8
  %segment = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %segment) #10
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call ptr @_mi_ptr_segment(ptr noundef %0) #9
  store ptr %call, ptr %segment, align 8, !tbaa !4
  %1 = load ptr, ptr %segment, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %segment) #10
  ret ptr %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @_mi_ptr_segment(ptr noundef %p) #1 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1 = ptrtoint ptr %0 to i64
  %sub = sub i64 %1, 1
  %and = and i64 %sub, -33554432
  %2 = inttoptr i64 %and to ptr
  ret ptr %2
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mi_heap_is_default(ptr noundef %heap) #0 {
entry:
  %heap.addr = alloca ptr, align 8
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %call = call ptr @mi_prim_get_default_heap() #9
  %cmp = icmp eq ptr %0, %call
  ret i1 %cmp
}

declare void @mi_free(ptr noundef) #2

declare zeroext i1 @_mi_heap_delayed_free_partial(ptr noundef) #2

declare i64 @_mi_page_queue_append(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @_mi_ptr_cookie(ptr noundef %p) #1 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1 = ptrtoint ptr %0 to i64
  %2 = load i64, ptr getelementptr inbounds (%struct.mi_heap_s, ptr @_mi_heap_main, i32 0, i32 6), align 8, !tbaa !30
  %xor = xor i64 %1, %2
  ret i64 %xor
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @mi_page_heap(ptr noundef %page) #1 {
entry:
  %page.addr = alloca ptr, align 8
  %atomic-temp = alloca i64, align 8
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %xheap = getelementptr inbounds %struct.mi_page_s, ptr %0, i32 0, i32 13
  %1 = load atomic i64, ptr %xheap monotonic, align 8
  store i64 %1, ptr %atomic-temp, align 8
  %2 = load i64, ptr %atomic-temp, align 8, !tbaa !31
  %3 = inttoptr i64 %2 to ptr
  ret ptr %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @_mi_segment_page_of(ptr noundef %segment, ptr noundef %p) #1 {
entry:
  %segment.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %diff = alloca i64, align 8
  %idx = alloca i64, align 8
  %slice0 = alloca ptr, align 8
  %slice = alloca ptr, align 8
  store ptr %segment, ptr %segment.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %diff) #10
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %segment.addr, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %diff, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #10
  %2 = load i64, ptr %diff, align 8, !tbaa !31
  %shr = lshr i64 %2, 16
  store i64 %shr, ptr %idx, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %slice0) #10
  %3 = load ptr, ptr %segment.addr, align 8, !tbaa !4
  %slices = getelementptr inbounds %struct.mi_segment_s, ptr %3, i32 0, i32 18
  %4 = load i64, ptr %idx, align 8, !tbaa !31
  %arrayidx = getelementptr inbounds [513 x %struct.mi_page_s], ptr %slices, i64 0, i64 %4
  store ptr %arrayidx, ptr %slice0, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %slice) #10
  %5 = load ptr, ptr %slice0, align 8, !tbaa !4
  %call = call ptr @mi_slice_first(ptr noundef %5) #9
  store ptr %call, ptr %slice, align 8, !tbaa !4
  %6 = load ptr, ptr %slice, align 8, !tbaa !4
  %call1 = call ptr @mi_slice_to_page(ptr noundef %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %slice) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %slice0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %diff) #10
  ret ptr %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @mi_slice_first(ptr noundef %slice) #1 {
entry:
  %slice.addr = alloca ptr, align 8
  %start = alloca ptr, align 8
  store ptr %slice, ptr %slice.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #10
  %0 = load ptr, ptr %slice.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %slice.addr, align 8, !tbaa !4
  %slice_offset = getelementptr inbounds %struct.mi_page_s, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %slice_offset, align 4, !tbaa !62
  %idx.ext = zext i32 %2 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.neg
  store ptr %add.ptr, ptr %start, align 8, !tbaa !4
  %3 = load ptr, ptr %start, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #10
  ret ptr %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @mi_slice_to_page(ptr noundef %s) #1 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !4
  ret ptr %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @_mi_page_start(ptr noundef %segment, ptr noundef %page, ptr noundef %page_size) #1 {
entry:
  %segment.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %page_size.addr = alloca ptr, align 8
  store ptr %segment, ptr %segment.addr, align 8, !tbaa !4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store ptr %page_size, ptr %page_size.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %segment.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %page_size.addr, align 8, !tbaa !4
  %call = call ptr @_mi_segment_page_start(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %call
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mi_heap_visit_areas_page(ptr noundef %heap, ptr noundef %pq, ptr noundef %page, ptr noundef %vfun, ptr noundef %arg) #0 {
entry:
  %heap.addr = alloca ptr, align 8
  %pq.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %vfun.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %fun = alloca ptr, align 8
  %xarea = alloca %struct.mi_heap_area_ex_s, align 8
  %bsize = alloca i64, align 8
  %ubsize = alloca i64, align 8
  store ptr %heap, ptr %heap.addr, align 8, !tbaa !4
  store ptr %pq, ptr %pq.addr, align 8, !tbaa !4
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store ptr %vfun, ptr %vfun.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %pq.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fun) #10
  %2 = load ptr, ptr %vfun.addr, align 8, !tbaa !4
  store ptr %2, ptr %fun, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 56, ptr %xarea) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %bsize) #10
  %3 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @mi_page_block_size(ptr noundef %3) #9
  store i64 %call, ptr %bsize, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %ubsize) #10
  %4 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call1 = call i64 @mi_page_usable_block_size(ptr noundef %4) #9
  store i64 %call1, ptr %ubsize, align 8, !tbaa !31
  %5 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %page2 = getelementptr inbounds %struct.mi_heap_area_ex_s, ptr %xarea, i32 0, i32 1
  store ptr %5, ptr %page2, align 8, !tbaa !63
  %6 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %reserved = getelementptr inbounds %struct.mi_page_s, ptr %6, i32 0, i32 4
  %7 = load i16, ptr %reserved, align 4, !tbaa !64
  %conv = zext i16 %7 to i64
  %8 = load i64, ptr %bsize, align 8, !tbaa !31
  %mul = mul i64 %conv, %8
  %area = getelementptr inbounds %struct.mi_heap_area_ex_s, ptr %xarea, i32 0, i32 0
  %reserved3 = getelementptr inbounds %struct.mi_heap_area_s, ptr %area, i32 0, i32 1
  store i64 %mul, ptr %reserved3, align 8, !tbaa !65
  %9 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %capacity = getelementptr inbounds %struct.mi_page_s, ptr %9, i32 0, i32 3
  %10 = load i16, ptr %capacity, align 2, !tbaa !53
  %conv4 = zext i16 %10 to i64
  %11 = load i64, ptr %bsize, align 8, !tbaa !31
  %mul5 = mul i64 %conv4, %11
  %area6 = getelementptr inbounds %struct.mi_heap_area_ex_s, ptr %xarea, i32 0, i32 0
  %committed = getelementptr inbounds %struct.mi_heap_area_s, ptr %area6, i32 0, i32 2
  store i64 %mul5, ptr %committed, align 8, !tbaa !66
  %12 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call7 = call ptr @_mi_page_segment(ptr noundef %12) #9
  %13 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call8 = call ptr @_mi_page_start(ptr noundef %call7, ptr noundef %13, ptr noundef null) #9
  %area9 = getelementptr inbounds %struct.mi_heap_area_ex_s, ptr %xarea, i32 0, i32 0
  %blocks = getelementptr inbounds %struct.mi_heap_area_s, ptr %area9, i32 0, i32 0
  store ptr %call8, ptr %blocks, align 8, !tbaa !67
  %14 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %used = getelementptr inbounds %struct.mi_page_s, ptr %14, i32 0, i32 8
  %15 = load i32, ptr %used, align 8, !tbaa !43
  %conv10 = zext i32 %15 to i64
  %area11 = getelementptr inbounds %struct.mi_heap_area_ex_s, ptr %xarea, i32 0, i32 0
  %used12 = getelementptr inbounds %struct.mi_heap_area_s, ptr %area11, i32 0, i32 3
  store i64 %conv10, ptr %used12, align 8, !tbaa !68
  %16 = load i64, ptr %ubsize, align 8, !tbaa !31
  %area13 = getelementptr inbounds %struct.mi_heap_area_ex_s, ptr %xarea, i32 0, i32 0
  %block_size = getelementptr inbounds %struct.mi_heap_area_s, ptr %area13, i32 0, i32 4
  store i64 %16, ptr %block_size, align 8, !tbaa !58
  %17 = load i64, ptr %bsize, align 8, !tbaa !31
  %area14 = getelementptr inbounds %struct.mi_heap_area_ex_s, ptr %xarea, i32 0, i32 0
  %full_block_size = getelementptr inbounds %struct.mi_heap_area_s, ptr %area14, i32 0, i32 5
  store i64 %17, ptr %full_block_size, align 8, !tbaa !69
  %18 = load ptr, ptr %fun, align 8, !tbaa !4
  %19 = load ptr, ptr %heap.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call15 = call zeroext i1 %18(ptr noundef %19, ptr noundef %xarea, ptr noundef %20) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %ubsize) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %bsize) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr %xarea) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %fun) #10
  ret i1 %call15
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @mi_page_usable_block_size(ptr noundef %page) #1 {
entry:
  %page.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %call = call i64 @mi_page_block_size(ptr noundef %0) #9
  %sub = sub i64 %call, 8
  ret i64 %sub
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mi_heap_area_visit_blocks(ptr noundef %xarea, ptr noundef %visitor, ptr noundef %arg) #0 {
entry:
  %retval = alloca i1, align 1
  %xarea.addr = alloca ptr, align 8
  %visitor.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %area = alloca ptr, align 8
  %page = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %bsize = alloca i64, align 8
  %ubsize = alloca i64, align 8
  %psize = alloca i64, align 8
  %pstart = alloca ptr, align 8
  %free_map = alloca [1024 x i64], align 16
  %block = alloca ptr, align 8
  %offset = alloca i64, align 8
  %blockidx = alloca i64, align 8
  %bitidx = alloca i64, align 8
  %bit = alloca i64, align 8
  %i = alloca i64, align 8
  %bitidx29 = alloca i64, align 8
  %bit31 = alloca i64, align 8
  %m = alloca i64, align 8
  %block44 = alloca ptr, align 8
  store ptr %xarea, ptr %xarea.addr, align 8, !tbaa !4
  store ptr %visitor, ptr %visitor.addr, align 8, !tbaa !4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %xarea.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %area) #10
  %1 = load ptr, ptr %xarea.addr, align 8, !tbaa !4
  %area1 = getelementptr inbounds %struct.mi_heap_area_ex_s, ptr %1, i32 0, i32 0
  store ptr %area1, ptr %area, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #10
  %2 = load ptr, ptr %xarea.addr, align 8, !tbaa !4
  %page2 = getelementptr inbounds %struct.mi_heap_area_ex_s, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %page2, align 8, !tbaa !63
  store ptr %3, ptr %page, align 8, !tbaa !4
  %4 = load ptr, ptr %page, align 8, !tbaa !4
  %cmp3 = icmp eq ptr %4, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %page, align 8, !tbaa !4
  call void @_mi_page_free_collect(ptr noundef %5, i1 noundef zeroext true) #9
  %6 = load ptr, ptr %page, align 8, !tbaa !4
  %used = getelementptr inbounds %struct.mi_page_s, ptr %6, i32 0, i32 8
  %7 = load i32, ptr %used, align 8, !tbaa !43
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup66

if.end8:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %bsize) #10
  %8 = load ptr, ptr %page, align 8, !tbaa !4
  %call = call i64 @mi_page_block_size(ptr noundef %8) #9
  store i64 %call, ptr %bsize, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %ubsize) #10
  %9 = load ptr, ptr %page, align 8, !tbaa !4
  %call9 = call i64 @mi_page_usable_block_size(ptr noundef %9) #9
  store i64 %call9, ptr %ubsize, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %psize) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %pstart) #10
  %10 = load ptr, ptr %page, align 8, !tbaa !4
  %call10 = call ptr @_mi_page_segment(ptr noundef %10) #9
  %11 = load ptr, ptr %page, align 8, !tbaa !4
  %call11 = call ptr @_mi_page_start(ptr noundef %call10, ptr noundef %11, ptr noundef %psize) #9
  store ptr %call11, ptr %pstart, align 8, !tbaa !4
  %12 = load ptr, ptr %page, align 8, !tbaa !4
  %capacity = getelementptr inbounds %struct.mi_page_s, ptr %12, i32 0, i32 3
  %13 = load i16, ptr %capacity, align 2, !tbaa !53
  %conv = zext i16 %13 to i32
  %cmp12 = icmp eq i32 %conv, 1
  br i1 %cmp12, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end8
  %14 = load ptr, ptr %visitor.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %page, align 8, !tbaa !4
  %call15 = call ptr @mi_page_heap(ptr noundef %15) #9
  %16 = load ptr, ptr %area, align 8, !tbaa !4
  %17 = load ptr, ptr %pstart, align 8, !tbaa !4
  %18 = load i64, ptr %ubsize, align 8, !tbaa !31
  %19 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call16 = call zeroext i1 %14(ptr noundef %call15, ptr noundef %16, ptr noundef %17, i64 noundef %18, ptr noundef %19) #9
  store i1 %call16, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup62

if.end17:                                         ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 8192, ptr %free_map) #10
  %arraydecay = getelementptr inbounds [1024 x i64], ptr %free_map, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 8192, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #10
  %20 = load ptr, ptr %page, align 8, !tbaa !4
  %free = getelementptr inbounds %struct.mi_page_s, ptr %20, i32 0, i32 7
  %21 = load ptr, ptr %free, align 8, !tbaa !70
  store ptr %21, ptr %block, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end17
  %22 = load ptr, ptr %block, align 8, !tbaa !4
  %cmp18 = icmp ne ptr %22, null
  br i1 %cmp18, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #10
  %23 = load ptr, ptr %block, align 8, !tbaa !4
  %24 = load ptr, ptr %pstart, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %23 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, ptr %offset, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %blockidx) #10
  %25 = load i64, ptr %offset, align 8, !tbaa !31
  %26 = load i64, ptr %bsize, align 8, !tbaa !31
  %div = udiv i64 %25, %26
  store i64 %div, ptr %blockidx, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitidx) #10
  %27 = load i64, ptr %blockidx, align 8, !tbaa !31
  %div20 = udiv i64 %27, 8
  store i64 %div20, ptr %bitidx, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %bit) #10
  %28 = load i64, ptr %blockidx, align 8, !tbaa !31
  %29 = load i64, ptr %bitidx, align 8, !tbaa !31
  %mul = mul i64 %29, 8
  %sub = sub i64 %28, %mul
  store i64 %sub, ptr %bit, align 8, !tbaa !31
  %30 = load i64, ptr %bit, align 8, !tbaa !31
  %shl = shl i64 1, %30
  %31 = load i64, ptr %bitidx, align 8, !tbaa !31
  %arrayidx = getelementptr inbounds [1024 x i64], ptr %free_map, i64 0, i64 %31
  %32 = load i64, ptr %arrayidx, align 8, !tbaa !31
  %or = or i64 %32, %shl
  store i64 %or, ptr %arrayidx, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(i64 8, ptr %bit) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitidx) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %blockidx) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load ptr, ptr %page, align 8, !tbaa !4
  %34 = load ptr, ptr %block, align 8, !tbaa !4
  %call21 = call ptr @mi_block_next(ptr noundef %33, ptr noundef %34) #9
  store ptr %call21, ptr %block, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !71

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  store i64 0, ptr %i, align 8, !tbaa !31
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc57, %for.end
  %35 = load i64, ptr %i, align 8, !tbaa !31
  %36 = load ptr, ptr %page, align 8, !tbaa !4
  %capacity23 = getelementptr inbounds %struct.mi_page_s, ptr %36, i32 0, i32 3
  %37 = load i16, ptr %capacity23, align 2, !tbaa !53
  %conv24 = zext i16 %37 to i64
  %cmp25 = icmp ult i64 %35, %conv24
  br i1 %cmp25, label %for.body28, label %for.cond.cleanup27

for.cond.cleanup27:                               ; preds = %for.cond22
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup58

for.body28:                                       ; preds = %for.cond22
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitidx29) #10
  %38 = load i64, ptr %i, align 8, !tbaa !31
  %div30 = udiv i64 %38, 8
  store i64 %div30, ptr %bitidx29, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %bit31) #10
  %39 = load i64, ptr %i, align 8, !tbaa !31
  %40 = load i64, ptr %bitidx29, align 8, !tbaa !31
  %mul32 = mul i64 %40, 8
  %sub33 = sub i64 %39, %mul32
  store i64 %sub33, ptr %bit31, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #10
  %41 = load i64, ptr %bitidx29, align 8, !tbaa !31
  %arrayidx34 = getelementptr inbounds [1024 x i64], ptr %free_map, i64 0, i64 %41
  %42 = load i64, ptr %arrayidx34, align 8, !tbaa !31
  store i64 %42, ptr %m, align 8, !tbaa !31
  %43 = load i64, ptr %bit31, align 8, !tbaa !31
  %cmp35 = icmp eq i64 %43, 0
  br i1 %cmp35, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body28
  %44 = load i64, ptr %m, align 8, !tbaa !31
  %cmp37 = icmp eq i64 %44, -1
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %land.lhs.true
  %45 = load i64, ptr %i, align 8, !tbaa !31
  %add = add i64 %45, 7
  store i64 %add, ptr %i, align 8, !tbaa !31
  br label %if.end51

if.else:                                          ; preds = %land.lhs.true, %for.body28
  %46 = load i64, ptr %m, align 8, !tbaa !31
  %47 = load i64, ptr %bit31, align 8, !tbaa !31
  %shl40 = shl i64 1, %47
  %and = and i64 %46, %shl40
  %cmp41 = icmp eq i64 %and, 0
  br i1 %cmp41, label %if.then43, label %if.end50

if.then43:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %block44) #10
  %48 = load ptr, ptr %pstart, align 8, !tbaa !4
  %49 = load i64, ptr %i, align 8, !tbaa !31
  %50 = load i64, ptr %bsize, align 8, !tbaa !31
  %mul45 = mul i64 %49, %50
  %add.ptr = getelementptr inbounds i8, ptr %48, i64 %mul45
  store ptr %add.ptr, ptr %block44, align 8, !tbaa !4
  %51 = load ptr, ptr %visitor.addr, align 8, !tbaa !4
  %52 = load ptr, ptr %page, align 8, !tbaa !4
  %call46 = call ptr @mi_page_heap(ptr noundef %52) #9
  %53 = load ptr, ptr %area, align 8, !tbaa !4
  %54 = load ptr, ptr %block44, align 8, !tbaa !4
  %55 = load i64, ptr %ubsize, align 8, !tbaa !31
  %56 = load ptr, ptr %arg.addr, align 8, !tbaa !4
  %call47 = call zeroext i1 %51(ptr noundef %call46, ptr noundef %53, ptr noundef %54, i64 noundef %55, ptr noundef %56) #9
  br i1 %call47, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.then43
  store i1 false, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end49:                                         ; preds = %if.then43
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then48
  call void @llvm.lifetime.end.p0(i64 8, ptr %block44) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup52 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end50

if.end50:                                         ; preds = %cleanup.cont, %if.else
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then39
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup52

cleanup52:                                        ; preds = %if.end51, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %bit31) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitidx29) #10
  %cleanup.dest55 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest55, label %cleanup58 [
    i32 0, label %cleanup.cont56
  ]

cleanup.cont56:                                   ; preds = %cleanup52
  br label %for.inc57

for.inc57:                                        ; preds = %cleanup.cont56
  %57 = load i64, ptr %i, align 8, !tbaa !31
  %inc = add i64 %57, 1
  store i64 %inc, ptr %i, align 8, !tbaa !31
  br label %for.cond22, !llvm.loop !72

cleanup58:                                        ; preds = %cleanup52, %for.cond.cleanup27
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %cleanup.dest59 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest59, label %cleanup61 [
    i32 5, label %for.end60
  ]

for.end60:                                        ; preds = %cleanup58
  store i1 true, ptr %retval, align 1
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup61

cleanup61:                                        ; preds = %for.end60, %cleanup58
  call void @llvm.lifetime.end.p0(i64 8192, ptr %free_map) #10
  br label %cleanup62

cleanup62:                                        ; preds = %cleanup61, %if.then14
  call void @llvm.lifetime.end.p0(i64 8, ptr %pstart) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %psize) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %ubsize) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %bsize) #10
  br label %cleanup66

cleanup66:                                        ; preds = %cleanup62, %if.then7, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %area) #10
  br label %return

return:                                           ; preds = %cleanup66, %if.then
  %58 = load i1, ptr %retval, align 1
  ret i1 %58
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @mi_block_next(ptr noundef %page, ptr noundef %block) #1 {
entry:
  %page.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  store ptr %page, ptr %page.addr, align 8, !tbaa !4
  store ptr %block, ptr %block.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %page.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %block.addr, align 8, !tbaa !4
  %call = call ptr @mi_block_nextx(ptr noundef %1, ptr noundef %2, ptr noundef null) #9
  ret ptr %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @mi_block_nextx(ptr noundef %null, ptr noundef %block, ptr noundef %keys) #1 {
entry:
  %null.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %keys.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %null, ptr %null.addr, align 8, !tbaa !4
  store ptr %block, ptr %block.addr, align 8, !tbaa !4
  store ptr %keys, ptr %keys.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #10
  %0 = load ptr, ptr %keys.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %null.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %block.addr, align 8, !tbaa !4
  %next1 = getelementptr inbounds %struct.mi_block_s, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %next1, align 8, !tbaa !73
  %4 = inttoptr i64 %3 to ptr
  store ptr %4, ptr %next, align 8, !tbaa !4
  %5 = load ptr, ptr %next, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #10
  ret ptr %5
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { "no-builtin-malloc" }
attributes #10 = { nounwind }

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
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"_Bool", !6, i64 0}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = !{!14, !10, i64 3064}
!14 = !{!"mi_heap_s", !5, i64 0, !6, i64 8, !6, i64 1048, !6, i64 2848, !15, i64 2856, !16, i64 2864, !15, i64 2872, !6, i64 2880, !17, i64 2896, !15, i64 3032, !15, i64 3040, !15, i64 3048, !5, i64 3056, !10, i64 3064}
!15 = !{!"long", !6, i64 0}
!16 = !{!"int", !6, i64 0}
!17 = !{!"mi_random_cxt_s", !6, i64 0, !6, i64 64, !16, i64 128, !10, i64 132}
!18 = !{!14, !5, i64 0}
!19 = !{!20, !5, i64 16}
!20 = !{!"mi_tld_s", !21, i64 0, !10, i64 8, !5, i64 16, !5, i64 24, !22, i64 32, !23, i64 944, !24, i64 960}
!21 = !{!"long long", !6, i64 0}
!22 = !{!"mi_segments_tld_s", !6, i64 0, !15, i64 864, !15, i64 872, !15, i64 880, !15, i64 888, !5, i64 896, !5, i64 904}
!23 = !{!"mi_os_tld_s", !15, i64 0, !5, i64 8}
!24 = !{!"mi_stats_s", !25, i64 0, !25, i64 32, !25, i64 64, !25, i64 96, !25, i64 128, !25, i64 160, !25, i64 192, !25, i64 224, !25, i64 256, !25, i64 288, !25, i64 320, !25, i64 352, !25, i64 384, !25, i64 416, !25, i64 448, !26, i64 480, !26, i64 496, !26, i64 512, !26, i64 528, !26, i64 544, !26, i64 560, !26, i64 576, !26, i64 592, !26, i64 608, !26, i64 624}
!25 = !{!"mi_stat_count_s", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!26 = !{!"mi_stat_counter_s", !15, i64 0, !15, i64 8}
!27 = !{!16, !16, i64 0}
!28 = !{!14, !15, i64 2856}
!29 = !{!14, !16, i64 2864}
!30 = !{!14, !15, i64 2872}
!31 = !{!15, !15, i64 0}
!32 = !{!20, !5, i64 24}
!33 = !{!14, !5, i64 3056}
!34 = !{!14, !15, i64 3032}
!35 = !{!36, !5, i64 0}
!36 = !{!"mi_page_queue_s", !5, i64 0, !5, i64 8, !15, i64 16}
!37 = !{!38, !5, i64 72}
!38 = !{!"mi_page_s", !16, i64 0, !16, i64 4, !6, i64 8, !6, i64 8, !39, i64 10, !39, i64 12, !6, i64 14, !6, i64 15, !6, i64 15, !5, i64 16, !16, i64 24, !16, i64 28, !5, i64 32, !6, i64 40, !6, i64 56, !6, i64 64, !5, i64 72, !5, i64 80, !6, i64 88}
!39 = !{!"short", !6, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = distinct !{!42, !41}
!43 = !{!38, !16, i64 24}
!44 = !{!38, !5, i64 80}
!45 = !{!14, !6, i64 2848}
!46 = distinct !{!46, !41}
!47 = distinct !{!47, !41}
!48 = distinct !{!48, !41}
!49 = !{!50, !15, i64 216}
!50 = !{!"mi_segment_s", !51, i64 0, !10, i64 24, !10, i64 25, !15, i64 32, !15, i64 40, !52, i64 48, !52, i64 112, !6, i64 176, !5, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !6, i64 240, !15, i64 248, !6, i64 256, !6, i64 264}
!51 = !{!"mi_memid_s", !6, i64 0, !10, i64 16, !10, i64 17, !10, i64 18, !6, i64 20}
!52 = !{!"mi_commit_mask_s", !6, i64 0}
!53 = !{!38, !39, i64 10}
!54 = !{!55, !10, i64 0}
!55 = !{!"mi_visit_blocks_args_s", !10, i64 0, !5, i64 8, !5, i64 16}
!56 = !{!55, !5, i64 8}
!57 = !{!55, !5, i64 16}
!58 = !{!59, !15, i64 32}
!59 = !{!"mi_heap_area_ex_s", !60, i64 0, !5, i64 48}
!60 = !{!"mi_heap_area_s", !5, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40}
!61 = !{!38, !16, i64 28}
!62 = !{!38, !16, i64 4}
!63 = !{!59, !5, i64 48}
!64 = !{!38, !39, i64 12}
!65 = !{!59, !15, i64 8}
!66 = !{!59, !15, i64 16}
!67 = !{!59, !5, i64 0}
!68 = !{!59, !15, i64 24}
!69 = !{!59, !15, i64 40}
!70 = !{!38, !5, i64 16}
!71 = distinct !{!71, !41}
!72 = distinct !{!72, !41}
!73 = !{!74, !15, i64 0}
!74 = !{!"mi_block_s", !15, i64 0}
