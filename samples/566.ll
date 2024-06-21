; ModuleID = 'samples/566.bc'
source_filename = "src/tsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atomic_u8_t = type { i8 }
%struct.rtree_ctx_s = type { [16 x %struct.rtree_ctx_cache_elm_s], [8 x %struct.rtree_ctx_cache_elm_s] }
%struct.rtree_ctx_cache_elm_s = type { i64, ptr }
%struct.tcache_s = type { i64, %struct.ticker_t, [36 x %struct.cache_bin_s], %struct.anon, %struct.anon.0, i8, %struct.cache_bin_array_descriptor_s, ptr, i32, [36 x i8], [196 x %struct.cache_bin_s] }
%struct.ticker_t = type { i32, i32 }
%struct.cache_bin_s = type { i32, i32, %struct.cache_bin_stats_s, ptr }
%struct.cache_bin_stats_s = type { i64 }
%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { ptr, ptr }
%struct.cache_bin_array_descriptor_s = type { %struct.anon.1, ptr, ptr }
%struct.anon.1 = type { ptr, ptr }
%struct.witness_tsd_s = type { %struct.witness_list_t, i8 }
%struct.witness_list_t = type { ptr }
%struct.atomic_u32_t = type { i32 }
%struct.malloc_mutex_s = type { %union.anon }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.mutex_prof_data_t, %union.pthread_mutex_t, %struct.atomic_b_t }
%struct.mutex_prof_data_t = type { %struct.nstime_t, %struct.nstime_t, i64, i64, i32, %struct.atomic_u32_t, i64, ptr, i64 }
%struct.nstime_t = type { i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.atomic_b_t = type { i8 }
%struct.tsd_list_t = type { ptr }
%struct.tsd_s = type { %struct.atomic_u8_t, i8, i8, i8, i32, i64, i64, i64, i64, ptr, %struct.rtree_ctx_s, ptr, ptr, ptr, %struct.tsd_binshards_s, %struct.tcache_s, %struct.witness_tsd_s }
%struct.tsd_binshards_s = type { [36 x i8] }
%struct.tsdn_s = type { %struct.tsd_s }

@je_tsd_tls = hidden thread_local global { %struct.atomic_u8_t, i8, i8, i8, i32, i64, i64, i64, i64, ptr, %struct.rtree_ctx_s, ptr, ptr, ptr, { <{ i8, [35 x i8] }> }, %struct.tcache_s, %struct.witness_tsd_s } { %struct.atomic_u8_t { i8 6 }, i8 0, i8 0, i8 0, i32 0, i64 0, i64 0, i64 0, i64 0, ptr null, %struct.rtree_ctx_s zeroinitializer, ptr null, ptr null, ptr null, { <{ i8, [35 x i8] }> } { <{ i8, [35 x i8] }> <{ i8 -1, [35 x i8] zeroinitializer }> }, %struct.tcache_s zeroinitializer, %struct.witness_tsd_s zeroinitializer }, align 8, !dbg !0
@je_tsd_booted = hidden global i8 0, align 1, !dbg !634
@tsd_global_slow_count = internal global %struct.atomic_u32_t zeroinitializer, align 4, !dbg !655
@cleanups = internal global [2 x ptr] zeroinitializer, align 16, !dbg !643
@ncleanups = internal global i32 0, align 4, !dbg !641
@tsd_nominal_tsds_lock = internal global %struct.malloc_mutex_s zeroinitializer, align 8, !dbg !653
@.str = private unnamed_addr constant [22 x i8] c"tsd_nominal_tsds_lock\00", align 1, !dbg !636
@tsd_nominal_tsds = internal global %struct.tsd_list_t zeroinitializer, align 8, !dbg !663
@je_tsd_tsd = hidden global i32 0, align 4, !dbg !650
@je_malloc_slow = external global i8, align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"<jemalloc>: Error setting tsd.\0A\00", align 1, !dbg !657
@je_opt_abort = external global i8, align 1

; Function Attrs: nounwind uwtable
define hidden void @je_tsd_global_slow_inc(ptr noundef %tsdn) #0 !dbg !676 {
entry:
  %tsdn.addr = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !680, metadata !DIExpression()), !dbg !685
  %call = call i32 @atomic_fetch_add_u32(ptr noundef @tsd_global_slow_count, i32 noundef 1, i32 noundef 0), !dbg !686
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !687, !tbaa !681
  call void @tsd_force_recompute(ptr noundef %0), !dbg !688
  ret void, !dbg !689
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @atomic_fetch_add_u32(ptr noundef %a, i32 noundef %val, i32 noundef %mo) #1 !dbg !690 {
entry:
  %a.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %mo.addr = alloca i32, align 4
  %.atomictmp = alloca i32, align 4
  %atomic-temp = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !696, metadata !DIExpression()), !dbg !699
  store i32 %val, ptr %val.addr, align 4, !tbaa !700
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !697, metadata !DIExpression()), !dbg !699
  store i32 %mo, ptr %mo.addr, align 4, !tbaa !702
  tail call void @llvm.dbg.declare(metadata ptr %mo.addr, metadata !698, metadata !DIExpression()), !dbg !699
  %0 = load ptr, ptr %a.addr, align 8, !dbg !699, !tbaa !681
  %repr = getelementptr inbounds %struct.atomic_u32_t, ptr %0, i32 0, i32 0, !dbg !699
  %1 = load i32, ptr %mo.addr, align 4, !dbg !699, !tbaa !702
  %call = call i32 @atomic_enum_to_builtin(i32 noundef %1), !dbg !699
  %2 = load i32, ptr %val.addr, align 4, !dbg !699, !tbaa !700
  store i32 %2, ptr %.atomictmp, align 4, !dbg !699, !tbaa !700
  switch i32 %call, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 3, label %release
    i32 4, label %acqrel
    i32 5, label %seqcst
  ], !dbg !699

monotonic:                                        ; preds = %entry
  %3 = load i32, ptr %.atomictmp, align 4, !dbg !699
  %4 = atomicrmw add ptr %repr, i32 %3 monotonic, align 4, !dbg !699
  store i32 %4, ptr %atomic-temp, align 4, !dbg !699
  br label %atomic.continue, !dbg !699

acquire:                                          ; preds = %entry, %entry
  %5 = load i32, ptr %.atomictmp, align 4, !dbg !699
  %6 = atomicrmw add ptr %repr, i32 %5 acquire, align 4, !dbg !699
  store i32 %6, ptr %atomic-temp, align 4, !dbg !699
  br label %atomic.continue, !dbg !699

release:                                          ; preds = %entry
  %7 = load i32, ptr %.atomictmp, align 4, !dbg !699
  %8 = atomicrmw add ptr %repr, i32 %7 release, align 4, !dbg !699
  store i32 %8, ptr %atomic-temp, align 4, !dbg !699
  br label %atomic.continue, !dbg !699

acqrel:                                           ; preds = %entry
  %9 = load i32, ptr %.atomictmp, align 4, !dbg !699
  %10 = atomicrmw add ptr %repr, i32 %9 acq_rel, align 4, !dbg !699
  store i32 %10, ptr %atomic-temp, align 4, !dbg !699
  br label %atomic.continue, !dbg !699

seqcst:                                           ; preds = %entry
  %11 = load i32, ptr %.atomictmp, align 4, !dbg !699
  %12 = atomicrmw add ptr %repr, i32 %11 seq_cst, align 4, !dbg !699
  store i32 %12, ptr %atomic-temp, align 4, !dbg !699
  br label %atomic.continue, !dbg !699

atomic.continue:                                  ; preds = %seqcst, %acqrel, %release, %acquire, %monotonic
  %13 = load i32, ptr %atomic-temp, align 4, !dbg !699, !tbaa !700
  ret i32 %13, !dbg !699
}

; Function Attrs: nounwind uwtable
define internal void @tsd_force_recompute(ptr noundef %tsdn) #0 !dbg !703 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %remote_tsd = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !705, metadata !DIExpression()), !dbg !707
  call void @atomic_fence(i32 noundef 2), !dbg !708
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !709, !tbaa !681
  call void @malloc_mutex_lock(ptr noundef %0, ptr noundef @tsd_nominal_tsds_lock), !dbg !710
  call void @llvm.lifetime.start.p0(i64 8, ptr %remote_tsd) #10, !dbg !711
  tail call void @llvm.dbg.declare(metadata ptr %remote_tsd, metadata !706, metadata !DIExpression()), !dbg !712
  %1 = load ptr, ptr @tsd_nominal_tsds, align 8, !dbg !713, !tbaa !715
  store ptr %1, ptr %remote_tsd, align 8, !dbg !713, !tbaa !681
  br label %for.cond, !dbg !713

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load ptr, ptr %remote_tsd, align 8, !dbg !717, !tbaa !681
  %cmp = icmp ne ptr %2, null, !dbg !717
  br i1 %cmp, label %for.body, label %for.end, !dbg !713

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !719

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !721

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !721

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %remote_tsd, align 8, !dbg !723, !tbaa !681
  %state = getelementptr inbounds %struct.tsd_s, ptr %3, i32 0, i32 0, !dbg !724
  call void @atomic_store_u8(ptr noundef %state, i8 noundef zeroext 2, i32 noundef 0), !dbg !725
  br label %for.inc, !dbg !726

for.inc:                                          ; preds = %do.end
  %4 = load ptr, ptr %remote_tsd, align 8, !dbg !717, !tbaa !681
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache = getelementptr inbounds %struct.tsd_s, ptr %4, i32 0, i32 15, !dbg !717
  %tsd_link = getelementptr inbounds %struct.tcache_s, ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache, i32 0, i32 4, !dbg !717
  %qre_next = getelementptr inbounds %struct.anon.0, ptr %tsd_link, i32 0, i32 0, !dbg !717
  %5 = load ptr, ptr %qre_next, align 8, !dbg !717, !tbaa !727
  %6 = load ptr, ptr @tsd_nominal_tsds, align 8, !dbg !717, !tbaa !715
  %cmp1 = icmp ne ptr %5, %6, !dbg !717
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !717

cond.true:                                        ; preds = %for.inc
  %7 = load ptr, ptr %remote_tsd, align 8, !dbg !717, !tbaa !681
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache2 = getelementptr inbounds %struct.tsd_s, ptr %7, i32 0, i32 15, !dbg !717
  %tsd_link3 = getelementptr inbounds %struct.tcache_s, ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache2, i32 0, i32 4, !dbg !717
  %qre_next4 = getelementptr inbounds %struct.anon.0, ptr %tsd_link3, i32 0, i32 0, !dbg !717
  %8 = load ptr, ptr %qre_next4, align 8, !dbg !717, !tbaa !727
  br label %cond.end, !dbg !717

cond.false:                                       ; preds = %for.inc
  br label %cond.end, !dbg !717

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ null, %cond.false ], !dbg !717
  store ptr %cond, ptr %remote_tsd, align 8, !dbg !717, !tbaa !681
  br label %for.cond, !dbg !717, !llvm.loop !739

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %tsdn.addr, align 8, !dbg !742, !tbaa !681
  call void @malloc_mutex_unlock(ptr noundef %9, ptr noundef @tsd_nominal_tsds_lock), !dbg !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %remote_tsd) #10, !dbg !744
  ret void, !dbg !744
}

; Function Attrs: nounwind uwtable
define hidden void @je_tsd_global_slow_dec(ptr noundef %tsdn) #0 !dbg !745 {
entry:
  %tsdn.addr = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !747, metadata !DIExpression()), !dbg !748
  %call = call i32 @atomic_fetch_sub_u32(ptr noundef @tsd_global_slow_count, i32 noundef 1, i32 noundef 0), !dbg !749
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !750, !tbaa !681
  call void @tsd_force_recompute(ptr noundef %0), !dbg !751
  ret void, !dbg !752
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @atomic_fetch_sub_u32(ptr noundef %a, i32 noundef %val, i32 noundef %mo) #1 !dbg !753 {
entry:
  %a.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %mo.addr = alloca i32, align 4
  %.atomictmp = alloca i32, align 4
  %atomic-temp = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !755, metadata !DIExpression()), !dbg !758
  store i32 %val, ptr %val.addr, align 4, !tbaa !700
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !756, metadata !DIExpression()), !dbg !758
  store i32 %mo, ptr %mo.addr, align 4, !tbaa !702
  tail call void @llvm.dbg.declare(metadata ptr %mo.addr, metadata !757, metadata !DIExpression()), !dbg !758
  %0 = load ptr, ptr %a.addr, align 8, !dbg !758, !tbaa !681
  %repr = getelementptr inbounds %struct.atomic_u32_t, ptr %0, i32 0, i32 0, !dbg !758
  %1 = load i32, ptr %mo.addr, align 4, !dbg !758, !tbaa !702
  %call = call i32 @atomic_enum_to_builtin(i32 noundef %1), !dbg !758
  %2 = load i32, ptr %val.addr, align 4, !dbg !758, !tbaa !700
  store i32 %2, ptr %.atomictmp, align 4, !dbg !758, !tbaa !700
  switch i32 %call, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 3, label %release
    i32 4, label %acqrel
    i32 5, label %seqcst
  ], !dbg !758

monotonic:                                        ; preds = %entry
  %3 = load i32, ptr %.atomictmp, align 4, !dbg !758
  %4 = atomicrmw sub ptr %repr, i32 %3 monotonic, align 4, !dbg !758
  store i32 %4, ptr %atomic-temp, align 4, !dbg !758
  br label %atomic.continue, !dbg !758

acquire:                                          ; preds = %entry, %entry
  %5 = load i32, ptr %.atomictmp, align 4, !dbg !758
  %6 = atomicrmw sub ptr %repr, i32 %5 acquire, align 4, !dbg !758
  store i32 %6, ptr %atomic-temp, align 4, !dbg !758
  br label %atomic.continue, !dbg !758

release:                                          ; preds = %entry
  %7 = load i32, ptr %.atomictmp, align 4, !dbg !758
  %8 = atomicrmw sub ptr %repr, i32 %7 release, align 4, !dbg !758
  store i32 %8, ptr %atomic-temp, align 4, !dbg !758
  br label %atomic.continue, !dbg !758

acqrel:                                           ; preds = %entry
  %9 = load i32, ptr %.atomictmp, align 4, !dbg !758
  %10 = atomicrmw sub ptr %repr, i32 %9 acq_rel, align 4, !dbg !758
  store i32 %10, ptr %atomic-temp, align 4, !dbg !758
  br label %atomic.continue, !dbg !758

seqcst:                                           ; preds = %entry
  %11 = load i32, ptr %.atomictmp, align 4, !dbg !758
  %12 = atomicrmw sub ptr %repr, i32 %11 seq_cst, align 4, !dbg !758
  store i32 %12, ptr %atomic-temp, align 4, !dbg !758
  br label %atomic.continue, !dbg !758

atomic.continue:                                  ; preds = %seqcst, %acqrel, %release, %acquire, %monotonic
  %13 = load i32, ptr %atomic-temp, align 4, !dbg !758, !tbaa !700
  ret i32 %13, !dbg !758
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @je_tsd_global_slow() #0 !dbg !759 {
entry:
  %call = call i32 @atomic_load_u32(ptr noundef @tsd_global_slow_count, i32 noundef 0), !dbg !760
  %cmp = icmp ugt i32 %call, 0, !dbg !761
  ret i1 %cmp, !dbg !762
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @atomic_load_u32(ptr noundef %a, i32 noundef %mo) #1 !dbg !763 {
entry:
  %a.addr = alloca ptr, align 8
  %mo.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !769, metadata !DIExpression()), !dbg !772
  store i32 %mo, ptr %mo.addr, align 4, !tbaa !702
  tail call void @llvm.dbg.declare(metadata ptr %mo.addr, metadata !770, metadata !DIExpression()), !dbg !772
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #10, !dbg !772
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !771, metadata !DIExpression()), !dbg !772
  %0 = load ptr, ptr %a.addr, align 8, !dbg !772, !tbaa !681
  %repr = getelementptr inbounds %struct.atomic_u32_t, ptr %0, i32 0, i32 0, !dbg !772
  %1 = load i32, ptr %mo.addr, align 4, !dbg !772, !tbaa !702
  %call = call i32 @atomic_enum_to_builtin(i32 noundef %1), !dbg !772
  switch i32 %call, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 5, label %seqcst
  ], !dbg !772

monotonic:                                        ; preds = %entry
  %2 = load atomic i32, ptr %repr monotonic, align 4, !dbg !772
  store i32 %2, ptr %result, align 4, !dbg !772
  br label %atomic.continue, !dbg !772

acquire:                                          ; preds = %entry, %entry
  %3 = load atomic i32, ptr %repr acquire, align 4, !dbg !772
  store i32 %3, ptr %result, align 4, !dbg !772
  br label %atomic.continue, !dbg !772

seqcst:                                           ; preds = %entry
  %4 = load atomic i32, ptr %repr seq_cst, align 4, !dbg !772
  store i32 %4, ptr %result, align 4, !dbg !772
  br label %atomic.continue, !dbg !772

atomic.continue:                                  ; preds = %seqcst, %acquire, %monotonic
  %5 = load i32, ptr %result, align 4, !dbg !772, !tbaa !700
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #10, !dbg !772
  ret i32 %5, !dbg !772
}

; Function Attrs: nounwind uwtable
define hidden void @je_tsd_slow_update(ptr noundef %tsd) #0 !dbg !773 {
entry:
  %tsd.addr = alloca ptr, align 8
  %old_state = alloca i8, align 1
  %new_state = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !777, metadata !DIExpression()), !dbg !781
  call void @llvm.lifetime.start.p0(i64 1, ptr %old_state) #10, !dbg !782
  tail call void @llvm.dbg.declare(metadata ptr %old_state, metadata !778, metadata !DIExpression()), !dbg !783
  br label %do.body, !dbg !784

do.body:                                          ; preds = %do.cond, %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %new_state) #10, !dbg !785
  tail call void @llvm.dbg.declare(metadata ptr %new_state, metadata !779, metadata !DIExpression()), !dbg !786
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !787, !tbaa !681
  %call = call zeroext i8 @tsd_state_compute(ptr noundef %0), !dbg !788
  store i8 %call, ptr %new_state, align 1, !dbg !786, !tbaa !702
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !789, !tbaa !681
  %state = getelementptr inbounds %struct.tsd_s, ptr %1, i32 0, i32 0, !dbg !790
  %2 = load i8, ptr %new_state, align 1, !dbg !791, !tbaa !702
  %call1 = call zeroext i8 @atomic_exchange_u8(ptr noundef %state, i8 noundef zeroext %2, i32 noundef 1), !dbg !792
  store i8 %call1, ptr %old_state, align 1, !dbg !793, !tbaa !702
  call void @llvm.lifetime.end.p0(i64 1, ptr %new_state) #10, !dbg !794
  br label %do.cond, !dbg !795

do.cond:                                          ; preds = %do.body
  %3 = load i8, ptr %old_state, align 1, !dbg !796, !tbaa !702
  %conv = zext i8 %3 to i32, !dbg !796
  %cmp = icmp eq i32 %conv, 2, !dbg !797
  br i1 %cmp, label %do.body, label %do.end, !dbg !795, !llvm.loop !798

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 1, ptr %old_state) #10, !dbg !800
  ret void, !dbg !800
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @tsd_state_compute(ptr noundef %tsd) #0 !dbg !801 {
entry:
  %retval = alloca i8, align 1
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !805, metadata !DIExpression()), !dbg !806
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !807, !tbaa !681
  %call = call zeroext i1 @tsd_nominal(ptr noundef %0), !dbg !809
  br i1 %call, label %if.end, label %if.then, !dbg !810

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !811, !tbaa !681
  %call1 = call zeroext i8 @tsd_state_get(ptr noundef %1), !dbg !813
  store i8 %call1, ptr %retval, align 1, !dbg !814
  br label %return, !dbg !814

if.end:                                           ; preds = %entry
  %2 = load i8, ptr @je_malloc_slow, align 1, !dbg !815, !tbaa !817, !range !818, !noundef !819
  %tobool = trunc i8 %2 to i1, !dbg !815
  br i1 %tobool, label %if.then5, label %lor.lhs.false, !dbg !820

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %tsd.addr, align 8, !dbg !821, !tbaa !681
  %call2 = call zeroext i1 @tsd_local_slow(ptr noundef %3), !dbg !822
  br i1 %call2, label %if.then5, label %lor.lhs.false3, !dbg !823

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = call zeroext i1 @je_tsd_global_slow(), !dbg !824
  br i1 %call4, label %if.then5, label %if.else, !dbg !825

if.then5:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.end
  store i8 1, ptr %retval, align 1, !dbg !826
  br label %return, !dbg !826

if.else:                                          ; preds = %lor.lhs.false3
  store i8 0, ptr %retval, align 1, !dbg !828
  br label %return, !dbg !828

return:                                           ; preds = %if.else, %if.then5, %if.then
  %4 = load i8, ptr %retval, align 1, !dbg !830
  ret i8 %4, !dbg !830
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @atomic_exchange_u8(ptr noundef %a, i8 noundef zeroext %val, i32 noundef %mo) #1 !dbg !831 {
entry:
  %a.addr = alloca ptr, align 8
  %val.addr = alloca i8, align 1
  %mo.addr = alloca i32, align 4
  %result = alloca i8, align 1
  store ptr %a, ptr %a.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !836, metadata !DIExpression()), !dbg !840
  store i8 %val, ptr %val.addr, align 1, !tbaa !702
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !837, metadata !DIExpression()), !dbg !840
  store i32 %mo, ptr %mo.addr, align 4, !tbaa !702
  tail call void @llvm.dbg.declare(metadata ptr %mo.addr, metadata !838, metadata !DIExpression()), !dbg !840
  call void @llvm.lifetime.start.p0(i64 1, ptr %result) #10, !dbg !840
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !839, metadata !DIExpression()), !dbg !840
  %0 = load ptr, ptr %a.addr, align 8, !dbg !840, !tbaa !681
  %repr = getelementptr inbounds %struct.atomic_u8_t, ptr %0, i32 0, i32 0, !dbg !840
  %1 = load i32, ptr %mo.addr, align 4, !dbg !840, !tbaa !702
  %call = call i32 @atomic_enum_to_builtin(i32 noundef %1), !dbg !840
  switch i32 %call, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 3, label %release
    i32 4, label %acqrel
    i32 5, label %seqcst
  ], !dbg !840

monotonic:                                        ; preds = %entry
  %2 = load i8, ptr %val.addr, align 1, !dbg !840
  %3 = atomicrmw xchg ptr %repr, i8 %2 monotonic, align 1, !dbg !840
  store i8 %3, ptr %result, align 1, !dbg !840
  br label %atomic.continue, !dbg !840

acquire:                                          ; preds = %entry, %entry
  %4 = load i8, ptr %val.addr, align 1, !dbg !840
  %5 = atomicrmw xchg ptr %repr, i8 %4 acquire, align 1, !dbg !840
  store i8 %5, ptr %result, align 1, !dbg !840
  br label %atomic.continue, !dbg !840

release:                                          ; preds = %entry
  %6 = load i8, ptr %val.addr, align 1, !dbg !840
  %7 = atomicrmw xchg ptr %repr, i8 %6 release, align 1, !dbg !840
  store i8 %7, ptr %result, align 1, !dbg !840
  br label %atomic.continue, !dbg !840

acqrel:                                           ; preds = %entry
  %8 = load i8, ptr %val.addr, align 1, !dbg !840
  %9 = atomicrmw xchg ptr %repr, i8 %8 acq_rel, align 1, !dbg !840
  store i8 %9, ptr %result, align 1, !dbg !840
  br label %atomic.continue, !dbg !840

seqcst:                                           ; preds = %entry
  %10 = load i8, ptr %val.addr, align 1, !dbg !840
  %11 = atomicrmw xchg ptr %repr, i8 %10 seq_cst, align 1, !dbg !840
  store i8 %11, ptr %result, align 1, !dbg !840
  br label %atomic.continue, !dbg !840

atomic.continue:                                  ; preds = %seqcst, %acqrel, %release, %acquire, %monotonic
  %12 = load i8, ptr %result, align 1, !dbg !840, !tbaa !702
  call void @llvm.lifetime.end.p0(i64 1, ptr %result) #10, !dbg !840
  ret i8 %12, !dbg !840
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define hidden void @je_tsd_state_set(ptr noundef %tsd, i8 noundef zeroext %new_state) #0 !dbg !841 {
entry:
  %tsd.addr = alloca ptr, align 8
  %new_state.addr = alloca i8, align 1
  %old_state = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !845, metadata !DIExpression()), !dbg !848
  store i8 %new_state, ptr %new_state.addr, align 1, !tbaa !702
  tail call void @llvm.dbg.declare(metadata ptr %new_state.addr, metadata !846, metadata !DIExpression()), !dbg !849
  br label %do.body, !dbg !850

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !851

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 1, ptr %old_state) #10, !dbg !853
  tail call void @llvm.dbg.declare(metadata ptr %old_state, metadata !847, metadata !DIExpression()), !dbg !854
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !855, !tbaa !681
  %state = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 0, !dbg !856
  %call = call zeroext i8 @atomic_load_u8(ptr noundef %state, i32 noundef 0), !dbg !857
  store i8 %call, ptr %old_state, align 1, !dbg !854, !tbaa !702
  %1 = load i8, ptr %old_state, align 1, !dbg !858, !tbaa !702
  %conv = zext i8 %1 to i32, !dbg !858
  %cmp = icmp sgt i32 %conv, 2, !dbg !860
  br i1 %cmp, label %if.then, label %if.else, !dbg !861

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !862

do.body2:                                         ; preds = %if.then
  br label %do.cond, !dbg !864

do.cond:                                          ; preds = %do.body2
  br label %do.end3, !dbg !864

do.end3:                                          ; preds = %do.cond
  %2 = load ptr, ptr %tsd.addr, align 8, !dbg !866, !tbaa !681
  %state4 = getelementptr inbounds %struct.tsd_s, ptr %2, i32 0, i32 0, !dbg !867
  %3 = load i8, ptr %new_state.addr, align 1, !dbg !868, !tbaa !702
  call void @atomic_store_u8(ptr noundef %state4, i8 noundef zeroext %3, i32 noundef 0), !dbg !869
  %4 = load i8, ptr %new_state.addr, align 1, !dbg !870, !tbaa !702
  %conv5 = zext i8 %4 to i32, !dbg !870
  %cmp6 = icmp sle i32 %conv5, 2, !dbg !872
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !873

if.then8:                                         ; preds = %do.end3
  %5 = load ptr, ptr %tsd.addr, align 8, !dbg !874, !tbaa !681
  call void @tsd_add_nominal(ptr noundef %5), !dbg !876
  br label %if.end, !dbg !877

if.end:                                           ; preds = %if.then8, %do.end3
  br label %if.end19, !dbg !878

if.else:                                          ; preds = %do.end
  br label %do.body9, !dbg !879

do.body9:                                         ; preds = %if.else
  br label %do.cond10, !dbg !881

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !881

do.end11:                                         ; preds = %do.cond10
  %6 = load i8, ptr %new_state.addr, align 1, !dbg !883, !tbaa !702
  %conv12 = zext i8 %6 to i32, !dbg !883
  %cmp13 = icmp sgt i32 %conv12, 2, !dbg !885
  br i1 %cmp13, label %if.then15, label %if.else17, !dbg !886

if.then15:                                        ; preds = %do.end11
  %7 = load ptr, ptr %tsd.addr, align 8, !dbg !887, !tbaa !681
  call void @tsd_remove_nominal(ptr noundef %7), !dbg !889
  %8 = load ptr, ptr %tsd.addr, align 8, !dbg !890, !tbaa !681
  %state16 = getelementptr inbounds %struct.tsd_s, ptr %8, i32 0, i32 0, !dbg !891
  %9 = load i8, ptr %new_state.addr, align 1, !dbg !892, !tbaa !702
  call void @atomic_store_u8(ptr noundef %state16, i8 noundef zeroext %9, i32 noundef 0), !dbg !893
  br label %if.end18, !dbg !894

if.else17:                                        ; preds = %do.end11
  %10 = load ptr, ptr %tsd.addr, align 8, !dbg !895, !tbaa !681
  call void @je_tsd_slow_update(ptr noundef %10), !dbg !897
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then15
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %old_state) #10, !dbg !898
  ret void, !dbg !898
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @atomic_load_u8(ptr noundef %a, i32 noundef %mo) #1 !dbg !899 {
entry:
  %a.addr = alloca ptr, align 8
  %mo.addr = alloca i32, align 4
  %result = alloca i8, align 1
  store ptr %a, ptr %a.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !905, metadata !DIExpression()), !dbg !908
  store i32 %mo, ptr %mo.addr, align 4, !tbaa !702
  tail call void @llvm.dbg.declare(metadata ptr %mo.addr, metadata !906, metadata !DIExpression()), !dbg !908
  call void @llvm.lifetime.start.p0(i64 1, ptr %result) #10, !dbg !908
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !907, metadata !DIExpression()), !dbg !908
  %0 = load ptr, ptr %a.addr, align 8, !dbg !908, !tbaa !681
  %repr = getelementptr inbounds %struct.atomic_u8_t, ptr %0, i32 0, i32 0, !dbg !908
  %1 = load i32, ptr %mo.addr, align 4, !dbg !908, !tbaa !702
  %call = call i32 @atomic_enum_to_builtin(i32 noundef %1), !dbg !908
  switch i32 %call, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 5, label %seqcst
  ], !dbg !908

monotonic:                                        ; preds = %entry
  %2 = load atomic i8, ptr %repr monotonic, align 1, !dbg !908
  store i8 %2, ptr %result, align 1, !dbg !908
  br label %atomic.continue, !dbg !908

acquire:                                          ; preds = %entry, %entry
  %3 = load atomic i8, ptr %repr acquire, align 1, !dbg !908
  store i8 %3, ptr %result, align 1, !dbg !908
  br label %atomic.continue, !dbg !908

seqcst:                                           ; preds = %entry
  %4 = load atomic i8, ptr %repr seq_cst, align 1, !dbg !908
  store i8 %4, ptr %result, align 1, !dbg !908
  br label %atomic.continue, !dbg !908

atomic.continue:                                  ; preds = %seqcst, %acquire, %monotonic
  %5 = load i8, ptr %result, align 1, !dbg !908, !tbaa !702
  call void @llvm.lifetime.end.p0(i64 1, ptr %result) #10, !dbg !908
  ret i8 %5, !dbg !908
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @atomic_store_u8(ptr noundef %a, i8 noundef zeroext %val, i32 noundef %mo) #1 !dbg !909 {
entry:
  %a.addr = alloca ptr, align 8
  %val.addr = alloca i8, align 1
  %mo.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !913, metadata !DIExpression()), !dbg !916
  store i8 %val, ptr %val.addr, align 1, !tbaa !702
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !914, metadata !DIExpression()), !dbg !916
  store i32 %mo, ptr %mo.addr, align 4, !tbaa !702
  tail call void @llvm.dbg.declare(metadata ptr %mo.addr, metadata !915, metadata !DIExpression()), !dbg !916
  %0 = load ptr, ptr %a.addr, align 8, !dbg !916, !tbaa !681
  %repr = getelementptr inbounds %struct.atomic_u8_t, ptr %0, i32 0, i32 0, !dbg !916
  %1 = load i32, ptr %mo.addr, align 4, !dbg !916, !tbaa !702
  %call = call i32 @atomic_enum_to_builtin(i32 noundef %1), !dbg !916
  switch i32 %call, label %monotonic [
    i32 3, label %release
    i32 5, label %seqcst
  ], !dbg !916

monotonic:                                        ; preds = %entry
  %2 = load i8, ptr %val.addr, align 1, !dbg !916
  store atomic i8 %2, ptr %repr monotonic, align 1, !dbg !916
  br label %atomic.continue, !dbg !916

release:                                          ; preds = %entry
  %3 = load i8, ptr %val.addr, align 1, !dbg !916
  store atomic i8 %3, ptr %repr release, align 1, !dbg !916
  br label %atomic.continue, !dbg !916

seqcst:                                           ; preds = %entry
  %4 = load i8, ptr %val.addr, align 1, !dbg !916
  store atomic i8 %4, ptr %repr seq_cst, align 1, !dbg !916
  br label %atomic.continue, !dbg !916

atomic.continue:                                  ; preds = %seqcst, %release, %monotonic
  ret void, !dbg !916
}

; Function Attrs: nounwind uwtable
define internal void @tsd_add_nominal(ptr noundef %tsd) #0 !dbg !917 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !919, metadata !DIExpression()), !dbg !920
  br label %do.body, !dbg !921

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !922

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !924

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !925

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !927

do.body3:                                         ; preds = %do.end2
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !928, !tbaa !681
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !928, !tbaa !681
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache = getelementptr inbounds %struct.tsd_s, ptr %1, i32 0, i32 15, !dbg !928
  %tsd_link = getelementptr inbounds %struct.tcache_s, ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache, i32 0, i32 4, !dbg !928
  %qre_next = getelementptr inbounds %struct.anon.0, ptr %tsd_link, i32 0, i32 0, !dbg !928
  store ptr %0, ptr %qre_next, align 8, !dbg !928, !tbaa !727
  %2 = load ptr, ptr %tsd.addr, align 8, !dbg !928, !tbaa !681
  %3 = load ptr, ptr %tsd.addr, align 8, !dbg !928, !tbaa !681
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache4 = getelementptr inbounds %struct.tsd_s, ptr %3, i32 0, i32 15, !dbg !928
  %tsd_link5 = getelementptr inbounds %struct.tcache_s, ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache4, i32 0, i32 4, !dbg !928
  %qre_prev = getelementptr inbounds %struct.anon.0, ptr %tsd_link5, i32 0, i32 1, !dbg !928
  store ptr %2, ptr %qre_prev, align 8, !dbg !928, !tbaa !930
  br label %do.end6, !dbg !928

do.end6:                                          ; preds = %do.body3
  %4 = load ptr, ptr %tsd.addr, align 8, !dbg !931, !tbaa !681
  %call = call ptr @tsd_tsdn(ptr noundef %4), !dbg !932
  call void @malloc_mutex_lock(ptr noundef %call, ptr noundef @tsd_nominal_tsds_lock), !dbg !933
  br label %do.body7, !dbg !934

do.body7:                                         ; preds = %do.end6
  %5 = load ptr, ptr @tsd_nominal_tsds, align 8, !dbg !935, !tbaa !715
  %cmp = icmp ne ptr %5, null, !dbg !935
  br i1 %cmp, label %if.then, label %if.end, !dbg !938

if.then:                                          ; preds = %do.body7
  br label %do.body8, !dbg !939

do.body8:                                         ; preds = %if.then
  %6 = load ptr, ptr @tsd_nominal_tsds, align 8, !dbg !941, !tbaa !715
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache9 = getelementptr inbounds %struct.tsd_s, ptr %6, i32 0, i32 15, !dbg !941
  %tsd_link10 = getelementptr inbounds %struct.tcache_s, ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache9, i32 0, i32 4, !dbg !941
  %qre_prev11 = getelementptr inbounds %struct.anon.0, ptr %tsd_link10, i32 0, i32 1, !dbg !941
  %7 = load ptr, ptr %qre_prev11, align 8, !dbg !941, !tbaa !930
  %8 = load ptr, ptr %tsd.addr, align 8, !dbg !941, !tbaa !681
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache12 = getelementptr inbounds %struct.tsd_s, ptr %8, i32 0, i32 15, !dbg !941
  %tsd_link13 = getelementptr inbounds %struct.tcache_s, ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache12, i32 0, i32 4, !dbg !941
  %qre_prev14 = getelementptr inbounds %struct.anon.0, ptr %tsd_link13, i32 0, i32 1, !dbg !941
  store ptr %7, ptr %qre_prev14, align 8, !dbg !941, !tbaa !930
  %9 = load ptr, ptr @tsd_nominal_tsds, align 8, !dbg !941, !tbaa !715
  %10 = load ptr, ptr %tsd.addr, align 8, !dbg !941, !tbaa !681
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache15 = getelementptr inbounds %struct.tsd_s, ptr %10, i32 0, i32 15, !dbg !941
  %tsd_link16 = getelementptr inbounds %struct.tcache_s, ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache15, i32 0, i32 4, !dbg !941
  %qre_next17 = getelementptr inbounds %struct.anon.0, ptr %tsd_link16, i32 0, i32 0, !dbg !941
  store ptr %9, ptr %qre_next17, align 8, !dbg !941, !tbaa !727
  %11 = load ptr, ptr %tsd.addr, align 8, !dbg !941, !tbaa !681
  %12 = load ptr, ptr %tsd.addr, align 8, !dbg !941, !tbaa !681
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache18 = getelementptr inbounds %struct.tsd_s, ptr %12, i32 0, i32 15, !dbg !941
  %tsd_link19 = getelementptr inbounds %struct.tcache_s, ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache18, i32 0, i32 4, !dbg !941
  %qre_prev20 = getelementptr inbounds %struct.anon.0, ptr %tsd_link19, i32 0, i32 1, !dbg !941
  %13 = load ptr, ptr %qre_prev20, align 8, !dbg !941, !tbaa !930
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache21 = getelementptr inbounds %struct.tsd_s, ptr %13, i32 0, i32 15, !dbg !941
  %tsd_link22 = getelementptr inbounds %struct.tcache_s, ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache21, i32 0, i32 4, !dbg !941
  %qre_next23 = getelementptr inbounds %struct.anon.0, ptr %tsd_link22, i32 0, i32 0, !dbg !941
  store ptr %11, ptr %qre_next23, align 8, !dbg !941, !tbaa !727
  %14 = load ptr, ptr %tsd.addr, align 8, !dbg !941, !tbaa !681
  %15 = load ptr, ptr @tsd_nominal_tsds, align 8, !dbg !941, !tbaa !715
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache24 = getelementptr inbounds %struct.tsd_s, ptr %15, i32 0, i32 15, !dbg !941
  %tsd_link25 = getelementptr inbounds %struct.tcache_s, ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache24, i32 0, i32 4, !dbg !941
  %qre_prev26 = getelementptr inbounds %struct.anon.0, ptr %tsd_link25, i32 0, i32 1, !dbg !941
  store ptr %14, ptr %qre_prev26, align 8, !dbg !941, !tbaa !930
  br label %do.end27, !dbg !941

do.end27:                                         ; preds = %do.body8
  br label %if.end, !dbg !939

if.end:                                           ; preds = %do.end27, %do.body7
  %16 = load ptr, ptr %tsd.addr, align 8, !dbg !938, !tbaa !681
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache28 = getelementptr inbounds %struct.tsd_s, ptr %16, i32 0, i32 15, !dbg !938
  %tsd_link29 = getelementptr inbounds %struct.tcache_s, ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache28, i32 0, i32 4, !dbg !938
  %qre_next30 = getelementptr inbounds %struct.anon.0, ptr %tsd_link29, i32 0, i32 0, !dbg !938
  %17 = load ptr, ptr %qre_next30, align 8, !dbg !938, !tbaa !727
  store ptr %17, ptr @tsd_nominal_tsds, align 8, !dbg !938, !tbaa !715
  br label %do.end31, !dbg !938

do.end31:                                         ; preds = %if.end
  %18 = load ptr, ptr %tsd.addr, align 8, !dbg !943, !tbaa !681
  %call32 = call ptr @tsd_tsdn(ptr noundef %18), !dbg !944
  call void @malloc_mutex_unlock(ptr noundef %call32, ptr noundef @tsd_nominal_tsds_lock), !dbg !945
  ret void, !dbg !946
}

; Function Attrs: nounwind uwtable
define internal void @tsd_remove_nominal(ptr noundef %tsd) #0 !dbg !947 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !949, metadata !DIExpression()), !dbg !950
  br label %do.body, !dbg !951

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !952

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !954

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !955

do.end2:                                          ; preds = %do.body1
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !957, !tbaa !681
  %call = call ptr @tsd_tsdn(ptr noundef %0), !dbg !958
  call void @malloc_mutex_lock(ptr noundef %call, ptr noundef @tsd_nominal_tsds_lock), !dbg !959
  br label %do.body3, !dbg !960

do.body3:                                         ; preds = %do.end2
  %1 = load ptr, ptr @tsd_nominal_tsds, align 8, !dbg !961, !tbaa !715
  %2 = load ptr, ptr %tsd.addr, align 8, !dbg !961, !tbaa !681
  %cmp = icmp eq ptr %1, %2, !dbg !961
  br i1 %cmp, label %if.then, label %if.end, !dbg !964

if.then:                                          ; preds = %do.body3
  %3 = load ptr, ptr @tsd_nominal_tsds, align 8, !dbg !965, !tbaa !715
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache = getelementptr inbounds %struct.tsd_s, ptr %3, i32 0, i32 15, !dbg !965
  %tsd_link = getelementptr inbounds %struct.tcache_s, ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache, i32 0, i32 4, !dbg !965
  %qre_next = getelementptr inbounds %struct.anon.0, ptr %tsd_link, i32 0, i32 0, !dbg !965
  %4 = load ptr, ptr %qre_next, align 8, !dbg !965, !tbaa !727
  store ptr %4, ptr @tsd_nominal_tsds, align 8, !dbg !965, !tbaa !715
  br label %if.end, !dbg !965

if.end:                                           ; preds = %if.then, %do.body3
  %5 = load ptr, ptr @tsd_nominal_tsds, align 8, !dbg !967, !tbaa !715
  %6 = load ptr, ptr %tsd.addr, align 8, !dbg !967, !tbaa !681
  %cmp4 = icmp ne ptr %5, %6, !dbg !967
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !964

if.then5:                                         ; preds = %if.end
  br label %do.body6, !dbg !969

do.body6:                                         ; preds = %if.then5
  %7 = load ptr, ptr %tsd.addr, align 8, !dbg !971, !tbaa !681
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache7 = getelementptr inbounds %struct.tsd_s, ptr %7, i32 0, i32 15, !dbg !971
  %tsd_link8 = getelementptr inbounds %struct.tcache_s, ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache7, i32 0, i32 4, !dbg !971
  %qre_next9 = getelementptr inbounds %struct.anon.0, ptr %tsd_link8, i32 0, i32 0, !dbg !971
  %8 = load ptr, ptr %qre_next9, align 8, !dbg !971, !tbaa !727
  %9 = load ptr, ptr %tsd.addr, align 8, !dbg !971, !tbaa !681
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache10 = getelementptr inbounds %struct.tsd_s, ptr %9, i32 0, i32 15, !dbg !971
  %tsd_link11 = getelementptr inbounds %struct.tcache_s, ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache10, i32 0, i32 4, !dbg !971
  %qre_prev = getelementptr inbounds %struct.anon.0, ptr %tsd_link11, i32 0, i32 1, !dbg !971
  %10 = load ptr, ptr %qre_prev, align 8, !dbg !971, !tbaa !930
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache12 = getelementptr inbounds %struct.tsd_s, ptr %10, i32 0, i32 15, !dbg !971
  %tsd_link13 = getelementptr inbounds %struct.tcache_s, ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache12, i32 0, i32 4, !dbg !971
  %qre_next14 = getelementptr inbounds %struct.anon.0, ptr %tsd_link13, i32 0, i32 0, !dbg !971
  store ptr %8, ptr %qre_next14, align 8, !dbg !971, !tbaa !727
  %11 = load ptr, ptr %tsd.addr, align 8, !dbg !971, !tbaa !681
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache15 = getelementptr inbounds %struct.tsd_s, ptr %11, i32 0, i32 15, !dbg !971
  %tsd_link16 = getelementptr inbounds %struct.tcache_s, ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache15, i32 0, i32 4, !dbg !971
  %qre_prev17 = getelementptr inbounds %struct.anon.0, ptr %tsd_link16, i32 0, i32 1, !dbg !971
  %12 = load ptr, ptr %qre_prev17, align 8, !dbg !971, !tbaa !930
  %13 = load ptr, ptr %tsd.addr, align 8, !dbg !971, !tbaa !681
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache18 = getelementptr inbounds %struct.tsd_s, ptr %13, i32 0, i32 15, !dbg !971
  %tsd_link19 = getelementptr inbounds %struct.tcache_s, ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache18, i32 0, i32 4, !dbg !971
  %qre_next20 = getelementptr inbounds %struct.anon.0, ptr %tsd_link19, i32 0, i32 0, !dbg !971
  %14 = load ptr, ptr %qre_next20, align 8, !dbg !971, !tbaa !727
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache21 = getelementptr inbounds %struct.tsd_s, ptr %14, i32 0, i32 15, !dbg !971
  %tsd_link22 = getelementptr inbounds %struct.tcache_s, ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache21, i32 0, i32 4, !dbg !971
  %qre_prev23 = getelementptr inbounds %struct.anon.0, ptr %tsd_link22, i32 0, i32 1, !dbg !971
  store ptr %12, ptr %qre_prev23, align 8, !dbg !971, !tbaa !930
  %15 = load ptr, ptr %tsd.addr, align 8, !dbg !971, !tbaa !681
  %16 = load ptr, ptr %tsd.addr, align 8, !dbg !971, !tbaa !681
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache24 = getelementptr inbounds %struct.tsd_s, ptr %16, i32 0, i32 15, !dbg !971
  %tsd_link25 = getelementptr inbounds %struct.tcache_s, ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache24, i32 0, i32 4, !dbg !971
  %qre_next26 = getelementptr inbounds %struct.anon.0, ptr %tsd_link25, i32 0, i32 0, !dbg !971
  store ptr %15, ptr %qre_next26, align 8, !dbg !971, !tbaa !727
  %17 = load ptr, ptr %tsd.addr, align 8, !dbg !971, !tbaa !681
  %18 = load ptr, ptr %tsd.addr, align 8, !dbg !971, !tbaa !681
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache27 = getelementptr inbounds %struct.tsd_s, ptr %18, i32 0, i32 15, !dbg !971
  %tsd_link28 = getelementptr inbounds %struct.tcache_s, ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache27, i32 0, i32 4, !dbg !971
  %qre_prev29 = getelementptr inbounds %struct.anon.0, ptr %tsd_link28, i32 0, i32 1, !dbg !971
  store ptr %17, ptr %qre_prev29, align 8, !dbg !971, !tbaa !930
  br label %do.end30, !dbg !971

do.end30:                                         ; preds = %do.body6
  br label %if.end31, !dbg !969

if.else:                                          ; preds = %if.end
  store ptr null, ptr @tsd_nominal_tsds, align 8, !dbg !973, !tbaa !715
  br label %if.end31

if.end31:                                         ; preds = %if.else, %do.end30
  br label %do.end32, !dbg !964

do.end32:                                         ; preds = %if.end31
  %19 = load ptr, ptr %tsd.addr, align 8, !dbg !975, !tbaa !681
  %call33 = call ptr @tsd_tsdn(ptr noundef %19), !dbg !976
  call void @malloc_mutex_unlock(ptr noundef %call33, ptr noundef @tsd_nominal_tsds_lock), !dbg !977
  ret void, !dbg !978
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_tsd_fetch_slow(ptr noundef %tsd, i1 noundef zeroext %minimal) #0 !dbg !979 {
entry:
  %tsd.addr = alloca ptr, align 8
  %minimal.addr = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !983, metadata !DIExpression()), !dbg !985
  %frombool = zext i1 %minimal to i8
  store i8 %frombool, ptr %minimal.addr, align 1, !tbaa !817
  tail call void @llvm.dbg.declare(metadata ptr %minimal.addr, metadata !984, metadata !DIExpression()), !dbg !986
  br label %do.body, !dbg !987

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !988

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !990, !tbaa !681
  %call = call zeroext i8 @tsd_state_get(ptr noundef %0), !dbg !992
  %conv = zext i8 %call to i32, !dbg !992
  %cmp = icmp eq i32 %conv, 1, !dbg !993
  br i1 %cmp, label %if.then, label %if.else, !dbg !994

if.then:                                          ; preds = %do.end
  br label %if.end48, !dbg !995

if.else:                                          ; preds = %do.end
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !997, !tbaa !681
  %call2 = call zeroext i8 @tsd_state_get(ptr noundef %1), !dbg !999
  %conv3 = zext i8 %call2 to i32, !dbg !999
  %cmp4 = icmp eq i32 %conv3, 2, !dbg !1000
  br i1 %cmp4, label %if.then6, label %if.else7, !dbg !1001

if.then6:                                         ; preds = %if.else
  %2 = load ptr, ptr %tsd.addr, align 8, !dbg !1002, !tbaa !681
  call void @je_tsd_slow_update(ptr noundef %2), !dbg !1004
  br label %if.end47, !dbg !1005

if.else7:                                         ; preds = %if.else
  %3 = load ptr, ptr %tsd.addr, align 8, !dbg !1006, !tbaa !681
  %call8 = call zeroext i8 @tsd_state_get(ptr noundef %3), !dbg !1008
  %conv9 = zext i8 %call8 to i32, !dbg !1008
  %cmp10 = icmp eq i32 %conv9, 6, !dbg !1009
  br i1 %cmp10, label %if.then12, label %if.else20, !dbg !1010

if.then12:                                        ; preds = %if.else7
  %4 = load i8, ptr %minimal.addr, align 1, !dbg !1011, !tbaa !817, !range !818, !noundef !819
  %tobool = trunc i8 %4 to i1, !dbg !1011
  br i1 %tobool, label %if.else17, label %if.then13, !dbg !1014

if.then13:                                        ; preds = %if.then12
  %5 = load i8, ptr @je_tsd_booted, align 1, !dbg !1015, !tbaa !817, !range !818, !noundef !819
  %tobool14 = trunc i8 %5 to i1, !dbg !1015
  br i1 %tobool14, label %if.then15, label %if.end, !dbg !1018

if.then15:                                        ; preds = %if.then13
  %6 = load ptr, ptr %tsd.addr, align 8, !dbg !1019, !tbaa !681
  call void @je_tsd_state_set(ptr noundef %6, i8 noundef zeroext 0), !dbg !1021
  %7 = load ptr, ptr %tsd.addr, align 8, !dbg !1022, !tbaa !681
  call void @je_tsd_slow_update(ptr noundef %7), !dbg !1023
  %8 = load ptr, ptr %tsd.addr, align 8, !dbg !1024, !tbaa !681
  call void @tsd_set(ptr noundef %8), !dbg !1025
  %9 = load ptr, ptr %tsd.addr, align 8, !dbg !1026, !tbaa !681
  %call16 = call zeroext i1 @tsd_data_init(ptr noundef %9), !dbg !1027
  br label %if.end, !dbg !1028

if.end:                                           ; preds = %if.then15, %if.then13
  br label %if.end19, !dbg !1029

if.else17:                                        ; preds = %if.then12
  %10 = load ptr, ptr %tsd.addr, align 8, !dbg !1030, !tbaa !681
  call void @je_tsd_state_set(ptr noundef %10, i8 noundef zeroext 3), !dbg !1032
  %11 = load ptr, ptr %tsd.addr, align 8, !dbg !1033, !tbaa !681
  call void @tsd_set(ptr noundef %11), !dbg !1034
  %12 = load ptr, ptr %tsd.addr, align 8, !dbg !1035, !tbaa !681
  %call18 = call zeroext i1 @tsd_data_init_nocleanup(ptr noundef %12), !dbg !1036
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.end
  br label %if.end46, !dbg !1037

if.else20:                                        ; preds = %if.else7
  %13 = load ptr, ptr %tsd.addr, align 8, !dbg !1038, !tbaa !681
  %call21 = call zeroext i8 @tsd_state_get(ptr noundef %13), !dbg !1040
  %conv22 = zext i8 %call21 to i32, !dbg !1040
  %cmp23 = icmp eq i32 %conv22, 3, !dbg !1041
  br i1 %cmp23, label %if.then25, label %if.else34, !dbg !1042

if.then25:                                        ; preds = %if.else20
  %14 = load i8, ptr %minimal.addr, align 1, !dbg !1043, !tbaa !817, !range !818, !noundef !819
  %tobool26 = trunc i8 %14 to i1, !dbg !1043
  br i1 %tobool26, label %if.else32, label %if.then27, !dbg !1046

if.then27:                                        ; preds = %if.then25
  %15 = load ptr, ptr %tsd.addr, align 8, !dbg !1047, !tbaa !681
  call void @je_tsd_state_set(ptr noundef %15, i8 noundef zeroext 0), !dbg !1049
  br label %do.body28, !dbg !1050

do.body28:                                        ; preds = %if.then27
  br label %do.end29, !dbg !1051

do.end29:                                         ; preds = %do.body28
  %16 = load ptr, ptr %tsd.addr, align 8, !dbg !1053, !tbaa !681
  %call30 = call ptr @tsd_reentrancy_levelp_get(ptr noundef %16), !dbg !1054
  %17 = load i8, ptr %call30, align 1, !dbg !1055, !tbaa !702
  %dec = add i8 %17, -1, !dbg !1055
  store i8 %dec, ptr %call30, align 1, !dbg !1055, !tbaa !702
  %18 = load ptr, ptr %tsd.addr, align 8, !dbg !1056, !tbaa !681
  call void @je_tsd_slow_update(ptr noundef %18), !dbg !1057
  %19 = load ptr, ptr %tsd.addr, align 8, !dbg !1058, !tbaa !681
  %call31 = call zeroext i1 @tsd_data_init(ptr noundef %19), !dbg !1059
  br label %if.end33, !dbg !1060

if.else32:                                        ; preds = %if.then25
  %20 = load ptr, ptr %tsd.addr, align 8, !dbg !1061, !tbaa !681
  call void @assert_tsd_data_cleanup_done(ptr noundef %20), !dbg !1063
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %do.end29
  br label %if.end45, !dbg !1064

if.else34:                                        ; preds = %if.else20
  %21 = load ptr, ptr %tsd.addr, align 8, !dbg !1065, !tbaa !681
  %call35 = call zeroext i8 @tsd_state_get(ptr noundef %21), !dbg !1067
  %conv36 = zext i8 %call35 to i32, !dbg !1067
  %cmp37 = icmp eq i32 %conv36, 4, !dbg !1068
  br i1 %cmp37, label %if.then39, label %if.else41, !dbg !1069

if.then39:                                        ; preds = %if.else34
  %22 = load ptr, ptr %tsd.addr, align 8, !dbg !1070, !tbaa !681
  call void @je_tsd_state_set(ptr noundef %22, i8 noundef zeroext 5), !dbg !1072
  %23 = load ptr, ptr %tsd.addr, align 8, !dbg !1073, !tbaa !681
  call void @tsd_set(ptr noundef %23), !dbg !1074
  %24 = load ptr, ptr %tsd.addr, align 8, !dbg !1075, !tbaa !681
  %call40 = call zeroext i1 @tsd_data_init_nocleanup(ptr noundef %24), !dbg !1076
  br label %if.end44, !dbg !1077

if.else41:                                        ; preds = %if.else34
  br label %do.body42, !dbg !1078

do.body42:                                        ; preds = %if.else41
  br label %do.end43, !dbg !1080

do.end43:                                         ; preds = %do.body42
  br label %if.end44

if.end44:                                         ; preds = %do.end43, %if.then39
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end33
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end19
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then6
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then
  %25 = load ptr, ptr %tsd.addr, align 8, !dbg !1082, !tbaa !681
  ret ptr %25, !dbg !1083
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @tsd_state_get(ptr noundef %tsd) #1 !dbg !1084 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1086, metadata !DIExpression()), !dbg !1087
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1088, !tbaa !681
  %state = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 0, !dbg !1089
  %1 = load i8, ptr %state, align 8, !dbg !1090, !tbaa !702
  ret i8 %1, !dbg !1091
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @tsd_set(ptr noundef %val) #1 !dbg !1092 {
entry:
  %val.addr = alloca ptr, align 8
  store ptr %val, ptr %val.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1094, metadata !DIExpression()), !dbg !1095
  br label %do.body, !dbg !1096

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1097

do.end:                                           ; preds = %do.body
  %0 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls), !dbg !1099
  %1 = load ptr, ptr %val.addr, align 8, !dbg !1099, !tbaa !681
  %cmp = icmp ne ptr %0, %1, !dbg !1099
  %lnot = xor i1 %cmp, true, !dbg !1099
  %lnot1 = xor i1 %lnot, true, !dbg !1099
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1099
  %conv = sext i32 %lnot.ext to i64, !dbg !1099
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1099
  %tobool = icmp ne i64 %expval, 0, !dbg !1099
  br i1 %tobool, label %if.then, label %if.end, !dbg !1101

if.then:                                          ; preds = %do.end
  %2 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls), !dbg !1102
  %3 = load ptr, ptr %val.addr, align 8, !dbg !1104, !tbaa !681
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %3, i64 6216, i1 false), !dbg !1105, !tbaa.struct !1106
  br label %if.end, !dbg !1108

if.end:                                           ; preds = %if.then, %do.end
  %4 = load i32, ptr @je_tsd_tsd, align 4, !dbg !1109, !tbaa !700
  %5 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls), !dbg !1111
  %call = call i32 @pthread_setspecific(i32 noundef %4, ptr noundef %5) #10, !dbg !1112
  %cmp2 = icmp ne i32 %call, 0, !dbg !1113
  br i1 %cmp2, label %if.then4, label %if.end8, !dbg !1114

if.then4:                                         ; preds = %if.end
  call void @je_malloc_write(ptr noundef @.str.1), !dbg !1115
  %6 = load i8, ptr @je_opt_abort, align 1, !dbg !1117, !tbaa !817, !range !818, !noundef !819
  %tobool5 = trunc i8 %6 to i1, !dbg !1117
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !1119

if.then6:                                         ; preds = %if.then4
  call void @abort() #11, !dbg !1120
  unreachable, !dbg !1120

if.end7:                                          ; preds = %if.then4
  br label %if.end8, !dbg !1122

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !1123
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @tsd_data_init(ptr noundef %tsd) #0 !dbg !1124 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1128, metadata !DIExpression()), !dbg !1129
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1130, !tbaa !681
  %call = call ptr @tsd_rtree_ctxp_get_unsafe(ptr noundef %0), !dbg !1131
  call void @je_rtree_ctx_data_init(ptr noundef %call), !dbg !1132
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !1133, !tbaa !681
  %2 = ptrtoint ptr %1 to i64, !dbg !1134
  %3 = load ptr, ptr %tsd.addr, align 8, !dbg !1135, !tbaa !681
  %call1 = call ptr @tsd_offset_statep_get(ptr noundef %3), !dbg !1136
  store i64 %2, ptr %call1, align 8, !dbg !1137, !tbaa !1107
  %4 = load ptr, ptr %tsd.addr, align 8, !dbg !1138, !tbaa !681
  %call2 = call zeroext i1 @je_tsd_tcache_enabled_data_init(ptr noundef %4), !dbg !1139
  ret i1 %call2, !dbg !1140
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @tsd_data_init_nocleanup(ptr noundef %tsd) #0 !dbg !1141 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1143, metadata !DIExpression()), !dbg !1144
  br label %do.body, !dbg !1145

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1146

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1148, !tbaa !681
  %call = call ptr @tsd_rtree_ctxp_get_unsafe(ptr noundef %0), !dbg !1149
  call void @je_rtree_ctx_data_init(ptr noundef %call), !dbg !1150
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !1151, !tbaa !681
  %call1 = call ptr @tsd_arenas_tdata_bypassp_get(ptr noundef %1), !dbg !1152
  store i8 1, ptr %call1, align 1, !dbg !1153, !tbaa !817
  %2 = load ptr, ptr %tsd.addr, align 8, !dbg !1154, !tbaa !681
  %call2 = call ptr @tsd_tcache_enabledp_get_unsafe(ptr noundef %2), !dbg !1155
  store i8 0, ptr %call2, align 1, !dbg !1156, !tbaa !817
  %3 = load ptr, ptr %tsd.addr, align 8, !dbg !1157, !tbaa !681
  %call3 = call ptr @tsd_reentrancy_levelp_get(ptr noundef %3), !dbg !1158
  store i8 1, ptr %call3, align 1, !dbg !1159, !tbaa !702
  %4 = load ptr, ptr %tsd.addr, align 8, !dbg !1160, !tbaa !681
  call void @assert_tsd_data_cleanup_done(ptr noundef %4), !dbg !1161
  ret i1 false, !dbg !1162
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_reentrancy_levelp_get(ptr noundef %tsd) #1 !dbg !1163 {
entry:
  %tsd.addr = alloca ptr, align 8
  %state = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1168, metadata !DIExpression()), !dbg !1170
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #10, !dbg !1170
  tail call void @llvm.dbg.declare(metadata ptr %state, metadata !1169, metadata !DIExpression()), !dbg !1170
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1170, !tbaa !681
  %call = call zeroext i8 @tsd_state_get(ptr noundef %0), !dbg !1170
  store i8 %call, ptr %state, align 1, !dbg !1170, !tbaa !702
  br label %do.body, !dbg !1170

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1171

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1171

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !1170, !tbaa !681
  %call1 = call ptr @tsd_reentrancy_levelp_get_unsafe(ptr noundef %1), !dbg !1170
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #10, !dbg !1170
  ret ptr %call1, !dbg !1170
}

; Function Attrs: nounwind uwtable
define internal void @assert_tsd_data_cleanup_done(ptr noundef %tsd) #0 !dbg !1173 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1175, metadata !DIExpression()), !dbg !1176
  br label %do.body, !dbg !1177

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1178

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !1180

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !1181

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !1183

do.body3:                                         ; preds = %do.end2
  br label %do.end4, !dbg !1184

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !1186

do.body5:                                         ; preds = %do.end4
  br label %do.end6, !dbg !1187

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !1189

do.body7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !1190

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !1192

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !1193

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !1195

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !1196

do.end12:                                         ; preds = %do.body11
  br label %do.body13, !dbg !1198

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !1199

do.end14:                                         ; preds = %do.body13
  ret void, !dbg !1201
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_malloc_tsd_malloc(i64 noundef %size) #0 !dbg !1202 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8, !tbaa !1107
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1206, metadata !DIExpression()), !dbg !1207
  %0 = load i64, ptr %size.addr, align 8, !dbg !1208, !tbaa !1107
  %add = add i64 %0, 63, !dbg !1208
  %and = and i64 %add, -64, !dbg !1208
  %call = call ptr @je_a0malloc(i64 noundef %and), !dbg !1209
  ret ptr %call, !dbg !1210
}

declare !dbg !1211 ptr @je_a0malloc(i64 noundef) #3

; Function Attrs: nounwind uwtable
define hidden void @je_malloc_tsd_dalloc(ptr noundef %wrapper) #0 !dbg !1213 {
entry:
  %wrapper.addr = alloca ptr, align 8
  store ptr %wrapper, ptr %wrapper.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %wrapper.addr, metadata !1217, metadata !DIExpression()), !dbg !1218
  %0 = load ptr, ptr %wrapper.addr, align 8, !dbg !1219, !tbaa !681
  call void @je_a0dalloc(ptr noundef %0), !dbg !1220
  ret void, !dbg !1221
}

declare !dbg !1222 void @je_a0dalloc(ptr noundef) #3

; Function Attrs: nounwind uwtable
define hidden void @je_malloc_tsd_cleanup_register(ptr noundef %f) #0 !dbg !1223 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !1227, metadata !DIExpression()), !dbg !1228
  br label %do.body, !dbg !1229

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1230

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %f.addr, align 8, !dbg !1232, !tbaa !681
  %1 = load i32, ptr @ncleanups, align 4, !dbg !1233, !tbaa !700
  %idxprom = zext i32 %1 to i64, !dbg !1234
  %arrayidx = getelementptr inbounds [2 x ptr], ptr @cleanups, i64 0, i64 %idxprom, !dbg !1234
  store ptr %0, ptr %arrayidx, align 8, !dbg !1235, !tbaa !681
  %2 = load i32, ptr @ncleanups, align 4, !dbg !1236, !tbaa !700
  %inc = add i32 %2, 1, !dbg !1236
  store i32 %inc, ptr @ncleanups, align 4, !dbg !1236, !tbaa !700
  ret void, !dbg !1237
}

; Function Attrs: nounwind uwtable
define hidden void @je_tsd_cleanup(ptr noundef %arg) #0 !dbg !1238 {
entry:
  %arg.addr = alloca ptr, align 8
  %tsd = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !1240, metadata !DIExpression()), !dbg !1242
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsd) #10, !dbg !1243
  tail call void @llvm.dbg.declare(metadata ptr %tsd, metadata !1241, metadata !DIExpression()), !dbg !1244
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !1245, !tbaa !681
  store ptr %0, ptr %tsd, align 8, !dbg !1244, !tbaa !681
  %1 = load ptr, ptr %tsd, align 8, !dbg !1246, !tbaa !681
  %call = call zeroext i8 @tsd_state_get(ptr noundef %1), !dbg !1247
  %conv = zext i8 %call to i32, !dbg !1247
  switch i32 %conv, label %sw.default [
    i32 6, label %sw.epilog
    i32 3, label %sw.bb
    i32 5, label %sw.bb
    i32 0, label %sw.bb1
    i32 1, label %sw.bb1
    i32 4, label %sw.epilog
  ], !dbg !1248

sw.bb:                                            ; preds = %entry, %entry
  %2 = load ptr, ptr %tsd, align 8, !dbg !1249, !tbaa !681
  call void @assert_tsd_data_cleanup_done(ptr noundef %2), !dbg !1251
  br label %sw.bb1, !dbg !1251

sw.bb1:                                           ; preds = %entry, %entry, %sw.bb
  %3 = load ptr, ptr %tsd, align 8, !dbg !1252, !tbaa !681
  call void @tsd_do_data_cleanup(ptr noundef %3), !dbg !1253
  %4 = load ptr, ptr %tsd, align 8, !dbg !1254, !tbaa !681
  call void @je_tsd_state_set(ptr noundef %4, i8 noundef zeroext 4), !dbg !1255
  %5 = load ptr, ptr %tsd, align 8, !dbg !1256, !tbaa !681
  call void @tsd_set(ptr noundef %5), !dbg !1257
  br label %sw.epilog, !dbg !1258

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !1259

do.body:                                          ; preds = %sw.default
  unreachable, !dbg !1260

do.cond:                                          ; No predecessors!
  br label %do.end, !dbg !1260

do.end:                                           ; preds = %do.cond
  br label %sw.epilog, !dbg !1262

sw.epilog:                                        ; preds = %do.end, %entry, %sw.bb1, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsd) #10, !dbg !1263
  ret void, !dbg !1263
}

; Function Attrs: nounwind uwtable
define internal void @tsd_do_data_cleanup(ptr noundef %tsd) #0 !dbg !1264 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1266, metadata !DIExpression()), !dbg !1267
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1268, !tbaa !681
  call void @je_prof_tdata_cleanup(ptr noundef %0), !dbg !1269
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !1270, !tbaa !681
  call void @je_iarena_cleanup(ptr noundef %1), !dbg !1271
  %2 = load ptr, ptr %tsd.addr, align 8, !dbg !1272, !tbaa !681
  call void @je_arena_cleanup(ptr noundef %2), !dbg !1273
  %3 = load ptr, ptr %tsd.addr, align 8, !dbg !1274, !tbaa !681
  call void @je_arenas_tdata_cleanup(ptr noundef %3), !dbg !1275
  %4 = load ptr, ptr %tsd.addr, align 8, !dbg !1276, !tbaa !681
  call void @je_tcache_cleanup(ptr noundef %4), !dbg !1277
  %5 = load ptr, ptr %tsd.addr, align 8, !dbg !1278, !tbaa !681
  %call = call ptr @tsd_witness_tsdp_get_unsafe(ptr noundef %5), !dbg !1279
  call void @je_witnesses_cleanup(ptr noundef %call), !dbg !1280
  ret void, !dbg !1281
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_malloc_tsd_boot0() #0 !dbg !1282 {
entry:
  %retval = alloca ptr, align 8
  %tsd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsd) #10, !dbg !1287
  tail call void @llvm.dbg.declare(metadata ptr %tsd, metadata !1286, metadata !DIExpression()), !dbg !1288
  store i32 0, ptr @ncleanups, align 4, !dbg !1289, !tbaa !700
  %call = call zeroext i1 @je_malloc_mutex_init(ptr noundef @tsd_nominal_tsds_lock, ptr noundef @.str, i32 noundef 0, i32 noundef 0), !dbg !1290
  br i1 %call, label %if.then, label %if.end, !dbg !1292

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1293
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1293

if.end:                                           ; preds = %entry
  %call1 = call zeroext i1 @tsd_boot0(), !dbg !1295
  br i1 %call1, label %if.then2, label %if.end3, !dbg !1297

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !1298
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1298

if.end3:                                          ; preds = %if.end
  %call4 = call ptr @tsd_fetch(), !dbg !1300
  store ptr %call4, ptr %tsd, align 8, !dbg !1301, !tbaa !681
  %0 = load ptr, ptr %tsd, align 8, !dbg !1302, !tbaa !681
  %call5 = call ptr @tsd_arenas_tdata_bypassp_get(ptr noundef %0), !dbg !1303
  store i8 1, ptr %call5, align 1, !dbg !1304, !tbaa !817
  %1 = load ptr, ptr %tsd, align 8, !dbg !1305, !tbaa !681
  store ptr %1, ptr %retval, align 8, !dbg !1306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1306

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsd) #10, !dbg !1307
  %2 = load ptr, ptr %retval, align 8, !dbg !1307
  ret ptr %2, !dbg !1307
}

declare !dbg !1308 zeroext i1 @je_malloc_mutex_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i1 @tsd_boot0() #1 !dbg !1311 {
entry:
  %retval = alloca i1, align 1
  %call = call i32 @pthread_key_create(ptr noundef @je_tsd_tsd, ptr noundef @je_tsd_cleanup) #10, !dbg !1312
  %cmp = icmp ne i32 %call, 0, !dbg !1314
  br i1 %cmp, label %if.then, label %if.end, !dbg !1315

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !1316
  br label %return, !dbg !1316

if.end:                                           ; preds = %entry
  store i8 1, ptr @je_tsd_booted, align 1, !dbg !1318, !tbaa !817
  store i1 false, ptr %retval, align 1, !dbg !1319
  br label %return, !dbg !1319

return:                                           ; preds = %if.end, %if.then
  %0 = load i1, ptr %retval, align 1, !dbg !1320
  ret i1 %0, !dbg !1320
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_fetch() #1 !dbg !1321 {
entry:
  %call = call ptr @tsd_fetch_impl(i1 noundef zeroext true, i1 noundef zeroext false), !dbg !1322
  ret ptr %call, !dbg !1323
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_arenas_tdata_bypassp_get(ptr noundef %tsd) #1 !dbg !1324 {
entry:
  %tsd.addr = alloca ptr, align 8
  %state = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1329, metadata !DIExpression()), !dbg !1331
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #10, !dbg !1331
  tail call void @llvm.dbg.declare(metadata ptr %state, metadata !1330, metadata !DIExpression()), !dbg !1331
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1331, !tbaa !681
  %call = call zeroext i8 @tsd_state_get(ptr noundef %0), !dbg !1331
  store i8 %call, ptr %state, align 1, !dbg !1331, !tbaa !702
  br label %do.body, !dbg !1331

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1332

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1332

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !1331, !tbaa !681
  %call1 = call ptr @tsd_arenas_tdata_bypassp_get_unsafe(ptr noundef %1), !dbg !1331
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #10, !dbg !1331
  ret ptr %call1, !dbg !1331
}

; Function Attrs: nounwind uwtable
define hidden void @je_malloc_tsd_boot1() #0 !dbg !1334 {
entry:
  %tsd = alloca ptr, align 8
  call void @tsd_boot1(), !dbg !1339
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsd) #10, !dbg !1340
  tail call void @llvm.dbg.declare(metadata ptr %tsd, metadata !1338, metadata !DIExpression()), !dbg !1341
  %call = call ptr @tsd_fetch(), !dbg !1342
  store ptr %call, ptr %tsd, align 8, !dbg !1341, !tbaa !681
  %0 = load ptr, ptr %tsd, align 8, !dbg !1343, !tbaa !681
  call void @je_tsd_slow_update(ptr noundef %0), !dbg !1344
  %1 = load ptr, ptr %tsd, align 8, !dbg !1345, !tbaa !681
  %call1 = call ptr @tsd_arenas_tdata_bypassp_get(ptr noundef %1), !dbg !1346
  store i8 0, ptr %call1, align 1, !dbg !1347, !tbaa !817
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsd) #10, !dbg !1348
  ret void, !dbg !1348
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @tsd_boot1() #1 !dbg !1349 {
entry:
  ret void, !dbg !1350
}

; Function Attrs: nounwind uwtable
define hidden void @je_tsd_prefork(ptr noundef %tsd) #0 !dbg !1351 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1353, metadata !DIExpression()), !dbg !1354
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1355, !tbaa !681
  %call = call ptr @tsd_tsdn(ptr noundef %0), !dbg !1356
  call void @je_malloc_mutex_prefork(ptr noundef %call, ptr noundef @tsd_nominal_tsds_lock), !dbg !1357
  ret void, !dbg !1358
}

declare !dbg !1359 void @je_malloc_mutex_prefork(ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_tsdn(ptr noundef %tsd) #1 !dbg !1362 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1366, metadata !DIExpression()), !dbg !1367
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1368, !tbaa !681
  ret ptr %0, !dbg !1369
}

; Function Attrs: nounwind uwtable
define hidden void @je_tsd_postfork_parent(ptr noundef %tsd) #0 !dbg !1370 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1372, metadata !DIExpression()), !dbg !1373
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1374, !tbaa !681
  %call = call ptr @tsd_tsdn(ptr noundef %0), !dbg !1375
  call void @je_malloc_mutex_postfork_parent(ptr noundef %call, ptr noundef @tsd_nominal_tsds_lock), !dbg !1376
  ret void, !dbg !1377
}

declare !dbg !1378 void @je_malloc_mutex_postfork_parent(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define hidden void @je_tsd_postfork_child(ptr noundef %tsd) #0 !dbg !1379 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1381, metadata !DIExpression()), !dbg !1382
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1383, !tbaa !681
  %call = call ptr @tsd_tsdn(ptr noundef %0), !dbg !1384
  call void @je_malloc_mutex_postfork_child(ptr noundef %call, ptr noundef @tsd_nominal_tsds_lock), !dbg !1385
  br label %do.body, !dbg !1386

do.body:                                          ; preds = %entry
  store ptr null, ptr @tsd_nominal_tsds, align 8, !dbg !1387, !tbaa !715
  br label %do.end, !dbg !1387

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !1389, !tbaa !681
  %call1 = call zeroext i8 @tsd_state_get(ptr noundef %1), !dbg !1391
  %conv = zext i8 %call1 to i32, !dbg !1391
  %cmp = icmp sle i32 %conv, 2, !dbg !1392
  br i1 %cmp, label %if.then, label %if.end, !dbg !1393

if.then:                                          ; preds = %do.end
  %2 = load ptr, ptr %tsd.addr, align 8, !dbg !1394, !tbaa !681
  call void @tsd_add_nominal(ptr noundef %2), !dbg !1396
  br label %if.end, !dbg !1397

if.end:                                           ; preds = %if.then, %do.end
  ret void, !dbg !1398
}

declare !dbg !1399 void @je_malloc_mutex_postfork_child(ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @atomic_enum_to_builtin(i32 noundef %mo) #1 !dbg !1400 {
entry:
  %retval = alloca i32, align 4
  %mo.addr = alloca i32, align 4
  store i32 %mo, ptr %mo.addr, align 4, !tbaa !702
  tail call void @llvm.dbg.declare(metadata ptr %mo.addr, metadata !1404, metadata !DIExpression()), !dbg !1405
  %0 = load i32, ptr %mo.addr, align 4, !dbg !1406, !tbaa !702
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
  ], !dbg !1407

sw.bb:                                            ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1408
  br label %do.end, !dbg !1408

sw.bb1:                                           ; preds = %entry
  store i32 2, ptr %retval, align 4, !dbg !1410
  br label %do.end, !dbg !1410

sw.bb2:                                           ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !1411
  br label %do.end, !dbg !1411

sw.bb3:                                           ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !1412
  br label %do.end, !dbg !1412

sw.bb4:                                           ; preds = %entry
  store i32 5, ptr %retval, align 4, !dbg !1413
  br label %do.end, !dbg !1413

sw.epilog:                                        ; preds = %entry
  br label %do.body, !dbg !1414

do.body:                                          ; preds = %sw.epilog
  unreachable, !dbg !1415

do.end:                                           ; preds = %sw.bb, %sw.bb1, %sw.bb2, %sw.bb3, %sw.bb4
  %1 = load i32, ptr %retval, align 4, !dbg !1417
  ret i32 %1, !dbg !1417
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @atomic_fence(i32 noundef %mo) #1 !dbg !1418 {
entry:
  %mo.addr = alloca i32, align 4
  store i32 %mo, ptr %mo.addr, align 4, !tbaa !702
  tail call void @llvm.dbg.declare(metadata ptr %mo.addr, metadata !1422, metadata !DIExpression()), !dbg !1423
  %0 = load i32, ptr %mo.addr, align 4, !dbg !1424, !tbaa !702
  %call = call i32 @atomic_enum_to_builtin(i32 noundef %0), !dbg !1425
  switch i32 %call, label %atomic.continue [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 3, label %release
    i32 4, label %acqrel
    i32 5, label %seqcst
  ], !dbg !1426

acquire:                                          ; preds = %entry, %entry
  fence acquire, !dbg !1426
  br label %atomic.continue, !dbg !1426

release:                                          ; preds = %entry
  fence release, !dbg !1426
  br label %atomic.continue, !dbg !1426

acqrel:                                           ; preds = %entry
  fence acq_rel, !dbg !1426
  br label %atomic.continue, !dbg !1426

seqcst:                                           ; preds = %entry
  fence seq_cst, !dbg !1426
  br label %atomic.continue, !dbg !1426

atomic.continue:                                  ; preds = %seqcst, %acqrel, %release, %acquire, %entry
  ret void, !dbg !1427
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @malloc_mutex_lock(ptr noundef %tsdn, ptr noundef %mutex) #4 !dbg !1428 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %mutex.addr = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !1430, metadata !DIExpression()), !dbg !1432
  store ptr %mutex, ptr %mutex.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %mutex.addr, metadata !1431, metadata !DIExpression()), !dbg !1433
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !1434, !tbaa !681
  %call = call ptr @tsdn_witness_tsdp_get(ptr noundef %0), !dbg !1435
  %1 = load ptr, ptr %mutex.addr, align 8, !dbg !1436, !tbaa !681
  %2 = getelementptr inbounds %struct.malloc_mutex_s, ptr %1, i32 0, i32 0, !dbg !1437
  call void @witness_assert_not_owner(ptr noundef %call, ptr noundef %2), !dbg !1438
  %3 = load ptr, ptr %mutex.addr, align 8, !dbg !1439, !tbaa !681
  %call1 = call zeroext i1 @malloc_mutex_trylock_final(ptr noundef %3), !dbg !1443
  br i1 %call1, label %if.then, label %if.end, !dbg !1444

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %mutex.addr, align 8, !dbg !1445, !tbaa !681
  call void @je_malloc_mutex_lock_slow(ptr noundef %4), !dbg !1447
  %5 = load ptr, ptr %mutex.addr, align 8, !dbg !1448, !tbaa !681
  %6 = getelementptr inbounds %struct.malloc_mutex_s, ptr %5, i32 0, i32 0, !dbg !1449
  %locked = getelementptr inbounds %struct.anon.2, ptr %6, i32 0, i32 2, !dbg !1449
  call void @atomic_store_b(ptr noundef %locked, i1 noundef zeroext true, i32 noundef 0), !dbg !1450
  br label %if.end, !dbg !1451

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %tsdn.addr, align 8, !dbg !1452, !tbaa !681
  %8 = load ptr, ptr %mutex.addr, align 8, !dbg !1453, !tbaa !681
  call void @mutex_owner_stats_update(ptr noundef %7, ptr noundef %8), !dbg !1454
  %9 = load ptr, ptr %tsdn.addr, align 8, !dbg !1455, !tbaa !681
  %call2 = call ptr @tsdn_witness_tsdp_get(ptr noundef %9), !dbg !1456
  %10 = load ptr, ptr %mutex.addr, align 8, !dbg !1457, !tbaa !681
  %11 = getelementptr inbounds %struct.malloc_mutex_s, ptr %10, i32 0, i32 0, !dbg !1458
  call void @witness_lock(ptr noundef %call2, ptr noundef %11), !dbg !1459
  ret void, !dbg !1460
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @malloc_mutex_unlock(ptr noundef %tsdn, ptr noundef %mutex) #4 !dbg !1461 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %mutex.addr = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !1463, metadata !DIExpression()), !dbg !1465
  store ptr %mutex, ptr %mutex.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %mutex.addr, metadata !1464, metadata !DIExpression()), !dbg !1466
  %0 = load ptr, ptr %mutex.addr, align 8, !dbg !1467, !tbaa !681
  %1 = getelementptr inbounds %struct.malloc_mutex_s, ptr %0, i32 0, i32 0, !dbg !1468
  %locked = getelementptr inbounds %struct.anon.2, ptr %1, i32 0, i32 2, !dbg !1468
  call void @atomic_store_b(ptr noundef %locked, i1 noundef zeroext false, i32 noundef 0), !dbg !1469
  %2 = load ptr, ptr %tsdn.addr, align 8, !dbg !1470, !tbaa !681
  %call = call ptr @tsdn_witness_tsdp_get(ptr noundef %2), !dbg !1471
  %3 = load ptr, ptr %mutex.addr, align 8, !dbg !1472, !tbaa !681
  %4 = getelementptr inbounds %struct.malloc_mutex_s, ptr %3, i32 0, i32 0, !dbg !1473
  call void @witness_unlock(ptr noundef %call, ptr noundef %4), !dbg !1474
  %5 = load ptr, ptr %mutex.addr, align 8, !dbg !1475, !tbaa !681
  %6 = getelementptr inbounds %struct.malloc_mutex_s, ptr %5, i32 0, i32 0, !dbg !1475
  %lock = getelementptr inbounds %struct.anon.2, ptr %6, i32 0, i32 1, !dbg !1475
  %call1 = call i32 @pthread_mutex_unlock(ptr noundef %lock) #10, !dbg !1475
  ret void, !dbg !1478
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @witness_assert_not_owner(ptr noundef %witness_tsdn, ptr noundef %witness) #4 !dbg !1479 {
entry:
  %witness_tsdn.addr = alloca ptr, align 8
  %witness.addr = alloca ptr, align 8
  %witness_tsd = alloca ptr, align 8
  %witnesses = alloca ptr, align 8
  %w = alloca ptr, align 8
  store ptr %witness_tsdn, ptr %witness_tsdn.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %witness_tsdn.addr, metadata !1483, metadata !DIExpression()), !dbg !1490
  store ptr %witness, ptr %witness.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %witness.addr, metadata !1484, metadata !DIExpression()), !dbg !1491
  call void @llvm.lifetime.start.p0(i64 8, ptr %witness_tsd) #10, !dbg !1492
  tail call void @llvm.dbg.declare(metadata ptr %witness_tsd, metadata !1485, metadata !DIExpression()), !dbg !1493
  call void @llvm.lifetime.start.p0(i64 8, ptr %witnesses) #10, !dbg !1494
  tail call void @llvm.dbg.declare(metadata ptr %witnesses, metadata !1487, metadata !DIExpression()), !dbg !1495
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #10, !dbg !1496
  tail call void @llvm.dbg.declare(metadata ptr %w, metadata !1489, metadata !DIExpression()), !dbg !1497
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #10, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 8, ptr %witnesses) #10, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 8, ptr %witness_tsd) #10, !dbg !1498
  ret void, !dbg !1498
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsdn_witness_tsdp_get(ptr noundef %tsdn) #1 !dbg !1499 {
entry:
  %retval = alloca ptr, align 8
  %tsdn.addr = alloca ptr, align 8
  %tsd = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !1503, metadata !DIExpression()), !dbg !1505
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !1506, !tbaa !681
  %call = call zeroext i1 @tsdn_null(ptr noundef %0), !dbg !1506
  br i1 %call, label %if.then, label %if.end, !dbg !1505

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1508
  br label %return, !dbg !1508

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsd) #10, !dbg !1505
  tail call void @llvm.dbg.declare(metadata ptr %tsd, metadata !1504, metadata !DIExpression()), !dbg !1505
  %1 = load ptr, ptr %tsdn.addr, align 8, !dbg !1505, !tbaa !681
  %call1 = call ptr @tsdn_tsd(ptr noundef %1), !dbg !1505
  store ptr %call1, ptr %tsd, align 8, !dbg !1505, !tbaa !681
  %2 = load ptr, ptr %tsd, align 8, !dbg !1505, !tbaa !681
  %call2 = call ptr @tsd_witness_tsdp_get(ptr noundef %2), !dbg !1505
  store ptr %call2, ptr %retval, align 8, !dbg !1505
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsd) #10, !dbg !1505
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8, !dbg !1505
  ret ptr %3, !dbg !1505
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @malloc_mutex_trylock_final(ptr noundef %mutex) #4 !dbg !1510 {
entry:
  %mutex.addr = alloca ptr, align 8
  store ptr %mutex, ptr %mutex.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %mutex.addr, metadata !1514, metadata !DIExpression()), !dbg !1515
  %0 = load ptr, ptr %mutex.addr, align 8, !dbg !1516, !tbaa !681
  %1 = getelementptr inbounds %struct.malloc_mutex_s, ptr %0, i32 0, i32 0, !dbg !1516
  %lock = getelementptr inbounds %struct.anon.2, ptr %1, i32 0, i32 1, !dbg !1516
  %call = call i32 @pthread_mutex_trylock(ptr noundef %lock) #10, !dbg !1516
  %cmp = icmp ne i32 %call, 0, !dbg !1516
  ret i1 %cmp, !dbg !1517
}

declare !dbg !1518 void @je_malloc_mutex_lock_slow(ptr noundef) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal void @atomic_store_b(ptr noundef %a, i1 noundef zeroext %val, i32 noundef %mo) #1 !dbg !1521 {
entry:
  %a.addr = alloca ptr, align 8
  %val.addr = alloca i8, align 1
  %mo.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !1526, metadata !DIExpression()), !dbg !1529
  %frombool = zext i1 %val to i8
  store i8 %frombool, ptr %val.addr, align 1, !tbaa !817
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1527, metadata !DIExpression()), !dbg !1529
  store i32 %mo, ptr %mo.addr, align 4, !tbaa !702
  tail call void @llvm.dbg.declare(metadata ptr %mo.addr, metadata !1528, metadata !DIExpression()), !dbg !1529
  %0 = load ptr, ptr %a.addr, align 8, !dbg !1529, !tbaa !681
  %repr = getelementptr inbounds %struct.atomic_b_t, ptr %0, i32 0, i32 0, !dbg !1529
  %1 = load i32, ptr %mo.addr, align 4, !dbg !1529, !tbaa !702
  %call = call i32 @atomic_enum_to_builtin(i32 noundef %1), !dbg !1529
  switch i32 %call, label %monotonic [
    i32 3, label %release
    i32 5, label %seqcst
  ], !dbg !1529

monotonic:                                        ; preds = %entry
  %2 = load i8, ptr %val.addr, align 1, !dbg !1529
  store atomic i8 %2, ptr %repr monotonic, align 1, !dbg !1529
  br label %atomic.continue, !dbg !1529

release:                                          ; preds = %entry
  %3 = load i8, ptr %val.addr, align 1, !dbg !1529
  store atomic i8 %3, ptr %repr release, align 1, !dbg !1529
  br label %atomic.continue, !dbg !1529

seqcst:                                           ; preds = %entry
  %4 = load i8, ptr %val.addr, align 1, !dbg !1529
  store atomic i8 %4, ptr %repr seq_cst, align 1, !dbg !1529
  br label %atomic.continue, !dbg !1529

atomic.continue:                                  ; preds = %seqcst, %release, %monotonic
  ret void, !dbg !1529
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @mutex_owner_stats_update(ptr noundef %tsdn, ptr noundef %mutex) #4 !dbg !1530 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %mutex.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !1532, metadata !DIExpression()), !dbg !1538
  store ptr %mutex, ptr %mutex.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %mutex.addr, metadata !1533, metadata !DIExpression()), !dbg !1539
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #10, !dbg !1540
  tail call void @llvm.dbg.declare(metadata ptr %data, metadata !1534, metadata !DIExpression()), !dbg !1541
  %0 = load ptr, ptr %mutex.addr, align 8, !dbg !1542, !tbaa !681
  %1 = getelementptr inbounds %struct.malloc_mutex_s, ptr %0, i32 0, i32 0, !dbg !1543
  %prof_data = getelementptr inbounds %struct.anon.2, ptr %1, i32 0, i32 0, !dbg !1543
  store ptr %prof_data, ptr %data, align 8, !dbg !1541, !tbaa !681
  %2 = load ptr, ptr %data, align 8, !dbg !1544, !tbaa !681
  %n_lock_ops = getelementptr inbounds %struct.mutex_prof_data_t, ptr %2, i32 0, i32 8, !dbg !1545
  %3 = load i64, ptr %n_lock_ops, align 8, !dbg !1546, !tbaa !1547
  %inc = add i64 %3, 1, !dbg !1546
  store i64 %inc, ptr %n_lock_ops, align 8, !dbg !1546, !tbaa !1547
  %4 = load ptr, ptr %data, align 8, !dbg !1551, !tbaa !681
  %prev_owner = getelementptr inbounds %struct.mutex_prof_data_t, ptr %4, i32 0, i32 7, !dbg !1553
  %5 = load ptr, ptr %prev_owner, align 8, !dbg !1553, !tbaa !1554
  %6 = load ptr, ptr %tsdn.addr, align 8, !dbg !1555, !tbaa !681
  %cmp = icmp ne ptr %5, %6, !dbg !1556
  br i1 %cmp, label %if.then, label %if.end, !dbg !1557

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %tsdn.addr, align 8, !dbg !1558, !tbaa !681
  %8 = load ptr, ptr %data, align 8, !dbg !1560, !tbaa !681
  %prev_owner1 = getelementptr inbounds %struct.mutex_prof_data_t, ptr %8, i32 0, i32 7, !dbg !1561
  store ptr %7, ptr %prev_owner1, align 8, !dbg !1562, !tbaa !1554
  %9 = load ptr, ptr %data, align 8, !dbg !1563, !tbaa !681
  %n_owner_switches = getelementptr inbounds %struct.mutex_prof_data_t, ptr %9, i32 0, i32 6, !dbg !1564
  %10 = load i64, ptr %n_owner_switches, align 8, !dbg !1565, !tbaa !1566
  %inc2 = add i64 %10, 1, !dbg !1565
  store i64 %inc2, ptr %n_owner_switches, align 8, !dbg !1565, !tbaa !1566
  br label %if.end, !dbg !1567

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #10, !dbg !1568
  ret void, !dbg !1569
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @witness_lock(ptr noundef %witness_tsdn, ptr noundef %witness) #4 !dbg !1570 {
entry:
  %witness_tsdn.addr = alloca ptr, align 8
  %witness.addr = alloca ptr, align 8
  %witness_tsd = alloca ptr, align 8
  %witnesses = alloca ptr, align 8
  %w = alloca ptr, align 8
  store ptr %witness_tsdn, ptr %witness_tsdn.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %witness_tsdn.addr, metadata !1574, metadata !DIExpression()), !dbg !1579
  store ptr %witness, ptr %witness.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %witness.addr, metadata !1575, metadata !DIExpression()), !dbg !1580
  call void @llvm.lifetime.start.p0(i64 8, ptr %witness_tsd) #10, !dbg !1581
  tail call void @llvm.dbg.declare(metadata ptr %witness_tsd, metadata !1576, metadata !DIExpression()), !dbg !1582
  call void @llvm.lifetime.start.p0(i64 8, ptr %witnesses) #10, !dbg !1583
  tail call void @llvm.dbg.declare(metadata ptr %witnesses, metadata !1577, metadata !DIExpression()), !dbg !1584
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #10, !dbg !1585
  tail call void @llvm.dbg.declare(metadata ptr %w, metadata !1578, metadata !DIExpression()), !dbg !1586
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #10, !dbg !1587
  call void @llvm.lifetime.end.p0(i64 8, ptr %witnesses) #10, !dbg !1587
  call void @llvm.lifetime.end.p0(i64 8, ptr %witness_tsd) #10, !dbg !1587
  ret void, !dbg !1587
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i1 @tsdn_null(ptr noundef %tsdn) #1 !dbg !1588 {
entry:
  %tsdn.addr = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !1594, metadata !DIExpression()), !dbg !1595
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !1596, !tbaa !681
  %cmp = icmp eq ptr %0, null, !dbg !1597
  ret i1 %cmp, !dbg !1598
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsdn_tsd(ptr noundef %tsdn) #1 !dbg !1599 {
entry:
  %tsdn.addr = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !1603, metadata !DIExpression()), !dbg !1604
  br label %do.body, !dbg !1605

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1606

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !1608, !tbaa !681
  %tsd = getelementptr inbounds %struct.tsdn_s, ptr %0, i32 0, i32 0, !dbg !1609
  ret ptr %tsd, !dbg !1610
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_witness_tsdp_get(ptr noundef %tsd) #1 !dbg !1611 {
entry:
  %tsd.addr = alloca ptr, align 8
  %state = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1615, metadata !DIExpression()), !dbg !1617
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #10, !dbg !1617
  tail call void @llvm.dbg.declare(metadata ptr %state, metadata !1616, metadata !DIExpression()), !dbg !1617
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1617, !tbaa !681
  %call = call zeroext i8 @tsd_state_get(ptr noundef %0), !dbg !1617
  store i8 %call, ptr %state, align 1, !dbg !1617, !tbaa !702
  br label %do.body, !dbg !1617

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1618

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1618

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !1617, !tbaa !681
  %call1 = call ptr @tsd_witness_tsdp_get_unsafe(ptr noundef %1), !dbg !1617
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #10, !dbg !1617
  ret ptr %call1, !dbg !1617
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_witness_tsdp_get_unsafe(ptr noundef %tsd) #1 !dbg !1620 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1622, metadata !DIExpression()), !dbg !1623
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1623, !tbaa !681
  %cant_access_tsd_items_directly_use_a_getter_or_setter_witness_tsd = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 16, !dbg !1623
  ret ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_witness_tsd, !dbg !1623
}

; Function Attrs: nounwind
declare !dbg !1624 i32 @pthread_mutex_trylock(ptr noundef) #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @witness_unlock(ptr noundef %witness_tsdn, ptr noundef %witness) #4 !dbg !1629 {
entry:
  %witness_tsdn.addr = alloca ptr, align 8
  %witness.addr = alloca ptr, align 8
  %witness_tsd = alloca ptr, align 8
  %witnesses = alloca ptr, align 8
  store ptr %witness_tsdn, ptr %witness_tsdn.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %witness_tsdn.addr, metadata !1631, metadata !DIExpression()), !dbg !1635
  store ptr %witness, ptr %witness.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %witness.addr, metadata !1632, metadata !DIExpression()), !dbg !1636
  call void @llvm.lifetime.start.p0(i64 8, ptr %witness_tsd) #10, !dbg !1637
  tail call void @llvm.dbg.declare(metadata ptr %witness_tsd, metadata !1633, metadata !DIExpression()), !dbg !1638
  call void @llvm.lifetime.start.p0(i64 8, ptr %witnesses) #10, !dbg !1639
  tail call void @llvm.dbg.declare(metadata ptr %witnesses, metadata !1634, metadata !DIExpression()), !dbg !1640
  call void @llvm.lifetime.end.p0(i64 8, ptr %witnesses) #10, !dbg !1641
  call void @llvm.lifetime.end.p0(i64 8, ptr %witness_tsd) #10, !dbg !1641
  ret void, !dbg !1641
}

; Function Attrs: nounwind
declare !dbg !1642 i32 @pthread_mutex_unlock(ptr noundef) #5

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @tsd_nominal(ptr noundef %tsd) #4 !dbg !1643 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1645, metadata !DIExpression()), !dbg !1646
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1647, !tbaa !681
  %call = call zeroext i8 @tsd_state_get(ptr noundef %0), !dbg !1648
  %conv = zext i8 %call to i32, !dbg !1648
  %cmp = icmp sle i32 %conv, 2, !dbg !1649
  ret i1 %cmp, !dbg !1650
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @tsd_local_slow(ptr noundef %tsd) #0 !dbg !1651 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1653, metadata !DIExpression()), !dbg !1654
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1655, !tbaa !681
  %call = call zeroext i1 @tsd_tcache_enabled_get(ptr noundef %0), !dbg !1656
  br i1 %call, label %lor.rhs, label %lor.end, !dbg !1657

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !1658, !tbaa !681
  %call1 = call signext i8 @tsd_reentrancy_level_get(ptr noundef %1), !dbg !1659
  %conv = sext i8 %call1 to i32, !dbg !1659
  %cmp = icmp sgt i32 %conv, 0, !dbg !1660
  br label %lor.end, !dbg !1657

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  ret i1 %2, !dbg !1661
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i1 @tsd_tcache_enabled_get(ptr noundef %tsd) #1 !dbg !1662 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1664, metadata !DIExpression()), !dbg !1665
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1665, !tbaa !681
  %call = call ptr @tsd_tcache_enabledp_get(ptr noundef %0), !dbg !1665
  %1 = load i8, ptr %call, align 1, !dbg !1665, !tbaa !817, !range !818, !noundef !819
  %tobool = trunc i8 %1 to i1, !dbg !1665
  ret i1 %tobool, !dbg !1665
}

; Function Attrs: alwaysinline nounwind uwtable
define internal signext i8 @tsd_reentrancy_level_get(ptr noundef %tsd) #1 !dbg !1666 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1670, metadata !DIExpression()), !dbg !1671
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1671, !tbaa !681
  %call = call ptr @tsd_reentrancy_levelp_get(ptr noundef %0), !dbg !1671
  %1 = load i8, ptr %call, align 1, !dbg !1671, !tbaa !702
  ret i8 %1, !dbg !1671
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_tcache_enabledp_get(ptr noundef %tsd) #1 !dbg !1672 {
entry:
  %tsd.addr = alloca ptr, align 8
  %state = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1674, metadata !DIExpression()), !dbg !1676
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #10, !dbg !1676
  tail call void @llvm.dbg.declare(metadata ptr %state, metadata !1675, metadata !DIExpression()), !dbg !1676
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1676, !tbaa !681
  %call = call zeroext i8 @tsd_state_get(ptr noundef %0), !dbg !1676
  store i8 %call, ptr %state, align 1, !dbg !1676, !tbaa !702
  br label %do.body, !dbg !1676

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1677

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1677

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !1676, !tbaa !681
  %call1 = call ptr @tsd_tcache_enabledp_get_unsafe(ptr noundef %1), !dbg !1676
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #10, !dbg !1676
  ret ptr %call1, !dbg !1676
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_tcache_enabledp_get_unsafe(ptr noundef %tsd) #1 !dbg !1679 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1681, metadata !DIExpression()), !dbg !1682
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1682, !tbaa !681
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache_enabled = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 1, !dbg !1682
  ret ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache_enabled, !dbg !1682
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind
declare !dbg !1683 i32 @pthread_setspecific(i32 noundef, ptr noundef) #5

declare !dbg !1686 void @je_malloc_write(ptr noundef) #3

; Function Attrs: noreturn nounwind
declare !dbg !1690 void @abort() #9

declare !dbg !1692 void @je_rtree_ctx_data_init(ptr noundef) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_rtree_ctxp_get_unsafe(ptr noundef %tsd) #1 !dbg !1696 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1700, metadata !DIExpression()), !dbg !1701
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1701, !tbaa !681
  %cant_access_tsd_items_directly_use_a_getter_or_setter_rtree_ctx = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 10, !dbg !1701
  ret ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_rtree_ctx, !dbg !1701
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_offset_statep_get(ptr noundef %tsd) #1 !dbg !1702 {
entry:
  %tsd.addr = alloca ptr, align 8
  %state = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1707, metadata !DIExpression()), !dbg !1709
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #10, !dbg !1709
  tail call void @llvm.dbg.declare(metadata ptr %state, metadata !1708, metadata !DIExpression()), !dbg !1709
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1709, !tbaa !681
  %call = call zeroext i8 @tsd_state_get(ptr noundef %0), !dbg !1709
  store i8 %call, ptr %state, align 1, !dbg !1709, !tbaa !702
  br label %do.body, !dbg !1709

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1710

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1710

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !1709, !tbaa !681
  %call1 = call ptr @tsd_offset_statep_get_unsafe(ptr noundef %1), !dbg !1709
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #10, !dbg !1709
  ret ptr %call1, !dbg !1709
}

declare !dbg !1712 zeroext i1 @je_tsd_tcache_enabled_data_init(ptr noundef) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_offset_statep_get_unsafe(ptr noundef %tsd) #1 !dbg !1714 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1716, metadata !DIExpression()), !dbg !1717
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1717, !tbaa !681
  %cant_access_tsd_items_directly_use_a_getter_or_setter_offset_state = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 5, !dbg !1717
  ret ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_offset_state, !dbg !1717
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_reentrancy_levelp_get_unsafe(ptr noundef %tsd) #1 !dbg !1718 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1720, metadata !DIExpression()), !dbg !1721
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1721, !tbaa !681
  %cant_access_tsd_items_directly_use_a_getter_or_setter_reentrancy_level = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 3, !dbg !1721
  ret ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_reentrancy_level, !dbg !1721
}

declare !dbg !1722 void @je_prof_tdata_cleanup(ptr noundef) #3

declare !dbg !1724 void @je_iarena_cleanup(ptr noundef) #3

declare !dbg !1725 void @je_arena_cleanup(ptr noundef) #3

declare !dbg !1726 void @je_arenas_tdata_cleanup(ptr noundef) #3

declare !dbg !1727 void @je_tcache_cleanup(ptr noundef) #3

declare !dbg !1728 void @je_witnesses_cleanup(ptr noundef) #3

; Function Attrs: nounwind
declare !dbg !1731 i32 @pthread_key_create(ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_fetch_impl(i1 noundef zeroext %init, i1 noundef zeroext %minimal) #1 !dbg !1736 {
entry:
  %retval = alloca ptr, align 8
  %init.addr = alloca i8, align 1
  %minimal.addr = alloca i8, align 1
  %tsd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %frombool = zext i1 %init to i8
  store i8 %frombool, ptr %init.addr, align 1, !tbaa !817
  tail call void @llvm.dbg.declare(metadata ptr %init.addr, metadata !1740, metadata !DIExpression()), !dbg !1743
  %frombool1 = zext i1 %minimal to i8
  store i8 %frombool1, ptr %minimal.addr, align 1, !tbaa !817
  tail call void @llvm.dbg.declare(metadata ptr %minimal.addr, metadata !1741, metadata !DIExpression()), !dbg !1744
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsd) #10, !dbg !1745
  tail call void @llvm.dbg.declare(metadata ptr %tsd, metadata !1742, metadata !DIExpression()), !dbg !1746
  %0 = load i8, ptr %init.addr, align 1, !dbg !1747, !tbaa !817, !range !818, !noundef !819
  %tobool = trunc i8 %0 to i1, !dbg !1747
  %call = call ptr @tsd_get(i1 noundef zeroext %tobool), !dbg !1748
  store ptr %call, ptr %tsd, align 8, !dbg !1746, !tbaa !681
  %1 = load i8, ptr %init.addr, align 1, !dbg !1749, !tbaa !817, !range !818, !noundef !819
  %tobool2 = trunc i8 %1 to i1, !dbg !1749
  br i1 %tobool2, label %if.end, label %land.lhs.true, !dbg !1751

land.lhs.true:                                    ; preds = %entry
  %call3 = call zeroext i1 @tsd_get_allocates(), !dbg !1752
  br i1 %call3, label %land.lhs.true4, label %if.end, !dbg !1753

land.lhs.true4:                                   ; preds = %land.lhs.true
  %2 = load ptr, ptr %tsd, align 8, !dbg !1754, !tbaa !681
  %cmp = icmp eq ptr %2, null, !dbg !1755
  br i1 %cmp, label %if.then, label %if.end, !dbg !1756

if.then:                                          ; preds = %land.lhs.true4
  store ptr null, ptr %retval, align 8, !dbg !1757
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1757

if.end:                                           ; preds = %land.lhs.true4, %land.lhs.true, %entry
  br label %do.body, !dbg !1759

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !1760

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1760

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %tsd, align 8, !dbg !1762, !tbaa !681
  %call5 = call zeroext i8 @tsd_state_get(ptr noundef %3), !dbg !1762
  %conv = zext i8 %call5 to i32, !dbg !1762
  %cmp6 = icmp ne i32 %conv, 0, !dbg !1762
  %lnot = xor i1 %cmp6, true, !dbg !1762
  %lnot8 = xor i1 %lnot, true, !dbg !1762
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !1762
  %conv9 = sext i32 %lnot.ext to i64, !dbg !1762
  %expval = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !1762
  %tobool10 = icmp ne i64 %expval, 0, !dbg !1762
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !1764

if.then11:                                        ; preds = %do.end
  %4 = load ptr, ptr %tsd, align 8, !dbg !1765, !tbaa !681
  %5 = load i8, ptr %minimal.addr, align 1, !dbg !1767, !tbaa !817, !range !818, !noundef !819
  %tobool12 = trunc i8 %5 to i1, !dbg !1767
  %call13 = call ptr @je_tsd_fetch_slow(ptr noundef %4, i1 noundef zeroext %tobool12), !dbg !1768
  store ptr %call13, ptr %retval, align 8, !dbg !1769
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1769

if.end14:                                         ; preds = %do.end
  br label %do.body15, !dbg !1770

do.body15:                                        ; preds = %if.end14
  br label %do.cond16, !dbg !1771

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !1771

do.end17:                                         ; preds = %do.cond16
  %6 = load ptr, ptr %tsd, align 8, !dbg !1773, !tbaa !681
  call void @tsd_assert_fast(ptr noundef %6), !dbg !1774
  %7 = load ptr, ptr %tsd, align 8, !dbg !1775, !tbaa !681
  store ptr %7, ptr %retval, align 8, !dbg !1776
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1776

cleanup:                                          ; preds = %do.end17, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsd) #10, !dbg !1777
  %8 = load ptr, ptr %retval, align 8, !dbg !1777
  ret ptr %8, !dbg !1777
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_get(i1 noundef zeroext %init) #1 !dbg !1778 {
entry:
  %init.addr = alloca i8, align 1
  %frombool = zext i1 %init to i8
  store i8 %frombool, ptr %init.addr, align 1, !tbaa !817
  tail call void @llvm.dbg.declare(metadata ptr %init.addr, metadata !1782, metadata !DIExpression()), !dbg !1783
  %0 = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls), !dbg !1784
  ret ptr %0, !dbg !1785
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i1 @tsd_get_allocates() #1 !dbg !1786 {
entry:
  ret i1 false, !dbg !1787
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @tsd_assert_fast(ptr noundef %tsd) #1 !dbg !1788 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1790, metadata !DIExpression()), !dbg !1791
  br label %do.body, !dbg !1792

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1793

do.end:                                           ; preds = %do.body
  ret void, !dbg !1795
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_arenas_tdata_bypassp_get_unsafe(ptr noundef %tsd) #1 !dbg !1796 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !681
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1798, metadata !DIExpression()), !dbg !1799
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !1799, !tbaa !681
  %cant_access_tsd_items_directly_use_a_getter_or_setter_arenas_tdata_bypass = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 2, !dbg !1799
  ret ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_arenas_tdata_bypass, !dbg !1799
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!669, !670, !671, !672, !673, !674}
!llvm.ident = !{!675}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "je_tsd_tls", scope: !2, file: !3, line: 24, type: !40, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !37, globals: !633, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/tsd.c", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "76b8286fc3bcdce8e2bd23aac0176345")
!4 = !{!5, !11, !18, !26}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "include/jemalloc/internal/mutex.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "65e15f9ff43bcaad02e9b4e0fcbf7631")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "malloc_mutex_rank_exclusive", value: 0)
!10 = !DIEnumerator(name: "malloc_mutex_address_ordered", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 12, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "include/jemalloc/internal/extent_structs.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "0d97df4eb670615e0551e631af75b655")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "extent_state_active", value: 0)
!15 = !DIEnumerator(name: "extent_state_dirty", value: 1)
!16 = !DIEnumerator(name: "extent_state_muzzy", value: 2)
!17 = !DIEnumerator(name: "extent_state_retained", value: 3)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 8, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "include/jemalloc/internal/atomic_gcc_atomic.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "08b4de137309508f556f5697e2840f8f")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "atomic_memory_order_relaxed", value: 0)
!22 = !DIEnumerator(name: "atomic_memory_order_acquire", value: 1)
!23 = !DIEnumerator(name: "atomic_memory_order_release", value: 2)
!24 = !DIEnumerator(name: "atomic_memory_order_acq_rel", value: 3)
!25 = !DIEnumerator(name: "atomic_memory_order_seq_cst", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 125, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "include/jemalloc/internal/tsd.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "9f081fe8da1112924f8bffbbaecc948d")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36}
!29 = !DIEnumerator(name: "tsd_state_nominal", value: 0)
!30 = !DIEnumerator(name: "tsd_state_nominal_slow", value: 1)
!31 = !DIEnumerator(name: "tsd_state_nominal_recompute", value: 2)
!32 = !DIEnumerator(name: "tsd_state_nominal_max", value: 2)
!33 = !DIEnumerator(name: "tsd_state_minimal_initialized", value: 3)
!34 = !DIEnumerator(name: "tsd_state_purgatory", value: 4)
!35 = !DIEnumerator(name: "tsd_state_reincarnated", value: 5)
!36 = !DIEnumerator(name: "tsd_state_uninitialized", value: 6)
!37 = !{!38, !39, !627, !632, !67, !257, !116}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "tsd_t", file: !41, line: 6, baseType: !42)
!41 = !DIFile(filename: "include/jemalloc/internal/tsd_types.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "d541d97bbf6e4823e1bac63f2add6f7d")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tsd_s", file: !27, line: 185, size: 49728, elements: !43)
!43 = !{!44, !55, !57, !58, !63, !66, !70, !71, !72, !76, !246, !276, !603, !604, !610, !616, !617}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !42, file: !27, line: 196, baseType: !45, size: 8)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_u8_t", file: !46, line: 76, baseType: !47)
!46 = !DIFile(filename: "include/jemalloc/internal/atomic.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "f4ec326d3284c13a241314e27e68ccae")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 76, size: 8, elements: !48)
!48 = !{!49}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !47, file: !46, line: 76, baseType: !50, size: 8)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !51, line: 24, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !53, line: 38, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!54 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_tcache_enabled", scope: !42, file: !27, line: 199, baseType: !56, size: 8, offset: 8)
!56 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_arenas_tdata_bypass", scope: !42, file: !27, line: 199, baseType: !56, size: 8, offset: 16)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_reentrancy_level", scope: !42, file: !27, line: 199, baseType: !59, size: 8, offset: 24)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !60, line: 24, baseType: !61)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !53, line: 37, baseType: !62)
!62 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_narenas_tdata", scope: !42, file: !27, line: 199, baseType: !64, size: 32, offset: 32)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !51, line: 26, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !53, line: 42, baseType: !7)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_offset_state", scope: !42, file: !27, line: 199, baseType: !67, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !51, line: 27, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !53, line: 45, baseType: !69)
!69 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_thread_allocated", scope: !42, file: !27, line: 199, baseType: !67, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_thread_deallocated", scope: !42, file: !27, line: 199, baseType: !67, size: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_bytes_until_sample", scope: !42, file: !27, line: 199, baseType: !73, size: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !60, line: 27, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !53, line: 44, baseType: !75)
!75 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_prof_tdata", scope: !42, file: !27, line: 199, baseType: !77, size: 64, offset: 320)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "prof_tdata_t", file: !79, line: 9, baseType: !80)
!79 = !DIFile(filename: "include/jemalloc/internal/prof_types.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "893bb7e5be32d3ed1d6a52ee080689bf")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prof_tdata_s", file: !81, line: 135, size: 9472, elements: !82)
!81 = !DIFile(filename: "include/jemalloc/internal/prof_structs.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "d36bd8a0b03505e79f5871fe1b41e8be")
!82 = !{!83, !185, !186, !187, !189, !190, !191, !196, !197, !228, !229, !230, !231, !232, !233, !234, !242}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !80, file: !81, line: 136, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "malloc_mutex_t", file: !6, line: 19, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "malloc_mutex_s", file: !6, line: 20, size: 896, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, scope: !86, file: !6, line: 21, baseType: !89, size: 896)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !86, file: !6, line: 21, size: 896, elements: !90)
!90 = !{!91, !159, !183}
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !6, line: 22, baseType: !92, size: 896)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !89, file: !6, line: 22, size: 896, elements: !93)
!93 = !{!94, !122, !154}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "prof_data", scope: !92, file: !6, line: 31, baseType: !95, size: 512)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "mutex_prof_data_t", file: !96, line: 106, baseType: !97)
!96 = !DIFile(filename: "include/jemalloc/internal/mutex_prof.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "4a1798f9510ae9d91f888a30d80fb7cc")
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !96, line: 76, size: 512, elements: !98)
!98 = !{!99, !105, !106, !107, !108, !109, !114, !115, !121}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "tot_wait_time", scope: !97, file: !96, line: 82, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "nstime_t", file: !101, line: 10, baseType: !102)
!101 = !DIFile(filename: "include/jemalloc/internal/nstime.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "3b54840f5e61842f175755b038667aab")
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 8, size: 64, elements: !103)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !102, file: !101, line: 9, baseType: !67, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "max_wait_time", scope: !97, file: !96, line: 84, baseType: !100, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "n_wait_times", scope: !97, file: !96, line: 86, baseType: !67, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "n_spin_acquired", scope: !97, file: !96, line: 88, baseType: !67, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "max_n_thds", scope: !97, file: !96, line: 90, baseType: !64, size: 32, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "n_waiting_thds", scope: !97, file: !96, line: 92, baseType: !110, size: 32, offset: 288)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_u32_t", file: !46, line: 78, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 78, size: 32, elements: !112)
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !111, file: !46, line: 78, baseType: !64, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "n_owner_switches", scope: !97, file: !96, line: 101, baseType: !67, size: 64, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "prev_owner", scope: !97, file: !96, line: 103, baseType: !116, size: 64, offset: 384)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "tsdn_t", file: !41, line: 7, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tsdn_s", file: !27, line: 219, size: 49728, elements: !119)
!119 = !{!120}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tsd", scope: !118, file: !27, line: 220, baseType: !40, size: 49728)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "n_lock_ops", scope: !97, file: !96, line: 105, baseType: !67, size: 64, offset: 448)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !92, file: !6, line: 44, baseType: !123, size: 320, offset: 512)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !124, line: 72, baseType: !125)
!124 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !124, line: 67, size: 320, elements: !126)
!126 = !{!127, !148, !153}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !125, file: !124, line: 69, baseType: !128, size: 320)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !129, line: 22, size: 320, elements: !130)
!129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!130 = !{!131, !133, !134, !135, !136, !137, !139, !140}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !128, file: !129, line: 24, baseType: !132, size: 32)
!132 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !128, file: !129, line: 25, baseType: !7, size: 32, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !128, file: !129, line: 26, baseType: !132, size: 32, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !128, file: !129, line: 28, baseType: !7, size: 32, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !128, file: !129, line: 32, baseType: !132, size: 32, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !128, file: !129, line: 34, baseType: !138, size: 16, offset: 160)
!138 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !128, file: !129, line: 35, baseType: !138, size: 16, offset: 176)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !128, file: !129, line: 36, baseType: !141, size: 128, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !142, line: 55, baseType: !143)
!142 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !142, line: 51, size: 128, elements: !144)
!144 = !{!145, !147}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !143, file: !142, line: 53, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !143, file: !142, line: 54, baseType: !146, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !125, file: !124, line: 70, baseType: !149, size: 320)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 320, elements: !151)
!150 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!151 = !{!152}
!152 = !DISubrange(count: 40)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !125, file: !124, line: 71, baseType: !75, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !92, file: !6, line: 50, baseType: !155, size: 8, offset: 832)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_b_t", file: !46, line: 68, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 68, size: 8, elements: !157)
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !156, file: !46, line: 68, baseType: !56, size: 8)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "witness", scope: !89, file: !6, line: 59, baseType: !160, size: 384)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "witness_t", file: !161, line: 74, baseType: !162)
!161 = !DIFile(filename: "include/jemalloc/internal/witness.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "fb8675f0725894e4a6abb6181efc1d0a")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "witness_s", file: !161, line: 80, size: 384, elements: !163)
!163 = !{!164, !167, !169, !176, !177}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !162, file: !161, line: 82, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "rank", scope: !162, file: !161, line: 88, baseType: !168, size: 32, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "witness_rank_t", file: !161, line: 75, baseType: !7)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !162, file: !161, line: 95, baseType: !170, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "witness_comp_t", file: !161, line: 77, baseType: !172)
!172 = !DISubroutineType(types: !173)
!173 = !{!132, !174, !38, !174, !38}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !162, file: !161, line: 98, baseType: !38, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !162, file: !161, line: 101, baseType: !178, size: 128, offset: 256)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !162, file: !161, line: 101, size: 128, elements: !179)
!179 = !{!180, !182}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "qre_next", scope: !178, file: !161, line: 101, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "qre_prev", scope: !178, file: !161, line: 101, baseType: !181, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "lock_order", scope: !89, file: !6, line: 60, baseType: !184, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "malloc_mutex_lock_order_t", file: !6, line: 17, baseType: !5)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "thr_uid", scope: !80, file: !81, line: 139, baseType: !67, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "thr_discrim", scope: !80, file: !81, line: 145, baseType: !67, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "thread_name", scope: !80, file: !81, line: 148, baseType: !188, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !80, file: !81, line: 150, baseType: !56, size: 8, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "expired", scope: !80, file: !81, line: 151, baseType: !56, size: 8, offset: 264)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "tdata_link", scope: !80, file: !81, line: 153, baseType: !192, size: 128, offset: 320)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !80, file: !81, line: 153, size: 128, elements: !193)
!193 = !{!194, !195}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "rbn_left", scope: !192, file: !81, line: 153, baseType: !77, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "rbn_right_red", scope: !192, file: !81, line: 153, baseType: !77, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "tctx_uid_next", scope: !80, file: !81, line: 160, baseType: !67, size: 64, offset: 448)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "bt2tctx", scope: !80, file: !81, line: 168, baseType: !198, size: 384, offset: 512)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "ckh_t", file: !199, line: 63, baseType: !200)
!199 = !DIFile(filename: "include/jemalloc/internal/ckh.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "764fcd222e751d77d1875da9f00741d3")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !199, line: 34, size: 384, elements: !201)
!201 = !{!202, !203, !206, !207, !208, !216, !221}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "prng_state", scope: !200, file: !199, line: 45, baseType: !67, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !200, file: !199, line: 48, baseType: !204, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !205, line: 70, baseType: !69)
!205 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!206 = !DIDerivedType(tag: DW_TAG_member, name: "lg_minbuckets", scope: !200, file: !199, line: 54, baseType: !7, size: 32, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "lg_curbuckets", scope: !200, file: !199, line: 55, baseType: !7, size: 32, offset: 160)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !200, file: !199, line: 58, baseType: !209, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "ckh_hash_t", file: !199, line: 24, baseType: !211)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !213, !215}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "keycomp", scope: !200, file: !199, line: 59, baseType: !217, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "ckh_keycomp_t", file: !199, line: 25, baseType: !219)
!219 = !DISubroutineType(types: !220)
!220 = !{!56, !213, !213}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tab", scope: !200, file: !199, line: 62, baseType: !222, size: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "ckhc_t", file: !199, line: 31, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !199, line: 28, size: 128, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !224, file: !199, line: 29, baseType: !213, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !224, file: !199, line: 30, baseType: !213, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "prng_state", scope: !80, file: !81, line: 171, baseType: !67, size: 64, offset: 896)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "enq", scope: !80, file: !81, line: 174, baseType: !56, size: 8, offset: 960)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "enq_idump", scope: !80, file: !81, line: 175, baseType: !56, size: 8, offset: 968)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "enq_gdump", scope: !80, file: !81, line: 176, baseType: !56, size: 8, offset: 976)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "dumping", scope: !80, file: !81, line: 184, baseType: !56, size: 8, offset: 984)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !80, file: !81, line: 190, baseType: !56, size: 8, offset: 992)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "cnt_summed", scope: !80, file: !81, line: 193, baseType: !235, size: 256, offset: 1024)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "prof_cnt_t", file: !79, line: 6, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prof_cnt_s", file: !81, line: 32, size: 256, elements: !237)
!237 = !{!238, !239, !240, !241}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "curobjs", scope: !236, file: !81, line: 34, baseType: !67, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "curbytes", scope: !236, file: !81, line: 35, baseType: !67, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "accumobjs", scope: !236, file: !81, line: 36, baseType: !67, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "accumbytes", scope: !236, file: !81, line: 37, baseType: !67, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !80, file: !81, line: 196, baseType: !243, size: 8192, offset: 1280)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 8192, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_rtree_ctx", scope: !42, file: !27, line: 199, baseType: !247, size: 3072, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtree_ctx_t", file: !248, line: 40, baseType: !249)
!248 = !DIFile(filename: "include/jemalloc/internal/rtree_tsd.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "e327e8ed7b8fd5299eed4833d6c507b8")
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtree_ctx_s", file: !248, line: 41, size: 3072, elements: !250)
!250 = !{!251, !272}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !249, file: !248, line: 43, baseType: !252, size: 2048)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 2048, elements: !270)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtree_ctx_cache_elm_t", file: !248, line: 34, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtree_ctx_cache_elm_s", file: !248, line: 35, size: 128, elements: !255)
!255 = !{!256, !259}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "leafkey", scope: !254, file: !248, line: 36, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !258, line: 90, baseType: !69)
!258 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!259 = !DIDerivedType(tag: DW_TAG_member, name: "leaf", scope: !254, file: !248, line: 37, baseType: !260, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtree_leaf_elm_t", file: !248, line: 32, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtree_leaf_elm_s", file: !263, line: 46, size: 64, elements: !264)
!263 = !DIFile(filename: "include/jemalloc/internal/rtree.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "82bfd1f58142b0639c309a4aeac9c506")
!264 = !{!265}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "le_bits", scope: !262, file: !263, line: 60, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_p_t", file: !46, line: 62, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 62, size: 64, elements: !268)
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !267, file: !46, line: 62, baseType: !38, size: 64)
!270 = !{!271}
!271 = !DISubrange(count: 16)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "l2_cache", scope: !249, file: !248, line: 45, baseType: !273, size: 1024, offset: 2048)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 1024, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 8)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_iarena", scope: !42, file: !27, line: 199, baseType: !277, size: 64, offset: 3456)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "arena_t", file: !279, line: 18, baseType: !280)
!279 = !DIFile(filename: "include/jemalloc/internal/arena_types.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "018de9af3ebfea99a17e9e8d011c0262")
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arena_s", file: !281, line: 77, size: 235968, elements: !282)
!281 = !DIFile(filename: "include/jemalloc/internal/arena_structs_b.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "3e62069c856b92d645a4c13996ca2396")
!282 = !{!283, !291, !292, !293, !348, !418, !422, !423, !428, !429, !430, !431, !432, !477, !478, !503, !504, !505, !529, !530, !532, !533, !534, !539, !540, !541, !572, !602}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "nthreads", scope: !280, file: !281, line: 91, baseType: !284, size: 64)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 64, elements: !289)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_u_t", file: !46, line: 70, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 70, size: 32, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !286, file: !46, line: 70, baseType: !7, size: 32)
!289 = !{!290}
!290 = !DISubrange(count: 2)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "binshard_next", scope: !280, file: !281, line: 94, baseType: !285, size: 32, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "last_thd", scope: !280, file: !281, line: 101, baseType: !116, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !280, file: !281, line: 104, baseType: !294, size: 81280, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "arena_stats_t", file: !295, line: 81, baseType: !296)
!295 = !DIFile(filename: "include/jemalloc/internal/arena_stats.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "797d71161d3430446f16b1c8dd4487de")
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arena_stats_s", file: !295, line: 82, size: 81280, elements: !297)
!297 = !{!298, !303, !304, !305, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !334, !347}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "mapped", scope: !296, file: !295, line: 88, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_zu_t", file: !46, line: 72, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 72, size: 64, elements: !301)
!301 = !{!302}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !300, file: !46, line: 72, baseType: !204, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "retained", scope: !296, file: !295, line: 95, baseType: !299, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "extent_avail", scope: !296, file: !295, line: 98, baseType: !299, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "decay_dirty", scope: !296, file: !295, line: 100, baseType: !306, size: 192, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "arena_stats_decay_t", file: !295, line: 50, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arena_stats_decay_s", file: !295, line: 51, size: 192, elements: !308)
!308 = !{!309, !315, !316}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "npurge", scope: !307, file: !295, line: 53, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "arena_stats_u64_t", file: !295, line: 17, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_u64_t", file: !46, line: 81, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 81, size: 64, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !312, file: !46, line: 81, baseType: !67, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "nmadvise", scope: !307, file: !295, line: 55, baseType: !310, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "purged", scope: !307, file: !295, line: 57, baseType: !310, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "decay_muzzy", scope: !296, file: !295, line: 101, baseType: !306, size: 192, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !296, file: !295, line: 103, baseType: !299, size: 64, offset: 576)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !296, file: !295, line: 104, baseType: !299, size: 64, offset: 640)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "resident", scope: !296, file: !295, line: 105, baseType: !299, size: 64, offset: 704)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_thp", scope: !296, file: !295, line: 106, baseType: !299, size: 64, offset: 768)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_large", scope: !296, file: !295, line: 108, baseType: !299, size: 64, offset: 832)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "nmalloc_large", scope: !296, file: !295, line: 109, baseType: !310, size: 64, offset: 896)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "ndalloc_large", scope: !296, file: !295, line: 110, baseType: !310, size: 64, offset: 960)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "nfills_large", scope: !296, file: !295, line: 111, baseType: !310, size: 64, offset: 1024)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "nflushes_large", scope: !296, file: !295, line: 112, baseType: !310, size: 64, offset: 1088)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "nrequests_large", scope: !296, file: !295, line: 113, baseType: !310, size: 64, offset: 1152)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "abandoned_vm", scope: !296, file: !295, line: 116, baseType: !299, size: 64, offset: 1216)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tcache_bytes", scope: !296, file: !295, line: 119, baseType: !299, size: 64, offset: 1280)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "mutex_prof_data", scope: !296, file: !295, line: 121, baseType: !331, size: 4608, offset: 1344)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 4608, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 9)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "lstats", scope: !296, file: !295, line: 124, baseType: !335, size: 75264, offset: 5952)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 75264, elements: !345)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "arena_stats_large_t", file: !295, line: 23, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arena_stats_large_s", file: !295, line: 24, size: 384, elements: !338)
!338 = !{!339, !340, !341, !342, !343, !344}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "nmalloc", scope: !337, file: !295, line: 29, baseType: !310, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ndalloc", scope: !337, file: !295, line: 30, baseType: !310, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "nrequests", scope: !337, file: !295, line: 37, baseType: !310, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "nfills", scope: !337, file: !295, line: 43, baseType: !310, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "nflushes", scope: !337, file: !295, line: 44, baseType: !310, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "curlextents", scope: !337, file: !295, line: 47, baseType: !204, size: 64, offset: 320)
!345 = !{!346}
!346 = !DISubrange(count: 196)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "uptime", scope: !296, file: !295, line: 127, baseType: !100, size: 64, offset: 81216)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tcache_ql", scope: !280, file: !281, line: 113, baseType: !349, size: 64, offset: 81472)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !280, file: !281, line: 113, size: 64, elements: !350)
!350 = !{!351}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "qlh_first", scope: !349, file: !281, line: 113, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcache_t", file: !354, line: 6, baseType: !355)
!354 = !DIFile(filename: "include/jemalloc/internal/tcache_types.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "9b2852fa8ffe77d9fa097e3d9e569fb0")
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcache_s", file: !356, line: 13, size: 45632, elements: !357)
!356 = !DIFile(filename: "include/jemalloc/internal/tcache_structs.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "639b312cb1f4b9dc92d248ca33e2878d")
!357 = !{!358, !359, !368, !386, !391, !396, !397, !410, !411, !414, !416}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "prof_accumbytes", scope: !355, file: !356, line: 20, baseType: !67, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "gc_ticker", scope: !355, file: !356, line: 22, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "ticker_t", file: !361, line: 17, baseType: !362)
!361 = !DIFile(filename: "include/jemalloc/internal/ticker.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "09d45aef42bd3e97af1455c4c839bc49")
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !361, line: 14, size: 64, elements: !363)
!363 = !{!364, !367}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !362, file: !361, line: 15, baseType: !365, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !60, line: 26, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !53, line: 41, baseType: !132)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "nticks", scope: !362, file: !361, line: 16, baseType: !365, size: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "bins_small", scope: !355, file: !356, line: 28, baseType: !369, size: 6912, offset: 128)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 6912, elements: !384)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_bin_t", file: !371, line: 43, baseType: !372)
!371 = !DIFile(filename: "include/jemalloc/internal/cache_bin.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "9d448b7baf024f90644dd6d3180d79e7")
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_bin_s", file: !371, line: 44, size: 192, elements: !373)
!373 = !{!374, !376, !377, !382}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "low_water", scope: !372, file: !371, line: 46, baseType: !375, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_bin_sz_t", file: !371, line: 22, baseType: !365)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ncached", scope: !372, file: !371, line: 48, baseType: !375, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "tstats", scope: !372, file: !371, line: 54, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_bin_stats_t", file: !371, line: 24, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_bin_stats_s", file: !371, line: 25, size: 64, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "nrequests", scope: !379, file: !371, line: 30, baseType: !67, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "avail", scope: !372, file: !371, line: 64, baseType: !383, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!384 = !{!385}
!385 = !DISubrange(count: 36)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !355, file: !356, line: 35, baseType: !387, size: 128, offset: 7040)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !355, file: !356, line: 35, size: 128, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "qre_next", scope: !387, file: !356, line: 35, baseType: !352, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "qre_prev", scope: !387, file: !356, line: 35, baseType: !352, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "tsd_link", scope: !355, file: !356, line: 38, baseType: !392, size: 128, offset: 7168)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !355, file: !356, line: 38, size: 128, elements: !393)
!393 = !{!394, !395}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "qre_next", scope: !392, file: !356, line: 38, baseType: !39, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "qre_prev", scope: !392, file: !356, line: 38, baseType: !39, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "in_hook", scope: !355, file: !356, line: 39, baseType: !56, size: 8, offset: 7296)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "cache_bin_array_descriptor", scope: !355, file: !356, line: 46, baseType: !398, size: 256, offset: 7360)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_bin_array_descriptor_t", file: !371, line: 67, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_bin_array_descriptor_s", file: !371, line: 68, size: 256, elements: !400)
!400 = !{!401, !407, !409}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !399, file: !371, line: 73, baseType: !402, size: 128)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !371, line: 73, size: 128, elements: !403)
!403 = !{!404, !406}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "qre_next", scope: !402, file: !371, line: 73, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "qre_prev", scope: !402, file: !371, line: 73, baseType: !405, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "bins_small", scope: !399, file: !371, line: 75, baseType: !408, size: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "bins_large", scope: !399, file: !371, line: 76, baseType: !408, size: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "arena", scope: !355, file: !356, line: 49, baseType: !277, size: 64, offset: 7616)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "next_gc_bin", scope: !355, file: !356, line: 51, baseType: !412, size: 32, offset: 7680)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "szind_t", file: !413, line: 10, baseType: !7)
!413 = !DIFile(filename: "include/jemalloc/internal/jemalloc_internal_types.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "9fabb1c7fca697e7a645839e73a4d9d5")
!414 = !DIDerivedType(tag: DW_TAG_member, name: "lg_fill_div", scope: !355, file: !356, line: 53, baseType: !415, size: 288, offset: 7712)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 288, elements: !384)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "bins_large", scope: !355, file: !356, line: 59, baseType: !417, size: 37632, offset: 8000)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 37632, elements: !345)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "cache_bin_array_descriptor_ql", scope: !280, file: !281, line: 114, baseType: !419, size: 64, offset: 81536)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !280, file: !281, line: 114, size: 64, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "qlh_first", scope: !419, file: !281, line: 114, baseType: !405, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "tcache_ql_mtx", scope: !280, file: !281, line: 115, baseType: !85, size: 896, offset: 81600)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "prof_accum", scope: !280, file: !281, line: 118, baseType: !424, size: 64, offset: 82496)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "prof_accum_t", file: !79, line: 5, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prof_accum_s", file: !81, line: 23, size: 64, elements: !426)
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "accumbytes", scope: !425, file: !81, line: 28, baseType: !311, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "offset_state", scope: !280, file: !281, line: 126, baseType: !299, size: 64, offset: 82560)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "extent_sn_next", scope: !280, file: !281, line: 133, baseType: !299, size: 64, offset: 82624)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "dss_prec", scope: !280, file: !281, line: 140, baseType: !285, size: 32, offset: 82688)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "nactive", scope: !280, file: !281, line: 147, baseType: !299, size: 64, offset: 82752)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "large", scope: !280, file: !281, line: 154, baseType: !433, size: 64, offset: 82816)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "extent_list_t", file: !12, line: 184, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 184, size: 64, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "qlh_first", scope: !434, file: !12, line: 184, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "extent_t", file: !439, line: 4, baseType: !440)
!439 = !DIFile(filename: "include/jemalloc/internal/extent_types.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "feed1f2f8b22932a2312223b59645f74")
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extent_s", file: !12, line: 20, size: 1024, elements: !441)
!441 = !{!442, !443, !444, !449, !454, !460}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "e_bits", scope: !440, file: !12, line: 92, baseType: !67, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "e_addr", scope: !440, file: !12, line: 139, baseType: !38, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !12, line: 141, baseType: !445, size: 64, offset: 128)
!445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !12, line: 141, size: 64, elements: !446)
!446 = !{!447, !448}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "e_size_esn", scope: !445, file: !12, line: 149, baseType: !204, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "e_bsize", scope: !445, file: !12, line: 153, baseType: !204, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ql_link", scope: !440, file: !12, line: 163, baseType: !450, size: 128, offset: 192)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !440, file: !12, line: 163, size: 128, elements: !451)
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "qre_next", scope: !450, file: !12, line: 163, baseType: !437, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "qre_prev", scope: !450, file: !12, line: 163, baseType: !437, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "ph_link", scope: !440, file: !12, line: 169, baseType: !455, size: 192, offset: 320)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !440, file: !12, line: 169, size: 192, elements: !456)
!456 = !{!457, !458, !459}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "phn_prev", scope: !455, file: !12, line: 169, baseType: !437, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "phn_next", scope: !455, file: !12, line: 169, baseType: !437, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "phn_lchild", scope: !455, file: !12, line: 169, baseType: !437, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !12, line: 171, baseType: !461, size: 512, offset: 512)
!461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !12, line: 171, size: 512, elements: !462)
!462 = !{!463, !472}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "e_slab_data", scope: !461, file: !12, line: 173, baseType: !464, size: 512)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "arena_slab_data_t", file: !279, line: 16, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arena_slab_data_s", file: !466, line: 6, size: 512, elements: !467)
!466 = !DIFile(filename: "include/jemalloc/internal/arena_structs_a.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "7b5b961b3d2ed5fcaf6c26f10c066bf6")
!467 = !{!468}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !465, file: !466, line: 8, baseType: !469, size: 512)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 512, elements: !274)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_t", file: !471, line: 8, baseType: !69)
!471 = !DIFile(filename: "include/jemalloc/internal/bitmap.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "58e1c4ef6d1ba9c779b287089e4d138b")
!472 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !12, line: 176, baseType: !473, size: 128)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !461, file: !12, line: 176, size: 128, elements: !474)
!474 = !{!475, !476}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "e_alloc_time", scope: !473, file: !12, line: 178, baseType: !100, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "e_prof_tctx", scope: !473, file: !12, line: 180, baseType: !266, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "large_mtx", scope: !280, file: !281, line: 156, baseType: !85, size: 896, offset: 82880)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "extents_dirty", scope: !280, file: !281, line: 164, baseType: !479, size: 39744, offset: 83776)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "extents_t", file: !439, line: 5, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extents_s", file: !12, line: 189, size: 39744, elements: !481)
!481 = !{!482, !483, !491, !493, !494, !498, !499, !500, !502}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "mtx", scope: !480, file: !12, line: 190, baseType: !85, size: 896)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "heaps", scope: !480, file: !12, line: 197, baseType: !484, size: 12800, offset: 896)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 12800, elements: !489)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "extent_heap_t", file: !12, line: 186, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 186, size: 64, elements: !487)
!487 = !{!488}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ph_root", scope: !486, file: !12, line: 186, baseType: !437, size: 64)
!489 = !{!490}
!490 = !DISubrange(count: 200)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !480, file: !12, line: 198, baseType: !492, size: 12800, offset: 13696)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 12800, elements: !489)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !480, file: !12, line: 199, baseType: !492, size: 12800, offset: 26496)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !480, file: !12, line: 206, baseType: !495, size: 256, offset: 39296)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 256, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 4)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !480, file: !12, line: 213, baseType: !433, size: 64, offset: 39552)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "npages", scope: !480, file: !12, line: 223, baseType: !299, size: 64, offset: 39616)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !480, file: !12, line: 226, baseType: !501, size: 32, offset: 39680)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "extent_state_t", file: !12, line: 17, baseType: !11)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "delay_coalesce", scope: !480, file: !12, line: 232, baseType: !56, size: 8, offset: 39712)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "extents_muzzy", scope: !280, file: !281, line: 165, baseType: !479, size: 39744, offset: 123520)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "extents_retained", scope: !280, file: !281, line: 166, baseType: !479, size: 39744, offset: 163264)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "decay_dirty", scope: !280, file: !281, line: 174, baseType: !506, size: 14272, offset: 203008)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "arena_decay_t", file: !279, line: 17, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arena_decay_s", file: !281, line: 17, size: 14272, elements: !508)
!508 = !{!509, !510, !511, !519, !520, !521, !522, !523, !524, !526, !528}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "mtx", scope: !507, file: !281, line: 19, baseType: !85, size: 896)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "purging", scope: !507, file: !281, line: 24, baseType: !56, size: 8, offset: 896)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "time_ms", scope: !507, file: !281, line: 30, baseType: !512, size: 64, offset: 960)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_zd_t", file: !46, line: 74, baseType: !513)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 74, size: 64, elements: !514)
!514 = !{!515}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !513, file: !46, line: 74, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !517, line: 108, baseType: !518)
!517 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !53, line: 194, baseType: !75)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !507, file: !281, line: 32, baseType: !100, size: 64, offset: 1024)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !507, file: !281, line: 40, baseType: !100, size: 64, offset: 1088)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "jitter_state", scope: !507, file: !281, line: 42, baseType: !67, size: 64, offset: 1152)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !507, file: !281, line: 50, baseType: !100, size: 64, offset: 1216)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "nunpurged", scope: !507, file: !281, line: 57, baseType: !204, size: 64, offset: 1280)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "backlog", scope: !507, file: !281, line: 64, baseType: !525, size: 12800, offset: 1344)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 12800, elements: !489)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !507, file: !281, line: 72, baseType: !527, size: 64, offset: 14144)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ceil_npages", scope: !507, file: !281, line: 74, baseType: !67, size: 64, offset: 14208)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "decay_muzzy", scope: !280, file: !281, line: 175, baseType: !506, size: 14272, offset: 217280)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "extent_grow_next", scope: !280, file: !281, line: 190, baseType: !531, size: 32, offset: 231552)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "pszind_t", file: !413, line: 7, baseType: !7)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "retain_grow_limit", scope: !280, file: !281, line: 191, baseType: !531, size: 32, offset: 231584)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "extent_grow_mtx", scope: !280, file: !281, line: 192, baseType: !85, size: 896, offset: 231616)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "extent_avail", scope: !280, file: !281, line: 200, baseType: !535, size: 64, offset: 232512)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "extent_tree_t", file: !12, line: 185, baseType: !536)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 185, size: 64, elements: !537)
!537 = !{!538}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ph_root", scope: !536, file: !12, line: 185, baseType: !437, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "extent_avail_cnt", scope: !280, file: !281, line: 201, baseType: !299, size: 64, offset: 232576)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "extent_avail_mtx", scope: !280, file: !281, line: 202, baseType: !85, size: 896, offset: 232640)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "bins", scope: !280, file: !281, line: 209, baseType: !542, size: 2304, offset: 233536)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 2304, elements: !384)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "bins_t", file: !544, line: 86, baseType: !545)
!544 = !DIFile(filename: "include/jemalloc/internal/bin.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "498400e4bc130e370fcaa245db662b71")
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bins_s", file: !544, line: 87, size: 64, elements: !546)
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "bin_shards", scope: !545, file: !544, line: 89, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "bin_t", file: !544, line: 58, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_s", file: !544, line: 59, size: 2240, elements: !551)
!551 = !{!552, !553, !554, !555, !556}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !550, file: !544, line: 61, baseType: !85, size: 896)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "slabcur", scope: !550, file: !544, line: 69, baseType: !437, size: 64, offset: 896)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "slabs_nonfull", scope: !550, file: !544, line: 76, baseType: !485, size: 64, offset: 960)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "slabs_full", scope: !550, file: !544, line: 79, baseType: !433, size: 64, offset: 1024)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !550, file: !544, line: 82, baseType: !557, size: 1152, offset: 1088)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "bin_stats_t", file: !558, line: 6, baseType: !559)
!558 = !DIFile(filename: "include/jemalloc/internal/bin_stats.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "4968efeedc9165ec9a1d6102ebef1b3c")
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_stats_s", file: !558, line: 7, size: 1152, elements: !560)
!560 = !{!561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "nmalloc", scope: !559, file: !558, line: 14, baseType: !67, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ndalloc", scope: !559, file: !558, line: 15, baseType: !67, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "nrequests", scope: !559, file: !558, line: 22, baseType: !67, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "curregs", scope: !559, file: !558, line: 28, baseType: !204, size: 64, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "nfills", scope: !559, file: !558, line: 31, baseType: !67, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "nflushes", scope: !559, file: !558, line: 34, baseType: !67, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "nslabs", scope: !559, file: !558, line: 37, baseType: !67, size: 64, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "reslabs", scope: !559, file: !558, line: 43, baseType: !67, size: 64, offset: 448)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "curslabs", scope: !559, file: !558, line: 46, baseType: !204, size: 64, offset: 512)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "nonfull_slabs", scope: !559, file: !558, line: 49, baseType: !204, size: 64, offset: 576)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mutex_data", scope: !559, file: !558, line: 51, baseType: !95, size: 512, offset: 640)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !280, file: !281, line: 216, baseType: !573, size: 64, offset: 235840)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "base_t", file: !575, line: 5, baseType: !576)
!575 = !DIFile(filename: "include/jemalloc/internal/base_types.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "7f7034d6fa75fa649e18edc6668e90f4")
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base_s", file: !577, line: 20, size: 16384, elements: !578)
!577 = !DIFile(filename: "include/jemalloc/internal/base_structs.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "09a1b28a52381e40c3b31ef32e09760d")
!578 = !{!579, !580, !581, !582, !583, !584, !585, !586, !594, !598, !599, !600, !601}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ind", scope: !576, file: !577, line: 22, baseType: !7, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "extent_hooks", scope: !576, file: !577, line: 28, baseType: !266, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_use_hooks", scope: !576, file: !577, line: 33, baseType: !56, size: 8, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "mtx", scope: !576, file: !577, line: 36, baseType: !85, size: 896, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "auto_thp_switched", scope: !576, file: !577, line: 39, baseType: !56, size: 8, offset: 1088)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "pind_last", scope: !576, file: !577, line: 45, baseType: !531, size: 32, offset: 1120)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "extent_sn_next", scope: !576, file: !577, line: 48, baseType: !204, size: 64, offset: 1152)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !576, file: !577, line: 51, baseType: !587, size: 64, offset: 1216)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "base_block_t", file: !575, line: 4, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base_block_s", file: !577, line: 9, size: 1152, elements: !590)
!590 = !{!591, !592, !593}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !589, file: !577, line: 11, baseType: !204, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !589, file: !577, line: 14, baseType: !587, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !589, file: !577, line: 17, baseType: !438, size: 1024, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "avail", scope: !576, file: !577, line: 54, baseType: !595, size: 14848, offset: 1280)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 14848, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 232)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !576, file: !577, line: 57, baseType: !204, size: 64, offset: 16128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "resident", scope: !576, file: !577, line: 58, baseType: !204, size: 64, offset: 16192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "mapped", scope: !576, file: !577, line: 59, baseType: !204, size: 64, offset: 16256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "n_thp", scope: !576, file: !577, line: 61, baseType: !204, size: 64, offset: 16320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "create_time", scope: !280, file: !281, line: 218, baseType: !100, size: 64, offset: 235904)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_arena", scope: !42, file: !27, line: 199, baseType: !277, size: 64, offset: 3520)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_arenas_tdata", scope: !42, file: !27, line: 199, baseType: !605, size: 64, offset: 3584)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "arena_tdata_t", file: !279, line: 19, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arena_tdata_s", file: !281, line: 222, size: 64, elements: !608)
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "decay_ticker", scope: !607, file: !281, line: 223, baseType: !360, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_binshards", scope: !42, file: !27, line: 199, baseType: !611, size: 288, offset: 3648)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "tsd_binshards_t", file: !612, line: 12, baseType: !613)
!612 = !DIFile(filename: "include/jemalloc/internal/bin_types.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "900f45601acc6d8c9838905f3ff9fe5c")
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tsd_binshards_s", file: !612, line: 13, size: 288, elements: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "binshard", scope: !613, file: !612, line: 14, baseType: !415, size: 288)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_tcache", scope: !42, file: !27, line: 199, baseType: !353, size: 45632, offset: 3968)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_witness_tsd", scope: !42, file: !27, line: 199, baseType: !618, size: 128, offset: 49600)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "witness_tsd_t", file: !161, line: 107, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "witness_tsd_s", file: !161, line: 108, size: 128, elements: !620)
!620 = !{!621, !626}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "witnesses", scope: !619, file: !161, line: 109, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "witness_list_t", file: !161, line: 76, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !161, line: 76, size: 64, elements: !624)
!624 = !{!625}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "qlh_first", scope: !623, file: !161, line: 76, baseType: !181, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "forking", scope: !619, file: !161, line: 110, baseType: !56, size: 8, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "witness_tsdn_t", file: !161, line: 119, baseType: !629)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "witness_tsdn_s", file: !161, line: 120, size: 128, elements: !630)
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "witness_tsd", scope: !629, file: !161, line: 121, baseType: !618, size: 128)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!633 = !{!0, !634, !636, !641, !643, !650, !653, !655, !657, !663}
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(name: "je_tsd_booted", scope: !2, file: !3, line: 26, type: !56, isLocal: false, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !3, line: 422, type: !638, isLocal: true, isDefinition: true)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 176, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 22)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(name: "ncleanups", scope: !2, file: !3, line: 12, type: !7, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(name: "cleanups", scope: !2, file: !3, line: 13, type: !645, isLocal: true, isDefinition: true)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 128, elements: !289)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "malloc_tsd_cleanup_t", file: !41, line: 8, baseType: !647)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!56}
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(name: "je_tsd_tsd", scope: !2, file: !3, line: 25, type: !652, isLocal: false, isDefinition: true)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_key_t", file: !124, line: 49, baseType: !7)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(name: "tsd_nominal_tsds_lock", scope: !2, file: !3, line: 63, type: !85, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(name: "tsd_global_slow_count", scope: !2, file: !3, line: 66, type: !110, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !659, line: 55, type: !660, isLocal: true, isDefinition: true)
!659 = !DIFile(filename: "include/jemalloc/internal/tsd_tls.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "7b94df309a69d75a52041880bc8b71c7")
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 256, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 32)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(name: "tsd_nominal_tsds", scope: !2, file: !3, line: 62, type: !665, isLocal: true, isDefinition: true)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "tsd_list_t", file: !3, line: 61, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 61, size: 64, elements: !667)
!667 = !{!668}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "qlh_first", scope: !666, file: !3, line: 61, baseType: !39, size: 64)
!669 = !{i32 7, !"Dwarf Version", i32 5}
!670 = !{i32 2, !"Debug Info Version", i32 3}
!671 = !{i32 1, !"wchar_size", i32 4}
!672 = !{i32 8, !"PIC Level", i32 2}
!673 = !{i32 7, !"PIE Level", i32 2}
!674 = !{i32 7, !"uwtable", i32 2}
!675 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!676 = distinct !DISubprogram(name: "je_tsd_global_slow_inc", scope: !3, file: !3, line: 125, type: !677, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !679)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !116}
!679 = !{!680}
!680 = !DILocalVariable(name: "tsdn", arg: 1, scope: !676, file: !3, line: 125, type: !116)
!681 = !{!682, !682, i64 0}
!682 = !{!"any pointer", !683, i64 0}
!683 = !{!"omnipotent char", !684, i64 0}
!684 = !{!"Simple C/C++ TBAA"}
!685 = !DILocation(line: 125, column: 29, scope: !676)
!686 = !DILocation(line: 126, column: 2, scope: !676)
!687 = !DILocation(line: 135, column: 22, scope: !676)
!688 = !DILocation(line: 135, column: 2, scope: !676)
!689 = !DILocation(line: 136, column: 1, scope: !676)
!690 = distinct !DISubprogram(name: "atomic_fetch_add_u32", scope: !46, file: !46, line: 78, type: !691, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !695)
!691 = !DISubroutineType(types: !692)
!692 = !{!64, !693, !64, !694}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_memory_order_t", file: !19, line: 14, baseType: !18)
!695 = !{!696, !697, !698}
!696 = !DILocalVariable(name: "a", arg: 1, scope: !690, file: !46, line: 78, type: !693)
!697 = !DILocalVariable(name: "val", arg: 2, scope: !690, file: !46, line: 78, type: !64)
!698 = !DILocalVariable(name: "mo", arg: 3, scope: !690, file: !46, line: 78, type: !694)
!699 = !DILocation(line: 78, column: 1, scope: !690)
!700 = !{!701, !701, i64 0}
!701 = !{!"int", !683, i64 0}
!702 = !{!683, !683, i64 0}
!703 = distinct !DISubprogram(name: "tsd_force_recompute", scope: !3, file: !3, line: 107, type: !677, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !704)
!704 = !{!705, !706}
!705 = !DILocalVariable(name: "tsdn", arg: 1, scope: !703, file: !3, line: 107, type: !116)
!706 = !DILocalVariable(name: "remote_tsd", scope: !703, file: !3, line: 114, type: !39)
!707 = !DILocation(line: 107, column: 29, scope: !703)
!708 = !DILocation(line: 112, column: 2, scope: !703)
!709 = !DILocation(line: 113, column: 20, scope: !703)
!710 = !DILocation(line: 113, column: 2, scope: !703)
!711 = !DILocation(line: 114, column: 2, scope: !703)
!712 = !DILocation(line: 114, column: 9, scope: !703)
!713 = !DILocation(line: 115, column: 2, scope: !714)
!714 = distinct !DILexicalBlock(scope: !703, file: !3, line: 115, column: 2)
!715 = !{!716, !682, i64 0}
!716 = !{!"", !682, i64 0}
!717 = !DILocation(line: 115, column: 2, scope: !718)
!718 = distinct !DILexicalBlock(scope: !714, file: !3, line: 115, column: 2)
!719 = !DILocation(line: 116, column: 3, scope: !720)
!720 = distinct !DILexicalBlock(scope: !718, file: !3, line: 115, column: 73)
!721 = !DILocation(line: 116, column: 3, scope: !722)
!722 = distinct !DILexicalBlock(scope: !720, file: !3, line: 116, column: 3)
!723 = !DILocation(line: 118, column: 21, scope: !720)
!724 = !DILocation(line: 118, column: 33, scope: !720)
!725 = !DILocation(line: 118, column: 3, scope: !720)
!726 = !DILocation(line: 120, column: 2, scope: !720)
!727 = !{!728, !682, i64 1392}
!728 = !{!"tsd_s", !729, i64 0, !730, i64 1, !730, i64 2, !683, i64 3, !701, i64 4, !731, i64 8, !731, i64 16, !731, i64 24, !731, i64 32, !682, i64 40, !732, i64 48, !682, i64 432, !682, i64 440, !682, i64 448, !733, i64 456, !734, i64 496, !738, i64 6200}
!729 = !{!"", !683, i64 0}
!730 = !{!"_Bool", !683, i64 0}
!731 = !{!"long", !683, i64 0}
!732 = !{!"rtree_ctx_s", !683, i64 0, !683, i64 256}
!733 = !{!"tsd_binshards_s", !683, i64 0}
!734 = !{!"tcache_s", !731, i64 0, !735, i64 8, !683, i64 16, !736, i64 880, !736, i64 896, !730, i64 912, !737, i64 920, !682, i64 952, !701, i64 960, !683, i64 964, !683, i64 1000}
!735 = !{!"", !701, i64 0, !701, i64 4}
!736 = !{!"", !682, i64 0, !682, i64 8}
!737 = !{!"cache_bin_array_descriptor_s", !736, i64 0, !682, i64 16, !682, i64 24}
!738 = !{!"witness_tsd_s", !716, i64 0, !730, i64 8}
!739 = distinct !{!739, !713, !740, !741}
!740 = !DILocation(line: 120, column: 2, scope: !714)
!741 = !{!"llvm.loop.mustprogress"}
!742 = !DILocation(line: 121, column: 22, scope: !703)
!743 = !DILocation(line: 121, column: 2, scope: !703)
!744 = !DILocation(line: 122, column: 1, scope: !703)
!745 = distinct !DISubprogram(name: "je_tsd_global_slow_dec", scope: !3, file: !3, line: 138, type: !677, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !746)
!746 = !{!747}
!747 = !DILocalVariable(name: "tsdn", arg: 1, scope: !745, file: !3, line: 138, type: !116)
!748 = !DILocation(line: 138, column: 34, scope: !745)
!749 = !DILocation(line: 139, column: 2, scope: !745)
!750 = !DILocation(line: 141, column: 22, scope: !745)
!751 = !DILocation(line: 141, column: 2, scope: !745)
!752 = !DILocation(line: 142, column: 1, scope: !745)
!753 = distinct !DISubprogram(name: "atomic_fetch_sub_u32", scope: !46, file: !46, line: 78, type: !691, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !754)
!754 = !{!755, !756, !757}
!755 = !DILocalVariable(name: "a", arg: 1, scope: !753, file: !46, line: 78, type: !693)
!756 = !DILocalVariable(name: "val", arg: 2, scope: !753, file: !46, line: 78, type: !64)
!757 = !DILocalVariable(name: "mo", arg: 3, scope: !753, file: !46, line: 78, type: !694)
!758 = !DILocation(line: 78, column: 1, scope: !753)
!759 = distinct !DISubprogram(name: "je_tsd_global_slow", scope: !3, file: !3, line: 151, type: !648, scopeLine: 151, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!760 = !DILocation(line: 152, column: 9, scope: !759)
!761 = !DILocation(line: 152, column: 65, scope: !759)
!762 = !DILocation(line: 152, column: 2, scope: !759)
!763 = distinct !DISubprogram(name: "atomic_load_u32", scope: !46, file: !46, line: 78, type: !764, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !768)
!764 = !DISubroutineType(types: !765)
!765 = !{!64, !766, !694}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!768 = !{!769, !770, !771}
!769 = !DILocalVariable(name: "a", arg: 1, scope: !763, file: !46, line: 78, type: !766)
!770 = !DILocalVariable(name: "mo", arg: 2, scope: !763, file: !46, line: 78, type: !694)
!771 = !DILocalVariable(name: "result", scope: !763, file: !46, line: 78, type: !64)
!772 = !DILocation(line: 78, column: 1, scope: !763)
!773 = distinct !DISubprogram(name: "je_tsd_slow_update", scope: !3, file: !3, line: 171, type: !774, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !776)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !39}
!776 = !{!777, !778, !779}
!777 = !DILocalVariable(name: "tsd", arg: 1, scope: !773, file: !3, line: 171, type: !39)
!778 = !DILocalVariable(name: "old_state", scope: !773, file: !3, line: 172, type: !50)
!779 = !DILocalVariable(name: "new_state", scope: !780, file: !3, line: 174, type: !50)
!780 = distinct !DILexicalBlock(scope: !773, file: !3, line: 173, column: 5)
!781 = !DILocation(line: 171, column: 24, scope: !773)
!782 = !DILocation(line: 172, column: 2, scope: !773)
!783 = !DILocation(line: 172, column: 10, scope: !773)
!784 = !DILocation(line: 173, column: 2, scope: !773)
!785 = !DILocation(line: 174, column: 3, scope: !780)
!786 = !DILocation(line: 174, column: 11, scope: !780)
!787 = !DILocation(line: 174, column: 41, scope: !780)
!788 = !DILocation(line: 174, column: 23, scope: !780)
!789 = !DILocation(line: 175, column: 36, scope: !780)
!790 = !DILocation(line: 175, column: 41, scope: !780)
!791 = !DILocation(line: 175, column: 48, scope: !780)
!792 = !DILocation(line: 175, column: 15, scope: !780)
!793 = !DILocation(line: 175, column: 13, scope: !780)
!794 = !DILocation(line: 177, column: 2, scope: !773)
!795 = !DILocation(line: 177, column: 2, scope: !780)
!796 = !DILocation(line: 177, column: 11, scope: !773)
!797 = !DILocation(line: 177, column: 21, scope: !773)
!798 = distinct !{!798, !784, !799, !741}
!799 = !DILocation(line: 177, column: 51, scope: !773)
!800 = !DILocation(line: 178, column: 1, scope: !773)
!801 = distinct !DISubprogram(name: "tsd_state_compute", scope: !3, file: !3, line: 158, type: !802, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !804)
!802 = !DISubroutineType(types: !803)
!803 = !{!50, !39}
!804 = !{!805}
!805 = !DILocalVariable(name: "tsd", arg: 1, scope: !801, file: !3, line: 158, type: !39)
!806 = !DILocation(line: 158, column: 26, scope: !801)
!807 = !DILocation(line: 159, column: 19, scope: !808)
!808 = distinct !DILexicalBlock(scope: !801, file: !3, line: 159, column: 6)
!809 = !DILocation(line: 159, column: 7, scope: !808)
!810 = !DILocation(line: 159, column: 6, scope: !801)
!811 = !DILocation(line: 160, column: 24, scope: !812)
!812 = distinct !DILexicalBlock(scope: !808, file: !3, line: 159, column: 25)
!813 = !DILocation(line: 160, column: 10, scope: !812)
!814 = !DILocation(line: 160, column: 3, scope: !812)
!815 = !DILocation(line: 163, column: 6, scope: !816)
!816 = distinct !DILexicalBlock(scope: !801, file: !3, line: 163, column: 6)
!817 = !{!730, !730, i64 0}
!818 = !{i8 0, i8 2}
!819 = !{}
!820 = !DILocation(line: 163, column: 18, scope: !816)
!821 = !DILocation(line: 163, column: 36, scope: !816)
!822 = !DILocation(line: 163, column: 21, scope: !816)
!823 = !DILocation(line: 163, column: 41, scope: !816)
!824 = !DILocation(line: 163, column: 44, scope: !816)
!825 = !DILocation(line: 163, column: 6, scope: !801)
!826 = !DILocation(line: 164, column: 3, scope: !827)
!827 = distinct !DILexicalBlock(scope: !816, file: !3, line: 163, column: 63)
!828 = !DILocation(line: 166, column: 3, scope: !829)
!829 = distinct !DILexicalBlock(scope: !816, file: !3, line: 165, column: 9)
!830 = !DILocation(line: 168, column: 1, scope: !801)
!831 = distinct !DISubprogram(name: "atomic_exchange_u8", scope: !46, file: !46, line: 76, type: !832, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !835)
!832 = !DISubroutineType(types: !833)
!833 = !{!50, !834, !50, !694}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!835 = !{!836, !837, !838, !839}
!836 = !DILocalVariable(name: "a", arg: 1, scope: !831, file: !46, line: 76, type: !834)
!837 = !DILocalVariable(name: "val", arg: 2, scope: !831, file: !46, line: 76, type: !50)
!838 = !DILocalVariable(name: "mo", arg: 3, scope: !831, file: !46, line: 76, type: !694)
!839 = !DILocalVariable(name: "result", scope: !831, file: !46, line: 76, type: !50)
!840 = !DILocation(line: 76, column: 1, scope: !831)
!841 = distinct !DISubprogram(name: "je_tsd_state_set", scope: !3, file: !3, line: 181, type: !842, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !844)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !39, !50}
!844 = !{!845, !846, !847}
!845 = !DILocalVariable(name: "tsd", arg: 1, scope: !841, file: !3, line: 181, type: !39)
!846 = !DILocalVariable(name: "new_state", arg: 2, scope: !841, file: !3, line: 181, type: !50)
!847 = !DILocalVariable(name: "old_state", scope: !841, file: !3, line: 184, type: !50)
!848 = !DILocation(line: 181, column: 22, scope: !841)
!849 = !DILocation(line: 181, column: 35, scope: !841)
!850 = !DILocation(line: 183, column: 2, scope: !841)
!851 = !DILocation(line: 183, column: 2, scope: !852)
!852 = distinct !DILexicalBlock(scope: !841, file: !3, line: 183, column: 2)
!853 = !DILocation(line: 184, column: 2, scope: !841)
!854 = !DILocation(line: 184, column: 10, scope: !841)
!855 = !DILocation(line: 184, column: 39, scope: !841)
!856 = !DILocation(line: 184, column: 44, scope: !841)
!857 = !DILocation(line: 184, column: 22, scope: !841)
!858 = !DILocation(line: 185, column: 6, scope: !859)
!859 = distinct !DILexicalBlock(scope: !841, file: !3, line: 185, column: 6)
!860 = !DILocation(line: 185, column: 16, scope: !859)
!861 = !DILocation(line: 185, column: 6, scope: !841)
!862 = !DILocation(line: 190, column: 3, scope: !863)
!863 = distinct !DILexicalBlock(scope: !859, file: !3, line: 185, column: 41)
!864 = !DILocation(line: 190, column: 3, scope: !865)
!865 = distinct !DILexicalBlock(scope: !863, file: !3, line: 190, column: 3)
!866 = !DILocation(line: 191, column: 21, scope: !863)
!867 = !DILocation(line: 191, column: 26, scope: !863)
!868 = !DILocation(line: 191, column: 33, scope: !863)
!869 = !DILocation(line: 191, column: 3, scope: !863)
!870 = !DILocation(line: 192, column: 7, scope: !871)
!871 = distinct !DILexicalBlock(scope: !863, file: !3, line: 192, column: 7)
!872 = !DILocation(line: 192, column: 17, scope: !871)
!873 = !DILocation(line: 192, column: 7, scope: !863)
!874 = !DILocation(line: 193, column: 20, scope: !875)
!875 = distinct !DILexicalBlock(scope: !871, file: !3, line: 192, column: 43)
!876 = !DILocation(line: 193, column: 4, scope: !875)
!877 = !DILocation(line: 194, column: 3, scope: !875)
!878 = !DILocation(line: 195, column: 2, scope: !863)
!879 = !DILocation(line: 201, column: 3, scope: !880)
!880 = distinct !DILexicalBlock(scope: !859, file: !3, line: 195, column: 9)
!881 = !DILocation(line: 201, column: 3, scope: !882)
!882 = distinct !DILexicalBlock(scope: !880, file: !3, line: 201, column: 3)
!883 = !DILocation(line: 202, column: 7, scope: !884)
!884 = distinct !DILexicalBlock(scope: !880, file: !3, line: 202, column: 7)
!885 = !DILocation(line: 202, column: 17, scope: !884)
!886 = !DILocation(line: 202, column: 7, scope: !880)
!887 = !DILocation(line: 203, column: 23, scope: !888)
!888 = distinct !DILexicalBlock(scope: !884, file: !3, line: 202, column: 42)
!889 = !DILocation(line: 203, column: 4, scope: !888)
!890 = !DILocation(line: 204, column: 22, scope: !888)
!891 = !DILocation(line: 204, column: 27, scope: !888)
!892 = !DILocation(line: 204, column: 34, scope: !888)
!893 = !DILocation(line: 204, column: 4, scope: !888)
!894 = !DILocation(line: 206, column: 3, scope: !888)
!895 = !DILocation(line: 213, column: 20, scope: !896)
!896 = distinct !DILexicalBlock(scope: !884, file: !3, line: 206, column: 10)
!897 = !DILocation(line: 213, column: 4, scope: !896)
!898 = !DILocation(line: 216, column: 1, scope: !841)
!899 = distinct !DISubprogram(name: "atomic_load_u8", scope: !46, file: !46, line: 76, type: !900, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !904)
!900 = !DISubroutineType(types: !901)
!901 = !{!50, !902, !694}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!904 = !{!905, !906, !907}
!905 = !DILocalVariable(name: "a", arg: 1, scope: !899, file: !46, line: 76, type: !902)
!906 = !DILocalVariable(name: "mo", arg: 2, scope: !899, file: !46, line: 76, type: !694)
!907 = !DILocalVariable(name: "result", scope: !899, file: !46, line: 76, type: !50)
!908 = !DILocation(line: 76, column: 1, scope: !899)
!909 = distinct !DISubprogram(name: "atomic_store_u8", scope: !46, file: !46, line: 76, type: !910, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !912)
!910 = !DISubroutineType(types: !911)
!911 = !{null, !834, !50, !694}
!912 = !{!913, !914, !915}
!913 = !DILocalVariable(name: "a", arg: 1, scope: !909, file: !46, line: 76, type: !834)
!914 = !DILocalVariable(name: "val", arg: 2, scope: !909, file: !46, line: 76, type: !50)
!915 = !DILocalVariable(name: "mo", arg: 3, scope: !909, file: !46, line: 76, type: !694)
!916 = !DILocation(line: 76, column: 1, scope: !909)
!917 = distinct !DISubprogram(name: "tsd_add_nominal", scope: !3, file: !3, line: 88, type: !774, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !918)
!918 = !{!919}
!919 = !DILocalVariable(name: "tsd", arg: 1, scope: !917, file: !3, line: 88, type: !39)
!920 = !DILocation(line: 88, column: 24, scope: !917)
!921 = !DILocation(line: 89, column: 2, scope: !917)
!922 = !DILocation(line: 89, column: 2, scope: !923)
!923 = distinct !DILexicalBlock(scope: !917, file: !3, line: 89, column: 2)
!924 = !DILocation(line: 90, column: 2, scope: !917)
!925 = !DILocation(line: 90, column: 2, scope: !926)
!926 = distinct !DILexicalBlock(scope: !917, file: !3, line: 90, column: 2)
!927 = !DILocation(line: 91, column: 2, scope: !917)
!928 = !DILocation(line: 91, column: 2, scope: !929)
!929 = distinct !DILexicalBlock(scope: !917, file: !3, line: 91, column: 2)
!930 = !{!728, !682, i64 1400}
!931 = !DILocation(line: 92, column: 29, scope: !917)
!932 = !DILocation(line: 92, column: 20, scope: !917)
!933 = !DILocation(line: 92, column: 2, scope: !917)
!934 = !DILocation(line: 93, column: 2, scope: !917)
!935 = !DILocation(line: 93, column: 2, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !3, line: 93, column: 2)
!937 = distinct !DILexicalBlock(scope: !917, file: !3, line: 93, column: 2)
!938 = !DILocation(line: 93, column: 2, scope: !937)
!939 = !DILocation(line: 93, column: 2, scope: !940)
!940 = distinct !DILexicalBlock(scope: !936, file: !3, line: 93, column: 2)
!941 = !DILocation(line: 93, column: 2, scope: !942)
!942 = distinct !DILexicalBlock(scope: !940, file: !3, line: 93, column: 2)
!943 = !DILocation(line: 94, column: 31, scope: !917)
!944 = !DILocation(line: 94, column: 22, scope: !917)
!945 = !DILocation(line: 94, column: 2, scope: !917)
!946 = !DILocation(line: 95, column: 1, scope: !917)
!947 = distinct !DISubprogram(name: "tsd_remove_nominal", scope: !3, file: !3, line: 98, type: !774, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !948)
!948 = !{!949}
!949 = !DILocalVariable(name: "tsd", arg: 1, scope: !947, file: !3, line: 98, type: !39)
!950 = !DILocation(line: 98, column: 27, scope: !947)
!951 = !DILocation(line: 99, column: 2, scope: !947)
!952 = !DILocation(line: 99, column: 2, scope: !953)
!953 = distinct !DILexicalBlock(scope: !947, file: !3, line: 99, column: 2)
!954 = !DILocation(line: 100, column: 2, scope: !947)
!955 = !DILocation(line: 100, column: 2, scope: !956)
!956 = distinct !DILexicalBlock(scope: !947, file: !3, line: 100, column: 2)
!957 = !DILocation(line: 101, column: 29, scope: !947)
!958 = !DILocation(line: 101, column: 20, scope: !947)
!959 = !DILocation(line: 101, column: 2, scope: !947)
!960 = !DILocation(line: 102, column: 2, scope: !947)
!961 = !DILocation(line: 102, column: 2, scope: !962)
!962 = distinct !DILexicalBlock(scope: !963, file: !3, line: 102, column: 2)
!963 = distinct !DILexicalBlock(scope: !947, file: !3, line: 102, column: 2)
!964 = !DILocation(line: 102, column: 2, scope: !963)
!965 = !DILocation(line: 102, column: 2, scope: !966)
!966 = distinct !DILexicalBlock(scope: !962, file: !3, line: 102, column: 2)
!967 = !DILocation(line: 102, column: 2, scope: !968)
!968 = distinct !DILexicalBlock(scope: !963, file: !3, line: 102, column: 2)
!969 = !DILocation(line: 102, column: 2, scope: !970)
!970 = distinct !DILexicalBlock(scope: !968, file: !3, line: 102, column: 2)
!971 = !DILocation(line: 102, column: 2, scope: !972)
!972 = distinct !DILexicalBlock(scope: !970, file: !3, line: 102, column: 2)
!973 = !DILocation(line: 102, column: 2, scope: !974)
!974 = distinct !DILexicalBlock(scope: !968, file: !3, line: 102, column: 2)
!975 = !DILocation(line: 103, column: 31, scope: !947)
!976 = !DILocation(line: 103, column: 22, scope: !947)
!977 = !DILocation(line: 103, column: 2, scope: !947)
!978 = !DILocation(line: 104, column: 1, scope: !947)
!979 = distinct !DISubprogram(name: "je_tsd_fetch_slow", scope: !3, file: !3, line: 270, type: !980, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !982)
!980 = !DISubroutineType(types: !981)
!981 = !{!39, !39, !56}
!982 = !{!983, !984}
!983 = !DILocalVariable(name: "tsd", arg: 1, scope: !979, file: !3, line: 270, type: !39)
!984 = !DILocalVariable(name: "minimal", arg: 2, scope: !979, file: !3, line: 270, type: !56)
!985 = !DILocation(line: 270, column: 23, scope: !979)
!986 = !DILocation(line: 270, column: 33, scope: !979)
!987 = !DILocation(line: 271, column: 2, scope: !979)
!988 = !DILocation(line: 271, column: 2, scope: !989)
!989 = distinct !DILexicalBlock(scope: !979, file: !3, line: 271, column: 2)
!990 = !DILocation(line: 273, column: 20, scope: !991)
!991 = distinct !DILexicalBlock(scope: !979, file: !3, line: 273, column: 6)
!992 = !DILocation(line: 273, column: 6, scope: !991)
!993 = !DILocation(line: 273, column: 25, scope: !991)
!994 = !DILocation(line: 273, column: 6, scope: !979)
!995 = !DILocation(line: 280, column: 2, scope: !996)
!996 = distinct !DILexicalBlock(scope: !991, file: !3, line: 273, column: 52)
!997 = !DILocation(line: 280, column: 27, scope: !998)
!998 = distinct !DILexicalBlock(scope: !991, file: !3, line: 280, column: 13)
!999 = !DILocation(line: 280, column: 13, scope: !998)
!1000 = !DILocation(line: 280, column: 32, scope: !998)
!1001 = !DILocation(line: 280, column: 13, scope: !991)
!1002 = !DILocation(line: 281, column: 19, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !998, file: !3, line: 280, column: 64)
!1004 = !DILocation(line: 281, column: 3, scope: !1003)
!1005 = !DILocation(line: 282, column: 2, scope: !1003)
!1006 = !DILocation(line: 282, column: 27, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !998, file: !3, line: 282, column: 13)
!1008 = !DILocation(line: 282, column: 13, scope: !1007)
!1009 = !DILocation(line: 282, column: 32, scope: !1007)
!1010 = !DILocation(line: 282, column: 13, scope: !998)
!1011 = !DILocation(line: 283, column: 8, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 283, column: 7)
!1013 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 282, column: 60)
!1014 = !DILocation(line: 283, column: 7, scope: !1013)
!1015 = !DILocation(line: 284, column: 8, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 284, column: 8)
!1017 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 283, column: 17)
!1018 = !DILocation(line: 284, column: 8, scope: !1017)
!1019 = !DILocation(line: 285, column: 19, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 284, column: 20)
!1021 = !DILocation(line: 285, column: 5, scope: !1020)
!1022 = !DILocation(line: 286, column: 21, scope: !1020)
!1023 = !DILocation(line: 286, column: 5, scope: !1020)
!1024 = !DILocation(line: 288, column: 13, scope: !1020)
!1025 = !DILocation(line: 288, column: 5, scope: !1020)
!1026 = !DILocation(line: 289, column: 19, scope: !1020)
!1027 = !DILocation(line: 289, column: 5, scope: !1020)
!1028 = !DILocation(line: 290, column: 4, scope: !1020)
!1029 = !DILocation(line: 291, column: 3, scope: !1017)
!1030 = !DILocation(line: 292, column: 18, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 291, column: 10)
!1032 = !DILocation(line: 292, column: 4, scope: !1031)
!1033 = !DILocation(line: 293, column: 12, scope: !1031)
!1034 = !DILocation(line: 293, column: 4, scope: !1031)
!1035 = !DILocation(line: 294, column: 28, scope: !1031)
!1036 = !DILocation(line: 294, column: 4, scope: !1031)
!1037 = !DILocation(line: 296, column: 2, scope: !1013)
!1038 = !DILocation(line: 296, column: 27, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 296, column: 13)
!1040 = !DILocation(line: 296, column: 13, scope: !1039)
!1041 = !DILocation(line: 296, column: 32, scope: !1039)
!1042 = !DILocation(line: 296, column: 13, scope: !1007)
!1043 = !DILocation(line: 297, column: 8, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 297, column: 7)
!1045 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 296, column: 66)
!1046 = !DILocation(line: 297, column: 7, scope: !1045)
!1047 = !DILocation(line: 299, column: 18, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 297, column: 17)
!1049 = !DILocation(line: 299, column: 4, scope: !1048)
!1050 = !DILocation(line: 300, column: 4, scope: !1048)
!1051 = !DILocation(line: 300, column: 4, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 300, column: 4)
!1053 = !DILocation(line: 301, column: 32, scope: !1048)
!1054 = !DILocation(line: 301, column: 6, scope: !1048)
!1055 = !DILocation(line: 301, column: 37, scope: !1048)
!1056 = !DILocation(line: 302, column: 20, scope: !1048)
!1057 = !DILocation(line: 302, column: 4, scope: !1048)
!1058 = !DILocation(line: 303, column: 18, scope: !1048)
!1059 = !DILocation(line: 303, column: 4, scope: !1048)
!1060 = !DILocation(line: 304, column: 3, scope: !1048)
!1061 = !DILocation(line: 305, column: 33, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 304, column: 10)
!1063 = !DILocation(line: 305, column: 4, scope: !1062)
!1064 = !DILocation(line: 307, column: 2, scope: !1045)
!1065 = !DILocation(line: 307, column: 27, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 307, column: 13)
!1067 = !DILocation(line: 307, column: 13, scope: !1066)
!1068 = !DILocation(line: 307, column: 32, scope: !1066)
!1069 = !DILocation(line: 307, column: 13, scope: !1039)
!1070 = !DILocation(line: 308, column: 17, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 307, column: 56)
!1072 = !DILocation(line: 308, column: 3, scope: !1071)
!1073 = !DILocation(line: 309, column: 11, scope: !1071)
!1074 = !DILocation(line: 309, column: 3, scope: !1071)
!1075 = !DILocation(line: 310, column: 27, scope: !1071)
!1076 = !DILocation(line: 310, column: 3, scope: !1071)
!1077 = !DILocation(line: 311, column: 2, scope: !1071)
!1078 = !DILocation(line: 312, column: 3, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 311, column: 9)
!1080 = !DILocation(line: 312, column: 3, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 312, column: 3)
!1082 = !DILocation(line: 315, column: 9, scope: !979)
!1083 = !DILocation(line: 315, column: 2, scope: !979)
!1084 = distinct !DISubprogram(name: "tsd_state_get", scope: !27, file: !27, line: 204, type: !802, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1085)
!1085 = !{!1086}
!1086 = !DILocalVariable(name: "tsd", arg: 1, scope: !1084, file: !27, line: 204, type: !39)
!1087 = !DILocation(line: 204, column: 22, scope: !1084)
!1088 = !DILocation(line: 211, column: 22, scope: !1084)
!1089 = !DILocation(line: 211, column: 27, scope: !1084)
!1090 = !DILocation(line: 211, column: 9, scope: !1084)
!1091 = !DILocation(line: 211, column: 2, scope: !1084)
!1092 = distinct !DISubprogram(name: "tsd_set", scope: !659, file: !659, line: 49, type: !774, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1093)
!1093 = !{!1094}
!1094 = !DILocalVariable(name: "val", arg: 1, scope: !1092, file: !659, line: 49, type: !39)
!1095 = !DILocation(line: 49, column: 16, scope: !1092)
!1096 = !DILocation(line: 50, column: 2, scope: !1092)
!1097 = !DILocation(line: 50, column: 2, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1092, file: !659, line: 50, column: 2)
!1099 = !DILocation(line: 51, column: 6, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1092, file: !659, line: 51, column: 6)
!1101 = !DILocation(line: 51, column: 6, scope: !1092)
!1102 = !DILocation(line: 52, column: 3, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1100, file: !659, line: 51, column: 31)
!1104 = !DILocation(line: 52, column: 15, scope: !1103)
!1105 = !DILocation(line: 52, column: 14, scope: !1103)
!1106 = !{i64 0, i64 1, !702, i64 1, i64 1, !817, i64 2, i64 1, !817, i64 3, i64 1, !702, i64 4, i64 4, !700, i64 8, i64 8, !1107, i64 16, i64 8, !1107, i64 24, i64 8, !1107, i64 32, i64 8, !1107, i64 40, i64 8, !681, i64 48, i64 256, !702, i64 304, i64 128, !702, i64 432, i64 8, !681, i64 440, i64 8, !681, i64 448, i64 8, !681, i64 456, i64 36, !702, i64 496, i64 8, !1107, i64 504, i64 4, !700, i64 508, i64 4, !700, i64 512, i64 864, !702, i64 1376, i64 8, !681, i64 1384, i64 8, !681, i64 1392, i64 8, !681, i64 1400, i64 8, !681, i64 1408, i64 1, !817, i64 1416, i64 8, !681, i64 1424, i64 8, !681, i64 1432, i64 8, !681, i64 1440, i64 8, !681, i64 1448, i64 8, !681, i64 1456, i64 4, !700, i64 1460, i64 36, !702, i64 1496, i64 4704, !702, i64 6200, i64 8, !681, i64 6208, i64 1, !817}
!1107 = !{!731, !731, i64 0}
!1108 = !DILocation(line: 53, column: 2, scope: !1103)
!1109 = !DILocation(line: 54, column: 26, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1092, file: !659, line: 54, column: 6)
!1111 = !DILocation(line: 54, column: 45, scope: !1110)
!1112 = !DILocation(line: 54, column: 6, scope: !1110)
!1113 = !DILocation(line: 54, column: 55, scope: !1110)
!1114 = !DILocation(line: 54, column: 6, scope: !1092)
!1115 = !DILocation(line: 55, column: 3, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1110, file: !659, line: 54, column: 61)
!1117 = !DILocation(line: 56, column: 7, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1116, file: !659, line: 56, column: 7)
!1119 = !DILocation(line: 56, column: 7, scope: !1116)
!1120 = !DILocation(line: 57, column: 4, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1118, file: !659, line: 56, column: 18)
!1122 = !DILocation(line: 59, column: 2, scope: !1116)
!1123 = !DILocation(line: 60, column: 1, scope: !1092)
!1124 = distinct !DISubprogram(name: "tsd_data_init", scope: !3, file: !3, line: 219, type: !1125, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1127)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!56, !39}
!1127 = !{!1128}
!1128 = !DILocalVariable(name: "tsd", arg: 1, scope: !1124, file: !3, line: 219, type: !39)
!1129 = !DILocation(line: 219, column: 22, scope: !1124)
!1130 = !DILocation(line: 224, column: 48, scope: !1124)
!1131 = !DILocation(line: 224, column: 22, scope: !1124)
!1132 = !DILocation(line: 224, column: 2, scope: !1124)
!1133 = !DILocation(line: 234, column: 27, scope: !1124)
!1134 = !DILocation(line: 234, column: 16, scope: !1124)
!1135 = !DILocation(line: 233, column: 25, scope: !1124)
!1136 = !DILocation(line: 233, column: 3, scope: !1124)
!1137 = !DILocation(line: 233, column: 30, scope: !1124)
!1138 = !DILocation(line: 236, column: 38, scope: !1124)
!1139 = !DILocation(line: 236, column: 9, scope: !1124)
!1140 = !DILocation(line: 236, column: 2, scope: !1124)
!1141 = distinct !DISubprogram(name: "tsd_data_init_nocleanup", scope: !3, file: !3, line: 252, type: !1125, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1142)
!1142 = !{!1143}
!1143 = !DILocalVariable(name: "tsd", arg: 1, scope: !1141, file: !3, line: 252, type: !39)
!1144 = !DILocation(line: 252, column: 32, scope: !1141)
!1145 = !DILocation(line: 253, column: 2, scope: !1141)
!1146 = !DILocation(line: 253, column: 2, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 253, column: 2)
!1148 = !DILocation(line: 260, column: 48, scope: !1141)
!1149 = !DILocation(line: 260, column: 22, scope: !1141)
!1150 = !DILocation(line: 260, column: 2, scope: !1141)
!1151 = !DILocation(line: 261, column: 32, scope: !1141)
!1152 = !DILocation(line: 261, column: 3, scope: !1141)
!1153 = !DILocation(line: 261, column: 37, scope: !1141)
!1154 = !DILocation(line: 262, column: 34, scope: !1141)
!1155 = !DILocation(line: 262, column: 3, scope: !1141)
!1156 = !DILocation(line: 262, column: 39, scope: !1141)
!1157 = !DILocation(line: 263, column: 29, scope: !1141)
!1158 = !DILocation(line: 263, column: 3, scope: !1141)
!1159 = !DILocation(line: 263, column: 34, scope: !1141)
!1160 = !DILocation(line: 264, column: 31, scope: !1141)
!1161 = !DILocation(line: 264, column: 2, scope: !1141)
!1162 = !DILocation(line: 266, column: 2, scope: !1141)
!1163 = distinct !DISubprogram(name: "tsd_reentrancy_levelp_get", scope: !27, file: !27, line: 284, type: !1164, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1167)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!1166, !39}
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!1167 = !{!1168, !1169}
!1168 = !DILocalVariable(name: "tsd", arg: 1, scope: !1163, file: !27, line: 284, type: !39)
!1169 = !DILocalVariable(name: "state", scope: !1163, file: !27, line: 284, type: !50)
!1170 = !DILocation(line: 284, column: 1, scope: !1163)
!1171 = !DILocation(line: 284, column: 1, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1163, file: !27, line: 284, column: 1)
!1173 = distinct !DISubprogram(name: "assert_tsd_data_cleanup_done", scope: !3, file: !3, line: 240, type: !774, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1174)
!1174 = !{!1175}
!1175 = !DILocalVariable(name: "tsd", arg: 1, scope: !1173, file: !3, line: 240, type: !39)
!1176 = !DILocation(line: 240, column: 37, scope: !1173)
!1177 = !DILocation(line: 241, column: 2, scope: !1173)
!1178 = !DILocation(line: 241, column: 2, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 241, column: 2)
!1180 = !DILocation(line: 242, column: 2, scope: !1173)
!1181 = !DILocation(line: 242, column: 2, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 242, column: 2)
!1183 = !DILocation(line: 243, column: 2, scope: !1173)
!1184 = !DILocation(line: 243, column: 2, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 243, column: 2)
!1186 = !DILocation(line: 244, column: 2, scope: !1173)
!1187 = !DILocation(line: 244, column: 2, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 244, column: 2)
!1189 = !DILocation(line: 245, column: 2, scope: !1173)
!1190 = !DILocation(line: 245, column: 2, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 245, column: 2)
!1192 = !DILocation(line: 246, column: 2, scope: !1173)
!1193 = !DILocation(line: 246, column: 2, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 246, column: 2)
!1195 = !DILocation(line: 247, column: 2, scope: !1173)
!1196 = !DILocation(line: 247, column: 2, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 247, column: 2)
!1198 = !DILocation(line: 248, column: 2, scope: !1173)
!1199 = !DILocation(line: 248, column: 2, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 248, column: 2)
!1201 = !DILocation(line: 249, column: 1, scope: !1173)
!1202 = distinct !DISubprogram(name: "je_malloc_tsd_malloc", scope: !3, file: !3, line: 319, type: !1203, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1205)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!38, !204}
!1205 = !{!1206}
!1206 = !DILocalVariable(name: "size", arg: 1, scope: !1202, file: !3, line: 319, type: !204)
!1207 = !DILocation(line: 319, column: 26, scope: !1202)
!1208 = !DILocation(line: 320, column: 18, scope: !1202)
!1209 = !DILocation(line: 320, column: 9, scope: !1202)
!1210 = !DILocation(line: 320, column: 2, scope: !1202)
!1211 = !DISubprogram(name: "je_a0malloc", scope: !1212, file: !1212, line: 37, type: !1203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1212 = !DIFile(filename: "include/jemalloc/internal/jemalloc_internal_externs.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "6585068f454cc68cdcb537740f0c3c39")
!1213 = distinct !DISubprogram(name: "je_malloc_tsd_dalloc", scope: !3, file: !3, line: 324, type: !1214, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1216)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !38}
!1216 = !{!1217}
!1217 = !DILocalVariable(name: "wrapper", arg: 1, scope: !1213, file: !3, line: 324, type: !38)
!1218 = !DILocation(line: 324, column: 25, scope: !1213)
!1219 = !DILocation(line: 325, column: 11, scope: !1213)
!1220 = !DILocation(line: 325, column: 2, scope: !1213)
!1221 = !DILocation(line: 326, column: 1, scope: !1213)
!1222 = !DISubprogram(name: "je_a0dalloc", scope: !1212, file: !1212, line: 38, type: !1214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1223 = distinct !DISubprogram(name: "je_malloc_tsd_cleanup_register", scope: !3, file: !3, line: 356, type: !1224, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1226)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !647}
!1226 = !{!1227}
!1227 = !DILocalVariable(name: "f", arg: 1, scope: !1223, file: !3, line: 356, type: !647)
!1228 = !DILocation(line: 356, column: 36, scope: !1223)
!1229 = !DILocation(line: 357, column: 2, scope: !1223)
!1230 = !DILocation(line: 357, column: 2, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 357, column: 2)
!1232 = !DILocation(line: 358, column: 24, scope: !1223)
!1233 = !DILocation(line: 358, column: 11, scope: !1223)
!1234 = !DILocation(line: 358, column: 2, scope: !1223)
!1235 = !DILocation(line: 358, column: 22, scope: !1223)
!1236 = !DILocation(line: 359, column: 11, scope: !1223)
!1237 = !DILocation(line: 360, column: 1, scope: !1223)
!1238 = distinct !DISubprogram(name: "je_tsd_cleanup", scope: !3, file: !3, line: 373, type: !1214, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1239)
!1239 = !{!1240, !1241}
!1240 = !DILocalVariable(name: "arg", arg: 1, scope: !1238, file: !3, line: 373, type: !38)
!1241 = !DILocalVariable(name: "tsd", scope: !1238, file: !3, line: 374, type: !39)
!1242 = !DILocation(line: 373, column: 19, scope: !1238)
!1243 = !DILocation(line: 374, column: 2, scope: !1238)
!1244 = !DILocation(line: 374, column: 9, scope: !1238)
!1245 = !DILocation(line: 374, column: 24, scope: !1238)
!1246 = !DILocation(line: 376, column: 24, scope: !1238)
!1247 = !DILocation(line: 376, column: 10, scope: !1238)
!1248 = !DILocation(line: 376, column: 2, scope: !1238)
!1249 = !DILocation(line: 389, column: 32, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 376, column: 30)
!1251 = !DILocation(line: 389, column: 3, scope: !1250)
!1252 = !DILocation(line: 393, column: 23, scope: !1250)
!1253 = !DILocation(line: 393, column: 3, scope: !1250)
!1254 = !DILocation(line: 394, column: 17, scope: !1250)
!1255 = !DILocation(line: 394, column: 3, scope: !1250)
!1256 = !DILocation(line: 395, column: 11, scope: !1250)
!1257 = !DILocation(line: 395, column: 3, scope: !1250)
!1258 = !DILocation(line: 396, column: 3, scope: !1250)
!1259 = !DILocation(line: 406, column: 3, scope: !1250)
!1260 = !DILocation(line: 406, column: 3, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 406, column: 3)
!1262 = !DILocation(line: 407, column: 2, scope: !1250)
!1263 = !DILocation(line: 415, column: 1, scope: !1238)
!1264 = distinct !DISubprogram(name: "tsd_do_data_cleanup", scope: !3, file: !3, line: 363, type: !774, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1265)
!1265 = !{!1266}
!1266 = !DILocalVariable(name: "tsd", arg: 1, scope: !1264, file: !3, line: 363, type: !39)
!1267 = !DILocation(line: 363, column: 28, scope: !1264)
!1268 = !DILocation(line: 364, column: 21, scope: !1264)
!1269 = !DILocation(line: 364, column: 2, scope: !1264)
!1270 = !DILocation(line: 365, column: 17, scope: !1264)
!1271 = !DILocation(line: 365, column: 2, scope: !1264)
!1272 = !DILocation(line: 366, column: 16, scope: !1264)
!1273 = !DILocation(line: 366, column: 2, scope: !1264)
!1274 = !DILocation(line: 367, column: 23, scope: !1264)
!1275 = !DILocation(line: 367, column: 2, scope: !1264)
!1276 = !DILocation(line: 368, column: 17, scope: !1264)
!1277 = !DILocation(line: 368, column: 2, scope: !1264)
!1278 = !DILocation(line: 369, column: 48, scope: !1264)
!1279 = !DILocation(line: 369, column: 20, scope: !1264)
!1280 = !DILocation(line: 369, column: 2, scope: !1264)
!1281 = !DILocation(line: 370, column: 1, scope: !1264)
!1282 = distinct !DISubprogram(name: "je_malloc_tsd_boot0", scope: !3, file: !3, line: 418, type: !1283, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1285)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!39}
!1285 = !{!1286}
!1286 = !DILocalVariable(name: "tsd", scope: !1282, file: !3, line: 419, type: !39)
!1287 = !DILocation(line: 419, column: 2, scope: !1282)
!1288 = !DILocation(line: 419, column: 9, scope: !1282)
!1289 = !DILocation(line: 421, column: 12, scope: !1282)
!1290 = !DILocation(line: 422, column: 6, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 422, column: 6)
!1292 = !DILocation(line: 422, column: 6, scope: !1282)
!1293 = !DILocation(line: 424, column: 3, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 423, column: 55)
!1295 = !DILocation(line: 426, column: 6, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 426, column: 6)
!1297 = !DILocation(line: 426, column: 6, scope: !1282)
!1298 = !DILocation(line: 427, column: 3, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 426, column: 19)
!1300 = !DILocation(line: 429, column: 8, scope: !1282)
!1301 = !DILocation(line: 429, column: 6, scope: !1282)
!1302 = !DILocation(line: 430, column: 32, scope: !1282)
!1303 = !DILocation(line: 430, column: 3, scope: !1282)
!1304 = !DILocation(line: 430, column: 37, scope: !1282)
!1305 = !DILocation(line: 431, column: 9, scope: !1282)
!1306 = !DILocation(line: 431, column: 2, scope: !1282)
!1307 = !DILocation(line: 432, column: 1, scope: !1282)
!1308 = !DISubprogram(name: "je_malloc_mutex_init", scope: !6, file: !6, line: 143, type: !1309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!56, !84, !165, !168, !184}
!1311 = distinct !DISubprogram(name: "tsd_boot0", scope: !659, file: !659, line: 14, type: !648, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1312 = !DILocation(line: 15, column: 6, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1311, file: !659, line: 15, column: 6)
!1314 = !DILocation(line: 15, column: 49, scope: !1313)
!1315 = !DILocation(line: 15, column: 6, scope: !1311)
!1316 = !DILocation(line: 16, column: 3, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1313, file: !659, line: 15, column: 55)
!1318 = !DILocation(line: 18, column: 13, scope: !1311)
!1319 = !DILocation(line: 19, column: 2, scope: !1311)
!1320 = !DILocation(line: 20, column: 1, scope: !1311)
!1321 = distinct !DISubprogram(name: "tsd_fetch", scope: !27, file: !27, line: 379, type: !1283, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1322 = !DILocation(line: 380, column: 9, scope: !1321)
!1323 = !DILocation(line: 380, column: 2, scope: !1321)
!1324 = distinct !DISubprogram(name: "tsd_arenas_tdata_bypassp_get", scope: !27, file: !27, line: 284, type: !1325, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1328)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!1327, !39}
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!1328 = !{!1329, !1330}
!1329 = !DILocalVariable(name: "tsd", arg: 1, scope: !1324, file: !27, line: 284, type: !39)
!1330 = !DILocalVariable(name: "state", scope: !1324, file: !27, line: 284, type: !50)
!1331 = !DILocation(line: 284, column: 1, scope: !1324)
!1332 = !DILocation(line: 284, column: 1, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1324, file: !27, line: 284, column: 1)
!1334 = distinct !DISubprogram(name: "je_malloc_tsd_boot1", scope: !3, file: !3, line: 435, type: !1335, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1337)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{null}
!1337 = !{!1338}
!1338 = !DILocalVariable(name: "tsd", scope: !1334, file: !3, line: 437, type: !39)
!1339 = !DILocation(line: 436, column: 2, scope: !1334)
!1340 = !DILocation(line: 437, column: 2, scope: !1334)
!1341 = !DILocation(line: 437, column: 9, scope: !1334)
!1342 = !DILocation(line: 437, column: 15, scope: !1334)
!1343 = !DILocation(line: 439, column: 18, scope: !1334)
!1344 = !DILocation(line: 439, column: 2, scope: !1334)
!1345 = !DILocation(line: 440, column: 32, scope: !1334)
!1346 = !DILocation(line: 440, column: 3, scope: !1334)
!1347 = !DILocation(line: 440, column: 37, scope: !1334)
!1348 = !DILocation(line: 441, column: 1, scope: !1334)
!1349 = distinct !DISubprogram(name: "tsd_boot1", scope: !659, file: !659, line: 23, type: !1335, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1350 = !DILocation(line: 25, column: 1, scope: !1349)
!1351 = distinct !DISubprogram(name: "je_tsd_prefork", scope: !3, file: !3, line: 517, type: !774, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1352)
!1352 = !{!1353}
!1353 = !DILocalVariable(name: "tsd", arg: 1, scope: !1351, file: !3, line: 517, type: !39)
!1354 = !DILocation(line: 517, column: 20, scope: !1351)
!1355 = !DILocation(line: 518, column: 32, scope: !1351)
!1356 = !DILocation(line: 518, column: 23, scope: !1351)
!1357 = !DILocation(line: 518, column: 2, scope: !1351)
!1358 = !DILocation(line: 519, column: 1, scope: !1351)
!1359 = !DISubprogram(name: "je_malloc_mutex_prefork", scope: !6, file: !6, line: 145, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !116, !84}
!1362 = distinct !DISubprogram(name: "tsd_tsdn", scope: !27, file: !27, line: 224, type: !1363, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1365)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!116, !39}
!1365 = !{!1366}
!1366 = !DILocalVariable(name: "tsd", arg: 1, scope: !1362, file: !27, line: 224, type: !39)
!1367 = !DILocation(line: 224, column: 17, scope: !1362)
!1368 = !DILocation(line: 225, column: 19, scope: !1362)
!1369 = !DILocation(line: 225, column: 2, scope: !1362)
!1370 = distinct !DISubprogram(name: "je_tsd_postfork_parent", scope: !3, file: !3, line: 522, type: !774, scopeLine: 522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1371)
!1371 = !{!1372}
!1372 = !DILocalVariable(name: "tsd", arg: 1, scope: !1370, file: !3, line: 522, type: !39)
!1373 = !DILocation(line: 522, column: 28, scope: !1370)
!1374 = !DILocation(line: 523, column: 40, scope: !1370)
!1375 = !DILocation(line: 523, column: 31, scope: !1370)
!1376 = !DILocation(line: 523, column: 2, scope: !1370)
!1377 = !DILocation(line: 524, column: 1, scope: !1370)
!1378 = !DISubprogram(name: "je_malloc_mutex_postfork_parent", scope: !6, file: !6, line: 146, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1379 = distinct !DISubprogram(name: "je_tsd_postfork_child", scope: !3, file: !3, line: 527, type: !774, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1380)
!1380 = !{!1381}
!1381 = !DILocalVariable(name: "tsd", arg: 1, scope: !1379, file: !3, line: 527, type: !39)
!1382 = !DILocation(line: 527, column: 27, scope: !1379)
!1383 = !DILocation(line: 528, column: 39, scope: !1379)
!1384 = !DILocation(line: 528, column: 30, scope: !1379)
!1385 = !DILocation(line: 528, column: 2, scope: !1379)
!1386 = !DILocation(line: 529, column: 2, scope: !1379)
!1387 = !DILocation(line: 529, column: 2, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 529, column: 2)
!1389 = !DILocation(line: 531, column: 20, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 531, column: 6)
!1391 = !DILocation(line: 531, column: 6, scope: !1390)
!1392 = !DILocation(line: 531, column: 25, scope: !1390)
!1393 = !DILocation(line: 531, column: 6, scope: !1379)
!1394 = !DILocation(line: 532, column: 19, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 531, column: 51)
!1396 = !DILocation(line: 532, column: 3, scope: !1395)
!1397 = !DILocation(line: 533, column: 2, scope: !1395)
!1398 = !DILocation(line: 534, column: 1, scope: !1379)
!1399 = !DISubprogram(name: "je_malloc_mutex_postfork_child", scope: !6, file: !6, line: 147, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1400 = distinct !DISubprogram(name: "atomic_enum_to_builtin", scope: !19, file: !19, line: 17, type: !1401, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1403)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!132, !694}
!1403 = !{!1404}
!1404 = !DILocalVariable(name: "mo", arg: 1, scope: !1400, file: !19, line: 17, type: !694)
!1405 = !DILocation(line: 17, column: 46, scope: !1400)
!1406 = !DILocation(line: 18, column: 10, scope: !1400)
!1407 = !DILocation(line: 18, column: 2, scope: !1400)
!1408 = !DILocation(line: 20, column: 3, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1400, file: !19, line: 18, column: 14)
!1410 = !DILocation(line: 22, column: 3, scope: !1409)
!1411 = !DILocation(line: 24, column: 3, scope: !1409)
!1412 = !DILocation(line: 26, column: 3, scope: !1409)
!1413 = !DILocation(line: 28, column: 3, scope: !1409)
!1414 = !DILocation(line: 31, column: 2, scope: !1400)
!1415 = !DILocation(line: 31, column: 2, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1400, file: !19, line: 31, column: 2)
!1417 = !DILocation(line: 32, column: 1, scope: !1400)
!1418 = distinct !DISubprogram(name: "atomic_fence", scope: !19, file: !19, line: 35, type: !1419, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1421)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{null, !694}
!1421 = !{!1422}
!1422 = !DILocalVariable(name: "mo", arg: 1, scope: !1418, file: !19, line: 35, type: !694)
!1423 = !DILocation(line: 35, column: 36, scope: !1418)
!1424 = !DILocation(line: 36, column: 47, scope: !1418)
!1425 = !DILocation(line: 36, column: 24, scope: !1418)
!1426 = !DILocation(line: 36, column: 2, scope: !1418)
!1427 = !DILocation(line: 37, column: 1, scope: !1418)
!1428 = distinct !DISubprogram(name: "malloc_mutex_lock", scope: !6, file: !6, line: 217, type: !1360, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1429)
!1429 = !{!1430, !1431}
!1430 = !DILocalVariable(name: "tsdn", arg: 1, scope: !1428, file: !6, line: 217, type: !116)
!1431 = !DILocalVariable(name: "mutex", arg: 2, scope: !1428, file: !6, line: 217, type: !84)
!1432 = !DILocation(line: 217, column: 27, scope: !1428)
!1433 = !DILocation(line: 217, column: 49, scope: !1428)
!1434 = !DILocation(line: 218, column: 49, scope: !1428)
!1435 = !DILocation(line: 218, column: 27, scope: !1428)
!1436 = !DILocation(line: 218, column: 57, scope: !1428)
!1437 = !DILocation(line: 218, column: 64, scope: !1428)
!1438 = !DILocation(line: 218, column: 2, scope: !1428)
!1439 = !DILocation(line: 220, column: 34, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !6, line: 220, column: 7)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !6, line: 219, column: 18)
!1442 = distinct !DILexicalBlock(scope: !1428, file: !6, line: 219, column: 6)
!1443 = !DILocation(line: 220, column: 7, scope: !1440)
!1444 = !DILocation(line: 220, column: 7, scope: !1441)
!1445 = !DILocation(line: 221, column: 27, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1440, file: !6, line: 220, column: 42)
!1447 = !DILocation(line: 221, column: 4, scope: !1446)
!1448 = !DILocation(line: 222, column: 20, scope: !1446)
!1449 = !DILocation(line: 222, column: 27, scope: !1446)
!1450 = !DILocation(line: 222, column: 4, scope: !1446)
!1451 = !DILocation(line: 223, column: 3, scope: !1446)
!1452 = !DILocation(line: 224, column: 28, scope: !1441)
!1453 = !DILocation(line: 224, column: 34, scope: !1441)
!1454 = !DILocation(line: 224, column: 3, scope: !1441)
!1455 = !DILocation(line: 226, column: 37, scope: !1428)
!1456 = !DILocation(line: 226, column: 15, scope: !1428)
!1457 = !DILocation(line: 226, column: 45, scope: !1428)
!1458 = !DILocation(line: 226, column: 52, scope: !1428)
!1459 = !DILocation(line: 226, column: 2, scope: !1428)
!1460 = !DILocation(line: 227, column: 1, scope: !1428)
!1461 = distinct !DISubprogram(name: "malloc_mutex_unlock", scope: !6, file: !6, line: 230, type: !1360, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1462)
!1462 = !{!1463, !1464}
!1463 = !DILocalVariable(name: "tsdn", arg: 1, scope: !1461, file: !6, line: 230, type: !116)
!1464 = !DILocalVariable(name: "mutex", arg: 2, scope: !1461, file: !6, line: 230, type: !84)
!1465 = !DILocation(line: 230, column: 29, scope: !1461)
!1466 = !DILocation(line: 230, column: 51, scope: !1461)
!1467 = !DILocation(line: 231, column: 18, scope: !1461)
!1468 = !DILocation(line: 231, column: 25, scope: !1461)
!1469 = !DILocation(line: 231, column: 2, scope: !1461)
!1470 = !DILocation(line: 232, column: 39, scope: !1461)
!1471 = !DILocation(line: 232, column: 17, scope: !1461)
!1472 = !DILocation(line: 232, column: 47, scope: !1461)
!1473 = !DILocation(line: 232, column: 54, scope: !1461)
!1474 = !DILocation(line: 232, column: 2, scope: !1461)
!1475 = !DILocation(line: 234, column: 3, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !6, line: 233, column: 18)
!1477 = distinct !DILexicalBlock(scope: !1461, file: !6, line: 233, column: 6)
!1478 = !DILocation(line: 236, column: 1, scope: !1461)
!1479 = distinct !DISubprogram(name: "witness_assert_not_owner", scope: !161, file: !161, line: 205, type: !1480, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1482)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{null, !627, !174}
!1482 = !{!1483, !1484, !1485, !1487, !1489}
!1483 = !DILocalVariable(name: "witness_tsdn", arg: 1, scope: !1479, file: !161, line: 205, type: !627)
!1484 = !DILocalVariable(name: "witness", arg: 2, scope: !1479, file: !161, line: 206, type: !174)
!1485 = !DILocalVariable(name: "witness_tsd", scope: !1479, file: !161, line: 207, type: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!1487 = !DILocalVariable(name: "witnesses", scope: !1479, file: !161, line: 208, type: !1488)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!1489 = !DILocalVariable(name: "w", scope: !1479, file: !161, line: 209, type: !181)
!1490 = !DILocation(line: 205, column: 42, scope: !1479)
!1491 = !DILocation(line: 206, column: 22, scope: !1479)
!1492 = !DILocation(line: 207, column: 2, scope: !1479)
!1493 = !DILocation(line: 207, column: 17, scope: !1479)
!1494 = !DILocation(line: 208, column: 2, scope: !1479)
!1495 = !DILocation(line: 208, column: 18, scope: !1479)
!1496 = !DILocation(line: 209, column: 2, scope: !1479)
!1497 = !DILocation(line: 209, column: 13, scope: !1479)
!1498 = !DILocation(line: 229, column: 1, scope: !1479)
!1499 = distinct !DISubprogram(name: "tsdn_witness_tsdp_get", scope: !27, file: !27, line: 300, type: !1500, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1502)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!627, !116}
!1502 = !{!1503, !1504}
!1503 = !DILocalVariable(name: "tsdn", arg: 1, scope: !1499, file: !27, line: 300, type: !116)
!1504 = !DILocalVariable(name: "tsd", scope: !1499, file: !27, line: 300, type: !39)
!1505 = !DILocation(line: 300, column: 1, scope: !1499)
!1506 = !DILocation(line: 300, column: 1, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1499, file: !27, line: 300, column: 1)
!1508 = !DILocation(line: 300, column: 1, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1507, file: !27, line: 300, column: 1)
!1510 = distinct !DISubprogram(name: "malloc_mutex_trylock_final", scope: !6, file: !6, line: 160, type: !1511, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1513)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!56, !84}
!1513 = !{!1514}
!1514 = !DILocalVariable(name: "mutex", arg: 1, scope: !1510, file: !6, line: 160, type: !84)
!1515 = !DILocation(line: 160, column: 44, scope: !1510)
!1516 = !DILocation(line: 161, column: 9, scope: !1510)
!1517 = !DILocation(line: 161, column: 2, scope: !1510)
!1518 = !DISubprogram(name: "je_malloc_mutex_lock_slow", scope: !6, file: !6, line: 151, type: !1519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{null, !84}
!1521 = distinct !DISubprogram(name: "atomic_store_b", scope: !46, file: !46, line: 68, type: !1522, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1525)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null, !1524, !56, !694}
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!1525 = !{!1526, !1527, !1528}
!1526 = !DILocalVariable(name: "a", arg: 1, scope: !1521, file: !46, line: 68, type: !1524)
!1527 = !DILocalVariable(name: "val", arg: 2, scope: !1521, file: !46, line: 68, type: !56)
!1528 = !DILocalVariable(name: "mo", arg: 3, scope: !1521, file: !46, line: 68, type: !694)
!1529 = !DILocation(line: 68, column: 1, scope: !1521)
!1530 = distinct !DISubprogram(name: "mutex_owner_stats_update", scope: !6, file: !6, line: 165, type: !1360, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1531)
!1531 = !{!1532, !1533, !1534}
!1532 = !DILocalVariable(name: "tsdn", arg: 1, scope: !1530, file: !6, line: 165, type: !116)
!1533 = !DILocalVariable(name: "mutex", arg: 2, scope: !1530, file: !6, line: 165, type: !84)
!1534 = !DILocalVariable(name: "data", scope: !1535, file: !6, line: 167, type: !1537)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !6, line: 166, column: 20)
!1536 = distinct !DILexicalBlock(scope: !1530, file: !6, line: 166, column: 6)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!1538 = !DILocation(line: 165, column: 34, scope: !1530)
!1539 = !DILocation(line: 165, column: 56, scope: !1530)
!1540 = !DILocation(line: 167, column: 3, scope: !1535)
!1541 = !DILocation(line: 167, column: 22, scope: !1535)
!1542 = !DILocation(line: 167, column: 30, scope: !1535)
!1543 = !DILocation(line: 167, column: 37, scope: !1535)
!1544 = !DILocation(line: 168, column: 3, scope: !1535)
!1545 = !DILocation(line: 168, column: 9, scope: !1535)
!1546 = !DILocation(line: 168, column: 19, scope: !1535)
!1547 = !{!1548, !731, i64 56}
!1548 = !{!"", !1549, i64 0, !1549, i64 8, !731, i64 16, !731, i64 24, !701, i64 32, !1550, i64 36, !731, i64 40, !682, i64 48, !731, i64 56}
!1549 = !{!"", !731, i64 0}
!1550 = !{!"", !701, i64 0}
!1551 = !DILocation(line: 169, column: 7, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1535, file: !6, line: 169, column: 7)
!1553 = !DILocation(line: 169, column: 13, scope: !1552)
!1554 = !{!1548, !682, i64 48}
!1555 = !DILocation(line: 169, column: 27, scope: !1552)
!1556 = !DILocation(line: 169, column: 24, scope: !1552)
!1557 = !DILocation(line: 169, column: 7, scope: !1535)
!1558 = !DILocation(line: 170, column: 23, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1552, file: !6, line: 169, column: 33)
!1560 = !DILocation(line: 170, column: 4, scope: !1559)
!1561 = !DILocation(line: 170, column: 10, scope: !1559)
!1562 = !DILocation(line: 170, column: 21, scope: !1559)
!1563 = !DILocation(line: 171, column: 4, scope: !1559)
!1564 = !DILocation(line: 171, column: 10, scope: !1559)
!1565 = !DILocation(line: 171, column: 26, scope: !1559)
!1566 = !{!1548, !731, i64 40}
!1567 = !DILocation(line: 172, column: 3, scope: !1559)
!1568 = !DILocation(line: 173, column: 2, scope: !1536)
!1569 = !DILocation(line: 174, column: 1, scope: !1530)
!1570 = distinct !DISubprogram(name: "witness_lock", scope: !161, file: !161, line: 275, type: !1571, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1573)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{null, !627, !181}
!1573 = !{!1574, !1575, !1576, !1577, !1578}
!1574 = !DILocalVariable(name: "witness_tsdn", arg: 1, scope: !1570, file: !161, line: 275, type: !627)
!1575 = !DILocalVariable(name: "witness", arg: 2, scope: !1570, file: !161, line: 275, type: !181)
!1576 = !DILocalVariable(name: "witness_tsd", scope: !1570, file: !161, line: 276, type: !1486)
!1577 = !DILocalVariable(name: "witnesses", scope: !1570, file: !161, line: 277, type: !1488)
!1578 = !DILocalVariable(name: "w", scope: !1570, file: !161, line: 278, type: !181)
!1579 = !DILocation(line: 275, column: 30, scope: !1570)
!1580 = !DILocation(line: 275, column: 55, scope: !1570)
!1581 = !DILocation(line: 276, column: 2, scope: !1570)
!1582 = !DILocation(line: 276, column: 17, scope: !1570)
!1583 = !DILocation(line: 277, column: 2, scope: !1570)
!1584 = !DILocation(line: 277, column: 18, scope: !1570)
!1585 = !DILocation(line: 278, column: 2, scope: !1570)
!1586 = !DILocation(line: 278, column: 13, scope: !1570)
!1587 = !DILocation(line: 315, column: 1, scope: !1570)
!1588 = distinct !DISubprogram(name: "tsdn_null", scope: !27, file: !27, line: 229, type: !1589, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1593)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!56, !1591}
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!1593 = !{!1594}
!1594 = !DILocalVariable(name: "tsdn", arg: 1, scope: !1588, file: !27, line: 229, type: !1591)
!1595 = !DILocation(line: 229, column: 25, scope: !1588)
!1596 = !DILocation(line: 230, column: 9, scope: !1588)
!1597 = !DILocation(line: 230, column: 14, scope: !1588)
!1598 = !DILocation(line: 230, column: 2, scope: !1588)
!1599 = distinct !DISubprogram(name: "tsdn_tsd", scope: !27, file: !27, line: 234, type: !1600, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1602)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!39, !116}
!1602 = !{!1603}
!1603 = !DILocalVariable(name: "tsdn", arg: 1, scope: !1599, file: !27, line: 234, type: !116)
!1604 = !DILocation(line: 234, column: 18, scope: !1599)
!1605 = !DILocation(line: 235, column: 2, scope: !1599)
!1606 = !DILocation(line: 235, column: 2, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1599, file: !27, line: 235, column: 2)
!1608 = !DILocation(line: 237, column: 10, scope: !1599)
!1609 = !DILocation(line: 237, column: 16, scope: !1599)
!1610 = !DILocation(line: 237, column: 2, scope: !1599)
!1611 = distinct !DISubprogram(name: "tsd_witness_tsdp_get", scope: !27, file: !27, line: 284, type: !1612, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1614)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!1486, !39}
!1614 = !{!1615, !1616}
!1615 = !DILocalVariable(name: "tsd", arg: 1, scope: !1611, file: !27, line: 284, type: !39)
!1616 = !DILocalVariable(name: "state", scope: !1611, file: !27, line: 284, type: !50)
!1617 = !DILocation(line: 284, column: 1, scope: !1611)
!1618 = !DILocation(line: 284, column: 1, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1611, file: !27, line: 284, column: 1)
!1620 = distinct !DISubprogram(name: "tsd_witness_tsdp_get_unsafe", scope: !27, file: !27, line: 265, type: !1612, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1621)
!1621 = !{!1622}
!1622 = !DILocalVariable(name: "tsd", arg: 1, scope: !1620, file: !27, line: 265, type: !39)
!1623 = !DILocation(line: 265, column: 1, scope: !1620)
!1624 = !DISubprogram(name: "pthread_mutex_trylock", scope: !1625, file: !1625, line: 790, type: !1626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1625 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!132, !1628}
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!1629 = distinct !DISubprogram(name: "witness_unlock", scope: !161, file: !161, line: 318, type: !1571, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1630)
!1630 = !{!1631, !1632, !1633, !1634}
!1631 = !DILocalVariable(name: "witness_tsdn", arg: 1, scope: !1629, file: !161, line: 318, type: !627)
!1632 = !DILocalVariable(name: "witness", arg: 2, scope: !1629, file: !161, line: 318, type: !181)
!1633 = !DILocalVariable(name: "witness_tsd", scope: !1629, file: !161, line: 319, type: !1486)
!1634 = !DILocalVariable(name: "witnesses", scope: !1629, file: !161, line: 320, type: !1488)
!1635 = !DILocation(line: 318, column: 32, scope: !1629)
!1636 = !DILocation(line: 318, column: 57, scope: !1629)
!1637 = !DILocation(line: 319, column: 2, scope: !1629)
!1638 = !DILocation(line: 319, column: 17, scope: !1629)
!1639 = !DILocation(line: 320, column: 2, scope: !1629)
!1640 = !DILocation(line: 320, column: 18, scope: !1629)
!1641 = !DILocation(line: 345, column: 1, scope: !1629)
!1642 = !DISubprogram(name: "pthread_mutex_unlock", scope: !1625, file: !1625, line: 835, type: !1626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1643 = distinct !DISubprogram(name: "tsd_nominal", scope: !27, file: !27, line: 384, type: !1125, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1644)
!1644 = !{!1645}
!1645 = !DILocalVariable(name: "tsd", arg: 1, scope: !1643, file: !27, line: 384, type: !39)
!1646 = !DILocation(line: 384, column: 20, scope: !1643)
!1647 = !DILocation(line: 385, column: 24, scope: !1643)
!1648 = !DILocation(line: 385, column: 10, scope: !1643)
!1649 = !DILocation(line: 385, column: 29, scope: !1643)
!1650 = !DILocation(line: 385, column: 2, scope: !1643)
!1651 = distinct !DISubprogram(name: "tsd_local_slow", scope: !3, file: !3, line: 145, type: !1125, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1652)
!1652 = !{!1653}
!1653 = !DILocalVariable(name: "tsd", arg: 1, scope: !1651, file: !3, line: 145, type: !39)
!1654 = !DILocation(line: 145, column: 23, scope: !1651)
!1655 = !DILocation(line: 146, column: 33, scope: !1651)
!1656 = !DILocation(line: 146, column: 10, scope: !1651)
!1657 = !DILocation(line: 147, column: 6, scope: !1651)
!1658 = !DILocation(line: 147, column: 34, scope: !1651)
!1659 = !DILocation(line: 147, column: 9, scope: !1651)
!1660 = !DILocation(line: 147, column: 39, scope: !1651)
!1661 = !DILocation(line: 146, column: 2, scope: !1651)
!1662 = distinct !DISubprogram(name: "tsd_tcache_enabled_get", scope: !27, file: !27, line: 309, type: !1125, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1663)
!1663 = !{!1664}
!1664 = !DILocalVariable(name: "tsd", arg: 1, scope: !1662, file: !27, line: 309, type: !39)
!1665 = !DILocation(line: 309, column: 1, scope: !1662)
!1666 = distinct !DISubprogram(name: "tsd_reentrancy_level_get", scope: !27, file: !27, line: 309, type: !1667, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1669)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!59, !39}
!1669 = !{!1670}
!1670 = !DILocalVariable(name: "tsd", arg: 1, scope: !1666, file: !27, line: 309, type: !39)
!1671 = !DILocation(line: 309, column: 1, scope: !1666)
!1672 = distinct !DISubprogram(name: "tsd_tcache_enabledp_get", scope: !27, file: !27, line: 284, type: !1325, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1673)
!1673 = !{!1674, !1675}
!1674 = !DILocalVariable(name: "tsd", arg: 1, scope: !1672, file: !27, line: 284, type: !39)
!1675 = !DILocalVariable(name: "state", scope: !1672, file: !27, line: 284, type: !50)
!1676 = !DILocation(line: 284, column: 1, scope: !1672)
!1677 = !DILocation(line: 284, column: 1, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1672, file: !27, line: 284, column: 1)
!1679 = distinct !DISubprogram(name: "tsd_tcache_enabledp_get_unsafe", scope: !27, file: !27, line: 265, type: !1325, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1680)
!1680 = !{!1681}
!1681 = !DILocalVariable(name: "tsd", arg: 1, scope: !1679, file: !27, line: 265, type: !39)
!1682 = !DILocation(line: 265, column: 1, scope: !1679)
!1683 = !DISubprogram(name: "pthread_setspecific", scope: !1625, file: !1625, line: 1308, type: !1684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!132, !652, !213}
!1686 = !DISubprogram(name: "je_malloc_write", scope: !1687, file: !1687, line: 46, type: !1688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1687 = !DIFile(filename: "include/jemalloc/internal/malloc_io.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "c88dc61dffea4ec897ca72ec05d5ef36")
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !165}
!1690 = !DISubprogram(name: "abort", scope: !1691, file: !1691, line: 598, type: !1335, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1691 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1692 = !DISubprogram(name: "je_rtree_ctx_data_init", scope: !248, file: !248, line: 48, type: !1693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{null, !1695}
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!1696 = distinct !DISubprogram(name: "tsd_rtree_ctxp_get_unsafe", scope: !27, file: !27, line: 265, type: !1697, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1699)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!1695, !39}
!1699 = !{!1700}
!1700 = !DILocalVariable(name: "tsd", arg: 1, scope: !1696, file: !27, line: 265, type: !39)
!1701 = !DILocation(line: 265, column: 1, scope: !1696)
!1702 = distinct !DISubprogram(name: "tsd_offset_statep_get", scope: !27, file: !27, line: 284, type: !1703, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1706)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!1705, !39}
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!1706 = !{!1707, !1708}
!1707 = !DILocalVariable(name: "tsd", arg: 1, scope: !1702, file: !27, line: 284, type: !39)
!1708 = !DILocalVariable(name: "state", scope: !1702, file: !27, line: 284, type: !50)
!1709 = !DILocation(line: 284, column: 1, scope: !1702)
!1710 = !DILocation(line: 284, column: 1, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1702, file: !27, line: 284, column: 1)
!1712 = !DISubprogram(name: "je_tsd_tcache_enabled_data_init", scope: !1713, file: !1713, line: 51, type: !1125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1713 = !DIFile(filename: "include/jemalloc/internal/tcache_externs.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "11b45cd556384d3b8c9c0e82de0ac4d0")
!1714 = distinct !DISubprogram(name: "tsd_offset_statep_get_unsafe", scope: !27, file: !27, line: 265, type: !1703, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1715)
!1715 = !{!1716}
!1716 = !DILocalVariable(name: "tsd", arg: 1, scope: !1714, file: !27, line: 265, type: !39)
!1717 = !DILocation(line: 265, column: 1, scope: !1714)
!1718 = distinct !DISubprogram(name: "tsd_reentrancy_levelp_get_unsafe", scope: !27, file: !27, line: 265, type: !1164, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1719)
!1719 = !{!1720}
!1720 = !DILocalVariable(name: "tsd", arg: 1, scope: !1718, file: !27, line: 265, type: !39)
!1721 = !DILocation(line: 265, column: 1, scope: !1718)
!1722 = !DISubprogram(name: "je_prof_tdata_cleanup", scope: !1723, file: !1723, line: 74, type: !774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1723 = !DIFile(filename: "include/jemalloc/internal/prof_externs.h", directory: "/local-ssd/memkind-fjqz6bdcywckzienbodqhysscvwe3njh-build/aidengro/spack-stage-memkind-1.13.0-fjqz6bdcywckzienbodqhysscvwe3njh/spack-src/jemalloc", checksumkind: CSK_MD5, checksum: "0a3dd73a28548da9a1f2fedcf71fbf54")
!1724 = !DISubprogram(name: "je_iarena_cleanup", scope: !1212, file: !1212, line: 48, type: !774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1725 = !DISubprogram(name: "je_arena_cleanup", scope: !1212, file: !1212, line: 49, type: !774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1726 = !DISubprogram(name: "je_arenas_tdata_cleanup", scope: !1212, file: !1212, line: 50, type: !774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1727 = !DISubprogram(name: "je_tcache_cleanup", scope: !1713, file: !1713, line: 39, type: !774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1728 = !DISubprogram(name: "je_witnesses_cleanup", scope: !161, file: !161, line: 159, type: !1729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{null, !1486}
!1731 = !DISubprogram(name: "pthread_key_create", scope: !1625, file: !1625, line: 1297, type: !1732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!132, !1734, !1735}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1736 = distinct !DISubprogram(name: "tsd_fetch_impl", scope: !27, file: !27, line: 345, type: !1737, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1739)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!39, !56, !56}
!1739 = !{!1740, !1741, !1742}
!1740 = !DILocalVariable(name: "init", arg: 1, scope: !1736, file: !27, line: 345, type: !56)
!1741 = !DILocalVariable(name: "minimal", arg: 2, scope: !1736, file: !27, line: 345, type: !56)
!1742 = !DILocalVariable(name: "tsd", scope: !1736, file: !27, line: 346, type: !39)
!1743 = !DILocation(line: 345, column: 21, scope: !1736)
!1744 = !DILocation(line: 345, column: 32, scope: !1736)
!1745 = !DILocation(line: 346, column: 2, scope: !1736)
!1746 = !DILocation(line: 346, column: 9, scope: !1736)
!1747 = !DILocation(line: 346, column: 23, scope: !1736)
!1748 = !DILocation(line: 346, column: 15, scope: !1736)
!1749 = !DILocation(line: 348, column: 7, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1736, file: !27, line: 348, column: 6)
!1751 = !DILocation(line: 348, column: 12, scope: !1750)
!1752 = !DILocation(line: 348, column: 15, scope: !1750)
!1753 = !DILocation(line: 348, column: 35, scope: !1750)
!1754 = !DILocation(line: 348, column: 38, scope: !1750)
!1755 = !DILocation(line: 348, column: 42, scope: !1750)
!1756 = !DILocation(line: 348, column: 6, scope: !1736)
!1757 = !DILocation(line: 349, column: 3, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1750, file: !27, line: 348, column: 51)
!1759 = !DILocation(line: 351, column: 2, scope: !1736)
!1760 = !DILocation(line: 351, column: 2, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1736, file: !27, line: 351, column: 2)
!1762 = !DILocation(line: 353, column: 6, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1736, file: !27, line: 353, column: 6)
!1764 = !DILocation(line: 353, column: 6, scope: !1736)
!1765 = !DILocation(line: 354, column: 25, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1763, file: !27, line: 353, column: 57)
!1767 = !DILocation(line: 354, column: 30, scope: !1766)
!1768 = !DILocation(line: 354, column: 10, scope: !1766)
!1769 = !DILocation(line: 354, column: 3, scope: !1766)
!1770 = !DILocation(line: 356, column: 2, scope: !1736)
!1771 = !DILocation(line: 356, column: 2, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1736, file: !27, line: 356, column: 2)
!1773 = !DILocation(line: 357, column: 18, scope: !1736)
!1774 = !DILocation(line: 357, column: 2, scope: !1736)
!1775 = !DILocation(line: 359, column: 9, scope: !1736)
!1776 = !DILocation(line: 359, column: 2, scope: !1736)
!1777 = !DILocation(line: 360, column: 1, scope: !1736)
!1778 = distinct !DISubprogram(name: "tsd_get", scope: !659, file: !659, line: 44, type: !1779, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1781)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!39, !56}
!1781 = !{!1782}
!1782 = !DILocalVariable(name: "init", arg: 1, scope: !1778, file: !659, line: 44, type: !56)
!1783 = !DILocation(line: 44, column: 14, scope: !1778)
!1784 = !DILocation(line: 45, column: 10, scope: !1778)
!1785 = !DILocation(line: 45, column: 2, scope: !1778)
!1786 = distinct !DISubprogram(name: "tsd_get_allocates", scope: !659, file: !659, line: 38, type: !648, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1787 = !DILocation(line: 39, column: 2, scope: !1786)
!1788 = distinct !DISubprogram(name: "tsd_assert_fast", scope: !27, file: !27, line: 324, type: !774, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1789)
!1789 = !{!1790}
!1790 = !DILocalVariable(name: "tsd", arg: 1, scope: !1788, file: !27, line: 324, type: !39)
!1791 = !DILocation(line: 324, column: 24, scope: !1788)
!1792 = !DILocation(line: 330, column: 2, scope: !1788)
!1793 = !DILocation(line: 330, column: 2, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1788, file: !27, line: 330, column: 2)
!1795 = !DILocation(line: 332, column: 1, scope: !1788)
!1796 = distinct !DISubprogram(name: "tsd_arenas_tdata_bypassp_get_unsafe", scope: !27, file: !27, line: 265, type: !1325, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1797)
!1797 = !{!1798}
!1798 = !DILocalVariable(name: "tsd", arg: 1, scope: !1796, file: !27, line: 265, type: !39)
!1799 = !DILocation(line: 265, column: 1, scope: !1796)
