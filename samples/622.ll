; ModuleID = 'samples/622.bc'
source_filename = "src/large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emap_s = type { %struct.rtree_s }
%struct.rtree_s = type { ptr, %struct.malloc_mutex_s, [262144 x %struct.rtree_node_elm_s] }
%struct.malloc_mutex_s = type { %union.anon }
%union.anon = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.mutex_prof_data_t, %union.pthread_mutex_t, %struct.atomic_b_t }
%struct.mutex_prof_data_t = type { %struct.nstime_t, %struct.nstime_t, i64, i64, i32, %struct.atomic_u32_t, i64, ptr, i64 }
%struct.nstime_t = type { i64 }
%struct.atomic_u32_t = type { i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.atomic_b_t = type { i8 }
%struct.rtree_node_elm_s = type { %struct.atomic_p_t }
%struct.atomic_p_t = type { ptr }
%struct.arena_config_s = type { ptr, i8 }
%struct.rtree_level_s = type { i32, i32 }
%struct.arena_s = type { [2 x %struct.atomic_u_t], %struct.atomic_u_t, ptr, %struct.arena_stats_s, %struct.anon, %struct.anon.0, %struct.malloc_mutex_s, %struct.atomic_u_t, %struct.edata_list_active_t, %struct.malloc_mutex_s, %struct.pa_shard_s, i32, ptr, %struct.nstime_t, [0 x %struct.bin_s] }
%struct.arena_stats_s = type { i64, i64, i64, i64, %struct.atomic_zu_t, i64, i64, i64, i64, i64, i64, %struct.pa_shard_stats_s, i64, i64, [12 x %struct.mutex_prof_data_t], [196 x %struct.arena_stats_large_s], %struct.nstime_t }
%struct.atomic_zu_t = type { i64 }
%struct.pa_shard_stats_s = type { i64, %struct.pac_stats_s }
%struct.pac_stats_s = type { %struct.pac_decay_stats_s, %struct.pac_decay_stats_s, i64, %struct.atomic_zu_t, %struct.atomic_zu_t }
%struct.pac_decay_stats_s = type { %struct.locked_u64_s, %struct.locked_u64_s, %struct.locked_u64_s }
%struct.locked_u64_s = type { %struct.atomic_u64_t }
%struct.atomic_u64_t = type { i64 }
%struct.arena_stats_large_s = type { %struct.locked_u64_s, %struct.locked_u64_s, %struct.locked_u64_s, %struct.locked_u64_s, %struct.locked_u64_s, i64 }
%struct.anon = type { ptr }
%struct.anon.0 = type { ptr }
%struct.atomic_u_t = type { i32 }
%struct.edata_list_active_t = type { %struct.anon.3 }
%struct.anon.3 = type { ptr }
%struct.pa_shard_s = type { ptr, %struct.atomic_zu_t, %struct.atomic_b_t, i8, %struct.pac_s, %struct.sec_s, %struct.hpa_shard_s, %struct.edata_cache_s, i32, ptr, ptr, ptr, ptr }
%struct.pac_s = type { %struct.pai_s, %struct.ecache_s, %struct.ecache_s, %struct.ecache_s, ptr, ptr, ptr, %struct.exp_grow_s, %struct.malloc_mutex_s, %struct.san_bump_alloc_s, %struct.atomic_zu_t, %struct.decay_s, %struct.decay_s, ptr, ptr, %struct.atomic_zu_t }
%struct.pai_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ecache_s = type { %struct.malloc_mutex_s, %struct.eset_s, %struct.eset_s, i32, i32, i8 }
%struct.eset_s = type { [4 x i64], [200 x %struct.eset_bin_s], [200 x %struct.eset_bin_stats_s], %struct.edata_list_inactive_t, %struct.atomic_zu_t, i32 }
%struct.eset_bin_s = type { %struct.edata_heap_t, %struct.edata_cmp_summary_s }
%struct.edata_heap_t = type { %struct.ph_s }
%struct.ph_s = type { ptr, i64 }
%struct.edata_cmp_summary_s = type { i64, i64 }
%struct.eset_bin_stats_s = type { %struct.atomic_zu_t, %struct.atomic_zu_t }
%struct.edata_list_inactive_t = type { %struct.anon.4 }
%struct.anon.4 = type { ptr }
%struct.exp_grow_s = type { i32, i32 }
%struct.san_bump_alloc_s = type { %struct.malloc_mutex_s, ptr }
%struct.decay_s = type { %struct.malloc_mutex_s, i8, %struct.atomic_zd_t, %struct.nstime_t, %struct.nstime_t, i64, %struct.nstime_t, i64, i64, [200 x i64], i64 }
%struct.atomic_zd_t = type { i64 }
%struct.sec_s = type { %struct.pai_s, ptr, %struct.sec_opts_s, ptr, i32 }
%struct.sec_opts_s = type { i64, i64, i64, i64, i64 }
%struct.hpa_shard_s = type { %struct.pai_s, ptr, %struct.malloc_mutex_s, %struct.malloc_mutex_s, ptr, %struct.edata_cache_fast_s, %struct.psset_s, i64, i32, ptr, %struct.hpa_shard_opts_s, i64, %struct.hpa_shard_nonderived_stats_s, %struct.nstime_t }
%struct.edata_cache_fast_s = type { %struct.edata_list_inactive_t, ptr, i8 }
%struct.psset_s = type { [64 x %struct.hpdata_age_heap_t], [1 x i64], %struct.psset_bin_stats_s, %struct.psset_stats_s, %struct.hpdata_empty_list_t, [128 x %struct.hpdata_purge_list_t], [2 x i64], %struct.hpdata_hugify_list_t }
%struct.hpdata_age_heap_t = type { %struct.ph_s }
%struct.psset_bin_stats_s = type { i64, i64, i64 }
%struct.psset_stats_s = type { [64 x [2 x %struct.psset_bin_stats_s]], [2 x %struct.psset_bin_stats_s], [2 x %struct.psset_bin_stats_s] }
%struct.hpdata_empty_list_t = type { %struct.anon.5 }
%struct.anon.5 = type { ptr }
%struct.hpdata_purge_list_t = type { %struct.anon.6 }
%struct.anon.6 = type { ptr }
%struct.hpdata_hugify_list_t = type { %struct.anon.7 }
%struct.anon.7 = type { ptr }
%struct.hpa_shard_opts_s = type { i64, i64, i32, i8, i64, i64 }
%struct.hpa_shard_nonderived_stats_s = type { i64, i64, i64, i64 }
%struct.edata_cache_s = type { %struct.edata_avail_t, %struct.atomic_zu_t, %struct.malloc_mutex_s, ptr }
%struct.edata_avail_t = type { %struct.ph_s }
%struct.bin_s = type { %struct.malloc_mutex_s, %struct.bin_stats_s, ptr, %struct.edata_heap_t, %struct.edata_list_active_t }
%struct.bin_stats_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.tsdn_s = type { %struct.tsd_s }
%struct.tsd_s = type { i8, i8, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i64, i64, i64, ptr, ptr, %struct.ticker_geom_s, i8, %struct.tsd_binshards_s, %struct.tsd_link_t, i8, %struct.peak_s, %struct.activity_callback_thunk_s, %struct.tcache_slow_s, %struct.rtree_ctx_s, %struct.atomic_u8_t, i64, i64, i64, i64, %struct.tcache_s, %struct.witness_tsd_s }
%struct.ticker_geom_s = type { i32, i32 }
%struct.tsd_binshards_s = type { [36 x i8] }
%struct.tsd_link_t = type { ptr, ptr }
%struct.peak_s = type { i64, i64 }
%struct.activity_callback_thunk_s = type { ptr, ptr }
%struct.tcache_slow_s = type { %struct.anon.8, %struct.cache_bin_array_descriptor_s, ptr, i32, [36 x i8], [36 x i8], [36 x i8], ptr, ptr }
%struct.anon.8 = type { ptr, ptr }
%struct.cache_bin_array_descriptor_s = type { %struct.anon.9, ptr }
%struct.anon.9 = type { ptr, ptr }
%struct.rtree_ctx_s = type { [16 x %struct.rtree_ctx_cache_elm_s], [8 x %struct.rtree_ctx_cache_elm_s] }
%struct.rtree_ctx_cache_elm_s = type { i64, ptr }
%struct.atomic_u8_t = type { i8 }
%struct.tcache_s = type { ptr, [73 x %struct.cache_bin_s] }
%struct.cache_bin_s = type { ptr, %struct.cache_bin_stats_s, i16, i16, i16 }
%struct.cache_bin_stats_s = type { i64 }
%struct.witness_tsd_s = type { %struct.witness_list_t, i8 }
%struct.witness_list_t = type { ptr }
%struct.edata_s = type { i64, ptr, %union.anon.10, ptr, i64, %union.anon.11, %union.anon.14 }
%union.anon.10 = type { i64 }
%union.anon.11 = type { %union.anon.13 }
%union.anon.13 = type { %struct.edata_heap_link_t }
%struct.edata_heap_link_t = type { %struct.phn_link_s }
%struct.phn_link_s = type { ptr, ptr, ptr }
%union.anon.14 = type { %struct.slab_data_s }
%struct.slab_data_s = type { [8 x i64] }
%struct.anon.12 = type { ptr, ptr }
%struct.hook_ralloc_args_s = type { i8, [4 x i64] }
%struct.rtree_contents_s = type { ptr, %struct.rtree_metadata_s }
%struct.rtree_metadata_s = type { i32, i32, i8, i8 }
%struct.prof_info_s = type { %struct.nstime_t, ptr, i64 }
%struct.e_prof_info_s = type { %struct.nstime_t, i64, %struct.atomic_p_t, %struct.atomic_p_t }
%struct.extent_hooks_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ehooks_s = type { i32, %struct.atomic_p_t }
%struct.rtree_leaf_elm_s = type { %struct.atomic_p_t }
%struct.emap_alloc_ctx_t = type { i32, i8 }
%struct.cache_bin_info_s = type { i16 }

@arena_emap_global = external global %struct.emap_s, align 8
@sz_large_pad = external global i64, align 8
@sz_index2size_tab = external global [232 x i64], align 16
@sz_size2index_tab = external global [0 x i8], align 1
@oversize_threshold = external global i64, align 8
@opt_percpu_arena = external global i32, align 4
@arenas = external global [0 x %struct.atomic_p_t], align 8
@arena_config_default = external constant %struct.arena_config_s, align 8
@ncpus = external global i32, align 4
@manual_arena_base = external global i32, align 4
@ticker_geom_table = external constant [64 x i8], align 16
@opt_cache_oblivious = external global i8, align 1
@rtree_levels = internal constant [2 x %struct.rtree_level_s] [%struct.rtree_level_s { i32 18, i32 34 }, %struct.rtree_level_s { i32 18, i32 52 }], align 16, !dbg !0
@tcache_bin_info = external global ptr, align 8
@opt_lg_tcache_flush_small_div = external global i32, align 4
@nhbins = external global i32, align 4
@opt_lg_tcache_flush_large_div = external global i32, align 4

; Function Attrs: nounwind uwtable
define hidden ptr @large_malloc(ptr noundef %tsdn, ptr noundef %arena, i64 noundef %usize, i1 noundef zeroext %zero) #0 !dbg !1263 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %arena.addr = alloca ptr, align 8
  %usize.addr = alloca i64, align 8
  %zero.addr = alloca i8, align 1
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !1267, metadata !DIExpression()), !dbg !1275
  store ptr %arena, ptr %arena.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %arena.addr, metadata !1268, metadata !DIExpression()), !dbg !1276
  store i64 %usize, ptr %usize.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %usize.addr, metadata !1269, metadata !DIExpression()), !dbg !1279
  %frombool = zext i1 %zero to i8
  store i8 %frombool, ptr %zero.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %zero.addr, metadata !1270, metadata !DIExpression()), !dbg !1282
  br label %do.body, !dbg !1283

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1284

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !1286, !tbaa !1271
  %1 = load ptr, ptr %arena.addr, align 8, !dbg !1287, !tbaa !1271
  %2 = load i64, ptr %usize.addr, align 8, !dbg !1288, !tbaa !1277
  %3 = load i8, ptr %zero.addr, align 1, !dbg !1289, !tbaa !1280, !range !1290, !noundef !1291
  %tobool = trunc i8 %3 to i1, !dbg !1289
  %call = call ptr @large_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef 64, i1 noundef zeroext %tobool), !dbg !1292
  ret ptr %call, !dbg !1293
}

; Function Attrs: nounwind uwtable
define hidden ptr @large_palloc(ptr noundef %tsdn, ptr noundef %arena, i64 noundef %usize, i64 noundef %alignment, i1 noundef zeroext %zero) #0 !dbg !1294 {
entry:
  %retval = alloca ptr, align 8
  %tsdn.addr = alloca ptr, align 8
  %arena.addr = alloca ptr, align 8
  %usize.addr = alloca i64, align 8
  %alignment.addr = alloca i64, align 8
  %zero.addr = alloca i8, align 1
  %ausize = alloca i64, align 8
  %edata = alloca ptr, align 8
  %idump = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !1298, metadata !DIExpression()), !dbg !1306
  store ptr %arena, ptr %arena.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %arena.addr, metadata !1299, metadata !DIExpression()), !dbg !1307
  store i64 %usize, ptr %usize.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %usize.addr, metadata !1300, metadata !DIExpression()), !dbg !1308
  store i64 %alignment, ptr %alignment.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %alignment.addr, metadata !1301, metadata !DIExpression()), !dbg !1309
  %frombool = zext i1 %zero to i8
  store i8 %frombool, ptr %zero.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %zero.addr, metadata !1302, metadata !DIExpression()), !dbg !1310
  call void @llvm.lifetime.start.p0(i64 8, ptr %ausize) #10, !dbg !1311
  tail call void @llvm.dbg.declare(metadata ptr %ausize, metadata !1303, metadata !DIExpression()), !dbg !1312
  call void @llvm.lifetime.start.p0(i64 8, ptr %edata) #10, !dbg !1313
  tail call void @llvm.dbg.declare(metadata ptr %edata, metadata !1304, metadata !DIExpression()), !dbg !1314
  call void @llvm.lifetime.start.p0(i64 1, ptr %idump) #10, !dbg !1315
  tail call void @llvm.dbg.declare(metadata ptr %idump, metadata !1305, metadata !DIExpression()), !dbg !1316
  store i8 0, ptr %idump, align 1, !dbg !1316, !tbaa !1280
  br label %do.body, !dbg !1317

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1318

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1318

do.end:                                           ; preds = %do.cond
  %0 = load i64, ptr %usize.addr, align 8, !dbg !1320, !tbaa !1277
  %1 = load i64, ptr %alignment.addr, align 8, !dbg !1321, !tbaa !1277
  %call = call i64 @sz_sa2u(i64 noundef %0, i64 noundef %1), !dbg !1322
  store i64 %call, ptr %ausize, align 8, !dbg !1323, !tbaa !1277
  %2 = load i64, ptr %ausize, align 8, !dbg !1324, !tbaa !1277
  %cmp = icmp eq i64 %2, 0, !dbg !1324
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !1324

lor.rhs:                                          ; preds = %do.end
  %3 = load i64, ptr %ausize, align 8, !dbg !1324, !tbaa !1277
  %cmp1 = icmp ugt i64 %3, 8070450532247928832, !dbg !1324
  br label %lor.end, !dbg !1324

lor.end:                                          ; preds = %lor.rhs, %do.end
  %4 = phi i1 [ true, %do.end ], [ %cmp1, %lor.rhs ]
  %lnot = xor i1 %4, true, !dbg !1324
  %lnot2 = xor i1 %lnot, true, !dbg !1324
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1324
  %conv = sext i32 %lnot.ext to i64, !dbg !1324
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1324
  %tobool = icmp ne i64 %expval, 0, !dbg !1324
  br i1 %tobool, label %if.then, label %if.end, !dbg !1326

if.then:                                          ; preds = %lor.end
  store ptr null, ptr %retval, align 8, !dbg !1327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1327

if.end:                                           ; preds = %lor.end
  %5 = load ptr, ptr %tsdn.addr, align 8, !dbg !1329, !tbaa !1271
  %call3 = call zeroext i1 @tsdn_null(ptr noundef %5), !dbg !1329
  %lnot4 = xor i1 %call3, true, !dbg !1329
  %lnot6 = xor i1 %lnot4, true, !dbg !1329
  %lnot8 = xor i1 %lnot6, true, !dbg !1329
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !1329
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !1329
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !1329
  %tobool12 = icmp ne i64 %expval11, 0, !dbg !1329
  br i1 %tobool12, label %if.then13, label %if.end16, !dbg !1331

if.then13:                                        ; preds = %if.end
  %6 = load ptr, ptr %tsdn.addr, align 8, !dbg !1332, !tbaa !1271
  %call14 = call ptr @tsdn_tsd(ptr noundef %6), !dbg !1334
  %7 = load ptr, ptr %arena.addr, align 8, !dbg !1335, !tbaa !1271
  %8 = load i64, ptr %usize.addr, align 8, !dbg !1336, !tbaa !1277
  %call15 = call ptr @arena_choose_maybe_huge(ptr noundef %call14, ptr noundef %7, i64 noundef %8), !dbg !1337
  store ptr %call15, ptr %arena.addr, align 8, !dbg !1338, !tbaa !1271
  br label %if.end16, !dbg !1339

if.end16:                                         ; preds = %if.then13, %if.end
  %9 = load ptr, ptr %arena.addr, align 8, !dbg !1340, !tbaa !1271
  %cmp17 = icmp eq ptr %9, null, !dbg !1340
  %lnot19 = xor i1 %cmp17, true, !dbg !1340
  %lnot21 = xor i1 %lnot19, true, !dbg !1340
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !1340
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !1340
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !1340
  %tobool25 = icmp ne i64 %expval24, 0, !dbg !1340
  br i1 %tobool25, label %if.then30, label %lor.lhs.false, !dbg !1342

lor.lhs.false:                                    ; preds = %if.end16
  %10 = load ptr, ptr %tsdn.addr, align 8, !dbg !1343, !tbaa !1271
  %11 = load ptr, ptr %arena.addr, align 8, !dbg !1344, !tbaa !1271
  %12 = load i64, ptr %usize.addr, align 8, !dbg !1345, !tbaa !1277
  %13 = load i64, ptr %alignment.addr, align 8, !dbg !1346, !tbaa !1277
  %14 = load i8, ptr %zero.addr, align 1, !dbg !1347, !tbaa !1280, !range !1290, !noundef !1291
  %tobool26 = trunc i8 %14 to i1, !dbg !1347
  %call27 = call ptr @arena_extent_alloc_large(ptr noundef %10, ptr noundef %11, i64 noundef %12, i64 noundef %13, i1 noundef zeroext %tobool26), !dbg !1348
  store ptr %call27, ptr %edata, align 8, !dbg !1349, !tbaa !1271
  %cmp28 = icmp eq ptr %call27, null, !dbg !1350
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !1351

if.then30:                                        ; preds = %lor.lhs.false, %if.end16
  store ptr null, ptr %retval, align 8, !dbg !1352
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1352

if.end31:                                         ; preds = %lor.lhs.false
  %15 = load ptr, ptr %arena.addr, align 8, !dbg !1354, !tbaa !1271
  %call32 = call zeroext i1 @arena_is_auto(ptr noundef %15), !dbg !1356
  br i1 %call32, label %if.end35, label %if.then33, !dbg !1357

if.then33:                                        ; preds = %if.end31
  %16 = load ptr, ptr %tsdn.addr, align 8, !dbg !1358, !tbaa !1271
  %17 = load ptr, ptr %arena.addr, align 8, !dbg !1360, !tbaa !1271
  %large_mtx = getelementptr inbounds %struct.arena_s, ptr %17, i32 0, i32 9, !dbg !1361
  call void @malloc_mutex_lock(ptr noundef %16, ptr noundef %large_mtx), !dbg !1362
  %18 = load ptr, ptr %arena.addr, align 8, !dbg !1363, !tbaa !1271
  %large = getelementptr inbounds %struct.arena_s, ptr %18, i32 0, i32 8, !dbg !1364
  %19 = load ptr, ptr %edata, align 8, !dbg !1365, !tbaa !1271
  call void @edata_list_active_append(ptr noundef %large, ptr noundef %19), !dbg !1366
  %20 = load ptr, ptr %tsdn.addr, align 8, !dbg !1367, !tbaa !1271
  %21 = load ptr, ptr %arena.addr, align 8, !dbg !1368, !tbaa !1271
  %large_mtx34 = getelementptr inbounds %struct.arena_s, ptr %21, i32 0, i32 9, !dbg !1369
  call void @malloc_mutex_unlock(ptr noundef %20, ptr noundef %large_mtx34), !dbg !1370
  br label %if.end35, !dbg !1371

if.end35:                                         ; preds = %if.then33, %if.end31
  %22 = load ptr, ptr %tsdn.addr, align 8, !dbg !1372, !tbaa !1271
  %23 = load ptr, ptr %arena.addr, align 8, !dbg !1373, !tbaa !1271
  call void @arena_decay_tick(ptr noundef %22, ptr noundef %23), !dbg !1374
  %24 = load ptr, ptr %edata, align 8, !dbg !1375, !tbaa !1271
  %call36 = call ptr @edata_addr_get(ptr noundef %24), !dbg !1376
  store ptr %call36, ptr %retval, align 8, !dbg !1377
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1377

cleanup:                                          ; preds = %if.end35, %if.then30, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %idump) #10, !dbg !1378
  call void @llvm.lifetime.end.p0(i64 8, ptr %edata) #10, !dbg !1378
  call void @llvm.lifetime.end.p0(i64 8, ptr %ausize) #10, !dbg !1378
  %25 = load ptr, ptr %retval, align 8, !dbg !1378
  ret ptr %25, !dbg !1378
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @sz_sa2u(i64 noundef %size, i64 noundef %alignment) #2 !dbg !1379 {
entry:
  %retval = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %alignment.addr = alloca i64, align 8
  %usize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1383, metadata !DIExpression()), !dbg !1386
  store i64 %alignment, ptr %alignment.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %alignment.addr, metadata !1384, metadata !DIExpression()), !dbg !1387
  call void @llvm.lifetime.start.p0(i64 8, ptr %usize) #10, !dbg !1388
  tail call void @llvm.dbg.declare(metadata ptr %usize, metadata !1385, metadata !DIExpression()), !dbg !1389
  br label %do.body, !dbg !1390

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1391

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1391

do.end:                                           ; preds = %do.cond
  %0 = load i64, ptr %size.addr, align 8, !dbg !1393, !tbaa !1277
  %cmp = icmp ule i64 %0, 14336, !dbg !1395
  br i1 %cmp, label %land.lhs.true, label %if.end5, !dbg !1396

land.lhs.true:                                    ; preds = %do.end
  %1 = load i64, ptr %alignment.addr, align 8, !dbg !1397, !tbaa !1277
  %cmp1 = icmp ule i64 %1, 4096, !dbg !1398
  br i1 %cmp1, label %if.then, label %if.end5, !dbg !1399

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, ptr %size.addr, align 8, !dbg !1400, !tbaa !1277
  %3 = load i64, ptr %alignment.addr, align 8, !dbg !1400, !tbaa !1277
  %sub = sub i64 %3, 1, !dbg !1400
  %add = add i64 %2, %sub, !dbg !1400
  %4 = load i64, ptr %alignment.addr, align 8, !dbg !1400, !tbaa !1277
  %not = xor i64 %4, -1, !dbg !1400
  %add2 = add i64 %not, 1, !dbg !1400
  %and = and i64 %add, %add2, !dbg !1400
  %call = call i64 @sz_s2u(i64 noundef %and), !dbg !1402
  store i64 %call, ptr %usize, align 8, !dbg !1403, !tbaa !1277
  %5 = load i64, ptr %usize, align 8, !dbg !1404, !tbaa !1277
  %cmp3 = icmp ult i64 %5, 16384, !dbg !1406
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !1407

if.then4:                                         ; preds = %if.then
  %6 = load i64, ptr %usize, align 8, !dbg !1408, !tbaa !1277
  store i64 %6, ptr %retval, align 8, !dbg !1410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1410

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !1411

if.end5:                                          ; preds = %if.end, %land.lhs.true, %do.end
  %7 = load i64, ptr %alignment.addr, align 8, !dbg !1412, !tbaa !1277
  %cmp6 = icmp ugt i64 %7, 8070450532247928832, !dbg !1412
  %lnot = xor i1 %cmp6, true, !dbg !1412
  %lnot7 = xor i1 %lnot, true, !dbg !1412
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !1412
  %conv = sext i32 %lnot.ext to i64, !dbg !1412
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1412
  %tobool = icmp ne i64 %expval, 0, !dbg !1412
  br i1 %tobool, label %if.then8, label %if.end9, !dbg !1414

if.then8:                                         ; preds = %if.end5
  store i64 0, ptr %retval, align 8, !dbg !1415
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1415

if.end9:                                          ; preds = %if.end5
  %8 = load i64, ptr %size.addr, align 8, !dbg !1417, !tbaa !1277
  %cmp10 = icmp ule i64 %8, 16384, !dbg !1419
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !1420

if.then12:                                        ; preds = %if.end9
  store i64 16384, ptr %usize, align 8, !dbg !1421, !tbaa !1277
  br label %if.end18, !dbg !1423

if.else:                                          ; preds = %if.end9
  %9 = load i64, ptr %size.addr, align 8, !dbg !1424, !tbaa !1277
  %call13 = call i64 @sz_s2u(i64 noundef %9), !dbg !1426
  store i64 %call13, ptr %usize, align 8, !dbg !1427, !tbaa !1277
  %10 = load i64, ptr %usize, align 8, !dbg !1428, !tbaa !1277
  %11 = load i64, ptr %size.addr, align 8, !dbg !1430, !tbaa !1277
  %cmp14 = icmp ult i64 %10, %11, !dbg !1431
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !1432

if.then16:                                        ; preds = %if.else
  store i64 0, ptr %retval, align 8, !dbg !1433
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1433

if.end17:                                         ; preds = %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then12
  %12 = load i64, ptr %usize, align 8, !dbg !1435, !tbaa !1277
  %13 = load i64, ptr @sz_large_pad, align 8, !dbg !1437, !tbaa !1277
  %add19 = add i64 %12, %13, !dbg !1438
  %14 = load i64, ptr %alignment.addr, align 8, !dbg !1439, !tbaa !1277
  %add20 = add i64 %14, 4095, !dbg !1439
  %and21 = and i64 %add20, -4096, !dbg !1439
  %add22 = add i64 %add19, %and21, !dbg !1440
  %sub23 = sub i64 %add22, 4096, !dbg !1441
  %15 = load i64, ptr %usize, align 8, !dbg !1442, !tbaa !1277
  %cmp24 = icmp ult i64 %sub23, %15, !dbg !1443
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !1444

if.then26:                                        ; preds = %if.end18
  store i64 0, ptr %retval, align 8, !dbg !1445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1445

if.end27:                                         ; preds = %if.end18
  %16 = load i64, ptr %usize, align 8, !dbg !1447, !tbaa !1277
  store i64 %16, ptr %retval, align 8, !dbg !1448
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1448

cleanup:                                          ; preds = %if.end27, %if.then26, %if.then16, %if.then8, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %usize) #10, !dbg !1449
  %17 = load i64, ptr %retval, align 8, !dbg !1449
  ret i64 %17, !dbg !1449
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i1 @tsdn_null(ptr noundef %tsdn) #2 !dbg !1450 {
entry:
  %tsdn.addr = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !1456, metadata !DIExpression()), !dbg !1457
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !1458, !tbaa !1271
  %cmp = icmp eq ptr %0, null, !dbg !1459
  ret i1 %cmp, !dbg !1460
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @arena_choose_maybe_huge(ptr noundef %tsd, ptr noundef %arena, i64 noundef %size) #2 !dbg !1461 {
entry:
  %retval = alloca ptr, align 8
  %tsd.addr = alloca ptr, align 8
  %arena.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %tsd_arena = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !1466, metadata !DIExpression()), !dbg !1472
  store ptr %arena, ptr %arena.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %arena.addr, metadata !1467, metadata !DIExpression()), !dbg !1473
  store i64 %size, ptr %size.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1468, metadata !DIExpression()), !dbg !1474
  %0 = load ptr, ptr %arena.addr, align 8, !dbg !1475, !tbaa !1271
  %cmp = icmp ne ptr %0, null, !dbg !1477
  br i1 %cmp, label %if.then, label %if.end, !dbg !1478

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %arena.addr, align 8, !dbg !1479, !tbaa !1271
  store ptr %1, ptr %retval, align 8, !dbg !1481
  br label %return, !dbg !1481

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1482, !tbaa !1277
  %3 = load i64, ptr @oversize_threshold, align 8, !dbg !1482, !tbaa !1277
  %cmp1 = icmp uge i64 %2, %3, !dbg !1482
  %lnot = xor i1 %cmp1, true, !dbg !1482
  %lnot2 = xor i1 %lnot, true, !dbg !1482
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1482
  %conv = sext i32 %lnot.ext to i64, !dbg !1482
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1482
  %tobool = icmp ne i64 %expval, 0, !dbg !1482
  br i1 %tobool, label %if.then3, label %if.end11, !dbg !1483

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsd_arena) #10, !dbg !1484
  tail call void @llvm.dbg.declare(metadata ptr %tsd_arena, metadata !1469, metadata !DIExpression()), !dbg !1485
  %4 = load ptr, ptr %tsd.addr, align 8, !dbg !1486, !tbaa !1271
  %call = call ptr @tsd_arena_get(ptr noundef %4), !dbg !1487
  store ptr %call, ptr %tsd_arena, align 8, !dbg !1485, !tbaa !1271
  %5 = load ptr, ptr %tsd_arena, align 8, !dbg !1488, !tbaa !1271
  %cmp4 = icmp eq ptr %5, null, !dbg !1490
  br i1 %cmp4, label %if.then8, label %lor.lhs.false, !dbg !1491

lor.lhs.false:                                    ; preds = %if.then3
  %6 = load ptr, ptr %tsd_arena, align 8, !dbg !1492, !tbaa !1271
  %call6 = call zeroext i1 @arena_is_auto(ptr noundef %6), !dbg !1493
  br i1 %call6, label %if.then8, label %if.end10, !dbg !1494

if.then8:                                         ; preds = %lor.lhs.false, %if.then3
  %7 = load ptr, ptr %tsd.addr, align 8, !dbg !1495, !tbaa !1271
  %call9 = call ptr @arena_choose_huge(ptr noundef %7), !dbg !1497
  store ptr %call9, ptr %retval, align 8, !dbg !1498
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1498

if.end10:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1499
  br label %cleanup, !dbg !1499

cleanup:                                          ; preds = %if.end10, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsd_arena) #10, !dbg !1499
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end11, !dbg !1500

if.end11:                                         ; preds = %cleanup.cont, %if.end
  %8 = load ptr, ptr %tsd.addr, align 8, !dbg !1501, !tbaa !1271
  %call12 = call ptr @arena_choose(ptr noundef %8, ptr noundef null), !dbg !1502
  store ptr %call12, ptr %retval, align 8, !dbg !1503
  br label %return, !dbg !1503

return:                                           ; preds = %if.end11, %cleanup, %if.then
  %9 = load ptr, ptr %retval, align 8, !dbg !1504
  ret ptr %9, !dbg !1504

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsdn_tsd(ptr noundef %tsdn) #2 !dbg !1505 {
entry:
  %tsdn.addr = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !1509, metadata !DIExpression()), !dbg !1510
  br label %do.body, !dbg !1511

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1512

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !1514, !tbaa !1271
  %tsd = getelementptr inbounds %struct.tsdn_s, ptr %0, i32 0, i32 0, !dbg !1515
  ret ptr %tsd, !dbg !1516
}

declare !dbg !1517 ptr @arena_extent_alloc_large(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) #4

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @arena_is_auto(ptr noundef %arena) #5 !dbg !1521 {
entry:
  %arena.addr = alloca ptr, align 8
  store ptr %arena, ptr %arena.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %arena.addr, metadata !1526, metadata !DIExpression()), !dbg !1527
  br label %do.body, !dbg !1528

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1529

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %arena.addr, align 8, !dbg !1531, !tbaa !1271
  %call = call i32 @arena_ind_get(ptr noundef %0), !dbg !1532
  %1 = load i32, ptr @manual_arena_base, align 4, !dbg !1533, !tbaa !1534
  %cmp = icmp ult i32 %call, %1, !dbg !1536
  ret i1 %cmp, !dbg !1537
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @malloc_mutex_lock(ptr noundef %tsdn, ptr noundef %mutex) #5 !dbg !1538 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %mutex.addr = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !1542, metadata !DIExpression()), !dbg !1544
  store ptr %mutex, ptr %mutex.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %mutex.addr, metadata !1543, metadata !DIExpression()), !dbg !1545
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !1546, !tbaa !1271
  %call = call ptr @tsdn_witness_tsdp_get(ptr noundef %0), !dbg !1547
  %1 = load ptr, ptr %mutex.addr, align 8, !dbg !1548, !tbaa !1271
  %2 = getelementptr inbounds %struct.malloc_mutex_s, ptr %1, i32 0, i32 0, !dbg !1549
  call void @witness_assert_not_owner(ptr noundef %call, ptr noundef %2), !dbg !1550
  %3 = load ptr, ptr %mutex.addr, align 8, !dbg !1551, !tbaa !1271
  %call1 = call zeroext i1 @malloc_mutex_trylock_final(ptr noundef %3), !dbg !1555
  br i1 %call1, label %if.then, label %if.end, !dbg !1556

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %mutex.addr, align 8, !dbg !1557, !tbaa !1271
  call void @malloc_mutex_lock_slow(ptr noundef %4), !dbg !1559
  %5 = load ptr, ptr %mutex.addr, align 8, !dbg !1560, !tbaa !1271
  %6 = getelementptr inbounds %struct.malloc_mutex_s, ptr %5, i32 0, i32 0, !dbg !1561
  %locked = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 2, !dbg !1561
  call void @atomic_store_b(ptr noundef %locked, i1 noundef zeroext true, i32 noundef 0), !dbg !1562
  br label %if.end, !dbg !1563

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %tsdn.addr, align 8, !dbg !1564, !tbaa !1271
  %8 = load ptr, ptr %mutex.addr, align 8, !dbg !1565, !tbaa !1271
  call void @mutex_owner_stats_update(ptr noundef %7, ptr noundef %8), !dbg !1566
  %9 = load ptr, ptr %tsdn.addr, align 8, !dbg !1567, !tbaa !1271
  %call2 = call ptr @tsdn_witness_tsdp_get(ptr noundef %9), !dbg !1568
  %10 = load ptr, ptr %mutex.addr, align 8, !dbg !1569, !tbaa !1271
  %11 = getelementptr inbounds %struct.malloc_mutex_s, ptr %10, i32 0, i32 0, !dbg !1570
  call void @witness_lock(ptr noundef %call2, ptr noundef %11), !dbg !1571
  ret void, !dbg !1572
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @edata_list_active_append(ptr noundef %list, ptr noundef %item) #5 !dbg !1573 {
entry:
  %list.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !1577, metadata !DIExpression()), !dbg !1579
  store ptr %item, ptr %item.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %item.addr, metadata !1578, metadata !DIExpression()), !dbg !1579
  br label %do.body, !dbg !1579

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %item.addr, align 8, !dbg !1580, !tbaa !1271
  %1 = load ptr, ptr %item.addr, align 8, !dbg !1580, !tbaa !1271
  %2 = getelementptr inbounds %struct.edata_s, ptr %1, i32 0, i32 5, !dbg !1580
  %qre_next = getelementptr inbounds %struct.anon.12, ptr %2, i32 0, i32 0, !dbg !1580
  store ptr %0, ptr %qre_next, align 8, !dbg !1580, !tbaa !1582
  %3 = load ptr, ptr %item.addr, align 8, !dbg !1580, !tbaa !1271
  %4 = load ptr, ptr %item.addr, align 8, !dbg !1580, !tbaa !1271
  %5 = getelementptr inbounds %struct.edata_s, ptr %4, i32 0, i32 5, !dbg !1580
  %qre_prev = getelementptr inbounds %struct.anon.12, ptr %5, i32 0, i32 1, !dbg !1580
  store ptr %3, ptr %qre_prev, align 8, !dbg !1580, !tbaa !1582
  br label %do.end, !dbg !1580

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !1579

do.body1:                                         ; preds = %do.end
  %6 = load ptr, ptr %list.addr, align 8, !dbg !1583, !tbaa !1271
  %head = getelementptr inbounds %struct.edata_list_active_t, ptr %6, i32 0, i32 0, !dbg !1583
  %qlh_first = getelementptr inbounds %struct.anon.3, ptr %head, i32 0, i32 0, !dbg !1583
  %7 = load ptr, ptr %qlh_first, align 8, !dbg !1583, !tbaa !1586
  %cmp = icmp eq ptr %7, null, !dbg !1583
  br i1 %cmp, label %if.end, label %if.then, !dbg !1589

if.then:                                          ; preds = %do.body1
  br label %do.body2, !dbg !1590

do.body2:                                         ; preds = %if.then
  %8 = load ptr, ptr %list.addr, align 8, !dbg !1592, !tbaa !1271
  %head3 = getelementptr inbounds %struct.edata_list_active_t, ptr %8, i32 0, i32 0, !dbg !1592
  %qlh_first4 = getelementptr inbounds %struct.anon.3, ptr %head3, i32 0, i32 0, !dbg !1592
  %9 = load ptr, ptr %qlh_first4, align 8, !dbg !1592, !tbaa !1586
  %10 = getelementptr inbounds %struct.edata_s, ptr %9, i32 0, i32 5, !dbg !1592
  %qre_prev5 = getelementptr inbounds %struct.anon.12, ptr %10, i32 0, i32 1, !dbg !1592
  %11 = load ptr, ptr %qre_prev5, align 8, !dbg !1592, !tbaa !1582
  %12 = load ptr, ptr %item.addr, align 8, !dbg !1592, !tbaa !1271
  %13 = getelementptr inbounds %struct.edata_s, ptr %12, i32 0, i32 5, !dbg !1592
  %qre_prev6 = getelementptr inbounds %struct.anon.12, ptr %13, i32 0, i32 1, !dbg !1592
  %14 = load ptr, ptr %qre_prev6, align 8, !dbg !1592, !tbaa !1582
  %15 = getelementptr inbounds %struct.edata_s, ptr %14, i32 0, i32 5, !dbg !1592
  %qre_next7 = getelementptr inbounds %struct.anon.12, ptr %15, i32 0, i32 0, !dbg !1592
  store ptr %11, ptr %qre_next7, align 8, !dbg !1592, !tbaa !1582
  %16 = load ptr, ptr %item.addr, align 8, !dbg !1592, !tbaa !1271
  %17 = getelementptr inbounds %struct.edata_s, ptr %16, i32 0, i32 5, !dbg !1592
  %qre_prev8 = getelementptr inbounds %struct.anon.12, ptr %17, i32 0, i32 1, !dbg !1592
  %18 = load ptr, ptr %qre_prev8, align 8, !dbg !1592, !tbaa !1582
  %19 = load ptr, ptr %list.addr, align 8, !dbg !1592, !tbaa !1271
  %head9 = getelementptr inbounds %struct.edata_list_active_t, ptr %19, i32 0, i32 0, !dbg !1592
  %qlh_first10 = getelementptr inbounds %struct.anon.3, ptr %head9, i32 0, i32 0, !dbg !1592
  %20 = load ptr, ptr %qlh_first10, align 8, !dbg !1592, !tbaa !1586
  %21 = getelementptr inbounds %struct.edata_s, ptr %20, i32 0, i32 5, !dbg !1592
  %qre_prev11 = getelementptr inbounds %struct.anon.12, ptr %21, i32 0, i32 1, !dbg !1592
  store ptr %18, ptr %qre_prev11, align 8, !dbg !1592, !tbaa !1582
  %22 = load ptr, ptr %item.addr, align 8, !dbg !1592, !tbaa !1271
  %23 = getelementptr inbounds %struct.edata_s, ptr %22, i32 0, i32 5, !dbg !1592
  %qre_prev12 = getelementptr inbounds %struct.anon.12, ptr %23, i32 0, i32 1, !dbg !1592
  %24 = load ptr, ptr %qre_prev12, align 8, !dbg !1592, !tbaa !1582
  %25 = getelementptr inbounds %struct.edata_s, ptr %24, i32 0, i32 5, !dbg !1592
  %qre_next13 = getelementptr inbounds %struct.anon.12, ptr %25, i32 0, i32 0, !dbg !1592
  %26 = load ptr, ptr %qre_next13, align 8, !dbg !1592, !tbaa !1582
  %27 = load ptr, ptr %item.addr, align 8, !dbg !1592, !tbaa !1271
  %28 = getelementptr inbounds %struct.edata_s, ptr %27, i32 0, i32 5, !dbg !1592
  %qre_prev14 = getelementptr inbounds %struct.anon.12, ptr %28, i32 0, i32 1, !dbg !1592
  store ptr %26, ptr %qre_prev14, align 8, !dbg !1592, !tbaa !1582
  %29 = load ptr, ptr %list.addr, align 8, !dbg !1592, !tbaa !1271
  %head15 = getelementptr inbounds %struct.edata_list_active_t, ptr %29, i32 0, i32 0, !dbg !1592
  %qlh_first16 = getelementptr inbounds %struct.anon.3, ptr %head15, i32 0, i32 0, !dbg !1592
  %30 = load ptr, ptr %qlh_first16, align 8, !dbg !1592, !tbaa !1586
  %31 = load ptr, ptr %list.addr, align 8, !dbg !1592, !tbaa !1271
  %head17 = getelementptr inbounds %struct.edata_list_active_t, ptr %31, i32 0, i32 0, !dbg !1592
  %qlh_first18 = getelementptr inbounds %struct.anon.3, ptr %head17, i32 0, i32 0, !dbg !1592
  %32 = load ptr, ptr %qlh_first18, align 8, !dbg !1592, !tbaa !1586
  %33 = getelementptr inbounds %struct.edata_s, ptr %32, i32 0, i32 5, !dbg !1592
  %qre_prev19 = getelementptr inbounds %struct.anon.12, ptr %33, i32 0, i32 1, !dbg !1592
  %34 = load ptr, ptr %qre_prev19, align 8, !dbg !1592, !tbaa !1582
  %35 = getelementptr inbounds %struct.edata_s, ptr %34, i32 0, i32 5, !dbg !1592
  %qre_next20 = getelementptr inbounds %struct.anon.12, ptr %35, i32 0, i32 0, !dbg !1592
  store ptr %30, ptr %qre_next20, align 8, !dbg !1592, !tbaa !1582
  %36 = load ptr, ptr %item.addr, align 8, !dbg !1592, !tbaa !1271
  %37 = load ptr, ptr %item.addr, align 8, !dbg !1592, !tbaa !1271
  %38 = getelementptr inbounds %struct.edata_s, ptr %37, i32 0, i32 5, !dbg !1592
  %qre_prev21 = getelementptr inbounds %struct.anon.12, ptr %38, i32 0, i32 1, !dbg !1592
  %39 = load ptr, ptr %qre_prev21, align 8, !dbg !1592, !tbaa !1582
  %40 = getelementptr inbounds %struct.edata_s, ptr %39, i32 0, i32 5, !dbg !1592
  %qre_next22 = getelementptr inbounds %struct.anon.12, ptr %40, i32 0, i32 0, !dbg !1592
  store ptr %36, ptr %qre_next22, align 8, !dbg !1592, !tbaa !1582
  br label %do.end23, !dbg !1592

do.end23:                                         ; preds = %do.body2
  br label %if.end, !dbg !1590

if.end:                                           ; preds = %do.end23, %do.body1
  %41 = load ptr, ptr %item.addr, align 8, !dbg !1589, !tbaa !1271
  %42 = getelementptr inbounds %struct.edata_s, ptr %41, i32 0, i32 5, !dbg !1589
  %qre_next24 = getelementptr inbounds %struct.anon.12, ptr %42, i32 0, i32 0, !dbg !1589
  %43 = load ptr, ptr %qre_next24, align 8, !dbg !1589, !tbaa !1582
  %44 = load ptr, ptr %list.addr, align 8, !dbg !1589, !tbaa !1271
  %head25 = getelementptr inbounds %struct.edata_list_active_t, ptr %44, i32 0, i32 0, !dbg !1589
  %qlh_first26 = getelementptr inbounds %struct.anon.3, ptr %head25, i32 0, i32 0, !dbg !1589
  store ptr %43, ptr %qlh_first26, align 8, !dbg !1589, !tbaa !1586
  br label %do.end27, !dbg !1589

do.end27:                                         ; preds = %if.end
  ret void, !dbg !1579
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @malloc_mutex_unlock(ptr noundef %tsdn, ptr noundef %mutex) #5 !dbg !1594 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %mutex.addr = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !1596, metadata !DIExpression()), !dbg !1598
  store ptr %mutex, ptr %mutex.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %mutex.addr, metadata !1597, metadata !DIExpression()), !dbg !1599
  %0 = load ptr, ptr %mutex.addr, align 8, !dbg !1600, !tbaa !1271
  %1 = getelementptr inbounds %struct.malloc_mutex_s, ptr %0, i32 0, i32 0, !dbg !1601
  %locked = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 2, !dbg !1601
  call void @atomic_store_b(ptr noundef %locked, i1 noundef zeroext false, i32 noundef 0), !dbg !1602
  %2 = load ptr, ptr %tsdn.addr, align 8, !dbg !1603, !tbaa !1271
  %call = call ptr @tsdn_witness_tsdp_get(ptr noundef %2), !dbg !1604
  %3 = load ptr, ptr %mutex.addr, align 8, !dbg !1605, !tbaa !1271
  %4 = getelementptr inbounds %struct.malloc_mutex_s, ptr %3, i32 0, i32 0, !dbg !1606
  call void @witness_unlock(ptr noundef %call, ptr noundef %4), !dbg !1607
  %5 = load ptr, ptr %mutex.addr, align 8, !dbg !1608, !tbaa !1271
  %6 = getelementptr inbounds %struct.malloc_mutex_s, ptr %5, i32 0, i32 0, !dbg !1608
  %lock = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 1, !dbg !1608
  %call1 = call i32 @pthread_mutex_unlock(ptr noundef %lock) #10, !dbg !1608
  ret void, !dbg !1611
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @arena_decay_tick(ptr noundef %tsdn, ptr noundef %arena) #2 !dbg !1612 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %arena.addr = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !1616, metadata !DIExpression()), !dbg !1618
  store ptr %arena, ptr %arena.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %arena.addr, metadata !1617, metadata !DIExpression()), !dbg !1619
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !1620, !tbaa !1271
  %1 = load ptr, ptr %arena.addr, align 8, !dbg !1621, !tbaa !1271
  call void @arena_decay_ticks(ptr noundef %0, ptr noundef %1, i32 noundef 1), !dbg !1622
  ret void, !dbg !1623
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @edata_addr_get(ptr noundef %edata) #5 !dbg !1624 {
entry:
  %edata.addr = alloca ptr, align 8
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !1630, metadata !DIExpression()), !dbg !1631
  br label %do.body, !dbg !1632

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1633

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %edata.addr, align 8, !dbg !1635, !tbaa !1271
  %e_addr = getelementptr inbounds %struct.edata_s, ptr %0, i32 0, i32 1, !dbg !1636
  %1 = load ptr, ptr %e_addr, align 8, !dbg !1636, !tbaa !1637
  ret ptr %1, !dbg !1639
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @large_ralloc_no_move(ptr noundef %tsdn, ptr noundef %edata, i64 noundef %usize_min, i64 noundef %usize_max, i1 noundef zeroext %zero) #0 !dbg !1640 {
entry:
  %retval = alloca i1, align 1
  %tsdn.addr = alloca ptr, align 8
  %edata.addr = alloca ptr, align 8
  %usize_min.addr = alloca i64, align 8
  %usize_max.addr = alloca i64, align 8
  %zero.addr = alloca i8, align 1
  %oldusize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !1644, metadata !DIExpression()), !dbg !1650
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !1645, metadata !DIExpression()), !dbg !1651
  store i64 %usize_min, ptr %usize_min.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %usize_min.addr, metadata !1646, metadata !DIExpression()), !dbg !1652
  store i64 %usize_max, ptr %usize_max.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %usize_max.addr, metadata !1647, metadata !DIExpression()), !dbg !1653
  %frombool = zext i1 %zero to i8
  store i8 %frombool, ptr %zero.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %zero.addr, metadata !1648, metadata !DIExpression()), !dbg !1654
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldusize) #10, !dbg !1655
  tail call void @llvm.dbg.declare(metadata ptr %oldusize, metadata !1649, metadata !DIExpression()), !dbg !1656
  %0 = load ptr, ptr %edata.addr, align 8, !dbg !1657, !tbaa !1271
  %call = call i64 @edata_usize_get(ptr noundef %0), !dbg !1658
  store i64 %call, ptr %oldusize, align 8, !dbg !1656, !tbaa !1277
  br label %do.body, !dbg !1659

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1660

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1660

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !1662

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !1663

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !1663

do.end3:                                          ; preds = %do.cond2
  %1 = load i64, ptr %usize_max.addr, align 8, !dbg !1665, !tbaa !1277
  %2 = load i64, ptr %oldusize, align 8, !dbg !1667, !tbaa !1277
  %cmp = icmp ugt i64 %1, %2, !dbg !1668
  br i1 %cmp, label %if.then, label %if.end15, !dbg !1669

if.then:                                          ; preds = %do.end3
  %3 = load ptr, ptr %tsdn.addr, align 8, !dbg !1670, !tbaa !1271
  %4 = load ptr, ptr %edata.addr, align 8, !dbg !1673, !tbaa !1271
  %5 = load i64, ptr %usize_max.addr, align 8, !dbg !1674, !tbaa !1277
  %6 = load i8, ptr %zero.addr, align 1, !dbg !1675, !tbaa !1280, !range !1290, !noundef !1291
  %tobool = trunc i8 %6 to i1, !dbg !1675
  %call4 = call zeroext i1 @large_ralloc_no_move_expand(ptr noundef %3, ptr noundef %4, i64 noundef %5, i1 noundef zeroext %tobool), !dbg !1676
  br i1 %call4, label %if.end, label %if.then5, !dbg !1677

if.then5:                                         ; preds = %if.then
  %7 = load ptr, ptr %tsdn.addr, align 8, !dbg !1678, !tbaa !1271
  %8 = load ptr, ptr %edata.addr, align 8, !dbg !1680, !tbaa !1271
  %call6 = call ptr @arena_get_from_edata(ptr noundef %8), !dbg !1681
  call void @arena_decay_tick(ptr noundef %7, ptr noundef %call6), !dbg !1682
  store i1 false, ptr %retval, align 1, !dbg !1683
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1683

if.end:                                           ; preds = %if.then
  %9 = load i64, ptr %usize_min.addr, align 8, !dbg !1684, !tbaa !1277
  %10 = load i64, ptr %usize_max.addr, align 8, !dbg !1686, !tbaa !1277
  %cmp7 = icmp ult i64 %9, %10, !dbg !1687
  br i1 %cmp7, label %land.lhs.true, label %if.end14, !dbg !1688

land.lhs.true:                                    ; preds = %if.end
  %11 = load i64, ptr %usize_min.addr, align 8, !dbg !1689, !tbaa !1277
  %12 = load i64, ptr %oldusize, align 8, !dbg !1690, !tbaa !1277
  %cmp8 = icmp ugt i64 %11, %12, !dbg !1691
  br i1 %cmp8, label %land.lhs.true9, label %if.end14, !dbg !1692

land.lhs.true9:                                   ; preds = %land.lhs.true
  %13 = load ptr, ptr %tsdn.addr, align 8, !dbg !1693, !tbaa !1271
  %14 = load ptr, ptr %edata.addr, align 8, !dbg !1694, !tbaa !1271
  %15 = load i64, ptr %usize_min.addr, align 8, !dbg !1695, !tbaa !1277
  %16 = load i8, ptr %zero.addr, align 1, !dbg !1696, !tbaa !1280, !range !1290, !noundef !1291
  %tobool10 = trunc i8 %16 to i1, !dbg !1696
  %call11 = call zeroext i1 @large_ralloc_no_move_expand(ptr noundef %13, ptr noundef %14, i64 noundef %15, i1 noundef zeroext %tobool10), !dbg !1697
  br i1 %call11, label %if.then12, label %if.end14, !dbg !1698

if.then12:                                        ; preds = %land.lhs.true9
  %17 = load ptr, ptr %tsdn.addr, align 8, !dbg !1699, !tbaa !1271
  %18 = load ptr, ptr %edata.addr, align 8, !dbg !1701, !tbaa !1271
  %call13 = call ptr @arena_get_from_edata(ptr noundef %18), !dbg !1702
  call void @arena_decay_tick(ptr noundef %17, ptr noundef %call13), !dbg !1703
  store i1 false, ptr %retval, align 1, !dbg !1704
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1704

if.end14:                                         ; preds = %land.lhs.true9, %land.lhs.true, %if.end
  br label %if.end15, !dbg !1705

if.end15:                                         ; preds = %if.end14, %do.end3
  %19 = load i64, ptr %oldusize, align 8, !dbg !1706, !tbaa !1277
  %20 = load i64, ptr %usize_min.addr, align 8, !dbg !1708, !tbaa !1277
  %cmp16 = icmp uge i64 %19, %20, !dbg !1709
  br i1 %cmp16, label %land.lhs.true17, label %if.end21, !dbg !1710

land.lhs.true17:                                  ; preds = %if.end15
  %21 = load i64, ptr %oldusize, align 8, !dbg !1711, !tbaa !1277
  %22 = load i64, ptr %usize_max.addr, align 8, !dbg !1712, !tbaa !1277
  %cmp18 = icmp ule i64 %21, %22, !dbg !1713
  br i1 %cmp18, label %if.then19, label %if.end21, !dbg !1714

if.then19:                                        ; preds = %land.lhs.true17
  %23 = load ptr, ptr %tsdn.addr, align 8, !dbg !1715, !tbaa !1271
  %24 = load ptr, ptr %edata.addr, align 8, !dbg !1717, !tbaa !1271
  %call20 = call ptr @arena_get_from_edata(ptr noundef %24), !dbg !1718
  call void @arena_decay_tick(ptr noundef %23, ptr noundef %call20), !dbg !1719
  store i1 false, ptr %retval, align 1, !dbg !1720
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1720

if.end21:                                         ; preds = %land.lhs.true17, %if.end15
  %25 = load i64, ptr %oldusize, align 8, !dbg !1721, !tbaa !1277
  %26 = load i64, ptr %usize_max.addr, align 8, !dbg !1723, !tbaa !1277
  %cmp22 = icmp ugt i64 %25, %26, !dbg !1724
  br i1 %cmp22, label %if.then23, label %if.end28, !dbg !1725

if.then23:                                        ; preds = %if.end21
  %27 = load ptr, ptr %tsdn.addr, align 8, !dbg !1726, !tbaa !1271
  %28 = load ptr, ptr %edata.addr, align 8, !dbg !1729, !tbaa !1271
  %29 = load i64, ptr %usize_max.addr, align 8, !dbg !1730, !tbaa !1277
  %call24 = call zeroext i1 @large_ralloc_no_move_shrink(ptr noundef %27, ptr noundef %28, i64 noundef %29), !dbg !1731
  br i1 %call24, label %if.end27, label %if.then25, !dbg !1732

if.then25:                                        ; preds = %if.then23
  %30 = load ptr, ptr %tsdn.addr, align 8, !dbg !1733, !tbaa !1271
  %31 = load ptr, ptr %edata.addr, align 8, !dbg !1735, !tbaa !1271
  %call26 = call ptr @arena_get_from_edata(ptr noundef %31), !dbg !1736
  call void @arena_decay_tick(ptr noundef %30, ptr noundef %call26), !dbg !1737
  store i1 false, ptr %retval, align 1, !dbg !1738
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1738

if.end27:                                         ; preds = %if.then23
  br label %if.end28, !dbg !1739

if.end28:                                         ; preds = %if.end27, %if.end21
  store i1 true, ptr %retval, align 1, !dbg !1740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1740

cleanup:                                          ; preds = %if.end28, %if.then25, %if.then19, %if.then12, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldusize) #10, !dbg !1741
  %32 = load i1, ptr %retval, align 1, !dbg !1741
  ret i1 %32, !dbg !1741
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @edata_usize_get(ptr noundef %edata) #5 !dbg !1742 {
entry:
  %edata.addr = alloca ptr, align 8
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !1746, metadata !DIExpression()), !dbg !1747
  %0 = load ptr, ptr %edata.addr, align 8, !dbg !1748, !tbaa !1271
  %call = call i32 @edata_szind_get(ptr noundef %0), !dbg !1749
  %call1 = call i64 @sz_index2size(i32 noundef %call), !dbg !1750
  ret i64 %call1, !dbg !1751
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @large_ralloc_no_move_expand(ptr noundef %tsdn, ptr noundef %edata, i64 noundef %usize, i1 noundef zeroext %zero) #0 !dbg !1752 {
entry:
  %retval = alloca i1, align 1
  %tsdn.addr = alloca ptr, align 8
  %edata.addr = alloca ptr, align 8
  %usize.addr = alloca i64, align 8
  %zero.addr = alloca i8, align 1
  %arena = alloca ptr, align 8
  %old_size = alloca i64, align 8
  %old_usize = alloca i64, align 8
  %new_size = alloca i64, align 8
  %szind = alloca i32, align 4
  %deferred_work_generated = alloca i8, align 1
  %err = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %zbase = alloca ptr, align 8
  %zpast = alloca ptr, align 8
  %nzero = alloca i64, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !1756, metadata !DIExpression()), !dbg !1774
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !1757, metadata !DIExpression()), !dbg !1775
  store i64 %usize, ptr %usize.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %usize.addr, metadata !1758, metadata !DIExpression()), !dbg !1776
  %frombool = zext i1 %zero to i8
  store i8 %frombool, ptr %zero.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %zero.addr, metadata !1759, metadata !DIExpression()), !dbg !1777
  call void @llvm.lifetime.start.p0(i64 8, ptr %arena) #10, !dbg !1778
  tail call void @llvm.dbg.declare(metadata ptr %arena, metadata !1760, metadata !DIExpression()), !dbg !1779
  %0 = load ptr, ptr %edata.addr, align 8, !dbg !1780, !tbaa !1271
  %call = call ptr @arena_get_from_edata(ptr noundef %0), !dbg !1781
  store ptr %call, ptr %arena, align 8, !dbg !1779, !tbaa !1271
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_size) #10, !dbg !1782
  tail call void @llvm.dbg.declare(metadata ptr %old_size, metadata !1761, metadata !DIExpression()), !dbg !1783
  %1 = load ptr, ptr %edata.addr, align 8, !dbg !1784, !tbaa !1271
  %call1 = call i64 @edata_size_get(ptr noundef %1), !dbg !1785
  store i64 %call1, ptr %old_size, align 8, !dbg !1783, !tbaa !1277
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_usize) #10, !dbg !1786
  tail call void @llvm.dbg.declare(metadata ptr %old_usize, metadata !1762, metadata !DIExpression()), !dbg !1787
  %2 = load ptr, ptr %edata.addr, align 8, !dbg !1788, !tbaa !1271
  %call2 = call i64 @edata_usize_get(ptr noundef %2), !dbg !1789
  store i64 %call2, ptr %old_usize, align 8, !dbg !1787, !tbaa !1277
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_size) #10, !dbg !1790
  tail call void @llvm.dbg.declare(metadata ptr %new_size, metadata !1763, metadata !DIExpression()), !dbg !1791
  %3 = load i64, ptr %usize.addr, align 8, !dbg !1792, !tbaa !1277
  %4 = load i64, ptr @sz_large_pad, align 8, !dbg !1793, !tbaa !1277
  %add = add i64 %3, %4, !dbg !1794
  store i64 %add, ptr %new_size, align 8, !dbg !1791, !tbaa !1277
  call void @llvm.lifetime.start.p0(i64 4, ptr %szind) #10, !dbg !1795
  tail call void @llvm.dbg.declare(metadata ptr %szind, metadata !1764, metadata !DIExpression()), !dbg !1796
  %5 = load i64, ptr %usize.addr, align 8, !dbg !1797, !tbaa !1277
  %call3 = call i32 @sz_size2index(i64 noundef %5), !dbg !1798
  store i32 %call3, ptr %szind, align 4, !dbg !1796, !tbaa !1534
  call void @llvm.lifetime.start.p0(i64 1, ptr %deferred_work_generated) #10, !dbg !1799
  tail call void @llvm.dbg.declare(metadata ptr %deferred_work_generated, metadata !1765, metadata !DIExpression()), !dbg !1800
  store i8 0, ptr %deferred_work_generated, align 1, !dbg !1800, !tbaa !1280
  call void @llvm.lifetime.start.p0(i64 1, ptr %err) #10, !dbg !1801
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1766, metadata !DIExpression()), !dbg !1802
  %6 = load ptr, ptr %tsdn.addr, align 8, !dbg !1803, !tbaa !1271
  %7 = load ptr, ptr %arena, align 8, !dbg !1804, !tbaa !1271
  %pa_shard = getelementptr inbounds %struct.arena_s, ptr %7, i32 0, i32 10, !dbg !1805
  %8 = load ptr, ptr %edata.addr, align 8, !dbg !1806, !tbaa !1271
  %9 = load i64, ptr %old_size, align 8, !dbg !1807, !tbaa !1277
  %10 = load i64, ptr %new_size, align 8, !dbg !1808, !tbaa !1277
  %11 = load i32, ptr %szind, align 4, !dbg !1809, !tbaa !1534
  %12 = load i8, ptr %zero.addr, align 1, !dbg !1810, !tbaa !1280, !range !1290, !noundef !1291
  %tobool = trunc i8 %12 to i1, !dbg !1810
  %call4 = call zeroext i1 @pa_expand(ptr noundef %6, ptr noundef %pa_shard, ptr noundef %8, i64 noundef %9, i64 noundef %10, i32 noundef %11, i1 noundef zeroext %tobool, ptr noundef %deferred_work_generated), !dbg !1811
  %frombool5 = zext i1 %call4 to i8, !dbg !1802
  store i8 %frombool5, ptr %err, align 1, !dbg !1802, !tbaa !1280
  %13 = load i8, ptr %deferred_work_generated, align 1, !dbg !1812, !tbaa !1280, !range !1290, !noundef !1291
  %tobool6 = trunc i8 %13 to i1, !dbg !1812
  br i1 %tobool6, label %if.then, label %if.end, !dbg !1814

if.then:                                          ; preds = %entry
  %14 = load ptr, ptr %tsdn.addr, align 8, !dbg !1815, !tbaa !1271
  %15 = load ptr, ptr %arena, align 8, !dbg !1817, !tbaa !1271
  call void @arena_handle_deferred_work(ptr noundef %14, ptr noundef %15), !dbg !1818
  br label %if.end, !dbg !1819

if.end:                                           ; preds = %if.then, %entry
  %16 = load i8, ptr %err, align 1, !dbg !1820, !tbaa !1280, !range !1290, !noundef !1291
  %tobool7 = trunc i8 %16 to i1, !dbg !1820
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1822

if.then8:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !1823
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1823

if.end9:                                          ; preds = %if.end
  %17 = load i8, ptr %zero.addr, align 1, !dbg !1825, !tbaa !1280, !range !1290, !noundef !1291
  %tobool10 = trunc i8 %17 to i1, !dbg !1825
  br i1 %tobool10, label %if.then11, label %if.end21, !dbg !1826

if.then11:                                        ; preds = %if.end9
  %18 = load i8, ptr @opt_cache_oblivious, align 1, !dbg !1827, !tbaa !1280, !range !1290, !noundef !1291
  %tobool12 = trunc i8 %18 to i1, !dbg !1827
  br i1 %tobool12, label %if.then13, label %if.end20, !dbg !1828

if.then13:                                        ; preds = %if.then11
  br label %do.body, !dbg !1829

do.body:                                          ; preds = %if.then13
  br label %do.cond, !dbg !1830

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1830

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %zbase) #10, !dbg !1832
  tail call void @llvm.dbg.declare(metadata ptr %zbase, metadata !1767, metadata !DIExpression()), !dbg !1833
  %19 = load ptr, ptr %edata.addr, align 8, !dbg !1834, !tbaa !1271
  %call14 = call ptr @edata_addr_get(ptr noundef %19), !dbg !1835
  %20 = ptrtoint ptr %call14 to i64, !dbg !1836
  %21 = load i64, ptr %old_usize, align 8, !dbg !1837, !tbaa !1277
  %add15 = add i64 %20, %21, !dbg !1838
  %22 = inttoptr i64 %add15 to ptr, !dbg !1839
  store ptr %22, ptr %zbase, align 8, !dbg !1833, !tbaa !1271
  call void @llvm.lifetime.start.p0(i64 8, ptr %zpast) #10, !dbg !1840
  tail call void @llvm.dbg.declare(metadata ptr %zpast, metadata !1772, metadata !DIExpression()), !dbg !1841
  %23 = load ptr, ptr %zbase, align 8, !dbg !1842, !tbaa !1271
  %24 = ptrtoint ptr %23 to i64, !dbg !1842
  %add16 = add i64 %24, 4096, !dbg !1842
  %25 = inttoptr i64 %add16 to ptr, !dbg !1842
  %26 = ptrtoint ptr %25 to i64, !dbg !1842
  %and = and i64 %26, -4096, !dbg !1842
  %27 = inttoptr i64 %and to ptr, !dbg !1842
  store ptr %27, ptr %zpast, align 8, !dbg !1841, !tbaa !1271
  call void @llvm.lifetime.start.p0(i64 8, ptr %nzero) #10, !dbg !1843
  tail call void @llvm.dbg.declare(metadata ptr %nzero, metadata !1773, metadata !DIExpression()), !dbg !1844
  %28 = load ptr, ptr %zpast, align 8, !dbg !1845, !tbaa !1271
  %29 = ptrtoint ptr %28 to i64, !dbg !1846
  %30 = load ptr, ptr %zbase, align 8, !dbg !1847, !tbaa !1271
  %31 = ptrtoint ptr %30 to i64, !dbg !1848
  %sub = sub i64 %29, %31, !dbg !1849
  store i64 %sub, ptr %nzero, align 8, !dbg !1844, !tbaa !1277
  br label %do.body17, !dbg !1850

do.body17:                                        ; preds = %do.end
  br label %do.cond18, !dbg !1851

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !1851

do.end19:                                         ; preds = %do.cond18
  %32 = load ptr, ptr %zbase, align 8, !dbg !1853, !tbaa !1271
  %33 = load i64, ptr %nzero, align 8, !dbg !1854, !tbaa !1277
  call void @llvm.memset.p0.i64(ptr align 1 %32, i8 0, i64 %33, i1 false), !dbg !1855
  call void @llvm.lifetime.end.p0(i64 8, ptr %nzero) #10, !dbg !1856
  call void @llvm.lifetime.end.p0(i64 8, ptr %zpast) #10, !dbg !1856
  call void @llvm.lifetime.end.p0(i64 8, ptr %zbase) #10, !dbg !1856
  br label %if.end20, !dbg !1857

if.end20:                                         ; preds = %do.end19, %if.then11
  br label %if.end21, !dbg !1858

if.end21:                                         ; preds = %if.end20, %if.end9
  %34 = load ptr, ptr %tsdn.addr, align 8, !dbg !1859, !tbaa !1271
  %35 = load ptr, ptr %arena, align 8, !dbg !1860, !tbaa !1271
  %36 = load ptr, ptr %edata.addr, align 8, !dbg !1861, !tbaa !1271
  %37 = load i64, ptr %old_usize, align 8, !dbg !1862, !tbaa !1277
  call void @arena_extent_ralloc_large_expand(ptr noundef %34, ptr noundef %35, ptr noundef %36, i64 noundef %37), !dbg !1863
  store i1 false, ptr %retval, align 1, !dbg !1864
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1864

cleanup:                                          ; preds = %if.end21, %if.then8
  call void @llvm.lifetime.end.p0(i64 1, ptr %err) #10, !dbg !1865
  call void @llvm.lifetime.end.p0(i64 1, ptr %deferred_work_generated) #10, !dbg !1865
  call void @llvm.lifetime.end.p0(i64 4, ptr %szind) #10, !dbg !1865
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_size) #10, !dbg !1865
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_usize) #10, !dbg !1865
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_size) #10, !dbg !1865
  call void @llvm.lifetime.end.p0(i64 8, ptr %arena) #10, !dbg !1865
  %38 = load i1, ptr %retval, align 1, !dbg !1865
  ret i1 %38, !dbg !1865
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @arena_get_from_edata(ptr noundef %edata) #5 !dbg !1866 {
entry:
  %edata.addr = alloca ptr, align 8
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !1870, metadata !DIExpression()), !dbg !1871
  %0 = load ptr, ptr %edata.addr, align 8, !dbg !1872, !tbaa !1271
  %call = call i32 @edata_arena_ind_get(ptr noundef %0), !dbg !1873
  %idxprom = zext i32 %call to i64, !dbg !1874
  %arrayidx = getelementptr inbounds [0 x %struct.atomic_p_t], ptr @arenas, i64 0, i64 %idxprom, !dbg !1874
  %call1 = call ptr @atomic_load_p(ptr noundef %arrayidx, i32 noundef 0), !dbg !1875
  ret ptr %call1, !dbg !1876
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @large_ralloc_no_move_shrink(ptr noundef %tsdn, ptr noundef %edata, i64 noundef %usize) #0 !dbg !1877 {
entry:
  %retval = alloca i1, align 1
  %tsdn.addr = alloca ptr, align 8
  %edata.addr = alloca ptr, align 8
  %usize.addr = alloca i64, align 8
  %arena = alloca ptr, align 8
  %ehooks = alloca ptr, align 8
  %old_size = alloca i64, align 8
  %old_usize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %deferred_work_generated = alloca i8, align 1
  %err = alloca i8, align 1
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !1881, metadata !DIExpression()), !dbg !1892
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !1882, metadata !DIExpression()), !dbg !1893
  store i64 %usize, ptr %usize.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %usize.addr, metadata !1883, metadata !DIExpression()), !dbg !1894
  call void @llvm.lifetime.start.p0(i64 8, ptr %arena) #10, !dbg !1895
  tail call void @llvm.dbg.declare(metadata ptr %arena, metadata !1884, metadata !DIExpression()), !dbg !1896
  %0 = load ptr, ptr %edata.addr, align 8, !dbg !1897, !tbaa !1271
  %call = call ptr @arena_get_from_edata(ptr noundef %0), !dbg !1898
  store ptr %call, ptr %arena, align 8, !dbg !1896, !tbaa !1271
  call void @llvm.lifetime.start.p0(i64 8, ptr %ehooks) #10, !dbg !1899
  tail call void @llvm.dbg.declare(metadata ptr %ehooks, metadata !1885, metadata !DIExpression()), !dbg !1900
  %1 = load ptr, ptr %arena, align 8, !dbg !1901, !tbaa !1271
  %call1 = call ptr @arena_get_ehooks(ptr noundef %1), !dbg !1902
  store ptr %call1, ptr %ehooks, align 8, !dbg !1900, !tbaa !1271
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_size) #10, !dbg !1903
  tail call void @llvm.dbg.declare(metadata ptr %old_size, metadata !1888, metadata !DIExpression()), !dbg !1904
  %2 = load ptr, ptr %edata.addr, align 8, !dbg !1905, !tbaa !1271
  %call2 = call i64 @edata_size_get(ptr noundef %2), !dbg !1906
  store i64 %call2, ptr %old_size, align 8, !dbg !1904, !tbaa !1277
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_usize) #10, !dbg !1907
  tail call void @llvm.dbg.declare(metadata ptr %old_usize, metadata !1889, metadata !DIExpression()), !dbg !1908
  %3 = load ptr, ptr %edata.addr, align 8, !dbg !1909, !tbaa !1271
  %call3 = call i64 @edata_usize_get(ptr noundef %3), !dbg !1910
  store i64 %call3, ptr %old_usize, align 8, !dbg !1908, !tbaa !1277
  br label %do.body, !dbg !1911

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1912

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1912

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %ehooks, align 8, !dbg !1914, !tbaa !1271
  %call4 = call zeroext i1 @ehooks_split_will_fail(ptr noundef %4), !dbg !1916
  br i1 %call4, label %if.then, label %if.end, !dbg !1917

if.then:                                          ; preds = %do.end
  store i1 true, ptr %retval, align 1, !dbg !1918
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup13, !dbg !1918

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %deferred_work_generated) #10, !dbg !1920
  tail call void @llvm.dbg.declare(metadata ptr %deferred_work_generated, metadata !1890, metadata !DIExpression()), !dbg !1921
  store i8 0, ptr %deferred_work_generated, align 1, !dbg !1921, !tbaa !1280
  call void @llvm.lifetime.start.p0(i64 1, ptr %err) #10, !dbg !1922
  tail call void @llvm.dbg.declare(metadata ptr %err, metadata !1891, metadata !DIExpression()), !dbg !1923
  %5 = load ptr, ptr %tsdn.addr, align 8, !dbg !1924, !tbaa !1271
  %6 = load ptr, ptr %arena, align 8, !dbg !1925, !tbaa !1271
  %pa_shard = getelementptr inbounds %struct.arena_s, ptr %6, i32 0, i32 10, !dbg !1926
  %7 = load ptr, ptr %edata.addr, align 8, !dbg !1927, !tbaa !1271
  %8 = load i64, ptr %old_size, align 8, !dbg !1928, !tbaa !1277
  %9 = load i64, ptr %usize.addr, align 8, !dbg !1929, !tbaa !1277
  %10 = load i64, ptr @sz_large_pad, align 8, !dbg !1930, !tbaa !1277
  %add = add i64 %9, %10, !dbg !1931
  %11 = load i64, ptr %usize.addr, align 8, !dbg !1932, !tbaa !1277
  %call5 = call i32 @sz_size2index(i64 noundef %11), !dbg !1933
  %call6 = call zeroext i1 @pa_shrink(ptr noundef %5, ptr noundef %pa_shard, ptr noundef %7, i64 noundef %8, i64 noundef %add, i32 noundef %call5, ptr noundef %deferred_work_generated), !dbg !1934
  %frombool = zext i1 %call6 to i8, !dbg !1923
  store i8 %frombool, ptr %err, align 1, !dbg !1923, !tbaa !1280
  %12 = load i8, ptr %err, align 1, !dbg !1935, !tbaa !1280, !range !1290, !noundef !1291
  %tobool = trunc i8 %12 to i1, !dbg !1935
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !1937

if.then7:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !1938
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1938

if.end8:                                          ; preds = %if.end
  %13 = load i8, ptr %deferred_work_generated, align 1, !dbg !1940, !tbaa !1280, !range !1290, !noundef !1291
  %tobool9 = trunc i8 %13 to i1, !dbg !1940
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !1942

if.then10:                                        ; preds = %if.end8
  %14 = load ptr, ptr %tsdn.addr, align 8, !dbg !1943, !tbaa !1271
  %15 = load ptr, ptr %arena, align 8, !dbg !1945, !tbaa !1271
  call void @arena_handle_deferred_work(ptr noundef %14, ptr noundef %15), !dbg !1946
  br label %if.end11, !dbg !1947

if.end11:                                         ; preds = %if.then10, %if.end8
  %16 = load ptr, ptr %tsdn.addr, align 8, !dbg !1948, !tbaa !1271
  %17 = load ptr, ptr %arena, align 8, !dbg !1949, !tbaa !1271
  %18 = load ptr, ptr %edata.addr, align 8, !dbg !1950, !tbaa !1271
  %19 = load i64, ptr %old_usize, align 8, !dbg !1951, !tbaa !1277
  call void @arena_extent_ralloc_large_shrink(ptr noundef %16, ptr noundef %17, ptr noundef %18, i64 noundef %19), !dbg !1952
  store i1 false, ptr %retval, align 1, !dbg !1953
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1953

cleanup:                                          ; preds = %if.end11, %if.then7
  call void @llvm.lifetime.end.p0(i64 1, ptr %err) #10, !dbg !1954
  call void @llvm.lifetime.end.p0(i64 1, ptr %deferred_work_generated) #10, !dbg !1954
  br label %cleanup13

cleanup13:                                        ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_usize) #10, !dbg !1954
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_size) #10, !dbg !1954
  call void @llvm.lifetime.end.p0(i64 8, ptr %ehooks) #10, !dbg !1954
  call void @llvm.lifetime.end.p0(i64 8, ptr %arena) #10, !dbg !1954
  %20 = load i1, ptr %retval, align 1, !dbg !1954
  ret i1 %20, !dbg !1954
}

; Function Attrs: nounwind uwtable
define hidden ptr @large_ralloc(ptr noundef %tsdn, ptr noundef %arena, ptr noundef %ptr, i64 noundef %usize, i64 noundef %alignment, i1 noundef zeroext %zero, ptr noundef %tcache, ptr noundef %hook_args) #0 !dbg !1955 {
entry:
  %retval = alloca ptr, align 8
  %tsdn.addr = alloca ptr, align 8
  %arena.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %usize.addr = alloca i64, align 8
  %alignment.addr = alloca i64, align 8
  %zero.addr = alloca i8, align 1
  %tcache.addr = alloca ptr, align 8
  %hook_args.addr = alloca ptr, align 8
  %edata = alloca ptr, align 8
  %oldusize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ret = alloca ptr, align 8
  %copysize = alloca i64, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !1966, metadata !DIExpression()), !dbg !1978
  store ptr %arena, ptr %arena.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %arena.addr, metadata !1967, metadata !DIExpression()), !dbg !1979
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1968, metadata !DIExpression()), !dbg !1980
  store i64 %usize, ptr %usize.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %usize.addr, metadata !1969, metadata !DIExpression()), !dbg !1981
  store i64 %alignment, ptr %alignment.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %alignment.addr, metadata !1970, metadata !DIExpression()), !dbg !1982
  %frombool = zext i1 %zero to i8
  store i8 %frombool, ptr %zero.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %zero.addr, metadata !1971, metadata !DIExpression()), !dbg !1983
  store ptr %tcache, ptr %tcache.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tcache.addr, metadata !1972, metadata !DIExpression()), !dbg !1984
  store ptr %hook_args, ptr %hook_args.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %hook_args.addr, metadata !1973, metadata !DIExpression()), !dbg !1985
  call void @llvm.lifetime.start.p0(i64 8, ptr %edata) #10, !dbg !1986
  tail call void @llvm.dbg.declare(metadata ptr %edata, metadata !1974, metadata !DIExpression()), !dbg !1987
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !1988, !tbaa !1271
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !1989, !tbaa !1271
  %call = call ptr @emap_edata_lookup(ptr noundef %0, ptr noundef @arena_emap_global, ptr noundef %1), !dbg !1990
  store ptr %call, ptr %edata, align 8, !dbg !1987, !tbaa !1271
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldusize) #10, !dbg !1991
  tail call void @llvm.dbg.declare(metadata ptr %oldusize, metadata !1975, metadata !DIExpression()), !dbg !1992
  %2 = load ptr, ptr %edata, align 8, !dbg !1993, !tbaa !1271
  %call1 = call i64 @edata_usize_get(ptr noundef %2), !dbg !1994
  store i64 %call1, ptr %oldusize, align 8, !dbg !1992, !tbaa !1277
  br label %do.body, !dbg !1995

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1996

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1996

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !1998

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !1999

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !1999

do.end4:                                          ; preds = %do.cond3
  %3 = load ptr, ptr %tsdn.addr, align 8, !dbg !2001, !tbaa !1271
  %4 = load ptr, ptr %edata, align 8, !dbg !2003, !tbaa !1271
  %5 = load i64, ptr %usize.addr, align 8, !dbg !2004, !tbaa !1277
  %6 = load i64, ptr %usize.addr, align 8, !dbg !2005, !tbaa !1277
  %7 = load i8, ptr %zero.addr, align 1, !dbg !2006, !tbaa !1280, !range !1290, !noundef !1291
  %tobool = trunc i8 %7 to i1, !dbg !2006
  %call5 = call zeroext i1 @large_ralloc_no_move(ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, i1 noundef zeroext %tobool), !dbg !2007
  br i1 %call5, label %if.end, label %if.then, !dbg !2008

if.then:                                          ; preds = %do.end4
  %8 = load ptr, ptr %hook_args.addr, align 8, !dbg !2009, !tbaa !1271
  %is_realloc = getelementptr inbounds %struct.hook_ralloc_args_s, ptr %8, i32 0, i32 0, !dbg !2011
  %9 = load i8, ptr %is_realloc, align 8, !dbg !2011, !tbaa !2012, !range !1290, !noundef !1291
  %tobool6 = trunc i8 %9 to i1, !dbg !2011
  %10 = zext i1 %tobool6 to i64, !dbg !2009
  %cond = select i1 %tobool6, i32 0, i32 1, !dbg !2009
  %11 = load ptr, ptr %ptr.addr, align 8, !dbg !2014, !tbaa !1271
  %12 = load i64, ptr %oldusize, align 8, !dbg !2015, !tbaa !1277
  %13 = load i64, ptr %usize.addr, align 8, !dbg !2016, !tbaa !1277
  %14 = load ptr, ptr %ptr.addr, align 8, !dbg !2017, !tbaa !1271
  %15 = ptrtoint ptr %14 to i64, !dbg !2018
  %16 = load ptr, ptr %hook_args.addr, align 8, !dbg !2019, !tbaa !1271
  %args = getelementptr inbounds %struct.hook_ralloc_args_s, ptr %16, i32 0, i32 1, !dbg !2020
  %arraydecay = getelementptr inbounds [4 x i64], ptr %args, i64 0, i64 0, !dbg !2019
  call void @hook_invoke_expand(i32 noundef %cond, ptr noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %15, ptr noundef %arraydecay), !dbg !2021
  %17 = load ptr, ptr %edata, align 8, !dbg !2022, !tbaa !1271
  %call7 = call ptr @edata_addr_get(ptr noundef %17), !dbg !2023
  store ptr %call7, ptr %retval, align 8, !dbg !2024
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26, !dbg !2024

if.end:                                           ; preds = %do.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !2025
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !1976, metadata !DIExpression()), !dbg !2026
  %18 = load ptr, ptr %tsdn.addr, align 8, !dbg !2027, !tbaa !1271
  %19 = load ptr, ptr %arena.addr, align 8, !dbg !2028, !tbaa !1271
  %20 = load i64, ptr %usize.addr, align 8, !dbg !2029, !tbaa !1277
  %21 = load i64, ptr %alignment.addr, align 8, !dbg !2030, !tbaa !1277
  %22 = load i8, ptr %zero.addr, align 1, !dbg !2031, !tbaa !1280, !range !1290, !noundef !1291
  %tobool8 = trunc i8 %22 to i1, !dbg !2031
  %call9 = call ptr @large_ralloc_move_helper(ptr noundef %18, ptr noundef %19, i64 noundef %20, i64 noundef %21, i1 noundef zeroext %tobool8), !dbg !2032
  store ptr %call9, ptr %ret, align 8, !dbg !2026, !tbaa !1271
  %23 = load ptr, ptr %ret, align 8, !dbg !2033, !tbaa !1271
  %cmp = icmp eq ptr %23, null, !dbg !2035
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !2036

if.then10:                                        ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !2037
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2037

if.end11:                                         ; preds = %if.end
  %24 = load ptr, ptr %hook_args.addr, align 8, !dbg !2039, !tbaa !1271
  %is_realloc12 = getelementptr inbounds %struct.hook_ralloc_args_s, ptr %24, i32 0, i32 0, !dbg !2040
  %25 = load i8, ptr %is_realloc12, align 8, !dbg !2040, !tbaa !2012, !range !1290, !noundef !1291
  %tobool13 = trunc i8 %25 to i1, !dbg !2040
  %26 = zext i1 %tobool13 to i64, !dbg !2039
  %cond14 = select i1 %tobool13, i32 7, i32 8, !dbg !2039
  %27 = load ptr, ptr %ret, align 8, !dbg !2041, !tbaa !1271
  %28 = load ptr, ptr %ret, align 8, !dbg !2042, !tbaa !1271
  %29 = ptrtoint ptr %28 to i64, !dbg !2043
  %30 = load ptr, ptr %hook_args.addr, align 8, !dbg !2044, !tbaa !1271
  %args15 = getelementptr inbounds %struct.hook_ralloc_args_s, ptr %30, i32 0, i32 1, !dbg !2045
  %arraydecay16 = getelementptr inbounds [4 x i64], ptr %args15, i64 0, i64 0, !dbg !2044
  call void @hook_invoke_alloc(i32 noundef %cond14, ptr noundef %27, i64 noundef %29, ptr noundef %arraydecay16), !dbg !2046
  %31 = load ptr, ptr %hook_args.addr, align 8, !dbg !2047, !tbaa !1271
  %is_realloc17 = getelementptr inbounds %struct.hook_ralloc_args_s, ptr %31, i32 0, i32 0, !dbg !2048
  %32 = load i8, ptr %is_realloc17, align 8, !dbg !2048, !tbaa !2012, !range !1290, !noundef !1291
  %tobool18 = trunc i8 %32 to i1, !dbg !2048
  %33 = zext i1 %tobool18 to i64, !dbg !2047
  %cond19 = select i1 %tobool18, i32 3, i32 4, !dbg !2047
  %34 = load ptr, ptr %ptr.addr, align 8, !dbg !2049, !tbaa !1271
  %35 = load ptr, ptr %hook_args.addr, align 8, !dbg !2050, !tbaa !1271
  %args20 = getelementptr inbounds %struct.hook_ralloc_args_s, ptr %35, i32 0, i32 1, !dbg !2051
  %arraydecay21 = getelementptr inbounds [4 x i64], ptr %args20, i64 0, i64 0, !dbg !2050
  call void @hook_invoke_dalloc(i32 noundef %cond19, ptr noundef %34, ptr noundef %arraydecay21), !dbg !2052
  call void @llvm.lifetime.start.p0(i64 8, ptr %copysize) #10, !dbg !2053
  tail call void @llvm.dbg.declare(metadata ptr %copysize, metadata !1977, metadata !DIExpression()), !dbg !2054
  %36 = load i64, ptr %usize.addr, align 8, !dbg !2055, !tbaa !1277
  %37 = load i64, ptr %oldusize, align 8, !dbg !2056, !tbaa !1277
  %cmp22 = icmp ult i64 %36, %37, !dbg !2057
  br i1 %cmp22, label %cond.true, label %cond.false, !dbg !2058

cond.true:                                        ; preds = %if.end11
  %38 = load i64, ptr %usize.addr, align 8, !dbg !2059, !tbaa !1277
  br label %cond.end, !dbg !2058

cond.false:                                       ; preds = %if.end11
  %39 = load i64, ptr %oldusize, align 8, !dbg !2060, !tbaa !1277
  br label %cond.end, !dbg !2058

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond23 = phi i64 [ %38, %cond.true ], [ %39, %cond.false ], !dbg !2058
  store i64 %cond23, ptr %copysize, align 8, !dbg !2054, !tbaa !1277
  %40 = load ptr, ptr %ret, align 8, !dbg !2061, !tbaa !1271
  %41 = load ptr, ptr %edata, align 8, !dbg !2062, !tbaa !1271
  %call24 = call ptr @edata_addr_get(ptr noundef %41), !dbg !2063
  %42 = load i64, ptr %copysize, align 8, !dbg !2064, !tbaa !1277
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %40, ptr align 1 %call24, i64 %42, i1 false), !dbg !2065
  %43 = load ptr, ptr %tsdn.addr, align 8, !dbg !2066, !tbaa !1271
  %44 = load ptr, ptr %edata, align 8, !dbg !2067, !tbaa !1271
  %call25 = call ptr @edata_addr_get(ptr noundef %44), !dbg !2068
  %45 = load i64, ptr %oldusize, align 8, !dbg !2069, !tbaa !1277
  %46 = load ptr, ptr %tcache.addr, align 8, !dbg !2070, !tbaa !1271
  call void @isdalloct(ptr noundef %43, ptr noundef %call25, i64 noundef %45, ptr noundef %46, ptr noundef null, i1 noundef zeroext true), !dbg !2071
  %47 = load ptr, ptr %ret, align 8, !dbg !2072, !tbaa !1271
  store ptr %47, ptr %retval, align 8, !dbg !2073
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %copysize) #10, !dbg !2074
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !2074
  br label %cleanup26

cleanup26:                                        ; preds = %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldusize) #10, !dbg !2074
  call void @llvm.lifetime.end.p0(i64 8, ptr %edata) #10, !dbg !2074
  %48 = load ptr, ptr %retval, align 8, !dbg !2074
  ret ptr %48, !dbg !2074
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @emap_edata_lookup(ptr noundef %tsdn, ptr noundef %emap, ptr noundef %ptr) #2 !dbg !2075 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %emap.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %rtree_ctx_fallback = alloca %struct.rtree_ctx_s, align 8
  %rtree_ctx = alloca ptr, align 8
  %tmp = alloca %struct.rtree_contents_s, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !2079, metadata !DIExpression()), !dbg !2085
  store ptr %emap, ptr %emap.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %emap.addr, metadata !2080, metadata !DIExpression()), !dbg !2086
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2081, metadata !DIExpression()), !dbg !2087
  call void @llvm.lifetime.start.p0(i64 384, ptr %rtree_ctx_fallback) #10, !dbg !2088
  tail call void @llvm.dbg.declare(metadata ptr %rtree_ctx_fallback, metadata !2082, metadata !DIExpression()), !dbg !2088
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtree_ctx) #10, !dbg !2088
  tail call void @llvm.dbg.declare(metadata ptr %rtree_ctx, metadata !2083, metadata !DIExpression()), !dbg !2088
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !2088, !tbaa !1271
  %call = call ptr @tsdn_rtree_ctx(ptr noundef %0, ptr noundef %rtree_ctx_fallback), !dbg !2088
  store ptr %call, ptr %rtree_ctx, align 8, !dbg !2088, !tbaa !1271
  %1 = load ptr, ptr %tsdn.addr, align 8, !dbg !2089, !tbaa !1271
  %2 = load ptr, ptr %emap.addr, align 8, !dbg !2090, !tbaa !1271
  %rtree = getelementptr inbounds %struct.emap_s, ptr %2, i32 0, i32 0, !dbg !2091
  %3 = load ptr, ptr %rtree_ctx, align 8, !dbg !2092, !tbaa !1271
  %4 = load ptr, ptr %ptr.addr, align 8, !dbg !2093, !tbaa !1271
  %5 = ptrtoint ptr %4 to i64, !dbg !2094
  call void @rtree_read(ptr sret(%struct.rtree_contents_s) align 8 %tmp, ptr noundef %1, ptr noundef %rtree, ptr noundef %3, i64 noundef %5), !dbg !2095
  %edata = getelementptr inbounds %struct.rtree_contents_s, ptr %tmp, i32 0, i32 0, !dbg !2096
  %6 = load ptr, ptr %edata, align 8, !dbg !2096, !tbaa !2097
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtree_ctx) #10, !dbg !2100
  call void @llvm.lifetime.end.p0(i64 384, ptr %rtree_ctx_fallback) #10, !dbg !2100
  ret ptr %6, !dbg !2101
}

declare !dbg !2102 void @hook_invoke_expand(i32 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal ptr @large_ralloc_move_helper(ptr noundef %tsdn, ptr noundef %arena, i64 noundef %usize, i64 noundef %alignment, i1 noundef zeroext %zero) #0 !dbg !2106 {
entry:
  %retval = alloca ptr, align 8
  %tsdn.addr = alloca ptr, align 8
  %arena.addr = alloca ptr, align 8
  %usize.addr = alloca i64, align 8
  %alignment.addr = alloca i64, align 8
  %zero.addr = alloca i8, align 1
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !2108, metadata !DIExpression()), !dbg !2113
  store ptr %arena, ptr %arena.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %arena.addr, metadata !2109, metadata !DIExpression()), !dbg !2114
  store i64 %usize, ptr %usize.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %usize.addr, metadata !2110, metadata !DIExpression()), !dbg !2115
  store i64 %alignment, ptr %alignment.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %alignment.addr, metadata !2111, metadata !DIExpression()), !dbg !2116
  %frombool = zext i1 %zero to i8
  store i8 %frombool, ptr %zero.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %zero.addr, metadata !2112, metadata !DIExpression()), !dbg !2117
  %0 = load i64, ptr %alignment.addr, align 8, !dbg !2118, !tbaa !1277
  %cmp = icmp ule i64 %0, 64, !dbg !2120
  br i1 %cmp, label %if.then, label %if.end, !dbg !2121

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tsdn.addr, align 8, !dbg !2122, !tbaa !1271
  %2 = load ptr, ptr %arena.addr, align 8, !dbg !2124, !tbaa !1271
  %3 = load i64, ptr %usize.addr, align 8, !dbg !2125, !tbaa !1277
  %4 = load i8, ptr %zero.addr, align 1, !dbg !2126, !tbaa !1280, !range !1290, !noundef !1291
  %tobool = trunc i8 %4 to i1, !dbg !2126
  %call = call ptr @large_malloc(ptr noundef %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %tobool), !dbg !2127
  store ptr %call, ptr %retval, align 8, !dbg !2128
  br label %return, !dbg !2128

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %tsdn.addr, align 8, !dbg !2129, !tbaa !1271
  %6 = load ptr, ptr %arena.addr, align 8, !dbg !2130, !tbaa !1271
  %7 = load i64, ptr %usize.addr, align 8, !dbg !2131, !tbaa !1277
  %8 = load i64, ptr %alignment.addr, align 8, !dbg !2132, !tbaa !1277
  %9 = load i8, ptr %zero.addr, align 1, !dbg !2133, !tbaa !1280, !range !1290, !noundef !1291
  %tobool1 = trunc i8 %9 to i1, !dbg !2133
  %call2 = call ptr @large_palloc(ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8, i1 noundef zeroext %tobool1), !dbg !2134
  store ptr %call2, ptr %retval, align 8, !dbg !2135
  br label %return, !dbg !2135

return:                                           ; preds = %if.end, %if.then
  %10 = load ptr, ptr %retval, align 8, !dbg !2136
  ret ptr %10, !dbg !2136
}

declare !dbg !2137 void @hook_invoke_alloc(i32 noundef, ptr noundef, i64 noundef, ptr noundef) #4

declare !dbg !2141 void @hook_invoke_dalloc(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: alwaysinline nounwind uwtable
define internal void @isdalloct(ptr noundef %tsdn, ptr noundef %ptr, i64 noundef %size, ptr noundef %tcache, ptr noundef %alloc_ctx, i1 noundef zeroext %slow_path) #2 !dbg !2145 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %tcache.addr = alloca ptr, align 8
  %alloc_ctx.addr = alloca ptr, align 8
  %slow_path.addr = alloca i8, align 1
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !2156, metadata !DIExpression()), !dbg !2162
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2157, metadata !DIExpression()), !dbg !2163
  store i64 %size, ptr %size.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2158, metadata !DIExpression()), !dbg !2164
  store ptr %tcache, ptr %tcache.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tcache.addr, metadata !2159, metadata !DIExpression()), !dbg !2165
  store ptr %alloc_ctx, ptr %alloc_ctx.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %alloc_ctx.addr, metadata !2160, metadata !DIExpression()), !dbg !2166
  %frombool = zext i1 %slow_path to i8
  store i8 %frombool, ptr %slow_path.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %slow_path.addr, metadata !2161, metadata !DIExpression()), !dbg !2167
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !2168, !tbaa !1271
  %call = call ptr @tsdn_witness_tsdp_get(ptr noundef %0), !dbg !2169
  call void @witness_assert_depth_to_rank(ptr noundef %call, i32 noundef 14, i32 noundef 0), !dbg !2170
  %1 = load ptr, ptr %tsdn.addr, align 8, !dbg !2171, !tbaa !1271
  %2 = load ptr, ptr %ptr.addr, align 8, !dbg !2172, !tbaa !1271
  %3 = load i64, ptr %size.addr, align 8, !dbg !2173, !tbaa !1277
  %4 = load ptr, ptr %tcache.addr, align 8, !dbg !2174, !tbaa !1271
  %5 = load ptr, ptr %alloc_ctx.addr, align 8, !dbg !2175, !tbaa !1271
  %6 = load i8, ptr %slow_path.addr, align 1, !dbg !2176, !tbaa !1280, !range !1290, !noundef !1291
  %tobool = trunc i8 %6 to i1, !dbg !2176
  call void @arena_sdalloc(ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %tobool), !dbg !2177
  ret void, !dbg !2178
}

; Function Attrs: nounwind uwtable
define hidden void @large_dalloc_prep_locked(ptr noundef %tsdn, ptr noundef %edata) #0 !dbg !2179 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %edata.addr = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !2183, metadata !DIExpression()), !dbg !2185
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !2184, metadata !DIExpression()), !dbg !2186
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !2187, !tbaa !1271
  %1 = load ptr, ptr %edata.addr, align 8, !dbg !2188, !tbaa !1271
  %call = call ptr @arena_get_from_edata(ptr noundef %1), !dbg !2189
  %2 = load ptr, ptr %edata.addr, align 8, !dbg !2190, !tbaa !1271
  call void @large_dalloc_prep_impl(ptr noundef %0, ptr noundef %call, ptr noundef %2, i1 noundef zeroext true), !dbg !2191
  ret void, !dbg !2192
}

; Function Attrs: nounwind uwtable
define internal void @large_dalloc_prep_impl(ptr noundef %tsdn, ptr noundef %arena, ptr noundef %edata, i1 noundef zeroext %locked) #0 !dbg !2193 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %arena.addr = alloca ptr, align 8
  %edata.addr = alloca ptr, align 8
  %locked.addr = alloca i8, align 1
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !2197, metadata !DIExpression()), !dbg !2201
  store ptr %arena, ptr %arena.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %arena.addr, metadata !2198, metadata !DIExpression()), !dbg !2202
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !2199, metadata !DIExpression()), !dbg !2203
  %frombool = zext i1 %locked to i8
  store i8 %frombool, ptr %locked.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %locked.addr, metadata !2200, metadata !DIExpression()), !dbg !2204
  %0 = load i8, ptr %locked.addr, align 1, !dbg !2205, !tbaa !1280, !range !1290, !noundef !1291
  %tobool = trunc i8 %0 to i1, !dbg !2205
  br i1 %tobool, label %if.else, label %if.then, !dbg !2207

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %arena.addr, align 8, !dbg !2208, !tbaa !1271
  %call = call zeroext i1 @arena_is_auto(ptr noundef %1), !dbg !2211
  br i1 %call, label %if.end, label %if.then1, !dbg !2212

if.then1:                                         ; preds = %if.then
  %2 = load ptr, ptr %tsdn.addr, align 8, !dbg !2213, !tbaa !1271
  %3 = load ptr, ptr %arena.addr, align 8, !dbg !2215, !tbaa !1271
  %large_mtx = getelementptr inbounds %struct.arena_s, ptr %3, i32 0, i32 9, !dbg !2216
  call void @malloc_mutex_lock(ptr noundef %2, ptr noundef %large_mtx), !dbg !2217
  %4 = load ptr, ptr %arena.addr, align 8, !dbg !2218, !tbaa !1271
  %large = getelementptr inbounds %struct.arena_s, ptr %4, i32 0, i32 8, !dbg !2219
  %5 = load ptr, ptr %edata.addr, align 8, !dbg !2220, !tbaa !1271
  call void @edata_list_active_remove(ptr noundef %large, ptr noundef %5), !dbg !2221
  %6 = load ptr, ptr %tsdn.addr, align 8, !dbg !2222, !tbaa !1271
  %7 = load ptr, ptr %arena.addr, align 8, !dbg !2223, !tbaa !1271
  %large_mtx2 = getelementptr inbounds %struct.arena_s, ptr %7, i32 0, i32 9, !dbg !2224
  call void @malloc_mutex_unlock(ptr noundef %6, ptr noundef %large_mtx2), !dbg !2225
  br label %if.end, !dbg !2226

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end8, !dbg !2227

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %arena.addr, align 8, !dbg !2228, !tbaa !1271
  %call3 = call zeroext i1 @arena_is_auto(ptr noundef %8), !dbg !2231
  br i1 %call3, label %if.end7, label %if.then4, !dbg !2232

if.then4:                                         ; preds = %if.else
  %9 = load ptr, ptr %tsdn.addr, align 8, !dbg !2233, !tbaa !1271
  %10 = load ptr, ptr %arena.addr, align 8, !dbg !2235, !tbaa !1271
  %large_mtx5 = getelementptr inbounds %struct.arena_s, ptr %10, i32 0, i32 9, !dbg !2236
  call void @malloc_mutex_assert_owner(ptr noundef %9, ptr noundef %large_mtx5), !dbg !2237
  %11 = load ptr, ptr %arena.addr, align 8, !dbg !2238, !tbaa !1271
  %large6 = getelementptr inbounds %struct.arena_s, ptr %11, i32 0, i32 8, !dbg !2239
  %12 = load ptr, ptr %edata.addr, align 8, !dbg !2240, !tbaa !1271
  call void @edata_list_active_remove(ptr noundef %large6, ptr noundef %12), !dbg !2241
  br label %if.end7, !dbg !2242

if.end7:                                          ; preds = %if.then4, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %13 = load ptr, ptr %tsdn.addr, align 8, !dbg !2243, !tbaa !1271
  %14 = load ptr, ptr %arena.addr, align 8, !dbg !2244, !tbaa !1271
  %15 = load ptr, ptr %edata.addr, align 8, !dbg !2245, !tbaa !1271
  call void @arena_extent_dalloc_large_prep(ptr noundef %13, ptr noundef %14, ptr noundef %15), !dbg !2246
  ret void, !dbg !2247
}

; Function Attrs: nounwind uwtable
define hidden void @large_dalloc_finish(ptr noundef %tsdn, ptr noundef %edata) #0 !dbg !2248 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %edata.addr = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !2250, metadata !DIExpression()), !dbg !2252
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !2251, metadata !DIExpression()), !dbg !2253
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !2254, !tbaa !1271
  %1 = load ptr, ptr %edata.addr, align 8, !dbg !2255, !tbaa !1271
  %call = call ptr @arena_get_from_edata(ptr noundef %1), !dbg !2256
  %2 = load ptr, ptr %edata.addr, align 8, !dbg !2257, !tbaa !1271
  call void @large_dalloc_finish_impl(ptr noundef %0, ptr noundef %call, ptr noundef %2), !dbg !2258
  ret void, !dbg !2259
}

; Function Attrs: nounwind uwtable
define internal void @large_dalloc_finish_impl(ptr noundef %tsdn, ptr noundef %arena, ptr noundef %edata) #0 !dbg !2260 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %arena.addr = alloca ptr, align 8
  %edata.addr = alloca ptr, align 8
  %deferred_work_generated = alloca i8, align 1
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !2264, metadata !DIExpression()), !dbg !2268
  store ptr %arena, ptr %arena.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %arena.addr, metadata !2265, metadata !DIExpression()), !dbg !2269
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !2266, metadata !DIExpression()), !dbg !2270
  call void @llvm.lifetime.start.p0(i64 1, ptr %deferred_work_generated) #10, !dbg !2271
  tail call void @llvm.dbg.declare(metadata ptr %deferred_work_generated, metadata !2267, metadata !DIExpression()), !dbg !2272
  store i8 0, ptr %deferred_work_generated, align 1, !dbg !2272, !tbaa !1280
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !2273, !tbaa !1271
  %1 = load ptr, ptr %arena.addr, align 8, !dbg !2274, !tbaa !1271
  %pa_shard = getelementptr inbounds %struct.arena_s, ptr %1, i32 0, i32 10, !dbg !2275
  %2 = load ptr, ptr %edata.addr, align 8, !dbg !2276, !tbaa !1271
  call void @pa_dalloc(ptr noundef %0, ptr noundef %pa_shard, ptr noundef %2, ptr noundef %deferred_work_generated), !dbg !2277
  %3 = load i8, ptr %deferred_work_generated, align 1, !dbg !2278, !tbaa !1280, !range !1290, !noundef !1291
  %tobool = trunc i8 %3 to i1, !dbg !2278
  br i1 %tobool, label %if.then, label %if.end, !dbg !2280

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %tsdn.addr, align 8, !dbg !2281, !tbaa !1271
  %5 = load ptr, ptr %arena.addr, align 8, !dbg !2283, !tbaa !1271
  call void @arena_handle_deferred_work(ptr noundef %4, ptr noundef %5), !dbg !2284
  br label %if.end, !dbg !2285

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 1, ptr %deferred_work_generated) #10, !dbg !2286
  ret void, !dbg !2286
}

; Function Attrs: nounwind uwtable
define hidden void @large_dalloc(ptr noundef %tsdn, ptr noundef %edata) #0 !dbg !2287 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %edata.addr = alloca ptr, align 8
  %arena = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !2289, metadata !DIExpression()), !dbg !2292
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !2290, metadata !DIExpression()), !dbg !2293
  call void @llvm.lifetime.start.p0(i64 8, ptr %arena) #10, !dbg !2294
  tail call void @llvm.dbg.declare(metadata ptr %arena, metadata !2291, metadata !DIExpression()), !dbg !2295
  %0 = load ptr, ptr %edata.addr, align 8, !dbg !2296, !tbaa !1271
  %call = call ptr @arena_get_from_edata(ptr noundef %0), !dbg !2297
  store ptr %call, ptr %arena, align 8, !dbg !2295, !tbaa !1271
  %1 = load ptr, ptr %tsdn.addr, align 8, !dbg !2298, !tbaa !1271
  %2 = load ptr, ptr %arena, align 8, !dbg !2299, !tbaa !1271
  %3 = load ptr, ptr %edata.addr, align 8, !dbg !2300, !tbaa !1271
  call void @large_dalloc_prep_impl(ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false), !dbg !2301
  %4 = load ptr, ptr %tsdn.addr, align 8, !dbg !2302, !tbaa !1271
  %5 = load ptr, ptr %arena, align 8, !dbg !2303, !tbaa !1271
  %6 = load ptr, ptr %edata.addr, align 8, !dbg !2304, !tbaa !1271
  call void @large_dalloc_finish_impl(ptr noundef %4, ptr noundef %5, ptr noundef %6), !dbg !2305
  %7 = load ptr, ptr %tsdn.addr, align 8, !dbg !2306, !tbaa !1271
  %8 = load ptr, ptr %arena, align 8, !dbg !2307, !tbaa !1271
  call void @arena_decay_tick(ptr noundef %7, ptr noundef %8), !dbg !2308
  call void @llvm.lifetime.end.p0(i64 8, ptr %arena) #10, !dbg !2309
  ret void, !dbg !2309
}

; Function Attrs: nounwind uwtable
define hidden i64 @large_salloc(ptr noundef %tsdn, ptr noundef %edata) #0 !dbg !2310 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %edata.addr = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !2314, metadata !DIExpression()), !dbg !2316
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !2315, metadata !DIExpression()), !dbg !2317
  %0 = load ptr, ptr %edata.addr, align 8, !dbg !2318, !tbaa !1271
  %call = call i64 @edata_usize_get(ptr noundef %0), !dbg !2319
  ret i64 %call, !dbg !2320
}

; Function Attrs: nounwind uwtable
define hidden void @large_prof_info_get(ptr noundef %tsd, ptr noundef %edata, ptr noundef %prof_info, i1 noundef zeroext %reset_recent) #0 !dbg !2321 {
entry:
  %tsd.addr = alloca ptr, align 8
  %edata.addr = alloca ptr, align 8
  %prof_info.addr = alloca ptr, align 8
  %reset_recent.addr = alloca i8, align 1
  %alloc_tctx = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !2332, metadata !DIExpression()), !dbg !2337
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !2333, metadata !DIExpression()), !dbg !2338
  store ptr %prof_info, ptr %prof_info.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %prof_info.addr, metadata !2334, metadata !DIExpression()), !dbg !2339
  %frombool = zext i1 %reset_recent to i8
  store i8 %frombool, ptr %reset_recent.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %reset_recent.addr, metadata !2335, metadata !DIExpression()), !dbg !2340
  br label %do.body, !dbg !2341

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2342

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %alloc_tctx) #10, !dbg !2344
  tail call void @llvm.dbg.declare(metadata ptr %alloc_tctx, metadata !2336, metadata !DIExpression()), !dbg !2345
  %0 = load ptr, ptr %edata.addr, align 8, !dbg !2346, !tbaa !1271
  %call = call ptr @edata_prof_tctx_get(ptr noundef %0), !dbg !2347
  store ptr %call, ptr %alloc_tctx, align 8, !dbg !2345, !tbaa !1271
  %1 = load ptr, ptr %alloc_tctx, align 8, !dbg !2348, !tbaa !1271
  %2 = load ptr, ptr %prof_info.addr, align 8, !dbg !2349, !tbaa !1271
  %alloc_tctx1 = getelementptr inbounds %struct.prof_info_s, ptr %2, i32 0, i32 1, !dbg !2350
  store ptr %1, ptr %alloc_tctx1, align 8, !dbg !2351, !tbaa !2352
  %3 = load ptr, ptr %alloc_tctx, align 8, !dbg !2355, !tbaa !1271
  %4 = ptrtoint ptr %3 to i64, !dbg !2357
  %cmp = icmp ugt i64 %4, 1, !dbg !2358
  br i1 %cmp, label %if.then, label %if.end5, !dbg !2359

if.then:                                          ; preds = %do.end
  %5 = load ptr, ptr %prof_info.addr, align 8, !dbg !2360, !tbaa !1271
  %alloc_time = getelementptr inbounds %struct.prof_info_s, ptr %5, i32 0, i32 0, !dbg !2362
  %6 = load ptr, ptr %edata.addr, align 8, !dbg !2363, !tbaa !1271
  %call2 = call ptr @edata_prof_alloc_time_get(ptr noundef %6), !dbg !2364
  call void @nstime_copy(ptr noundef %alloc_time, ptr noundef %call2), !dbg !2365
  %7 = load ptr, ptr %edata.addr, align 8, !dbg !2366, !tbaa !1271
  %call3 = call i64 @edata_prof_alloc_size_get(ptr noundef %7), !dbg !2367
  %8 = load ptr, ptr %prof_info.addr, align 8, !dbg !2368, !tbaa !1271
  %alloc_size = getelementptr inbounds %struct.prof_info_s, ptr %8, i32 0, i32 2, !dbg !2369
  store i64 %call3, ptr %alloc_size, align 8, !dbg !2370, !tbaa !2371
  %9 = load i8, ptr %reset_recent.addr, align 1, !dbg !2372, !tbaa !1280, !range !1290, !noundef !1291
  %tobool = trunc i8 %9 to i1, !dbg !2372
  br i1 %tobool, label %if.then4, label %if.end, !dbg !2374

if.then4:                                         ; preds = %if.then
  %10 = load ptr, ptr %tsd.addr, align 8, !dbg !2375, !tbaa !1271
  %11 = load ptr, ptr %edata.addr, align 8, !dbg !2377, !tbaa !1271
  call void @prof_recent_alloc_reset(ptr noundef %10, ptr noundef %11), !dbg !2378
  br label %if.end, !dbg !2379

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end5, !dbg !2380

if.end5:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %alloc_tctx) #10, !dbg !2381
  ret void, !dbg !2381
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @edata_prof_tctx_get(ptr noundef %edata) #5 !dbg !2382 {
entry:
  %edata.addr = alloca ptr, align 8
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !2386, metadata !DIExpression()), !dbg !2387
  %0 = load ptr, ptr %edata.addr, align 8, !dbg !2388, !tbaa !1271
  %1 = getelementptr inbounds %struct.edata_s, ptr %0, i32 0, i32 6, !dbg !2389
  %e_prof_tctx = getelementptr inbounds %struct.e_prof_info_s, ptr %1, i32 0, i32 2, !dbg !2390
  %call = call ptr @atomic_load_p(ptr noundef %e_prof_tctx, i32 noundef 1), !dbg !2391
  ret ptr %call, !dbg !2392
}

declare !dbg !2393 void @nstime_copy(ptr noundef, ptr noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @edata_prof_alloc_time_get(ptr noundef %edata) #5 !dbg !2398 {
entry:
  %edata.addr = alloca ptr, align 8
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !2402, metadata !DIExpression()), !dbg !2403
  %0 = load ptr, ptr %edata.addr, align 8, !dbg !2404, !tbaa !1271
  %1 = getelementptr inbounds %struct.edata_s, ptr %0, i32 0, i32 6, !dbg !2405
  %e_prof_alloc_time = getelementptr inbounds %struct.e_prof_info_s, ptr %1, i32 0, i32 0, !dbg !2406
  ret ptr %e_prof_alloc_time, !dbg !2407
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @edata_prof_alloc_size_get(ptr noundef %edata) #5 !dbg !2408 {
entry:
  %edata.addr = alloca ptr, align 8
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !2410, metadata !DIExpression()), !dbg !2411
  %0 = load ptr, ptr %edata.addr, align 8, !dbg !2412, !tbaa !1271
  %1 = getelementptr inbounds %struct.edata_s, ptr %0, i32 0, i32 6, !dbg !2413
  %e_prof_alloc_size = getelementptr inbounds %struct.e_prof_info_s, ptr %1, i32 0, i32 1, !dbg !2414
  %2 = load i64, ptr %e_prof_alloc_size, align 8, !dbg !2414, !tbaa !1582
  ret i64 %2, !dbg !2415
}

declare !dbg !2416 void @prof_recent_alloc_reset(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define hidden void @large_prof_tctx_reset(ptr noundef %edata) #0 !dbg !2420 {
entry:
  %edata.addr = alloca ptr, align 8
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !2424, metadata !DIExpression()), !dbg !2425
  %0 = load ptr, ptr %edata.addr, align 8, !dbg !2426, !tbaa !1271
  call void @large_prof_tctx_set(ptr noundef %0, ptr noundef inttoptr (i64 1 to ptr)), !dbg !2427
  ret void, !dbg !2428
}

; Function Attrs: nounwind uwtable
define internal void @large_prof_tctx_set(ptr noundef %edata, ptr noundef %tctx) #0 !dbg !2429 {
entry:
  %edata.addr = alloca ptr, align 8
  %tctx.addr = alloca ptr, align 8
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !2433, metadata !DIExpression()), !dbg !2435
  store ptr %tctx, ptr %tctx.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tctx.addr, metadata !2434, metadata !DIExpression()), !dbg !2436
  %0 = load ptr, ptr %edata.addr, align 8, !dbg !2437, !tbaa !1271
  %1 = load ptr, ptr %tctx.addr, align 8, !dbg !2438, !tbaa !1271
  call void @edata_prof_tctx_set(ptr noundef %0, ptr noundef %1), !dbg !2439
  ret void, !dbg !2440
}

; Function Attrs: nounwind uwtable
define hidden void @large_prof_info_set(ptr noundef %edata, ptr noundef %tctx, i64 noundef %size) #0 !dbg !2441 {
entry:
  %edata.addr = alloca ptr, align 8
  %tctx.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %t = alloca %struct.nstime_t, align 8
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !2445, metadata !DIExpression()), !dbg !2449
  store ptr %tctx, ptr %tctx.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tctx.addr, metadata !2446, metadata !DIExpression()), !dbg !2450
  store i64 %size, ptr %size.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2447, metadata !DIExpression()), !dbg !2451
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #10, !dbg !2452
  tail call void @llvm.dbg.declare(metadata ptr %t, metadata !2448, metadata !DIExpression()), !dbg !2453
  call void @nstime_prof_init_update(ptr noundef %t), !dbg !2454
  %0 = load ptr, ptr %edata.addr, align 8, !dbg !2455, !tbaa !1271
  call void @edata_prof_alloc_time_set(ptr noundef %0, ptr noundef %t), !dbg !2456
  %1 = load ptr, ptr %edata.addr, align 8, !dbg !2457, !tbaa !1271
  %2 = load i64, ptr %size.addr, align 8, !dbg !2458, !tbaa !1277
  call void @edata_prof_alloc_size_set(ptr noundef %1, i64 noundef %2), !dbg !2459
  %3 = load ptr, ptr %edata.addr, align 8, !dbg !2460, !tbaa !1271
  call void @edata_prof_recent_alloc_init(ptr noundef %3), !dbg !2461
  %4 = load ptr, ptr %edata.addr, align 8, !dbg !2462, !tbaa !1271
  %5 = load ptr, ptr %tctx.addr, align 8, !dbg !2463, !tbaa !1271
  call void @large_prof_tctx_set(ptr noundef %4, ptr noundef %5), !dbg !2464
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #10, !dbg !2465
  ret void, !dbg !2465
}

declare !dbg !2466 void @nstime_prof_init_update(ptr noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @edata_prof_alloc_time_set(ptr noundef %edata, ptr noundef %t) #5 !dbg !2469 {
entry:
  %edata.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !2473, metadata !DIExpression()), !dbg !2475
  store ptr %t, ptr %t.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !2474, metadata !DIExpression()), !dbg !2476
  %0 = load ptr, ptr %edata.addr, align 8, !dbg !2477, !tbaa !1271
  %1 = getelementptr inbounds %struct.edata_s, ptr %0, i32 0, i32 6, !dbg !2478
  %e_prof_alloc_time = getelementptr inbounds %struct.e_prof_info_s, ptr %1, i32 0, i32 0, !dbg !2479
  %2 = load ptr, ptr %t.addr, align 8, !dbg !2480, !tbaa !1271
  call void @nstime_copy(ptr noundef %e_prof_alloc_time, ptr noundef %2), !dbg !2481
  ret void, !dbg !2482
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @edata_prof_alloc_size_set(ptr noundef %edata, i64 noundef %size) #5 !dbg !2483 {
entry:
  %edata.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !2487, metadata !DIExpression()), !dbg !2489
  store i64 %size, ptr %size.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2488, metadata !DIExpression()), !dbg !2490
  %0 = load i64, ptr %size.addr, align 8, !dbg !2491, !tbaa !1277
  %1 = load ptr, ptr %edata.addr, align 8, !dbg !2492, !tbaa !1271
  %2 = getelementptr inbounds %struct.edata_s, ptr %1, i32 0, i32 6, !dbg !2493
  %e_prof_alloc_size = getelementptr inbounds %struct.e_prof_info_s, ptr %2, i32 0, i32 1, !dbg !2494
  store i64 %0, ptr %e_prof_alloc_size, align 8, !dbg !2495, !tbaa !1582
  ret void, !dbg !2496
}

declare !dbg !2497 void @edata_prof_recent_alloc_init(ptr noundef) #4

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @sz_s2u(i64 noundef %size) #2 !dbg !2498 {
entry:
  %retval = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2502, metadata !DIExpression()), !dbg !2503
  %0 = load i64, ptr %size.addr, align 8, !dbg !2504, !tbaa !1277
  %cmp = icmp ule i64 %0, 4096, !dbg !2504
  %lnot = xor i1 %cmp, true, !dbg !2504
  %lnot1 = xor i1 %lnot, true, !dbg !2504
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2504
  %conv = sext i32 %lnot.ext to i64, !dbg !2504
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2504
  %tobool = icmp ne i64 %expval, 0, !dbg !2504
  br i1 %tobool, label %if.then, label %if.end, !dbg !2506

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2507, !tbaa !1277
  %call = call i64 @sz_s2u_lookup(i64 noundef %1), !dbg !2509
  store i64 %call, ptr %retval, align 8, !dbg !2510
  br label %return, !dbg !2510

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2511, !tbaa !1277
  %call2 = call i64 @sz_s2u_compute(i64 noundef %2), !dbg !2512
  store i64 %call2, ptr %retval, align 8, !dbg !2513
  br label %return, !dbg !2513

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, ptr %retval, align 8, !dbg !2514
  ret i64 %3, !dbg !2514
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @sz_s2u_lookup(i64 noundef %size) #2 !dbg !2515 {
entry:
  %size.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2517, metadata !DIExpression()), !dbg !2519
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !2520
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !2518, metadata !DIExpression()), !dbg !2521
  %0 = load i64, ptr %size.addr, align 8, !dbg !2522, !tbaa !1277
  %call = call i32 @sz_size2index_lookup(i64 noundef %0), !dbg !2523
  %call1 = call i64 @sz_index2size_lookup(i32 noundef %call), !dbg !2524
  store i64 %call1, ptr %ret, align 8, !dbg !2521, !tbaa !1277
  br label %do.body, !dbg !2525

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2526

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2526

do.end:                                           ; preds = %do.cond
  %1 = load i64, ptr %ret, align 8, !dbg !2528, !tbaa !1277
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !2529
  ret i64 %1, !dbg !2530
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @sz_s2u_compute(i64 noundef %size) #2 !dbg !2531 {
entry:
  %retval = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %lg_tmin = alloca i64, align 8
  %lg_ceil = alloca i64, align 8
  %x = alloca i64, align 8
  %lg_delta = alloca i64, align 8
  %delta = alloca i64, align 8
  %delta_mask = alloca i64, align 8
  %usize = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2533, metadata !DIExpression()), !dbg !2544
  %0 = load i64, ptr %size.addr, align 8, !dbg !2545, !tbaa !1277
  %cmp = icmp ugt i64 %0, 8070450532247928832, !dbg !2545
  %lnot = xor i1 %cmp, true, !dbg !2545
  %lnot1 = xor i1 %lnot, true, !dbg !2545
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2545
  %conv = sext i32 %lnot.ext to i64, !dbg !2545
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2545
  %tobool = icmp ne i64 %expval, 0, !dbg !2545
  br i1 %tobool, label %if.then, label %if.end, !dbg !2547

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !2548
  br label %return, !dbg !2548

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2550, !tbaa !1277
  %cmp2 = icmp eq i64 %1, 0, !dbg !2552
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !2553

if.then4:                                         ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2554, !tbaa !1277
  %inc = add i64 %2, 1, !dbg !2554
  store i64 %inc, ptr %size.addr, align 8, !dbg !2554, !tbaa !1277
  br label %if.end5, !dbg !2556

if.end5:                                          ; preds = %if.then4, %if.end
  %3 = load i64, ptr %size.addr, align 8, !dbg !2557, !tbaa !1277
  %cmp6 = icmp ule i64 %3, 8, !dbg !2558
  br i1 %cmp6, label %if.then8, label %if.end14, !dbg !2559

if.then8:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %lg_tmin) #10, !dbg !2560
  tail call void @llvm.dbg.declare(metadata ptr %lg_tmin, metadata !2534, metadata !DIExpression()), !dbg !2561
  store i64 3, ptr %lg_tmin, align 8, !dbg !2561, !tbaa !1277
  call void @llvm.lifetime.start.p0(i64 8, ptr %lg_ceil) #10, !dbg !2562
  tail call void @llvm.dbg.declare(metadata ptr %lg_ceil, metadata !2537, metadata !DIExpression()), !dbg !2563
  %4 = load i64, ptr %size.addr, align 8, !dbg !2564, !tbaa !1277
  %call = call i64 @pow2_ceil_zu(i64 noundef %4), !dbg !2565
  %call9 = call i32 @lg_floor(i64 noundef %call), !dbg !2566
  %conv10 = zext i32 %call9 to i64, !dbg !2566
  store i64 %conv10, ptr %lg_ceil, align 8, !dbg !2563, !tbaa !1277
  %5 = load i64, ptr %lg_ceil, align 8, !dbg !2567, !tbaa !1277
  %6 = load i64, ptr %lg_tmin, align 8, !dbg !2568, !tbaa !1277
  %cmp11 = icmp ult i64 %5, %6, !dbg !2569
  br i1 %cmp11, label %cond.true, label %cond.false, !dbg !2567

cond.true:                                        ; preds = %if.then8
  %7 = load i64, ptr %lg_tmin, align 8, !dbg !2570, !tbaa !1277
  %shl = shl i64 1, %7, !dbg !2571
  br label %cond.end, !dbg !2567

cond.false:                                       ; preds = %if.then8
  %8 = load i64, ptr %lg_ceil, align 8, !dbg !2572, !tbaa !1277
  %shl13 = shl i64 1, %8, !dbg !2573
  br label %cond.end, !dbg !2567

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shl, %cond.true ], [ %shl13, %cond.false ], !dbg !2567
  store i64 %cond, ptr %retval, align 8, !dbg !2574
  call void @llvm.lifetime.end.p0(i64 8, ptr %lg_ceil) #10, !dbg !2575
  call void @llvm.lifetime.end.p0(i64 8, ptr %lg_tmin) #10, !dbg !2575
  br label %return

if.end14:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #10, !dbg !2576
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !2538, metadata !DIExpression()), !dbg !2577
  %9 = load i64, ptr %size.addr, align 8, !dbg !2578, !tbaa !1277
  %shl15 = shl i64 %9, 1, !dbg !2579
  %sub = sub i64 %shl15, 1, !dbg !2580
  %call16 = call i32 @lg_floor(i64 noundef %sub), !dbg !2581
  %conv17 = zext i32 %call16 to i64, !dbg !2581
  store i64 %conv17, ptr %x, align 8, !dbg !2577, !tbaa !1277
  call void @llvm.lifetime.start.p0(i64 8, ptr %lg_delta) #10, !dbg !2582
  tail call void @llvm.dbg.declare(metadata ptr %lg_delta, metadata !2540, metadata !DIExpression()), !dbg !2583
  %10 = load i64, ptr %x, align 8, !dbg !2584, !tbaa !1277
  %cmp18 = icmp ult i64 %10, 7, !dbg !2585
  br i1 %cmp18, label %cond.true20, label %cond.false21, !dbg !2586

cond.true20:                                      ; preds = %if.end14
  br label %cond.end24, !dbg !2586

cond.false21:                                     ; preds = %if.end14
  %11 = load i64, ptr %x, align 8, !dbg !2587, !tbaa !1277
  %sub22 = sub i64 %11, 2, !dbg !2588
  %sub23 = sub i64 %sub22, 1, !dbg !2589
  br label %cond.end24, !dbg !2586

cond.end24:                                       ; preds = %cond.false21, %cond.true20
  %cond25 = phi i64 [ 4, %cond.true20 ], [ %sub23, %cond.false21 ], !dbg !2586
  store i64 %cond25, ptr %lg_delta, align 8, !dbg !2583, !tbaa !1277
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #10, !dbg !2590
  tail call void @llvm.dbg.declare(metadata ptr %delta, metadata !2541, metadata !DIExpression()), !dbg !2591
  %12 = load i64, ptr %lg_delta, align 8, !dbg !2592, !tbaa !1277
  %shl26 = shl i64 1, %12, !dbg !2593
  store i64 %shl26, ptr %delta, align 8, !dbg !2591, !tbaa !1277
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta_mask) #10, !dbg !2594
  tail call void @llvm.dbg.declare(metadata ptr %delta_mask, metadata !2542, metadata !DIExpression()), !dbg !2595
  %13 = load i64, ptr %delta, align 8, !dbg !2596, !tbaa !1277
  %sub27 = sub i64 %13, 1, !dbg !2597
  store i64 %sub27, ptr %delta_mask, align 8, !dbg !2595, !tbaa !1277
  call void @llvm.lifetime.start.p0(i64 8, ptr %usize) #10, !dbg !2598
  tail call void @llvm.dbg.declare(metadata ptr %usize, metadata !2543, metadata !DIExpression()), !dbg !2599
  %14 = load i64, ptr %size.addr, align 8, !dbg !2600, !tbaa !1277
  %15 = load i64, ptr %delta_mask, align 8, !dbg !2601, !tbaa !1277
  %add = add i64 %14, %15, !dbg !2602
  %16 = load i64, ptr %delta_mask, align 8, !dbg !2603, !tbaa !1277
  %not = xor i64 %16, -1, !dbg !2604
  %and = and i64 %add, %not, !dbg !2605
  store i64 %and, ptr %usize, align 8, !dbg !2599, !tbaa !1277
  %17 = load i64, ptr %usize, align 8, !dbg !2606, !tbaa !1277
  store i64 %17, ptr %retval, align 8, !dbg !2607
  call void @llvm.lifetime.end.p0(i64 8, ptr %usize) #10, !dbg !2608
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta_mask) #10, !dbg !2608
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #10, !dbg !2608
  call void @llvm.lifetime.end.p0(i64 8, ptr %lg_delta) #10, !dbg !2608
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #10, !dbg !2608
  br label %return

return:                                           ; preds = %cond.end24, %cond.end, %if.then
  %18 = load i64, ptr %retval, align 8, !dbg !2609
  ret i64 %18, !dbg !2609
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @sz_index2size_lookup(i32 noundef %index) #2 !dbg !2610 {
entry:
  %index.addr = alloca i32, align 4
  %ret = alloca i64, align 8
  store i32 %index, ptr %index.addr, align 4, !tbaa !1534
  tail call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !2614, metadata !DIExpression()), !dbg !2616
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !2617
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !2615, metadata !DIExpression()), !dbg !2618
  %0 = load i32, ptr %index.addr, align 4, !dbg !2619, !tbaa !1534
  %call = call i64 @sz_index2size_lookup_impl(i32 noundef %0), !dbg !2620
  store i64 %call, ptr %ret, align 8, !dbg !2618, !tbaa !1277
  br label %do.body, !dbg !2621

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2622

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2622

do.end:                                           ; preds = %do.cond
  %1 = load i64, ptr %ret, align 8, !dbg !2624, !tbaa !1277
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !2625
  ret i64 %1, !dbg !2626
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @sz_size2index_lookup(i64 noundef %size) #2 !dbg !2627 {
entry:
  %size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2631, metadata !DIExpression()), !dbg !2633
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !2634
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !2632, metadata !DIExpression()), !dbg !2635
  %0 = load i64, ptr %size.addr, align 8, !dbg !2636, !tbaa !1277
  %call = call i32 @sz_size2index_lookup_impl(i64 noundef %0), !dbg !2637
  store i32 %call, ptr %ret, align 4, !dbg !2635, !tbaa !1534
  br label %do.body, !dbg !2638

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2639

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2639

do.end:                                           ; preds = %do.cond
  %1 = load i32, ptr %ret, align 4, !dbg !2641, !tbaa !1534
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !2642
  ret i32 %1, !dbg !2643
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @sz_index2size_lookup_impl(i32 noundef %index) #2 !dbg !2644 {
entry:
  %index.addr = alloca i32, align 4
  store i32 %index, ptr %index.addr, align 4, !tbaa !1534
  tail call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !2646, metadata !DIExpression()), !dbg !2647
  %0 = load i32, ptr %index.addr, align 4, !dbg !2648, !tbaa !1534
  %idxprom = zext i32 %0 to i64, !dbg !2649
  %arrayidx = getelementptr inbounds [232 x i64], ptr @sz_index2size_tab, i64 0, i64 %idxprom, !dbg !2649
  %1 = load i64, ptr %arrayidx, align 8, !dbg !2649, !tbaa !1277
  ret i64 %1, !dbg !2650
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @sz_size2index_lookup_impl(i64 noundef %size) #2 !dbg !2651 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2653, metadata !DIExpression()), !dbg !2654
  br label %do.body, !dbg !2655

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2656

do.end:                                           ; preds = %do.body
  %0 = load i64, ptr %size.addr, align 8, !dbg !2658, !tbaa !1277
  %add = add i64 %0, 8, !dbg !2659
  %sub = sub i64 %add, 1, !dbg !2660
  %shr = lshr i64 %sub, 3, !dbg !2661
  %arrayidx = getelementptr inbounds [0 x i8], ptr @sz_size2index_tab, i64 0, i64 %shr, !dbg !2662
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2662, !tbaa !1582
  %conv = zext i8 %1 to i32, !dbg !2662
  ret i32 %conv, !dbg !2663
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @lg_floor(i64 noundef %x) #5 !dbg !2664 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !2669, metadata !DIExpression()), !dbg !2670
  %0 = load i64, ptr %x.addr, align 8, !dbg !2671, !tbaa !1277
  %cmp = icmp ne i64 %0, 0, !dbg !2672
  call void @util_assume(i1 noundef zeroext %cmp), !dbg !2673
  %1 = load i64, ptr %x.addr, align 8, !dbg !2674, !tbaa !1277
  %call = call i32 @fls_u64(i64 noundef %1), !dbg !2675
  ret i32 %call, !dbg !2676
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @pow2_ceil_zu(i64 noundef %x) #5 !dbg !2677 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !2679, metadata !DIExpression()), !dbg !2680
  %0 = load i64, ptr %x.addr, align 8, !dbg !2681, !tbaa !1277
  %call = call i64 @pow2_ceil_u64(i64 noundef %0), !dbg !2682
  ret i64 %call, !dbg !2683
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @util_assume(i1 noundef zeroext %b) #2 !dbg !2684 {
entry:
  %b.addr = alloca i8, align 1
  %frombool = zext i1 %b to i8
  store i8 %frombool, ptr %b.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !2689, metadata !DIExpression()), !dbg !2690
  %0 = load i8, ptr %b.addr, align 1, !dbg !2691, !tbaa !1280, !range !1290, !noundef !1291
  %tobool = trunc i8 %0 to i1, !dbg !2691
  br i1 %tobool, label %if.end, label %if.then, !dbg !2693

if.then:                                          ; preds = %entry
  unreachable, !dbg !2694

if.end:                                           ; preds = %entry
  ret void, !dbg !2696
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fls_u64(i64 noundef %x) #5 !dbg !2697 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !2701, metadata !DIExpression()), !dbg !2702
  %0 = load i64, ptr %x.addr, align 8, !dbg !2703, !tbaa !1277
  %call = call i32 @fls_lu(i64 noundef %0), !dbg !2704
  ret i32 %call, !dbg !2705
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fls_lu(i64 noundef %x) #5 !dbg !2706 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !2710, metadata !DIExpression()), !dbg !2711
  %0 = load i64, ptr %x.addr, align 8, !dbg !2712, !tbaa !1277
  %cmp = icmp ne i64 %0, 0, !dbg !2713
  call void @util_assume(i1 noundef zeroext %cmp), !dbg !2714
  %1 = load i64, ptr %x.addr, align 8, !dbg !2715, !tbaa !1277
  %2 = call i64 @llvm.ctlz.i64(i64 %1, i1 true), !dbg !2716
  %cast = trunc i64 %2 to i32, !dbg !2716
  %conv = sext i32 %cast to i64, !dbg !2716
  %xor = xor i64 63, %conv, !dbg !2717
  %conv1 = trunc i64 %xor to i32, !dbg !2718
  ret i32 %conv1, !dbg !2719
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @pow2_ceil_u64(i64 noundef %x) #5 !dbg !2720 {
entry:
  %retval = alloca i64, align 8
  %x.addr = alloca i64, align 8
  %msb_on_index = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !2724, metadata !DIExpression()), !dbg !2726
  %0 = load i64, ptr %x.addr, align 8, !dbg !2727, !tbaa !1277
  %cmp = icmp ule i64 %0, 1, !dbg !2727
  %lnot = xor i1 %cmp, true, !dbg !2727
  %lnot1 = xor i1 %lnot, true, !dbg !2727
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2727
  %conv = sext i32 %lnot.ext to i64, !dbg !2727
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2727
  %tobool = icmp ne i64 %expval, 0, !dbg !2727
  br i1 %tobool, label %if.then, label %if.end, !dbg !2729

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %x.addr, align 8, !dbg !2730, !tbaa !1277
  store i64 %1, ptr %retval, align 8, !dbg !2732
  br label %return, !dbg !2732

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %msb_on_index) #10, !dbg !2733
  tail call void @llvm.dbg.declare(metadata ptr %msb_on_index, metadata !2725, metadata !DIExpression()), !dbg !2734
  %2 = load i64, ptr %x.addr, align 8, !dbg !2735, !tbaa !1277
  %sub = sub i64 %2, 1, !dbg !2736
  %call = call i32 @fls_u64(i64 noundef %sub), !dbg !2737
  %conv2 = zext i32 %call to i64, !dbg !2737
  store i64 %conv2, ptr %msb_on_index, align 8, !dbg !2734, !tbaa !1277
  br label %do.body, !dbg !2738

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !2739

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2739

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr %msb_on_index, align 8, !dbg !2741, !tbaa !1277
  %add = add i64 %3, 1, !dbg !2742
  %shl = shl i64 1, %add, !dbg !2743
  store i64 %shl, ptr %retval, align 8, !dbg !2744
  call void @llvm.lifetime.end.p0(i64 8, ptr %msb_on_index) #10, !dbg !2745
  br label %return

return:                                           ; preds = %do.end, %if.then
  %4 = load i64, ptr %retval, align 8, !dbg !2745
  ret i64 %4, !dbg !2745
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_arena_get(ptr noundef %tsd) #2 !dbg !2746 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !2750, metadata !DIExpression()), !dbg !2751
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !2751, !tbaa !1271
  %call = call ptr @tsd_arenap_get(ptr noundef %0), !dbg !2751
  %1 = load ptr, ptr %call, align 8, !dbg !2751, !tbaa !1271
  ret ptr %1, !dbg !2751
}

declare !dbg !2752 ptr @arena_choose_huge(ptr noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @arena_choose(ptr noundef %tsd, ptr noundef %arena) #5 !dbg !2753 {
entry:
  %tsd.addr = alloca ptr, align 8
  %arena.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !2757, metadata !DIExpression()), !dbg !2759
  store ptr %arena, ptr %arena.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %arena.addr, metadata !2758, metadata !DIExpression()), !dbg !2760
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !2761, !tbaa !1271
  %1 = load ptr, ptr %arena.addr, align 8, !dbg !2762, !tbaa !1271
  %call = call ptr @arena_choose_impl(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false), !dbg !2763
  ret ptr %call, !dbg !2764
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_arenap_get(ptr noundef %tsd) #2 !dbg !2765 {
entry:
  %tsd.addr = alloca ptr, align 8
  %state = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !2770, metadata !DIExpression()), !dbg !2772
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #10, !dbg !2772
  tail call void @llvm.dbg.declare(metadata ptr %state, metadata !2771, metadata !DIExpression()), !dbg !2772
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !2772, !tbaa !1271
  %call = call zeroext i8 @tsd_state_get(ptr noundef %0), !dbg !2772
  store i8 %call, ptr %state, align 1, !dbg !2772, !tbaa !1582
  br label %do.body, !dbg !2772

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2773

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2773

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !2772, !tbaa !1271
  %call1 = call ptr @tsd_arenap_get_unsafe(ptr noundef %1), !dbg !2772
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #10, !dbg !2772
  ret ptr %call1, !dbg !2772
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @tsd_state_get(ptr noundef %tsd) #2 !dbg !2775 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !2779, metadata !DIExpression()), !dbg !2780
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !2781, !tbaa !1271
  %state = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 29, !dbg !2782
  %1 = load i8, ptr %state, align 8, !dbg !2783, !tbaa !1582
  ret i8 %1, !dbg !2784
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_arenap_get_unsafe(ptr noundef %tsd) #2 !dbg !2785 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !2787, metadata !DIExpression()), !dbg !2788
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !2788, !tbaa !1271
  %cant_access_tsd_items_directly_use_a_getter_or_setter_arena = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 19, !dbg !2788
  ret ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_arena, !dbg !2788
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @arena_choose_impl(ptr noundef %tsd, ptr noundef %arena, i1 noundef zeroext %internal) #5 !dbg !2789 {
entry:
  %retval = alloca ptr, align 8
  %tsd.addr = alloca ptr, align 8
  %arena.addr = alloca ptr, align 8
  %internal.addr = alloca i8, align 1
  %ret = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tcache_slow = alloca ptr, align 8
  %tcache = alloca ptr, align 8
  %ind = alloca i32, align 4
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !2793, metadata !DIExpression()), !dbg !2806
  store ptr %arena, ptr %arena.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %arena.addr, metadata !2794, metadata !DIExpression()), !dbg !2807
  %frombool = zext i1 %internal to i8
  store i8 %frombool, ptr %internal.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %internal.addr, metadata !2795, metadata !DIExpression()), !dbg !2808
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !2809
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !2796, metadata !DIExpression()), !dbg !2810
  %0 = load ptr, ptr %arena.addr, align 8, !dbg !2811, !tbaa !1271
  %cmp = icmp ne ptr %0, null, !dbg !2813
  br i1 %cmp, label %if.then, label %if.end, !dbg !2814

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %arena.addr, align 8, !dbg !2815, !tbaa !1271
  store ptr %1, ptr %retval, align 8, !dbg !2817
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2817

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %tsd.addr, align 8, !dbg !2818, !tbaa !1271
  %call = call signext i8 @tsd_reentrancy_level_get(ptr noundef %2), !dbg !2818
  %conv = sext i8 %call to i32, !dbg !2818
  %cmp1 = icmp sgt i32 %conv, 0, !dbg !2818
  %lnot = xor i1 %cmp1, true, !dbg !2818
  %lnot3 = xor i1 %lnot, true, !dbg !2818
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2818
  %conv4 = sext i32 %lnot.ext to i64, !dbg !2818
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 0), !dbg !2818
  %tobool = icmp ne i64 %expval, 0, !dbg !2818
  br i1 %tobool, label %if.then5, label %if.end8, !dbg !2820

if.then5:                                         ; preds = %if.end
  %3 = load ptr, ptr %tsd.addr, align 8, !dbg !2821, !tbaa !1271
  %call6 = call ptr @tsd_tsdn(ptr noundef %3), !dbg !2823
  %call7 = call ptr @arena_get(ptr noundef %call6, i32 noundef 0, i1 noundef zeroext true), !dbg !2824
  store ptr %call7, ptr %retval, align 8, !dbg !2825
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2825

if.end8:                                          ; preds = %if.end
  %4 = load i8, ptr %internal.addr, align 1, !dbg !2826, !tbaa !1280, !range !1290, !noundef !1291
  %tobool9 = trunc i8 %4 to i1, !dbg !2826
  br i1 %tobool9, label %cond.true, label %cond.false, !dbg !2826

cond.true:                                        ; preds = %if.end8
  %5 = load ptr, ptr %tsd.addr, align 8, !dbg !2827, !tbaa !1271
  %call11 = call ptr @tsd_iarena_get(ptr noundef %5), !dbg !2828
  br label %cond.end, !dbg !2826

cond.false:                                       ; preds = %if.end8
  %6 = load ptr, ptr %tsd.addr, align 8, !dbg !2829, !tbaa !1271
  %call12 = call ptr @tsd_arena_get(ptr noundef %6), !dbg !2830
  br label %cond.end, !dbg !2826

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call11, %cond.true ], [ %call12, %cond.false ], !dbg !2826
  store ptr %cond, ptr %ret, align 8, !dbg !2831, !tbaa !1271
  %7 = load ptr, ptr %ret, align 8, !dbg !2832, !tbaa !1271
  %cmp13 = icmp eq ptr %7, null, !dbg !2832
  %lnot15 = xor i1 %cmp13, true, !dbg !2832
  %lnot17 = xor i1 %lnot15, true, !dbg !2832
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !2832
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !2832
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 0), !dbg !2832
  %tobool21 = icmp ne i64 %expval20, 0, !dbg !2832
  br i1 %tobool21, label %if.then22, label %if.end45, !dbg !2833

if.then22:                                        ; preds = %cond.end
  %8 = load ptr, ptr %tsd.addr, align 8, !dbg !2834, !tbaa !1271
  %9 = load i8, ptr %internal.addr, align 1, !dbg !2835, !tbaa !1280, !range !1290, !noundef !1291
  %tobool23 = trunc i8 %9 to i1, !dbg !2835
  %call24 = call ptr @arena_choose_hard(ptr noundef %8, i1 noundef zeroext %tobool23), !dbg !2836
  store ptr %call24, ptr %ret, align 8, !dbg !2837, !tbaa !1271
  br label %do.body, !dbg !2838

do.body:                                          ; preds = %if.then22
  br label %do.cond, !dbg !2839

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2839

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %tsd.addr, align 8, !dbg !2841, !tbaa !1271
  %call25 = call zeroext i1 @tcache_available(ptr noundef %10), !dbg !2842
  br i1 %call25, label %if.then26, label %if.end44, !dbg !2843

if.then26:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcache_slow) #10, !dbg !2844
  tail call void @llvm.dbg.declare(metadata ptr %tcache_slow, metadata !2797, metadata !DIExpression()), !dbg !2845
  %11 = load ptr, ptr %tsd.addr, align 8, !dbg !2846, !tbaa !1271
  %call27 = call ptr @tsd_tcache_slowp_get(ptr noundef %11), !dbg !2847
  store ptr %call27, ptr %tcache_slow, align 8, !dbg !2845, !tbaa !1271
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcache) #10, !dbg !2848
  tail call void @llvm.dbg.declare(metadata ptr %tcache, metadata !2802, metadata !DIExpression()), !dbg !2849
  %12 = load ptr, ptr %tsd.addr, align 8, !dbg !2850, !tbaa !1271
  %call28 = call ptr @tsd_tcachep_get(ptr noundef %12), !dbg !2851
  store ptr %call28, ptr %tcache, align 8, !dbg !2849, !tbaa !1271
  %13 = load ptr, ptr %tcache_slow, align 8, !dbg !2852, !tbaa !1271
  %arena29 = getelementptr inbounds %struct.tcache_slow_s, ptr %13, i32 0, i32 2, !dbg !2854
  %14 = load ptr, ptr %arena29, align 8, !dbg !2854, !tbaa !2855
  %cmp30 = icmp ne ptr %14, null, !dbg !2859
  br i1 %cmp30, label %if.then32, label %if.else, !dbg !2860

if.then32:                                        ; preds = %if.then26
  br label %do.body33, !dbg !2861

do.body33:                                        ; preds = %if.then32
  br label %do.cond34, !dbg !2863

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !2863

do.end35:                                         ; preds = %do.cond34
  %15 = load ptr, ptr %tcache_slow, align 8, !dbg !2865, !tbaa !1271
  %arena36 = getelementptr inbounds %struct.tcache_slow_s, ptr %15, i32 0, i32 2, !dbg !2867
  %16 = load ptr, ptr %arena36, align 8, !dbg !2867, !tbaa !2855
  %17 = load ptr, ptr %ret, align 8, !dbg !2868, !tbaa !1271
  %cmp37 = icmp ne ptr %16, %17, !dbg !2869
  br i1 %cmp37, label %if.then39, label %if.end41, !dbg !2870

if.then39:                                        ; preds = %do.end35
  %18 = load ptr, ptr %tsd.addr, align 8, !dbg !2871, !tbaa !1271
  %call40 = call ptr @tsd_tsdn(ptr noundef %18), !dbg !2873
  %19 = load ptr, ptr %tcache_slow, align 8, !dbg !2874, !tbaa !1271
  %20 = load ptr, ptr %tcache, align 8, !dbg !2875, !tbaa !1271
  %21 = load ptr, ptr %ret, align 8, !dbg !2876, !tbaa !1271
  call void @tcache_arena_reassociate(ptr noundef %call40, ptr noundef %19, ptr noundef %20, ptr noundef %21), !dbg !2877
  br label %if.end41, !dbg !2878

if.end41:                                         ; preds = %if.then39, %do.end35
  br label %if.end43, !dbg !2879

if.else:                                          ; preds = %if.then26
  %22 = load ptr, ptr %tsd.addr, align 8, !dbg !2880, !tbaa !1271
  %call42 = call ptr @tsd_tsdn(ptr noundef %22), !dbg !2882
  %23 = load ptr, ptr %tcache_slow, align 8, !dbg !2883, !tbaa !1271
  %24 = load ptr, ptr %tcache, align 8, !dbg !2884, !tbaa !1271
  %25 = load ptr, ptr %ret, align 8, !dbg !2885, !tbaa !1271
  call void @tcache_arena_associate(ptr noundef %call42, ptr noundef %23, ptr noundef %24, ptr noundef %25), !dbg !2886
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.end41
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcache) #10, !dbg !2887
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcache_slow) #10, !dbg !2887
  br label %if.end44, !dbg !2888

if.end44:                                         ; preds = %if.end43, %do.end
  br label %if.end45, !dbg !2889

if.end45:                                         ; preds = %if.end44, %cond.end
  %26 = load i32, ptr @opt_percpu_arena, align 4, !dbg !2890, !tbaa !1582
  %cmp46 = icmp uge i32 %26, 3, !dbg !2890
  br i1 %cmp46, label %land.lhs.true, label %if.end68, !dbg !2891

land.lhs.true:                                    ; preds = %if.end45
  %27 = load i8, ptr %internal.addr, align 1, !dbg !2892, !tbaa !1280, !range !1290, !noundef !1291
  %tobool48 = trunc i8 %27 to i1, !dbg !2892
  br i1 %tobool48, label %if.end68, label %land.lhs.true49, !dbg !2893

land.lhs.true49:                                  ; preds = %land.lhs.true
  %28 = load ptr, ptr %ret, align 8, !dbg !2894, !tbaa !1271
  %call50 = call i32 @arena_ind_get(ptr noundef %28), !dbg !2895
  %29 = load i32, ptr @opt_percpu_arena, align 4, !dbg !2896, !tbaa !1582
  %call51 = call i32 @percpu_arena_ind_limit(i32 noundef %29), !dbg !2897
  %cmp52 = icmp ult i32 %call50, %call51, !dbg !2898
  br i1 %cmp52, label %land.lhs.true54, label %if.end68, !dbg !2899

land.lhs.true54:                                  ; preds = %land.lhs.true49
  %30 = load ptr, ptr %ret, align 8, !dbg !2900, !tbaa !1271
  %last_thd = getelementptr inbounds %struct.arena_s, ptr %30, i32 0, i32 2, !dbg !2901
  %31 = load ptr, ptr %last_thd, align 8, !dbg !2901, !tbaa !2902
  %32 = load ptr, ptr %tsd.addr, align 8, !dbg !2932, !tbaa !1271
  %call55 = call ptr @tsd_tsdn(ptr noundef %32), !dbg !2933
  %cmp56 = icmp ne ptr %31, %call55, !dbg !2934
  br i1 %cmp56, label %if.then58, label %if.end68, !dbg !2935

if.then58:                                        ; preds = %land.lhs.true54
  call void @llvm.lifetime.start.p0(i64 4, ptr %ind) #10, !dbg !2936
  tail call void @llvm.dbg.declare(metadata ptr %ind, metadata !2803, metadata !DIExpression()), !dbg !2937
  %call59 = call i32 @percpu_arena_choose(), !dbg !2938
  store i32 %call59, ptr %ind, align 4, !dbg !2937, !tbaa !1534
  %33 = load ptr, ptr %ret, align 8, !dbg !2939, !tbaa !1271
  %call60 = call i32 @arena_ind_get(ptr noundef %33), !dbg !2941
  %34 = load i32, ptr %ind, align 4, !dbg !2942, !tbaa !1534
  %cmp61 = icmp ne i32 %call60, %34, !dbg !2943
  br i1 %cmp61, label %if.then63, label %if.end65, !dbg !2944

if.then63:                                        ; preds = %if.then58
  %35 = load ptr, ptr %tsd.addr, align 8, !dbg !2945, !tbaa !1271
  %36 = load i32, ptr %ind, align 4, !dbg !2947, !tbaa !1534
  call void @percpu_arena_update(ptr noundef %35, i32 noundef %36), !dbg !2948
  %37 = load ptr, ptr %tsd.addr, align 8, !dbg !2949, !tbaa !1271
  %call64 = call ptr @tsd_arena_get(ptr noundef %37), !dbg !2950
  store ptr %call64, ptr %ret, align 8, !dbg !2951, !tbaa !1271
  br label %if.end65, !dbg !2952

if.end65:                                         ; preds = %if.then63, %if.then58
  %38 = load ptr, ptr %tsd.addr, align 8, !dbg !2953, !tbaa !1271
  %call66 = call ptr @tsd_tsdn(ptr noundef %38), !dbg !2954
  %39 = load ptr, ptr %ret, align 8, !dbg !2955, !tbaa !1271
  %last_thd67 = getelementptr inbounds %struct.arena_s, ptr %39, i32 0, i32 2, !dbg !2956
  store ptr %call66, ptr %last_thd67, align 8, !dbg !2957, !tbaa !2902
  call void @llvm.lifetime.end.p0(i64 4, ptr %ind) #10, !dbg !2958
  br label %if.end68, !dbg !2959

if.end68:                                         ; preds = %if.end65, %land.lhs.true54, %land.lhs.true49, %land.lhs.true, %if.end45
  %40 = load ptr, ptr %ret, align 8, !dbg !2960, !tbaa !1271
  store ptr %40, ptr %retval, align 8, !dbg !2961
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2961

cleanup:                                          ; preds = %if.end68, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !2962
  %41 = load ptr, ptr %retval, align 8, !dbg !2962
  ret ptr %41, !dbg !2962
}

; Function Attrs: alwaysinline nounwind uwtable
define internal signext i8 @tsd_reentrancy_level_get(ptr noundef %tsd) #2 !dbg !2963 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !2967, metadata !DIExpression()), !dbg !2968
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !2968, !tbaa !1271
  %call = call ptr @tsd_reentrancy_levelp_get(ptr noundef %0), !dbg !2968
  %1 = load i8, ptr %call, align 1, !dbg !2968, !tbaa !1582
  ret i8 %1, !dbg !2968
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @arena_get(ptr noundef %tsdn, i32 noundef %ind, i1 noundef zeroext %init_if_missing) #5 !dbg !2969 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %ind.addr = alloca i32, align 4
  %init_if_missing.addr = alloca i8, align 1
  %ret = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !2974, metadata !DIExpression()), !dbg !2978
  store i32 %ind, ptr %ind.addr, align 4, !tbaa !1534
  tail call void @llvm.dbg.declare(metadata ptr %ind.addr, metadata !2975, metadata !DIExpression()), !dbg !2979
  %frombool = zext i1 %init_if_missing to i8
  store i8 %frombool, ptr %init_if_missing.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %init_if_missing.addr, metadata !2976, metadata !DIExpression()), !dbg !2980
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !2981
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !2977, metadata !DIExpression()), !dbg !2982
  br label %do.body, !dbg !2983

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2984

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2984

do.end:                                           ; preds = %do.cond
  %0 = load i32, ptr %ind.addr, align 4, !dbg !2986, !tbaa !1534
  %idxprom = zext i32 %0 to i64, !dbg !2987
  %arrayidx = getelementptr inbounds [0 x %struct.atomic_p_t], ptr @arenas, i64 0, i64 %idxprom, !dbg !2987
  %call = call ptr @atomic_load_p(ptr noundef %arrayidx, i32 noundef 1), !dbg !2988
  store ptr %call, ptr %ret, align 8, !dbg !2989, !tbaa !1271
  %1 = load ptr, ptr %ret, align 8, !dbg !2990, !tbaa !1271
  %cmp = icmp eq ptr %1, null, !dbg !2990
  %lnot = xor i1 %cmp, true, !dbg !2990
  %lnot1 = xor i1 %lnot, true, !dbg !2990
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2990
  %conv = sext i32 %lnot.ext to i64, !dbg !2990
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2990
  %tobool = icmp ne i64 %expval, 0, !dbg !2990
  br i1 %tobool, label %if.then, label %if.end5, !dbg !2992

if.then:                                          ; preds = %do.end
  %2 = load i8, ptr %init_if_missing.addr, align 1, !dbg !2993, !tbaa !1280, !range !1290, !noundef !1291
  %tobool2 = trunc i8 %2 to i1, !dbg !2993
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !2996

if.then3:                                         ; preds = %if.then
  %3 = load ptr, ptr %tsdn.addr, align 8, !dbg !2997, !tbaa !1271
  %4 = load i32, ptr %ind.addr, align 4, !dbg !2999, !tbaa !1534
  %call4 = call ptr @arena_init(ptr noundef %3, i32 noundef %4, ptr noundef @arena_config_default), !dbg !3000
  store ptr %call4, ptr %ret, align 8, !dbg !3001, !tbaa !1271
  br label %if.end, !dbg !3002

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end5, !dbg !3003

if.end5:                                          ; preds = %if.end, %do.end
  %5 = load ptr, ptr %ret, align 8, !dbg !3004, !tbaa !1271
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !3005
  ret ptr %5, !dbg !3006
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_tsdn(ptr noundef %tsd) #2 !dbg !3007 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3011, metadata !DIExpression()), !dbg !3012
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3013, !tbaa !1271
  ret ptr %0, !dbg !3014
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_iarena_get(ptr noundef %tsd) #2 !dbg !3015 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3017, metadata !DIExpression()), !dbg !3018
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3018, !tbaa !1271
  %call = call ptr @tsd_iarenap_get(ptr noundef %0), !dbg !3018
  %1 = load ptr, ptr %call, align 8, !dbg !3018, !tbaa !1271
  ret ptr %1, !dbg !3018
}

declare !dbg !3019 ptr @arena_choose_hard(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i1 @tcache_available(ptr noundef %tsd) #2 !dbg !3023 {
entry:
  %retval = alloca i1, align 1
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3027, metadata !DIExpression()), !dbg !3028
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3029, !tbaa !1271
  %call = call zeroext i1 @tsd_tcache_enabled_get(ptr noundef %0), !dbg !3029
  %lnot = xor i1 %call, true, !dbg !3029
  %lnot1 = xor i1 %lnot, true, !dbg !3029
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3029
  %conv = sext i32 %lnot.ext to i64, !dbg !3029
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3029
  %tobool = icmp ne i64 %expval, 0, !dbg !3029
  br i1 %tobool, label %if.then, label %if.end, !dbg !3031

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !3032
  br label %return, !dbg !3032

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !3034
  br label %return, !dbg !3034

return:                                           ; preds = %if.end, %if.then
  %1 = load i1, ptr %retval, align 1, !dbg !3035
  ret i1 %1, !dbg !3035
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_tcache_slowp_get(ptr noundef %tsd) #2 !dbg !3036 {
entry:
  %tsd.addr = alloca ptr, align 8
  %state = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3040, metadata !DIExpression()), !dbg !3042
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #10, !dbg !3042
  tail call void @llvm.dbg.declare(metadata ptr %state, metadata !3041, metadata !DIExpression()), !dbg !3042
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3042, !tbaa !1271
  %call = call zeroext i8 @tsd_state_get(ptr noundef %0), !dbg !3042
  store i8 %call, ptr %state, align 1, !dbg !3042, !tbaa !1582
  br label %do.body, !dbg !3042

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3043

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3043

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !3042, !tbaa !1271
  %call1 = call ptr @tsd_tcache_slowp_get_unsafe(ptr noundef %1), !dbg !3042
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #10, !dbg !3042
  ret ptr %call1, !dbg !3042
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_tcachep_get(ptr noundef %tsd) #2 !dbg !3045 {
entry:
  %tsd.addr = alloca ptr, align 8
  %state = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3049, metadata !DIExpression()), !dbg !3051
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #10, !dbg !3051
  tail call void @llvm.dbg.declare(metadata ptr %state, metadata !3050, metadata !DIExpression()), !dbg !3051
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3051, !tbaa !1271
  %call = call zeroext i8 @tsd_state_get(ptr noundef %0), !dbg !3051
  store i8 %call, ptr %state, align 1, !dbg !3051, !tbaa !1582
  br label %do.body, !dbg !3051

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3052

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3052

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !3051, !tbaa !1271
  %call1 = call ptr @tsd_tcachep_get_unsafe(ptr noundef %1), !dbg !3051
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #10, !dbg !3051
  ret ptr %call1, !dbg !3051
}

declare !dbg !3054 void @tcache_arena_reassociate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare !dbg !3058 void @tcache_arena_associate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @arena_ind_get(ptr noundef %arena) #5 !dbg !3059 {
entry:
  %arena.addr = alloca ptr, align 8
  store ptr %arena, ptr %arena.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %arena.addr, metadata !3066, metadata !DIExpression()), !dbg !3067
  %0 = load ptr, ptr %arena.addr, align 8, !dbg !3068, !tbaa !1271
  %ind = getelementptr inbounds %struct.arena_s, ptr %0, i32 0, i32 11, !dbg !3069
  %1 = load i32, ptr %ind, align 8, !dbg !3069, !tbaa !3070
  ret i32 %1, !dbg !3071
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @percpu_arena_ind_limit(i32 noundef %mode) #2 !dbg !3072 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  store i32 %mode, ptr %mode.addr, align 4, !tbaa !1582
  tail call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !3077, metadata !DIExpression()), !dbg !3078
  br label %do.body, !dbg !3079

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3080

do.end:                                           ; preds = %do.body
  %0 = load i32, ptr %mode.addr, align 4, !dbg !3082, !tbaa !1582
  %cmp = icmp eq i32 %0, 4, !dbg !3084
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !3085

land.lhs.true:                                    ; preds = %do.end
  %1 = load i32, ptr @ncpus, align 4, !dbg !3086, !tbaa !1534
  %cmp1 = icmp ugt i32 %1, 1, !dbg !3087
  br i1 %cmp1, label %if.then, label %if.else, !dbg !3088

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, ptr @ncpus, align 4, !dbg !3089, !tbaa !1534
  %rem = urem i32 %2, 2, !dbg !3092
  %tobool = icmp ne i32 %rem, 0, !dbg !3092
  br i1 %tobool, label %if.then2, label %if.end, !dbg !3093

if.then2:                                         ; preds = %if.then
  %3 = load i32, ptr @ncpus, align 4, !dbg !3094, !tbaa !1534
  %div = udiv i32 %3, 2, !dbg !3096
  %add = add i32 %div, 1, !dbg !3097
  store i32 %add, ptr %retval, align 4, !dbg !3098
  br label %return, !dbg !3098

if.end:                                           ; preds = %if.then
  %4 = load i32, ptr @ncpus, align 4, !dbg !3099, !tbaa !1534
  %div3 = udiv i32 %4, 2, !dbg !3100
  store i32 %div3, ptr %retval, align 4, !dbg !3101
  br label %return, !dbg !3101

if.else:                                          ; preds = %land.lhs.true, %do.end
  %5 = load i32, ptr @ncpus, align 4, !dbg !3102, !tbaa !1534
  store i32 %5, ptr %retval, align 4, !dbg !3104
  br label %return, !dbg !3104

return:                                           ; preds = %if.else, %if.end, %if.then2
  %6 = load i32, ptr %retval, align 4, !dbg !3105
  ret i32 %6, !dbg !3105
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @percpu_arena_choose() #2 !dbg !3106 {
entry:
  %cpuid = alloca i32, align 4
  %arena_ind = alloca i32, align 4
  br label %do.body, !dbg !3112

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3113

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpuid) #10, !dbg !3115
  tail call void @llvm.dbg.declare(metadata ptr %cpuid, metadata !3110, metadata !DIExpression()), !dbg !3116
  %call = call i32 @malloc_getcpu(), !dbg !3117
  store i32 %call, ptr %cpuid, align 4, !dbg !3116, !tbaa !1534
  br label %do.body1, !dbg !3118

do.body1:                                         ; preds = %do.end
  br label %do.cond, !dbg !3119

do.cond:                                          ; preds = %do.body1
  br label %do.end2, !dbg !3119

do.end2:                                          ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %arena_ind) #10, !dbg !3121
  tail call void @llvm.dbg.declare(metadata ptr %arena_ind, metadata !3111, metadata !DIExpression()), !dbg !3122
  %0 = load i32, ptr @opt_percpu_arena, align 4, !dbg !3123, !tbaa !1582
  %cmp = icmp eq i32 %0, 3, !dbg !3125
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3126

lor.lhs.false:                                    ; preds = %do.end2
  %1 = load i32, ptr %cpuid, align 4, !dbg !3127, !tbaa !1534
  %2 = load i32, ptr @ncpus, align 4, !dbg !3128, !tbaa !1534
  %div = udiv i32 %2, 2, !dbg !3129
  %cmp3 = icmp ult i32 %1, %div, !dbg !3130
  br i1 %cmp3, label %if.then, label %if.else, !dbg !3131

if.then:                                          ; preds = %lor.lhs.false, %do.end2
  %3 = load i32, ptr %cpuid, align 4, !dbg !3132, !tbaa !1534
  store i32 %3, ptr %arena_ind, align 4, !dbg !3134, !tbaa !1534
  br label %if.end, !dbg !3135

if.else:                                          ; preds = %lor.lhs.false
  br label %do.body4, !dbg !3136

do.body4:                                         ; preds = %if.else
  br label %do.cond5, !dbg !3138

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !3138

do.end6:                                          ; preds = %do.cond5
  %4 = load i32, ptr %cpuid, align 4, !dbg !3140, !tbaa !1534
  %5 = load i32, ptr @ncpus, align 4, !dbg !3141, !tbaa !1534
  %div7 = udiv i32 %5, 2, !dbg !3142
  %sub = sub i32 %4, %div7, !dbg !3143
  store i32 %sub, ptr %arena_ind, align 4, !dbg !3144, !tbaa !1534
  br label %if.end

if.end:                                           ; preds = %do.end6, %if.then
  %6 = load i32, ptr %arena_ind, align 4, !dbg !3145, !tbaa !1534
  call void @llvm.lifetime.end.p0(i64 4, ptr %arena_ind) #10, !dbg !3146
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpuid) #10, !dbg !3146
  ret i32 %6, !dbg !3147
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @percpu_arena_update(ptr noundef %tsd, i32 noundef %cpu) #5 !dbg !3148 {
entry:
  %tsd.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %oldarena = alloca ptr, align 8
  %oldind = alloca i32, align 4
  %newind = alloca i32, align 4
  %newarena = alloca ptr, align 8
  %tcache = alloca ptr, align 8
  %tcache_slow = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3152, metadata !DIExpression()), !dbg !3164
  store i32 %cpu, ptr %cpu.addr, align 4, !tbaa !1534
  tail call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3153, metadata !DIExpression()), !dbg !3165
  br label %do.body, !dbg !3166

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3167

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldarena) #10, !dbg !3169
  tail call void @llvm.dbg.declare(metadata ptr %oldarena, metadata !3154, metadata !DIExpression()), !dbg !3170
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3171, !tbaa !1271
  %call = call ptr @tsd_arena_get(ptr noundef %0), !dbg !3172
  store ptr %call, ptr %oldarena, align 8, !dbg !3170, !tbaa !1271
  br label %do.body1, !dbg !3173

do.body1:                                         ; preds = %do.end
  br label %do.cond, !dbg !3174

do.cond:                                          ; preds = %do.body1
  br label %do.end2, !dbg !3174

do.end2:                                          ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %oldind) #10, !dbg !3176
  tail call void @llvm.dbg.declare(metadata ptr %oldind, metadata !3155, metadata !DIExpression()), !dbg !3177
  %1 = load ptr, ptr %oldarena, align 8, !dbg !3178, !tbaa !1271
  %call3 = call i32 @arena_ind_get(ptr noundef %1), !dbg !3179
  store i32 %call3, ptr %oldind, align 4, !dbg !3177, !tbaa !1534
  %2 = load i32, ptr %oldind, align 4, !dbg !3180, !tbaa !1534
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !3181, !tbaa !1534
  %cmp = icmp ne i32 %2, %3, !dbg !3182
  br i1 %cmp, label %if.then, label %if.end14, !dbg !3183

if.then:                                          ; preds = %do.end2
  call void @llvm.lifetime.start.p0(i64 4, ptr %newind) #10, !dbg !3184
  tail call void @llvm.dbg.declare(metadata ptr %newind, metadata !3156, metadata !DIExpression()), !dbg !3185
  %4 = load i32, ptr %cpu.addr, align 4, !dbg !3186, !tbaa !1534
  store i32 %4, ptr %newind, align 4, !dbg !3185, !tbaa !1534
  call void @llvm.lifetime.start.p0(i64 8, ptr %newarena) #10, !dbg !3187
  tail call void @llvm.dbg.declare(metadata ptr %newarena, metadata !3159, metadata !DIExpression()), !dbg !3188
  %5 = load ptr, ptr %tsd.addr, align 8, !dbg !3189, !tbaa !1271
  %call4 = call ptr @tsd_tsdn(ptr noundef %5), !dbg !3190
  %6 = load i32, ptr %newind, align 4, !dbg !3191, !tbaa !1534
  %call5 = call ptr @arena_get(ptr noundef %call4, i32 noundef %6, i1 noundef zeroext true), !dbg !3192
  store ptr %call5, ptr %newarena, align 8, !dbg !3188, !tbaa !1271
  br label %do.body6, !dbg !3193

do.body6:                                         ; preds = %if.then
  br label %do.cond7, !dbg !3194

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !3194

do.end8:                                          ; preds = %do.cond7
  %7 = load ptr, ptr %tsd.addr, align 8, !dbg !3196, !tbaa !1271
  %8 = load ptr, ptr %oldarena, align 8, !dbg !3197, !tbaa !1271
  %9 = load ptr, ptr %newarena, align 8, !dbg !3198, !tbaa !1271
  call void @arena_migrate(ptr noundef %7, ptr noundef %8, ptr noundef %9), !dbg !3199
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcache) #10, !dbg !3200
  tail call void @llvm.dbg.declare(metadata ptr %tcache, metadata !3160, metadata !DIExpression()), !dbg !3201
  %10 = load ptr, ptr %tsd.addr, align 8, !dbg !3202, !tbaa !1271
  %call9 = call ptr @tcache_get(ptr noundef %10), !dbg !3203
  store ptr %call9, ptr %tcache, align 8, !dbg !3201, !tbaa !1271
  %11 = load ptr, ptr %tcache, align 8, !dbg !3204, !tbaa !1271
  %cmp10 = icmp ne ptr %11, null, !dbg !3205
  br i1 %cmp10, label %if.then11, label %if.end, !dbg !3206

if.then11:                                        ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcache_slow) #10, !dbg !3207
  tail call void @llvm.dbg.declare(metadata ptr %tcache_slow, metadata !3161, metadata !DIExpression()), !dbg !3208
  %12 = load ptr, ptr %tsd.addr, align 8, !dbg !3209, !tbaa !1271
  %call12 = call ptr @tsd_tcache_slowp_get(ptr noundef %12), !dbg !3210
  store ptr %call12, ptr %tcache_slow, align 8, !dbg !3208, !tbaa !1271
  %13 = load ptr, ptr %tsd.addr, align 8, !dbg !3211, !tbaa !1271
  %call13 = call ptr @tsd_tsdn(ptr noundef %13), !dbg !3212
  %14 = load ptr, ptr %tcache_slow, align 8, !dbg !3213, !tbaa !1271
  %15 = load ptr, ptr %tcache, align 8, !dbg !3214, !tbaa !1271
  %16 = load ptr, ptr %newarena, align 8, !dbg !3215, !tbaa !1271
  call void @tcache_arena_reassociate(ptr noundef %call13, ptr noundef %14, ptr noundef %15, ptr noundef %16), !dbg !3216
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcache_slow) #10, !dbg !3217
  br label %if.end, !dbg !3218

if.end:                                           ; preds = %if.then11, %do.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcache) #10, !dbg !3219
  call void @llvm.lifetime.end.p0(i64 8, ptr %newarena) #10, !dbg !3219
  call void @llvm.lifetime.end.p0(i64 4, ptr %newind) #10, !dbg !3219
  br label %if.end14, !dbg !3220

if.end14:                                         ; preds = %if.end, %do.end2
  call void @llvm.lifetime.end.p0(i64 4, ptr %oldind) #10, !dbg !3221
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldarena) #10, !dbg !3221
  ret void, !dbg !3221
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_reentrancy_levelp_get(ptr noundef %tsd) #2 !dbg !3222 {
entry:
  %tsd.addr = alloca ptr, align 8
  %state = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3227, metadata !DIExpression()), !dbg !3229
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #10, !dbg !3229
  tail call void @llvm.dbg.declare(metadata ptr %state, metadata !3228, metadata !DIExpression()), !dbg !3229
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3229, !tbaa !1271
  %call = call zeroext i8 @tsd_state_get(ptr noundef %0), !dbg !3229
  store i8 %call, ptr %state, align 1, !dbg !3229, !tbaa !1582
  br label %do.body, !dbg !3229

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3230

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3230

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !3229, !tbaa !1271
  %call1 = call ptr @tsd_reentrancy_levelp_get_unsafe(ptr noundef %1), !dbg !3229
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #10, !dbg !3229
  ret ptr %call1, !dbg !3229
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_reentrancy_levelp_get_unsafe(ptr noundef %tsd) #2 !dbg !3232 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3234, metadata !DIExpression()), !dbg !3235
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3235, !tbaa !1271
  %cant_access_tsd_items_directly_use_a_getter_or_setter_reentrancy_level = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 1, !dbg !3235
  ret ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_reentrancy_level, !dbg !3235
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @atomic_load_p(ptr noundef %a, i32 noundef %mo) #2 !dbg !3236 {
entry:
  %a.addr = alloca ptr, align 8
  %mo.addr = alloca i32, align 4
  %result = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !3243, metadata !DIExpression()), !dbg !3246
  store i32 %mo, ptr %mo.addr, align 4, !tbaa !1582
  tail call void @llvm.dbg.declare(metadata ptr %mo.addr, metadata !3244, metadata !DIExpression()), !dbg !3246
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #10, !dbg !3246
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !3245, metadata !DIExpression()), !dbg !3246
  %0 = load ptr, ptr %a.addr, align 8, !dbg !3246, !tbaa !1271
  %repr = getelementptr inbounds %struct.atomic_p_t, ptr %0, i32 0, i32 0, !dbg !3246
  %1 = load i32, ptr %mo.addr, align 4, !dbg !3246, !tbaa !1582
  %call = call i32 @atomic_enum_to_builtin(i32 noundef %1), !dbg !3246
  switch i32 %call, label %monotonic [
    i32 1, label %acquire
    i32 2, label %acquire
    i32 5, label %seqcst
  ], !dbg !3246

monotonic:                                        ; preds = %entry
  %2 = load atomic i64, ptr %repr monotonic, align 8, !dbg !3246
  store i64 %2, ptr %result, align 8, !dbg !3246
  br label %atomic.continue, !dbg !3246

acquire:                                          ; preds = %entry, %entry
  %3 = load atomic i64, ptr %repr acquire, align 8, !dbg !3246
  store i64 %3, ptr %result, align 8, !dbg !3246
  br label %atomic.continue, !dbg !3246

seqcst:                                           ; preds = %entry
  %4 = load atomic i64, ptr %repr seq_cst, align 8, !dbg !3246
  store i64 %4, ptr %result, align 8, !dbg !3246
  br label %atomic.continue, !dbg !3246

atomic.continue:                                  ; preds = %seqcst, %acquire, %monotonic
  %5 = load ptr, ptr %result, align 8, !dbg !3246, !tbaa !1271
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #10, !dbg !3246
  ret ptr %5, !dbg !3246
}

declare !dbg !3247 ptr @arena_init(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @atomic_enum_to_builtin(i32 noundef %mo) #2 !dbg !3257 {
entry:
  %retval = alloca i32, align 4
  %mo.addr = alloca i32, align 4
  store i32 %mo, ptr %mo.addr, align 4, !tbaa !1582
  tail call void @llvm.dbg.declare(metadata ptr %mo.addr, metadata !3261, metadata !DIExpression()), !dbg !3262
  %0 = load i32, ptr %mo.addr, align 4, !dbg !3263, !tbaa !1582
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
  ], !dbg !3264

sw.bb:                                            ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3265
  br label %do.end, !dbg !3265

sw.bb1:                                           ; preds = %entry
  store i32 2, ptr %retval, align 4, !dbg !3267
  br label %do.end, !dbg !3267

sw.bb2:                                           ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !3268
  br label %do.end, !dbg !3268

sw.bb3:                                           ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !3269
  br label %do.end, !dbg !3269

sw.bb4:                                           ; preds = %entry
  store i32 5, ptr %retval, align 4, !dbg !3270
  br label %do.end, !dbg !3270

sw.epilog:                                        ; preds = %entry
  br label %do.body, !dbg !3271

do.body:                                          ; preds = %sw.epilog
  unreachable, !dbg !3272

do.end:                                           ; preds = %sw.bb, %sw.bb1, %sw.bb2, %sw.bb3, %sw.bb4
  %1 = load i32, ptr %retval, align 4, !dbg !3274
  ret i32 %1, !dbg !3274
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_iarenap_get(ptr noundef %tsd) #2 !dbg !3275 {
entry:
  %tsd.addr = alloca ptr, align 8
  %state = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3277, metadata !DIExpression()), !dbg !3279
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #10, !dbg !3279
  tail call void @llvm.dbg.declare(metadata ptr %state, metadata !3278, metadata !DIExpression()), !dbg !3279
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3279, !tbaa !1271
  %call = call zeroext i8 @tsd_state_get(ptr noundef %0), !dbg !3279
  store i8 %call, ptr %state, align 1, !dbg !3279, !tbaa !1582
  br label %do.body, !dbg !3279

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3280

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3280

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !3279, !tbaa !1271
  %call1 = call ptr @tsd_iarenap_get_unsafe(ptr noundef %1), !dbg !3279
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #10, !dbg !3279
  ret ptr %call1, !dbg !3279
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_iarenap_get_unsafe(ptr noundef %tsd) #2 !dbg !3282 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3284, metadata !DIExpression()), !dbg !3285
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3285, !tbaa !1271
  %cant_access_tsd_items_directly_use_a_getter_or_setter_iarena = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 18, !dbg !3285
  ret ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_iarena, !dbg !3285
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i1 @tsd_tcache_enabled_get(ptr noundef %tsd) #2 !dbg !3286 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3288, metadata !DIExpression()), !dbg !3289
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3289, !tbaa !1271
  %call = call ptr @tsd_tcache_enabledp_get(ptr noundef %0), !dbg !3289
  %1 = load i8, ptr %call, align 1, !dbg !3289, !tbaa !1280, !range !1290, !noundef !1291
  %tobool = trunc i8 %1 to i1, !dbg !3289
  ret i1 %tobool, !dbg !3289
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_tcache_enabledp_get(ptr noundef %tsd) #2 !dbg !3290 {
entry:
  %tsd.addr = alloca ptr, align 8
  %state = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3294, metadata !DIExpression()), !dbg !3296
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #10, !dbg !3296
  tail call void @llvm.dbg.declare(metadata ptr %state, metadata !3295, metadata !DIExpression()), !dbg !3296
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3296, !tbaa !1271
  %call = call zeroext i8 @tsd_state_get(ptr noundef %0), !dbg !3296
  store i8 %call, ptr %state, align 1, !dbg !3296, !tbaa !1582
  br label %do.body, !dbg !3296

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3297

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3297

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !3296, !tbaa !1271
  %call1 = call ptr @tsd_tcache_enabledp_get_unsafe(ptr noundef %1), !dbg !3296
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #10, !dbg !3296
  ret ptr %call1, !dbg !3296
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_tcache_enabledp_get_unsafe(ptr noundef %tsd) #2 !dbg !3299 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3301, metadata !DIExpression()), !dbg !3302
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3302, !tbaa !1271
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache_enabled = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 0, !dbg !3302
  ret ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache_enabled, !dbg !3302
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_tcache_slowp_get_unsafe(ptr noundef %tsd) #2 !dbg !3303 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3305, metadata !DIExpression()), !dbg !3306
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3306, !tbaa !1271
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache_slow = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 27, !dbg !3306
  ret ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache_slow, !dbg !3306
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_tcachep_get_unsafe(ptr noundef %tsd) #2 !dbg !3307 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3309, metadata !DIExpression()), !dbg !3310
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3310, !tbaa !1271
  %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 34, !dbg !3310
  ret ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_tcache, !dbg !3310
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @malloc_getcpu() #2 !dbg !3311 {
entry:
  br label %do.body, !dbg !3314

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3315

do.end:                                           ; preds = %do.body
  %call = call i32 @sched_getcpu() #10, !dbg !3317
  ret i32 %call, !dbg !3318
}

; Function Attrs: nounwind
declare !dbg !3319 i32 @sched_getcpu() #8

declare !dbg !3323 void @arena_migrate(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tcache_get(ptr noundef %tsd) #2 !dbg !3326 {
entry:
  %retval = alloca ptr, align 8
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3328, metadata !DIExpression()), !dbg !3329
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3330, !tbaa !1271
  %call = call zeroext i1 @tcache_available(ptr noundef %0), !dbg !3332
  br i1 %call, label %if.end, label %if.then, !dbg !3333

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3334
  br label %return, !dbg !3334

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !3336, !tbaa !1271
  %call1 = call ptr @tsd_tcachep_get(ptr noundef %1), !dbg !3337
  store ptr %call1, ptr %retval, align 8, !dbg !3338
  br label %return, !dbg !3338

return:                                           ; preds = %if.end, %if.then
  %2 = load ptr, ptr %retval, align 8, !dbg !3339
  ret ptr %2, !dbg !3339
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @witness_assert_not_owner(ptr noundef %witness_tsdn, ptr noundef %witness) #5 !dbg !3340 {
entry:
  %witness_tsdn.addr = alloca ptr, align 8
  %witness.addr = alloca ptr, align 8
  %witness_tsd = alloca ptr, align 8
  %witnesses = alloca ptr, align 8
  %w = alloca ptr, align 8
  store ptr %witness_tsdn, ptr %witness_tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %witness_tsdn.addr, metadata !3344, metadata !DIExpression()), !dbg !3351
  store ptr %witness, ptr %witness.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %witness.addr, metadata !3345, metadata !DIExpression()), !dbg !3352
  call void @llvm.lifetime.start.p0(i64 8, ptr %witness_tsd) #10, !dbg !3353
  tail call void @llvm.dbg.declare(metadata ptr %witness_tsd, metadata !3346, metadata !DIExpression()), !dbg !3354
  call void @llvm.lifetime.start.p0(i64 8, ptr %witnesses) #10, !dbg !3355
  tail call void @llvm.dbg.declare(metadata ptr %witnesses, metadata !3348, metadata !DIExpression()), !dbg !3356
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #10, !dbg !3357
  tail call void @llvm.dbg.declare(metadata ptr %w, metadata !3350, metadata !DIExpression()), !dbg !3358
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #10, !dbg !3359
  call void @llvm.lifetime.end.p0(i64 8, ptr %witnesses) #10, !dbg !3359
  call void @llvm.lifetime.end.p0(i64 8, ptr %witness_tsd) #10, !dbg !3359
  ret void, !dbg !3359
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsdn_witness_tsdp_get(ptr noundef %tsdn) #2 !dbg !3360 {
entry:
  %retval = alloca ptr, align 8
  %tsdn.addr = alloca ptr, align 8
  %tsd = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !3364, metadata !DIExpression()), !dbg !3366
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !3367, !tbaa !1271
  %call = call zeroext i1 @tsdn_null(ptr noundef %0), !dbg !3367
  br i1 %call, label %if.then, label %if.end, !dbg !3366

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3369
  br label %return, !dbg !3369

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsd) #10, !dbg !3366
  tail call void @llvm.dbg.declare(metadata ptr %tsd, metadata !3365, metadata !DIExpression()), !dbg !3366
  %1 = load ptr, ptr %tsdn.addr, align 8, !dbg !3366, !tbaa !1271
  %call1 = call ptr @tsdn_tsd(ptr noundef %1), !dbg !3366
  store ptr %call1, ptr %tsd, align 8, !dbg !3366, !tbaa !1271
  %2 = load ptr, ptr %tsd, align 8, !dbg !3366, !tbaa !1271
  %call2 = call ptr @tsd_witness_tsdp_get(ptr noundef %2), !dbg !3366
  store ptr %call2, ptr %retval, align 8, !dbg !3366
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsd) #10, !dbg !3366
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8, !dbg !3366
  ret ptr %3, !dbg !3366
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @malloc_mutex_trylock_final(ptr noundef %mutex) #5 !dbg !3371 {
entry:
  %mutex.addr = alloca ptr, align 8
  store ptr %mutex, ptr %mutex.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %mutex.addr, metadata !3375, metadata !DIExpression()), !dbg !3376
  %0 = load ptr, ptr %mutex.addr, align 8, !dbg !3377, !tbaa !1271
  %1 = getelementptr inbounds %struct.malloc_mutex_s, ptr %0, i32 0, i32 0, !dbg !3377
  %lock = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 1, !dbg !3377
  %call = call i32 @pthread_mutex_trylock(ptr noundef %lock) #10, !dbg !3377
  %cmp = icmp ne i32 %call, 0, !dbg !3377
  ret i1 %cmp, !dbg !3378
}

declare !dbg !3379 void @malloc_mutex_lock_slow(ptr noundef) #4

; Function Attrs: alwaysinline nounwind uwtable
define internal void @atomic_store_b(ptr noundef %a, i1 noundef zeroext %val, i32 noundef %mo) #2 !dbg !3382 {
entry:
  %a.addr = alloca ptr, align 8
  %val.addr = alloca i8, align 1
  %mo.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !3387, metadata !DIExpression()), !dbg !3390
  %frombool = zext i1 %val to i8
  store i8 %frombool, ptr %val.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !3388, metadata !DIExpression()), !dbg !3390
  store i32 %mo, ptr %mo.addr, align 4, !tbaa !1582
  tail call void @llvm.dbg.declare(metadata ptr %mo.addr, metadata !3389, metadata !DIExpression()), !dbg !3390
  %0 = load ptr, ptr %a.addr, align 8, !dbg !3390, !tbaa !1271
  %repr = getelementptr inbounds %struct.atomic_b_t, ptr %0, i32 0, i32 0, !dbg !3390
  %1 = load i32, ptr %mo.addr, align 4, !dbg !3390, !tbaa !1582
  %call = call i32 @atomic_enum_to_builtin(i32 noundef %1), !dbg !3390
  switch i32 %call, label %monotonic [
    i32 3, label %release
    i32 5, label %seqcst
  ], !dbg !3390

monotonic:                                        ; preds = %entry
  %2 = load i8, ptr %val.addr, align 1, !dbg !3390
  store atomic i8 %2, ptr %repr monotonic, align 1, !dbg !3390
  br label %atomic.continue, !dbg !3390

release:                                          ; preds = %entry
  %3 = load i8, ptr %val.addr, align 1, !dbg !3390
  store atomic i8 %3, ptr %repr release, align 1, !dbg !3390
  br label %atomic.continue, !dbg !3390

seqcst:                                           ; preds = %entry
  %4 = load i8, ptr %val.addr, align 1, !dbg !3390
  store atomic i8 %4, ptr %repr seq_cst, align 1, !dbg !3390
  br label %atomic.continue, !dbg !3390

atomic.continue:                                  ; preds = %seqcst, %release, %monotonic
  ret void, !dbg !3390
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @mutex_owner_stats_update(ptr noundef %tsdn, ptr noundef %mutex) #5 !dbg !3391 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %mutex.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !3393, metadata !DIExpression()), !dbg !3399
  store ptr %mutex, ptr %mutex.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %mutex.addr, metadata !3394, metadata !DIExpression()), !dbg !3400
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #10, !dbg !3401
  tail call void @llvm.dbg.declare(metadata ptr %data, metadata !3395, metadata !DIExpression()), !dbg !3402
  %0 = load ptr, ptr %mutex.addr, align 8, !dbg !3403, !tbaa !1271
  %1 = getelementptr inbounds %struct.malloc_mutex_s, ptr %0, i32 0, i32 0, !dbg !3404
  %prof_data = getelementptr inbounds %struct.anon.1, ptr %1, i32 0, i32 0, !dbg !3404
  store ptr %prof_data, ptr %data, align 8, !dbg !3402, !tbaa !1271
  %2 = load ptr, ptr %data, align 8, !dbg !3405, !tbaa !1271
  %n_lock_ops = getelementptr inbounds %struct.mutex_prof_data_t, ptr %2, i32 0, i32 8, !dbg !3406
  %3 = load i64, ptr %n_lock_ops, align 8, !dbg !3407, !tbaa !3408
  %inc = add i64 %3, 1, !dbg !3407
  store i64 %inc, ptr %n_lock_ops, align 8, !dbg !3407, !tbaa !3408
  %4 = load ptr, ptr %data, align 8, !dbg !3410, !tbaa !1271
  %prev_owner = getelementptr inbounds %struct.mutex_prof_data_t, ptr %4, i32 0, i32 7, !dbg !3412
  %5 = load ptr, ptr %prev_owner, align 8, !dbg !3412, !tbaa !3413
  %6 = load ptr, ptr %tsdn.addr, align 8, !dbg !3414, !tbaa !1271
  %cmp = icmp ne ptr %5, %6, !dbg !3415
  br i1 %cmp, label %if.then, label %if.end, !dbg !3416

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %tsdn.addr, align 8, !dbg !3417, !tbaa !1271
  %8 = load ptr, ptr %data, align 8, !dbg !3419, !tbaa !1271
  %prev_owner1 = getelementptr inbounds %struct.mutex_prof_data_t, ptr %8, i32 0, i32 7, !dbg !3420
  store ptr %7, ptr %prev_owner1, align 8, !dbg !3421, !tbaa !3413
  %9 = load ptr, ptr %data, align 8, !dbg !3422, !tbaa !1271
  %n_owner_switches = getelementptr inbounds %struct.mutex_prof_data_t, ptr %9, i32 0, i32 6, !dbg !3423
  %10 = load i64, ptr %n_owner_switches, align 8, !dbg !3424, !tbaa !3425
  %inc2 = add i64 %10, 1, !dbg !3424
  store i64 %inc2, ptr %n_owner_switches, align 8, !dbg !3424, !tbaa !3425
  br label %if.end, !dbg !3426

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #10, !dbg !3427
  ret void, !dbg !3428
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @witness_lock(ptr noundef %witness_tsdn, ptr noundef %witness) #5 !dbg !3429 {
entry:
  %witness_tsdn.addr = alloca ptr, align 8
  %witness.addr = alloca ptr, align 8
  %witness_tsd = alloca ptr, align 8
  %witnesses = alloca ptr, align 8
  %w = alloca ptr, align 8
  store ptr %witness_tsdn, ptr %witness_tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %witness_tsdn.addr, metadata !3433, metadata !DIExpression()), !dbg !3438
  store ptr %witness, ptr %witness.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %witness.addr, metadata !3434, metadata !DIExpression()), !dbg !3439
  call void @llvm.lifetime.start.p0(i64 8, ptr %witness_tsd) #10, !dbg !3440
  tail call void @llvm.dbg.declare(metadata ptr %witness_tsd, metadata !3435, metadata !DIExpression()), !dbg !3441
  call void @llvm.lifetime.start.p0(i64 8, ptr %witnesses) #10, !dbg !3442
  tail call void @llvm.dbg.declare(metadata ptr %witnesses, metadata !3436, metadata !DIExpression()), !dbg !3443
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #10, !dbg !3444
  tail call void @llvm.dbg.declare(metadata ptr %w, metadata !3437, metadata !DIExpression()), !dbg !3445
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #10, !dbg !3446
  call void @llvm.lifetime.end.p0(i64 8, ptr %witnesses) #10, !dbg !3446
  call void @llvm.lifetime.end.p0(i64 8, ptr %witness_tsd) #10, !dbg !3446
  ret void, !dbg !3446
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_witness_tsdp_get(ptr noundef %tsd) #2 !dbg !3447 {
entry:
  %tsd.addr = alloca ptr, align 8
  %state = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3451, metadata !DIExpression()), !dbg !3453
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #10, !dbg !3453
  tail call void @llvm.dbg.declare(metadata ptr %state, metadata !3452, metadata !DIExpression()), !dbg !3453
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3453, !tbaa !1271
  %call = call zeroext i8 @tsd_state_get(ptr noundef %0), !dbg !3453
  store i8 %call, ptr %state, align 1, !dbg !3453, !tbaa !1582
  br label %do.body, !dbg !3453

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3454

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3454

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !3453, !tbaa !1271
  %call1 = call ptr @tsd_witness_tsdp_get_unsafe(ptr noundef %1), !dbg !3453
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #10, !dbg !3453
  ret ptr %call1, !dbg !3453
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_witness_tsdp_get_unsafe(ptr noundef %tsd) #2 !dbg !3456 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3458, metadata !DIExpression()), !dbg !3459
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3459, !tbaa !1271
  %cant_access_tsd_items_directly_use_a_getter_or_setter_witness_tsd = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 35, !dbg !3459
  ret ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_witness_tsd, !dbg !3459
}

; Function Attrs: nounwind
declare !dbg !3460 i32 @pthread_mutex_trylock(ptr noundef) #8

; Function Attrs: inlinehint nounwind uwtable
define internal void @witness_unlock(ptr noundef %witness_tsdn, ptr noundef %witness) #5 !dbg !3465 {
entry:
  %witness_tsdn.addr = alloca ptr, align 8
  %witness.addr = alloca ptr, align 8
  %witness_tsd = alloca ptr, align 8
  %witnesses = alloca ptr, align 8
  store ptr %witness_tsdn, ptr %witness_tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %witness_tsdn.addr, metadata !3467, metadata !DIExpression()), !dbg !3471
  store ptr %witness, ptr %witness.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %witness.addr, metadata !3468, metadata !DIExpression()), !dbg !3472
  call void @llvm.lifetime.start.p0(i64 8, ptr %witness_tsd) #10, !dbg !3473
  tail call void @llvm.dbg.declare(metadata ptr %witness_tsd, metadata !3469, metadata !DIExpression()), !dbg !3474
  call void @llvm.lifetime.start.p0(i64 8, ptr %witnesses) #10, !dbg !3475
  tail call void @llvm.dbg.declare(metadata ptr %witnesses, metadata !3470, metadata !DIExpression()), !dbg !3476
  call void @llvm.lifetime.end.p0(i64 8, ptr %witnesses) #10, !dbg !3477
  call void @llvm.lifetime.end.p0(i64 8, ptr %witness_tsd) #10, !dbg !3477
  ret void, !dbg !3477
}

; Function Attrs: nounwind
declare !dbg !3478 i32 @pthread_mutex_unlock(ptr noundef) #8

; Function Attrs: alwaysinline nounwind uwtable
define internal void @arena_decay_ticks(ptr noundef %tsdn, ptr noundef %arena, i32 noundef %nticks) #2 !dbg !3479 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %arena.addr = alloca ptr, align 8
  %nticks.addr = alloca i32, align 4
  %tsd = alloca ptr, align 8
  %decay_ticker = alloca ptr, align 8
  %prng_state = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !3483, metadata !DIExpression()), !dbg !3491
  store ptr %arena, ptr %arena.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %arena.addr, metadata !3484, metadata !DIExpression()), !dbg !3492
  store i32 %nticks, ptr %nticks.addr, align 4, !tbaa !1534
  tail call void @llvm.dbg.declare(metadata ptr %nticks.addr, metadata !3485, metadata !DIExpression()), !dbg !3493
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !3494, !tbaa !1271
  %call = call zeroext i1 @tsdn_null(ptr noundef %0), !dbg !3494
  %lnot = xor i1 %call, true, !dbg !3494
  %lnot1 = xor i1 %lnot, true, !dbg !3494
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3494
  %conv = sext i32 %lnot.ext to i64, !dbg !3494
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3494
  %tobool = icmp ne i64 %expval, 0, !dbg !3494
  br i1 %tobool, label %if.then, label %if.end, !dbg !3496

if.then:                                          ; preds = %entry
  br label %return, !dbg !3497

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsd) #10, !dbg !3499
  tail call void @llvm.dbg.declare(metadata ptr %tsd, metadata !3486, metadata !DIExpression()), !dbg !3500
  %1 = load ptr, ptr %tsdn.addr, align 8, !dbg !3501, !tbaa !1271
  %call2 = call ptr @tsdn_tsd(ptr noundef %1), !dbg !3502
  store ptr %call2, ptr %tsd, align 8, !dbg !3500, !tbaa !1271
  call void @llvm.lifetime.start.p0(i64 8, ptr %decay_ticker) #10, !dbg !3503
  tail call void @llvm.dbg.declare(metadata ptr %decay_ticker, metadata !3487, metadata !DIExpression()), !dbg !3504
  %2 = load ptr, ptr %tsd, align 8, !dbg !3505, !tbaa !1271
  %call3 = call ptr @tsd_arena_decay_tickerp_get(ptr noundef %2), !dbg !3506
  store ptr %call3, ptr %decay_ticker, align 8, !dbg !3504, !tbaa !1271
  call void @llvm.lifetime.start.p0(i64 8, ptr %prng_state) #10, !dbg !3507
  tail call void @llvm.dbg.declare(metadata ptr %prng_state, metadata !3489, metadata !DIExpression()), !dbg !3508
  %3 = load ptr, ptr %tsd, align 8, !dbg !3509, !tbaa !1271
  %call4 = call ptr @tsd_prng_statep_get(ptr noundef %3), !dbg !3510
  store ptr %call4, ptr %prng_state, align 8, !dbg !3508, !tbaa !1271
  %4 = load ptr, ptr %decay_ticker, align 8, !dbg !3511, !tbaa !1271
  %5 = load ptr, ptr %prng_state, align 8, !dbg !3511, !tbaa !1271
  %6 = load i32, ptr %nticks.addr, align 4, !dbg !3511, !tbaa !1534
  %call5 = call zeroext i1 @ticker_geom_ticks(ptr noundef %4, ptr noundef %5, i32 noundef %6), !dbg !3511
  %lnot6 = xor i1 %call5, true, !dbg !3511
  %lnot8 = xor i1 %lnot6, true, !dbg !3511
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !3511
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !3511
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 0), !dbg !3511
  %tobool12 = icmp ne i64 %expval11, 0, !dbg !3511
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !3513

if.then13:                                        ; preds = %if.end
  %7 = load ptr, ptr %tsdn.addr, align 8, !dbg !3514, !tbaa !1271
  %8 = load ptr, ptr %arena.addr, align 8, !dbg !3516, !tbaa !1271
  call void @arena_decay(ptr noundef %7, ptr noundef %8, i1 noundef zeroext false, i1 noundef zeroext false), !dbg !3517
  br label %if.end14, !dbg !3518

if.end14:                                         ; preds = %if.then13, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %prng_state) #10, !dbg !3519
  call void @llvm.lifetime.end.p0(i64 8, ptr %decay_ticker) #10, !dbg !3519
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsd) #10, !dbg !3519
  br label %return, !dbg !3519

return:                                           ; preds = %if.end14, %if.then
  ret void, !dbg !3519
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_arena_decay_tickerp_get(ptr noundef %tsd) #2 !dbg !3520 {
entry:
  %tsd.addr = alloca ptr, align 8
  %state = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3524, metadata !DIExpression()), !dbg !3526
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #10, !dbg !3526
  tail call void @llvm.dbg.declare(metadata ptr %state, metadata !3525, metadata !DIExpression()), !dbg !3526
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3526, !tbaa !1271
  %call = call zeroext i8 @tsd_state_get(ptr noundef %0), !dbg !3526
  store i8 %call, ptr %state, align 1, !dbg !3526, !tbaa !1582
  br label %do.body, !dbg !3526

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3527

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3527

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !3526, !tbaa !1271
  %call1 = call ptr @tsd_arena_decay_tickerp_get_unsafe(ptr noundef %1), !dbg !3526
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #10, !dbg !3526
  ret ptr %call1, !dbg !3526
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_prng_statep_get(ptr noundef %tsd) #2 !dbg !3529 {
entry:
  %tsd.addr = alloca ptr, align 8
  %state = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3533, metadata !DIExpression()), !dbg !3535
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #10, !dbg !3535
  tail call void @llvm.dbg.declare(metadata ptr %state, metadata !3534, metadata !DIExpression()), !dbg !3535
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3535, !tbaa !1271
  %call = call zeroext i8 @tsd_state_get(ptr noundef %0), !dbg !3535
  store i8 %call, ptr %state, align 1, !dbg !3535, !tbaa !1582
  br label %do.body, !dbg !3535

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3536

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3536

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !3535, !tbaa !1271
  %call1 = call ptr @tsd_prng_statep_get_unsafe(ptr noundef %1), !dbg !3535
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #10, !dbg !3535
  ret ptr %call1, !dbg !3535
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @ticker_geom_ticks(ptr noundef %ticker, ptr noundef %prng_state, i32 noundef %nticks) #5 !dbg !3538 {
entry:
  %retval = alloca i1, align 1
  %ticker.addr = alloca ptr, align 8
  %prng_state.addr = alloca ptr, align 8
  %nticks.addr = alloca i32, align 4
  store ptr %ticker, ptr %ticker.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %ticker.addr, metadata !3542, metadata !DIExpression()), !dbg !3545
  store ptr %prng_state, ptr %prng_state.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %prng_state.addr, metadata !3543, metadata !DIExpression()), !dbg !3546
  store i32 %nticks, ptr %nticks.addr, align 4, !tbaa !1534
  tail call void @llvm.dbg.declare(metadata ptr %nticks.addr, metadata !3544, metadata !DIExpression()), !dbg !3547
  %0 = load i32, ptr %nticks.addr, align 4, !dbg !3548, !tbaa !1534
  %1 = load ptr, ptr %ticker.addr, align 8, !dbg !3549, !tbaa !1271
  %tick = getelementptr inbounds %struct.ticker_geom_s, ptr %1, i32 0, i32 0, !dbg !3550
  %2 = load i32, ptr %tick, align 4, !dbg !3551, !tbaa !3552
  %sub = sub nsw i32 %2, %0, !dbg !3551
  store i32 %sub, ptr %tick, align 4, !dbg !3551, !tbaa !3552
  %3 = load ptr, ptr %ticker.addr, align 8, !dbg !3554, !tbaa !1271
  %tick1 = getelementptr inbounds %struct.ticker_geom_s, ptr %3, i32 0, i32 0, !dbg !3554
  %4 = load i32, ptr %tick1, align 4, !dbg !3554, !tbaa !3552
  %cmp = icmp slt i32 %4, 0, !dbg !3554
  %lnot = xor i1 %cmp, true, !dbg !3554
  %lnot2 = xor i1 %lnot, true, !dbg !3554
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3554
  %conv = sext i32 %lnot.ext to i64, !dbg !3554
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3554
  %tobool = icmp ne i64 %expval, 0, !dbg !3554
  br i1 %tobool, label %if.then, label %if.end, !dbg !3556

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ticker.addr, align 8, !dbg !3557, !tbaa !1271
  %6 = load ptr, ptr %prng_state.addr, align 8, !dbg !3559, !tbaa !1271
  %call = call zeroext i1 @ticker_geom_fixup(ptr noundef %5, ptr noundef %6), !dbg !3560
  store i1 %call, ptr %retval, align 1, !dbg !3561
  br label %return, !dbg !3561

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !3562
  br label %return, !dbg !3562

return:                                           ; preds = %if.end, %if.then
  %7 = load i1, ptr %retval, align 1, !dbg !3563
  ret i1 %7, !dbg !3563
}

declare !dbg !3564 void @arena_decay(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #4

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_arena_decay_tickerp_get_unsafe(ptr noundef %tsd) #2 !dbg !3567 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3569, metadata !DIExpression()), !dbg !3570
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3570, !tbaa !1271
  %cant_access_tsd_items_directly_use_a_getter_or_setter_arena_decay_ticker = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 20, !dbg !3570
  ret ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_arena_decay_ticker, !dbg !3570
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_prng_statep_get_unsafe(ptr noundef %tsd) #2 !dbg !3571 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3573, metadata !DIExpression()), !dbg !3574
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3574, !tbaa !1271
  %cant_access_tsd_items_directly_use_a_getter_or_setter_prng_state = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 15, !dbg !3574
  ret ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_prng_state, !dbg !3574
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @ticker_geom_fixup(ptr noundef %ticker, ptr noundef %prng_state) #0 !dbg !3575 {
entry:
  %ticker.addr = alloca ptr, align 8
  %prng_state.addr = alloca ptr, align 8
  %idx = alloca i64, align 8
  store ptr %ticker, ptr %ticker.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %ticker.addr, metadata !3579, metadata !DIExpression()), !dbg !3582
  store ptr %prng_state, ptr %prng_state.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %prng_state.addr, metadata !3580, metadata !DIExpression()), !dbg !3583
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx) #10, !dbg !3584
  tail call void @llvm.dbg.declare(metadata ptr %idx, metadata !3581, metadata !DIExpression()), !dbg !3585
  %0 = load ptr, ptr %prng_state.addr, align 8, !dbg !3586, !tbaa !1271
  %call = call i64 @prng_lg_range_u64(ptr noundef %0, i32 noundef 6), !dbg !3587
  store i64 %call, ptr %idx, align 8, !dbg !3585, !tbaa !1277
  %1 = load ptr, ptr %ticker.addr, align 8, !dbg !3588, !tbaa !1271
  %nticks = getelementptr inbounds %struct.ticker_geom_s, ptr %1, i32 0, i32 1, !dbg !3589
  %2 = load i32, ptr %nticks, align 4, !dbg !3589, !tbaa !3590
  %conv = sext i32 %2 to i64, !dbg !3591
  %3 = load i64, ptr %idx, align 8, !dbg !3592, !tbaa !1277
  %arrayidx = getelementptr inbounds [64 x i8], ptr @ticker_geom_table, i64 0, i64 %3, !dbg !3593
  %4 = load i8, ptr %arrayidx, align 1, !dbg !3593, !tbaa !1582
  %conv1 = zext i8 %4 to i64, !dbg !3594
  %mul = mul i64 %conv, %conv1, !dbg !3595
  %div = udiv i64 %mul, 61, !dbg !3596
  %conv2 = trunc i64 %div to i32, !dbg !3597
  %5 = load ptr, ptr %ticker.addr, align 8, !dbg !3598, !tbaa !1271
  %tick = getelementptr inbounds %struct.ticker_geom_s, ptr %5, i32 0, i32 0, !dbg !3599
  store i32 %conv2, ptr %tick, align 4, !dbg !3600, !tbaa !3552
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx) #10, !dbg !3601
  ret i1 true, !dbg !3602
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @prng_lg_range_u64(ptr noundef %state, i32 noundef %lg_range) #2 !dbg !3603 {
entry:
  %state.addr = alloca ptr, align 8
  %lg_range.addr = alloca i32, align 4
  %ret = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3608, metadata !DIExpression()), !dbg !3611
  store i32 %lg_range, ptr %lg_range.addr, align 4, !tbaa !1534
  tail call void @llvm.dbg.declare(metadata ptr %lg_range.addr, metadata !3609, metadata !DIExpression()), !dbg !3612
  br label %do.body, !dbg !3613

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3614

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !3616

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !3617

do.end2:                                          ; preds = %do.body1
  %0 = load ptr, ptr %state.addr, align 8, !dbg !3619, !tbaa !1271
  %1 = load i64, ptr %0, align 8, !dbg !3620, !tbaa !1277
  %call = call i64 @prng_state_next_u64(i64 noundef %1), !dbg !3621
  %2 = load ptr, ptr %state.addr, align 8, !dbg !3622, !tbaa !1271
  store i64 %call, ptr %2, align 8, !dbg !3623, !tbaa !1277
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !3624
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !3610, metadata !DIExpression()), !dbg !3625
  %3 = load ptr, ptr %state.addr, align 8, !dbg !3626, !tbaa !1271
  %4 = load i64, ptr %3, align 8, !dbg !3627, !tbaa !1277
  %5 = load i32, ptr %lg_range.addr, align 4, !dbg !3628, !tbaa !1534
  %sub = sub i32 64, %5, !dbg !3629
  %sh_prom = zext i32 %sub to i64, !dbg !3630
  %shr = lshr i64 %4, %sh_prom, !dbg !3630
  store i64 %shr, ptr %ret, align 8, !dbg !3625, !tbaa !1277
  %6 = load i64, ptr %ret, align 8, !dbg !3631, !tbaa !1277
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !3632
  ret i64 %6, !dbg !3633
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @prng_state_next_u64(i64 noundef %state) #2 !dbg !3634 {
entry:
  %state.addr = alloca i64, align 8
  store i64 %state, ptr %state.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3636, metadata !DIExpression()), !dbg !3637
  %0 = load i64, ptr %state.addr, align 8, !dbg !3638, !tbaa !1277
  %mul = mul i64 %0, 6364136223846793005, !dbg !3639
  %add = add i64 %mul, 1442695040888963407, !dbg !3640
  ret i64 %add, !dbg !3641
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @sz_index2size(i32 noundef %index) #2 !dbg !3642 {
entry:
  %index.addr = alloca i32, align 4
  store i32 %index, ptr %index.addr, align 4, !tbaa !1534
  tail call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !3644, metadata !DIExpression()), !dbg !3645
  br label %do.body, !dbg !3646

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3647

do.end:                                           ; preds = %do.body
  %0 = load i32, ptr %index.addr, align 4, !dbg !3649, !tbaa !1534
  %call = call i64 @sz_index2size_lookup(i32 noundef %0), !dbg !3650
  ret i64 %call, !dbg !3651
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @edata_szind_get(ptr noundef %edata) #5 !dbg !3652 {
entry:
  %edata.addr = alloca ptr, align 8
  %szind = alloca i32, align 4
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !3656, metadata !DIExpression()), !dbg !3658
  call void @llvm.lifetime.start.p0(i64 4, ptr %szind) #10, !dbg !3659
  tail call void @llvm.dbg.declare(metadata ptr %szind, metadata !3657, metadata !DIExpression()), !dbg !3660
  %0 = load ptr, ptr %edata.addr, align 8, !dbg !3661, !tbaa !1271
  %call = call i32 @edata_szind_get_maybe_invalid(ptr noundef %0), !dbg !3662
  store i32 %call, ptr %szind, align 4, !dbg !3660, !tbaa !1534
  br label %do.body, !dbg !3663

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3664

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3664

do.end:                                           ; preds = %do.cond
  %1 = load i32, ptr %szind, align 4, !dbg !3666, !tbaa !1534
  call void @llvm.lifetime.end.p0(i64 4, ptr %szind) #10, !dbg !3667
  ret i32 %1, !dbg !3668
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @edata_szind_get_maybe_invalid(ptr noundef %edata) #5 !dbg !3669 {
entry:
  %edata.addr = alloca ptr, align 8
  %szind = alloca i32, align 4
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !3671, metadata !DIExpression()), !dbg !3673
  call void @llvm.lifetime.start.p0(i64 4, ptr %szind) #10, !dbg !3674
  tail call void @llvm.dbg.declare(metadata ptr %szind, metadata !3672, metadata !DIExpression()), !dbg !3675
  %0 = load ptr, ptr %edata.addr, align 8, !dbg !3676, !tbaa !1271
  %e_bits = getelementptr inbounds %struct.edata_s, ptr %0, i32 0, i32 0, !dbg !3677
  %1 = load i64, ptr %e_bits, align 8, !dbg !3677, !tbaa !3678
  %and = and i64 %1, 267386880, !dbg !3679
  %shr = lshr i64 %and, 20, !dbg !3680
  %conv = trunc i64 %shr to i32, !dbg !3681
  store i32 %conv, ptr %szind, align 4, !dbg !3675, !tbaa !1534
  br label %do.body, !dbg !3682

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3683

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3683

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %szind, align 4, !dbg !3685, !tbaa !1534
  call void @llvm.lifetime.end.p0(i64 4, ptr %szind) #10, !dbg !3686
  ret i32 %2, !dbg !3687
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @edata_size_get(ptr noundef %edata) #5 !dbg !3688 {
entry:
  %edata.addr = alloca ptr, align 8
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !3690, metadata !DIExpression()), !dbg !3691
  %0 = load ptr, ptr %edata.addr, align 8, !dbg !3692, !tbaa !1271
  %1 = getelementptr inbounds %struct.edata_s, ptr %0, i32 0, i32 2, !dbg !3693
  %2 = load i64, ptr %1, align 8, !dbg !3693, !tbaa !1582
  %and = and i64 %2, -4096, !dbg !3694
  ret i64 %and, !dbg !3695
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @sz_size2index(i64 noundef %size) #2 !dbg !3696 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3698, metadata !DIExpression()), !dbg !3699
  %0 = load i64, ptr %size.addr, align 8, !dbg !3700, !tbaa !1277
  %cmp = icmp ule i64 %0, 4096, !dbg !3700
  %lnot = xor i1 %cmp, true, !dbg !3700
  %lnot1 = xor i1 %lnot, true, !dbg !3700
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3700
  %conv = sext i32 %lnot.ext to i64, !dbg !3700
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3700
  %tobool = icmp ne i64 %expval, 0, !dbg !3700
  br i1 %tobool, label %if.then, label %if.end, !dbg !3702

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3703, !tbaa !1277
  %call = call i32 @sz_size2index_lookup(i64 noundef %1), !dbg !3705
  store i32 %call, ptr %retval, align 4, !dbg !3706
  br label %return, !dbg !3706

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3707, !tbaa !1277
  %call2 = call i32 @sz_size2index_compute(i64 noundef %2), !dbg !3708
  store i32 %call2, ptr %retval, align 4, !dbg !3709
  br label %return, !dbg !3709

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !3710
  ret i32 %3, !dbg !3710
}

declare !dbg !3711 zeroext i1 @pa_expand(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) #4

declare !dbg !3715 void @arena_handle_deferred_work(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

declare !dbg !3716 void @arena_extent_ralloc_large_expand(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sz_size2index_compute(i64 noundef %size) #5 !dbg !3719 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %lg_tmin = alloca i32, align 4
  %lg_ceil = alloca i32, align 4
  %x = alloca i32, align 4
  %shift = alloca i32, align 4
  %grp = alloca i32, align 4
  %lg_delta = alloca i32, align 4
  %delta_inverse_mask = alloca i64, align 8
  %mod = alloca i32, align 4
  %index = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3721, metadata !DIExpression()), !dbg !3734
  %0 = load i64, ptr %size.addr, align 8, !dbg !3735, !tbaa !1277
  %cmp = icmp ugt i64 %0, 8070450532247928832, !dbg !3735
  %lnot = xor i1 %cmp, true, !dbg !3735
  %lnot1 = xor i1 %lnot, true, !dbg !3735
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3735
  %conv = sext i32 %lnot.ext to i64, !dbg !3735
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3735
  %tobool = icmp ne i64 %expval, 0, !dbg !3735
  br i1 %tobool, label %if.then, label %if.end, !dbg !3737

if.then:                                          ; preds = %entry
  store i32 232, ptr %retval, align 4, !dbg !3738
  br label %return, !dbg !3738

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3740, !tbaa !1277
  %cmp2 = icmp eq i64 %1, 0, !dbg !3742
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !3743

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !3744
  br label %return, !dbg !3744

if.end5:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3746, !tbaa !1277
  %cmp6 = icmp ule i64 %2, 8, !dbg !3747
  br i1 %cmp6, label %if.then8, label %if.end12, !dbg !3748

if.then8:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr %lg_tmin) #10, !dbg !3749
  tail call void @llvm.dbg.declare(metadata ptr %lg_tmin, metadata !3722, metadata !DIExpression()), !dbg !3750
  store i32 3, ptr %lg_tmin, align 4, !dbg !3750, !tbaa !1534
  call void @llvm.lifetime.start.p0(i64 4, ptr %lg_ceil) #10, !dbg !3751
  tail call void @llvm.dbg.declare(metadata ptr %lg_ceil, metadata !3725, metadata !DIExpression()), !dbg !3752
  %3 = load i64, ptr %size.addr, align 8, !dbg !3753, !tbaa !1277
  %call = call i64 @pow2_ceil_zu(i64 noundef %3), !dbg !3754
  %call9 = call i32 @lg_floor(i64 noundef %call), !dbg !3755
  store i32 %call9, ptr %lg_ceil, align 4, !dbg !3752, !tbaa !1534
  %4 = load i32, ptr %lg_ceil, align 4, !dbg !3756, !tbaa !1534
  %5 = load i32, ptr %lg_tmin, align 4, !dbg !3757, !tbaa !1534
  %cmp10 = icmp ult i32 %4, %5, !dbg !3758
  br i1 %cmp10, label %cond.true, label %cond.false, !dbg !3756

cond.true:                                        ; preds = %if.then8
  br label %cond.end, !dbg !3756

cond.false:                                       ; preds = %if.then8
  %6 = load i32, ptr %lg_ceil, align 4, !dbg !3759, !tbaa !1534
  %7 = load i32, ptr %lg_tmin, align 4, !dbg !3760, !tbaa !1534
  %sub = sub i32 %6, %7, !dbg !3761
  br label %cond.end, !dbg !3756

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub, %cond.false ], !dbg !3756
  store i32 %cond, ptr %retval, align 4, !dbg !3762
  call void @llvm.lifetime.end.p0(i64 4, ptr %lg_ceil) #10, !dbg !3763
  call void @llvm.lifetime.end.p0(i64 4, ptr %lg_tmin) #10, !dbg !3763
  br label %return

if.end12:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #10, !dbg !3764
  tail call void @llvm.dbg.declare(metadata ptr %x, metadata !3726, metadata !DIExpression()), !dbg !3765
  %8 = load i64, ptr %size.addr, align 8, !dbg !3766, !tbaa !1277
  %shl = shl i64 %8, 1, !dbg !3767
  %sub13 = sub i64 %shl, 1, !dbg !3768
  %call14 = call i32 @lg_floor(i64 noundef %sub13), !dbg !3769
  store i32 %call14, ptr %x, align 4, !dbg !3765, !tbaa !1534
  call void @llvm.lifetime.start.p0(i64 4, ptr %shift) #10, !dbg !3770
  tail call void @llvm.dbg.declare(metadata ptr %shift, metadata !3728, metadata !DIExpression()), !dbg !3771
  %9 = load i32, ptr %x, align 4, !dbg !3772, !tbaa !1534
  %cmp15 = icmp ult i32 %9, 6, !dbg !3773
  br i1 %cmp15, label %cond.true17, label %cond.false18, !dbg !3774

cond.true17:                                      ; preds = %if.end12
  br label %cond.end20, !dbg !3774

cond.false18:                                     ; preds = %if.end12
  %10 = load i32, ptr %x, align 4, !dbg !3775, !tbaa !1534
  %sub19 = sub i32 %10, 6, !dbg !3776
  br label %cond.end20, !dbg !3774

cond.end20:                                       ; preds = %cond.false18, %cond.true17
  %cond21 = phi i32 [ 0, %cond.true17 ], [ %sub19, %cond.false18 ], !dbg !3774
  store i32 %cond21, ptr %shift, align 4, !dbg !3771, !tbaa !1534
  call void @llvm.lifetime.start.p0(i64 4, ptr %grp) #10, !dbg !3777
  tail call void @llvm.dbg.declare(metadata ptr %grp, metadata !3729, metadata !DIExpression()), !dbg !3778
  %11 = load i32, ptr %shift, align 4, !dbg !3779, !tbaa !1534
  %shl22 = shl i32 %11, 2, !dbg !3780
  store i32 %shl22, ptr %grp, align 4, !dbg !3778, !tbaa !1534
  call void @llvm.lifetime.start.p0(i64 4, ptr %lg_delta) #10, !dbg !3781
  tail call void @llvm.dbg.declare(metadata ptr %lg_delta, metadata !3730, metadata !DIExpression()), !dbg !3782
  %12 = load i32, ptr %x, align 4, !dbg !3783, !tbaa !1534
  %cmp23 = icmp ult i32 %12, 7, !dbg !3784
  br i1 %cmp23, label %cond.true25, label %cond.false26, !dbg !3785

cond.true25:                                      ; preds = %cond.end20
  br label %cond.end29, !dbg !3785

cond.false26:                                     ; preds = %cond.end20
  %13 = load i32, ptr %x, align 4, !dbg !3786, !tbaa !1534
  %sub27 = sub i32 %13, 2, !dbg !3787
  %sub28 = sub i32 %sub27, 1, !dbg !3788
  br label %cond.end29, !dbg !3785

cond.end29:                                       ; preds = %cond.false26, %cond.true25
  %cond30 = phi i32 [ 4, %cond.true25 ], [ %sub28, %cond.false26 ], !dbg !3785
  store i32 %cond30, ptr %lg_delta, align 4, !dbg !3782, !tbaa !1534
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta_inverse_mask) #10, !dbg !3789
  tail call void @llvm.dbg.declare(metadata ptr %delta_inverse_mask, metadata !3731, metadata !DIExpression()), !dbg !3790
  %14 = load i32, ptr %lg_delta, align 4, !dbg !3791, !tbaa !1534
  %sh_prom = zext i32 %14 to i64, !dbg !3792
  %shl31 = shl i64 -1, %sh_prom, !dbg !3792
  store i64 %shl31, ptr %delta_inverse_mask, align 8, !dbg !3790, !tbaa !1277
  call void @llvm.lifetime.start.p0(i64 4, ptr %mod) #10, !dbg !3793
  tail call void @llvm.dbg.declare(metadata ptr %mod, metadata !3732, metadata !DIExpression()), !dbg !3794
  %15 = load i64, ptr %size.addr, align 8, !dbg !3795, !tbaa !1277
  %sub32 = sub i64 %15, 1, !dbg !3796
  %16 = load i64, ptr %delta_inverse_mask, align 8, !dbg !3797, !tbaa !1277
  %and = and i64 %sub32, %16, !dbg !3798
  %17 = load i32, ptr %lg_delta, align 4, !dbg !3799, !tbaa !1534
  %sh_prom33 = zext i32 %17 to i64, !dbg !3800
  %shr = lshr i64 %and, %sh_prom33, !dbg !3800
  %and34 = and i64 %shr, 3, !dbg !3801
  %conv35 = trunc i64 %and34 to i32, !dbg !3802
  store i32 %conv35, ptr %mod, align 4, !dbg !3794, !tbaa !1534
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #10, !dbg !3803
  tail call void @llvm.dbg.declare(metadata ptr %index, metadata !3733, metadata !DIExpression()), !dbg !3804
  %18 = load i32, ptr %grp, align 4, !dbg !3805, !tbaa !1534
  %add = add i32 1, %18, !dbg !3806
  %19 = load i32, ptr %mod, align 4, !dbg !3807, !tbaa !1534
  %add36 = add i32 %add, %19, !dbg !3808
  store i32 %add36, ptr %index, align 4, !dbg !3804, !tbaa !1534
  %20 = load i32, ptr %index, align 4, !dbg !3809, !tbaa !1534
  store i32 %20, ptr %retval, align 4, !dbg !3810
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #10, !dbg !3811
  call void @llvm.lifetime.end.p0(i64 4, ptr %mod) #10, !dbg !3811
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta_inverse_mask) #10, !dbg !3811
  call void @llvm.lifetime.end.p0(i64 4, ptr %lg_delta) #10, !dbg !3811
  call void @llvm.lifetime.end.p0(i64 4, ptr %grp) #10, !dbg !3811
  call void @llvm.lifetime.end.p0(i64 4, ptr %shift) #10, !dbg !3811
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #10, !dbg !3811
  br label %return

return:                                           ; preds = %cond.end29, %cond.end, %if.then4, %if.then
  %21 = load i32, ptr %retval, align 4, !dbg !3812
  ret i32 %21, !dbg !3812
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @edata_arena_ind_get(ptr noundef %edata) #5 !dbg !3813 {
entry:
  %edata.addr = alloca ptr, align 8
  %arena_ind = alloca i32, align 4
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !3817, metadata !DIExpression()), !dbg !3819
  call void @llvm.lifetime.start.p0(i64 4, ptr %arena_ind) #10, !dbg !3820
  tail call void @llvm.dbg.declare(metadata ptr %arena_ind, metadata !3818, metadata !DIExpression()), !dbg !3821
  %0 = load ptr, ptr %edata.addr, align 8, !dbg !3822, !tbaa !1271
  %e_bits = getelementptr inbounds %struct.edata_s, ptr %0, i32 0, i32 0, !dbg !3823
  %1 = load i64, ptr %e_bits, align 8, !dbg !3823, !tbaa !3678
  %and = and i64 %1, 4095, !dbg !3824
  %shr = lshr i64 %and, 0, !dbg !3825
  %conv = trunc i64 %shr to i32, !dbg !3826
  store i32 %conv, ptr %arena_ind, align 4, !dbg !3821, !tbaa !1534
  br label %do.body, !dbg !3827

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3828

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3828

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %arena_ind, align 4, !dbg !3830, !tbaa !1534
  call void @llvm.lifetime.end.p0(i64 4, ptr %arena_ind) #10, !dbg !3831
  ret i32 %2, !dbg !3832
}

declare !dbg !3833 ptr @arena_get_ehooks(ptr noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @ehooks_split_will_fail(ptr noundef %ehooks) #5 !dbg !3836 {
entry:
  %ehooks.addr = alloca ptr, align 8
  store ptr %ehooks, ptr %ehooks.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %ehooks.addr, metadata !3841, metadata !DIExpression()), !dbg !3842
  %0 = load ptr, ptr %ehooks.addr, align 8, !dbg !3843, !tbaa !1271
  %call = call ptr @ehooks_get_extent_hooks_ptr(ptr noundef %0), !dbg !3844
  %split = getelementptr inbounds %struct.extent_hooks_s, ptr %call, i32 0, i32 7, !dbg !3845
  %1 = load ptr, ptr %split, align 8, !dbg !3845, !tbaa !3846
  %cmp = icmp eq ptr %1, null, !dbg !3848
  ret i1 %cmp, !dbg !3849
}

declare !dbg !3850 zeroext i1 @pa_shrink(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) #4

declare !dbg !3853 void @arena_extent_ralloc_large_shrink(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ehooks_get_extent_hooks_ptr(ptr noundef %ehooks) #5 !dbg !3854 {
entry:
  %ehooks.addr = alloca ptr, align 8
  store ptr %ehooks, ptr %ehooks.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %ehooks.addr, metadata !3858, metadata !DIExpression()), !dbg !3859
  %0 = load ptr, ptr %ehooks.addr, align 8, !dbg !3860, !tbaa !1271
  %ptr = getelementptr inbounds %struct.ehooks_s, ptr %0, i32 0, i32 1, !dbg !3861
  %call = call ptr @atomic_load_p(ptr noundef %ptr, i32 noundef 1), !dbg !3862
  ret ptr %call, !dbg !3863
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsdn_rtree_ctx(ptr noundef %tsdn, ptr noundef %fallback) #2 !dbg !3864 {
entry:
  %retval = alloca ptr, align 8
  %tsdn.addr = alloca ptr, align 8
  %fallback.addr = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !3868, metadata !DIExpression()), !dbg !3870
  store ptr %fallback, ptr %fallback.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %fallback.addr, metadata !3869, metadata !DIExpression()), !dbg !3871
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !3872, !tbaa !1271
  %call = call zeroext i1 @tsdn_null(ptr noundef %0), !dbg !3872
  %lnot = xor i1 %call, true, !dbg !3872
  %lnot1 = xor i1 %lnot, true, !dbg !3872
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3872
  %conv = sext i32 %lnot.ext to i64, !dbg !3872
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3872
  %tobool = icmp ne i64 %expval, 0, !dbg !3872
  br i1 %tobool, label %if.then, label %if.end, !dbg !3874

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fallback.addr, align 8, !dbg !3875, !tbaa !1271
  call void @rtree_ctx_data_init(ptr noundef %1), !dbg !3877
  %2 = load ptr, ptr %fallback.addr, align 8, !dbg !3878, !tbaa !1271
  store ptr %2, ptr %retval, align 8, !dbg !3879
  br label %return, !dbg !3879

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %tsdn.addr, align 8, !dbg !3880, !tbaa !1271
  %call2 = call ptr @tsdn_tsd(ptr noundef %3), !dbg !3881
  %call3 = call ptr @tsd_rtree_ctx(ptr noundef %call2), !dbg !3882
  store ptr %call3, ptr %retval, align 8, !dbg !3883
  br label %return, !dbg !3883

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8, !dbg !3884
  ret ptr %4, !dbg !3884
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @rtree_read(ptr noalias sret(%struct.rtree_contents_s) align 8 %agg.result, ptr noundef %tsdn, ptr noundef %rtree, ptr noundef %rtree_ctx, i64 noundef %key) #5 !dbg !3885 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %rtree.addr = alloca ptr, align 8
  %rtree_ctx.addr = alloca ptr, align 8
  %key.addr = alloca i64, align 8
  %elm = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !3902, metadata !DIExpression()), !dbg !3907
  store ptr %rtree, ptr %rtree.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %rtree.addr, metadata !3903, metadata !DIExpression()), !dbg !3908
  store ptr %rtree_ctx, ptr %rtree_ctx.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %rtree_ctx.addr, metadata !3904, metadata !DIExpression()), !dbg !3909
  store i64 %key, ptr %key.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3905, metadata !DIExpression()), !dbg !3910
  call void @llvm.lifetime.start.p0(i64 8, ptr %elm) #10, !dbg !3911
  tail call void @llvm.dbg.declare(metadata ptr %elm, metadata !3906, metadata !DIExpression()), !dbg !3912
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !3913, !tbaa !1271
  %1 = load ptr, ptr %rtree.addr, align 8, !dbg !3914, !tbaa !1271
  %2 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !3915, !tbaa !1271
  %3 = load i64, ptr %key.addr, align 8, !dbg !3916, !tbaa !1277
  %call = call ptr @rtree_leaf_elm_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false), !dbg !3917
  store ptr %call, ptr %elm, align 8, !dbg !3912, !tbaa !1271
  br label %do.body, !dbg !3918

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3919

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3919

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %tsdn.addr, align 8, !dbg !3921, !tbaa !1271
  %5 = load ptr, ptr %rtree.addr, align 8, !dbg !3922, !tbaa !1271
  %6 = load ptr, ptr %elm, align 8, !dbg !3923, !tbaa !1271
  call void @rtree_leaf_elm_read(ptr sret(%struct.rtree_contents_s) align 8 %agg.result, ptr noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext true), !dbg !3924
  call void @llvm.lifetime.end.p0(i64 8, ptr %elm) #10, !dbg !3925
  ret void, !dbg !3925
}

declare !dbg !3926 void @rtree_ctx_data_init(ptr noundef) #4

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_rtree_ctx(ptr noundef %tsd) #2 !dbg !3929 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3933, metadata !DIExpression()), !dbg !3934
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3935, !tbaa !1271
  %call = call ptr @tsd_rtree_ctxp_get(ptr noundef %0), !dbg !3936
  ret ptr %call, !dbg !3937
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_rtree_ctxp_get(ptr noundef %tsd) #2 !dbg !3938 {
entry:
  %tsd.addr = alloca ptr, align 8
  %state = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3940, metadata !DIExpression()), !dbg !3942
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #10, !dbg !3942
  tail call void @llvm.dbg.declare(metadata ptr %state, metadata !3941, metadata !DIExpression()), !dbg !3942
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3942, !tbaa !1271
  %call = call zeroext i8 @tsd_state_get(ptr noundef %0), !dbg !3942
  store i8 %call, ptr %state, align 1, !dbg !3942, !tbaa !1582
  br label %do.body, !dbg !3942

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !3943

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3943

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tsd.addr, align 8, !dbg !3942, !tbaa !1271
  %call1 = call ptr @tsd_rtree_ctxp_get_unsafe(ptr noundef %1), !dbg !3942
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #10, !dbg !3942
  ret ptr %call1, !dbg !3942
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @tsd_rtree_ctxp_get_unsafe(ptr noundef %tsd) #2 !dbg !3945 {
entry:
  %tsd.addr = alloca ptr, align 8
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !3947, metadata !DIExpression()), !dbg !3948
  %0 = load ptr, ptr %tsd.addr, align 8, !dbg !3948, !tbaa !1271
  %cant_access_tsd_items_directly_use_a_getter_or_setter_rtree_ctx = getelementptr inbounds %struct.tsd_s, ptr %0, i32 0, i32 28, !dbg !3948
  ret ptr %cant_access_tsd_items_directly_use_a_getter_or_setter_rtree_ctx, !dbg !3948
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @rtree_leaf_elm_lookup(ptr noundef %tsdn, ptr noundef %rtree, ptr noundef %rtree_ctx, i64 noundef %key, i1 noundef zeroext %dependent, i1 noundef zeroext %init_missing) #2 !dbg !3949 {
entry:
  %retval = alloca ptr, align 8
  %tsdn.addr = alloca ptr, align 8
  %rtree.addr = alloca ptr, align 8
  %rtree_ctx.addr = alloca ptr, align 8
  %key.addr = alloca i64, align 8
  %dependent.addr = alloca i8, align 1
  %init_missing.addr = alloca i8, align 1
  %slot = alloca i64, align 8
  %leafkey = alloca i64, align 8
  %leaf = alloca ptr, align 8
  %subkey = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %leaf30 = alloca ptr, align 8
  %subkey55 = alloca i64, align 8
  %i = alloca i32, align 4
  %leaf77 = alloca ptr, align 8
  %subkey140 = alloca i64, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !3953, metadata !DIExpression()), !dbg !3979
  store ptr %rtree, ptr %rtree.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %rtree.addr, metadata !3954, metadata !DIExpression()), !dbg !3980
  store ptr %rtree_ctx, ptr %rtree_ctx.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %rtree_ctx.addr, metadata !3955, metadata !DIExpression()), !dbg !3981
  store i64 %key, ptr %key.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3956, metadata !DIExpression()), !dbg !3982
  %frombool = zext i1 %dependent to i8
  store i8 %frombool, ptr %dependent.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %dependent.addr, metadata !3957, metadata !DIExpression()), !dbg !3983
  %frombool1 = zext i1 %init_missing to i8
  store i8 %frombool1, ptr %init_missing.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %init_missing.addr, metadata !3958, metadata !DIExpression()), !dbg !3984
  br label %do.body, !dbg !3985

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3986

do.end:                                           ; preds = %do.body
  br label %do.body2, !dbg !3988

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !3989

do.end3:                                          ; preds = %do.body2
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #10, !dbg !3991
  tail call void @llvm.dbg.declare(metadata ptr %slot, metadata !3959, metadata !DIExpression()), !dbg !3992
  %0 = load i64, ptr %key.addr, align 8, !dbg !3993, !tbaa !1277
  %call = call i64 @rtree_cache_direct_map(i64 noundef %0), !dbg !3994
  store i64 %call, ptr %slot, align 8, !dbg !3992, !tbaa !1277
  call void @llvm.lifetime.start.p0(i64 8, ptr %leafkey) #10, !dbg !3995
  tail call void @llvm.dbg.declare(metadata ptr %leafkey, metadata !3960, metadata !DIExpression()), !dbg !3996
  %1 = load i64, ptr %key.addr, align 8, !dbg !3997, !tbaa !1277
  %call4 = call i64 @rtree_leafkey(i64 noundef %1), !dbg !3998
  store i64 %call4, ptr %leafkey, align 8, !dbg !3996, !tbaa !1277
  br label %do.body5, !dbg !3999

do.body5:                                         ; preds = %do.end3
  br label %do.cond, !dbg !4000

do.cond:                                          ; preds = %do.body5
  br label %do.end6, !dbg !4000

do.end6:                                          ; preds = %do.cond
  %2 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4002, !tbaa !1271
  %cache = getelementptr inbounds %struct.rtree_ctx_s, ptr %2, i32 0, i32 0, !dbg !4002
  %3 = load i64, ptr %slot, align 8, !dbg !4002, !tbaa !1277
  %arrayidx = getelementptr inbounds [16 x %struct.rtree_ctx_cache_elm_s], ptr %cache, i64 0, i64 %3, !dbg !4002
  %leafkey7 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx, i32 0, i32 0, !dbg !4002
  %4 = load i64, ptr %leafkey7, align 8, !dbg !4002, !tbaa !4003
  %5 = load i64, ptr %leafkey, align 8, !dbg !4002, !tbaa !1277
  %cmp = icmp eq i64 %4, %5, !dbg !4002
  %lnot = xor i1 %cmp, true, !dbg !4002
  %lnot8 = xor i1 %lnot, true, !dbg !4002
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !4002
  %conv = sext i32 %lnot.ext to i64, !dbg !4002
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4002
  %tobool = icmp ne i64 %expval, 0, !dbg !4002
  br i1 %tobool, label %if.then, label %if.end, !dbg !4005

if.then:                                          ; preds = %do.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %leaf) #10, !dbg !4006
  tail call void @llvm.dbg.declare(metadata ptr %leaf, metadata !3961, metadata !DIExpression()), !dbg !4007
  %6 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4008, !tbaa !1271
  %cache9 = getelementptr inbounds %struct.rtree_ctx_s, ptr %6, i32 0, i32 0, !dbg !4009
  %7 = load i64, ptr %slot, align 8, !dbg !4010, !tbaa !1277
  %arrayidx10 = getelementptr inbounds [16 x %struct.rtree_ctx_cache_elm_s], ptr %cache9, i64 0, i64 %7, !dbg !4008
  %leaf11 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx10, i32 0, i32 1, !dbg !4011
  %8 = load ptr, ptr %leaf11, align 8, !dbg !4011, !tbaa !4012
  store ptr %8, ptr %leaf, align 8, !dbg !4007, !tbaa !1271
  br label %do.body12, !dbg !4013

do.body12:                                        ; preds = %if.then
  br label %do.cond13, !dbg !4014

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4014

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.start.p0(i64 8, ptr %subkey) #10, !dbg !4016
  tail call void @llvm.dbg.declare(metadata ptr %subkey, metadata !3964, metadata !DIExpression()), !dbg !4017
  %9 = load i64, ptr %key.addr, align 8, !dbg !4018, !tbaa !1277
  %call15 = call i64 @rtree_subkey(i64 noundef %9, i32 noundef 1), !dbg !4019
  store i64 %call15, ptr %subkey, align 8, !dbg !4017, !tbaa !1277
  %10 = load ptr, ptr %leaf, align 8, !dbg !4020, !tbaa !1271
  %11 = load i64, ptr %subkey, align 8, !dbg !4021, !tbaa !1277
  %arrayidx16 = getelementptr inbounds %struct.rtree_leaf_elm_s, ptr %10, i64 %11, !dbg !4020
  store ptr %arrayidx16, ptr %retval, align 8, !dbg !4022
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %subkey) #10, !dbg !4023
  call void @llvm.lifetime.end.p0(i64 8, ptr %leaf) #10, !dbg !4023
  br label %cleanup149

if.end:                                           ; preds = %do.end6
  br label %do.body17, !dbg !4024

do.body17:                                        ; preds = %if.end
  %12 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4025, !tbaa !1271
  %l2_cache = getelementptr inbounds %struct.rtree_ctx_s, ptr %12, i32 0, i32 1, !dbg !4025
  %arrayidx18 = getelementptr inbounds [8 x %struct.rtree_ctx_cache_elm_s], ptr %l2_cache, i64 0, i64 0, !dbg !4025
  %leafkey19 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx18, i32 0, i32 0, !dbg !4025
  %13 = load i64, ptr %leafkey19, align 8, !dbg !4025, !tbaa !4003
  %14 = load i64, ptr %leafkey, align 8, !dbg !4025, !tbaa !1277
  %cmp20 = icmp eq i64 %13, %14, !dbg !4025
  %lnot22 = xor i1 %cmp20, true, !dbg !4025
  %lnot24 = xor i1 %lnot22, true, !dbg !4025
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !4025
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !4025
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 1), !dbg !4025
  %tobool28 = icmp ne i64 %expval27, 0, !dbg !4025
  br i1 %tobool28, label %if.then29, label %if.end58, !dbg !4026

if.then29:                                        ; preds = %do.body17
  call void @llvm.lifetime.start.p0(i64 8, ptr %leaf30) #10, !dbg !4027
  tail call void @llvm.dbg.declare(metadata ptr %leaf30, metadata !3965, metadata !DIExpression()), !dbg !4027
  %15 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4027, !tbaa !1271
  %l2_cache31 = getelementptr inbounds %struct.rtree_ctx_s, ptr %15, i32 0, i32 1, !dbg !4027
  %arrayidx32 = getelementptr inbounds [8 x %struct.rtree_ctx_cache_elm_s], ptr %l2_cache31, i64 0, i64 0, !dbg !4027
  %leaf33 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx32, i32 0, i32 1, !dbg !4027
  %16 = load ptr, ptr %leaf33, align 8, !dbg !4027, !tbaa !4012
  store ptr %16, ptr %leaf30, align 8, !dbg !4027, !tbaa !1271
  br label %do.body34, !dbg !4027

do.body34:                                        ; preds = %if.then29
  br label %do.cond35, !dbg !4028

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !4028

do.end36:                                         ; preds = %do.cond35
  %17 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4030, !tbaa !1271
  %cache37 = getelementptr inbounds %struct.rtree_ctx_s, ptr %17, i32 0, i32 0, !dbg !4030
  %18 = load i64, ptr %slot, align 8, !dbg !4030, !tbaa !1277
  %arrayidx38 = getelementptr inbounds [16 x %struct.rtree_ctx_cache_elm_s], ptr %cache37, i64 0, i64 %18, !dbg !4030
  %leafkey39 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx38, i32 0, i32 0, !dbg !4030
  %19 = load i64, ptr %leafkey39, align 8, !dbg !4030, !tbaa !4003
  %20 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4030, !tbaa !1271
  %l2_cache40 = getelementptr inbounds %struct.rtree_ctx_s, ptr %20, i32 0, i32 1, !dbg !4030
  %arrayidx41 = getelementptr inbounds [8 x %struct.rtree_ctx_cache_elm_s], ptr %l2_cache40, i64 0, i64 0, !dbg !4030
  %leafkey42 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx41, i32 0, i32 0, !dbg !4030
  store i64 %19, ptr %leafkey42, align 8, !dbg !4030, !tbaa !4003
  %21 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4030, !tbaa !1271
  %cache43 = getelementptr inbounds %struct.rtree_ctx_s, ptr %21, i32 0, i32 0, !dbg !4030
  %22 = load i64, ptr %slot, align 8, !dbg !4030, !tbaa !1277
  %arrayidx44 = getelementptr inbounds [16 x %struct.rtree_ctx_cache_elm_s], ptr %cache43, i64 0, i64 %22, !dbg !4030
  %leaf45 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx44, i32 0, i32 1, !dbg !4030
  %23 = load ptr, ptr %leaf45, align 8, !dbg !4030, !tbaa !4012
  %24 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4030, !tbaa !1271
  %l2_cache46 = getelementptr inbounds %struct.rtree_ctx_s, ptr %24, i32 0, i32 1, !dbg !4030
  %arrayidx47 = getelementptr inbounds [8 x %struct.rtree_ctx_cache_elm_s], ptr %l2_cache46, i64 0, i64 0, !dbg !4030
  %leaf48 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx47, i32 0, i32 1, !dbg !4030
  store ptr %23, ptr %leaf48, align 8, !dbg !4030, !tbaa !4012
  %25 = load i64, ptr %leafkey, align 8, !dbg !4027, !tbaa !1277
  %26 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4027, !tbaa !1271
  %cache49 = getelementptr inbounds %struct.rtree_ctx_s, ptr %26, i32 0, i32 0, !dbg !4027
  %27 = load i64, ptr %slot, align 8, !dbg !4027, !tbaa !1277
  %arrayidx50 = getelementptr inbounds [16 x %struct.rtree_ctx_cache_elm_s], ptr %cache49, i64 0, i64 %27, !dbg !4027
  %leafkey51 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx50, i32 0, i32 0, !dbg !4027
  store i64 %25, ptr %leafkey51, align 8, !dbg !4027, !tbaa !4003
  %28 = load ptr, ptr %leaf30, align 8, !dbg !4027, !tbaa !1271
  %29 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4027, !tbaa !1271
  %cache52 = getelementptr inbounds %struct.rtree_ctx_s, ptr %29, i32 0, i32 0, !dbg !4027
  %30 = load i64, ptr %slot, align 8, !dbg !4027, !tbaa !1277
  %arrayidx53 = getelementptr inbounds [16 x %struct.rtree_ctx_cache_elm_s], ptr %cache52, i64 0, i64 %30, !dbg !4027
  %leaf54 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx53, i32 0, i32 1, !dbg !4027
  store ptr %28, ptr %leaf54, align 8, !dbg !4027, !tbaa !4012
  call void @llvm.lifetime.start.p0(i64 8, ptr %subkey55) #10, !dbg !4027
  tail call void @llvm.dbg.declare(metadata ptr %subkey55, metadata !3969, metadata !DIExpression()), !dbg !4027
  %31 = load i64, ptr %key.addr, align 8, !dbg !4027, !tbaa !1277
  %call56 = call i64 @rtree_subkey(i64 noundef %31, i32 noundef 1), !dbg !4027
  store i64 %call56, ptr %subkey55, align 8, !dbg !4027, !tbaa !1277
  %32 = load ptr, ptr %leaf30, align 8, !dbg !4027, !tbaa !1271
  %33 = load i64, ptr %subkey55, align 8, !dbg !4027, !tbaa !1277
  %arrayidx57 = getelementptr inbounds %struct.rtree_leaf_elm_s, ptr %32, i64 %33, !dbg !4027
  store ptr %arrayidx57, ptr %retval, align 8, !dbg !4027
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %subkey55) #10, !dbg !4025
  call void @llvm.lifetime.end.p0(i64 8, ptr %leaf30) #10, !dbg !4025
  br label %cleanup149

if.end58:                                         ; preds = %do.body17
  br label %do.cond59, !dbg !4026

do.cond59:                                        ; preds = %if.end58
  br label %do.end60, !dbg !4026

do.end60:                                         ; preds = %do.cond59
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !4033
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !3970, metadata !DIExpression()), !dbg !4034
  store i32 1, ptr %i, align 4, !dbg !4034, !tbaa !1534
  br label %for.cond, !dbg !4033

for.cond:                                         ; preds = %for.inc, %do.end60
  %34 = load i32, ptr %i, align 4, !dbg !4035, !tbaa !1534
  %cmp61 = icmp ult i32 %34, 8, !dbg !4036
  br i1 %cmp61, label %for.body, label %for.cond.cleanup, !dbg !4037

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 14, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4037

for.body:                                         ; preds = %for.cond
  br label %do.body63, !dbg !4038

do.body63:                                        ; preds = %for.body
  %35 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4039, !tbaa !1271
  %l2_cache64 = getelementptr inbounds %struct.rtree_ctx_s, ptr %35, i32 0, i32 1, !dbg !4039
  %36 = load i32, ptr %i, align 4, !dbg !4039, !tbaa !1534
  %idxprom = zext i32 %36 to i64, !dbg !4039
  %arrayidx65 = getelementptr inbounds [8 x %struct.rtree_ctx_cache_elm_s], ptr %l2_cache64, i64 0, i64 %idxprom, !dbg !4039
  %leafkey66 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx65, i32 0, i32 0, !dbg !4039
  %37 = load i64, ptr %leafkey66, align 8, !dbg !4039, !tbaa !4003
  %38 = load i64, ptr %leafkey, align 8, !dbg !4039, !tbaa !1277
  %cmp67 = icmp eq i64 %37, %38, !dbg !4039
  %lnot69 = xor i1 %cmp67, true, !dbg !4039
  %lnot71 = xor i1 %lnot69, true, !dbg !4039
  %lnot.ext72 = zext i1 %lnot71 to i32, !dbg !4039
  %conv73 = sext i32 %lnot.ext72 to i64, !dbg !4039
  %expval74 = call i64 @llvm.expect.i64(i64 %conv73, i64 1), !dbg !4039
  %tobool75 = icmp ne i64 %expval74, 0, !dbg !4039
  br i1 %tobool75, label %if.then76, label %if.end143, !dbg !4040

if.then76:                                        ; preds = %do.body63
  call void @llvm.lifetime.start.p0(i64 8, ptr %leaf77) #10, !dbg !4041
  tail call void @llvm.dbg.declare(metadata ptr %leaf77, metadata !3972, metadata !DIExpression()), !dbg !4041
  %39 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4041, !tbaa !1271
  %l2_cache78 = getelementptr inbounds %struct.rtree_ctx_s, ptr %39, i32 0, i32 1, !dbg !4041
  %40 = load i32, ptr %i, align 4, !dbg !4041, !tbaa !1534
  %idxprom79 = zext i32 %40 to i64, !dbg !4041
  %arrayidx80 = getelementptr inbounds [8 x %struct.rtree_ctx_cache_elm_s], ptr %l2_cache78, i64 0, i64 %idxprom79, !dbg !4041
  %leaf81 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx80, i32 0, i32 1, !dbg !4041
  %41 = load ptr, ptr %leaf81, align 8, !dbg !4041, !tbaa !4012
  store ptr %41, ptr %leaf77, align 8, !dbg !4041, !tbaa !1271
  br label %do.body82, !dbg !4041

do.body82:                                        ; preds = %if.then76
  br label %do.cond83, !dbg !4042

do.cond83:                                        ; preds = %do.body82
  br label %do.end84, !dbg !4042

do.end84:                                         ; preds = %do.cond83
  %42 = load i32, ptr %i, align 4, !dbg !4044, !tbaa !1534
  %cmp85 = icmp ugt i32 %42, 0, !dbg !4044
  br i1 %cmp85, label %if.then87, label %if.else, !dbg !4041

if.then87:                                        ; preds = %do.end84
  %43 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4046, !tbaa !1271
  %l2_cache88 = getelementptr inbounds %struct.rtree_ctx_s, ptr %43, i32 0, i32 1, !dbg !4046
  %44 = load i32, ptr %i, align 4, !dbg !4046, !tbaa !1534
  %sub = sub i32 %44, 1, !dbg !4046
  %idxprom89 = zext i32 %sub to i64, !dbg !4046
  %arrayidx90 = getelementptr inbounds [8 x %struct.rtree_ctx_cache_elm_s], ptr %l2_cache88, i64 0, i64 %idxprom89, !dbg !4046
  %leafkey91 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx90, i32 0, i32 0, !dbg !4046
  %45 = load i64, ptr %leafkey91, align 8, !dbg !4046, !tbaa !4003
  %46 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4046, !tbaa !1271
  %l2_cache92 = getelementptr inbounds %struct.rtree_ctx_s, ptr %46, i32 0, i32 1, !dbg !4046
  %47 = load i32, ptr %i, align 4, !dbg !4046, !tbaa !1534
  %idxprom93 = zext i32 %47 to i64, !dbg !4046
  %arrayidx94 = getelementptr inbounds [8 x %struct.rtree_ctx_cache_elm_s], ptr %l2_cache92, i64 0, i64 %idxprom93, !dbg !4046
  %leafkey95 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx94, i32 0, i32 0, !dbg !4046
  store i64 %45, ptr %leafkey95, align 8, !dbg !4046, !tbaa !4003
  %48 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4046, !tbaa !1271
  %l2_cache96 = getelementptr inbounds %struct.rtree_ctx_s, ptr %48, i32 0, i32 1, !dbg !4046
  %49 = load i32, ptr %i, align 4, !dbg !4046, !tbaa !1534
  %sub97 = sub i32 %49, 1, !dbg !4046
  %idxprom98 = zext i32 %sub97 to i64, !dbg !4046
  %arrayidx99 = getelementptr inbounds [8 x %struct.rtree_ctx_cache_elm_s], ptr %l2_cache96, i64 0, i64 %idxprom98, !dbg !4046
  %leaf100 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx99, i32 0, i32 1, !dbg !4046
  %50 = load ptr, ptr %leaf100, align 8, !dbg !4046, !tbaa !4012
  %51 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4046, !tbaa !1271
  %l2_cache101 = getelementptr inbounds %struct.rtree_ctx_s, ptr %51, i32 0, i32 1, !dbg !4046
  %52 = load i32, ptr %i, align 4, !dbg !4046, !tbaa !1534
  %idxprom102 = zext i32 %52 to i64, !dbg !4046
  %arrayidx103 = getelementptr inbounds [8 x %struct.rtree_ctx_cache_elm_s], ptr %l2_cache101, i64 0, i64 %idxprom102, !dbg !4046
  %leaf104 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx103, i32 0, i32 1, !dbg !4046
  store ptr %50, ptr %leaf104, align 8, !dbg !4046, !tbaa !4012
  %53 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4046, !tbaa !1271
  %cache105 = getelementptr inbounds %struct.rtree_ctx_s, ptr %53, i32 0, i32 0, !dbg !4046
  %54 = load i64, ptr %slot, align 8, !dbg !4046, !tbaa !1277
  %arrayidx106 = getelementptr inbounds [16 x %struct.rtree_ctx_cache_elm_s], ptr %cache105, i64 0, i64 %54, !dbg !4046
  %leafkey107 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx106, i32 0, i32 0, !dbg !4046
  %55 = load i64, ptr %leafkey107, align 8, !dbg !4046, !tbaa !4003
  %56 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4046, !tbaa !1271
  %l2_cache108 = getelementptr inbounds %struct.rtree_ctx_s, ptr %56, i32 0, i32 1, !dbg !4046
  %57 = load i32, ptr %i, align 4, !dbg !4046, !tbaa !1534
  %sub109 = sub i32 %57, 1, !dbg !4046
  %idxprom110 = zext i32 %sub109 to i64, !dbg !4046
  %arrayidx111 = getelementptr inbounds [8 x %struct.rtree_ctx_cache_elm_s], ptr %l2_cache108, i64 0, i64 %idxprom110, !dbg !4046
  %leafkey112 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx111, i32 0, i32 0, !dbg !4046
  store i64 %55, ptr %leafkey112, align 8, !dbg !4046, !tbaa !4003
  %58 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4046, !tbaa !1271
  %cache113 = getelementptr inbounds %struct.rtree_ctx_s, ptr %58, i32 0, i32 0, !dbg !4046
  %59 = load i64, ptr %slot, align 8, !dbg !4046, !tbaa !1277
  %arrayidx114 = getelementptr inbounds [16 x %struct.rtree_ctx_cache_elm_s], ptr %cache113, i64 0, i64 %59, !dbg !4046
  %leaf115 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx114, i32 0, i32 1, !dbg !4046
  %60 = load ptr, ptr %leaf115, align 8, !dbg !4046, !tbaa !4012
  %61 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4046, !tbaa !1271
  %l2_cache116 = getelementptr inbounds %struct.rtree_ctx_s, ptr %61, i32 0, i32 1, !dbg !4046
  %62 = load i32, ptr %i, align 4, !dbg !4046, !tbaa !1534
  %sub117 = sub i32 %62, 1, !dbg !4046
  %idxprom118 = zext i32 %sub117 to i64, !dbg !4046
  %arrayidx119 = getelementptr inbounds [8 x %struct.rtree_ctx_cache_elm_s], ptr %l2_cache116, i64 0, i64 %idxprom118, !dbg !4046
  %leaf120 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx119, i32 0, i32 1, !dbg !4046
  store ptr %60, ptr %leaf120, align 8, !dbg !4046, !tbaa !4012
  br label %if.end133, !dbg !4046

if.else:                                          ; preds = %do.end84
  %63 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4048, !tbaa !1271
  %cache121 = getelementptr inbounds %struct.rtree_ctx_s, ptr %63, i32 0, i32 0, !dbg !4048
  %64 = load i64, ptr %slot, align 8, !dbg !4048, !tbaa !1277
  %arrayidx122 = getelementptr inbounds [16 x %struct.rtree_ctx_cache_elm_s], ptr %cache121, i64 0, i64 %64, !dbg !4048
  %leafkey123 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx122, i32 0, i32 0, !dbg !4048
  %65 = load i64, ptr %leafkey123, align 8, !dbg !4048, !tbaa !4003
  %66 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4048, !tbaa !1271
  %l2_cache124 = getelementptr inbounds %struct.rtree_ctx_s, ptr %66, i32 0, i32 1, !dbg !4048
  %arrayidx125 = getelementptr inbounds [8 x %struct.rtree_ctx_cache_elm_s], ptr %l2_cache124, i64 0, i64 0, !dbg !4048
  %leafkey126 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx125, i32 0, i32 0, !dbg !4048
  store i64 %65, ptr %leafkey126, align 8, !dbg !4048, !tbaa !4003
  %67 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4048, !tbaa !1271
  %cache127 = getelementptr inbounds %struct.rtree_ctx_s, ptr %67, i32 0, i32 0, !dbg !4048
  %68 = load i64, ptr %slot, align 8, !dbg !4048, !tbaa !1277
  %arrayidx128 = getelementptr inbounds [16 x %struct.rtree_ctx_cache_elm_s], ptr %cache127, i64 0, i64 %68, !dbg !4048
  %leaf129 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx128, i32 0, i32 1, !dbg !4048
  %69 = load ptr, ptr %leaf129, align 8, !dbg !4048, !tbaa !4012
  %70 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4048, !tbaa !1271
  %l2_cache130 = getelementptr inbounds %struct.rtree_ctx_s, ptr %70, i32 0, i32 1, !dbg !4048
  %arrayidx131 = getelementptr inbounds [8 x %struct.rtree_ctx_cache_elm_s], ptr %l2_cache130, i64 0, i64 0, !dbg !4048
  %leaf132 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx131, i32 0, i32 1, !dbg !4048
  store ptr %69, ptr %leaf132, align 8, !dbg !4048, !tbaa !4012
  br label %if.end133

if.end133:                                        ; preds = %if.else, %if.then87
  %71 = load i64, ptr %leafkey, align 8, !dbg !4041, !tbaa !1277
  %72 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4041, !tbaa !1271
  %cache134 = getelementptr inbounds %struct.rtree_ctx_s, ptr %72, i32 0, i32 0, !dbg !4041
  %73 = load i64, ptr %slot, align 8, !dbg !4041, !tbaa !1277
  %arrayidx135 = getelementptr inbounds [16 x %struct.rtree_ctx_cache_elm_s], ptr %cache134, i64 0, i64 %73, !dbg !4041
  %leafkey136 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx135, i32 0, i32 0, !dbg !4041
  store i64 %71, ptr %leafkey136, align 8, !dbg !4041, !tbaa !4003
  %74 = load ptr, ptr %leaf77, align 8, !dbg !4041, !tbaa !1271
  %75 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4041, !tbaa !1271
  %cache137 = getelementptr inbounds %struct.rtree_ctx_s, ptr %75, i32 0, i32 0, !dbg !4041
  %76 = load i64, ptr %slot, align 8, !dbg !4041, !tbaa !1277
  %arrayidx138 = getelementptr inbounds [16 x %struct.rtree_ctx_cache_elm_s], ptr %cache137, i64 0, i64 %76, !dbg !4041
  %leaf139 = getelementptr inbounds %struct.rtree_ctx_cache_elm_s, ptr %arrayidx138, i32 0, i32 1, !dbg !4041
  store ptr %74, ptr %leaf139, align 8, !dbg !4041, !tbaa !4012
  call void @llvm.lifetime.start.p0(i64 8, ptr %subkey140) #10, !dbg !4041
  tail call void @llvm.dbg.declare(metadata ptr %subkey140, metadata !3978, metadata !DIExpression()), !dbg !4041
  %77 = load i64, ptr %key.addr, align 8, !dbg !4041, !tbaa !1277
  %call141 = call i64 @rtree_subkey(i64 noundef %77, i32 noundef 1), !dbg !4041
  store i64 %call141, ptr %subkey140, align 8, !dbg !4041, !tbaa !1277
  %78 = load ptr, ptr %leaf77, align 8, !dbg !4041, !tbaa !1271
  %79 = load i64, ptr %subkey140, align 8, !dbg !4041, !tbaa !1277
  %arrayidx142 = getelementptr inbounds %struct.rtree_leaf_elm_s, ptr %78, i64 %79, !dbg !4041
  store ptr %arrayidx142, ptr %retval, align 8, !dbg !4041
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %subkey140) #10, !dbg !4039
  call void @llvm.lifetime.end.p0(i64 8, ptr %leaf77) #10, !dbg !4039
  br label %cleanup

if.end143:                                        ; preds = %do.body63
  br label %do.cond144, !dbg !4040

do.cond144:                                       ; preds = %if.end143
  br label %do.end145, !dbg !4040

do.end145:                                        ; preds = %do.cond144
  br label %for.inc, !dbg !4050

for.inc:                                          ; preds = %do.end145
  %80 = load i32, ptr %i, align 4, !dbg !4051, !tbaa !1534
  %inc = add i32 %80, 1, !dbg !4051
  store i32 %inc, ptr %i, align 4, !dbg !4051, !tbaa !1534
  br label %for.cond, !dbg !4052, !llvm.loop !4053

cleanup:                                          ; preds = %if.end133, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !4052
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup149 [
    i32 14, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  %81 = load ptr, ptr %tsdn.addr, align 8, !dbg !4056, !tbaa !1271
  %82 = load ptr, ptr %rtree.addr, align 8, !dbg !4057, !tbaa !1271
  %83 = load ptr, ptr %rtree_ctx.addr, align 8, !dbg !4058, !tbaa !1271
  %84 = load i64, ptr %key.addr, align 8, !dbg !4059, !tbaa !1277
  %85 = load i8, ptr %dependent.addr, align 1, !dbg !4060, !tbaa !1280, !range !1290, !noundef !1291
  %tobool146 = trunc i8 %85 to i1, !dbg !4060
  %86 = load i8, ptr %init_missing.addr, align 1, !dbg !4061, !tbaa !1280, !range !1290, !noundef !1291
  %tobool147 = trunc i8 %86 to i1, !dbg !4061
  %call148 = call ptr @rtree_leaf_elm_lookup_hard(ptr noundef %81, ptr noundef %82, ptr noundef %83, i64 noundef %84, i1 noundef zeroext %tobool146, i1 noundef zeroext %tobool147), !dbg !4062
  store ptr %call148, ptr %retval, align 8, !dbg !4063
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup149, !dbg !4063

cleanup149:                                       ; preds = %for.end, %cleanup, %do.end36, %do.end14
  call void @llvm.lifetime.end.p0(i64 8, ptr %leafkey) #10, !dbg !4064
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #10, !dbg !4064
  %87 = load ptr, ptr %retval, align 8, !dbg !4064
  ret ptr %87, !dbg !4064
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @rtree_leaf_elm_read(ptr noalias sret(%struct.rtree_contents_s) align 8 %agg.result, ptr noundef %tsdn, ptr noundef %rtree, ptr noundef %elm, i1 noundef zeroext %dependent) #2 !dbg !4065 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %rtree.addr = alloca ptr, align 8
  %elm.addr = alloca ptr, align 8
  %dependent.addr = alloca i8, align 1
  %bits = alloca i64, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !4069, metadata !DIExpression()), !dbg !4075
  store ptr %rtree, ptr %rtree.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %rtree.addr, metadata !4070, metadata !DIExpression()), !dbg !4076
  store ptr %elm, ptr %elm.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %elm.addr, metadata !4071, metadata !DIExpression()), !dbg !4077
  %frombool = zext i1 %dependent to i8
  store i8 %frombool, ptr %dependent.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %dependent.addr, metadata !4072, metadata !DIExpression()), !dbg !4078
  call void @llvm.lifetime.start.p0(i64 8, ptr %bits) #10, !dbg !4079
  tail call void @llvm.dbg.declare(metadata ptr %bits, metadata !4073, metadata !DIExpression()), !dbg !4080
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !4081, !tbaa !1271
  %1 = load ptr, ptr %rtree.addr, align 8, !dbg !4082, !tbaa !1271
  %2 = load ptr, ptr %elm.addr, align 8, !dbg !4083, !tbaa !1271
  %3 = load i8, ptr %dependent.addr, align 1, !dbg !4084, !tbaa !1280, !range !1290, !noundef !1291
  %tobool = trunc i8 %3 to i1, !dbg !4084
  %call = call i64 @rtree_leaf_elm_bits_read(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %tobool), !dbg !4085
  store i64 %call, ptr %bits, align 8, !dbg !4080, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %agg.result, metadata !4074, metadata !DIExpression()), !dbg !4086
  %4 = load i64, ptr %bits, align 8, !dbg !4087, !tbaa !1277
  call void @rtree_leaf_elm_bits_decode(ptr sret(%struct.rtree_contents_s) align 8 %agg.result, i64 noundef %4), !dbg !4088
  call void @llvm.lifetime.end.p0(i64 8, ptr %bits) #10, !dbg !4089
  ret void, !dbg !4089
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @rtree_cache_direct_map(i64 noundef %key) #2 !dbg !4090 {
entry:
  %key.addr = alloca i64, align 8
  store i64 %key, ptr %key.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4094, metadata !DIExpression()), !dbg !4095
  %0 = load i64, ptr %key.addr, align 8, !dbg !4096, !tbaa !1277
  %call = call i32 @rtree_leaf_maskbits(), !dbg !4097
  %sh_prom = zext i32 %call to i64, !dbg !4098
  %shr = lshr i64 %0, %sh_prom, !dbg !4098
  %and = and i64 %shr, 15, !dbg !4099
  ret i64 %and, !dbg !4100
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @rtree_leafkey(i64 noundef %key) #2 !dbg !4101 {
entry:
  %key.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  store i64 %key, ptr %key.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4105, metadata !DIExpression()), !dbg !4107
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !4108
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !4106, metadata !DIExpression()), !dbg !4109
  %call = call i32 @rtree_leaf_maskbits(), !dbg !4110
  %sh_prom = zext i32 %call to i64, !dbg !4111
  %shl = shl i64 1, %sh_prom, !dbg !4111
  %sub = sub i64 %shl, 1, !dbg !4112
  %not = xor i64 %sub, -1, !dbg !4113
  store i64 %not, ptr %mask, align 8, !dbg !4109, !tbaa !1277
  %0 = load i64, ptr %key.addr, align 8, !dbg !4114, !tbaa !1277
  %1 = load i64, ptr %mask, align 8, !dbg !4115, !tbaa !1277
  %and = and i64 %0, %1, !dbg !4116
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !4117
  ret i64 %and, !dbg !4118
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @rtree_subkey(i64 noundef %key, i32 noundef %level) #2 !dbg !4119 {
entry:
  %key.addr = alloca i64, align 8
  %level.addr = alloca i32, align 4
  %ptrbits = alloca i32, align 4
  %cumbits = alloca i32, align 4
  %shiftbits = alloca i32, align 4
  %maskbits = alloca i32, align 4
  %mask = alloca i64, align 8
  store i64 %key, ptr %key.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4123, metadata !DIExpression()), !dbg !4130
  store i32 %level, ptr %level.addr, align 4, !tbaa !1534
  tail call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !4124, metadata !DIExpression()), !dbg !4131
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptrbits) #10, !dbg !4132
  tail call void @llvm.dbg.declare(metadata ptr %ptrbits, metadata !4125, metadata !DIExpression()), !dbg !4133
  store i32 64, ptr %ptrbits, align 4, !dbg !4133, !tbaa !1534
  call void @llvm.lifetime.start.p0(i64 4, ptr %cumbits) #10, !dbg !4134
  tail call void @llvm.dbg.declare(metadata ptr %cumbits, metadata !4126, metadata !DIExpression()), !dbg !4135
  %0 = load i32, ptr %level.addr, align 4, !dbg !4136, !tbaa !1534
  %idxprom = zext i32 %0 to i64, !dbg !4137
  %arrayidx = getelementptr inbounds [2 x %struct.rtree_level_s], ptr @rtree_levels, i64 0, i64 %idxprom, !dbg !4137
  %cumbits1 = getelementptr inbounds %struct.rtree_level_s, ptr %arrayidx, i32 0, i32 1, !dbg !4138
  %1 = load i32, ptr %cumbits1, align 4, !dbg !4138, !tbaa !4139
  store i32 %1, ptr %cumbits, align 4, !dbg !4135, !tbaa !1534
  call void @llvm.lifetime.start.p0(i64 4, ptr %shiftbits) #10, !dbg !4141
  tail call void @llvm.dbg.declare(metadata ptr %shiftbits, metadata !4127, metadata !DIExpression()), !dbg !4142
  %2 = load i32, ptr %ptrbits, align 4, !dbg !4143, !tbaa !1534
  %3 = load i32, ptr %cumbits, align 4, !dbg !4144, !tbaa !1534
  %sub = sub i32 %2, %3, !dbg !4145
  store i32 %sub, ptr %shiftbits, align 4, !dbg !4142, !tbaa !1534
  call void @llvm.lifetime.start.p0(i64 4, ptr %maskbits) #10, !dbg !4146
  tail call void @llvm.dbg.declare(metadata ptr %maskbits, metadata !4128, metadata !DIExpression()), !dbg !4147
  %4 = load i32, ptr %level.addr, align 4, !dbg !4148, !tbaa !1534
  %idxprom2 = zext i32 %4 to i64, !dbg !4149
  %arrayidx3 = getelementptr inbounds [2 x %struct.rtree_level_s], ptr @rtree_levels, i64 0, i64 %idxprom2, !dbg !4149
  %bits = getelementptr inbounds %struct.rtree_level_s, ptr %arrayidx3, i32 0, i32 0, !dbg !4150
  %5 = load i32, ptr %bits, align 8, !dbg !4150, !tbaa !4151
  store i32 %5, ptr %maskbits, align 4, !dbg !4147, !tbaa !1534
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !4152
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !4129, metadata !DIExpression()), !dbg !4153
  %6 = load i32, ptr %maskbits, align 4, !dbg !4154, !tbaa !1534
  %sh_prom = zext i32 %6 to i64, !dbg !4155
  %shl = shl i64 1, %sh_prom, !dbg !4155
  %sub4 = sub i64 %shl, 1, !dbg !4156
  store i64 %sub4, ptr %mask, align 8, !dbg !4153, !tbaa !1277
  %7 = load i64, ptr %key.addr, align 8, !dbg !4157, !tbaa !1277
  %8 = load i32, ptr %shiftbits, align 4, !dbg !4158, !tbaa !1534
  %sh_prom5 = zext i32 %8 to i64, !dbg !4159
  %shr = lshr i64 %7, %sh_prom5, !dbg !4159
  %9 = load i64, ptr %mask, align 8, !dbg !4160, !tbaa !1277
  %and = and i64 %shr, %9, !dbg !4161
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !4162
  call void @llvm.lifetime.end.p0(i64 4, ptr %maskbits) #10, !dbg !4162
  call void @llvm.lifetime.end.p0(i64 4, ptr %shiftbits) #10, !dbg !4162
  call void @llvm.lifetime.end.p0(i64 4, ptr %cumbits) #10, !dbg !4162
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptrbits) #10, !dbg !4162
  ret i64 %and, !dbg !4163
}

declare !dbg !4164 ptr @rtree_leaf_elm_lookup_hard(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) #4

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @rtree_leaf_maskbits() #2 !dbg !4165 {
entry:
  %ptrbits = alloca i32, align 4
  %cumbits = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptrbits) #10, !dbg !4169
  tail call void @llvm.dbg.declare(metadata ptr %ptrbits, metadata !4167, metadata !DIExpression()), !dbg !4170
  store i32 64, ptr %ptrbits, align 4, !dbg !4170, !tbaa !1534
  call void @llvm.lifetime.start.p0(i64 4, ptr %cumbits) #10, !dbg !4171
  tail call void @llvm.dbg.declare(metadata ptr %cumbits, metadata !4168, metadata !DIExpression()), !dbg !4172
  store i32 34, ptr %cumbits, align 4, !dbg !4172, !tbaa !1534
  %0 = load i32, ptr %ptrbits, align 4, !dbg !4173, !tbaa !1534
  %1 = load i32, ptr %cumbits, align 4, !dbg !4174, !tbaa !1534
  %sub = sub i32 %0, %1, !dbg !4175
  call void @llvm.lifetime.end.p0(i64 4, ptr %cumbits) #10, !dbg !4176
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptrbits) #10, !dbg !4176
  ret i32 %sub, !dbg !4177
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @rtree_leaf_elm_bits_read(ptr noundef %tsdn, ptr noundef %rtree, ptr noundef %elm, i1 noundef zeroext %dependent) #2 !dbg !4178 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %rtree.addr = alloca ptr, align 8
  %elm.addr = alloca ptr, align 8
  %dependent.addr = alloca i8, align 1
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !4182, metadata !DIExpression()), !dbg !4186
  store ptr %rtree, ptr %rtree.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %rtree.addr, metadata !4183, metadata !DIExpression()), !dbg !4187
  store ptr %elm, ptr %elm.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %elm.addr, metadata !4184, metadata !DIExpression()), !dbg !4188
  %frombool = zext i1 %dependent to i8
  store i8 %frombool, ptr %dependent.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %dependent.addr, metadata !4185, metadata !DIExpression()), !dbg !4189
  %0 = load ptr, ptr %elm.addr, align 8, !dbg !4190, !tbaa !1271
  %le_bits = getelementptr inbounds %struct.rtree_leaf_elm_s, ptr %0, i32 0, i32 0, !dbg !4191
  %1 = load i8, ptr %dependent.addr, align 1, !dbg !4192, !tbaa !1280, !range !1290, !noundef !1291
  %tobool = trunc i8 %1 to i1, !dbg !4192
  %2 = zext i1 %tobool to i64, !dbg !4192
  %cond = select i1 %tobool, i32 0, i32 1, !dbg !4192
  %call = call ptr @atomic_load_p(ptr noundef %le_bits, i32 noundef %cond), !dbg !4193
  %3 = ptrtoint ptr %call to i64, !dbg !4194
  ret i64 %3, !dbg !4195
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @rtree_leaf_elm_bits_decode(ptr noalias sret(%struct.rtree_contents_s) align 8 %agg.result, i64 noundef %bits) #2 !dbg !4196 {
entry:
  %bits.addr = alloca i64, align 8
  %state_bits = alloca i64, align 8
  %low_bit_mask = alloca i64, align 8
  store i64 %bits, ptr %bits.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !4200, metadata !DIExpression()), !dbg !4204
  tail call void @llvm.dbg.declare(metadata ptr %agg.result, metadata !4201, metadata !DIExpression()), !dbg !4205
  %0 = load i64, ptr %bits.addr, align 8, !dbg !4206, !tbaa !1277
  %shr = lshr i64 %0, 48, !dbg !4207
  %conv = trunc i64 %shr to i32, !dbg !4206
  %metadata = getelementptr inbounds %struct.rtree_contents_s, ptr %agg.result, i32 0, i32 1, !dbg !4208
  %szind = getelementptr inbounds %struct.rtree_metadata_s, ptr %metadata, i32 0, i32 0, !dbg !4209
  store i32 %conv, ptr %szind, align 8, !dbg !4210, !tbaa !4211
  %1 = load i64, ptr %bits.addr, align 8, !dbg !4212, !tbaa !1277
  %and = and i64 %1, 1, !dbg !4213
  %tobool = icmp ne i64 %and, 0, !dbg !4214
  %metadata1 = getelementptr inbounds %struct.rtree_contents_s, ptr %agg.result, i32 0, i32 1, !dbg !4215
  %slab = getelementptr inbounds %struct.rtree_metadata_s, ptr %metadata1, i32 0, i32 3, !dbg !4216
  %frombool = zext i1 %tobool to i8, !dbg !4217
  store i8 %frombool, ptr %slab, align 1, !dbg !4217, !tbaa !4218
  %2 = load i64, ptr %bits.addr, align 8, !dbg !4219, !tbaa !1277
  %and2 = and i64 %2, 2, !dbg !4220
  %tobool3 = icmp ne i64 %and2, 0, !dbg !4221
  %metadata4 = getelementptr inbounds %struct.rtree_contents_s, ptr %agg.result, i32 0, i32 1, !dbg !4222
  %is_head = getelementptr inbounds %struct.rtree_metadata_s, ptr %metadata4, i32 0, i32 2, !dbg !4223
  %frombool5 = zext i1 %tobool3 to i8, !dbg !4224
  store i8 %frombool5, ptr %is_head, align 8, !dbg !4224, !tbaa !4225
  call void @llvm.lifetime.start.p0(i64 8, ptr %state_bits) #10, !dbg !4226
  tail call void @llvm.dbg.declare(metadata ptr %state_bits, metadata !4202, metadata !DIExpression()), !dbg !4227
  %3 = load i64, ptr %bits.addr, align 8, !dbg !4228, !tbaa !1277
  %and6 = and i64 %3, 28, !dbg !4229
  %shr7 = lshr i64 %and6, 2, !dbg !4230
  store i64 %shr7, ptr %state_bits, align 8, !dbg !4227, !tbaa !1277
  br label %do.body, !dbg !4231

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4232

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4232

do.end:                                           ; preds = %do.cond
  %4 = load i64, ptr %state_bits, align 8, !dbg !4234, !tbaa !1277
  %conv8 = trunc i64 %4 to i32, !dbg !4235
  %metadata9 = getelementptr inbounds %struct.rtree_contents_s, ptr %agg.result, i32 0, i32 1, !dbg !4236
  %state = getelementptr inbounds %struct.rtree_metadata_s, ptr %metadata9, i32 0, i32 1, !dbg !4237
  store i32 %conv8, ptr %state, align 4, !dbg !4238, !tbaa !4239
  call void @llvm.lifetime.start.p0(i64 8, ptr %low_bit_mask) #10, !dbg !4240
  tail call void @llvm.dbg.declare(metadata ptr %low_bit_mask, metadata !4203, metadata !DIExpression()), !dbg !4241
  store i64 -128, ptr %low_bit_mask, align 8, !dbg !4241, !tbaa !1277
  %5 = load i64, ptr %bits.addr, align 8, !dbg !4242, !tbaa !1277
  %shl = shl i64 %5, 16, !dbg !4243
  %shr10 = ashr i64 %shl, 16, !dbg !4244
  %6 = load i64, ptr %low_bit_mask, align 8, !dbg !4245, !tbaa !1277
  %and11 = and i64 %shr10, %6, !dbg !4246
  %7 = inttoptr i64 %and11 to ptr, !dbg !4247
  %edata = getelementptr inbounds %struct.rtree_contents_s, ptr %agg.result, i32 0, i32 0, !dbg !4248
  store ptr %7, ptr %edata, align 8, !dbg !4249, !tbaa !2097
  br label %do.body12, !dbg !4250

do.body12:                                        ; preds = %do.end
  br label %do.cond13, !dbg !4251

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4251

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 8, ptr %low_bit_mask) #10, !dbg !4253
  call void @llvm.lifetime.end.p0(i64 8, ptr %state_bits) #10, !dbg !4253
  ret void, !dbg !4253
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @witness_assert_depth_to_rank(ptr noundef %witness_tsdn, i32 noundef %rank_inclusive, i32 noundef %depth) #5 !dbg !4254 {
entry:
  %witness_tsdn.addr = alloca ptr, align 8
  %rank_inclusive.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %witnesses = alloca ptr, align 8
  %d = alloca i32, align 4
  store ptr %witness_tsdn, ptr %witness_tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %witness_tsdn.addr, metadata !4258, metadata !DIExpression()), !dbg !4261
  store i32 %rank_inclusive, ptr %rank_inclusive.addr, align 4, !tbaa !1582
  tail call void @llvm.dbg.declare(metadata ptr %rank_inclusive.addr, metadata !4259, metadata !DIExpression()), !dbg !4262
  store i32 %depth, ptr %depth.addr, align 4, !tbaa !1534
  tail call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !4260, metadata !DIExpression()), !dbg !4263
  ret void, !dbg !4264
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @arena_sdalloc(ptr noundef %tsdn, ptr noundef %ptr, i64 noundef %size, ptr noundef %tcache, ptr noundef %caller_alloc_ctx, i1 noundef zeroext %slow_path) #2 !dbg !4267 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %tcache.addr = alloca ptr, align 8
  %caller_alloc_ctx.addr = alloca ptr, align 8
  %slow_path.addr = alloca i8, align 1
  %alloc_ctx = alloca %struct.emap_alloc_ctx_t, align 4
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !4269, metadata !DIExpression()), !dbg !4276
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4270, metadata !DIExpression()), !dbg !4277
  store i64 %size, ptr %size.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4271, metadata !DIExpression()), !dbg !4278
  store ptr %tcache, ptr %tcache.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tcache.addr, metadata !4272, metadata !DIExpression()), !dbg !4279
  store ptr %caller_alloc_ctx, ptr %caller_alloc_ctx.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %caller_alloc_ctx.addr, metadata !4273, metadata !DIExpression()), !dbg !4280
  %frombool = zext i1 %slow_path to i8
  store i8 %frombool, ptr %slow_path.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %slow_path.addr, metadata !4274, metadata !DIExpression()), !dbg !4281
  br label %do.body, !dbg !4282

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4283

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4285

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4286

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !4288

do.body3:                                         ; preds = %do.end2
  br label %do.end4, !dbg !4289

do.end4:                                          ; preds = %do.body3
  %0 = load ptr, ptr %tcache.addr, align 8, !dbg !4291, !tbaa !1271
  %cmp = icmp eq ptr %0, null, !dbg !4291
  %lnot = xor i1 %cmp, true, !dbg !4291
  %lnot5 = xor i1 %lnot, true, !dbg !4291
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !4291
  %conv = sext i32 %lnot.ext to i64, !dbg !4291
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4291
  %tobool = icmp ne i64 %expval, 0, !dbg !4291
  br i1 %tobool, label %if.then, label %if.end, !dbg !4293

if.then:                                          ; preds = %do.end4
  %1 = load ptr, ptr %tsdn.addr, align 8, !dbg !4294, !tbaa !1271
  %2 = load ptr, ptr %ptr.addr, align 8, !dbg !4296, !tbaa !1271
  %3 = load i64, ptr %size.addr, align 8, !dbg !4297, !tbaa !1277
  call void @arena_sdalloc_no_tcache(ptr noundef %1, ptr noundef %2, i64 noundef %3), !dbg !4298
  br label %return, !dbg !4299

if.end:                                           ; preds = %do.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %alloc_ctx) #10, !dbg !4300
  tail call void @llvm.dbg.declare(metadata ptr %alloc_ctx, metadata !4275, metadata !DIExpression()), !dbg !4301
  %4 = load i64, ptr %size.addr, align 8, !dbg !4302, !tbaa !1277
  %call = call i32 @sz_size2index(i64 noundef %4), !dbg !4305
  %szind = getelementptr inbounds %struct.emap_alloc_ctx_t, ptr %alloc_ctx, i32 0, i32 0, !dbg !4306
  store i32 %call, ptr %szind, align 4, !dbg !4307, !tbaa !4308
  %szind6 = getelementptr inbounds %struct.emap_alloc_ctx_t, ptr %alloc_ctx, i32 0, i32 0, !dbg !4310
  %5 = load i32, ptr %szind6, align 4, !dbg !4310, !tbaa !4308
  %conv7 = zext i32 %5 to i64, !dbg !4311
  %cmp8 = icmp ult i64 %conv7, 36, !dbg !4312
  %slab = getelementptr inbounds %struct.emap_alloc_ctx_t, ptr %alloc_ctx, i32 0, i32 1, !dbg !4313
  %frombool10 = zext i1 %cmp8 to i8, !dbg !4314
  store i8 %frombool10, ptr %slab, align 4, !dbg !4314, !tbaa !4315
  %slab11 = getelementptr inbounds %struct.emap_alloc_ctx_t, ptr %alloc_ctx, i32 0, i32 1, !dbg !4316
  %6 = load i8, ptr %slab11, align 4, !dbg !4316, !tbaa !4315, !range !1290, !noundef !1291
  %tobool12 = trunc i8 %6 to i1, !dbg !4316
  %lnot13 = xor i1 %tobool12, true, !dbg !4316
  %lnot15 = xor i1 %lnot13, true, !dbg !4316
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !4316
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !4316
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 1), !dbg !4316
  %tobool19 = icmp ne i64 %expval18, 0, !dbg !4316
  br i1 %tobool19, label %if.then20, label %if.else, !dbg !4318

if.then20:                                        ; preds = %if.end
  %7 = load ptr, ptr %tsdn.addr, align 8, !dbg !4319, !tbaa !1271
  %call21 = call ptr @tsdn_tsd(ptr noundef %7), !dbg !4321
  %8 = load ptr, ptr %tcache.addr, align 8, !dbg !4322, !tbaa !1271
  %9 = load ptr, ptr %ptr.addr, align 8, !dbg !4323, !tbaa !1271
  %szind22 = getelementptr inbounds %struct.emap_alloc_ctx_t, ptr %alloc_ctx, i32 0, i32 0, !dbg !4324
  %10 = load i32, ptr %szind22, align 4, !dbg !4324, !tbaa !4308
  %11 = load i8, ptr %slow_path.addr, align 1, !dbg !4325, !tbaa !1280, !range !1290, !noundef !1291
  %tobool23 = trunc i8 %11 to i1, !dbg !4325
  call void @tcache_dalloc_small(ptr noundef %call21, ptr noundef %8, ptr noundef %9, i32 noundef %10, i1 noundef zeroext %tobool23), !dbg !4326
  br label %if.end26, !dbg !4327

if.else:                                          ; preds = %if.end
  %12 = load ptr, ptr %tsdn.addr, align 8, !dbg !4328, !tbaa !1271
  %13 = load ptr, ptr %ptr.addr, align 8, !dbg !4330, !tbaa !1271
  %14 = load ptr, ptr %tcache.addr, align 8, !dbg !4331, !tbaa !1271
  %szind24 = getelementptr inbounds %struct.emap_alloc_ctx_t, ptr %alloc_ctx, i32 0, i32 0, !dbg !4332
  %15 = load i32, ptr %szind24, align 4, !dbg !4332, !tbaa !4308
  %16 = load i8, ptr %slow_path.addr, align 1, !dbg !4333, !tbaa !1280, !range !1290, !noundef !1291
  %tobool25 = trunc i8 %16 to i1, !dbg !4333
  call void @arena_dalloc_large(ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, i1 noundef zeroext %tobool25), !dbg !4334
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then20
  call void @llvm.lifetime.end.p0(i64 8, ptr %alloc_ctx) #10, !dbg !4335
  br label %return, !dbg !4335

return:                                           ; preds = %if.end26, %if.then
  ret void, !dbg !4335
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @arena_sdalloc_no_tcache(ptr noundef %tsdn, ptr noundef %ptr, i64 noundef %size) #5 !dbg !4336 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %alloc_ctx = alloca %struct.emap_alloc_ctx_t, align 4
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !4340, metadata !DIExpression()), !dbg !4344
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4341, metadata !DIExpression()), !dbg !4345
  store i64 %size, ptr %size.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4342, metadata !DIExpression()), !dbg !4346
  br label %do.body, !dbg !4347

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4348

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4350

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4351

do.end2:                                          ; preds = %do.body1
  call void @llvm.lifetime.start.p0(i64 8, ptr %alloc_ctx) #10, !dbg !4353
  tail call void @llvm.dbg.declare(metadata ptr %alloc_ctx, metadata !4343, metadata !DIExpression()), !dbg !4354
  %0 = load i64, ptr %size.addr, align 8, !dbg !4355, !tbaa !1277
  %call = call i32 @sz_size2index(i64 noundef %0), !dbg !4358
  %szind = getelementptr inbounds %struct.emap_alloc_ctx_t, ptr %alloc_ctx, i32 0, i32 0, !dbg !4359
  store i32 %call, ptr %szind, align 4, !dbg !4360, !tbaa !4308
  %szind3 = getelementptr inbounds %struct.emap_alloc_ctx_t, ptr %alloc_ctx, i32 0, i32 0, !dbg !4361
  %1 = load i32, ptr %szind3, align 4, !dbg !4361, !tbaa !4308
  %conv = zext i32 %1 to i64, !dbg !4362
  %cmp = icmp ult i64 %conv, 36, !dbg !4363
  %slab = getelementptr inbounds %struct.emap_alloc_ctx_t, ptr %alloc_ctx, i32 0, i32 1, !dbg !4364
  %frombool = zext i1 %cmp to i8, !dbg !4365
  store i8 %frombool, ptr %slab, align 4, !dbg !4365, !tbaa !4315
  %slab5 = getelementptr inbounds %struct.emap_alloc_ctx_t, ptr %alloc_ctx, i32 0, i32 1, !dbg !4366
  %2 = load i8, ptr %slab5, align 4, !dbg !4366, !tbaa !4315, !range !1290, !noundef !1291
  %tobool = trunc i8 %2 to i1, !dbg !4366
  %lnot = xor i1 %tobool, true, !dbg !4366
  %lnot6 = xor i1 %lnot, true, !dbg !4366
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !4366
  %conv7 = sext i32 %lnot.ext to i64, !dbg !4366
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 1), !dbg !4366
  %tobool8 = icmp ne i64 %expval, 0, !dbg !4366
  br i1 %tobool8, label %if.then, label %if.else, !dbg !4368

if.then:                                          ; preds = %do.end2
  %3 = load ptr, ptr %tsdn.addr, align 8, !dbg !4369, !tbaa !1271
  %4 = load ptr, ptr %ptr.addr, align 8, !dbg !4371, !tbaa !1271
  call void @arena_dalloc_small(ptr noundef %3, ptr noundef %4), !dbg !4372
  br label %if.end, !dbg !4373

if.else:                                          ; preds = %do.end2
  %5 = load ptr, ptr %tsdn.addr, align 8, !dbg !4374, !tbaa !1271
  %6 = load ptr, ptr %ptr.addr, align 8, !dbg !4376, !tbaa !1271
  %szind9 = getelementptr inbounds %struct.emap_alloc_ctx_t, ptr %alloc_ctx, i32 0, i32 0, !dbg !4377
  %7 = load i32, ptr %szind9, align 4, !dbg !4377, !tbaa !4308
  call void @arena_dalloc_large_no_tcache(ptr noundef %5, ptr noundef %6, i32 noundef %7), !dbg !4378
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %alloc_ctx) #10, !dbg !4379
  ret void, !dbg !4379
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @tcache_dalloc_small(ptr noundef %tsd, ptr noundef %tcache, ptr noundef %ptr, i32 noundef %binind, i1 noundef zeroext %slow_path) #2 !dbg !4380 {
entry:
  %tsd.addr = alloca ptr, align 8
  %tcache.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %binind.addr = alloca i32, align 4
  %slow_path.addr = alloca i8, align 1
  %bin = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %max = alloca i16, align 2
  %remain = alloca i32, align 4
  %ret = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !4385, metadata !DIExpression()), !dbg !4397
  store ptr %tcache, ptr %tcache.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tcache.addr, metadata !4386, metadata !DIExpression()), !dbg !4398
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4387, metadata !DIExpression()), !dbg !4399
  store i32 %binind, ptr %binind.addr, align 4, !tbaa !1534
  tail call void @llvm.dbg.declare(metadata ptr %binind.addr, metadata !4388, metadata !DIExpression()), !dbg !4400
  %frombool = zext i1 %slow_path to i8
  store i8 %frombool, ptr %slow_path.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %slow_path.addr, metadata !4389, metadata !DIExpression()), !dbg !4401
  br label %do.body, !dbg !4402

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4403

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %bin) #10, !dbg !4405
  tail call void @llvm.dbg.declare(metadata ptr %bin, metadata !4390, metadata !DIExpression()), !dbg !4406
  %0 = load ptr, ptr %tcache.addr, align 8, !dbg !4407, !tbaa !1271
  %bins = getelementptr inbounds %struct.tcache_s, ptr %0, i32 0, i32 1, !dbg !4408
  %1 = load i32, ptr %binind.addr, align 4, !dbg !4409, !tbaa !1534
  %idxprom = zext i32 %1 to i64, !dbg !4407
  %arrayidx = getelementptr inbounds [73 x %struct.cache_bin_s], ptr %bins, i64 0, i64 %idxprom, !dbg !4407
  store ptr %arrayidx, ptr %bin, align 8, !dbg !4406, !tbaa !1271
  %2 = load ptr, ptr %ptr.addr, align 8, !dbg !4410, !tbaa !1271
  %call = call zeroext i1 @cache_bin_nonfast_aligned(ptr noundef %2), !dbg !4412
  br i1 %call, label %if.then, label %if.end6, !dbg !4413

if.then:                                          ; preds = %do.end
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !4414, !tbaa !1271
  %4 = load i32, ptr %binind.addr, align 4, !dbg !4416, !tbaa !1534
  %call1 = call i64 @sz_index2size(i32 noundef %4), !dbg !4417
  call void @san_junk_ptr(ptr noundef %3, i64 noundef %call1), !dbg !4418
  %5 = load ptr, ptr %bin, align 8, !dbg !4419, !tbaa !1271
  %6 = load ptr, ptr %ptr.addr, align 8, !dbg !4421, !tbaa !1271
  %call2 = call zeroext i1 @cache_bin_stash(ptr noundef %5, ptr noundef %6), !dbg !4422
  br i1 %call2, label %if.then3, label %if.end, !dbg !4423

if.then3:                                         ; preds = %if.then
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4424

if.end:                                           ; preds = %if.then
  br label %do.body4, !dbg !4426

do.body4:                                         ; preds = %if.end
  br label %do.cond, !dbg !4427

do.cond:                                          ; preds = %do.body4
  br label %do.end5, !dbg !4427

do.end5:                                          ; preds = %do.cond
  br label %if.end6, !dbg !4429

if.end6:                                          ; preds = %do.end5, %do.end
  %7 = load ptr, ptr %bin, align 8, !dbg !4430, !tbaa !1271
  %8 = load ptr, ptr %ptr.addr, align 8, !dbg !4430, !tbaa !1271
  %call7 = call zeroext i1 @cache_bin_dalloc_easy(ptr noundef %7, ptr noundef %8), !dbg !4430
  %lnot = xor i1 %call7, true, !dbg !4430
  %lnot8 = xor i1 %lnot, true, !dbg !4430
  %lnot9 = xor i1 %lnot8, true, !dbg !4430
  %lnot.ext = zext i1 %lnot9 to i32, !dbg !4430
  %conv = sext i32 %lnot.ext to i64, !dbg !4430
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4430
  %tobool = icmp ne i64 %expval, 0, !dbg !4430
  br i1 %tobool, label %if.then10, label %if.end31, !dbg !4431

if.then10:                                        ; preds = %if.end6
  %9 = load i32, ptr %binind.addr, align 4, !dbg !4432, !tbaa !1534
  %10 = load ptr, ptr %bin, align 8, !dbg !4432, !tbaa !1271
  %call11 = call zeroext i1 @tcache_small_bin_disabled(i32 noundef %9, ptr noundef %10), !dbg !4432
  %lnot12 = xor i1 %call11, true, !dbg !4432
  %lnot14 = xor i1 %lnot12, true, !dbg !4432
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !4432
  %conv16 = sext i32 %lnot.ext15 to i64, !dbg !4432
  %expval17 = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !4432
  %tobool18 = icmp ne i64 %expval17, 0, !dbg !4432
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !4434

if.then19:                                        ; preds = %if.then10
  %11 = load ptr, ptr %tsd.addr, align 8, !dbg !4435, !tbaa !1271
  %call20 = call ptr @tsd_tsdn(ptr noundef %11), !dbg !4437
  %12 = load ptr, ptr %ptr.addr, align 8, !dbg !4438, !tbaa !1271
  call void @arena_dalloc_small(ptr noundef %call20, ptr noundef %12), !dbg !4439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4440

if.end21:                                         ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 2, ptr %max) #10, !dbg !4441
  tail call void @llvm.dbg.declare(metadata ptr %max, metadata !4391, metadata !DIExpression()), !dbg !4442
  %13 = load ptr, ptr @tcache_bin_info, align 8, !dbg !4443, !tbaa !1271
  %14 = load i32, ptr %binind.addr, align 4, !dbg !4444, !tbaa !1534
  %idxprom22 = zext i32 %14 to i64, !dbg !4443
  %arrayidx23 = getelementptr inbounds %struct.cache_bin_info_s, ptr %13, i64 %idxprom22, !dbg !4443
  %call24 = call zeroext i16 @cache_bin_info_ncached_max(ptr noundef %arrayidx23), !dbg !4445
  store i16 %call24, ptr %max, align 2, !dbg !4442, !tbaa !4446
  call void @llvm.lifetime.start.p0(i64 4, ptr %remain) #10, !dbg !4448
  tail call void @llvm.dbg.declare(metadata ptr %remain, metadata !4395, metadata !DIExpression()), !dbg !4449
  %15 = load i16, ptr %max, align 2, !dbg !4450, !tbaa !4446
  %conv25 = zext i16 %15 to i32, !dbg !4450
  %16 = load i32, ptr @opt_lg_tcache_flush_small_div, align 4, !dbg !4451, !tbaa !1534
  %shr = ashr i32 %conv25, %16, !dbg !4452
  store i32 %shr, ptr %remain, align 4, !dbg !4449, !tbaa !1534
  %17 = load ptr, ptr %tsd.addr, align 8, !dbg !4453, !tbaa !1271
  %18 = load ptr, ptr %tcache.addr, align 8, !dbg !4454, !tbaa !1271
  %19 = load ptr, ptr %bin, align 8, !dbg !4455, !tbaa !1271
  %20 = load i32, ptr %binind.addr, align 4, !dbg !4456, !tbaa !1534
  %21 = load i32, ptr %remain, align 4, !dbg !4457, !tbaa !1534
  call void @tcache_bin_flush_small(ptr noundef %17, ptr noundef %18, ptr noundef %19, i32 noundef %20, i32 noundef %21), !dbg !4458
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #10, !dbg !4459
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !4396, metadata !DIExpression()), !dbg !4460
  %22 = load ptr, ptr %bin, align 8, !dbg !4461, !tbaa !1271
  %23 = load ptr, ptr %ptr.addr, align 8, !dbg !4462, !tbaa !1271
  %call26 = call zeroext i1 @cache_bin_dalloc_easy(ptr noundef %22, ptr noundef %23), !dbg !4463
  %frombool27 = zext i1 %call26 to i8, !dbg !4460
  store i8 %frombool27, ptr %ret, align 1, !dbg !4460, !tbaa !1280
  br label %do.body28, !dbg !4464

do.body28:                                        ; preds = %if.end21
  br label %do.cond29, !dbg !4465

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !4465

do.end30:                                         ; preds = %do.cond29
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #10, !dbg !4467
  call void @llvm.lifetime.end.p0(i64 4, ptr %remain) #10, !dbg !4467
  call void @llvm.lifetime.end.p0(i64 2, ptr %max) #10, !dbg !4467
  br label %if.end31, !dbg !4468

if.end31:                                         ; preds = %do.end30, %if.end6
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4469
  br label %cleanup, !dbg !4469

cleanup:                                          ; preds = %if.end31, %if.then19, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bin) #10, !dbg !4469
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4469

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @arena_dalloc_large(ptr noundef %tsdn, ptr noundef %ptr, ptr noundef %tcache, i32 noundef %szind, i1 noundef zeroext %slow_path) #2 !dbg !4470 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %tcache.addr = alloca ptr, align 8
  %szind.addr = alloca i32, align 4
  %slow_path.addr = alloca i8, align 1
  %edata = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !4474, metadata !DIExpression()), !dbg !4482
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4475, metadata !DIExpression()), !dbg !4483
  store ptr %tcache, ptr %tcache.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tcache.addr, metadata !4476, metadata !DIExpression()), !dbg !4484
  store i32 %szind, ptr %szind.addr, align 4, !tbaa !1534
  tail call void @llvm.dbg.declare(metadata ptr %szind.addr, metadata !4477, metadata !DIExpression()), !dbg !4485
  %frombool = zext i1 %slow_path to i8
  store i8 %frombool, ptr %slow_path.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %slow_path.addr, metadata !4478, metadata !DIExpression()), !dbg !4486
  %0 = load i32, ptr %szind.addr, align 4, !dbg !4487, !tbaa !1534
  %1 = load i32, ptr @nhbins, align 4, !dbg !4488, !tbaa !1534
  %cmp = icmp ult i32 %0, %1, !dbg !4489
  br i1 %cmp, label %if.then, label %if.else, !dbg !4490

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %tsdn.addr, align 8, !dbg !4491, !tbaa !1271
  %call = call ptr @tsdn_tsd(ptr noundef %2), !dbg !4495
  %3 = load ptr, ptr %tcache.addr, align 8, !dbg !4496, !tbaa !1271
  %4 = load ptr, ptr %ptr.addr, align 8, !dbg !4497, !tbaa !1271
  %5 = load i32, ptr %szind.addr, align 4, !dbg !4498, !tbaa !1534
  %6 = load i8, ptr %slow_path.addr, align 1, !dbg !4499, !tbaa !1280, !range !1290, !noundef !1291
  %tobool = trunc i8 %6 to i1, !dbg !4499
  call void @tcache_dalloc_large(ptr noundef %call, ptr noundef %3, ptr noundef %4, i32 noundef %5, i1 noundef zeroext %tobool), !dbg !4500
  br label %if.end4, !dbg !4501

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %edata) #10, !dbg !4502
  tail call void @llvm.dbg.declare(metadata ptr %edata, metadata !4479, metadata !DIExpression()), !dbg !4503
  %7 = load ptr, ptr %tsdn.addr, align 8, !dbg !4504, !tbaa !1271
  %8 = load ptr, ptr %ptr.addr, align 8, !dbg !4505, !tbaa !1271
  %call1 = call ptr @emap_edata_lookup(ptr noundef %7, ptr noundef @arena_emap_global, ptr noundef %8), !dbg !4506
  store ptr %call1, ptr %edata, align 8, !dbg !4503, !tbaa !1271
  %9 = load ptr, ptr %edata, align 8, !dbg !4507, !tbaa !1271
  %10 = load ptr, ptr %ptr.addr, align 8, !dbg !4509, !tbaa !1271
  %11 = load i32, ptr %szind.addr, align 4, !dbg !4510, !tbaa !1534
  %call2 = call zeroext i1 @large_dalloc_safety_checks(ptr noundef %9, ptr noundef %10, i32 noundef %11), !dbg !4511
  br i1 %call2, label %if.then3, label %if.end, !dbg !4512

if.then3:                                         ; preds = %if.else
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4513

if.end:                                           ; preds = %if.else
  %12 = load ptr, ptr %tsdn.addr, align 8, !dbg !4515, !tbaa !1271
  %13 = load ptr, ptr %edata, align 8, !dbg !4516, !tbaa !1271
  call void @large_dalloc(ptr noundef %12, ptr noundef %13), !dbg !4517
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4518
  br label %cleanup, !dbg !4518

cleanup:                                          ; preds = %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %edata) #10, !dbg !4518
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end4
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end4

if.end4:                                          ; preds = %cleanup, %cleanup.cont, %if.then
  ret void, !dbg !4519

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !4520 void @arena_dalloc_small(ptr noundef, ptr noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @arena_dalloc_large_no_tcache(ptr noundef %tsdn, ptr noundef %ptr, i32 noundef %szind) #5 !dbg !4523 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %szind.addr = alloca i32, align 4
  %edata = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !4527, metadata !DIExpression()), !dbg !4533
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4528, metadata !DIExpression()), !dbg !4534
  store i32 %szind, ptr %szind.addr, align 4, !tbaa !1534
  tail call void @llvm.dbg.declare(metadata ptr %szind.addr, metadata !4529, metadata !DIExpression()), !dbg !4535
  call void @llvm.lifetime.start.p0(i64 8, ptr %edata) #10, !dbg !4536
  tail call void @llvm.dbg.declare(metadata ptr %edata, metadata !4530, metadata !DIExpression()), !dbg !4537
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !4538, !tbaa !1271
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !4539, !tbaa !1271
  %call = call ptr @emap_edata_lookup(ptr noundef %0, ptr noundef @arena_emap_global, ptr noundef %1), !dbg !4540
  store ptr %call, ptr %edata, align 8, !dbg !4537, !tbaa !1271
  %2 = load ptr, ptr %edata, align 8, !dbg !4541, !tbaa !1271
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !4543, !tbaa !1271
  %4 = load i32, ptr %szind.addr, align 4, !dbg !4544, !tbaa !1534
  %call1 = call zeroext i1 @large_dalloc_safety_checks(ptr noundef %2, ptr noundef %3, i32 noundef %4), !dbg !4545
  br i1 %call1, label %if.then, label %if.end, !dbg !4546

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4547

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %tsdn.addr, align 8, !dbg !4549, !tbaa !1271
  %6 = load ptr, ptr %edata, align 8, !dbg !4550, !tbaa !1271
  call void @large_dalloc(ptr noundef %5, ptr noundef %6), !dbg !4551
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4552
  br label %cleanup, !dbg !4552

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %edata) #10, !dbg !4552
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4553

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i1 @large_dalloc_safety_checks(ptr noundef %edata, ptr noundef %ptr, i32 noundef %szind) #2 !dbg !4554 {
entry:
  %edata.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %szind.addr = alloca i32, align 4
  %input_size = alloca i64, align 8
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !4558, metadata !DIExpression()), !dbg !4561
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4559, metadata !DIExpression()), !dbg !4562
  store i32 %szind, ptr %szind.addr, align 4, !tbaa !1534
  tail call void @llvm.dbg.declare(metadata ptr %szind.addr, metadata !4560, metadata !DIExpression()), !dbg !4563
  ret i1 false, !dbg !4564
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i1 @cache_bin_nonfast_aligned(ptr noundef %ptr) #2 !dbg !4567 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4571, metadata !DIExpression()), !dbg !4572
  ret i1 false, !dbg !4573
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @san_junk_ptr(ptr noundef %ptr, i64 noundef %usize) #5 !dbg !4576 {
entry:
  %ptr.addr = alloca ptr, align 8
  %usize.addr = alloca i64, align 8
  %first = alloca ptr, align 8
  %mid = alloca ptr, align 8
  %last = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4578, metadata !DIExpression()), !dbg !4583
  store i64 %usize, ptr %usize.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %usize.addr, metadata !4579, metadata !DIExpression()), !dbg !4584
  %call = call zeroext i1 @san_junk_ptr_should_slow(), !dbg !4585
  br i1 %call, label %if.then, label %if.end, !dbg !4587

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4588, !tbaa !1271
  %1 = load i64, ptr %usize.addr, align 8, !dbg !4590, !tbaa !1277
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 91, i64 %1, i1 false), !dbg !4591
  br label %return, !dbg !4592

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #10, !dbg !4593
  tail call void @llvm.dbg.declare(metadata ptr %first, metadata !4580, metadata !DIExpression()), !dbg !4594
  call void @llvm.lifetime.start.p0(i64 8, ptr %mid) #10, !dbg !4593
  tail call void @llvm.dbg.declare(metadata ptr %mid, metadata !4581, metadata !DIExpression()), !dbg !4595
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #10, !dbg !4593
  tail call void @llvm.dbg.declare(metadata ptr %last, metadata !4582, metadata !DIExpression()), !dbg !4596
  %2 = load ptr, ptr %ptr.addr, align 8, !dbg !4597, !tbaa !1271
  %3 = load i64, ptr %usize.addr, align 8, !dbg !4598, !tbaa !1277
  call void @san_junk_ptr_locations(ptr noundef %2, i64 noundef %3, ptr noundef %first, ptr noundef %mid, ptr noundef %last), !dbg !4599
  %4 = load ptr, ptr %first, align 8, !dbg !4600, !tbaa !1271
  store i64 6582955728264977243, ptr %4, align 8, !dbg !4601, !tbaa !1277
  %5 = load ptr, ptr %mid, align 8, !dbg !4602, !tbaa !1271
  store i64 6582955728264977243, ptr %5, align 8, !dbg !4603, !tbaa !1277
  %6 = load ptr, ptr %last, align 8, !dbg !4604, !tbaa !1271
  store i64 6582955728264977243, ptr %6, align 8, !dbg !4605, !tbaa !1277
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #10, !dbg !4606
  call void @llvm.lifetime.end.p0(i64 8, ptr %mid) #10, !dbg !4606
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #10, !dbg !4606
  br label %return, !dbg !4606

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4606
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i1 @cache_bin_stash(ptr noundef %bin, ptr noundef %ptr) #2 !dbg !4607 {
entry:
  %retval = alloca i1, align 1
  %bin.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %low_bits_head = alloca i16, align 2
  %diff = alloca i16, align 2
  store ptr %bin, ptr %bin.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %bin.addr, metadata !4611, metadata !DIExpression()), !dbg !4615
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4612, metadata !DIExpression()), !dbg !4616
  %0 = load ptr, ptr %bin.addr, align 8, !dbg !4617, !tbaa !1271
  %call = call zeroext i1 @cache_bin_full(ptr noundef %0), !dbg !4619
  br i1 %call, label %if.then, label %if.end, !dbg !4620

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4621
  br label %return, !dbg !4621

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr %low_bits_head) #10, !dbg !4623
  tail call void @llvm.dbg.declare(metadata ptr %low_bits_head, metadata !4613, metadata !DIExpression()), !dbg !4624
  %1 = load ptr, ptr %bin.addr, align 8, !dbg !4625, !tbaa !1271
  %stack_head = getelementptr inbounds %struct.cache_bin_s, ptr %1, i32 0, i32 0, !dbg !4626
  %2 = load ptr, ptr %stack_head, align 8, !dbg !4626, !tbaa !4627
  %3 = ptrtoint ptr %2 to i64, !dbg !4630
  %conv = trunc i64 %3 to i16, !dbg !4631
  store i16 %conv, ptr %low_bits_head, align 2, !dbg !4624, !tbaa !4446
  call void @llvm.lifetime.start.p0(i64 2, ptr %diff) #10, !dbg !4632
  tail call void @llvm.dbg.declare(metadata ptr %diff, metadata !4614, metadata !DIExpression()), !dbg !4633
  %4 = load ptr, ptr %bin.addr, align 8, !dbg !4634, !tbaa !1271
  %5 = load ptr, ptr %bin.addr, align 8, !dbg !4635, !tbaa !1271
  %low_bits_full = getelementptr inbounds %struct.cache_bin_s, ptr %5, i32 0, i32 3, !dbg !4636
  %6 = load i16, ptr %low_bits_full, align 2, !dbg !4636, !tbaa !4637
  %7 = load i16, ptr %low_bits_head, align 2, !dbg !4638, !tbaa !4446
  %call1 = call zeroext i16 @cache_bin_diff(ptr noundef %4, i16 noundef zeroext %6, i16 noundef zeroext %7, i1 noundef zeroext false), !dbg !4639
  store i16 %call1, ptr %diff, align 2, !dbg !4633, !tbaa !4446
  %8 = load ptr, ptr %ptr.addr, align 8, !dbg !4640, !tbaa !1271
  %9 = load ptr, ptr %bin.addr, align 8, !dbg !4641, !tbaa !1271
  %stack_head2 = getelementptr inbounds %struct.cache_bin_s, ptr %9, i32 0, i32 0, !dbg !4642
  %10 = load ptr, ptr %stack_head2, align 8, !dbg !4642, !tbaa !4627
  %11 = ptrtoint ptr %10 to i64, !dbg !4643
  %12 = load i16, ptr %diff, align 2, !dbg !4644, !tbaa !4446
  %conv3 = zext i16 %12 to i64, !dbg !4644
  %sub = sub i64 %11, %conv3, !dbg !4645
  %13 = inttoptr i64 %sub to ptr, !dbg !4646
  store ptr %8, ptr %13, align 8, !dbg !4647, !tbaa !1271
  br label %do.body, !dbg !4648

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !4649

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4649

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %bin.addr, align 8, !dbg !4651, !tbaa !1271
  %low_bits_full4 = getelementptr inbounds %struct.cache_bin_s, ptr %14, i32 0, i32 3, !dbg !4652
  %15 = load i16, ptr %low_bits_full4, align 2, !dbg !4653, !tbaa !4637
  %conv5 = zext i16 %15 to i64, !dbg !4653
  %add = add i64 %conv5, 8, !dbg !4653
  %conv6 = trunc i64 %add to i16, !dbg !4653
  store i16 %conv6, ptr %low_bits_full4, align 2, !dbg !4653, !tbaa !4637
  %16 = load ptr, ptr %bin.addr, align 8, !dbg !4654, !tbaa !1271
  %17 = load ptr, ptr %bin.addr, align 8, !dbg !4655, !tbaa !1271
  %low_bits_full7 = getelementptr inbounds %struct.cache_bin_s, ptr %17, i32 0, i32 3, !dbg !4656
  %18 = load i16, ptr %low_bits_full7, align 2, !dbg !4656, !tbaa !4637
  %19 = load i16, ptr %low_bits_head, align 2, !dbg !4657, !tbaa !4446
  call void @cache_bin_assert_earlier(ptr noundef %16, i16 noundef zeroext %18, i16 noundef zeroext %19), !dbg !4658
  store i1 true, ptr %retval, align 1, !dbg !4659
  call void @llvm.lifetime.end.p0(i64 2, ptr %diff) #10, !dbg !4660
  call void @llvm.lifetime.end.p0(i64 2, ptr %low_bits_head) #10, !dbg !4660
  br label %return

return:                                           ; preds = %do.end, %if.then
  %20 = load i1, ptr %retval, align 1, !dbg !4660
  ret i1 %20, !dbg !4660
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i1 @cache_bin_dalloc_easy(ptr noundef %bin, ptr noundef %ptr) #2 !dbg !4661 {
entry:
  %retval = alloca i1, align 1
  %bin.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  store ptr %bin, ptr %bin.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %bin.addr, metadata !4663, metadata !DIExpression()), !dbg !4665
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4664, metadata !DIExpression()), !dbg !4666
  %0 = load ptr, ptr %bin.addr, align 8, !dbg !4667, !tbaa !1271
  %call = call zeroext i1 @cache_bin_full(ptr noundef %0), !dbg !4667
  %lnot = xor i1 %call, true, !dbg !4667
  %lnot1 = xor i1 %lnot, true, !dbg !4667
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4667
  %conv = sext i32 %lnot.ext to i64, !dbg !4667
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4667
  %tobool = icmp ne i64 %expval, 0, !dbg !4667
  br i1 %tobool, label %if.then, label %if.end, !dbg !4669

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4670
  br label %return, !dbg !4670

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bin.addr, align 8, !dbg !4672, !tbaa !1271
  %stack_head = getelementptr inbounds %struct.cache_bin_s, ptr %1, i32 0, i32 0, !dbg !4673
  %2 = load ptr, ptr %stack_head, align 8, !dbg !4674, !tbaa !4627
  %incdec.ptr = getelementptr inbounds ptr, ptr %2, i32 -1, !dbg !4674
  store ptr %incdec.ptr, ptr %stack_head, align 8, !dbg !4674, !tbaa !4627
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !4675, !tbaa !1271
  %4 = load ptr, ptr %bin.addr, align 8, !dbg !4676, !tbaa !1271
  %stack_head2 = getelementptr inbounds %struct.cache_bin_s, ptr %4, i32 0, i32 0, !dbg !4677
  %5 = load ptr, ptr %stack_head2, align 8, !dbg !4677, !tbaa !4627
  store ptr %3, ptr %5, align 8, !dbg !4678, !tbaa !1271
  %6 = load ptr, ptr %bin.addr, align 8, !dbg !4679, !tbaa !1271
  %7 = load ptr, ptr %bin.addr, align 8, !dbg !4680, !tbaa !1271
  %low_bits_full = getelementptr inbounds %struct.cache_bin_s, ptr %7, i32 0, i32 3, !dbg !4681
  %8 = load i16, ptr %low_bits_full, align 2, !dbg !4681, !tbaa !4637
  %9 = load ptr, ptr %bin.addr, align 8, !dbg !4682, !tbaa !1271
  %stack_head3 = getelementptr inbounds %struct.cache_bin_s, ptr %9, i32 0, i32 0, !dbg !4683
  %10 = load ptr, ptr %stack_head3, align 8, !dbg !4683, !tbaa !4627
  %11 = ptrtoint ptr %10 to i64, !dbg !4684
  %conv4 = trunc i64 %11 to i16, !dbg !4685
  call void @cache_bin_assert_earlier(ptr noundef %6, i16 noundef zeroext %8, i16 noundef zeroext %conv4), !dbg !4686
  store i1 true, ptr %retval, align 1, !dbg !4687
  br label %return, !dbg !4687

return:                                           ; preds = %if.end, %if.then
  %12 = load i1, ptr %retval, align 1, !dbg !4688
  ret i1 %12, !dbg !4688
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i1 @tcache_small_bin_disabled(i32 noundef %ind, ptr noundef %bin) #2 !dbg !4689 {
entry:
  %ind.addr = alloca i32, align 4
  %bin.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  store i32 %ind, ptr %ind.addr, align 4, !tbaa !1534
  tail call void @llvm.dbg.declare(metadata ptr %ind.addr, metadata !4693, metadata !DIExpression()), !dbg !4696
  store ptr %bin, ptr %bin.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %bin.addr, metadata !4694, metadata !DIExpression()), !dbg !4697
  br label %do.body, !dbg !4698

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4699

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #10, !dbg !4701
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !4695, metadata !DIExpression()), !dbg !4702
  %0 = load ptr, ptr @tcache_bin_info, align 8, !dbg !4703, !tbaa !1271
  %1 = load i32, ptr %ind.addr, align 4, !dbg !4704, !tbaa !1534
  %idxprom = zext i32 %1 to i64, !dbg !4703
  %arrayidx = getelementptr inbounds %struct.cache_bin_info_s, ptr %0, i64 %idxprom, !dbg !4703
  %call = call zeroext i16 @cache_bin_info_ncached_max(ptr noundef %arrayidx), !dbg !4705
  %conv = zext i16 %call to i32, !dbg !4705
  %cmp = icmp eq i32 %conv, 0, !dbg !4706
  %frombool = zext i1 %cmp to i8, !dbg !4702
  store i8 %frombool, ptr %ret, align 1, !dbg !4702, !tbaa !1280
  %2 = load i8, ptr %ret, align 1, !dbg !4707, !tbaa !1280, !range !1290, !noundef !1291
  %tobool = trunc i8 %2 to i1, !dbg !4707
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4709

land.lhs.true:                                    ; preds = %do.end
  %3 = load ptr, ptr %bin.addr, align 8, !dbg !4710, !tbaa !1271
  %cmp3 = icmp ne ptr %3, null, !dbg !4711
  br i1 %cmp3, label %if.then, label %if.end, !dbg !4712

if.then:                                          ; preds = %land.lhs.true
  br label %do.body5, !dbg !4713

do.body5:                                         ; preds = %if.then
  br label %do.cond, !dbg !4715

do.cond:                                          ; preds = %do.body5
  br label %do.end6, !dbg !4715

do.end6:                                          ; preds = %do.cond
  br label %do.body7, !dbg !4717

do.body7:                                         ; preds = %do.end6
  br label %do.cond8, !dbg !4718

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !4718

do.end9:                                          ; preds = %do.cond8
  br label %if.end, !dbg !4720

if.end:                                           ; preds = %do.end9, %land.lhs.true, %do.end
  %4 = load i8, ptr %ret, align 1, !dbg !4721, !tbaa !1280, !range !1290, !noundef !1291
  %tobool10 = trunc i8 %4 to i1, !dbg !4721
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #10, !dbg !4722
  ret i1 %tobool10, !dbg !4723
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @cache_bin_info_ncached_max(ptr noundef %info) #5 !dbg !4724 {
entry:
  %info.addr = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4733, metadata !DIExpression()), !dbg !4734
  %0 = load ptr, ptr %info.addr, align 8, !dbg !4735, !tbaa !1271
  %ncached_max = getelementptr inbounds %struct.cache_bin_info_s, ptr %0, i32 0, i32 0, !dbg !4736
  %1 = load i16, ptr %ncached_max, align 2, !dbg !4736, !tbaa !4737
  ret i16 %1, !dbg !4739
}

declare !dbg !4740 void @tcache_bin_flush_small(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @san_junk_ptr_should_slow() #5 !dbg !4743 {
entry:
  ret i1 false, !dbg !4746
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @san_junk_ptr_locations(ptr noundef %ptr, i64 noundef %usize, ptr noundef %first, ptr noundef %mid, ptr noundef %last) #5 !dbg !4747 {
entry:
  %ptr.addr = alloca ptr, align 8
  %usize.addr = alloca i64, align 8
  %first.addr = alloca ptr, align 8
  %mid.addr = alloca ptr, align 8
  %last.addr = alloca ptr, align 8
  %ptr_sz = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4751, metadata !DIExpression()), !dbg !4757
  store i64 %usize, ptr %usize.addr, align 8, !tbaa !1277
  tail call void @llvm.dbg.declare(metadata ptr %usize.addr, metadata !4752, metadata !DIExpression()), !dbg !4758
  store ptr %first, ptr %first.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !4753, metadata !DIExpression()), !dbg !4759
  store ptr %mid, ptr %mid.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %mid.addr, metadata !4754, metadata !DIExpression()), !dbg !4760
  store ptr %last, ptr %last.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %last.addr, metadata !4755, metadata !DIExpression()), !dbg !4761
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr_sz) #10, !dbg !4762
  tail call void @llvm.dbg.declare(metadata ptr %ptr_sz, metadata !4756, metadata !DIExpression()), !dbg !4763
  store i64 8, ptr %ptr_sz, align 8, !dbg !4763, !tbaa !1277
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4764, !tbaa !1271
  %1 = load ptr, ptr %first.addr, align 8, !dbg !4765, !tbaa !1271
  store ptr %0, ptr %1, align 8, !dbg !4766, !tbaa !1271
  %2 = load ptr, ptr %ptr.addr, align 8, !dbg !4767, !tbaa !1271
  %3 = ptrtoint ptr %2 to i64, !dbg !4768
  %4 = load i64, ptr %usize.addr, align 8, !dbg !4769, !tbaa !1277
  %shr = lshr i64 %4, 1, !dbg !4770
  %5 = load i64, ptr %ptr_sz, align 8, !dbg !4771, !tbaa !1277
  %sub = sub i64 %5, 1, !dbg !4772
  %not = xor i64 %sub, -1, !dbg !4773
  %and = and i64 %shr, %not, !dbg !4774
  %add = add i64 %3, %and, !dbg !4775
  %6 = inttoptr i64 %add to ptr, !dbg !4776
  %7 = load ptr, ptr %mid.addr, align 8, !dbg !4777, !tbaa !1271
  store ptr %6, ptr %7, align 8, !dbg !4778, !tbaa !1271
  br label %do.body, !dbg !4779

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4780

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4780

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !4782

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !4783

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4783

do.end3:                                          ; preds = %do.cond2
  %8 = load ptr, ptr %ptr.addr, align 8, !dbg !4785, !tbaa !1271
  %9 = ptrtoint ptr %8 to i64, !dbg !4786
  %10 = load i64, ptr %usize.addr, align 8, !dbg !4787, !tbaa !1277
  %add4 = add i64 %9, %10, !dbg !4788
  %sub5 = sub i64 %add4, 8, !dbg !4789
  %11 = inttoptr i64 %sub5 to ptr, !dbg !4790
  %12 = load ptr, ptr %last.addr, align 8, !dbg !4791, !tbaa !1271
  store ptr %11, ptr %12, align 8, !dbg !4792, !tbaa !1271
  br label %do.body6, !dbg !4793

do.body6:                                         ; preds = %do.end3
  br label %do.cond7, !dbg !4794

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !4794

do.end8:                                          ; preds = %do.cond7
  br label %do.body9, !dbg !4796

do.body9:                                         ; preds = %do.end8
  br label %do.cond10, !dbg !4797

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !4797

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !4799

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !4800

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4800

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr_sz) #10, !dbg !4802
  ret void, !dbg !4802
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i1 @cache_bin_full(ptr noundef %bin) #2 !dbg !4803 {
entry:
  %bin.addr = alloca ptr, align 8
  store ptr %bin, ptr %bin.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %bin.addr, metadata !4807, metadata !DIExpression()), !dbg !4808
  %0 = load ptr, ptr %bin.addr, align 8, !dbg !4809, !tbaa !1271
  %stack_head = getelementptr inbounds %struct.cache_bin_s, ptr %0, i32 0, i32 0, !dbg !4810
  %1 = load ptr, ptr %stack_head, align 8, !dbg !4810, !tbaa !4627
  %2 = ptrtoint ptr %1 to i64, !dbg !4811
  %conv = trunc i64 %2 to i16, !dbg !4812
  %conv1 = zext i16 %conv to i32, !dbg !4812
  %3 = load ptr, ptr %bin.addr, align 8, !dbg !4813, !tbaa !1271
  %low_bits_full = getelementptr inbounds %struct.cache_bin_s, ptr %3, i32 0, i32 3, !dbg !4814
  %4 = load i16, ptr %low_bits_full, align 2, !dbg !4814, !tbaa !4637
  %conv2 = zext i16 %4 to i32, !dbg !4813
  %cmp = icmp eq i32 %conv1, %conv2, !dbg !4815
  ret i1 %cmp, !dbg !4816
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @cache_bin_diff(ptr noundef %bin, i16 noundef zeroext %earlier, i16 noundef zeroext %later, i1 noundef zeroext %racy) #5 !dbg !4817 {
entry:
  %bin.addr = alloca ptr, align 8
  %earlier.addr = alloca i16, align 2
  %later.addr = alloca i16, align 2
  %racy.addr = alloca i8, align 1
  store ptr %bin, ptr %bin.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %bin.addr, metadata !4821, metadata !DIExpression()), !dbg !4825
  store i16 %earlier, ptr %earlier.addr, align 2, !tbaa !4446
  tail call void @llvm.dbg.declare(metadata ptr %earlier.addr, metadata !4822, metadata !DIExpression()), !dbg !4826
  store i16 %later, ptr %later.addr, align 2, !tbaa !4446
  tail call void @llvm.dbg.declare(metadata ptr %later.addr, metadata !4823, metadata !DIExpression()), !dbg !4827
  %frombool = zext i1 %racy to i8
  store i8 %frombool, ptr %racy.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %racy.addr, metadata !4824, metadata !DIExpression()), !dbg !4828
  %0 = load i8, ptr %racy.addr, align 1, !dbg !4829, !tbaa !1280, !range !1290, !noundef !1291
  %tobool = trunc i8 %0 to i1, !dbg !4829
  br i1 %tobool, label %if.end, label %if.then, !dbg !4831

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bin.addr, align 8, !dbg !4832, !tbaa !1271
  %2 = load i16, ptr %earlier.addr, align 2, !dbg !4834, !tbaa !4446
  %3 = load i16, ptr %later.addr, align 2, !dbg !4835, !tbaa !4446
  call void @cache_bin_assert_earlier(ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3), !dbg !4836
  br label %if.end, !dbg !4837

if.end:                                           ; preds = %if.then, %entry
  %4 = load i16, ptr %later.addr, align 2, !dbg !4838, !tbaa !4446
  %conv = zext i16 %4 to i32, !dbg !4838
  %5 = load i16, ptr %earlier.addr, align 2, !dbg !4839, !tbaa !4446
  %conv1 = zext i16 %5 to i32, !dbg !4839
  %sub = sub nsw i32 %conv, %conv1, !dbg !4840
  %conv2 = trunc i32 %sub to i16, !dbg !4838
  ret i16 %conv2, !dbg !4841
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cache_bin_assert_earlier(ptr noundef %bin, i16 noundef zeroext %earlier, i16 noundef zeroext %later) #5 !dbg !4842 {
entry:
  %bin.addr = alloca ptr, align 8
  %earlier.addr = alloca i16, align 2
  %later.addr = alloca i16, align 2
  store ptr %bin, ptr %bin.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %bin.addr, metadata !4846, metadata !DIExpression()), !dbg !4849
  store i16 %earlier, ptr %earlier.addr, align 2, !tbaa !4446
  tail call void @llvm.dbg.declare(metadata ptr %earlier.addr, metadata !4847, metadata !DIExpression()), !dbg !4850
  store i16 %later, ptr %later.addr, align 2, !tbaa !4446
  tail call void @llvm.dbg.declare(metadata ptr %later.addr, metadata !4848, metadata !DIExpression()), !dbg !4851
  %0 = load i16, ptr %earlier.addr, align 2, !dbg !4852, !tbaa !4446
  %conv = zext i16 %0 to i32, !dbg !4852
  %1 = load i16, ptr %later.addr, align 2, !dbg !4854, !tbaa !4446
  %conv1 = zext i16 %1 to i32, !dbg !4854
  %cmp = icmp sgt i32 %conv, %conv1, !dbg !4855
  br i1 %cmp, label %if.then, label %if.end, !dbg !4856

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4857

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !4859

do.end:                                           ; preds = %do.body
  br label %if.end, !dbg !4861

if.end:                                           ; preds = %do.end, %entry
  ret void, !dbg !4862
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @tcache_dalloc_large(ptr noundef %tsd, ptr noundef %tcache, ptr noundef %ptr, i32 noundef %binind, i1 noundef zeroext %slow_path) #2 !dbg !4863 {
entry:
  %tsd.addr = alloca ptr, align 8
  %tcache.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %binind.addr = alloca i32, align 4
  %slow_path.addr = alloca i8, align 1
  %bin = alloca ptr, align 8
  %remain = alloca i32, align 4
  %ret = alloca i8, align 1
  store ptr %tsd, ptr %tsd.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsd.addr, metadata !4865, metadata !DIExpression()), !dbg !4875
  store ptr %tcache, ptr %tcache.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tcache.addr, metadata !4866, metadata !DIExpression()), !dbg !4876
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4867, metadata !DIExpression()), !dbg !4877
  store i32 %binind, ptr %binind.addr, align 4, !tbaa !1534
  tail call void @llvm.dbg.declare(metadata ptr %binind.addr, metadata !4868, metadata !DIExpression()), !dbg !4878
  %frombool = zext i1 %slow_path to i8
  store i8 %frombool, ptr %slow_path.addr, align 1, !tbaa !1280
  tail call void @llvm.dbg.declare(metadata ptr %slow_path.addr, metadata !4869, metadata !DIExpression()), !dbg !4879
  br label %do.body, !dbg !4880

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4881

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4883

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4884

do.end2:                                          ; preds = %do.body1
  call void @llvm.lifetime.start.p0(i64 8, ptr %bin) #10, !dbg !4886
  tail call void @llvm.dbg.declare(metadata ptr %bin, metadata !4870, metadata !DIExpression()), !dbg !4887
  %0 = load ptr, ptr %tcache.addr, align 8, !dbg !4888, !tbaa !1271
  %bins = getelementptr inbounds %struct.tcache_s, ptr %0, i32 0, i32 1, !dbg !4889
  %1 = load i32, ptr %binind.addr, align 4, !dbg !4890, !tbaa !1534
  %idxprom = zext i32 %1 to i64, !dbg !4888
  %arrayidx = getelementptr inbounds [73 x %struct.cache_bin_s], ptr %bins, i64 0, i64 %idxprom, !dbg !4888
  store ptr %arrayidx, ptr %bin, align 8, !dbg !4887, !tbaa !1271
  %2 = load ptr, ptr %bin, align 8, !dbg !4891, !tbaa !1271
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !4891, !tbaa !1271
  %call = call zeroext i1 @cache_bin_dalloc_easy(ptr noundef %2, ptr noundef %3), !dbg !4891
  %lnot = xor i1 %call, true, !dbg !4891
  %lnot3 = xor i1 %lnot, true, !dbg !4891
  %lnot4 = xor i1 %lnot3, true, !dbg !4891
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4891
  %conv = sext i32 %lnot.ext to i64, !dbg !4891
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4891
  %tobool = icmp ne i64 %expval, 0, !dbg !4891
  br i1 %tobool, label %if.then, label %if.end, !dbg !4892

if.then:                                          ; preds = %do.end2
  call void @llvm.lifetime.start.p0(i64 4, ptr %remain) #10, !dbg !4893
  tail call void @llvm.dbg.declare(metadata ptr %remain, metadata !4871, metadata !DIExpression()), !dbg !4894
  %4 = load ptr, ptr @tcache_bin_info, align 8, !dbg !4895, !tbaa !1271
  %5 = load i32, ptr %binind.addr, align 4, !dbg !4896, !tbaa !1534
  %idxprom5 = zext i32 %5 to i64, !dbg !4895
  %arrayidx6 = getelementptr inbounds %struct.cache_bin_info_s, ptr %4, i64 %idxprom5, !dbg !4895
  %call7 = call zeroext i16 @cache_bin_info_ncached_max(ptr noundef %arrayidx6), !dbg !4897
  %conv8 = zext i16 %call7 to i32, !dbg !4897
  %6 = load i32, ptr @opt_lg_tcache_flush_large_div, align 4, !dbg !4898, !tbaa !1534
  %shr = ashr i32 %conv8, %6, !dbg !4899
  store i32 %shr, ptr %remain, align 4, !dbg !4894, !tbaa !1534
  %7 = load ptr, ptr %tsd.addr, align 8, !dbg !4900, !tbaa !1271
  %8 = load ptr, ptr %tcache.addr, align 8, !dbg !4901, !tbaa !1271
  %9 = load ptr, ptr %bin, align 8, !dbg !4902, !tbaa !1271
  %10 = load i32, ptr %binind.addr, align 4, !dbg !4903, !tbaa !1534
  %11 = load i32, ptr %remain, align 4, !dbg !4904, !tbaa !1534
  call void @tcache_bin_flush_large(ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11), !dbg !4905
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #10, !dbg !4906
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !4874, metadata !DIExpression()), !dbg !4907
  %12 = load ptr, ptr %bin, align 8, !dbg !4908, !tbaa !1271
  %13 = load ptr, ptr %ptr.addr, align 8, !dbg !4909, !tbaa !1271
  %call9 = call zeroext i1 @cache_bin_dalloc_easy(ptr noundef %12, ptr noundef %13), !dbg !4910
  %frombool10 = zext i1 %call9 to i8, !dbg !4907
  store i8 %frombool10, ptr %ret, align 1, !dbg !4907, !tbaa !1280
  br label %do.body11, !dbg !4911

do.body11:                                        ; preds = %if.then
  br label %do.cond, !dbg !4912

do.cond:                                          ; preds = %do.body11
  br label %do.end12, !dbg !4912

do.end12:                                         ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #10, !dbg !4914
  call void @llvm.lifetime.end.p0(i64 4, ptr %remain) #10, !dbg !4914
  br label %if.end, !dbg !4915

if.end:                                           ; preds = %do.end12, %do.end2
  call void @llvm.lifetime.end.p0(i64 8, ptr %bin) #10, !dbg !4916
  ret void, !dbg !4916
}

declare !dbg !4917 void @tcache_bin_flush_large(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @edata_list_active_remove(ptr noundef %list, ptr noundef %item) #5 !dbg !4918 {
entry:
  %list.addr = alloca ptr, align 8
  %item.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4920, metadata !DIExpression()), !dbg !4922
  store ptr %item, ptr %item.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %item.addr, metadata !4921, metadata !DIExpression()), !dbg !4922
  br label %do.body, !dbg !4922

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4923, !tbaa !1271
  %head = getelementptr inbounds %struct.edata_list_active_t, ptr %0, i32 0, i32 0, !dbg !4923
  %qlh_first = getelementptr inbounds %struct.anon.3, ptr %head, i32 0, i32 0, !dbg !4923
  %1 = load ptr, ptr %qlh_first, align 8, !dbg !4923, !tbaa !1586
  %2 = load ptr, ptr %item.addr, align 8, !dbg !4923, !tbaa !1271
  %cmp = icmp eq ptr %1, %2, !dbg !4923
  br i1 %cmp, label %if.then, label %if.end, !dbg !4926

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %list.addr, align 8, !dbg !4927, !tbaa !1271
  %head1 = getelementptr inbounds %struct.edata_list_active_t, ptr %3, i32 0, i32 0, !dbg !4927
  %qlh_first2 = getelementptr inbounds %struct.anon.3, ptr %head1, i32 0, i32 0, !dbg !4927
  %4 = load ptr, ptr %qlh_first2, align 8, !dbg !4927, !tbaa !1586
  %5 = getelementptr inbounds %struct.edata_s, ptr %4, i32 0, i32 5, !dbg !4927
  %qre_next = getelementptr inbounds %struct.anon.12, ptr %5, i32 0, i32 0, !dbg !4927
  %6 = load ptr, ptr %qre_next, align 8, !dbg !4927, !tbaa !1582
  %7 = load ptr, ptr %list.addr, align 8, !dbg !4927, !tbaa !1271
  %head3 = getelementptr inbounds %struct.edata_list_active_t, ptr %7, i32 0, i32 0, !dbg !4927
  %qlh_first4 = getelementptr inbounds %struct.anon.3, ptr %head3, i32 0, i32 0, !dbg !4927
  store ptr %6, ptr %qlh_first4, align 8, !dbg !4927, !tbaa !1586
  br label %if.end, !dbg !4927

if.end:                                           ; preds = %if.then, %do.body
  %8 = load ptr, ptr %list.addr, align 8, !dbg !4929, !tbaa !1271
  %head5 = getelementptr inbounds %struct.edata_list_active_t, ptr %8, i32 0, i32 0, !dbg !4929
  %qlh_first6 = getelementptr inbounds %struct.anon.3, ptr %head5, i32 0, i32 0, !dbg !4929
  %9 = load ptr, ptr %qlh_first6, align 8, !dbg !4929, !tbaa !1586
  %10 = load ptr, ptr %item.addr, align 8, !dbg !4929, !tbaa !1271
  %cmp7 = icmp ne ptr %9, %10, !dbg !4929
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !4926

if.then8:                                         ; preds = %if.end
  br label %do.body9, !dbg !4931

do.body9:                                         ; preds = %if.then8
  %11 = load ptr, ptr %item.addr, align 8, !dbg !4933, !tbaa !1271
  %12 = getelementptr inbounds %struct.edata_s, ptr %11, i32 0, i32 5, !dbg !4933
  %qre_next10 = getelementptr inbounds %struct.anon.12, ptr %12, i32 0, i32 0, !dbg !4933
  %13 = load ptr, ptr %qre_next10, align 8, !dbg !4933, !tbaa !1582
  %14 = getelementptr inbounds %struct.edata_s, ptr %13, i32 0, i32 5, !dbg !4933
  %qre_prev = getelementptr inbounds %struct.anon.12, ptr %14, i32 0, i32 1, !dbg !4933
  %15 = load ptr, ptr %qre_prev, align 8, !dbg !4933, !tbaa !1582
  %16 = load ptr, ptr %item.addr, align 8, !dbg !4933, !tbaa !1271
  %17 = getelementptr inbounds %struct.edata_s, ptr %16, i32 0, i32 5, !dbg !4933
  %qre_prev11 = getelementptr inbounds %struct.anon.12, ptr %17, i32 0, i32 1, !dbg !4933
  %18 = load ptr, ptr %qre_prev11, align 8, !dbg !4933, !tbaa !1582
  %19 = getelementptr inbounds %struct.edata_s, ptr %18, i32 0, i32 5, !dbg !4933
  %qre_next12 = getelementptr inbounds %struct.anon.12, ptr %19, i32 0, i32 0, !dbg !4933
  store ptr %15, ptr %qre_next12, align 8, !dbg !4933, !tbaa !1582
  %20 = load ptr, ptr %item.addr, align 8, !dbg !4933, !tbaa !1271
  %21 = getelementptr inbounds %struct.edata_s, ptr %20, i32 0, i32 5, !dbg !4933
  %qre_prev13 = getelementptr inbounds %struct.anon.12, ptr %21, i32 0, i32 1, !dbg !4933
  %22 = load ptr, ptr %qre_prev13, align 8, !dbg !4933, !tbaa !1582
  %23 = load ptr, ptr %item.addr, align 8, !dbg !4933, !tbaa !1271
  %24 = getelementptr inbounds %struct.edata_s, ptr %23, i32 0, i32 5, !dbg !4933
  %qre_next14 = getelementptr inbounds %struct.anon.12, ptr %24, i32 0, i32 0, !dbg !4933
  %25 = load ptr, ptr %qre_next14, align 8, !dbg !4933, !tbaa !1582
  %26 = getelementptr inbounds %struct.edata_s, ptr %25, i32 0, i32 5, !dbg !4933
  %qre_prev15 = getelementptr inbounds %struct.anon.12, ptr %26, i32 0, i32 1, !dbg !4933
  store ptr %22, ptr %qre_prev15, align 8, !dbg !4933, !tbaa !1582
  %27 = load ptr, ptr %item.addr, align 8, !dbg !4933, !tbaa !1271
  %28 = getelementptr inbounds %struct.edata_s, ptr %27, i32 0, i32 5, !dbg !4933
  %qre_prev16 = getelementptr inbounds %struct.anon.12, ptr %28, i32 0, i32 1, !dbg !4933
  %29 = load ptr, ptr %qre_prev16, align 8, !dbg !4933, !tbaa !1582
  %30 = getelementptr inbounds %struct.edata_s, ptr %29, i32 0, i32 5, !dbg !4933
  %qre_next17 = getelementptr inbounds %struct.anon.12, ptr %30, i32 0, i32 0, !dbg !4933
  %31 = load ptr, ptr %qre_next17, align 8, !dbg !4933, !tbaa !1582
  %32 = load ptr, ptr %item.addr, align 8, !dbg !4933, !tbaa !1271
  %33 = getelementptr inbounds %struct.edata_s, ptr %32, i32 0, i32 5, !dbg !4933
  %qre_prev18 = getelementptr inbounds %struct.anon.12, ptr %33, i32 0, i32 1, !dbg !4933
  store ptr %31, ptr %qre_prev18, align 8, !dbg !4933, !tbaa !1582
  %34 = load ptr, ptr %item.addr, align 8, !dbg !4933, !tbaa !1271
  %35 = getelementptr inbounds %struct.edata_s, ptr %34, i32 0, i32 5, !dbg !4933
  %qre_next19 = getelementptr inbounds %struct.anon.12, ptr %35, i32 0, i32 0, !dbg !4933
  %36 = load ptr, ptr %qre_next19, align 8, !dbg !4933, !tbaa !1582
  %37 = load ptr, ptr %item.addr, align 8, !dbg !4933, !tbaa !1271
  %38 = getelementptr inbounds %struct.edata_s, ptr %37, i32 0, i32 5, !dbg !4933
  %qre_next20 = getelementptr inbounds %struct.anon.12, ptr %38, i32 0, i32 0, !dbg !4933
  %39 = load ptr, ptr %qre_next20, align 8, !dbg !4933, !tbaa !1582
  %40 = getelementptr inbounds %struct.edata_s, ptr %39, i32 0, i32 5, !dbg !4933
  %qre_prev21 = getelementptr inbounds %struct.anon.12, ptr %40, i32 0, i32 1, !dbg !4933
  %41 = load ptr, ptr %qre_prev21, align 8, !dbg !4933, !tbaa !1582
  %42 = getelementptr inbounds %struct.edata_s, ptr %41, i32 0, i32 5, !dbg !4933
  %qre_next22 = getelementptr inbounds %struct.anon.12, ptr %42, i32 0, i32 0, !dbg !4933
  store ptr %36, ptr %qre_next22, align 8, !dbg !4933, !tbaa !1582
  %43 = load ptr, ptr %item.addr, align 8, !dbg !4933, !tbaa !1271
  %44 = load ptr, ptr %item.addr, align 8, !dbg !4933, !tbaa !1271
  %45 = getelementptr inbounds %struct.edata_s, ptr %44, i32 0, i32 5, !dbg !4933
  %qre_prev23 = getelementptr inbounds %struct.anon.12, ptr %45, i32 0, i32 1, !dbg !4933
  %46 = load ptr, ptr %qre_prev23, align 8, !dbg !4933, !tbaa !1582
  %47 = getelementptr inbounds %struct.edata_s, ptr %46, i32 0, i32 5, !dbg !4933
  %qre_next24 = getelementptr inbounds %struct.anon.12, ptr %47, i32 0, i32 0, !dbg !4933
  store ptr %43, ptr %qre_next24, align 8, !dbg !4933, !tbaa !1582
  br label %do.end, !dbg !4933

do.end:                                           ; preds = %do.body9
  br label %if.end29, !dbg !4931

if.else:                                          ; preds = %if.end
  br label %do.body25, !dbg !4935

do.body25:                                        ; preds = %if.else
  %48 = load ptr, ptr %list.addr, align 8, !dbg !4937, !tbaa !1271
  %head26 = getelementptr inbounds %struct.edata_list_active_t, ptr %48, i32 0, i32 0, !dbg !4937
  %qlh_first27 = getelementptr inbounds %struct.anon.3, ptr %head26, i32 0, i32 0, !dbg !4937
  store ptr null, ptr %qlh_first27, align 8, !dbg !4937, !tbaa !1586
  br label %do.end28, !dbg !4937

do.end28:                                         ; preds = %do.body25
  br label %if.end29

if.end29:                                         ; preds = %do.end28, %do.end
  br label %do.end30, !dbg !4926

do.end30:                                         ; preds = %if.end29
  ret void, !dbg !4922
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @malloc_mutex_assert_owner(ptr noundef %tsdn, ptr noundef %mutex) #5 !dbg !4939 {
entry:
  %tsdn.addr = alloca ptr, align 8
  %mutex.addr = alloca ptr, align 8
  store ptr %tsdn, ptr %tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tsdn.addr, metadata !4941, metadata !DIExpression()), !dbg !4943
  store ptr %mutex, ptr %mutex.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %mutex.addr, metadata !4942, metadata !DIExpression()), !dbg !4944
  %0 = load ptr, ptr %tsdn.addr, align 8, !dbg !4945, !tbaa !1271
  %call = call ptr @tsdn_witness_tsdp_get(ptr noundef %0), !dbg !4946
  %1 = load ptr, ptr %mutex.addr, align 8, !dbg !4947, !tbaa !1271
  %2 = getelementptr inbounds %struct.malloc_mutex_s, ptr %1, i32 0, i32 0, !dbg !4948
  call void @witness_assert_owner(ptr noundef %call, ptr noundef %2), !dbg !4949
  ret void, !dbg !4950
}

declare !dbg !4951 void @arena_extent_dalloc_large_prep(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @witness_assert_owner(ptr noundef %witness_tsdn, ptr noundef %witness) #5 !dbg !4952 {
entry:
  %witness_tsdn.addr = alloca ptr, align 8
  %witness.addr = alloca ptr, align 8
  %witness_tsd = alloca ptr, align 8
  store ptr %witness_tsdn, ptr %witness_tsdn.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %witness_tsdn.addr, metadata !4954, metadata !DIExpression()), !dbg !4957
  store ptr %witness, ptr %witness.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %witness.addr, metadata !4955, metadata !DIExpression()), !dbg !4958
  call void @llvm.lifetime.start.p0(i64 8, ptr %witness_tsd) #10, !dbg !4959
  tail call void @llvm.dbg.declare(metadata ptr %witness_tsd, metadata !4956, metadata !DIExpression()), !dbg !4960
  call void @llvm.lifetime.end.p0(i64 8, ptr %witness_tsd) #10, !dbg !4961
  ret void, !dbg !4961
}

declare !dbg !4962 void @pa_dalloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @edata_prof_tctx_set(ptr noundef %edata, ptr noundef %tctx) #5 !dbg !4965 {
entry:
  %edata.addr = alloca ptr, align 8
  %tctx.addr = alloca ptr, align 8
  store ptr %edata, ptr %edata.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %edata.addr, metadata !4967, metadata !DIExpression()), !dbg !4969
  store ptr %tctx, ptr %tctx.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %tctx.addr, metadata !4968, metadata !DIExpression()), !dbg !4970
  %0 = load ptr, ptr %edata.addr, align 8, !dbg !4971, !tbaa !1271
  %1 = getelementptr inbounds %struct.edata_s, ptr %0, i32 0, i32 6, !dbg !4972
  %e_prof_tctx = getelementptr inbounds %struct.e_prof_info_s, ptr %1, i32 0, i32 2, !dbg !4973
  %2 = load ptr, ptr %tctx.addr, align 8, !dbg !4974, !tbaa !1271
  call void @atomic_store_p(ptr noundef %e_prof_tctx, ptr noundef %2, i32 noundef 2), !dbg !4975
  ret void, !dbg !4976
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @atomic_store_p(ptr noundef %a, ptr noundef %val, i32 noundef %mo) #2 !dbg !4977 {
entry:
  %a.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %mo.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !4982, metadata !DIExpression()), !dbg !4985
  store ptr %val, ptr %val.addr, align 8, !tbaa !1271
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4983, metadata !DIExpression()), !dbg !4985
  store i32 %mo, ptr %mo.addr, align 4, !tbaa !1582
  tail call void @llvm.dbg.declare(metadata ptr %mo.addr, metadata !4984, metadata !DIExpression()), !dbg !4985
  %0 = load ptr, ptr %a.addr, align 8, !dbg !4985, !tbaa !1271
  %repr = getelementptr inbounds %struct.atomic_p_t, ptr %0, i32 0, i32 0, !dbg !4985
  %1 = load i32, ptr %mo.addr, align 4, !dbg !4985, !tbaa !1582
  %call = call i32 @atomic_enum_to_builtin(i32 noundef %1), !dbg !4985
  switch i32 %call, label %monotonic [
    i32 3, label %release
    i32 5, label %seqcst
  ], !dbg !4985

monotonic:                                        ; preds = %entry
  %2 = load i64, ptr %val.addr, align 8, !dbg !4985
  store atomic i64 %2, ptr %repr monotonic, align 8, !dbg !4985
  br label %atomic.continue, !dbg !4985

release:                                          ; preds = %entry
  %3 = load i64, ptr %val.addr, align 8, !dbg !4985
  store atomic i64 %3, ptr %repr release, align 8, !dbg !4985
  br label %atomic.continue, !dbg !4985

seqcst:                                           ; preds = %entry
  %4 = load i64, ptr %val.addr, align 8, !dbg !4985
  store atomic i64 %4, ptr %repr seq_cst, align 8, !dbg !4985
  br label %atomic.continue, !dbg !4985

atomic.continue:                                  ; preds = %seqcst, %release, %monotonic
  ret void, !dbg !4985
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1257, !1258, !1259, !1260, !1261}
!llvm.ident = !{!1262}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "rtree_levels", scope: !2, file: !696, line: 116, type: !1250, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !117, globals: !1245, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/large.c", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "c3c551bb354849e304709d59596b0ad5")
!4 = !{!5, !52, !57, !67, !73, !84, !91, !98, !109}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "witness_rank_e", file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "include/jemalloc/internal/witness.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "d652ac3ca3dd6f78d1c9432cb1aa5b31")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!9 = !DIEnumerator(name: "WITNESS_RANK_OMIT", value: 0)
!10 = !DIEnumerator(name: "WITNESS_RANK_MIN", value: 1)
!11 = !DIEnumerator(name: "WITNESS_RANK_INIT", value: 1)
!12 = !DIEnumerator(name: "WITNESS_RANK_CTL", value: 2)
!13 = !DIEnumerator(name: "WITNESS_RANK_TCACHES", value: 3)
!14 = !DIEnumerator(name: "WITNESS_RANK_ARENAS", value: 4)
!15 = !DIEnumerator(name: "WITNESS_RANK_BACKGROUND_THREAD_GLOBAL", value: 5)
!16 = !DIEnumerator(name: "WITNESS_RANK_PROF_DUMP", value: 6)
!17 = !DIEnumerator(name: "WITNESS_RANK_PROF_BT2GCTX", value: 7)
!18 = !DIEnumerator(name: "WITNESS_RANK_PROF_TDATAS", value: 8)
!19 = !DIEnumerator(name: "WITNESS_RANK_PROF_TDATA", value: 9)
!20 = !DIEnumerator(name: "WITNESS_RANK_PROF_LOG", value: 10)
!21 = !DIEnumerator(name: "WITNESS_RANK_PROF_GCTX", value: 11)
!22 = !DIEnumerator(name: "WITNESS_RANK_PROF_RECENT_DUMP", value: 12)
!23 = !DIEnumerator(name: "WITNESS_RANK_BACKGROUND_THREAD", value: 13)
!24 = !DIEnumerator(name: "WITNESS_RANK_CORE", value: 14)
!25 = !DIEnumerator(name: "WITNESS_RANK_DECAY", value: 14)
!26 = !DIEnumerator(name: "WITNESS_RANK_TCACHE_QL", value: 15)
!27 = !DIEnumerator(name: "WITNESS_RANK_SEC_SHARD", value: 16)
!28 = !DIEnumerator(name: "WITNESS_RANK_EXTENT_GROW", value: 17)
!29 = !DIEnumerator(name: "WITNESS_RANK_HPA_SHARD_GROW", value: 17)
!30 = !DIEnumerator(name: "WITNESS_RANK_SAN_BUMP_ALLOC", value: 17)
!31 = !DIEnumerator(name: "WITNESS_RANK_EXTENTS", value: 18)
!32 = !DIEnumerator(name: "WITNESS_RANK_HPA_SHARD", value: 18)
!33 = !DIEnumerator(name: "WITNESS_RANK_HPA_CENTRAL_GROW", value: 19)
!34 = !DIEnumerator(name: "WITNESS_RANK_HPA_CENTRAL", value: 20)
!35 = !DIEnumerator(name: "WITNESS_RANK_EDATA_CACHE", value: 21)
!36 = !DIEnumerator(name: "WITNESS_RANK_RTREE", value: 22)
!37 = !DIEnumerator(name: "WITNESS_RANK_BASE", value: 23)
!38 = !DIEnumerator(name: "WITNESS_RANK_ARENA_LARGE", value: 24)
!39 = !DIEnumerator(name: "WITNESS_RANK_HOOK", value: 25)
!40 = !DIEnumerator(name: "WITNESS_RANK_LEAF", value: 4096)
!41 = !DIEnumerator(name: "WITNESS_RANK_BIN", value: 4096)
!42 = !DIEnumerator(name: "WITNESS_RANK_ARENA_STATS", value: 4096)
!43 = !DIEnumerator(name: "WITNESS_RANK_COUNTER_ACCUM", value: 4096)
!44 = !DIEnumerator(name: "WITNESS_RANK_DSS", value: 4096)
!45 = !DIEnumerator(name: "WITNESS_RANK_PROF_ACTIVE", value: 4096)
!46 = !DIEnumerator(name: "WITNESS_RANK_PROF_DUMP_FILENAME", value: 4096)
!47 = !DIEnumerator(name: "WITNESS_RANK_PROF_GDUMP", value: 4096)
!48 = !DIEnumerator(name: "WITNESS_RANK_PROF_NEXT_THR_UID", value: 4096)
!49 = !DIEnumerator(name: "WITNESS_RANK_PROF_RECENT_ALLOC", value: 4096)
!50 = !DIEnumerator(name: "WITNESS_RANK_PROF_STATS", value: 4096)
!51 = !DIEnumerator(name: "WITNESS_RANK_PROF_THREAD_ACTIVE_INIT", value: 4096)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !53, line: 11, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "include/jemalloc/internal/mutex.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "08001f5b74b50ac229aa7009b590c926")
!54 = !{!55, !56}
!55 = !DIEnumerator(name: "malloc_mutex_rank_exclusive", value: 0)
!56 = !DIEnumerator(name: "malloc_mutex_address_ordered", value: 1)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "extent_state_e", file: !58, line: 22, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "include/jemalloc/internal/edata.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "b6c0b5edee99d6b984431f6665890a31")
!59 = !{!60, !61, !62, !63, !64, !65, !66}
!60 = !DIEnumerator(name: "extent_state_active", value: 0)
!61 = !DIEnumerator(name: "extent_state_dirty", value: 1)
!62 = !DIEnumerator(name: "extent_state_muzzy", value: 2)
!63 = !DIEnumerator(name: "extent_state_retained", value: 3)
!64 = !DIEnumerator(name: "extent_state_transition", value: 4)
!65 = !DIEnumerator(name: "extent_state_merging", value: 5)
!66 = !DIEnumerator(name: "extent_state_max", value: 5)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hook_expand_e", file: !68, line: 85, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "include/jemalloc/internal/hook.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "cba63ef3cb81715a9e481d9adc3b20e5")
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "hook_expand_realloc", value: 0)
!71 = !DIEnumerator(name: "hook_expand_rallocx", value: 1)
!72 = !DIEnumerator(name: "hook_expand_xallocx", value: 2)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hook_alloc_e", file: !68, line: 51, baseType: !7, size: 32, elements: !74)
!74 = !{!75, !76, !77, !78, !79, !80, !81, !82, !83}
!75 = !DIEnumerator(name: "hook_alloc_malloc", value: 0)
!76 = !DIEnumerator(name: "hook_alloc_posix_memalign", value: 1)
!77 = !DIEnumerator(name: "hook_alloc_aligned_alloc", value: 2)
!78 = !DIEnumerator(name: "hook_alloc_calloc", value: 3)
!79 = !DIEnumerator(name: "hook_alloc_memalign", value: 4)
!80 = !DIEnumerator(name: "hook_alloc_valloc", value: 5)
!81 = !DIEnumerator(name: "hook_alloc_mallocx", value: 6)
!82 = !DIEnumerator(name: "hook_alloc_realloc", value: 7)
!83 = !DIEnumerator(name: "hook_alloc_rallocx", value: 8)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hook_dalloc_e", file: !68, line: 70, baseType: !7, size: 32, elements: !85)
!85 = !{!86, !87, !88, !89, !90}
!86 = !DIEnumerator(name: "hook_dalloc_free", value: 0)
!87 = !DIEnumerator(name: "hook_dalloc_dallocx", value: 1)
!88 = !DIEnumerator(name: "hook_dalloc_sdallocx", value: 2)
!89 = !DIEnumerator(name: "hook_dalloc_realloc", value: 3)
!90 = !DIEnumerator(name: "hook_dalloc_rallocx", value: 4)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !92, line: 37, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "include/jemalloc/internal/prof_structs.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "64094bed4a0e2fead984334a22440ce3")
!93 = !{!94, !95, !96, !97}
!94 = !DIEnumerator(name: "prof_tctx_state_initializing", value: 0)
!95 = !DIEnumerator(name: "prof_tctx_state_nominal", value: 1)
!96 = !DIEnumerator(name: "prof_tctx_state_dumping", value: 2)
!97 = !DIEnumerator(name: "prof_tctx_state_purgatory", value: 3)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !99, line: 15, baseType: !7, size: 32, elements: !100)
!99 = !DIFile(filename: "include/jemalloc/internal/arena_types.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "01f174d5dbd48b6d9a7feb0a552137b0")
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108}
!101 = !DIEnumerator(name: "percpu_arena_mode_names_base", value: 0)
!102 = !DIEnumerator(name: "percpu_arena_uninit", value: 0)
!103 = !DIEnumerator(name: "per_phycpu_arena_uninit", value: 1)
!104 = !DIEnumerator(name: "percpu_arena_disabled", value: 2)
!105 = !DIEnumerator(name: "percpu_arena_mode_names_limit", value: 3)
!106 = !DIEnumerator(name: "percpu_arena_mode_enabled_base", value: 3)
!107 = !DIEnumerator(name: "percpu_arena", value: 3)
!108 = !DIEnumerator(name: "per_phycpu_arena", value: 4)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !110, line: 8, baseType: !7, size: 32, elements: !111)
!110 = !DIFile(filename: "include/jemalloc/internal/atomic_gcc_atomic.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "08b4de137309508f556f5697e2840f8f")
!111 = !{!112, !113, !114, !115, !116}
!112 = !DIEnumerator(name: "atomic_memory_order_relaxed", value: 0)
!113 = !DIEnumerator(name: "atomic_memory_order_acquire", value: 1)
!114 = !DIEnumerator(name: "atomic_memory_order_release", value: 2)
!115 = !DIEnumerator(name: "atomic_memory_order_acq_rel", value: 3)
!116 = !DIEnumerator(name: "atomic_memory_order_seq_cst", value: 4)
!117 = !{!118, !121, !122, !124, !1191, !208, !174, !7, !1192, !1194, !164, !156, !340, !1199, !185, !680, !377, !1241, !1039, !1244, !333, !326}
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !119, line: 70, baseType: !120)
!119 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!120 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !123, line: 90, baseType: !120)
!123 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "prof_tctx_t", file: !126, line: 6, baseType: !127)
!126 = !DIFile(filename: "include/jemalloc/internal/prof_types.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "5609d474728c2c85be6d4c5780ac3fd5")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prof_tctx_s", file: !92, line: 44, size: 1600, elements: !128)
!128 = !{!129, !1151, !1152, !1153, !1154, !1155, !1181, !1182, !1187, !1188, !1190}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tdata", scope: !127, file: !92, line: 46, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "prof_tdata_t", file: !126, line: 9, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prof_tdata_s", file: !92, line: 147, size: 9664, elements: !133)
!133 = !{!134, !1091, !1092, !1093, !1095, !1096, !1097, !1102, !1103, !1132, !1133, !1134, !1135, !1136, !1137, !1149}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !132, file: !92, line: 148, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "malloc_mutex_t", file: !53, line: 21, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "malloc_mutex_s", file: !53, line: 22, size: 896, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, scope: !137, file: !53, line: 23, baseType: !140, size: 896)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !137, file: !53, line: 23, size: 896, elements: !141)
!141 = !{!142, !1088, !1089}
!142 = !DIDerivedType(tag: DW_TAG_member, scope: !140, file: !53, line: 24, baseType: !143, size: 896)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !53, line: 24, size: 896, elements: !144)
!144 = !{!145, !1057, !1087}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "prof_data", scope: !143, file: !53, line: 33, baseType: !146, size: 512)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "mutex_prof_data_t", file: !147, line: 115, baseType: !148)
!147 = !DIFile(filename: "include/jemalloc/internal/mutex_prof.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "49c8e72069e699cf6374eaad10c70adc")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !147, line: 85, size: 512, elements: !149)
!149 = !{!150, !160, !161, !162, !163, !166, !172, !173, !1056}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "tot_wait_time", scope: !148, file: !147, line: 91, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "nstime_t", file: !152, line: 19, baseType: !153)
!152 = !DIFile(filename: "include/jemalloc/internal/nstime.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "701f458fd2e964b721f378de413dbf72")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !152, line: 14, size: 64, elements: !154)
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !153, file: !152, line: 15, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !157, line: 27, baseType: !158)
!157 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !159, line: 45, baseType: !120)
!159 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!160 = !DIDerivedType(tag: DW_TAG_member, name: "max_wait_time", scope: !148, file: !147, line: 93, baseType: !151, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "n_wait_times", scope: !148, file: !147, line: 95, baseType: !156, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "n_spin_acquired", scope: !148, file: !147, line: 97, baseType: !156, size: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "max_n_thds", scope: !148, file: !147, line: 99, baseType: !164, size: 32, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !157, line: 26, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !159, line: 42, baseType: !7)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "n_waiting_thds", scope: !148, file: !147, line: 101, baseType: !167, size: 32, offset: 288)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_u32_t", file: !168, line: 99, baseType: !169)
!168 = !DIFile(filename: "include/jemalloc/internal/atomic.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "6938e37e0ea24e4ceb6a513894764870")
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 99, size: 32, elements: !170)
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !169, file: !168, line: 99, baseType: !164, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "n_owner_switches", scope: !148, file: !147, line: 110, baseType: !156, size: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "prev_owner", scope: !148, file: !147, line: 112, baseType: !174, size: 64, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "tsdn_t", file: !176, line: 7, baseType: !177)
!176 = !DIFile(filename: "include/jemalloc/internal/tsd_types.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "cbf25f26419957a9e3f438c41fcdab12")
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tsdn_s", file: !178, line: 277, size: 21056, elements: !179)
!178 = !DIFile(filename: "include/jemalloc/internal/tsd.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "2eb9c29e572c9c67f268e9042ddf801e")
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tsd", scope: !177, file: !178, line: 278, baseType: !181, size: 21056)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "tsd_t", file: !176, line: 6, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tsd_s", file: !178, line: 240, size: 21056, elements: !183)
!183 = !{!184, !186, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !947, !948, !958, !959, !965, !972, !973, !980, !991, !992, !1013, !1018, !1019, !1020, !1021, !1022, !1023}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_tcache_enabled", scope: !182, file: !178, line: 250, baseType: !185, size: 8)
!185 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_reentrancy_level", scope: !182, file: !178, line: 250, baseType: !187, size: 8, offset: 8)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !188, line: 24, baseType: !189)
!188 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !159, line: 37, baseType: !190)
!190 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_thread_allocated_last_event", scope: !182, file: !178, line: 250, baseType: !156, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_thread_allocated_next_event", scope: !182, file: !178, line: 250, baseType: !156, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_thread_deallocated_last_event", scope: !182, file: !178, line: 250, baseType: !156, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_thread_deallocated_next_event", scope: !182, file: !178, line: 250, baseType: !156, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_tcache_gc_event_wait", scope: !182, file: !178, line: 250, baseType: !156, size: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_tcache_gc_dalloc_event_wait", scope: !182, file: !178, line: 250, baseType: !156, size: 64, offset: 384)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_prof_sample_event_wait", scope: !182, file: !178, line: 250, baseType: !156, size: 64, offset: 448)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_prof_sample_last_event", scope: !182, file: !178, line: 250, baseType: !156, size: 64, offset: 512)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_stats_interval_event_wait", scope: !182, file: !178, line: 250, baseType: !156, size: 64, offset: 576)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_stats_interval_last_event", scope: !182, file: !178, line: 250, baseType: !156, size: 64, offset: 640)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_peak_alloc_event_wait", scope: !182, file: !178, line: 250, baseType: !156, size: 64, offset: 704)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_peak_dalloc_event_wait", scope: !182, file: !178, line: 250, baseType: !156, size: 64, offset: 768)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_prof_tdata", scope: !182, file: !178, line: 250, baseType: !130, size: 64, offset: 832)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_prng_state", scope: !182, file: !178, line: 250, baseType: !156, size: 64, offset: 896)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_san_extents_until_guard_small", scope: !182, file: !178, line: 250, baseType: !156, size: 64, offset: 960)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_san_extents_until_guard_large", scope: !182, file: !178, line: 250, baseType: !156, size: 64, offset: 1024)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_iarena", scope: !182, file: !178, line: 250, baseType: !208, size: 64, offset: 1088)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "arena_t", file: !99, line: 13, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arena_s", file: !211, line: 20, size: 631616, elements: !212)
!211 = !DIFile(filename: "include/jemalloc/internal/arena_structs.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "dc0232497de09cf78e6bf4500191b508")
!212 = !{!213, !221, !222, !223, !294, !363, !367, !368, !369, !498, !499, !917, !918, !919, !920}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "nthreads", scope: !210, file: !211, line: 34, baseType: !214, size: 64)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 64, elements: !219)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_u_t", file: !168, line: 91, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 91, size: 32, elements: !217)
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !216, file: !168, line: 91, baseType: !7, size: 32)
!219 = !{!220}
!220 = !DISubrange(count: 2)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "binshard_next", scope: !210, file: !211, line: 37, baseType: !215, size: 32, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "last_thd", scope: !210, file: !211, line: 44, baseType: !174, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !210, file: !211, line: 47, baseType: !224, size: 82944, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "arena_stats_t", file: !225, line: 45, baseType: !226)
!225 = !DIFile(filename: "include/jemalloc/internal/arena_stats.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "99cda11c8482c984e6b5456c8fe70a6c")
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arena_stats_s", file: !225, line: 46, size: 82944, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !237, !238, !239, !240, !241, !242, !243, !274, !275, !276, !280, !293}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !226, file: !225, line: 53, baseType: !118, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "resident", scope: !226, file: !225, line: 54, baseType: !118, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_thp", scope: !226, file: !225, line: 55, baseType: !118, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "mapped", scope: !226, file: !225, line: 56, baseType: !118, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !226, file: !225, line: 58, baseType: !233, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_zu_t", file: !168, line: 93, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 93, size: 64, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !234, file: !168, line: 93, baseType: !118, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_large", scope: !226, file: !225, line: 60, baseType: !118, size: 64, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "nmalloc_large", scope: !226, file: !225, line: 61, baseType: !156, size: 64, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "ndalloc_large", scope: !226, file: !225, line: 62, baseType: !156, size: 64, offset: 448)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "nfills_large", scope: !226, file: !225, line: 63, baseType: !156, size: 64, offset: 512)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "nflushes_large", scope: !226, file: !225, line: 64, baseType: !156, size: 64, offset: 576)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "nrequests_large", scope: !226, file: !225, line: 65, baseType: !156, size: 64, offset: 640)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "pa_shard_stats", scope: !226, file: !225, line: 72, baseType: !244, size: 640, offset: 704)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "pa_shard_stats_t", file: !245, line: 39, baseType: !246)
!245 = !DIFile(filename: "include/jemalloc/internal/pa.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "55be87c3139e48b12a220c7b4dc8c2b0")
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pa_shard_stats_s", file: !245, line: 40, size: 640, elements: !247)
!247 = !{!248, !249}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "edata_avail", scope: !246, file: !245, line: 42, baseType: !118, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "pac_stats", scope: !246, file: !245, line: 49, baseType: !250, size: 576, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "pac_stats_t", file: !251, line: 52, baseType: !252)
!251 = !DIFile(filename: "include/jemalloc/internal/pac.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "877669e56bce0e5aaa98ec99cb11f799")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pac_stats_s", file: !251, line: 53, size: 576, elements: !253)
!253 = !{!254, !270, !271, !272, !273}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "decay_dirty", scope: !252, file: !251, line: 54, baseType: !255, size: 192)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "pac_decay_stats_t", file: !251, line: 25, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pac_decay_stats_s", file: !251, line: 26, size: 192, elements: !257)
!257 = !{!258, !268, !269}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "npurge", scope: !256, file: !251, line: 28, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "locked_u64_t", file: !260, line: 10, baseType: !261)
!260 = !DIFile(filename: "include/jemalloc/internal/lockedint.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "fd9906bc13a7d545799faac7a9a4b49b")
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "locked_u64_s", file: !260, line: 12, size: 64, elements: !262)
!262 = !{!263}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !261, file: !260, line: 13, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_u64_t", file: !168, line: 102, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 102, size: 64, elements: !266)
!266 = !{!267}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !265, file: !168, line: 102, baseType: !156, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "nmadvise", scope: !256, file: !251, line: 30, baseType: !259, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "purged", scope: !256, file: !251, line: 32, baseType: !259, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "decay_muzzy", scope: !252, file: !251, line: 55, baseType: !255, size: 192, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "retained", scope: !252, file: !251, line: 62, baseType: !118, size: 64, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "pac_mapped", scope: !252, file: !251, line: 71, baseType: !233, size: 64, offset: 448)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "abandoned_vm", scope: !252, file: !251, line: 74, baseType: !233, size: 64, offset: 512)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tcache_bytes", scope: !226, file: !225, line: 75, baseType: !118, size: 64, offset: 1344)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tcache_stashed_bytes", scope: !226, file: !225, line: 76, baseType: !118, size: 64, offset: 1408)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "mutex_prof_data", scope: !226, file: !225, line: 78, baseType: !277, size: 6144, offset: 1472)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 6144, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 12)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "lstats", scope: !226, file: !225, line: 81, baseType: !281, size: 75264, offset: 7616)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 75264, elements: !291)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "arena_stats_large_t", file: !225, line: 13, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arena_stats_large_s", file: !225, line: 14, size: 384, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "nmalloc", scope: !283, file: !225, line: 19, baseType: !259, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ndalloc", scope: !283, file: !225, line: 20, baseType: !259, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "nrequests", scope: !283, file: !225, line: 27, baseType: !259, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "nfills", scope: !283, file: !225, line: 33, baseType: !259, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "nflushes", scope: !283, file: !225, line: 34, baseType: !259, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "curlextents", scope: !283, file: !225, line: 37, baseType: !118, size: 64, offset: 320)
!291 = !{!292}
!292 = !DISubrange(count: 196)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "uptime", scope: !226, file: !225, line: 84, baseType: !151, size: 64, offset: 82880)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tcache_ql", scope: !210, file: !211, line: 56, baseType: !295, size: 64, offset: 83136)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !210, file: !211, line: 56, size: 64, elements: !296)
!296 = !{!297}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "qlh_first", scope: !295, file: !211, line: 56, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcache_slow_t", file: !300, line: 6, baseType: !301)
!300 = !DIFile(filename: "include/jemalloc/internal/tcache_types.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "fcc0bdea671703d1a9ea9b3c0ad5a2cc")
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcache_slow_s", file: !302, line: 20, size: 1408, elements: !303)
!302 = !DIFile(filename: "include/jemalloc/internal/tcache_structs.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "4677e5af02cb08492d3f27ae4899356f")
!303 = !{!304, !309, !338, !339, !342, !349, !351, !352, !353}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !301, file: !302, line: 22, baseType: !305, size: 128)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !301, file: !302, line: 22, size: 128, elements: !306)
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "qre_next", scope: !305, file: !302, line: 22, baseType: !298, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "qre_prev", scope: !305, file: !302, line: 22, baseType: !298, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "cache_bin_array_descriptor", scope: !301, file: !302, line: 29, baseType: !310, size: 192, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_bin_array_descriptor_t", file: !311, line: 133, baseType: !312)
!311 = !DIFile(filename: "include/jemalloc/internal/cache_bin.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "346bac98cae298112dab87b1fb1cd3dc")
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_bin_array_descriptor_s", file: !311, line: 134, size: 192, elements: !313)
!313 = !{!314, !320}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !312, file: !311, line: 139, baseType: !315, size: 128)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !312, file: !311, line: 139, size: 128, elements: !316)
!316 = !{!317, !319}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "qre_next", scope: !315, file: !311, line: 139, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "qre_prev", scope: !315, file: !311, line: 139, baseType: !318, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "bins", scope: !312, file: !311, line: 141, baseType: !321, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_bin_t", file: !311, line: 81, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_bin_s", file: !311, line: 82, size: 192, elements: !324)
!324 = !{!325, !327, !332, !336, !337}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "stack_head", scope: !323, file: !311, line: 88, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tstats", scope: !323, file: !311, line: 94, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_bin_stats_t", file: !311, line: 49, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_bin_stats_s", file: !311, line: 50, size: 64, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "nrequests", scope: !329, file: !311, line: 55, baseType: !156, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "low_bits_low_water", scope: !323, file: !311, line: 104, baseType: !333, size: 16, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !157, line: 25, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !159, line: 40, baseType: !335)
!335 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "low_bits_full", scope: !323, file: !311, line: 115, baseType: !333, size: 16, offset: 144)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "low_bits_empty", scope: !323, file: !311, line: 124, baseType: !333, size: 16, offset: 160)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "arena", scope: !301, file: !302, line: 32, baseType: !208, size: 64, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "next_gc_bin", scope: !301, file: !302, line: 34, baseType: !340, size: 32, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "szind_t", file: !341, line: 29, baseType: !7)
!341 = !DIFile(filename: "include/jemalloc/internal/sz.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "b9ea65fced4fed60be8d476b16546a70")
!342 = !DIDerivedType(tag: DW_TAG_member, name: "lg_fill_div", scope: !301, file: !302, line: 36, baseType: !343, size: 288, offset: 416)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 288, elements: !347)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !157, line: 24, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !159, line: 38, baseType: !346)
!346 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!347 = !{!348}
!348 = !DISubrange(count: 36)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "bin_refilled", scope: !301, file: !302, line: 38, baseType: !350, size: 288, offset: 704)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 288, elements: !347)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "bin_flush_delay_items", scope: !301, file: !302, line: 43, baseType: !343, size: 288, offset: 992)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_alloc", scope: !301, file: !302, line: 49, baseType: !121, size: 64, offset: 1280)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tcache", scope: !301, file: !302, line: 52, baseType: !354, size: 64, offset: 1344)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcache_t", file: !300, line: 7, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcache_s", file: !302, line: 55, size: 14080, elements: !357)
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tcache_slow", scope: !356, file: !302, line: 56, baseType: !298, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "bins", scope: !356, file: !302, line: 57, baseType: !360, size: 14016, offset: 64)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 14016, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 73)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "cache_bin_array_descriptor_ql", scope: !210, file: !211, line: 57, baseType: !364, size: 64, offset: 83200)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !210, file: !211, line: 57, size: 64, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "qlh_first", scope: !364, file: !211, line: 57, baseType: !318, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tcache_ql_mtx", scope: !210, file: !211, line: 58, baseType: !136, size: 896, offset: 83264)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "dss_prec", scope: !210, file: !211, line: 65, baseType: !215, size: 32, offset: 84160)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "large", scope: !210, file: !211, line: 72, baseType: !370, size: 64, offset: 84224)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "edata_list_active_t", file: !58, line: 253, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 253, size: 64, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !371, file: !58, line: 253, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !371, file: !58, line: 253, size: 64, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "qlh_first", scope: !374, file: !58, line: 253, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "edata_t", file: !58, line: 89, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edata_s", file: !58, line: 92, size: 1024, elements: !380)
!380 = !{!381, !382, !383, !388, !447, !448, !469}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "e_bits", scope: !379, file: !58, line: 142, baseType: !156, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "e_addr", scope: !379, file: !58, line: 190, baseType: !121, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !58, line: 192, baseType: !384, size: 64, offset: 128)
!384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !58, line: 192, size: 64, elements: !385)
!385 = !{!386, !387}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "e_size_esn", scope: !384, file: !58, line: 200, baseType: !118, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "e_bsize", scope: !384, file: !58, line: 204, baseType: !118, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "e_ps", scope: !379, file: !58, line: 212, baseType: !389, size: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "hpdata_t", file: !391, line: 20, baseType: !392)
!391 = !DIFile(filename: "include/jemalloc/internal/hpdata.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "227d9acce318e355ef8af46ae9961791")
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hpdata_s", file: !391, line: 22, size: 1984, elements: !393)
!393 = !{!394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !427, !432, !437, !438, !439, !445, !446}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "h_address", scope: !392, file: !391, line: 33, baseType: !121, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "h_age", scope: !392, file: !391, line: 35, baseType: !156, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "h_huge", scope: !392, file: !391, line: 37, baseType: !185, size: 8, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "h_alloc_allowed", scope: !392, file: !391, line: 52, baseType: !185, size: 8, offset: 136)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "h_in_psset_alloc_container", scope: !392, file: !391, line: 53, baseType: !185, size: 8, offset: 144)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "h_purge_allowed", scope: !392, file: !391, line: 61, baseType: !185, size: 8, offset: 152)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "h_hugify_allowed", scope: !392, file: !391, line: 64, baseType: !185, size: 8, offset: 160)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "h_time_hugify_allowed", scope: !392, file: !391, line: 66, baseType: !151, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "h_in_psset_hugify_container", scope: !392, file: !391, line: 67, baseType: !185, size: 8, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "h_mid_purge", scope: !392, file: !391, line: 70, baseType: !185, size: 8, offset: 264)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "h_mid_hugify", scope: !392, file: !391, line: 71, baseType: !185, size: 8, offset: 272)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "h_updating", scope: !392, file: !391, line: 79, baseType: !185, size: 8, offset: 280)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "h_in_psset", scope: !392, file: !391, line: 82, baseType: !185, size: 8, offset: 288)
!407 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !391, line: 84, baseType: !408, size: 192, offset: 320)
!408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !391, line: 84, size: 192, elements: !409)
!409 = !{!410, !422}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "age_link", scope: !408, file: !391, line: 86, baseType: !411, size: 192)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "hpdata_age_heap_link_t", file: !391, line: 21, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 21, size: 192, elements: !413)
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !412, file: !391, line: 21, baseType: !415, size: 192)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "phn_link_t", file: !416, line: 55, baseType: !417)
!416 = !DIFile(filename: "include/jemalloc/internal/ph.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "ceeb9a10f054380a38a1ec33a7da11ad")
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phn_link_s", file: !416, line: 56, size: 192, elements: !418)
!418 = !{!419, !420, !421}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !417, file: !416, line: 57, baseType: !121, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !417, file: !416, line: 58, baseType: !121, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "lchild", scope: !417, file: !416, line: 59, baseType: !121, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ql_link_empty", scope: !408, file: !391, line: 91, baseType: !423, size: 128)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !408, file: !391, line: 91, size: 128, elements: !424)
!424 = !{!425, !426}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "qre_next", scope: !423, file: !391, line: 91, baseType: !389, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "qre_prev", scope: !423, file: !391, line: 91, baseType: !389, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ql_link_purge", scope: !392, file: !391, line: 97, baseType: !428, size: 128, offset: 512)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !391, line: 97, size: 128, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "qre_next", scope: !428, file: !391, line: 97, baseType: !389, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "qre_prev", scope: !428, file: !391, line: 97, baseType: !389, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ql_link_hugify", scope: !392, file: !391, line: 98, baseType: !433, size: 128, offset: 640)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !391, line: 98, size: 128, elements: !434)
!434 = !{!435, !436}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "qre_next", scope: !433, file: !391, line: 98, baseType: !389, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "qre_prev", scope: !433, file: !391, line: 98, baseType: !389, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "h_longest_free_range", scope: !392, file: !391, line: 101, baseType: !118, size: 64, offset: 768)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "h_nactive", scope: !392, file: !391, line: 104, baseType: !118, size: 64, offset: 832)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "active_pages", scope: !392, file: !391, line: 107, baseType: !440, size: 512, offset: 896)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 512, elements: !443)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "fb_group_t", file: !442, line: 12, baseType: !120)
!442 = !DIFile(filename: "include/jemalloc/internal/fb.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "617442e449dfdc2ed891a67ec59d7ccf")
!443 = !{!444}
!444 = !DISubrange(count: 8)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "h_ntouched", scope: !392, file: !391, line: 114, baseType: !118, size: 64, offset: 1408)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "touched_pages", scope: !392, file: !391, line: 117, baseType: !440, size: 512, offset: 1472)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "e_sn", scope: !379, file: !58, line: 218, baseType: !156, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !58, line: 220, baseType: !449, size: 192, offset: 320)
!449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !58, line: 220, size: 192, elements: !450)
!450 = !{!451, !456}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ql_link_active", scope: !449, file: !58, line: 225, baseType: !452, size: 128)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !449, file: !58, line: 225, size: 128, elements: !453)
!453 = !{!454, !455}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "qre_next", scope: !452, file: !58, line: 225, baseType: !377, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "qre_prev", scope: !452, file: !58, line: 225, baseType: !377, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, scope: !449, file: !58, line: 232, baseType: !457, size: 192)
!457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !449, file: !58, line: 232, size: 192, elements: !458)
!458 = !{!459, !464}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "heap_link", scope: !457, file: !58, line: 233, baseType: !460, size: 192)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "edata_heap_link_t", file: !58, line: 91, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 91, size: 192, elements: !462)
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !461, file: !58, line: 91, baseType: !415, size: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "avail_link", scope: !457, file: !58, line: 234, baseType: !465, size: 192)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "edata_avail_link_t", file: !58, line: 90, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 90, size: 192, elements: !467)
!467 = !{!468}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !466, file: !58, line: 90, baseType: !415, size: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !58, line: 238, baseType: !470, size: 512, offset: 512)
!470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !58, line: 238, size: 512, elements: !471)
!471 = !{!472, !477, !486}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ql_link_inactive", scope: !470, file: !58, line: 244, baseType: !473, size: 128)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !470, file: !58, line: 244, size: 128, elements: !474)
!474 = !{!475, !476}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "qre_next", scope: !473, file: !58, line: 244, baseType: !377, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "qre_prev", scope: !473, file: !58, line: 244, baseType: !377, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "e_slab_data", scope: !470, file: !58, line: 246, baseType: !478, size: 512)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "slab_data_t", file: !479, line: 6, baseType: !480)
!479 = !DIFile(filename: "include/jemalloc/internal/slab_data.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "3957c6c0ea3d34f7841f7b97dcad1035")
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slab_data_s", file: !479, line: 7, size: 512, elements: !481)
!481 = !{!482}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !480, file: !479, line: 9, baseType: !483, size: 512)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 512, elements: !443)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_t", file: !485, line: 7, baseType: !120)
!485 = !DIFile(filename: "include/jemalloc/internal/bitmap.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "97e6c829f154125215bd6d0de76c5988")
!486 = !DIDerivedType(tag: DW_TAG_member, name: "e_prof_info", scope: !470, file: !58, line: 249, baseType: !487, size: 256)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "e_prof_info_t", file: !58, line: 63, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "e_prof_info_s", file: !58, line: 49, size: 256, elements: !489)
!489 = !{!490, !491, !492, !497}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "e_prof_alloc_time", scope: !488, file: !58, line: 51, baseType: !151, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "e_prof_alloc_size", scope: !488, file: !58, line: 53, baseType: !118, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "e_prof_tctx", scope: !488, file: !58, line: 55, baseType: !493, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_p_t", file: !168, line: 83, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 83, size: 64, elements: !495)
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !494, file: !168, line: 83, baseType: !121, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "e_prof_recent_alloc", scope: !488, file: !58, line: 61, baseType: !493, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "large_mtx", scope: !210, file: !211, line: 74, baseType: !136, size: 896, offset: 84288)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "pa_shard", scope: !210, file: !211, line: 77, baseType: !500, size: 546240, offset: 85184)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "pa_shard_t", file: !245, line: 67, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pa_shard_s", file: !245, line: 68, size: 546240, elements: !502)
!502 = !{!503, !587, !588, !593, !594, !769, !804, !910, !911, !912, !913, !915, !916}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "central", scope: !501, file: !245, line: 70, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "pa_central_t", file: !245, line: 23, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pa_central_s", file: !245, line: 24, size: 2496, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "hpa", scope: !506, file: !245, line: 25, baseType: !509, size: 2496)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "hpa_central_t", file: !510, line: 10, baseType: !511)
!510 = !DIFile(filename: "include/jemalloc/internal/hpa.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "b167af9349348ab02109568222c99503")
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hpa_central_s", file: !510, line: 11, size: 2496, elements: !512)
!512 = !{!513, !514, !515, !516, !517, !561, !562}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mtx", scope: !511, file: !510, line: 16, baseType: !136, size: 896)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "grow_mtx", scope: !511, file: !510, line: 22, baseType: !136, size: 896, offset: 896)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "eden", scope: !511, file: !510, line: 30, baseType: !121, size: 64, offset: 1792)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "eden_len", scope: !511, file: !510, line: 31, baseType: !118, size: 64, offset: 1856)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !511, file: !510, line: 33, baseType: !518, size: 64, offset: 1920)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "base_t", file: !520, line: 42, baseType: !521)
!520 = !DIFile(filename: "include/jemalloc/internal/base.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "1c0df8e6773a67ccaaf4e186891ff5bb")
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base_s", file: !520, line: 43, size: 31296, elements: !522)
!522 = !{!523, !530, !531, !532, !533, !535, !536, !544, !557, !558, !559, !560}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ehooks", scope: !521, file: !520, line: 47, baseType: !524, size: 128)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "ehooks_t", file: !525, line: 21, baseType: !526)
!525 = !DIFile(filename: "include/jemalloc/internal/ehooks.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "6c296cf246258b3220ac1cb2e396e4b5")
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ehooks_s", file: !525, line: 22, size: 128, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ind", scope: !526, file: !525, line: 28, baseType: !7, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !526, file: !525, line: 30, baseType: !493, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ehooks_base", scope: !521, file: !520, line: 52, baseType: !524, size: 128, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mtx", scope: !521, file: !520, line: 55, baseType: !136, size: 896, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "auto_thp_switched", scope: !521, file: !520, line: 58, baseType: !185, size: 8, offset: 1152)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "pind_last", scope: !521, file: !520, line: 64, baseType: !534, size: 32, offset: 1184)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "pszind_t", file: !341, line: 26, baseType: !7)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "extent_sn_next", scope: !521, file: !520, line: 67, baseType: !118, size: 64, offset: 1216)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !521, file: !520, line: 70, baseType: !537, size: 64, offset: 1280)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "base_block_t", file: !520, line: 30, baseType: !539)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base_block_s", file: !520, line: 31, size: 1152, elements: !540)
!540 = !{!541, !542, !543}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !539, file: !520, line: 33, baseType: !118, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !539, file: !520, line: 36, baseType: !537, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "edata", scope: !539, file: !520, line: 39, baseType: !378, size: 1024, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "avail", scope: !521, file: !520, line: 73, baseType: !545, size: 29696, offset: 1344)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 29696, elements: !555)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "edata_heap_t", file: !58, line: 91, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 91, size: 128, elements: !548)
!548 = !{!549}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ph", scope: !547, file: !58, line: 91, baseType: !550, size: 128)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "ph_t", file: !416, line: 62, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ph_s", file: !416, line: 63, size: 128, elements: !552)
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !551, file: !416, line: 64, baseType: !121, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "auxcount", scope: !551, file: !416, line: 71, baseType: !118, size: 64, offset: 64)
!555 = !{!556}
!556 = !DISubrange(count: 232)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !521, file: !520, line: 76, baseType: !118, size: 64, offset: 31040)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "resident", scope: !521, file: !520, line: 77, baseType: !118, size: 64, offset: 31104)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "mapped", scope: !521, file: !520, line: 78, baseType: !118, size: 64, offset: 31168)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "n_thp", scope: !521, file: !520, line: 80, baseType: !118, size: 64, offset: 31232)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "age_counter", scope: !511, file: !510, line: 35, baseType: !156, size: 64, offset: 1984)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "hooks", scope: !511, file: !510, line: 38, baseType: !563, size: 448, offset: 2048)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "hpa_hooks_t", file: !564, line: 4, baseType: !565)
!564 = !DIFile(filename: "include/jemalloc/internal/hpa_hooks.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "0980fb000517829e6b7477bbc3494118")
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hpa_hooks_s", file: !564, line: 5, size: 448, elements: !566)
!566 = !{!567, !571, !575, !576, !577, !578, !583}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !565, file: !564, line: 6, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!121, !118}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !565, file: !564, line: 7, baseType: !572, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !121, !118}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "purge", scope: !565, file: !564, line: 8, baseType: !572, size: 64, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "hugify", scope: !565, file: !564, line: 9, baseType: !572, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "dehugify", scope: !565, file: !564, line: 10, baseType: !572, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "curtime", scope: !565, file: !564, line: 11, baseType: !579, size: 64, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !582, !185}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ms_since", scope: !565, file: !564, line: 12, baseType: !584, size: 64, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!156, !582}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "nactive", scope: !501, file: !245, line: 77, baseType: !233, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "use_hpa", scope: !501, file: !245, line: 86, baseType: !589, size: 8, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_b_t", file: !168, line: 89, baseType: !590)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 89, size: 8, elements: !591)
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !590, file: !168, line: 89, baseType: !185, size: 8)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ever_used_hpa", scope: !501, file: !245, line: 93, baseType: !185, size: 8, offset: 136)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "pac", scope: !501, file: !245, line: 96, baseType: !595, size: 497920, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "pac_t", file: !251, line: 77, baseType: !596)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pac_s", file: !251, line: 78, size: 497920, elements: !597)
!597 = !{!598, !634, !685, !686, !687, !688, !709, !723, !730, !731, !738, !739, !764, !765, !766, !768}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "pai", scope: !596, file: !251, line: 83, baseType: !599, size: 448)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "pai_t", file: !600, line: 6, baseType: !601)
!600 = !DIFile(filename: "include/jemalloc/internal/pai.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "6205721010343a74af256b178d9d9dbd")
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pai_s", file: !600, line: 7, size: 448, elements: !602)
!602 = !{!603, !609, !614, !618, !622, !626, !630}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !601, file: !600, line: 9, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!377, !174, !607, !118, !118, !185, !185, !185, !608}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_batch", scope: !601, file: !600, line: 18, baseType: !610, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!118, !174, !607, !118, !118, !613, !608}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "expand", scope: !601, file: !600, line: 21, baseType: !615, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!185, !174, !607, !377, !118, !118, !185, !608}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "shrink", scope: !601, file: !600, line: 24, baseType: !619, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!185, !174, !607, !377, !118, !118, !608}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "dalloc", scope: !601, file: !600, line: 26, baseType: !623, size: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !174, !607, !377, !608}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "dalloc_batch", scope: !601, file: !600, line: 29, baseType: !627, size: 64, offset: 320)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !174, !607, !613, !608}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "time_until_deferred_work", scope: !601, file: !600, line: 31, baseType: !631, size: 64, offset: 384)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!156, !174, !607}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "ecache_dirty", scope: !596, file: !251, line: 90, baseType: !635, size: 155520, offset: 448)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "ecache_t", file: !636, line: 8, baseType: !637)
!636 = !DIFile(filename: "include/jemalloc/internal/ecache.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "78d215f47eec710b9137eacb5e234a5e")
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ecache_s", file: !636, line: 9, size: 155520, elements: !638)
!638 = !{!639, !640, !681, !682, !683, !684}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "mtx", scope: !637, file: !636, line: 10, baseType: !136, size: 896)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "eset", scope: !637, file: !636, line: 11, baseType: !641, size: 77248, offset: 896)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "eset_t", file: !642, line: 37, baseType: !643)
!642 = !DIFile(filename: "include/jemalloc/internal/eset.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "8831525b8469e6d512e893965968cd22")
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eset_s", file: !642, line: 38, size: 77248, elements: !644)
!644 = !{!645, !649, !663, !670, !678, !679}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !643, file: !642, line: 40, baseType: !646, size: 256)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 256, elements: !647)
!647 = !{!648}
!648 = !DISubrange(count: 4)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bins", scope: !643, file: !642, line: 43, baseType: !650, size: 51200, offset: 256)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 51200, elements: !661)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "eset_bin_t", file: !642, line: 18, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eset_bin_s", file: !642, line: 19, size: 256, elements: !653)
!653 = !{!654, !655}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !652, file: !642, line: 20, baseType: !546, size: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "heap_min", scope: !652, file: !642, line: 28, baseType: !656, size: 128, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "edata_cmp_summary_t", file: !58, line: 82, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edata_cmp_summary_s", file: !58, line: 83, size: 128, elements: !658)
!658 = !{!659, !660}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sn", scope: !657, file: !58, line: 84, baseType: !156, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !657, file: !58, line: 85, baseType: !122, size: 64, offset: 64)
!661 = !{!662}
!662 = !DISubrange(count: 200)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bin_stats", scope: !643, file: !642, line: 45, baseType: !664, size: 25600, offset: 51456)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 25600, elements: !661)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "eset_bin_stats_t", file: !642, line: 31, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eset_bin_stats_s", file: !642, line: 32, size: 128, elements: !667)
!667 = !{!668, !669}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !666, file: !642, line: 33, baseType: !233, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !666, file: !642, line: 34, baseType: !233, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !643, file: !642, line: 48, baseType: !671, size: 64, offset: 77056)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "edata_list_inactive_t", file: !58, line: 254, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 254, size: 64, elements: !673)
!673 = !{!674}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !672, file: !58, line: 254, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !672, file: !58, line: 254, size: 64, elements: !676)
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "qlh_first", scope: !675, file: !58, line: 254, baseType: !377, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "npages", scope: !643, file: !642, line: 51, baseType: !233, size: 64, offset: 77120)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !643, file: !642, line: 57, baseType: !680, size: 32, offset: 77184)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "extent_state_t", file: !58, line: 31, baseType: !57)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "guarded_eset", scope: !637, file: !636, line: 12, baseType: !641, size: 77248, offset: 78144)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !637, file: !636, line: 14, baseType: !680, size: 32, offset: 155392)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ind", scope: !637, file: !636, line: 16, baseType: !7, size: 32, offset: 155424)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "delay_coalesce", scope: !637, file: !636, line: 21, baseType: !185, size: 8, offset: 155456)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ecache_muzzy", scope: !596, file: !251, line: 91, baseType: !635, size: 155520, offset: 155968)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "ecache_retained", scope: !596, file: !251, line: 92, baseType: !635, size: 155520, offset: 311488)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !596, file: !251, line: 94, baseType: !518, size: 64, offset: 467008)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "emap", scope: !596, file: !251, line: 95, baseType: !689, size: 64, offset: 467072)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "emap_t", file: !691, line: 16, baseType: !692)
!691 = !DIFile(filename: "include/jemalloc/internal/emap.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "4886c34b97d6ef6486963c4e0200b09f")
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "emap_s", file: !691, line: 17, size: 16778176, elements: !693)
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "rtree", scope: !692, file: !691, line: 18, baseType: !695, size: 16778176)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtree_t", file: !696, line: 98, baseType: !697)
!696 = !DIFile(filename: "include/jemalloc/internal/rtree.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "103cd0a954fb1863bb498eb7b2d89316")
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtree_s", file: !696, line: 99, size: 16778176, elements: !698)
!698 = !{!699, !700, !701}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !697, file: !696, line: 100, baseType: !518, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "init_lock", scope: !697, file: !696, line: 101, baseType: !136, size: 896, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !697, file: !696, line: 104, baseType: !702, size: 16777216, offset: 960)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !703, size: 16777216, elements: !707)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtree_node_elm_t", file: !696, line: 38, baseType: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtree_node_elm_s", file: !696, line: 39, size: 64, elements: !705)
!705 = !{!706}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !704, file: !696, line: 40, baseType: !493, size: 64)
!707 = !{!708}
!708 = !DISubrange(count: 262144)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "edata_cache", scope: !596, file: !251, line: 96, baseType: !710, size: 64, offset: 467136)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "edata_cache_t", file: !712, line: 15, baseType: !713)
!712 = !DIFile(filename: "include/jemalloc/internal/edata_cache.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "3d63723d254bad4e2554b9f9134fce37")
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edata_cache_s", file: !712, line: 16, size: 1152, elements: !714)
!714 = !{!715, !720, !721, !722}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "avail", scope: !713, file: !712, line: 17, baseType: !716, size: 128)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "edata_avail_t", file: !58, line: 90, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 90, size: 128, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ph", scope: !717, file: !58, line: 90, baseType: !550, size: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !713, file: !712, line: 18, baseType: !233, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "mtx", scope: !713, file: !712, line: 19, baseType: !136, size: 896, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !713, file: !712, line: 20, baseType: !518, size: 64, offset: 1088)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "exp_grow", scope: !596, file: !251, line: 99, baseType: !724, size: 64, offset: 467200)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "exp_grow_t", file: !725, line: 4, baseType: !726)
!725 = !DIFile(filename: "include/jemalloc/internal/exp_grow.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "bf6848675fbb3c1f8c6ab15998625e74")
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exp_grow_s", file: !725, line: 5, size: 64, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !726, file: !725, line: 17, baseType: !534, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !726, file: !725, line: 18, baseType: !534, size: 32, offset: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "grow_mtx", scope: !596, file: !251, line: 100, baseType: !136, size: 896, offset: 467264)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "sba", scope: !596, file: !251, line: 103, baseType: !732, size: 960, offset: 468160)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "san_bump_alloc_t", file: !733, line: 15, baseType: !734)
!733 = !DIFile(filename: "include/jemalloc/internal/san_bump.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "1c2aa883cd4eaa1bdaec306a4e50c081")
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "san_bump_alloc_s", file: !733, line: 16, size: 960, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "mtx", scope: !734, file: !733, line: 17, baseType: !136, size: 896)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "curr_reg", scope: !734, file: !733, line: 19, baseType: !377, size: 64, offset: 896)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "oversize_threshold", scope: !596, file: !251, line: 106, baseType: !233, size: 64, offset: 469120)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "decay_dirty", scope: !596, file: !251, line: 114, baseType: !740, size: 14272, offset: 469184)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "decay_t", file: !741, line: 23, baseType: !742)
!741 = !DIFile(filename: "include/jemalloc/internal/decay.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "0d27b26766983c10c5dfe1de80068510")
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "decay_s", file: !741, line: 24, size: 14272, elements: !743)
!743 = !{!744, !745, !746, !755, !756, !757, !758, !759, !760, !761, !763}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "mtx", scope: !742, file: !741, line: 26, baseType: !136, size: 896)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "purging", scope: !742, file: !741, line: 31, baseType: !185, size: 8, offset: 896)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "time_ms", scope: !742, file: !741, line: 37, baseType: !747, size: 64, offset: 960)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_zd_t", file: !168, line: 95, baseType: !748)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 95, size: 64, elements: !749)
!749 = !{!750}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !748, file: !168, line: 95, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !752, line: 108, baseType: !753)
!752 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !159, line: 194, baseType: !754)
!754 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !742, file: !741, line: 39, baseType: !151, size: 64, offset: 1024)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "epoch", scope: !742, file: !741, line: 47, baseType: !151, size: 64, offset: 1088)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "jitter_state", scope: !742, file: !741, line: 49, baseType: !156, size: 64, offset: 1152)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !742, file: !741, line: 57, baseType: !151, size: 64, offset: 1216)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "npages_limit", scope: !742, file: !741, line: 63, baseType: !118, size: 64, offset: 1280)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "nunpurged", scope: !742, file: !741, line: 70, baseType: !118, size: 64, offset: 1344)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "backlog", scope: !742, file: !741, line: 80, baseType: !762, size: 12800, offset: 1408)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 12800, elements: !661)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ceil_npages", scope: !742, file: !741, line: 83, baseType: !156, size: 64, offset: 14208)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "decay_muzzy", scope: !596, file: !251, line: 115, baseType: !740, size: 14272, offset: 483456)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "stats_mtx", scope: !596, file: !251, line: 117, baseType: !135, size: 64, offset: 497728)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !596, file: !251, line: 118, baseType: !767, size: 64, offset: 497792)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "extent_sn_next", scope: !596, file: !251, line: 121, baseType: !233, size: 64, offset: 497856)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "hpa_sec", scope: !501, file: !245, line: 103, baseType: !770, size: 960, offset: 498112)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "sec_t", file: !771, line: 87, baseType: !772)
!771 = !DIFile(filename: "include/jemalloc/internal/sec.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "ddbad2fd3266825bf2985ec75d9b308d")
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sec_s", file: !771, line: 88, size: 960, elements: !773)
!773 = !{!774, !775, !776, !786, !803}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "pai", scope: !772, file: !771, line: 89, baseType: !599, size: 448)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "fallback", scope: !772, file: !771, line: 90, baseType: !607, size: 64, offset: 448)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !772, file: !771, line: 92, baseType: !777, size: 320, offset: 512)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "sec_opts_t", file: !778, line: 9, baseType: !779)
!778 = !DIFile(filename: "include/jemalloc/internal/sec_opts.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "8e74e2e488441438e14e59d407f14329")
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sec_opts_s", file: !778, line: 10, size: 320, elements: !780)
!780 = !{!781, !782, !783, !784, !785}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "nshards", scope: !779, file: !778, line: 15, baseType: !118, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "max_alloc", scope: !779, file: !778, line: 21, baseType: !118, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes", scope: !779, file: !778, line: 26, baseType: !118, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_after_flush", scope: !779, file: !778, line: 35, baseType: !118, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "batch_fill_extra", scope: !779, file: !778, line: 42, baseType: !118, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "shards", scope: !772, file: !771, line: 93, baseType: !787, size: 64, offset: 832)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "sec_shard_t", file: !771, line: 62, baseType: !789)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sec_shard_s", file: !771, line: 63, size: 1152, elements: !790)
!790 = !{!791, !792, !793, !801, !802}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "mtx", scope: !789, file: !771, line: 69, baseType: !136, size: 896)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !789, file: !771, line: 79, baseType: !185, size: 8, offset: 896)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "bins", scope: !789, file: !771, line: 80, baseType: !794, size: 64, offset: 960)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "sec_bin_t", file: !771, line: 32, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sec_bin_s", file: !771, line: 33, size: 192, elements: !797)
!797 = !{!798, !799, !800}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "being_batch_filled", scope: !796, file: !771, line: 50, baseType: !185, size: 8)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_cur", scope: !796, file: !771, line: 58, baseType: !118, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !796, file: !771, line: 59, baseType: !370, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_cur", scope: !789, file: !771, line: 82, baseType: !118, size: 64, offset: 1024)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "to_flush_next", scope: !789, file: !771, line: 84, baseType: !534, size: 32, offset: 1088)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "npsizes", scope: !772, file: !771, line: 94, baseType: !534, size: 32, offset: 896)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "hpa_shard", scope: !501, file: !245, line: 104, baseType: !805, size: 45696, offset: 499072)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "hpa_shard_t", file: !510, line: 79, baseType: !806)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hpa_shard_s", file: !510, line: 80, size: 45696, elements: !807)
!807 = !{!808, !809, !811, !812, !813, !814, !821, !884, !885, !886, !887, !900, !901, !909}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "pai", scope: !806, file: !510, line: 85, baseType: !599, size: 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "central", scope: !806, file: !510, line: 88, baseType: !810, size: 64, offset: 448)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "mtx", scope: !806, file: !510, line: 90, baseType: !136, size: 896, offset: 512)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "grow_mtx", scope: !806, file: !510, line: 96, baseType: !136, size: 896, offset: 1408)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !806, file: !510, line: 98, baseType: !518, size: 64, offset: 2304)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "ecf", scope: !806, file: !510, line: 105, baseType: !815, size: 192, offset: 2368)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "edata_cache_fast_t", file: !712, line: 36, baseType: !816)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edata_cache_fast_s", file: !712, line: 37, size: 192, elements: !817)
!817 = !{!818, !819, !820}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !816, file: !712, line: 38, baseType: !671, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "fallback", scope: !816, file: !712, line: 39, baseType: !710, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !816, file: !712, line: 40, baseType: !185, size: 8, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "psset", scope: !806, file: !510, line: 107, baseType: !822, size: 42240, offset: 2560)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "psset_t", file: !823, line: 63, baseType: !824)
!823 = !DIFile(filename: "include/jemalloc/internal/psset.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "ac7317bc4820a45856300accafbe13ce")
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psset_s", file: !823, line: 64, size: 42240, elements: !825)
!825 = !{!826, !834, !838, !845, !855, !863, !874, !876}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "pageslabs", scope: !824, file: !823, line: 69, baseType: !827, size: 8192)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !828, size: 8192, elements: !832)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "hpdata_age_heap_t", file: !391, line: 21, baseType: !829)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 21, size: 128, elements: !830)
!830 = !{!831}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ph", scope: !829, file: !391, line: 21, baseType: !550, size: 128)
!832 = !{!833}
!833 = !DISubrange(count: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "pageslab_bitmap", scope: !824, file: !823, line: 71, baseType: !835, size: 64, offset: 8192)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 64, elements: !836)
!836 = !{!837}
!837 = !DISubrange(count: 1)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "merged_stats", scope: !824, file: !823, line: 77, baseType: !839, size: 192, offset: 8256)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "psset_bin_stats_t", file: !823, line: 34, baseType: !840)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psset_bin_stats_s", file: !823, line: 35, size: 192, elements: !841)
!841 = !{!842, !843, !844}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "npageslabs", scope: !840, file: !823, line: 37, baseType: !118, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "nactive", scope: !840, file: !823, line: 39, baseType: !118, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ndirty", scope: !840, file: !823, line: 41, baseType: !118, size: 64, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !824, file: !823, line: 78, baseType: !846, size: 25344, offset: 8448)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "psset_stats_t", file: !823, line: 44, baseType: !847)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psset_stats_s", file: !823, line: 45, size: 25344, elements: !848)
!848 = !{!849, !852, !854}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "nonfull_slabs", scope: !847, file: !823, line: 51, baseType: !850, size: 24576)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !839, size: 24576, elements: !851)
!851 = !{!833, !220}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "full_slabs", scope: !847, file: !823, line: 57, baseType: !853, size: 384, offset: 24576)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !839, size: 384, elements: !219)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "empty_slabs", scope: !847, file: !823, line: 60, baseType: !853, size: 384, offset: 24960)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "empty", scope: !824, file: !823, line: 83, baseType: !856, size: 64, offset: 33792)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "hpdata_empty_list_t", file: !391, line: 120, baseType: !857)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 120, size: 64, elements: !858)
!858 = !{!859}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !857, file: !391, line: 120, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !857, file: !391, line: 120, size: 64, elements: !861)
!861 = !{!862}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "qlh_first", scope: !860, file: !391, line: 120, baseType: !389, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "to_purge", scope: !824, file: !823, line: 89, baseType: !864, size: 8192, offset: 33856)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !865, size: 8192, elements: !872)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "hpdata_purge_list_t", file: !391, line: 121, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 121, size: 64, elements: !867)
!867 = !{!868}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !866, file: !391, line: 121, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !866, file: !391, line: 121, size: 64, elements: !870)
!870 = !{!871}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "qlh_first", scope: !869, file: !391, line: 121, baseType: !389, size: 64)
!872 = !{!873}
!873 = !DISubrange(count: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "purge_bitmap", scope: !824, file: !823, line: 91, baseType: !875, size: 128, offset: 42048)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 128, elements: !219)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "to_hugify", scope: !824, file: !823, line: 93, baseType: !877, size: 64, offset: 42176)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "hpdata_hugify_list_t", file: !391, line: 122, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 122, size: 64, elements: !879)
!879 = !{!880}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !878, file: !391, line: 122, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !878, file: !391, line: 122, size: 64, elements: !882)
!882 = !{!883}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "qlh_first", scope: !881, file: !391, line: 122, baseType: !389, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "age_counter", scope: !806, file: !510, line: 114, baseType: !156, size: 64, offset: 44800)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "ind", scope: !806, file: !510, line: 117, baseType: !7, size: 32, offset: 44864)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "emap", scope: !806, file: !510, line: 123, baseType: !689, size: 64, offset: 44928)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !806, file: !510, line: 126, baseType: !888, size: 320, offset: 44992)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "hpa_shard_opts_t", file: !889, line: 11, baseType: !890)
!889 = !DIFile(filename: "include/jemalloc/internal/hpa_opts.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "e1a33a4a56f1e144d3404a61859ead58")
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hpa_shard_opts_s", file: !889, line: 12, size: 320, elements: !891)
!891 = !{!892, !893, !894, !897, !898, !899}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "slab_max_alloc", scope: !890, file: !889, line: 19, baseType: !118, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "hugification_threshold", scope: !890, file: !889, line: 25, baseType: !118, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_mult", scope: !890, file: !889, line: 31, baseType: !895, size: 32, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "fxp_t", file: !896, line: 23, baseType: !164)
!896 = !DIFile(filename: "include/jemalloc/internal/fxp.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "1f72cf9a1fa1e722da228477653e0fd3")
!897 = !DIDerivedType(tag: DW_TAG_member, name: "deferral_allowed", scope: !890, file: !889, line: 39, baseType: !185, size: 8, offset: 160)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "hugify_delay_ms", scope: !890, file: !889, line: 45, baseType: !156, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "min_purge_interval_ms", scope: !890, file: !889, line: 50, baseType: !156, size: 64, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "npending_purge", scope: !806, file: !510, line: 132, baseType: !118, size: 64, offset: 45312)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !806, file: !510, line: 138, baseType: !902, size: 256, offset: 45376)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "hpa_shard_nonderived_stats_t", file: !510, line: 41, baseType: !903)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hpa_shard_nonderived_stats_s", file: !510, line: 42, size: 256, elements: !904)
!904 = !{!905, !906, !907, !908}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "npurge_passes", scope: !903, file: !510, line: 48, baseType: !156, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "npurges", scope: !903, file: !510, line: 56, baseType: !156, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "nhugifies", scope: !903, file: !510, line: 63, baseType: !156, size: 64, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ndehugifies", scope: !903, file: !510, line: 69, baseType: !156, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "last_purge", scope: !806, file: !510, line: 143, baseType: !151, size: 64, offset: 45632)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "edata_cache", scope: !501, file: !245, line: 107, baseType: !711, size: 1152, offset: 544768)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ind", scope: !501, file: !245, line: 109, baseType: !7, size: 32, offset: 545920)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "stats_mtx", scope: !501, file: !245, line: 111, baseType: !135, size: 64, offset: 545984)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !501, file: !245, line: 112, baseType: !914, size: 64, offset: 546048)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "emap", scope: !501, file: !245, line: 115, baseType: !689, size: 64, offset: 546112)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !501, file: !245, line: 118, baseType: !518, size: 64, offset: 546176)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ind", scope: !210, file: !211, line: 83, baseType: !7, size: 32, offset: 631424)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !210, file: !211, line: 90, baseType: !518, size: 64, offset: 631488)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "create_time", scope: !210, file: !211, line: 92, baseType: !151, size: 64, offset: 631552)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "bins", scope: !210, file: !211, line: 98, baseType: !921, offset: 631616)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !922, elements: !945)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "bin_t", file: !923, line: 14, baseType: !924)
!923 = !DIFile(filename: "include/jemalloc/internal/bin.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "1555ce3b2d1f4242c5e8f5e8a8530dd2")
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_s", file: !923, line: 15, size: 1792, elements: !925)
!925 = !{!926, !927, !942, !943, !944}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !924, file: !923, line: 17, baseType: !136, size: 896)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !924, file: !923, line: 23, baseType: !928, size: 640, offset: 896)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "bin_stats_t", file: !929, line: 6, baseType: !930)
!929 = !DIFile(filename: "include/jemalloc/internal/bin_stats.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "6084e64226164dc89ecbf220d8798196")
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_stats_s", file: !929, line: 7, size: 640, elements: !931)
!931 = !{!932, !933, !934, !935, !936, !937, !938, !939, !940, !941}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "nmalloc", scope: !930, file: !929, line: 14, baseType: !156, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ndalloc", scope: !930, file: !929, line: 15, baseType: !156, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "nrequests", scope: !930, file: !929, line: 22, baseType: !156, size: 64, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "curregs", scope: !930, file: !929, line: 28, baseType: !118, size: 64, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "nfills", scope: !930, file: !929, line: 31, baseType: !156, size: 64, offset: 256)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "nflushes", scope: !930, file: !929, line: 34, baseType: !156, size: 64, offset: 320)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "nslabs", scope: !930, file: !929, line: 37, baseType: !156, size: 64, offset: 384)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "reslabs", scope: !930, file: !929, line: 43, baseType: !156, size: 64, offset: 448)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "curslabs", scope: !930, file: !929, line: 46, baseType: !118, size: 64, offset: 512)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "nonfull_slabs", scope: !930, file: !929, line: 49, baseType: !118, size: 64, offset: 576)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "slabcur", scope: !924, file: !923, line: 31, baseType: !377, size: 64, offset: 1536)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "slabs_nonfull", scope: !924, file: !923, line: 38, baseType: !546, size: 128, offset: 1600)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "slabs_full", scope: !924, file: !923, line: 41, baseType: !370, size: 64, offset: 1728)
!945 = !{!946}
!946 = !DISubrange(count: 0)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_arena", scope: !182, file: !178, line: 250, baseType: !208, size: 64, offset: 1152)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_arena_decay_ticker", scope: !182, file: !178, line: 250, baseType: !949, size: 64, offset: 1216)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "ticker_geom_t", file: !950, line: 116, baseType: !951)
!950 = !DIFile(filename: "include/jemalloc/internal/ticker.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "4f08e06764a534efd56d8b453c3ab4c6")
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ticker_geom_s", file: !950, line: 117, size: 64, elements: !952)
!952 = !{!953, !957}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !951, file: !950, line: 118, baseType: !954, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !188, line: 26, baseType: !955)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !159, line: 41, baseType: !956)
!956 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "nticks", scope: !951, file: !950, line: 119, baseType: !954, size: 32, offset: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_sec_shard", scope: !182, file: !178, line: 250, baseType: !344, size: 8, offset: 1280)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_binshards", scope: !182, file: !178, line: 250, baseType: !960, size: 288, offset: 1288)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "tsd_binshards_t", file: !961, line: 12, baseType: !962)
!961 = !DIFile(filename: "include/jemalloc/internal/bin_types.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "fc7f646211d9805be8d5bf0ceecadef1")
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tsd_binshards_s", file: !961, line: 13, size: 288, elements: !963)
!963 = !{!964}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "binshard", scope: !962, file: !961, line: 14, baseType: !343, size: 288)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_tsd_link", scope: !182, file: !178, line: 250, baseType: !966, size: 128, offset: 1600)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "tsd_link_t", file: !178, line: 56, baseType: !967)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 56, size: 128, elements: !968)
!968 = !{!969, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "qre_next", scope: !967, file: !178, line: 56, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "qre_prev", scope: !967, file: !178, line: 56, baseType: !970, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_in_hook", scope: !182, file: !178, line: 250, baseType: !185, size: 8, offset: 1728)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_peak", scope: !182, file: !178, line: 250, baseType: !974, size: 128, offset: 1792)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "peak_t", file: !975, line: 4, baseType: !976)
!975 = !DIFile(filename: "include/jemalloc/internal/peak.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "db27d6c5c9d89fe5af71951a95ea7d81")
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "peak_s", file: !975, line: 5, size: 128, elements: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "cur_max", scope: !976, file: !975, line: 7, baseType: !156, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "adjustment", scope: !976, file: !975, line: 12, baseType: !156, size: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_activity_callback_thunk", scope: !182, file: !178, line: 250, baseType: !981, size: 128, offset: 1920)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "activity_callback_thunk_t", file: !982, line: 17, baseType: !983)
!982 = !DIFile(filename: "include/jemalloc/internal/activity_callback.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "01371170954e027ec769c2dae37c070c")
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "activity_callback_thunk_s", file: !982, line: 18, size: 128, elements: !984)
!984 = !{!985, !990}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !983, file: !982, line: 19, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "activity_callback_t", file: !982, line: 15, baseType: !987)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{null, !121, !156, !156}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "uctx", scope: !983, file: !982, line: 20, baseType: !121, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_tcache_slow", scope: !182, file: !178, line: 250, baseType: !299, size: 1408, offset: 2048)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_rtree_ctx", scope: !182, file: !178, line: 250, baseType: !993, size: 3072, offset: 3456)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtree_ctx_t", file: !994, line: 52, baseType: !995)
!994 = !DIFile(filename: "include/jemalloc/internal/rtree_tsd.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "586ac55129008ada68447c0d458f0dc5")
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtree_ctx_s", file: !994, line: 53, size: 3072, elements: !996)
!996 = !{!997, !1011}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !995, file: !994, line: 55, baseType: !998, size: 2048)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !999, size: 2048, elements: !1009)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtree_ctx_cache_elm_t", file: !994, line: 46, baseType: !1000)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtree_ctx_cache_elm_s", file: !994, line: 47, size: 128, elements: !1001)
!1001 = !{!1002, !1003}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "leafkey", scope: !1000, file: !994, line: 48, baseType: !122, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "leaf", scope: !1000, file: !994, line: 49, baseType: !1004, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtree_leaf_elm_t", file: !994, line: 44, baseType: !1006)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtree_leaf_elm_s", file: !696, line: 61, size: 64, elements: !1007)
!1007 = !{!1008}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "le_bits", scope: !1006, file: !696, line: 77, baseType: !493, size: 64)
!1009 = !{!1010}
!1010 = !DISubrange(count: 16)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "l2_cache", scope: !995, file: !994, line: 57, baseType: !1012, size: 1024, offset: 2048)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !999, size: 1024, elements: !443)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !182, file: !178, line: 255, baseType: !1014, size: 8, offset: 6528)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_u8_t", file: !168, line: 97, baseType: !1015)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 97, size: 8, elements: !1016)
!1016 = !{!1017}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "repr", scope: !1015, file: !168, line: 97, baseType: !344, size: 8)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_thread_allocated", scope: !182, file: !178, line: 256, baseType: !156, size: 64, offset: 6592)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_thread_allocated_next_event_fast", scope: !182, file: !178, line: 256, baseType: !156, size: 64, offset: 6656)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_thread_deallocated", scope: !182, file: !178, line: 256, baseType: !156, size: 64, offset: 6720)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_thread_deallocated_next_event_fast", scope: !182, file: !178, line: 256, baseType: !156, size: 64, offset: 6784)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_tcache", scope: !182, file: !178, line: 256, baseType: !355, size: 14080, offset: 6848)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "cant_access_tsd_items_directly_use_a_getter_or_setter_witness_tsd", scope: !182, file: !178, line: 257, baseType: !1024, size: 128, offset: 20928)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "witness_tsd_t", file: !6, line: 122, baseType: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "witness_tsd_s", file: !6, line: 123, size: 128, elements: !1026)
!1026 = !{!1027, !1055}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "witnesses", scope: !1025, file: !6, line: 124, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "witness_list_t", file: !6, line: 91, baseType: !1029)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 91, size: 64, elements: !1030)
!1030 = !{!1031}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "qlh_first", scope: !1029, file: !6, line: 91, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "witness_t", file: !6, line: 90, baseType: !1034)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "witness_s", file: !6, line: 95, size: 384, elements: !1035)
!1035 = !{!1036, !1040, !1042, !1049, !1050}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1034, file: !6, line: 97, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1039)
!1039 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rank", scope: !1034, file: !6, line: 103, baseType: !1041, size: 32, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "witness_rank_t", file: !6, line: 79, baseType: !5)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !1034, file: !6, line: 110, baseType: !1043, size: 64, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "witness_comp_t", file: !6, line: 92, baseType: !1045)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!956, !1047, !121, !1047, !121}
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1033)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !1034, file: !6, line: 113, baseType: !121, size: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1034, file: !6, line: 116, baseType: !1051, size: 128, offset: 256)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1034, file: !6, line: 116, size: 128, elements: !1052)
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "qre_next", scope: !1051, file: !6, line: 116, baseType: !1032, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "qre_prev", scope: !1051, file: !6, line: 116, baseType: !1032, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "forking", scope: !1025, file: !6, line: 125, baseType: !185, size: 8, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "n_lock_ops", scope: !148, file: !147, line: 114, baseType: !156, size: 64, offset: 448)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !143, file: !53, line: 46, baseType: !1058, size: 320, offset: 512)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !1059, line: 72, baseType: !1060)
!1059 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!1060 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !1059, line: 67, size: 320, elements: !1061)
!1061 = !{!1062, !1082, !1086}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !1060, file: !1059, line: 69, baseType: !1063, size: 320)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !1064, line: 22, size: 320, elements: !1065)
!1064 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1071, !1073, !1074}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !1063, file: !1064, line: 24, baseType: !956, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1063, file: !1064, line: 25, baseType: !7, size: 32, offset: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !1063, file: !1064, line: 26, baseType: !956, size: 32, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !1063, file: !1064, line: 28, baseType: !7, size: 32, offset: 96)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !1063, file: !1064, line: 32, baseType: !956, size: 32, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !1063, file: !1064, line: 34, baseType: !1072, size: 16, offset: 160)
!1072 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !1063, file: !1064, line: 35, baseType: !1072, size: 16, offset: 176)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !1063, file: !1064, line: 36, baseType: !1075, size: 128, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !1076, line: 55, baseType: !1077)
!1076 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !1076, line: 51, size: 128, elements: !1078)
!1078 = !{!1079, !1081}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !1077, file: !1076, line: 53, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !1077, file: !1076, line: 54, baseType: !1080, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1060, file: !1059, line: 70, baseType: !1083, size: 320)
!1083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, size: 320, elements: !1084)
!1084 = !{!1085}
!1085 = !DISubrange(count: 40)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1060, file: !1059, line: 71, baseType: !754, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !143, file: !53, line: 52, baseType: !589, size: 8, offset: 832)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "witness", scope: !140, file: !53, line: 61, baseType: !1033, size: 384)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "lock_order", scope: !140, file: !53, line: 62, baseType: !1090, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "malloc_mutex_lock_order_t", file: !53, line: 19, baseType: !52)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "thr_uid", scope: !132, file: !92, line: 151, baseType: !156, size: 64, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "thr_discrim", scope: !132, file: !92, line: 157, baseType: !156, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "thread_name", scope: !132, file: !92, line: 160, baseType: !1094, size: 64, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "attached", scope: !132, file: !92, line: 162, baseType: !185, size: 8, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "expired", scope: !132, file: !92, line: 163, baseType: !185, size: 8, offset: 264)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "tdata_link", scope: !132, file: !92, line: 165, baseType: !1098, size: 128, offset: 320)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !132, file: !92, line: 165, size: 128, elements: !1099)
!1099 = !{!1100, !1101}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "rbn_left", scope: !1098, file: !92, line: 165, baseType: !130, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "rbn_right_red", scope: !1098, file: !92, line: 165, baseType: !130, size: 64, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "tctx_uid_next", scope: !132, file: !92, line: 172, baseType: !156, size: 64, offset: 448)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "bt2tctx", scope: !132, file: !92, line: 180, baseType: !1104, size: 384, offset: 512)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "ckh_t", file: !1105, line: 63, baseType: !1106)
!1105 = !DIFile(filename: "include/jemalloc/internal/ckh.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "764fcd222e751d77d1875da9f00741d3")
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1105, line: 34, size: 384, elements: !1107)
!1107 = !{!1108, !1109, !1110, !1111, !1112, !1120, !1125}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "prng_state", scope: !1106, file: !1105, line: 45, baseType: !156, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1106, file: !1105, line: 48, baseType: !118, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "lg_minbuckets", scope: !1106, file: !1105, line: 54, baseType: !7, size: 32, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "lg_curbuckets", scope: !1106, file: !1105, line: 55, baseType: !7, size: 32, offset: 160)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1106, file: !1105, line: 58, baseType: !1113, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "ckh_hash_t", file: !1105, line: 24, baseType: !1115)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{null, !1117, !1119}
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "keycomp", scope: !1106, file: !1105, line: 59, baseType: !1121, size: 64, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "ckh_keycomp_t", file: !1105, line: 25, baseType: !1123)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!185, !1117, !1117}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "tab", scope: !1106, file: !1105, line: 62, baseType: !1126, size: 64, offset: 320)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "ckhc_t", file: !1105, line: 31, baseType: !1128)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1105, line: 28, size: 128, elements: !1129)
!1129 = !{!1130, !1131}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1128, file: !1105, line: 29, baseType: !1117, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1128, file: !1105, line: 30, baseType: !1117, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "enq", scope: !132, file: !92, line: 183, baseType: !185, size: 8, offset: 896)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "enq_idump", scope: !132, file: !92, line: 184, baseType: !185, size: 8, offset: 904)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "enq_gdump", scope: !132, file: !92, line: 185, baseType: !185, size: 8, offset: 912)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dumping", scope: !132, file: !92, line: 193, baseType: !185, size: 8, offset: 920)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !132, file: !92, line: 199, baseType: !185, size: 8, offset: 928)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "cnt_summed", scope: !132, file: !92, line: 202, baseType: !1138, size: 512, offset: 960)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "prof_cnt_t", file: !126, line: 5, baseType: !1139)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prof_cnt_s", file: !92, line: 25, size: 512, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "curobjs", scope: !1139, file: !92, line: 27, baseType: !156, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "curobjs_shifted_unbiased", scope: !1139, file: !92, line: 28, baseType: !156, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "curbytes", scope: !1139, file: !92, line: 29, baseType: !156, size: 64, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "curbytes_unbiased", scope: !1139, file: !92, line: 30, baseType: !156, size: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "accumobjs", scope: !1139, file: !92, line: 31, baseType: !156, size: 64, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "accumobjs_shifted_unbiased", scope: !1139, file: !92, line: 32, baseType: !156, size: 64, offset: 320)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "accumbytes", scope: !1139, file: !92, line: 33, baseType: !156, size: 64, offset: 384)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "accumbytes_unbiased", scope: !1139, file: !92, line: 34, baseType: !156, size: 64, offset: 448)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !132, file: !92, line: 205, baseType: !1150, size: 8192, offset: 1472)
!1150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 8192, elements: !872)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "thr_uid", scope: !127, file: !92, line: 52, baseType: !156, size: 64, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "thr_discrim", scope: !127, file: !92, line: 53, baseType: !156, size: 64, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "recent_count", scope: !127, file: !92, line: 59, baseType: !156, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !127, file: !92, line: 62, baseType: !1138, size: 512, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "gctx", scope: !127, file: !92, line: 65, baseType: !1156, size: 64, offset: 768)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "prof_gctx_t", file: !126, line: 8, baseType: !1158)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prof_gctx_s", file: !92, line: 111, size: 1024, elements: !1159)
!1159 = !{!1160, !1161, !1162, !1167, !1172, !1173, !1179}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1158, file: !92, line: 113, baseType: !135, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "nlimbo", scope: !1158, file: !92, line: 125, baseType: !7, size: 32, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "tctxs", scope: !1158, file: !92, line: 131, baseType: !1163, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "prof_tctx_tree_t", file: !92, line: 100, baseType: !1164)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !92, line: 100, size: 64, elements: !1165)
!1165 = !{!1166}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "rbt_root", scope: !1164, file: !92, line: 100, baseType: !124, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dump_link", scope: !1158, file: !92, line: 134, baseType: !1168, size: 128, offset: 192)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1158, file: !92, line: 134, size: 128, elements: !1169)
!1169 = !{!1170, !1171}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "rbn_left", scope: !1168, file: !92, line: 134, baseType: !1156, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "rbn_right_red", scope: !1168, file: !92, line: 134, baseType: !1156, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "cnt_summed", scope: !1158, file: !92, line: 137, baseType: !1138, size: 512, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "bt", scope: !1158, file: !92, line: 140, baseType: !1174, size: 128, offset: 832)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "prof_bt_t", file: !126, line: 4, baseType: !1175)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prof_bt_s", file: !92, line: 10, size: 128, elements: !1176)
!1176 = !{!1177, !1178}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1175, file: !92, line: 12, baseType: !326, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1175, file: !92, line: 13, baseType: !7, size: 32, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1158, file: !92, line: 143, baseType: !1180, size: 64, offset: 960)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 64, elements: !836)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "tctx_uid", scope: !127, file: !92, line: 80, baseType: !156, size: 64, offset: 832)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "tctx_link", scope: !127, file: !92, line: 83, baseType: !1183, size: 128, offset: 896)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !127, file: !92, line: 83, size: 128, elements: !1184)
!1184 = !{!1185, !1186}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "rbn_left", scope: !1183, file: !92, line: 83, baseType: !124, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "rbn_right_red", scope: !1183, file: !92, line: 83, baseType: !124, size: 64, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "prepared", scope: !127, file: !92, line: 89, baseType: !185, size: 8, offset: 1024)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !127, file: !92, line: 92, baseType: !1189, size: 32, offset: 1056)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "prof_tctx_state_t", file: !92, line: 42, baseType: !91)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "dump_cnts", scope: !127, file: !92, line: 98, baseType: !1138, size: 512, offset: 1088)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "malloc_cpuid_t", file: !1193, line: 7, baseType: !956)
!1193 = !DIFile(filename: "include/jemalloc/internal/jemalloc_internal_types.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "98d7874a3f80133deb859835db34fa20")
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "witness_tsdn_t", file: !6, line: 134, baseType: !1196)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "witness_tsdn_s", file: !6, line: 135, size: 128, elements: !1197)
!1197 = !{!1198}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "witness_tsd", scope: !1196, file: !6, line: 136, baseType: !1024, size: 128)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "extent_hooks_t", file: !1201, line: 316, baseType: !1202)
!1201 = !DIFile(filename: "include/jemalloc/internal/../jemalloc.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "08758f482c8909917f85674184d910f4")
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extent_hooks_s", file: !1201, line: 382, size: 576, elements: !1203)
!1203 = !{!1204, !1209, !1214, !1219, !1224, !1227, !1230, !1231, !1236}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1202, file: !1201, line: 383, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "extent_alloc_t", file: !1201, line: 323, baseType: !1207)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!121, !1199, !121, !118, !118, !608, !608, !7}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dalloc", scope: !1202, file: !1201, line: 384, baseType: !1210, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "extent_dalloc_t", file: !1201, line: 331, baseType: !1212)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!185, !1199, !121, !118, !185, !7}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !1202, file: !1201, line: 385, baseType: !1215, size: 64, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "extent_destroy_t", file: !1201, line: 339, baseType: !1217)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{null, !1199, !121, !118, !185, !7}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !1202, file: !1201, line: 386, baseType: !1220, size: 64, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "extent_commit_t", file: !1201, line: 347, baseType: !1222)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!185, !1199, !121, !118, !118, !118, !7}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "decommit", scope: !1202, file: !1201, line: 387, baseType: !1225, size: 64, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "extent_decommit_t", file: !1201, line: 355, baseType: !1222)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "purge_lazy", scope: !1202, file: !1201, line: 388, baseType: !1228, size: 64, offset: 320)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "extent_purge_t", file: !1201, line: 363, baseType: !1222)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "purge_forced", scope: !1202, file: !1201, line: 389, baseType: !1228, size: 64, offset: 384)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1202, file: !1201, line: 390, baseType: !1232, size: 64, offset: 448)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "extent_split_t", file: !1201, line: 371, baseType: !1234)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!185, !1199, !121, !118, !118, !118, !185, !7}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "merge", scope: !1202, file: !1201, line: 391, baseType: !1237, size: 64, offset: 512)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "extent_merge_t", file: !1201, line: 379, baseType: !1239)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!185, !1199, !121, !118, !121, !118, !185, !7}
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1242, line: 267, baseType: !1243)
!1242 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !159, line: 207, baseType: !754)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!1245 = !{!0, !1246}
!1246 = !DIGlobalVariableExpression(var: !1247, expr: !DIExpression(DW_OP_constu, 6582955728264977243, DW_OP_stack_value))
!1247 = distinct !DIGlobalVariable(name: "uaf_detect_junk", scope: !2, file: !1248, line: 16, type: !1249, isLocal: true, isDefinition: true)
!1248 = !DIFile(filename: "include/jemalloc/internal/san.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "04013b0e90becf54e31affe005c37699")
!1249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1251, size: 128, elements: !219)
!1251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1252)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtree_level_t", file: !696, line: 87, baseType: !1253)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtree_level_s", file: !696, line: 88, size: 64, elements: !1254)
!1254 = !{!1255, !1256}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1253, file: !696, line: 90, baseType: !7, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "cumbits", scope: !1253, file: !696, line: 95, baseType: !7, size: 32, offset: 32)
!1257 = !{i32 7, !"Dwarf Version", i32 5}
!1258 = !{i32 2, !"Debug Info Version", i32 3}
!1259 = !{i32 1, !"wchar_size", i32 4}
!1260 = !{i32 8, !"PIC Level", i32 2}
!1261 = !{i32 7, !"uwtable", i32 2}
!1262 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!1263 = distinct !DISubprogram(name: "large_malloc", scope: !3, file: !3, line: 14, type: !1264, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1266)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!121, !174, !208, !118, !185}
!1266 = !{!1267, !1268, !1269, !1270}
!1267 = !DILocalVariable(name: "tsdn", arg: 1, scope: !1263, file: !3, line: 14, type: !174)
!1268 = !DILocalVariable(name: "arena", arg: 2, scope: !1263, file: !3, line: 14, type: !208)
!1269 = !DILocalVariable(name: "usize", arg: 3, scope: !1263, file: !3, line: 14, type: !118)
!1270 = !DILocalVariable(name: "zero", arg: 4, scope: !1263, file: !3, line: 14, type: !185)
!1271 = !{!1272, !1272, i64 0}
!1272 = !{!"any pointer", !1273, i64 0}
!1273 = !{!"omnipotent char", !1274, i64 0}
!1274 = !{!"Simple C/C++ TBAA"}
!1275 = !DILocation(line: 14, column: 22, scope: !1263)
!1276 = !DILocation(line: 14, column: 37, scope: !1263)
!1277 = !{!1278, !1278, i64 0}
!1278 = !{!"long", !1273, i64 0}
!1279 = !DILocation(line: 14, column: 51, scope: !1263)
!1280 = !{!1281, !1281, i64 0}
!1281 = !{!"_Bool", !1273, i64 0}
!1282 = !DILocation(line: 14, column: 63, scope: !1263)
!1283 = !DILocation(line: 15, column: 2, scope: !1263)
!1284 = !DILocation(line: 15, column: 2, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 15, column: 2)
!1286 = !DILocation(line: 17, column: 22, scope: !1263)
!1287 = !DILocation(line: 17, column: 28, scope: !1263)
!1288 = !DILocation(line: 17, column: 35, scope: !1263)
!1289 = !DILocation(line: 17, column: 53, scope: !1263)
!1290 = !{i8 0, i8 2}
!1291 = !{}
!1292 = !DILocation(line: 17, column: 9, scope: !1263)
!1293 = !DILocation(line: 17, column: 2, scope: !1263)
!1294 = distinct !DISubprogram(name: "large_palloc", scope: !3, file: !3, line: 21, type: !1295, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1297)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!121, !174, !208, !118, !118, !185}
!1297 = !{!1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305}
!1298 = !DILocalVariable(name: "tsdn", arg: 1, scope: !1294, file: !3, line: 21, type: !174)
!1299 = !DILocalVariable(name: "arena", arg: 2, scope: !1294, file: !3, line: 21, type: !208)
!1300 = !DILocalVariable(name: "usize", arg: 3, scope: !1294, file: !3, line: 21, type: !118)
!1301 = !DILocalVariable(name: "alignment", arg: 4, scope: !1294, file: !3, line: 21, type: !118)
!1302 = !DILocalVariable(name: "zero", arg: 5, scope: !1294, file: !3, line: 22, type: !185)
!1303 = !DILocalVariable(name: "ausize", scope: !1294, file: !3, line: 23, type: !118)
!1304 = !DILocalVariable(name: "edata", scope: !1294, file: !3, line: 24, type: !377)
!1305 = !DILocalVariable(name: "idump", scope: !1294, file: !3, line: 25, type: !185)
!1306 = !DILocation(line: 21, column: 22, scope: !1294)
!1307 = !DILocation(line: 21, column: 37, scope: !1294)
!1308 = !DILocation(line: 21, column: 51, scope: !1294)
!1309 = !DILocation(line: 21, column: 65, scope: !1294)
!1310 = !DILocation(line: 22, column: 10, scope: !1294)
!1311 = !DILocation(line: 23, column: 2, scope: !1294)
!1312 = !DILocation(line: 23, column: 9, scope: !1294)
!1313 = !DILocation(line: 24, column: 2, scope: !1294)
!1314 = !DILocation(line: 24, column: 11, scope: !1294)
!1315 = !DILocation(line: 25, column: 2, scope: !1294)
!1316 = !DILocation(line: 25, column: 14, scope: !1294)
!1317 = !DILocation(line: 27, column: 2, scope: !1294)
!1318 = !DILocation(line: 27, column: 2, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 27, column: 2)
!1320 = !DILocation(line: 29, column: 19, scope: !1294)
!1321 = !DILocation(line: 29, column: 26, scope: !1294)
!1322 = !DILocation(line: 29, column: 11, scope: !1294)
!1323 = !DILocation(line: 29, column: 9, scope: !1294)
!1324 = !DILocation(line: 30, column: 6, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 30, column: 6)
!1326 = !DILocation(line: 30, column: 6, scope: !1294)
!1327 = !DILocation(line: 31, column: 3, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 30, column: 59)
!1329 = !DILocation(line: 34, column: 6, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 34, column: 6)
!1331 = !DILocation(line: 34, column: 6, scope: !1294)
!1332 = !DILocation(line: 35, column: 44, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 34, column: 32)
!1334 = !DILocation(line: 35, column: 35, scope: !1333)
!1335 = !DILocation(line: 35, column: 51, scope: !1333)
!1336 = !DILocation(line: 35, column: 58, scope: !1333)
!1337 = !DILocation(line: 35, column: 11, scope: !1333)
!1338 = !DILocation(line: 35, column: 9, scope: !1333)
!1339 = !DILocation(line: 36, column: 2, scope: !1333)
!1340 = !DILocation(line: 37, column: 6, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 37, column: 6)
!1342 = !DILocation(line: 37, column: 30, scope: !1341)
!1343 = !DILocation(line: 37, column: 67, scope: !1341)
!1344 = !DILocation(line: 38, column: 6, scope: !1341)
!1345 = !DILocation(line: 38, column: 13, scope: !1341)
!1346 = !DILocation(line: 38, column: 20, scope: !1341)
!1347 = !DILocation(line: 38, column: 31, scope: !1341)
!1348 = !DILocation(line: 37, column: 42, scope: !1341)
!1349 = !DILocation(line: 37, column: 40, scope: !1341)
!1350 = !DILocation(line: 38, column: 38, scope: !1341)
!1351 = !DILocation(line: 37, column: 6, scope: !1294)
!1352 = !DILocation(line: 39, column: 3, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 38, column: 47)
!1354 = !DILocation(line: 43, column: 21, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 43, column: 6)
!1356 = !DILocation(line: 43, column: 7, scope: !1355)
!1357 = !DILocation(line: 43, column: 6, scope: !1294)
!1358 = !DILocation(line: 45, column: 21, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 43, column: 29)
!1360 = !DILocation(line: 45, column: 28, scope: !1359)
!1361 = !DILocation(line: 45, column: 35, scope: !1359)
!1362 = !DILocation(line: 45, column: 3, scope: !1359)
!1363 = !DILocation(line: 46, column: 29, scope: !1359)
!1364 = !DILocation(line: 46, column: 36, scope: !1359)
!1365 = !DILocation(line: 46, column: 43, scope: !1359)
!1366 = !DILocation(line: 46, column: 3, scope: !1359)
!1367 = !DILocation(line: 47, column: 23, scope: !1359)
!1368 = !DILocation(line: 47, column: 30, scope: !1359)
!1369 = !DILocation(line: 47, column: 37, scope: !1359)
!1370 = !DILocation(line: 47, column: 3, scope: !1359)
!1371 = !DILocation(line: 48, column: 2, scope: !1359)
!1372 = !DILocation(line: 50, column: 19, scope: !1294)
!1373 = !DILocation(line: 50, column: 25, scope: !1294)
!1374 = !DILocation(line: 50, column: 2, scope: !1294)
!1375 = !DILocation(line: 51, column: 24, scope: !1294)
!1376 = !DILocation(line: 51, column: 9, scope: !1294)
!1377 = !DILocation(line: 51, column: 2, scope: !1294)
!1378 = !DILocation(line: 52, column: 1, scope: !1294)
!1379 = distinct !DISubprogram(name: "sz_sa2u", scope: !341, file: !341, line: 313, type: !1380, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1382)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!118, !118, !118}
!1382 = !{!1383, !1384, !1385}
!1383 = !DILocalVariable(name: "size", arg: 1, scope: !1379, file: !341, line: 313, type: !118)
!1384 = !DILocalVariable(name: "alignment", arg: 2, scope: !1379, file: !341, line: 313, type: !118)
!1385 = !DILocalVariable(name: "usize", scope: !1379, file: !341, line: 314, type: !118)
!1386 = !DILocation(line: 313, column: 16, scope: !1379)
!1387 = !DILocation(line: 313, column: 29, scope: !1379)
!1388 = !DILocation(line: 314, column: 2, scope: !1379)
!1389 = !DILocation(line: 314, column: 9, scope: !1379)
!1390 = !DILocation(line: 316, column: 2, scope: !1379)
!1391 = !DILocation(line: 316, column: 2, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1379, file: !341, line: 316, column: 2)
!1393 = !DILocation(line: 319, column: 6, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1379, file: !341, line: 319, column: 6)
!1395 = !DILocation(line: 319, column: 11, scope: !1394)
!1396 = !DILocation(line: 319, column: 32, scope: !1394)
!1397 = !DILocation(line: 319, column: 35, scope: !1394)
!1398 = !DILocation(line: 319, column: 45, scope: !1394)
!1399 = !DILocation(line: 319, column: 6, scope: !1379)
!1400 = !DILocation(line: 334, column: 18, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1394, file: !341, line: 319, column: 54)
!1402 = !DILocation(line: 334, column: 11, scope: !1401)
!1403 = !DILocation(line: 334, column: 9, scope: !1401)
!1404 = !DILocation(line: 335, column: 7, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1401, file: !341, line: 335, column: 7)
!1406 = !DILocation(line: 335, column: 13, scope: !1405)
!1407 = !DILocation(line: 335, column: 7, scope: !1401)
!1408 = !DILocation(line: 336, column: 11, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1405, file: !341, line: 335, column: 34)
!1410 = !DILocation(line: 336, column: 4, scope: !1409)
!1411 = !DILocation(line: 338, column: 2, scope: !1401)
!1412 = !DILocation(line: 342, column: 6, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1379, file: !341, line: 342, column: 6)
!1414 = !DILocation(line: 342, column: 6, scope: !1379)
!1415 = !DILocation(line: 343, column: 3, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1413, file: !341, line: 342, column: 47)
!1417 = !DILocation(line: 347, column: 6, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1379, file: !341, line: 347, column: 6)
!1419 = !DILocation(line: 347, column: 11, scope: !1418)
!1420 = !DILocation(line: 347, column: 6, scope: !1379)
!1421 = !DILocation(line: 348, column: 9, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1418, file: !341, line: 347, column: 33)
!1423 = !DILocation(line: 349, column: 2, scope: !1422)
!1424 = !DILocation(line: 350, column: 18, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1418, file: !341, line: 349, column: 9)
!1426 = !DILocation(line: 350, column: 11, scope: !1425)
!1427 = !DILocation(line: 350, column: 9, scope: !1425)
!1428 = !DILocation(line: 351, column: 7, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !341, line: 351, column: 7)
!1430 = !DILocation(line: 351, column: 15, scope: !1429)
!1431 = !DILocation(line: 351, column: 13, scope: !1429)
!1432 = !DILocation(line: 351, column: 7, scope: !1425)
!1433 = !DILocation(line: 353, column: 4, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1429, file: !341, line: 351, column: 21)
!1435 = !DILocation(line: 361, column: 6, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1379, file: !341, line: 361, column: 6)
!1437 = !DILocation(line: 361, column: 14, scope: !1436)
!1438 = !DILocation(line: 361, column: 12, scope: !1436)
!1439 = !DILocation(line: 361, column: 29, scope: !1436)
!1440 = !DILocation(line: 361, column: 27, scope: !1436)
!1441 = !DILocation(line: 361, column: 53, scope: !1436)
!1442 = !DILocation(line: 361, column: 62, scope: !1436)
!1443 = !DILocation(line: 361, column: 60, scope: !1436)
!1444 = !DILocation(line: 361, column: 6, scope: !1379)
!1445 = !DILocation(line: 363, column: 3, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1436, file: !341, line: 361, column: 69)
!1447 = !DILocation(line: 365, column: 9, scope: !1379)
!1448 = !DILocation(line: 365, column: 2, scope: !1379)
!1449 = !DILocation(line: 366, column: 1, scope: !1379)
!1450 = distinct !DISubprogram(name: "tsdn_null", scope: !178, file: !178, line: 287, type: !1451, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1455)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!185, !1453}
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!1455 = !{!1456}
!1456 = !DILocalVariable(name: "tsdn", arg: 1, scope: !1450, file: !178, line: 287, type: !1453)
!1457 = !DILocation(line: 287, column: 25, scope: !1450)
!1458 = !DILocation(line: 288, column: 9, scope: !1450)
!1459 = !DILocation(line: 288, column: 14, scope: !1450)
!1460 = !DILocation(line: 288, column: 2, scope: !1450)
!1461 = distinct !DISubprogram(name: "arena_choose_maybe_huge", scope: !1462, file: !1462, line: 21, type: !1463, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1465)
!1462 = !DIFile(filename: "include/jemalloc/internal/arena_inlines_b.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "6f50a4f51a9c2960dc701293280fb741")
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!208, !970, !208, !118}
!1465 = !{!1466, !1467, !1468, !1469}
!1466 = !DILocalVariable(name: "tsd", arg: 1, scope: !1461, file: !1462, line: 21, type: !970)
!1467 = !DILocalVariable(name: "arena", arg: 2, scope: !1461, file: !1462, line: 21, type: !208)
!1468 = !DILocalVariable(name: "size", arg: 3, scope: !1461, file: !1462, line: 21, type: !118)
!1469 = !DILocalVariable(name: "tsd_arena", scope: !1470, file: !1462, line: 32, type: !208)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !1462, line: 31, column: 44)
!1471 = distinct !DILexicalBlock(scope: !1461, file: !1462, line: 31, column: 6)
!1472 = !DILocation(line: 21, column: 32, scope: !1461)
!1473 = !DILocation(line: 21, column: 46, scope: !1461)
!1474 = !DILocation(line: 21, column: 60, scope: !1461)
!1475 = !DILocation(line: 22, column: 6, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1461, file: !1462, line: 22, column: 6)
!1477 = !DILocation(line: 22, column: 12, scope: !1476)
!1478 = !DILocation(line: 22, column: 6, scope: !1461)
!1479 = !DILocation(line: 23, column: 10, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1476, file: !1462, line: 22, column: 21)
!1481 = !DILocation(line: 23, column: 3, scope: !1480)
!1482 = !DILocation(line: 31, column: 6, scope: !1471)
!1483 = !DILocation(line: 31, column: 6, scope: !1461)
!1484 = !DILocation(line: 32, column: 3, scope: !1470)
!1485 = !DILocation(line: 32, column: 12, scope: !1470)
!1486 = !DILocation(line: 32, column: 38, scope: !1470)
!1487 = !DILocation(line: 32, column: 24, scope: !1470)
!1488 = !DILocation(line: 33, column: 7, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1470, file: !1462, line: 33, column: 7)
!1490 = !DILocation(line: 33, column: 17, scope: !1489)
!1491 = !DILocation(line: 33, column: 25, scope: !1489)
!1492 = !DILocation(line: 33, column: 42, scope: !1489)
!1493 = !DILocation(line: 33, column: 28, scope: !1489)
!1494 = !DILocation(line: 33, column: 7, scope: !1470)
!1495 = !DILocation(line: 34, column: 29, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1489, file: !1462, line: 33, column: 54)
!1497 = !DILocation(line: 34, column: 11, scope: !1496)
!1498 = !DILocation(line: 34, column: 4, scope: !1496)
!1499 = !DILocation(line: 36, column: 2, scope: !1471)
!1500 = !DILocation(line: 36, column: 2, scope: !1470)
!1501 = !DILocation(line: 38, column: 22, scope: !1461)
!1502 = !DILocation(line: 38, column: 9, scope: !1461)
!1503 = !DILocation(line: 38, column: 2, scope: !1461)
!1504 = !DILocation(line: 39, column: 1, scope: !1461)
!1505 = distinct !DISubprogram(name: "tsdn_tsd", scope: !178, file: !178, line: 292, type: !1506, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1508)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!970, !174}
!1508 = !{!1509}
!1509 = !DILocalVariable(name: "tsdn", arg: 1, scope: !1505, file: !178, line: 292, type: !174)
!1510 = !DILocation(line: 292, column: 18, scope: !1505)
!1511 = !DILocation(line: 293, column: 2, scope: !1505)
!1512 = !DILocation(line: 293, column: 2, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1505, file: !178, line: 293, column: 2)
!1514 = !DILocation(line: 295, column: 10, scope: !1505)
!1515 = !DILocation(line: 295, column: 16, scope: !1505)
!1516 = !DILocation(line: 295, column: 2, scope: !1505)
!1517 = !DISubprogram(name: "arena_extent_alloc_large", scope: !1518, file: !1518, line: 46, type: !1519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1518 = !DIFile(filename: "include/jemalloc/internal/arena_externs.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "14fcb24b41677b10dad34d5e31411d63")
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!377, !174, !208, !118, !118, !185}
!1521 = distinct !DISubprogram(name: "arena_is_auto", scope: !1522, file: !1522, line: 97, type: !1523, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1525)
!1522 = !DIFile(filename: "include/jemalloc/internal/jemalloc_internal_inlines_b.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "1fc18ef67fd1c52d257761af0d373a54")
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!185, !208}
!1525 = !{!1526}
!1526 = !DILocalVariable(name: "arena", arg: 1, scope: !1521, file: !1522, line: 97, type: !208)
!1527 = !DILocation(line: 97, column: 24, scope: !1521)
!1528 = !DILocation(line: 98, column: 2, scope: !1521)
!1529 = !DILocation(line: 98, column: 2, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1521, file: !1522, line: 98, column: 2)
!1531 = !DILocation(line: 100, column: 24, scope: !1521)
!1532 = !DILocation(line: 100, column: 10, scope: !1521)
!1533 = !DILocation(line: 100, column: 33, scope: !1521)
!1534 = !{!1535, !1535, i64 0}
!1535 = !{!"int", !1273, i64 0}
!1536 = !DILocation(line: 100, column: 31, scope: !1521)
!1537 = !DILocation(line: 100, column: 2, scope: !1521)
!1538 = distinct !DISubprogram(name: "malloc_mutex_lock", scope: !53, file: !53, line: 213, type: !1539, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1541)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !174, !135}
!1541 = !{!1542, !1543}
!1542 = !DILocalVariable(name: "tsdn", arg: 1, scope: !1538, file: !53, line: 213, type: !174)
!1543 = !DILocalVariable(name: "mutex", arg: 2, scope: !1538, file: !53, line: 213, type: !135)
!1544 = !DILocation(line: 213, column: 27, scope: !1538)
!1545 = !DILocation(line: 213, column: 49, scope: !1538)
!1546 = !DILocation(line: 214, column: 49, scope: !1538)
!1547 = !DILocation(line: 214, column: 27, scope: !1538)
!1548 = !DILocation(line: 214, column: 57, scope: !1538)
!1549 = !DILocation(line: 214, column: 64, scope: !1538)
!1550 = !DILocation(line: 214, column: 2, scope: !1538)
!1551 = !DILocation(line: 216, column: 34, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !53, line: 216, column: 7)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !53, line: 215, column: 18)
!1554 = distinct !DILexicalBlock(scope: !1538, file: !53, line: 215, column: 6)
!1555 = !DILocation(line: 216, column: 7, scope: !1552)
!1556 = !DILocation(line: 216, column: 7, scope: !1553)
!1557 = !DILocation(line: 217, column: 27, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1552, file: !53, line: 216, column: 42)
!1559 = !DILocation(line: 217, column: 4, scope: !1558)
!1560 = !DILocation(line: 218, column: 20, scope: !1558)
!1561 = !DILocation(line: 218, column: 27, scope: !1558)
!1562 = !DILocation(line: 218, column: 4, scope: !1558)
!1563 = !DILocation(line: 219, column: 3, scope: !1558)
!1564 = !DILocation(line: 220, column: 28, scope: !1553)
!1565 = !DILocation(line: 220, column: 34, scope: !1553)
!1566 = !DILocation(line: 220, column: 3, scope: !1553)
!1567 = !DILocation(line: 222, column: 37, scope: !1538)
!1568 = !DILocation(line: 222, column: 15, scope: !1538)
!1569 = !DILocation(line: 222, column: 45, scope: !1538)
!1570 = !DILocation(line: 222, column: 52, scope: !1538)
!1571 = !DILocation(line: 222, column: 2, scope: !1538)
!1572 = !DILocation(line: 223, column: 1, scope: !1538)
!1573 = distinct !DISubprogram(name: "edata_list_active_append", scope: !58, file: !58, line: 253, type: !1574, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1576)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{null, !613, !377}
!1576 = !{!1577, !1578}
!1577 = !DILocalVariable(name: "list", arg: 1, scope: !1573, file: !58, line: 253, type: !613)
!1578 = !DILocalVariable(name: "item", arg: 2, scope: !1573, file: !58, line: 253, type: !377)
!1579 = !DILocation(line: 253, column: 1, scope: !1573)
!1580 = !DILocation(line: 253, column: 1, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1573, file: !58, line: 253, column: 1)
!1582 = !{!1273, !1273, i64 0}
!1583 = !DILocation(line: 253, column: 1, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !58, line: 253, column: 1)
!1585 = distinct !DILexicalBlock(scope: !1573, file: !58, line: 253, column: 1)
!1586 = !{!1587, !1272, i64 0}
!1587 = !{!"", !1588, i64 0}
!1588 = !{!"", !1272, i64 0}
!1589 = !DILocation(line: 253, column: 1, scope: !1585)
!1590 = !DILocation(line: 253, column: 1, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1584, file: !58, line: 253, column: 1)
!1592 = !DILocation(line: 253, column: 1, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1591, file: !58, line: 253, column: 1)
!1594 = distinct !DISubprogram(name: "malloc_mutex_unlock", scope: !53, file: !53, line: 226, type: !1539, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1595)
!1595 = !{!1596, !1597}
!1596 = !DILocalVariable(name: "tsdn", arg: 1, scope: !1594, file: !53, line: 226, type: !174)
!1597 = !DILocalVariable(name: "mutex", arg: 2, scope: !1594, file: !53, line: 226, type: !135)
!1598 = !DILocation(line: 226, column: 29, scope: !1594)
!1599 = !DILocation(line: 226, column: 51, scope: !1594)
!1600 = !DILocation(line: 227, column: 18, scope: !1594)
!1601 = !DILocation(line: 227, column: 25, scope: !1594)
!1602 = !DILocation(line: 227, column: 2, scope: !1594)
!1603 = !DILocation(line: 228, column: 39, scope: !1594)
!1604 = !DILocation(line: 228, column: 17, scope: !1594)
!1605 = !DILocation(line: 228, column: 47, scope: !1594)
!1606 = !DILocation(line: 228, column: 54, scope: !1594)
!1607 = !DILocation(line: 228, column: 2, scope: !1594)
!1608 = !DILocation(line: 230, column: 3, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !53, line: 229, column: 18)
!1610 = distinct !DILexicalBlock(scope: !1594, file: !53, line: 229, column: 6)
!1611 = !DILocation(line: 232, column: 1, scope: !1594)
!1612 = distinct !DISubprogram(name: "arena_decay_tick", scope: !1462, file: !1462, line: 140, type: !1613, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1615)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{null, !174, !208}
!1615 = !{!1616, !1617}
!1616 = !DILocalVariable(name: "tsdn", arg: 1, scope: !1612, file: !1462, line: 140, type: !174)
!1617 = !DILocalVariable(name: "arena", arg: 2, scope: !1612, file: !1462, line: 140, type: !208)
!1618 = !DILocation(line: 140, column: 26, scope: !1612)
!1619 = !DILocation(line: 140, column: 41, scope: !1612)
!1620 = !DILocation(line: 141, column: 20, scope: !1612)
!1621 = !DILocation(line: 141, column: 26, scope: !1612)
!1622 = !DILocation(line: 141, column: 2, scope: !1612)
!1623 = !DILocation(line: 142, column: 1, scope: !1612)
!1624 = distinct !DISubprogram(name: "edata_addr_get", scope: !58, file: !58, line: 349, type: !1625, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1629)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!121, !1627}
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!1629 = !{!1630}
!1630 = !DILocalVariable(name: "edata", arg: 1, scope: !1624, file: !58, line: 349, type: !1627)
!1631 = !DILocation(line: 349, column: 31, scope: !1624)
!1632 = !DILocation(line: 350, column: 2, scope: !1624)
!1633 = !DILocation(line: 350, column: 2, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1624, file: !58, line: 350, column: 2)
!1635 = !DILocation(line: 352, column: 9, scope: !1624)
!1636 = !DILocation(line: 352, column: 16, scope: !1624)
!1637 = !{!1638, !1272, i64 8}
!1638 = !{!"edata_s", !1278, i64 0, !1272, i64 8, !1273, i64 16, !1272, i64 24, !1278, i64 32, !1273, i64 40, !1273, i64 64}
!1639 = !DILocation(line: 352, column: 2, scope: !1624)
!1640 = distinct !DISubprogram(name: "large_ralloc_no_move", scope: !3, file: !3, line: 130, type: !1641, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1643)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!185, !174, !377, !118, !118, !185}
!1643 = !{!1644, !1645, !1646, !1647, !1648, !1649}
!1644 = !DILocalVariable(name: "tsdn", arg: 1, scope: !1640, file: !3, line: 130, type: !174)
!1645 = !DILocalVariable(name: "edata", arg: 2, scope: !1640, file: !3, line: 130, type: !377)
!1646 = !DILocalVariable(name: "usize_min", arg: 3, scope: !1640, file: !3, line: 130, type: !118)
!1647 = !DILocalVariable(name: "usize_max", arg: 4, scope: !1640, file: !3, line: 131, type: !118)
!1648 = !DILocalVariable(name: "zero", arg: 5, scope: !1640, file: !3, line: 131, type: !185)
!1649 = !DILocalVariable(name: "oldusize", scope: !1640, file: !3, line: 132, type: !118)
!1650 = !DILocation(line: 130, column: 30, scope: !1640)
!1651 = !DILocation(line: 130, column: 45, scope: !1640)
!1652 = !DILocation(line: 130, column: 59, scope: !1640)
!1653 = !DILocation(line: 131, column: 12, scope: !1640)
!1654 = !DILocation(line: 131, column: 28, scope: !1640)
!1655 = !DILocation(line: 132, column: 2, scope: !1640)
!1656 = !DILocation(line: 132, column: 9, scope: !1640)
!1657 = !DILocation(line: 132, column: 36, scope: !1640)
!1658 = !DILocation(line: 132, column: 20, scope: !1640)
!1659 = !DILocation(line: 135, column: 2, scope: !1640)
!1660 = !DILocation(line: 135, column: 2, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 135, column: 2)
!1662 = !DILocation(line: 137, column: 2, scope: !1640)
!1663 = !DILocation(line: 137, column: 2, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 137, column: 2)
!1665 = !DILocation(line: 140, column: 6, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 140, column: 6)
!1667 = !DILocation(line: 140, column: 18, scope: !1666)
!1668 = !DILocation(line: 140, column: 16, scope: !1666)
!1669 = !DILocation(line: 140, column: 6, scope: !1640)
!1670 = !DILocation(line: 142, column: 36, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 142, column: 7)
!1672 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 140, column: 28)
!1673 = !DILocation(line: 142, column: 42, scope: !1671)
!1674 = !DILocation(line: 142, column: 49, scope: !1671)
!1675 = !DILocation(line: 143, column: 7, scope: !1671)
!1676 = !DILocation(line: 142, column: 8, scope: !1671)
!1677 = !DILocation(line: 142, column: 7, scope: !1672)
!1678 = !DILocation(line: 144, column: 21, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 143, column: 14)
!1680 = !DILocation(line: 144, column: 48, scope: !1679)
!1681 = !DILocation(line: 144, column: 27, scope: !1679)
!1682 = !DILocation(line: 144, column: 4, scope: !1679)
!1683 = !DILocation(line: 145, column: 4, scope: !1679)
!1684 = !DILocation(line: 148, column: 7, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 148, column: 7)
!1686 = !DILocation(line: 148, column: 19, scope: !1685)
!1687 = !DILocation(line: 148, column: 17, scope: !1685)
!1688 = !DILocation(line: 148, column: 29, scope: !1685)
!1689 = !DILocation(line: 148, column: 32, scope: !1685)
!1690 = !DILocation(line: 148, column: 44, scope: !1685)
!1691 = !DILocation(line: 148, column: 42, scope: !1685)
!1692 = !DILocation(line: 148, column: 53, scope: !1685)
!1693 = !DILocation(line: 149, column: 35, scope: !1685)
!1694 = !DILocation(line: 149, column: 41, scope: !1685)
!1695 = !DILocation(line: 149, column: 48, scope: !1685)
!1696 = !DILocation(line: 149, column: 59, scope: !1685)
!1697 = !DILocation(line: 149, column: 7, scope: !1685)
!1698 = !DILocation(line: 148, column: 7, scope: !1672)
!1699 = !DILocation(line: 150, column: 21, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 149, column: 66)
!1701 = !DILocation(line: 150, column: 48, scope: !1700)
!1702 = !DILocation(line: 150, column: 27, scope: !1700)
!1703 = !DILocation(line: 150, column: 4, scope: !1700)
!1704 = !DILocation(line: 151, column: 4, scope: !1700)
!1705 = !DILocation(line: 153, column: 2, scope: !1672)
!1706 = !DILocation(line: 159, column: 6, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 159, column: 6)
!1708 = !DILocation(line: 159, column: 18, scope: !1707)
!1709 = !DILocation(line: 159, column: 15, scope: !1707)
!1710 = !DILocation(line: 159, column: 28, scope: !1707)
!1711 = !DILocation(line: 159, column: 31, scope: !1707)
!1712 = !DILocation(line: 159, column: 43, scope: !1707)
!1713 = !DILocation(line: 159, column: 40, scope: !1707)
!1714 = !DILocation(line: 159, column: 6, scope: !1640)
!1715 = !DILocation(line: 160, column: 20, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 159, column: 54)
!1717 = !DILocation(line: 160, column: 47, scope: !1716)
!1718 = !DILocation(line: 160, column: 26, scope: !1716)
!1719 = !DILocation(line: 160, column: 3, scope: !1716)
!1720 = !DILocation(line: 161, column: 3, scope: !1716)
!1721 = !DILocation(line: 165, column: 6, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 165, column: 6)
!1723 = !DILocation(line: 165, column: 17, scope: !1722)
!1724 = !DILocation(line: 165, column: 15, scope: !1722)
!1725 = !DILocation(line: 165, column: 6, scope: !1640)
!1726 = !DILocation(line: 166, column: 36, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 166, column: 7)
!1728 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 165, column: 28)
!1729 = !DILocation(line: 166, column: 42, scope: !1727)
!1730 = !DILocation(line: 166, column: 49, scope: !1727)
!1731 = !DILocation(line: 166, column: 8, scope: !1727)
!1732 = !DILocation(line: 166, column: 7, scope: !1728)
!1733 = !DILocation(line: 167, column: 21, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 166, column: 61)
!1735 = !DILocation(line: 167, column: 48, scope: !1734)
!1736 = !DILocation(line: 167, column: 27, scope: !1734)
!1737 = !DILocation(line: 167, column: 4, scope: !1734)
!1738 = !DILocation(line: 168, column: 4, scope: !1734)
!1739 = !DILocation(line: 170, column: 2, scope: !1728)
!1740 = !DILocation(line: 171, column: 2, scope: !1640)
!1741 = !DILocation(line: 172, column: 1, scope: !1640)
!1742 = distinct !DISubprogram(name: "edata_usize_get", scope: !58, file: !58, line: 281, type: !1743, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1745)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!118, !1627}
!1745 = !{!1746}
!1746 = !DILocalVariable(name: "edata", arg: 1, scope: !1742, file: !58, line: 281, type: !1627)
!1747 = !DILocation(line: 281, column: 32, scope: !1742)
!1748 = !DILocation(line: 282, column: 39, scope: !1742)
!1749 = !DILocation(line: 282, column: 23, scope: !1742)
!1750 = !DILocation(line: 282, column: 9, scope: !1742)
!1751 = !DILocation(line: 282, column: 2, scope: !1742)
!1752 = distinct !DISubprogram(name: "large_ralloc_no_move_expand", scope: !3, file: !3, line: 83, type: !1753, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1755)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!185, !174, !377, !118, !185}
!1755 = !{!1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1772, !1773}
!1756 = !DILocalVariable(name: "tsdn", arg: 1, scope: !1752, file: !3, line: 83, type: !174)
!1757 = !DILocalVariable(name: "edata", arg: 2, scope: !1752, file: !3, line: 83, type: !377)
!1758 = !DILocalVariable(name: "usize", arg: 3, scope: !1752, file: !3, line: 83, type: !118)
!1759 = !DILocalVariable(name: "zero", arg: 4, scope: !1752, file: !3, line: 84, type: !185)
!1760 = !DILocalVariable(name: "arena", scope: !1752, file: !3, line: 85, type: !208)
!1761 = !DILocalVariable(name: "old_size", scope: !1752, file: !3, line: 87, type: !118)
!1762 = !DILocalVariable(name: "old_usize", scope: !1752, file: !3, line: 88, type: !118)
!1763 = !DILocalVariable(name: "new_size", scope: !1752, file: !3, line: 89, type: !118)
!1764 = !DILocalVariable(name: "szind", scope: !1752, file: !3, line: 91, type: !340)
!1765 = !DILocalVariable(name: "deferred_work_generated", scope: !1752, file: !3, line: 93, type: !185)
!1766 = !DILocalVariable(name: "err", scope: !1752, file: !3, line: 94, type: !185)
!1767 = !DILocalVariable(name: "zbase", scope: !1768, file: !3, line: 115, type: !121)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 106, column: 28)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 106, column: 7)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 105, column: 12)
!1771 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 105, column: 6)
!1772 = !DILocalVariable(name: "zpast", scope: !1768, file: !3, line: 117, type: !121)
!1773 = !DILocalVariable(name: "nzero", scope: !1768, file: !3, line: 119, type: !118)
!1774 = !DILocation(line: 83, column: 37, scope: !1752)
!1775 = !DILocation(line: 83, column: 52, scope: !1752)
!1776 = !DILocation(line: 83, column: 66, scope: !1752)
!1777 = !DILocation(line: 84, column: 10, scope: !1752)
!1778 = !DILocation(line: 85, column: 2, scope: !1752)
!1779 = !DILocation(line: 85, column: 11, scope: !1752)
!1780 = !DILocation(line: 85, column: 40, scope: !1752)
!1781 = !DILocation(line: 85, column: 19, scope: !1752)
!1782 = !DILocation(line: 87, column: 2, scope: !1752)
!1783 = !DILocation(line: 87, column: 9, scope: !1752)
!1784 = !DILocation(line: 87, column: 35, scope: !1752)
!1785 = !DILocation(line: 87, column: 20, scope: !1752)
!1786 = !DILocation(line: 88, column: 2, scope: !1752)
!1787 = !DILocation(line: 88, column: 9, scope: !1752)
!1788 = !DILocation(line: 88, column: 37, scope: !1752)
!1789 = !DILocation(line: 88, column: 21, scope: !1752)
!1790 = !DILocation(line: 89, column: 2, scope: !1752)
!1791 = !DILocation(line: 89, column: 9, scope: !1752)
!1792 = !DILocation(line: 89, column: 20, scope: !1752)
!1793 = !DILocation(line: 89, column: 28, scope: !1752)
!1794 = !DILocation(line: 89, column: 26, scope: !1752)
!1795 = !DILocation(line: 91, column: 2, scope: !1752)
!1796 = !DILocation(line: 91, column: 10, scope: !1752)
!1797 = !DILocation(line: 91, column: 32, scope: !1752)
!1798 = !DILocation(line: 91, column: 18, scope: !1752)
!1799 = !DILocation(line: 93, column: 2, scope: !1752)
!1800 = !DILocation(line: 93, column: 7, scope: !1752)
!1801 = !DILocation(line: 94, column: 2, scope: !1752)
!1802 = !DILocation(line: 94, column: 7, scope: !1752)
!1803 = !DILocation(line: 94, column: 23, scope: !1752)
!1804 = !DILocation(line: 94, column: 30, scope: !1752)
!1805 = !DILocation(line: 94, column: 37, scope: !1752)
!1806 = !DILocation(line: 94, column: 47, scope: !1752)
!1807 = !DILocation(line: 94, column: 54, scope: !1752)
!1808 = !DILocation(line: 94, column: 64, scope: !1752)
!1809 = !DILocation(line: 95, column: 6, scope: !1752)
!1810 = !DILocation(line: 95, column: 13, scope: !1752)
!1811 = !DILocation(line: 94, column: 13, scope: !1752)
!1812 = !DILocation(line: 97, column: 6, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 97, column: 6)
!1814 = !DILocation(line: 97, column: 6, scope: !1752)
!1815 = !DILocation(line: 98, column: 30, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 97, column: 31)
!1817 = !DILocation(line: 98, column: 36, scope: !1816)
!1818 = !DILocation(line: 98, column: 3, scope: !1816)
!1819 = !DILocation(line: 99, column: 2, scope: !1816)
!1820 = !DILocation(line: 101, column: 6, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 101, column: 6)
!1822 = !DILocation(line: 101, column: 6, scope: !1752)
!1823 = !DILocation(line: 102, column: 3, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 101, column: 11)
!1825 = !DILocation(line: 105, column: 6, scope: !1771)
!1826 = !DILocation(line: 105, column: 6, scope: !1752)
!1827 = !DILocation(line: 106, column: 7, scope: !1769)
!1828 = !DILocation(line: 106, column: 7, scope: !1770)
!1829 = !DILocation(line: 107, column: 4, scope: !1768)
!1830 = !DILocation(line: 107, column: 4, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1768, file: !3, line: 107, column: 4)
!1832 = !DILocation(line: 115, column: 4, scope: !1768)
!1833 = !DILocation(line: 115, column: 10, scope: !1768)
!1834 = !DILocation(line: 116, column: 35, scope: !1768)
!1835 = !DILocation(line: 116, column: 20, scope: !1768)
!1836 = !DILocation(line: 116, column: 9, scope: !1768)
!1837 = !DILocation(line: 116, column: 44, scope: !1768)
!1838 = !DILocation(line: 116, column: 42, scope: !1768)
!1839 = !DILocation(line: 115, column: 18, scope: !1768)
!1840 = !DILocation(line: 117, column: 4, scope: !1768)
!1841 = !DILocation(line: 117, column: 10, scope: !1768)
!1842 = !DILocation(line: 117, column: 18, scope: !1768)
!1843 = !DILocation(line: 119, column: 4, scope: !1768)
!1844 = !DILocation(line: 119, column: 11, scope: !1768)
!1845 = !DILocation(line: 119, column: 30, scope: !1768)
!1846 = !DILocation(line: 119, column: 19, scope: !1768)
!1847 = !DILocation(line: 119, column: 49, scope: !1768)
!1848 = !DILocation(line: 119, column: 38, scope: !1768)
!1849 = !DILocation(line: 119, column: 36, scope: !1768)
!1850 = !DILocation(line: 120, column: 4, scope: !1768)
!1851 = !DILocation(line: 120, column: 4, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1768, file: !3, line: 120, column: 4)
!1853 = !DILocation(line: 121, column: 11, scope: !1768)
!1854 = !DILocation(line: 121, column: 21, scope: !1768)
!1855 = !DILocation(line: 121, column: 4, scope: !1768)
!1856 = !DILocation(line: 122, column: 3, scope: !1769)
!1857 = !DILocation(line: 122, column: 3, scope: !1768)
!1858 = !DILocation(line: 123, column: 2, scope: !1770)
!1859 = !DILocation(line: 124, column: 35, scope: !1752)
!1860 = !DILocation(line: 124, column: 41, scope: !1752)
!1861 = !DILocation(line: 124, column: 48, scope: !1752)
!1862 = !DILocation(line: 124, column: 55, scope: !1752)
!1863 = !DILocation(line: 124, column: 2, scope: !1752)
!1864 = !DILocation(line: 126, column: 2, scope: !1752)
!1865 = !DILocation(line: 127, column: 1, scope: !1752)
!1866 = distinct !DISubprogram(name: "arena_get_from_edata", scope: !1462, file: !1462, line: 15, type: !1867, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1869)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!208, !377}
!1869 = !{!1870}
!1870 = !DILocalVariable(name: "edata", arg: 1, scope: !1866, file: !1462, line: 15, type: !377)
!1871 = !DILocation(line: 15, column: 31, scope: !1866)
!1872 = !DILocation(line: 16, column: 62, scope: !1866)
!1873 = !DILocation(line: 16, column: 42, scope: !1866)
!1874 = !DILocation(line: 16, column: 35, scope: !1866)
!1875 = !DILocation(line: 16, column: 20, scope: !1866)
!1876 = !DILocation(line: 16, column: 2, scope: !1866)
!1877 = distinct !DISubprogram(name: "large_ralloc_no_move_shrink", scope: !3, file: !3, line: 55, type: !1878, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1880)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!185, !174, !377, !118}
!1880 = !{!1881, !1882, !1883, !1884, !1885, !1888, !1889, !1890, !1891}
!1881 = !DILocalVariable(name: "tsdn", arg: 1, scope: !1877, file: !3, line: 55, type: !174)
!1882 = !DILocalVariable(name: "edata", arg: 2, scope: !1877, file: !3, line: 55, type: !377)
!1883 = !DILocalVariable(name: "usize", arg: 3, scope: !1877, file: !3, line: 55, type: !118)
!1884 = !DILocalVariable(name: "arena", scope: !1877, file: !3, line: 56, type: !208)
!1885 = !DILocalVariable(name: "ehooks", scope: !1877, file: !3, line: 57, type: !1886)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "ehooks_t", file: !733, line: 12, baseType: !526)
!1888 = !DILocalVariable(name: "old_size", scope: !1877, file: !3, line: 58, type: !118)
!1889 = !DILocalVariable(name: "old_usize", scope: !1877, file: !3, line: 59, type: !118)
!1890 = !DILocalVariable(name: "deferred_work_generated", scope: !1877, file: !3, line: 67, type: !185)
!1891 = !DILocalVariable(name: "err", scope: !1877, file: !3, line: 68, type: !185)
!1892 = !DILocation(line: 55, column: 37, scope: !1877)
!1893 = !DILocation(line: 55, column: 52, scope: !1877)
!1894 = !DILocation(line: 55, column: 66, scope: !1877)
!1895 = !DILocation(line: 56, column: 2, scope: !1877)
!1896 = !DILocation(line: 56, column: 11, scope: !1877)
!1897 = !DILocation(line: 56, column: 40, scope: !1877)
!1898 = !DILocation(line: 56, column: 19, scope: !1877)
!1899 = !DILocation(line: 57, column: 2, scope: !1877)
!1900 = !DILocation(line: 57, column: 12, scope: !1877)
!1901 = !DILocation(line: 57, column: 38, scope: !1877)
!1902 = !DILocation(line: 57, column: 21, scope: !1877)
!1903 = !DILocation(line: 58, column: 2, scope: !1877)
!1904 = !DILocation(line: 58, column: 9, scope: !1877)
!1905 = !DILocation(line: 58, column: 35, scope: !1877)
!1906 = !DILocation(line: 58, column: 20, scope: !1877)
!1907 = !DILocation(line: 59, column: 2, scope: !1877)
!1908 = !DILocation(line: 59, column: 9, scope: !1877)
!1909 = !DILocation(line: 59, column: 37, scope: !1877)
!1910 = !DILocation(line: 59, column: 21, scope: !1877)
!1911 = !DILocation(line: 61, column: 2, scope: !1877)
!1912 = !DILocation(line: 61, column: 2, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 61, column: 2)
!1914 = !DILocation(line: 63, column: 29, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 63, column: 6)
!1916 = !DILocation(line: 63, column: 6, scope: !1915)
!1917 = !DILocation(line: 63, column: 6, scope: !1877)
!1918 = !DILocation(line: 64, column: 3, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 63, column: 38)
!1920 = !DILocation(line: 67, column: 2, scope: !1877)
!1921 = !DILocation(line: 67, column: 7, scope: !1877)
!1922 = !DILocation(line: 68, column: 2, scope: !1877)
!1923 = !DILocation(line: 68, column: 7, scope: !1877)
!1924 = !DILocation(line: 68, column: 23, scope: !1877)
!1925 = !DILocation(line: 68, column: 30, scope: !1877)
!1926 = !DILocation(line: 68, column: 37, scope: !1877)
!1927 = !DILocation(line: 68, column: 47, scope: !1877)
!1928 = !DILocation(line: 68, column: 54, scope: !1877)
!1929 = !DILocation(line: 69, column: 6, scope: !1877)
!1930 = !DILocation(line: 69, column: 14, scope: !1877)
!1931 = !DILocation(line: 69, column: 12, scope: !1877)
!1932 = !DILocation(line: 69, column: 42, scope: !1877)
!1933 = !DILocation(line: 69, column: 28, scope: !1877)
!1934 = !DILocation(line: 68, column: 13, scope: !1877)
!1935 = !DILocation(line: 71, column: 6, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 71, column: 6)
!1937 = !DILocation(line: 71, column: 6, scope: !1877)
!1938 = !DILocation(line: 72, column: 3, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 71, column: 11)
!1940 = !DILocation(line: 74, column: 6, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 74, column: 6)
!1942 = !DILocation(line: 74, column: 6, scope: !1877)
!1943 = !DILocation(line: 75, column: 30, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 74, column: 31)
!1945 = !DILocation(line: 75, column: 36, scope: !1944)
!1946 = !DILocation(line: 75, column: 3, scope: !1944)
!1947 = !DILocation(line: 76, column: 2, scope: !1944)
!1948 = !DILocation(line: 77, column: 35, scope: !1877)
!1949 = !DILocation(line: 77, column: 41, scope: !1877)
!1950 = !DILocation(line: 77, column: 48, scope: !1877)
!1951 = !DILocation(line: 77, column: 55, scope: !1877)
!1952 = !DILocation(line: 77, column: 2, scope: !1877)
!1953 = !DILocation(line: 79, column: 2, scope: !1877)
!1954 = !DILocation(line: 80, column: 1, scope: !1877)
!1955 = distinct !DISubprogram(name: "large_ralloc", scope: !3, file: !3, line: 184, type: !1956, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1965)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!121, !174, !208, !121, !118, !118, !185, !354, !1958}
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "hook_ralloc_args_t", file: !68, line: 130, baseType: !1960)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hook_ralloc_args_s", file: !68, line: 131, size: 320, elements: !1961)
!1961 = !{!1962, !1963}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "is_realloc", scope: !1960, file: !68, line: 133, baseType: !185, size: 8)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1960, file: !68, line: 139, baseType: !1964, size: 256, offset: 64)
!1964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 256, elements: !647)
!1965 = !{!1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977}
!1966 = !DILocalVariable(name: "tsdn", arg: 1, scope: !1955, file: !3, line: 184, type: !174)
!1967 = !DILocalVariable(name: "arena", arg: 2, scope: !1955, file: !3, line: 184, type: !208)
!1968 = !DILocalVariable(name: "ptr", arg: 3, scope: !1955, file: !3, line: 184, type: !121)
!1969 = !DILocalVariable(name: "usize", arg: 4, scope: !1955, file: !3, line: 184, type: !118)
!1970 = !DILocalVariable(name: "alignment", arg: 5, scope: !1955, file: !3, line: 185, type: !118)
!1971 = !DILocalVariable(name: "zero", arg: 6, scope: !1955, file: !3, line: 185, type: !185)
!1972 = !DILocalVariable(name: "tcache", arg: 7, scope: !1955, file: !3, line: 185, type: !354)
!1973 = !DILocalVariable(name: "hook_args", arg: 8, scope: !1955, file: !3, line: 186, type: !1958)
!1974 = !DILocalVariable(name: "edata", scope: !1955, file: !3, line: 187, type: !377)
!1975 = !DILocalVariable(name: "oldusize", scope: !1955, file: !3, line: 189, type: !118)
!1976 = !DILocalVariable(name: "ret", scope: !1955, file: !3, line: 209, type: !121)
!1977 = !DILocalVariable(name: "copysize", scope: !1955, file: !3, line: 221, type: !118)
!1978 = !DILocation(line: 184, column: 22, scope: !1955)
!1979 = !DILocation(line: 184, column: 37, scope: !1955)
!1980 = !DILocation(line: 184, column: 50, scope: !1955)
!1981 = !DILocation(line: 184, column: 62, scope: !1955)
!1982 = !DILocation(line: 185, column: 12, scope: !1955)
!1983 = !DILocation(line: 185, column: 28, scope: !1955)
!1984 = !DILocation(line: 185, column: 44, scope: !1955)
!1985 = !DILocation(line: 186, column: 25, scope: !1955)
!1986 = !DILocation(line: 187, column: 2, scope: !1955)
!1987 = !DILocation(line: 187, column: 11, scope: !1955)
!1988 = !DILocation(line: 187, column: 37, scope: !1955)
!1989 = !DILocation(line: 187, column: 63, scope: !1955)
!1990 = !DILocation(line: 187, column: 19, scope: !1955)
!1991 = !DILocation(line: 189, column: 2, scope: !1955)
!1992 = !DILocation(line: 189, column: 9, scope: !1955)
!1993 = !DILocation(line: 189, column: 36, scope: !1955)
!1994 = !DILocation(line: 189, column: 20, scope: !1955)
!1995 = !DILocation(line: 191, column: 2, scope: !1955)
!1996 = !DILocation(line: 191, column: 2, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 191, column: 2)
!1998 = !DILocation(line: 193, column: 2, scope: !1955)
!1999 = !DILocation(line: 193, column: 2, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 193, column: 2)
!2001 = !DILocation(line: 197, column: 28, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 197, column: 6)
!2003 = !DILocation(line: 197, column: 34, scope: !2002)
!2004 = !DILocation(line: 197, column: 41, scope: !2002)
!2005 = !DILocation(line: 197, column: 48, scope: !2002)
!2006 = !DILocation(line: 197, column: 55, scope: !2002)
!2007 = !DILocation(line: 197, column: 7, scope: !2002)
!2008 = !DILocation(line: 197, column: 6, scope: !1955)
!2009 = !DILocation(line: 198, column: 22, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 197, column: 62)
!2011 = !DILocation(line: 198, column: 33, scope: !2010)
!2012 = !{!2013, !1281, i64 0}
!2013 = !{!"hook_ralloc_args_s", !1281, i64 0, !1273, i64 8}
!2014 = !DILocation(line: 199, column: 52, scope: !2010)
!2015 = !DILocation(line: 199, column: 57, scope: !2010)
!2016 = !DILocation(line: 200, column: 7, scope: !2010)
!2017 = !DILocation(line: 200, column: 25, scope: !2010)
!2018 = !DILocation(line: 200, column: 14, scope: !2010)
!2019 = !DILocation(line: 200, column: 30, scope: !2010)
!2020 = !DILocation(line: 200, column: 41, scope: !2010)
!2021 = !DILocation(line: 198, column: 3, scope: !2010)
!2022 = !DILocation(line: 201, column: 25, scope: !2010)
!2023 = !DILocation(line: 201, column: 10, scope: !2010)
!2024 = !DILocation(line: 201, column: 3, scope: !2010)
!2025 = !DILocation(line: 209, column: 2, scope: !1955)
!2026 = !DILocation(line: 209, column: 8, scope: !1955)
!2027 = !DILocation(line: 209, column: 39, scope: !1955)
!2028 = !DILocation(line: 209, column: 45, scope: !1955)
!2029 = !DILocation(line: 209, column: 52, scope: !1955)
!2030 = !DILocation(line: 209, column: 59, scope: !1955)
!2031 = !DILocation(line: 210, column: 6, scope: !1955)
!2032 = !DILocation(line: 209, column: 14, scope: !1955)
!2033 = !DILocation(line: 211, column: 6, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 211, column: 6)
!2035 = !DILocation(line: 211, column: 10, scope: !2034)
!2036 = !DILocation(line: 211, column: 6, scope: !1955)
!2037 = !DILocation(line: 212, column: 3, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 211, column: 19)
!2039 = !DILocation(line: 215, column: 20, scope: !1955)
!2040 = !DILocation(line: 215, column: 31, scope: !1955)
!2041 = !DILocation(line: 216, column: 49, scope: !1955)
!2042 = !DILocation(line: 216, column: 65, scope: !1955)
!2043 = !DILocation(line: 216, column: 54, scope: !1955)
!2044 = !DILocation(line: 217, column: 6, scope: !1955)
!2045 = !DILocation(line: 217, column: 17, scope: !1955)
!2046 = !DILocation(line: 215, column: 2, scope: !1955)
!2047 = !DILocation(line: 218, column: 21, scope: !1955)
!2048 = !DILocation(line: 218, column: 32, scope: !1955)
!2049 = !DILocation(line: 219, column: 51, scope: !1955)
!2050 = !DILocation(line: 219, column: 56, scope: !1955)
!2051 = !DILocation(line: 219, column: 67, scope: !1955)
!2052 = !DILocation(line: 218, column: 2, scope: !1955)
!2053 = !DILocation(line: 221, column: 2, scope: !1955)
!2054 = !DILocation(line: 221, column: 9, scope: !1955)
!2055 = !DILocation(line: 221, column: 21, scope: !1955)
!2056 = !DILocation(line: 221, column: 29, scope: !1955)
!2057 = !DILocation(line: 221, column: 27, scope: !1955)
!2058 = !DILocation(line: 221, column: 20, scope: !1955)
!2059 = !DILocation(line: 221, column: 41, scope: !1955)
!2060 = !DILocation(line: 221, column: 49, scope: !1955)
!2061 = !DILocation(line: 222, column: 9, scope: !1955)
!2062 = !DILocation(line: 222, column: 29, scope: !1955)
!2063 = !DILocation(line: 222, column: 14, scope: !1955)
!2064 = !DILocation(line: 222, column: 37, scope: !1955)
!2065 = !DILocation(line: 222, column: 2, scope: !1955)
!2066 = !DILocation(line: 223, column: 12, scope: !1955)
!2067 = !DILocation(line: 223, column: 33, scope: !1955)
!2068 = !DILocation(line: 223, column: 18, scope: !1955)
!2069 = !DILocation(line: 223, column: 41, scope: !1955)
!2070 = !DILocation(line: 223, column: 51, scope: !1955)
!2071 = !DILocation(line: 223, column: 2, scope: !1955)
!2072 = !DILocation(line: 224, column: 9, scope: !1955)
!2073 = !DILocation(line: 224, column: 2, scope: !1955)
!2074 = !DILocation(line: 225, column: 1, scope: !1955)
!2075 = distinct !DISubprogram(name: "emap_edata_lookup", scope: !691, file: !691, line: 226, type: !2076, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2078)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!377, !174, !689, !1117}
!2078 = !{!2079, !2080, !2081, !2082, !2083}
!2079 = !DILocalVariable(name: "tsdn", arg: 1, scope: !2075, file: !691, line: 226, type: !174)
!2080 = !DILocalVariable(name: "emap", arg: 2, scope: !2075, file: !691, line: 226, type: !689)
!2081 = !DILocalVariable(name: "ptr", arg: 3, scope: !2075, file: !691, line: 226, type: !1117)
!2082 = !DILocalVariable(name: "rtree_ctx_fallback", scope: !2075, file: !691, line: 227, type: !993)
!2083 = !DILocalVariable(name: "rtree_ctx", scope: !2075, file: !691, line: 227, type: !2084)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!2085 = !DILocation(line: 226, column: 27, scope: !2075)
!2086 = !DILocation(line: 226, column: 41, scope: !2075)
!2087 = !DILocation(line: 226, column: 59, scope: !2075)
!2088 = !DILocation(line: 227, column: 2, scope: !2075)
!2089 = !DILocation(line: 229, column: 20, scope: !2075)
!2090 = !DILocation(line: 229, column: 27, scope: !2075)
!2091 = !DILocation(line: 229, column: 33, scope: !2075)
!2092 = !DILocation(line: 229, column: 40, scope: !2075)
!2093 = !DILocation(line: 229, column: 62, scope: !2075)
!2094 = !DILocation(line: 229, column: 51, scope: !2075)
!2095 = !DILocation(line: 229, column: 9, scope: !2075)
!2096 = !DILocation(line: 229, column: 67, scope: !2075)
!2097 = !{!2098, !1272, i64 0}
!2098 = !{!"rtree_contents_s", !1272, i64 0, !2099, i64 8}
!2099 = !{!"rtree_metadata_s", !1535, i64 0, !1273, i64 4, !1281, i64 8, !1281, i64 9}
!2100 = !DILocation(line: 230, column: 1, scope: !2075)
!2101 = !DILocation(line: 229, column: 2, scope: !2075)
!2102 = !DISubprogram(name: "hook_invoke_expand", scope: !68, file: !68, line: 160, type: !2103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{null, !2105, !121, !118, !118, !122, !1244}
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "hook_expand_t", file: !68, line: 90, baseType: !67)
!2106 = distinct !DISubprogram(name: "large_ralloc_move_helper", scope: !3, file: !3, line: 175, type: !1295, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2107)
!2107 = !{!2108, !2109, !2110, !2111, !2112}
!2108 = !DILocalVariable(name: "tsdn", arg: 1, scope: !2106, file: !3, line: 175, type: !174)
!2109 = !DILocalVariable(name: "arena", arg: 2, scope: !2106, file: !3, line: 175, type: !208)
!2110 = !DILocalVariable(name: "usize", arg: 3, scope: !2106, file: !3, line: 175, type: !118)
!2111 = !DILocalVariable(name: "alignment", arg: 4, scope: !2106, file: !3, line: 176, type: !118)
!2112 = !DILocalVariable(name: "zero", arg: 5, scope: !2106, file: !3, line: 176, type: !185)
!2113 = !DILocation(line: 175, column: 34, scope: !2106)
!2114 = !DILocation(line: 175, column: 49, scope: !2106)
!2115 = !DILocation(line: 175, column: 63, scope: !2106)
!2116 = !DILocation(line: 176, column: 12, scope: !2106)
!2117 = !DILocation(line: 176, column: 28, scope: !2106)
!2118 = !DILocation(line: 177, column: 6, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 177, column: 6)
!2120 = !DILocation(line: 177, column: 16, scope: !2119)
!2121 = !DILocation(line: 177, column: 6, scope: !2106)
!2122 = !DILocation(line: 178, column: 23, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 177, column: 30)
!2124 = !DILocation(line: 178, column: 29, scope: !2123)
!2125 = !DILocation(line: 178, column: 36, scope: !2123)
!2126 = !DILocation(line: 178, column: 43, scope: !2123)
!2127 = !DILocation(line: 178, column: 10, scope: !2123)
!2128 = !DILocation(line: 178, column: 3, scope: !2123)
!2129 = !DILocation(line: 180, column: 22, scope: !2106)
!2130 = !DILocation(line: 180, column: 28, scope: !2106)
!2131 = !DILocation(line: 180, column: 35, scope: !2106)
!2132 = !DILocation(line: 180, column: 42, scope: !2106)
!2133 = !DILocation(line: 180, column: 53, scope: !2106)
!2134 = !DILocation(line: 180, column: 9, scope: !2106)
!2135 = !DILocation(line: 180, column: 2, scope: !2106)
!2136 = !DILocation(line: 181, column: 1, scope: !2106)
!2137 = !DISubprogram(name: "hook_invoke_alloc", scope: !68, file: !68, line: 154, type: !2138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{null, !2140, !121, !122, !1244}
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "hook_alloc_t", file: !68, line: 68, baseType: !73)
!2141 = !DISubprogram(name: "hook_invoke_dalloc", scope: !68, file: !68, line: 157, type: !2142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{null, !2144, !121, !1244}
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "hook_dalloc_t", file: !68, line: 82, baseType: !84)
!2145 = distinct !DISubprogram(name: "isdalloct", scope: !2146, file: !2146, line: 129, type: !2147, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2155)
!2146 = !DIFile(filename: "include/jemalloc/internal/jemalloc_internal_inlines_c.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "47aa3d8bcc102251a134469c9027ce7a")
!2147 = !DISubroutineType(types: !2148)
!2148 = !{null, !174, !121, !118, !354, !2149, !185}
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "emap_alloc_ctx_t", file: !691, line: 22, baseType: !2151)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "emap_alloc_ctx_t", file: !691, line: 23, size: 64, elements: !2152)
!2152 = !{!2153, !2154}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "szind", scope: !2151, file: !691, line: 24, baseType: !340, size: 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "slab", scope: !2151, file: !691, line: 25, baseType: !185, size: 8, offset: 32)
!2155 = !{!2156, !2157, !2158, !2159, !2160, !2161}
!2156 = !DILocalVariable(name: "tsdn", arg: 1, scope: !2145, file: !2146, line: 129, type: !174)
!2157 = !DILocalVariable(name: "ptr", arg: 2, scope: !2145, file: !2146, line: 129, type: !121)
!2158 = !DILocalVariable(name: "size", arg: 3, scope: !2145, file: !2146, line: 129, type: !118)
!2159 = !DILocalVariable(name: "tcache", arg: 4, scope: !2145, file: !2146, line: 129, type: !354)
!2160 = !DILocalVariable(name: "alloc_ctx", arg: 5, scope: !2145, file: !2146, line: 130, type: !2149)
!2161 = !DILocalVariable(name: "slow_path", arg: 6, scope: !2145, file: !2146, line: 130, type: !185)
!2162 = !DILocation(line: 129, column: 19, scope: !2145)
!2163 = !DILocation(line: 129, column: 31, scope: !2145)
!2164 = !DILocation(line: 129, column: 43, scope: !2145)
!2165 = !DILocation(line: 129, column: 59, scope: !2145)
!2166 = !DILocation(line: 130, column: 23, scope: !2145)
!2167 = !DILocation(line: 130, column: 39, scope: !2145)
!2168 = !DILocation(line: 131, column: 53, scope: !2145)
!2169 = !DILocation(line: 131, column: 31, scope: !2145)
!2170 = !DILocation(line: 131, column: 2, scope: !2145)
!2171 = !DILocation(line: 133, column: 16, scope: !2145)
!2172 = !DILocation(line: 133, column: 22, scope: !2145)
!2173 = !DILocation(line: 133, column: 27, scope: !2145)
!2174 = !DILocation(line: 133, column: 33, scope: !2145)
!2175 = !DILocation(line: 133, column: 41, scope: !2145)
!2176 = !DILocation(line: 133, column: 52, scope: !2145)
!2177 = !DILocation(line: 133, column: 2, scope: !2145)
!2178 = !DILocation(line: 134, column: 1, scope: !2145)
!2179 = distinct !DISubprogram(name: "large_dalloc_prep_locked", scope: !3, file: !3, line: 260, type: !2180, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{null, !174, !377}
!2182 = !{!2183, !2184}
!2183 = !DILocalVariable(name: "tsdn", arg: 1, scope: !2179, file: !3, line: 260, type: !174)
!2184 = !DILocalVariable(name: "edata", arg: 2, scope: !2179, file: !3, line: 260, type: !377)
!2185 = !DILocation(line: 260, column: 34, scope: !2179)
!2186 = !DILocation(line: 260, column: 49, scope: !2179)
!2187 = !DILocation(line: 261, column: 25, scope: !2179)
!2188 = !DILocation(line: 261, column: 52, scope: !2179)
!2189 = !DILocation(line: 261, column: 31, scope: !2179)
!2190 = !DILocation(line: 261, column: 60, scope: !2179)
!2191 = !DILocation(line: 261, column: 2, scope: !2179)
!2192 = !DILocation(line: 262, column: 1, scope: !2179)
!2193 = distinct !DISubprogram(name: "large_dalloc_prep_impl", scope: !3, file: !3, line: 231, type: !2194, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2196)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{null, !174, !208, !377, !185}
!2196 = !{!2197, !2198, !2199, !2200}
!2197 = !DILocalVariable(name: "tsdn", arg: 1, scope: !2193, file: !3, line: 231, type: !174)
!2198 = !DILocalVariable(name: "arena", arg: 2, scope: !2193, file: !3, line: 231, type: !208)
!2199 = !DILocalVariable(name: "edata", arg: 3, scope: !2193, file: !3, line: 231, type: !377)
!2200 = !DILocalVariable(name: "locked", arg: 4, scope: !2193, file: !3, line: 232, type: !185)
!2201 = !DILocation(line: 231, column: 32, scope: !2193)
!2202 = !DILocation(line: 231, column: 47, scope: !2193)
!2203 = !DILocation(line: 231, column: 63, scope: !2193)
!2204 = !DILocation(line: 232, column: 10, scope: !2193)
!2205 = !DILocation(line: 233, column: 7, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 233, column: 6)
!2207 = !DILocation(line: 233, column: 6, scope: !2193)
!2208 = !DILocation(line: 235, column: 22, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 235, column: 7)
!2210 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 233, column: 15)
!2211 = !DILocation(line: 235, column: 8, scope: !2209)
!2212 = !DILocation(line: 235, column: 7, scope: !2210)
!2213 = !DILocation(line: 236, column: 22, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 235, column: 30)
!2215 = !DILocation(line: 236, column: 29, scope: !2214)
!2216 = !DILocation(line: 236, column: 36, scope: !2214)
!2217 = !DILocation(line: 236, column: 4, scope: !2214)
!2218 = !DILocation(line: 237, column: 30, scope: !2214)
!2219 = !DILocation(line: 237, column: 37, scope: !2214)
!2220 = !DILocation(line: 237, column: 44, scope: !2214)
!2221 = !DILocation(line: 237, column: 4, scope: !2214)
!2222 = !DILocation(line: 238, column: 24, scope: !2214)
!2223 = !DILocation(line: 238, column: 31, scope: !2214)
!2224 = !DILocation(line: 238, column: 38, scope: !2214)
!2225 = !DILocation(line: 238, column: 4, scope: !2214)
!2226 = !DILocation(line: 239, column: 3, scope: !2214)
!2227 = !DILocation(line: 240, column: 2, scope: !2210)
!2228 = !DILocation(line: 242, column: 22, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 242, column: 7)
!2230 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 240, column: 9)
!2231 = !DILocation(line: 242, column: 8, scope: !2229)
!2232 = !DILocation(line: 242, column: 7, scope: !2230)
!2233 = !DILocation(line: 243, column: 30, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 242, column: 30)
!2235 = !DILocation(line: 243, column: 37, scope: !2234)
!2236 = !DILocation(line: 243, column: 44, scope: !2234)
!2237 = !DILocation(line: 243, column: 4, scope: !2234)
!2238 = !DILocation(line: 244, column: 30, scope: !2234)
!2239 = !DILocation(line: 244, column: 37, scope: !2234)
!2240 = !DILocation(line: 244, column: 44, scope: !2234)
!2241 = !DILocation(line: 244, column: 4, scope: !2234)
!2242 = !DILocation(line: 245, column: 3, scope: !2234)
!2243 = !DILocation(line: 247, column: 33, scope: !2193)
!2244 = !DILocation(line: 247, column: 39, scope: !2193)
!2245 = !DILocation(line: 247, column: 46, scope: !2193)
!2246 = !DILocation(line: 247, column: 2, scope: !2193)
!2247 = !DILocation(line: 248, column: 1, scope: !2193)
!2248 = distinct !DISubprogram(name: "large_dalloc_finish", scope: !3, file: !3, line: 265, type: !2180, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2249)
!2249 = !{!2250, !2251}
!2250 = !DILocalVariable(name: "tsdn", arg: 1, scope: !2248, file: !3, line: 265, type: !174)
!2251 = !DILocalVariable(name: "edata", arg: 2, scope: !2248, file: !3, line: 265, type: !377)
!2252 = !DILocation(line: 265, column: 29, scope: !2248)
!2253 = !DILocation(line: 265, column: 44, scope: !2248)
!2254 = !DILocation(line: 266, column: 27, scope: !2248)
!2255 = !DILocation(line: 266, column: 54, scope: !2248)
!2256 = !DILocation(line: 266, column: 33, scope: !2248)
!2257 = !DILocation(line: 266, column: 62, scope: !2248)
!2258 = !DILocation(line: 266, column: 2, scope: !2248)
!2259 = !DILocation(line: 267, column: 1, scope: !2248)
!2260 = distinct !DISubprogram(name: "large_dalloc_finish_impl", scope: !3, file: !3, line: 251, type: !2261, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2263)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{null, !174, !208, !377}
!2263 = !{!2264, !2265, !2266, !2267}
!2264 = !DILocalVariable(name: "tsdn", arg: 1, scope: !2260, file: !3, line: 251, type: !174)
!2265 = !DILocalVariable(name: "arena", arg: 2, scope: !2260, file: !3, line: 251, type: !208)
!2266 = !DILocalVariable(name: "edata", arg: 3, scope: !2260, file: !3, line: 251, type: !377)
!2267 = !DILocalVariable(name: "deferred_work_generated", scope: !2260, file: !3, line: 252, type: !185)
!2268 = !DILocation(line: 251, column: 34, scope: !2260)
!2269 = !DILocation(line: 251, column: 49, scope: !2260)
!2270 = !DILocation(line: 251, column: 65, scope: !2260)
!2271 = !DILocation(line: 252, column: 2, scope: !2260)
!2272 = !DILocation(line: 252, column: 7, scope: !2260)
!2273 = !DILocation(line: 253, column: 12, scope: !2260)
!2274 = !DILocation(line: 253, column: 19, scope: !2260)
!2275 = !DILocation(line: 253, column: 26, scope: !2260)
!2276 = !DILocation(line: 253, column: 36, scope: !2260)
!2277 = !DILocation(line: 253, column: 2, scope: !2260)
!2278 = !DILocation(line: 254, column: 6, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 254, column: 6)
!2280 = !DILocation(line: 254, column: 6, scope: !2260)
!2281 = !DILocation(line: 255, column: 30, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 254, column: 31)
!2283 = !DILocation(line: 255, column: 36, scope: !2282)
!2284 = !DILocation(line: 255, column: 3, scope: !2282)
!2285 = !DILocation(line: 256, column: 2, scope: !2282)
!2286 = !DILocation(line: 257, column: 1, scope: !2260)
!2287 = distinct !DISubprogram(name: "large_dalloc", scope: !3, file: !3, line: 270, type: !2180, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2288)
!2288 = !{!2289, !2290, !2291}
!2289 = !DILocalVariable(name: "tsdn", arg: 1, scope: !2287, file: !3, line: 270, type: !174)
!2290 = !DILocalVariable(name: "edata", arg: 2, scope: !2287, file: !3, line: 270, type: !377)
!2291 = !DILocalVariable(name: "arena", scope: !2287, file: !3, line: 271, type: !208)
!2292 = !DILocation(line: 270, column: 22, scope: !2287)
!2293 = !DILocation(line: 270, column: 37, scope: !2287)
!2294 = !DILocation(line: 271, column: 2, scope: !2287)
!2295 = !DILocation(line: 271, column: 11, scope: !2287)
!2296 = !DILocation(line: 271, column: 40, scope: !2287)
!2297 = !DILocation(line: 271, column: 19, scope: !2287)
!2298 = !DILocation(line: 272, column: 25, scope: !2287)
!2299 = !DILocation(line: 272, column: 31, scope: !2287)
!2300 = !DILocation(line: 272, column: 38, scope: !2287)
!2301 = !DILocation(line: 272, column: 2, scope: !2287)
!2302 = !DILocation(line: 273, column: 27, scope: !2287)
!2303 = !DILocation(line: 273, column: 33, scope: !2287)
!2304 = !DILocation(line: 273, column: 40, scope: !2287)
!2305 = !DILocation(line: 273, column: 2, scope: !2287)
!2306 = !DILocation(line: 274, column: 19, scope: !2287)
!2307 = !DILocation(line: 274, column: 25, scope: !2287)
!2308 = !DILocation(line: 274, column: 2, scope: !2287)
!2309 = !DILocation(line: 275, column: 1, scope: !2287)
!2310 = distinct !DISubprogram(name: "large_salloc", scope: !3, file: !3, line: 278, type: !2311, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2313)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!118, !174, !1627}
!2313 = !{!2314, !2315}
!2314 = !DILocalVariable(name: "tsdn", arg: 1, scope: !2310, file: !3, line: 278, type: !174)
!2315 = !DILocalVariable(name: "edata", arg: 2, scope: !2310, file: !3, line: 278, type: !1627)
!2316 = !DILocation(line: 278, column: 22, scope: !2310)
!2317 = !DILocation(line: 278, column: 43, scope: !2310)
!2318 = !DILocation(line: 279, column: 25, scope: !2310)
!2319 = !DILocation(line: 279, column: 9, scope: !2310)
!2320 = !DILocation(line: 279, column: 2, scope: !2310)
!2321 = distinct !DISubprogram(name: "large_prof_info_get", scope: !3, file: !3, line: 283, type: !2322, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2331)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{null, !970, !377, !2324, !185}
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_typedef, name: "prof_info_t", file: !126, line: 7, baseType: !2326)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prof_info_s", file: !92, line: 102, size: 192, elements: !2327)
!2327 = !{!2328, !2329, !2330}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_time", scope: !2326, file: !92, line: 104, baseType: !151, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_tctx", scope: !2326, file: !92, line: 106, baseType: !124, size: 64, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_size", scope: !2326, file: !92, line: 108, baseType: !118, size: 64, offset: 128)
!2331 = !{!2332, !2333, !2334, !2335, !2336}
!2332 = !DILocalVariable(name: "tsd", arg: 1, scope: !2321, file: !3, line: 283, type: !970)
!2333 = !DILocalVariable(name: "edata", arg: 2, scope: !2321, file: !3, line: 283, type: !377)
!2334 = !DILocalVariable(name: "prof_info", arg: 3, scope: !2321, file: !3, line: 283, type: !2324)
!2335 = !DILocalVariable(name: "reset_recent", arg: 4, scope: !2321, file: !3, line: 284, type: !185)
!2336 = !DILocalVariable(name: "alloc_tctx", scope: !2321, file: !3, line: 287, type: !124)
!2337 = !DILocation(line: 283, column: 28, scope: !2321)
!2338 = !DILocation(line: 283, column: 42, scope: !2321)
!2339 = !DILocation(line: 283, column: 62, scope: !2321)
!2340 = !DILocation(line: 284, column: 10, scope: !2321)
!2341 = !DILocation(line: 285, column: 2, scope: !2321)
!2342 = !DILocation(line: 285, column: 2, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 285, column: 2)
!2344 = !DILocation(line: 287, column: 2, scope: !2321)
!2345 = !DILocation(line: 287, column: 15, scope: !2321)
!2346 = !DILocation(line: 287, column: 48, scope: !2321)
!2347 = !DILocation(line: 287, column: 28, scope: !2321)
!2348 = !DILocation(line: 288, column: 26, scope: !2321)
!2349 = !DILocation(line: 288, column: 2, scope: !2321)
!2350 = !DILocation(line: 288, column: 13, scope: !2321)
!2351 = !DILocation(line: 288, column: 24, scope: !2321)
!2352 = !{!2353, !1272, i64 8}
!2353 = !{!"prof_info_s", !2354, i64 0, !1272, i64 8, !1278, i64 16}
!2354 = !{!"", !1278, i64 0}
!2355 = !DILocation(line: 290, column: 17, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 290, column: 6)
!2357 = !DILocation(line: 290, column: 6, scope: !2356)
!2358 = !DILocation(line: 290, column: 28, scope: !2356)
!2359 = !DILocation(line: 290, column: 6, scope: !2321)
!2360 = !DILocation(line: 291, column: 16, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2356, file: !3, line: 290, column: 45)
!2362 = !DILocation(line: 291, column: 27, scope: !2361)
!2363 = !DILocation(line: 292, column: 33, scope: !2361)
!2364 = !DILocation(line: 292, column: 7, scope: !2361)
!2365 = !DILocation(line: 291, column: 3, scope: !2361)
!2366 = !DILocation(line: 293, column: 53, scope: !2361)
!2367 = !DILocation(line: 293, column: 27, scope: !2361)
!2368 = !DILocation(line: 293, column: 3, scope: !2361)
!2369 = !DILocation(line: 293, column: 14, scope: !2361)
!2370 = !DILocation(line: 293, column: 25, scope: !2361)
!2371 = !{!2353, !1278, i64 16}
!2372 = !DILocation(line: 294, column: 7, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 294, column: 7)
!2374 = !DILocation(line: 294, column: 7, scope: !2361)
!2375 = !DILocation(line: 299, column: 28, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 294, column: 21)
!2377 = !DILocation(line: 299, column: 33, scope: !2376)
!2378 = !DILocation(line: 299, column: 4, scope: !2376)
!2379 = !DILocation(line: 300, column: 3, scope: !2376)
!2380 = !DILocation(line: 301, column: 2, scope: !2361)
!2381 = !DILocation(line: 302, column: 1, scope: !2321)
!2382 = distinct !DISubprogram(name: "edata_prof_tctx_get", scope: !58, file: !58, line: 406, type: !2383, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2385)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!124, !1627}
!2385 = !{!2386}
!2386 = !DILocalVariable(name: "edata", arg: 1, scope: !2382, file: !58, line: 406, type: !1627)
!2387 = !DILocation(line: 406, column: 36, scope: !2382)
!2388 = !DILocation(line: 407, column: 39, scope: !2382)
!2389 = !DILocation(line: 407, column: 46, scope: !2382)
!2390 = !DILocation(line: 407, column: 58, scope: !2382)
!2391 = !DILocation(line: 407, column: 24, scope: !2382)
!2392 = !DILocation(line: 407, column: 2, scope: !2382)
!2393 = !DISubprogram(name: "nstime_copy", scope: !152, file: !152, line: 29, type: !2394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{null, !582, !2396}
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!2398 = distinct !DISubprogram(name: "edata_prof_alloc_time_get", scope: !58, file: !58, line: 412, type: !2399, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2401)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!2396, !1627}
!2401 = !{!2402}
!2402 = !DILocalVariable(name: "edata", arg: 1, scope: !2398, file: !58, line: 412, type: !1627)
!2403 = !DILocation(line: 412, column: 42, scope: !2398)
!2404 = !DILocation(line: 413, column: 10, scope: !2398)
!2405 = !DILocation(line: 413, column: 17, scope: !2398)
!2406 = !DILocation(line: 413, column: 29, scope: !2398)
!2407 = !DILocation(line: 413, column: 2, scope: !2398)
!2408 = distinct !DISubprogram(name: "edata_prof_alloc_size_get", scope: !58, file: !58, line: 417, type: !1743, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2409)
!2409 = !{!2410}
!2410 = !DILocalVariable(name: "edata", arg: 1, scope: !2408, file: !58, line: 417, type: !1627)
!2411 = !DILocation(line: 417, column: 42, scope: !2408)
!2412 = !DILocation(line: 418, column: 9, scope: !2408)
!2413 = !DILocation(line: 418, column: 16, scope: !2408)
!2414 = !DILocation(line: 418, column: 28, scope: !2408)
!2415 = !DILocation(line: 418, column: 2, scope: !2408)
!2416 = !DISubprogram(name: "prof_recent_alloc_reset", scope: !2417, file: !2417, line: 9, type: !2418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2417 = !DIFile(filename: "include/jemalloc/internal/prof_recent.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "98e319d50bdce287ee6b421e2527172c")
!2418 = !DISubroutineType(types: !2419)
!2419 = !{null, !970, !377}
!2420 = distinct !DISubprogram(name: "large_prof_tctx_reset", scope: !3, file: !3, line: 310, type: !2421, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2423)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{null, !377}
!2423 = !{!2424}
!2424 = !DILocalVariable(name: "edata", arg: 1, scope: !2420, file: !3, line: 310, type: !377)
!2425 = !DILocation(line: 310, column: 32, scope: !2420)
!2426 = !DILocation(line: 311, column: 22, scope: !2420)
!2427 = !DILocation(line: 311, column: 2, scope: !2420)
!2428 = !DILocation(line: 312, column: 1, scope: !2420)
!2429 = distinct !DISubprogram(name: "large_prof_tctx_set", scope: !3, file: !3, line: 305, type: !2430, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2432)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{null, !377, !124}
!2432 = !{!2433, !2434}
!2433 = !DILocalVariable(name: "edata", arg: 1, scope: !2429, file: !3, line: 305, type: !377)
!2434 = !DILocalVariable(name: "tctx", arg: 2, scope: !2429, file: !3, line: 305, type: !124)
!2435 = !DILocation(line: 305, column: 30, scope: !2429)
!2436 = !DILocation(line: 305, column: 50, scope: !2429)
!2437 = !DILocation(line: 306, column: 22, scope: !2429)
!2438 = !DILocation(line: 306, column: 29, scope: !2429)
!2439 = !DILocation(line: 306, column: 2, scope: !2429)
!2440 = !DILocation(line: 307, column: 1, scope: !2429)
!2441 = distinct !DISubprogram(name: "large_prof_info_set", scope: !3, file: !3, line: 315, type: !2442, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2444)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{null, !377, !124, !118}
!2444 = !{!2445, !2446, !2447, !2448}
!2445 = !DILocalVariable(name: "edata", arg: 1, scope: !2441, file: !3, line: 315, type: !377)
!2446 = !DILocalVariable(name: "tctx", arg: 2, scope: !2441, file: !3, line: 315, type: !124)
!2447 = !DILocalVariable(name: "size", arg: 3, scope: !2441, file: !3, line: 315, type: !118)
!2448 = !DILocalVariable(name: "t", scope: !2441, file: !3, line: 316, type: !151)
!2449 = !DILocation(line: 315, column: 30, scope: !2441)
!2450 = !DILocation(line: 315, column: 50, scope: !2441)
!2451 = !DILocation(line: 315, column: 63, scope: !2441)
!2452 = !DILocation(line: 316, column: 2, scope: !2441)
!2453 = !DILocation(line: 316, column: 11, scope: !2441)
!2454 = !DILocation(line: 317, column: 2, scope: !2441)
!2455 = !DILocation(line: 318, column: 28, scope: !2441)
!2456 = !DILocation(line: 318, column: 2, scope: !2441)
!2457 = !DILocation(line: 319, column: 28, scope: !2441)
!2458 = !DILocation(line: 319, column: 35, scope: !2441)
!2459 = !DILocation(line: 319, column: 2, scope: !2441)
!2460 = !DILocation(line: 320, column: 31, scope: !2441)
!2461 = !DILocation(line: 320, column: 2, scope: !2441)
!2462 = !DILocation(line: 321, column: 22, scope: !2441)
!2463 = !DILocation(line: 321, column: 29, scope: !2441)
!2464 = !DILocation(line: 321, column: 2, scope: !2441)
!2465 = !DILocation(line: 322, column: 1, scope: !2441)
!2466 = !DISubprogram(name: "nstime_prof_init_update", scope: !152, file: !152, line: 50, type: !2467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{null, !582}
!2469 = distinct !DISubprogram(name: "edata_prof_alloc_time_set", scope: !58, file: !58, line: 558, type: !2470, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2472)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{null, !377, !582}
!2472 = !{!2473, !2474}
!2473 = !DILocalVariable(name: "edata", arg: 1, scope: !2469, file: !58, line: 558, type: !377)
!2474 = !DILocalVariable(name: "t", arg: 2, scope: !2469, file: !58, line: 558, type: !582)
!2475 = !DILocation(line: 558, column: 36, scope: !2469)
!2476 = !DILocation(line: 558, column: 53, scope: !2469)
!2477 = !DILocation(line: 559, column: 15, scope: !2469)
!2478 = !DILocation(line: 559, column: 22, scope: !2469)
!2479 = !DILocation(line: 559, column: 34, scope: !2469)
!2480 = !DILocation(line: 559, column: 53, scope: !2469)
!2481 = !DILocation(line: 559, column: 2, scope: !2469)
!2482 = !DILocation(line: 560, column: 1, scope: !2469)
!2483 = distinct !DISubprogram(name: "edata_prof_alloc_size_set", scope: !58, file: !58, line: 563, type: !2484, scopeLine: 563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2486)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{null, !377, !118}
!2486 = !{!2487, !2488}
!2487 = !DILocalVariable(name: "edata", arg: 1, scope: !2483, file: !58, line: 563, type: !377)
!2488 = !DILocalVariable(name: "size", arg: 2, scope: !2483, file: !58, line: 563, type: !118)
!2489 = !DILocation(line: 563, column: 36, scope: !2483)
!2490 = !DILocation(line: 563, column: 50, scope: !2483)
!2491 = !DILocation(line: 564, column: 41, scope: !2483)
!2492 = !DILocation(line: 564, column: 2, scope: !2483)
!2493 = !DILocation(line: 564, column: 9, scope: !2483)
!2494 = !DILocation(line: 564, column: 21, scope: !2483)
!2495 = !DILocation(line: 564, column: 39, scope: !2483)
!2496 = !DILocation(line: 565, column: 1, scope: !2483)
!2497 = !DISubprogram(name: "edata_prof_recent_alloc_init", scope: !2417, file: !2417, line: 11, type: !2421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2498 = distinct !DISubprogram(name: "sz_s2u", scope: !341, file: !341, line: 301, type: !2499, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!118, !118}
!2501 = !{!2502}
!2502 = !DILocalVariable(name: "size", arg: 1, scope: !2498, file: !341, line: 301, type: !118)
!2503 = !DILocation(line: 301, column: 15, scope: !2498)
!2504 = !DILocation(line: 302, column: 6, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2498, file: !341, line: 302, column: 6)
!2506 = !DILocation(line: 302, column: 6, scope: !2498)
!2507 = !DILocation(line: 303, column: 24, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2505, file: !341, line: 302, column: 42)
!2509 = !DILocation(line: 303, column: 10, scope: !2508)
!2510 = !DILocation(line: 303, column: 3, scope: !2508)
!2511 = !DILocation(line: 305, column: 24, scope: !2498)
!2512 = !DILocation(line: 305, column: 9, scope: !2498)
!2513 = !DILocation(line: 305, column: 2, scope: !2498)
!2514 = !DILocation(line: 306, column: 1, scope: !2498)
!2515 = distinct !DISubprogram(name: "sz_s2u_lookup", scope: !341, file: !341, line: 289, type: !2499, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2516)
!2516 = !{!2517, !2518}
!2517 = !DILocalVariable(name: "size", arg: 1, scope: !2515, file: !341, line: 289, type: !118)
!2518 = !DILocalVariable(name: "ret", scope: !2515, file: !341, line: 290, type: !118)
!2519 = !DILocation(line: 289, column: 22, scope: !2515)
!2520 = !DILocation(line: 290, column: 2, scope: !2515)
!2521 = !DILocation(line: 290, column: 9, scope: !2515)
!2522 = !DILocation(line: 290, column: 57, scope: !2515)
!2523 = !DILocation(line: 290, column: 36, scope: !2515)
!2524 = !DILocation(line: 290, column: 15, scope: !2515)
!2525 = !DILocation(line: 292, column: 2, scope: !2515)
!2526 = !DILocation(line: 292, column: 2, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2515, file: !341, line: 292, column: 2)
!2528 = !DILocation(line: 293, column: 9, scope: !2515)
!2529 = !DILocation(line: 294, column: 1, scope: !2515)
!2530 = !DILocation(line: 293, column: 2, scope: !2515)
!2531 = distinct !DISubprogram(name: "sz_s2u_compute", scope: !341, file: !341, line: 261, type: !2499, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2532)
!2532 = !{!2533, !2534, !2537, !2538, !2540, !2541, !2542, !2543}
!2533 = !DILocalVariable(name: "size", arg: 1, scope: !2531, file: !341, line: 261, type: !118)
!2534 = !DILocalVariable(name: "lg_tmin", scope: !2535, file: !341, line: 271, type: !118)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !341, line: 270, column: 46)
!2536 = distinct !DILexicalBlock(scope: !2531, file: !341, line: 270, column: 6)
!2537 = !DILocalVariable(name: "lg_ceil", scope: !2535, file: !341, line: 272, type: !118)
!2538 = !DILocalVariable(name: "x", scope: !2539, file: !341, line: 278, type: !118)
!2539 = distinct !DILexicalBlock(scope: !2531, file: !341, line: 277, column: 2)
!2540 = !DILocalVariable(name: "lg_delta", scope: !2539, file: !341, line: 279, type: !118)
!2541 = !DILocalVariable(name: "delta", scope: !2539, file: !341, line: 281, type: !118)
!2542 = !DILocalVariable(name: "delta_mask", scope: !2539, file: !341, line: 282, type: !118)
!2543 = !DILocalVariable(name: "usize", scope: !2539, file: !341, line: 283, type: !118)
!2544 = !DILocation(line: 261, column: 23, scope: !2531)
!2545 = !DILocation(line: 262, column: 6, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2531, file: !341, line: 262, column: 6)
!2547 = !DILocation(line: 262, column: 6, scope: !2531)
!2548 = !DILocation(line: 263, column: 3, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2546, file: !341, line: 262, column: 42)
!2550 = !DILocation(line: 266, column: 6, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2531, file: !341, line: 266, column: 6)
!2552 = !DILocation(line: 266, column: 11, scope: !2551)
!2553 = !DILocation(line: 266, column: 6, scope: !2531)
!2554 = !DILocation(line: 267, column: 7, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2551, file: !341, line: 266, column: 17)
!2556 = !DILocation(line: 268, column: 2, scope: !2555)
!2557 = !DILocation(line: 270, column: 6, scope: !2536)
!2558 = !DILocation(line: 270, column: 11, scope: !2536)
!2559 = !DILocation(line: 270, column: 6, scope: !2531)
!2560 = !DILocation(line: 271, column: 3, scope: !2535)
!2561 = !DILocation(line: 271, column: 10, scope: !2535)
!2562 = !DILocation(line: 272, column: 3, scope: !2535)
!2563 = !DILocation(line: 272, column: 10, scope: !2535)
!2564 = !DILocation(line: 272, column: 42, scope: !2535)
!2565 = !DILocation(line: 272, column: 29, scope: !2535)
!2566 = !DILocation(line: 272, column: 20, scope: !2535)
!2567 = !DILocation(line: 273, column: 11, scope: !2535)
!2568 = !DILocation(line: 273, column: 21, scope: !2535)
!2569 = !DILocation(line: 273, column: 19, scope: !2535)
!2570 = !DILocation(line: 273, column: 41, scope: !2535)
!2571 = !DILocation(line: 273, column: 38, scope: !2535)
!2572 = !DILocation(line: 274, column: 17, scope: !2535)
!2573 = !DILocation(line: 274, column: 14, scope: !2535)
!2574 = !DILocation(line: 273, column: 3, scope: !2535)
!2575 = !DILocation(line: 275, column: 2, scope: !2536)
!2576 = !DILocation(line: 278, column: 3, scope: !2539)
!2577 = !DILocation(line: 278, column: 10, scope: !2539)
!2578 = !DILocation(line: 278, column: 24, scope: !2539)
!2579 = !DILocation(line: 278, column: 28, scope: !2539)
!2580 = !DILocation(line: 278, column: 32, scope: !2539)
!2581 = !DILocation(line: 278, column: 14, scope: !2539)
!2582 = !DILocation(line: 279, column: 3, scope: !2539)
!2583 = !DILocation(line: 279, column: 10, scope: !2539)
!2584 = !DILocation(line: 279, column: 22, scope: !2539)
!2585 = !DILocation(line: 279, column: 24, scope: !2539)
!2586 = !DILocation(line: 279, column: 21, scope: !2539)
!2587 = !DILocation(line: 280, column: 23, scope: !2539)
!2588 = !DILocation(line: 280, column: 25, scope: !2539)
!2589 = !DILocation(line: 280, column: 40, scope: !2539)
!2590 = !DILocation(line: 281, column: 3, scope: !2539)
!2591 = !DILocation(line: 281, column: 10, scope: !2539)
!2592 = !DILocation(line: 281, column: 27, scope: !2539)
!2593 = !DILocation(line: 281, column: 24, scope: !2539)
!2594 = !DILocation(line: 282, column: 3, scope: !2539)
!2595 = !DILocation(line: 282, column: 10, scope: !2539)
!2596 = !DILocation(line: 282, column: 23, scope: !2539)
!2597 = !DILocation(line: 282, column: 29, scope: !2539)
!2598 = !DILocation(line: 283, column: 3, scope: !2539)
!2599 = !DILocation(line: 283, column: 10, scope: !2539)
!2600 = !DILocation(line: 283, column: 19, scope: !2539)
!2601 = !DILocation(line: 283, column: 26, scope: !2539)
!2602 = !DILocation(line: 283, column: 24, scope: !2539)
!2603 = !DILocation(line: 283, column: 41, scope: !2539)
!2604 = !DILocation(line: 283, column: 40, scope: !2539)
!2605 = !DILocation(line: 283, column: 38, scope: !2539)
!2606 = !DILocation(line: 284, column: 10, scope: !2539)
!2607 = !DILocation(line: 284, column: 3, scope: !2539)
!2608 = !DILocation(line: 285, column: 2, scope: !2531)
!2609 = !DILocation(line: 286, column: 1, scope: !2531)
!2610 = distinct !DISubprogram(name: "sz_index2size_lookup", scope: !341, file: !341, line: 242, type: !2611, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2613)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!118, !340}
!2613 = !{!2614, !2615}
!2614 = !DILocalVariable(name: "index", arg: 1, scope: !2610, file: !341, line: 242, type: !340)
!2615 = !DILocalVariable(name: "ret", scope: !2610, file: !341, line: 243, type: !118)
!2616 = !DILocation(line: 242, column: 30, scope: !2610)
!2617 = !DILocation(line: 243, column: 2, scope: !2610)
!2618 = !DILocation(line: 243, column: 9, scope: !2610)
!2619 = !DILocation(line: 243, column: 41, scope: !2610)
!2620 = !DILocation(line: 243, column: 15, scope: !2610)
!2621 = !DILocation(line: 244, column: 2, scope: !2610)
!2622 = !DILocation(line: 244, column: 2, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2610, file: !341, line: 244, column: 2)
!2624 = !DILocation(line: 245, column: 9, scope: !2610)
!2625 = !DILocation(line: 246, column: 1, scope: !2610)
!2626 = !DILocation(line: 245, column: 2, scope: !2610)
!2627 = distinct !DISubprogram(name: "sz_size2index_lookup", scope: !341, file: !341, line: 196, type: !2628, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2630)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!340, !118}
!2630 = !{!2631, !2632}
!2631 = !DILocalVariable(name: "size", arg: 1, scope: !2627, file: !341, line: 196, type: !118)
!2632 = !DILocalVariable(name: "ret", scope: !2627, file: !341, line: 197, type: !340)
!2633 = !DILocation(line: 196, column: 29, scope: !2627)
!2634 = !DILocation(line: 197, column: 2, scope: !2627)
!2635 = !DILocation(line: 197, column: 10, scope: !2627)
!2636 = !DILocation(line: 197, column: 42, scope: !2627)
!2637 = !DILocation(line: 197, column: 16, scope: !2627)
!2638 = !DILocation(line: 198, column: 2, scope: !2627)
!2639 = !DILocation(line: 198, column: 2, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2627, file: !341, line: 198, column: 2)
!2641 = !DILocation(line: 199, column: 9, scope: !2627)
!2642 = !DILocation(line: 200, column: 1, scope: !2627)
!2643 = !DILocation(line: 199, column: 2, scope: !2627)
!2644 = distinct !DISubprogram(name: "sz_index2size_lookup_impl", scope: !341, file: !341, line: 237, type: !2611, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2645)
!2645 = !{!2646}
!2646 = !DILocalVariable(name: "index", arg: 1, scope: !2644, file: !341, line: 237, type: !340)
!2647 = !DILocation(line: 237, column: 35, scope: !2644)
!2648 = !DILocation(line: 238, column: 27, scope: !2644)
!2649 = !DILocation(line: 238, column: 9, scope: !2644)
!2650 = !DILocation(line: 238, column: 2, scope: !2644)
!2651 = distinct !DISubprogram(name: "sz_size2index_lookup_impl", scope: !341, file: !341, line: 189, type: !2628, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2652)
!2652 = !{!2653}
!2653 = !DILocalVariable(name: "size", arg: 1, scope: !2651, file: !341, line: 189, type: !118)
!2654 = !DILocation(line: 189, column: 34, scope: !2651)
!2655 = !DILocation(line: 190, column: 2, scope: !2651)
!2656 = !DILocation(line: 190, column: 2, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2651, file: !341, line: 190, column: 2)
!2658 = !DILocation(line: 191, column: 28, scope: !2651)
!2659 = !DILocation(line: 191, column: 33, scope: !2651)
!2660 = !DILocation(line: 191, column: 61, scope: !2651)
!2661 = !DILocation(line: 192, column: 6, scope: !2651)
!2662 = !DILocation(line: 191, column: 9, scope: !2651)
!2663 = !DILocation(line: 191, column: 2, scope: !2651)
!2664 = distinct !DISubprogram(name: "lg_floor", scope: !2665, file: !2665, line: 392, type: !2666, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2668)
!2665 = !DIFile(filename: "include/jemalloc/internal/bit_util.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "5c8a15d91a8bdcb30d94c4474c7f0734")
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!7, !118}
!2668 = !{!2669}
!2669 = !DILocalVariable(name: "x", arg: 1, scope: !2664, file: !2665, line: 392, type: !118)
!2670 = !DILocation(line: 392, column: 17, scope: !2664)
!2671 = !DILocation(line: 393, column: 14, scope: !2664)
!2672 = !DILocation(line: 393, column: 16, scope: !2664)
!2673 = !DILocation(line: 393, column: 2, scope: !2664)
!2674 = !DILocation(line: 395, column: 17, scope: !2664)
!2675 = !DILocation(line: 395, column: 9, scope: !2664)
!2676 = !DILocation(line: 395, column: 2, scope: !2664)
!2677 = distinct !DISubprogram(name: "pow2_ceil_zu", scope: !2665, file: !2665, line: 383, type: !2499, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2678)
!2678 = !{!2679}
!2679 = !DILocalVariable(name: "x", arg: 1, scope: !2677, file: !2665, line: 383, type: !118)
!2680 = !DILocation(line: 383, column: 21, scope: !2677)
!2681 = !DILocation(line: 385, column: 23, scope: !2677)
!2682 = !DILocation(line: 385, column: 9, scope: !2677)
!2683 = !DILocation(line: 385, column: 2, scope: !2677)
!2684 = distinct !DISubprogram(name: "util_assume", scope: !2685, file: !2685, line: 66, type: !2686, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2688)
!2685 = !DIFile(filename: "include/jemalloc/internal/util.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "38254219eacd30bc6d7399cbb22648e1")
!2686 = !DISubroutineType(types: !2687)
!2687 = !{null, !185}
!2688 = !{!2689}
!2689 = !DILocalVariable(name: "b", arg: 1, scope: !2684, file: !2685, line: 66, type: !185)
!2690 = !DILocation(line: 66, column: 18, scope: !2684)
!2691 = !DILocation(line: 67, column: 7, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2684, file: !2685, line: 67, column: 6)
!2693 = !DILocation(line: 67, column: 6, scope: !2684)
!2694 = !DILocation(line: 68, column: 3, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2692, file: !2685, line: 67, column: 10)
!2696 = !DILocation(line: 70, column: 1, scope: !2684)
!2697 = distinct !DISubprogram(name: "fls_u64", scope: !2665, file: !2665, line: 326, type: !2698, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!7, !156}
!2700 = !{!2701}
!2701 = !DILocalVariable(name: "x", arg: 1, scope: !2697, file: !2665, line: 326, type: !156)
!2702 = !DILocation(line: 326, column: 18, scope: !2697)
!2703 = !DILocation(line: 328, column: 16, scope: !2697)
!2704 = !DILocation(line: 328, column: 9, scope: !2697)
!2705 = !DILocation(line: 328, column: 2, scope: !2697)
!2706 = distinct !DISubprogram(name: "fls_lu", scope: !2665, file: !2665, line: 98, type: !2707, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2709)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!7, !120}
!2709 = !{!2710}
!2710 = !DILocalVariable(name: "x", arg: 1, scope: !2706, file: !2665, line: 98, type: !120)
!2711 = !DILocation(line: 98, column: 22, scope: !2706)
!2712 = !DILocation(line: 99, column: 14, scope: !2706)
!2713 = !DILocation(line: 99, column: 16, scope: !2706)
!2714 = !DILocation(line: 99, column: 2, scope: !2706)
!2715 = !DILocation(line: 100, column: 46, scope: !2706)
!2716 = !DILocation(line: 100, column: 31, scope: !2706)
!2717 = !DILocation(line: 100, column: 29, scope: !2706)
!2718 = !DILocation(line: 100, column: 9, scope: !2706)
!2719 = !DILocation(line: 100, column: 2, scope: !2706)
!2720 = distinct !DISubprogram(name: "pow2_ceil_u64", scope: !2665, file: !2665, line: 357, type: !2721, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2723)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!156, !156}
!2723 = !{!2724, !2725}
!2724 = !DILocalVariable(name: "x", arg: 1, scope: !2720, file: !2665, line: 357, type: !156)
!2725 = !DILocalVariable(name: "msb_on_index", scope: !2720, file: !2665, line: 361, type: !118)
!2726 = !DILocation(line: 357, column: 24, scope: !2720)
!2727 = !DILocation(line: 358, column: 6, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2720, file: !2665, line: 358, column: 6)
!2729 = !DILocation(line: 358, column: 6, scope: !2720)
!2730 = !DILocation(line: 359, column: 10, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2728, file: !2665, line: 358, column: 24)
!2732 = !DILocation(line: 359, column: 3, scope: !2731)
!2733 = !DILocation(line: 361, column: 2, scope: !2720)
!2734 = !DILocation(line: 361, column: 9, scope: !2720)
!2735 = !DILocation(line: 361, column: 32, scope: !2720)
!2736 = !DILocation(line: 361, column: 34, scope: !2720)
!2737 = !DILocation(line: 361, column: 24, scope: !2720)
!2738 = !DILocation(line: 366, column: 2, scope: !2720)
!2739 = !DILocation(line: 366, column: 2, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2720, file: !2665, line: 366, column: 2)
!2741 = !DILocation(line: 367, column: 18, scope: !2720)
!2742 = !DILocation(line: 367, column: 31, scope: !2720)
!2743 = !DILocation(line: 367, column: 14, scope: !2720)
!2744 = !DILocation(line: 367, column: 2, scope: !2720)
!2745 = !DILocation(line: 368, column: 1, scope: !2720)
!2746 = distinct !DISubprogram(name: "tsd_arena_get", scope: !178, file: !178, line: 373, type: !2747, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2749)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!208, !970}
!2749 = !{!2750}
!2750 = !DILocalVariable(name: "tsd", arg: 1, scope: !2746, file: !178, line: 373, type: !970)
!2751 = !DILocation(line: 373, column: 1, scope: !2746)
!2752 = !DISubprogram(name: "arena_choose_huge", scope: !1518, file: !1518, line: 103, type: !2747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2753 = distinct !DISubprogram(name: "arena_choose", scope: !1522, file: !1522, line: 87, type: !2754, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2756)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!208, !970, !208}
!2756 = !{!2757, !2758}
!2757 = !DILocalVariable(name: "tsd", arg: 1, scope: !2753, file: !1522, line: 87, type: !970)
!2758 = !DILocalVariable(name: "arena", arg: 2, scope: !2753, file: !1522, line: 87, type: !208)
!2759 = !DILocation(line: 87, column: 21, scope: !2753)
!2760 = !DILocation(line: 87, column: 35, scope: !2753)
!2761 = !DILocation(line: 88, column: 27, scope: !2753)
!2762 = !DILocation(line: 88, column: 32, scope: !2753)
!2763 = !DILocation(line: 88, column: 9, scope: !2753)
!2764 = !DILocation(line: 88, column: 2, scope: !2753)
!2765 = distinct !DISubprogram(name: "tsd_arenap_get", scope: !178, file: !178, line: 344, type: !2766, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2769)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!2768, !970}
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!2769 = !{!2770, !2771}
!2770 = !DILocalVariable(name: "tsd", arg: 1, scope: !2765, file: !178, line: 344, type: !970)
!2771 = !DILocalVariable(name: "state", scope: !2765, file: !178, line: 344, type: !344)
!2772 = !DILocation(line: 344, column: 1, scope: !2765)
!2773 = !DILocation(line: 344, column: 1, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2765, file: !178, line: 344, column: 1)
!2775 = distinct !DISubprogram(name: "tsd_state_get", scope: !178, file: !178, line: 262, type: !2776, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!344, !970}
!2778 = !{!2779}
!2779 = !DILocalVariable(name: "tsd", arg: 1, scope: !2775, file: !178, line: 262, type: !970)
!2780 = !DILocation(line: 262, column: 22, scope: !2775)
!2781 = !DILocation(line: 269, column: 22, scope: !2775)
!2782 = !DILocation(line: 269, column: 27, scope: !2775)
!2783 = !DILocation(line: 269, column: 9, scope: !2775)
!2784 = !DILocation(line: 269, column: 2, scope: !2775)
!2785 = distinct !DISubprogram(name: "tsd_arenap_get_unsafe", scope: !178, file: !178, line: 323, type: !2766, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2786)
!2786 = !{!2787}
!2787 = !DILocalVariable(name: "tsd", arg: 1, scope: !2785, file: !178, line: 323, type: !970)
!2788 = !DILocation(line: 323, column: 1, scope: !2785)
!2789 = distinct !DISubprogram(name: "arena_choose_impl", scope: !1522, file: !1522, line: 32, type: !2790, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2792)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!208, !970, !208, !185}
!2792 = !{!2793, !2794, !2795, !2796, !2797, !2802, !2803}
!2793 = !DILocalVariable(name: "tsd", arg: 1, scope: !2789, file: !1522, line: 32, type: !970)
!2794 = !DILocalVariable(name: "arena", arg: 2, scope: !2789, file: !1522, line: 32, type: !208)
!2795 = !DILocalVariable(name: "internal", arg: 3, scope: !2789, file: !1522, line: 32, type: !185)
!2796 = !DILocalVariable(name: "ret", scope: !2789, file: !1522, line: 33, type: !208)
!2797 = !DILocalVariable(name: "tcache_slow", scope: !2798, file: !1522, line: 49, type: !298)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !1522, line: 48, column: 30)
!2799 = distinct !DILexicalBlock(scope: !2800, file: !1522, line: 48, column: 7)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !1522, line: 45, column: 29)
!2801 = distinct !DILexicalBlock(scope: !2789, file: !1522, line: 45, column: 6)
!2802 = !DILocalVariable(name: "tcache", scope: !2798, file: !1522, line: 50, type: !354)
!2803 = !DILocalVariable(name: "ind", scope: !2804, file: !1522, line: 75, type: !7)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !1522, line: 74, column: 22)
!2805 = distinct !DILexicalBlock(scope: !2789, file: !1522, line: 71, column: 6)
!2806 = !DILocation(line: 32, column: 26, scope: !2789)
!2807 = !DILocation(line: 32, column: 40, scope: !2789)
!2808 = !DILocation(line: 32, column: 52, scope: !2789)
!2809 = !DILocation(line: 33, column: 2, scope: !2789)
!2810 = !DILocation(line: 33, column: 11, scope: !2789)
!2811 = !DILocation(line: 35, column: 6, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2789, file: !1522, line: 35, column: 6)
!2813 = !DILocation(line: 35, column: 12, scope: !2812)
!2814 = !DILocation(line: 35, column: 6, scope: !2789)
!2815 = !DILocation(line: 36, column: 10, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2812, file: !1522, line: 35, column: 21)
!2817 = !DILocation(line: 36, column: 3, scope: !2816)
!2818 = !DILocation(line: 40, column: 6, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2789, file: !1522, line: 40, column: 6)
!2820 = !DILocation(line: 40, column: 6, scope: !2789)
!2821 = !DILocation(line: 41, column: 29, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2819, file: !1522, line: 40, column: 51)
!2823 = !DILocation(line: 41, column: 20, scope: !2822)
!2824 = !DILocation(line: 41, column: 10, scope: !2822)
!2825 = !DILocation(line: 41, column: 3, scope: !2822)
!2826 = !DILocation(line: 44, column: 8, scope: !2789)
!2827 = !DILocation(line: 44, column: 34, scope: !2789)
!2828 = !DILocation(line: 44, column: 19, scope: !2789)
!2829 = !DILocation(line: 44, column: 55, scope: !2789)
!2830 = !DILocation(line: 44, column: 41, scope: !2789)
!2831 = !DILocation(line: 44, column: 6, scope: !2789)
!2832 = !DILocation(line: 45, column: 6, scope: !2801)
!2833 = !DILocation(line: 45, column: 6, scope: !2789)
!2834 = !DILocation(line: 46, column: 27, scope: !2800)
!2835 = !DILocation(line: 46, column: 32, scope: !2800)
!2836 = !DILocation(line: 46, column: 9, scope: !2800)
!2837 = !DILocation(line: 46, column: 7, scope: !2800)
!2838 = !DILocation(line: 47, column: 3, scope: !2800)
!2839 = !DILocation(line: 47, column: 3, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2800, file: !1522, line: 47, column: 3)
!2841 = !DILocation(line: 48, column: 24, scope: !2799)
!2842 = !DILocation(line: 48, column: 7, scope: !2799)
!2843 = !DILocation(line: 48, column: 7, scope: !2800)
!2844 = !DILocation(line: 49, column: 4, scope: !2798)
!2845 = !DILocation(line: 49, column: 19, scope: !2798)
!2846 = !DILocation(line: 49, column: 54, scope: !2798)
!2847 = !DILocation(line: 49, column: 33, scope: !2798)
!2848 = !DILocation(line: 50, column: 4, scope: !2798)
!2849 = !DILocation(line: 50, column: 14, scope: !2798)
!2850 = !DILocation(line: 50, column: 39, scope: !2798)
!2851 = !DILocation(line: 50, column: 23, scope: !2798)
!2852 = !DILocation(line: 51, column: 8, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2798, file: !1522, line: 51, column: 8)
!2854 = !DILocation(line: 51, column: 21, scope: !2853)
!2855 = !{!2856, !1272, i64 40}
!2856 = !{!"tcache_slow_s", !2857, i64 0, !2858, i64 16, !1272, i64 40, !1535, i64 48, !1273, i64 52, !1273, i64 88, !1273, i64 124, !1272, i64 160, !1272, i64 168}
!2857 = !{!"", !1272, i64 0, !1272, i64 8}
!2858 = !{!"cache_bin_array_descriptor_s", !2857, i64 0, !1272, i64 16}
!2859 = !DILocation(line: 51, column: 27, scope: !2853)
!2860 = !DILocation(line: 51, column: 8, scope: !2798)
!2861 = !DILocation(line: 53, column: 5, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2853, file: !1522, line: 51, column: 36)
!2863 = !DILocation(line: 53, column: 5, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2862, file: !1522, line: 53, column: 5)
!2865 = !DILocation(line: 55, column: 9, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2862, file: !1522, line: 55, column: 9)
!2867 = !DILocation(line: 55, column: 22, scope: !2866)
!2868 = !DILocation(line: 55, column: 31, scope: !2866)
!2869 = !DILocation(line: 55, column: 28, scope: !2866)
!2870 = !DILocation(line: 55, column: 9, scope: !2862)
!2871 = !DILocation(line: 56, column: 40, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2866, file: !1522, line: 55, column: 36)
!2873 = !DILocation(line: 56, column: 31, scope: !2872)
!2874 = !DILocation(line: 57, column: 10, scope: !2872)
!2875 = !DILocation(line: 57, column: 23, scope: !2872)
!2876 = !DILocation(line: 57, column: 31, scope: !2872)
!2877 = !DILocation(line: 56, column: 6, scope: !2872)
!2878 = !DILocation(line: 58, column: 5, scope: !2872)
!2879 = !DILocation(line: 59, column: 4, scope: !2862)
!2880 = !DILocation(line: 60, column: 37, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2853, file: !1522, line: 59, column: 11)
!2882 = !DILocation(line: 60, column: 28, scope: !2881)
!2883 = !DILocation(line: 61, column: 9, scope: !2881)
!2884 = !DILocation(line: 61, column: 22, scope: !2881)
!2885 = !DILocation(line: 61, column: 30, scope: !2881)
!2886 = !DILocation(line: 60, column: 5, scope: !2881)
!2887 = !DILocation(line: 63, column: 3, scope: !2799)
!2888 = !DILocation(line: 63, column: 3, scope: !2798)
!2889 = !DILocation(line: 64, column: 2, scope: !2800)
!2890 = !DILocation(line: 71, column: 27, scope: !2805)
!2891 = !DILocation(line: 71, column: 66, scope: !2805)
!2892 = !DILocation(line: 72, column: 7, scope: !2805)
!2893 = !DILocation(line: 72, column: 16, scope: !2805)
!2894 = !DILocation(line: 72, column: 34, scope: !2805)
!2895 = !DILocation(line: 72, column: 20, scope: !2805)
!2896 = !DILocation(line: 73, column: 29, scope: !2805)
!2897 = !DILocation(line: 73, column: 6, scope: !2805)
!2898 = !DILocation(line: 72, column: 39, scope: !2805)
!2899 = !DILocation(line: 73, column: 48, scope: !2805)
!2900 = !DILocation(line: 73, column: 52, scope: !2805)
!2901 = !DILocation(line: 73, column: 57, scope: !2805)
!2902 = !{!2903, !1272, i64 16}
!2903 = !{!"arena_s", !1273, i64 0, !2904, i64 8, !1272, i64 16, !2905, i64 24, !1588, i64 10392, !1588, i64 10400, !2910, i64 10408, !2904, i64 10520, !1587, i64 10528, !2910, i64 10536, !2911, i64 10648, !1535, i64 78928, !1272, i64 78936, !2354, i64 78944, !1273, i64 78952}
!2904 = !{!"", !1535, i64 0}
!2905 = !{!"arena_stats_s", !1278, i64 0, !1278, i64 8, !1278, i64 16, !1278, i64 24, !2354, i64 32, !1278, i64 40, !1278, i64 48, !1278, i64 56, !1278, i64 64, !1278, i64 72, !1278, i64 80, !2906, i64 88, !1278, i64 168, !1278, i64 176, !1273, i64 184, !1273, i64 952, !2354, i64 10360}
!2906 = !{!"pa_shard_stats_s", !1278, i64 0, !2907, i64 8}
!2907 = !{!"pac_stats_s", !2908, i64 0, !2908, i64 24, !1278, i64 48, !2354, i64 56, !2354, i64 64}
!2908 = !{!"pac_decay_stats_s", !2909, i64 0, !2909, i64 8, !2909, i64 16}
!2909 = !{!"locked_u64_s", !2354, i64 0}
!2910 = !{!"malloc_mutex_s", !1273, i64 0}
!2911 = !{!"pa_shard_s", !1272, i64 0, !2354, i64 8, !2912, i64 16, !1281, i64 17, !2913, i64 24, !2920, i64 62264, !2922, i64 62384, !2929, i64 68096, !1535, i64 68240, !1272, i64 68248, !1272, i64 68256, !1272, i64 68264, !1272, i64 68272}
!2912 = !{!"", !1281, i64 0}
!2913 = !{!"pac_s", !2914, i64 0, !2915, i64 56, !2915, i64 19496, !2915, i64 38936, !1272, i64 58376, !1272, i64 58384, !1272, i64 58392, !2917, i64 58400, !2910, i64 58408, !2918, i64 58520, !2354, i64 58640, !2919, i64 58648, !2919, i64 60432, !1272, i64 62216, !1272, i64 62224, !2354, i64 62232}
!2914 = !{!"pai_s", !1272, i64 0, !1272, i64 8, !1272, i64 16, !1272, i64 24, !1272, i64 32, !1272, i64 40, !1272, i64 48}
!2915 = !{!"ecache_s", !2910, i64 0, !2916, i64 112, !2916, i64 9768, !1273, i64 19424, !1535, i64 19428, !1281, i64 19432}
!2916 = !{!"eset_s", !1273, i64 0, !1273, i64 32, !1273, i64 6432, !1587, i64 9632, !2354, i64 9640, !1273, i64 9648}
!2917 = !{!"exp_grow_s", !1535, i64 0, !1535, i64 4}
!2918 = !{!"san_bump_alloc_s", !2910, i64 0, !1272, i64 112}
!2919 = !{!"decay_s", !2910, i64 0, !1281, i64 112, !2354, i64 120, !2354, i64 128, !2354, i64 136, !1278, i64 144, !2354, i64 152, !1278, i64 160, !1278, i64 168, !1273, i64 176, !1278, i64 1776}
!2920 = !{!"sec_s", !2914, i64 0, !1272, i64 56, !2921, i64 64, !1272, i64 104, !1535, i64 112}
!2921 = !{!"sec_opts_s", !1278, i64 0, !1278, i64 8, !1278, i64 16, !1278, i64 24, !1278, i64 32}
!2922 = !{!"hpa_shard_s", !2914, i64 0, !1272, i64 56, !2910, i64 64, !2910, i64 176, !1272, i64 288, !2923, i64 296, !2924, i64 320, !1278, i64 5600, !1535, i64 5608, !1272, i64 5616, !2927, i64 5624, !1278, i64 5664, !2928, i64 5672, !2354, i64 5704}
!2923 = !{!"edata_cache_fast_s", !1587, i64 0, !1272, i64 8, !1281, i64 16}
!2924 = !{!"psset_s", !1273, i64 0, !1273, i64 1024, !2925, i64 1032, !2926, i64 1056, !1587, i64 4224, !1273, i64 4232, !1273, i64 5256, !1587, i64 5272}
!2925 = !{!"psset_bin_stats_s", !1278, i64 0, !1278, i64 8, !1278, i64 16}
!2926 = !{!"psset_stats_s", !1273, i64 0, !1273, i64 3072, !1273, i64 3120}
!2927 = !{!"hpa_shard_opts_s", !1278, i64 0, !1278, i64 8, !1535, i64 16, !1281, i64 20, !1278, i64 24, !1278, i64 32}
!2928 = !{!"hpa_shard_nonderived_stats_s", !1278, i64 0, !1278, i64 8, !1278, i64 16, !1278, i64 24}
!2929 = !{!"edata_cache_s", !2930, i64 0, !2354, i64 16, !2910, i64 24, !1272, i64 136}
!2930 = !{!"", !2931, i64 0}
!2931 = !{!"ph_s", !1272, i64 0, !1278, i64 8}
!2932 = !DILocation(line: 74, column: 15, scope: !2805)
!2933 = !DILocation(line: 74, column: 6, scope: !2805)
!2934 = !DILocation(line: 73, column: 66, scope: !2805)
!2935 = !DILocation(line: 71, column: 6, scope: !2789)
!2936 = !DILocation(line: 75, column: 3, scope: !2804)
!2937 = !DILocation(line: 75, column: 12, scope: !2804)
!2938 = !DILocation(line: 75, column: 18, scope: !2804)
!2939 = !DILocation(line: 76, column: 21, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2804, file: !1522, line: 76, column: 7)
!2941 = !DILocation(line: 76, column: 7, scope: !2940)
!2942 = !DILocation(line: 76, column: 29, scope: !2940)
!2943 = !DILocation(line: 76, column: 26, scope: !2940)
!2944 = !DILocation(line: 76, column: 7, scope: !2804)
!2945 = !DILocation(line: 77, column: 24, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2940, file: !1522, line: 76, column: 34)
!2947 = !DILocation(line: 77, column: 29, scope: !2946)
!2948 = !DILocation(line: 77, column: 4, scope: !2946)
!2949 = !DILocation(line: 78, column: 24, scope: !2946)
!2950 = !DILocation(line: 78, column: 10, scope: !2946)
!2951 = !DILocation(line: 78, column: 8, scope: !2946)
!2952 = !DILocation(line: 79, column: 3, scope: !2946)
!2953 = !DILocation(line: 80, column: 28, scope: !2804)
!2954 = !DILocation(line: 80, column: 19, scope: !2804)
!2955 = !DILocation(line: 80, column: 3, scope: !2804)
!2956 = !DILocation(line: 80, column: 8, scope: !2804)
!2957 = !DILocation(line: 80, column: 17, scope: !2804)
!2958 = !DILocation(line: 81, column: 2, scope: !2805)
!2959 = !DILocation(line: 81, column: 2, scope: !2804)
!2960 = !DILocation(line: 83, column: 9, scope: !2789)
!2961 = !DILocation(line: 83, column: 2, scope: !2789)
!2962 = !DILocation(line: 84, column: 1, scope: !2789)
!2963 = distinct !DISubprogram(name: "tsd_reentrancy_level_get", scope: !178, file: !178, line: 373, type: !2964, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2966)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!187, !970}
!2966 = !{!2967}
!2967 = !DILocalVariable(name: "tsd", arg: 1, scope: !2963, file: !178, line: 373, type: !970)
!2968 = !DILocation(line: 373, column: 1, scope: !2963)
!2969 = distinct !DISubprogram(name: "arena_get", scope: !2970, file: !2970, line: 60, type: !2971, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2973)
!2970 = !DIFile(filename: "include/jemalloc/internal/jemalloc_internal_inlines_a.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "49854c4289a7a3a6ed06e6746e40d247")
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!208, !174, !7, !185}
!2973 = !{!2974, !2975, !2976, !2977}
!2974 = !DILocalVariable(name: "tsdn", arg: 1, scope: !2969, file: !2970, line: 60, type: !174)
!2975 = !DILocalVariable(name: "ind", arg: 2, scope: !2969, file: !2970, line: 60, type: !7)
!2976 = !DILocalVariable(name: "init_if_missing", arg: 3, scope: !2969, file: !2970, line: 60, type: !185)
!2977 = !DILocalVariable(name: "ret", scope: !2969, file: !2970, line: 61, type: !208)
!2978 = !DILocation(line: 60, column: 19, scope: !2969)
!2979 = !DILocation(line: 60, column: 34, scope: !2969)
!2980 = !DILocation(line: 60, column: 44, scope: !2969)
!2981 = !DILocation(line: 61, column: 2, scope: !2969)
!2982 = !DILocation(line: 61, column: 11, scope: !2969)
!2983 = !DILocation(line: 63, column: 2, scope: !2969)
!2984 = !DILocation(line: 63, column: 2, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2969, file: !2970, line: 63, column: 2)
!2986 = !DILocation(line: 65, column: 41, scope: !2969)
!2987 = !DILocation(line: 65, column: 34, scope: !2969)
!2988 = !DILocation(line: 65, column: 19, scope: !2969)
!2989 = !DILocation(line: 65, column: 6, scope: !2969)
!2990 = !DILocation(line: 66, column: 6, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2969, file: !2970, line: 66, column: 6)
!2992 = !DILocation(line: 66, column: 6, scope: !2969)
!2993 = !DILocation(line: 67, column: 7, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !2970, line: 67, column: 7)
!2995 = distinct !DILexicalBlock(scope: !2991, file: !2970, line: 66, column: 29)
!2996 = !DILocation(line: 67, column: 7, scope: !2995)
!2997 = !DILocation(line: 68, column: 21, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2994, file: !2970, line: 67, column: 24)
!2999 = !DILocation(line: 68, column: 27, scope: !2998)
!3000 = !DILocation(line: 68, column: 10, scope: !2998)
!3001 = !DILocation(line: 68, column: 8, scope: !2998)
!3002 = !DILocation(line: 69, column: 3, scope: !2998)
!3003 = !DILocation(line: 70, column: 2, scope: !2995)
!3004 = !DILocation(line: 71, column: 9, scope: !2969)
!3005 = !DILocation(line: 72, column: 1, scope: !2969)
!3006 = !DILocation(line: 71, column: 2, scope: !2969)
!3007 = distinct !DISubprogram(name: "tsd_tsdn", scope: !178, file: !178, line: 282, type: !3008, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3010)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!174, !970}
!3010 = !{!3011}
!3011 = !DILocalVariable(name: "tsd", arg: 1, scope: !3007, file: !178, line: 282, type: !970)
!3012 = !DILocation(line: 282, column: 17, scope: !3007)
!3013 = !DILocation(line: 283, column: 19, scope: !3007)
!3014 = !DILocation(line: 283, column: 2, scope: !3007)
!3015 = distinct !DISubprogram(name: "tsd_iarena_get", scope: !178, file: !178, line: 373, type: !2747, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3016)
!3016 = !{!3017}
!3017 = !DILocalVariable(name: "tsd", arg: 1, scope: !3015, file: !178, line: 373, type: !970)
!3018 = !DILocation(line: 373, column: 1, scope: !3015)
!3019 = !DISubprogram(name: "arena_choose_hard", scope: !3020, file: !3020, line: 64, type: !3021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3020 = !DIFile(filename: "include/jemalloc/internal/jemalloc_internal_externs.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "e3ace4a34165e693af2eeee59bba262d")
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!208, !970, !185}
!3023 = distinct !DISubprogram(name: "tcache_available", scope: !2970, file: !2970, line: 75, type: !3024, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3026)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!185, !970}
!3026 = !{!3027}
!3027 = !DILocalVariable(name: "tsd", arg: 1, scope: !3023, file: !2970, line: 75, type: !970)
!3028 = !DILocation(line: 75, column: 25, scope: !3023)
!3029 = !DILocation(line: 81, column: 6, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3023, file: !2970, line: 81, column: 6)
!3031 = !DILocation(line: 81, column: 6, scope: !3023)
!3032 = !DILocation(line: 86, column: 3, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3030, file: !2970, line: 81, column: 43)
!3034 = !DILocation(line: 89, column: 2, scope: !3023)
!3035 = !DILocation(line: 90, column: 1, scope: !3023)
!3036 = distinct !DISubprogram(name: "tsd_tcache_slowp_get", scope: !178, file: !178, line: 344, type: !3037, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!298, !970}
!3039 = !{!3040, !3041}
!3040 = !DILocalVariable(name: "tsd", arg: 1, scope: !3036, file: !178, line: 344, type: !970)
!3041 = !DILocalVariable(name: "state", scope: !3036, file: !178, line: 344, type: !344)
!3042 = !DILocation(line: 344, column: 1, scope: !3036)
!3043 = !DILocation(line: 344, column: 1, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3036, file: !178, line: 344, column: 1)
!3045 = distinct !DISubprogram(name: "tsd_tcachep_get", scope: !178, file: !178, line: 345, type: !3046, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3048)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!354, !970}
!3048 = !{!3049, !3050}
!3049 = !DILocalVariable(name: "tsd", arg: 1, scope: !3045, file: !178, line: 345, type: !970)
!3050 = !DILocalVariable(name: "state", scope: !3045, file: !178, line: 345, type: !344)
!3051 = !DILocation(line: 345, column: 1, scope: !3045)
!3052 = !DILocation(line: 345, column: 1, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3045, file: !178, line: 345, column: 1)
!3054 = !DISubprogram(name: "tcache_arena_reassociate", scope: !3055, file: !3055, line: 47, type: !3056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3055 = !DIFile(filename: "include/jemalloc/internal/tcache_externs.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "8192a1928d72010c22c120688058db73")
!3056 = !DISubroutineType(types: !3057)
!3057 = !{null, !174, !298, !354, !208}
!3058 = !DISubprogram(name: "tcache_arena_associate", scope: !3055, file: !3055, line: 56, type: !3056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3059 = distinct !DISubprogram(name: "arena_ind_get", scope: !3060, file: !3060, line: 5, type: !3061, scopeLine: 5, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3065)
!3060 = !DIFile(filename: "include/jemalloc/internal/arena_inlines_a.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "39f7830943c1d0a6f3693d19f95209fb")
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!7, !3063}
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!3065 = !{!3066}
!3066 = !DILocalVariable(name: "arena", arg: 1, scope: !3059, file: !3060, line: 5, type: !3063)
!3067 = !DILocation(line: 5, column: 30, scope: !3059)
!3068 = !DILocation(line: 6, column: 9, scope: !3059)
!3069 = !DILocation(line: 6, column: 16, scope: !3059)
!3070 = !{!2903, !1535, i64 78928}
!3071 = !DILocation(line: 6, column: 2, scope: !3059)
!3072 = distinct !DISubprogram(name: "percpu_arena_ind_limit", scope: !2970, file: !2970, line: 46, type: !3073, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3076)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!7, !3075}
!3075 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_arena_mode_t", file: !99, line: 33, baseType: !98)
!3076 = !{!3077}
!3077 = !DILocalVariable(name: "mode", arg: 1, scope: !3072, file: !2970, line: 46, type: !3075)
!3078 = !DILocation(line: 46, column: 44, scope: !3072)
!3079 = !DILocation(line: 47, column: 2, scope: !3072)
!3080 = !DILocation(line: 47, column: 2, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3072, file: !2970, line: 47, column: 2)
!3082 = !DILocation(line: 48, column: 6, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3072, file: !2970, line: 48, column: 6)
!3084 = !DILocation(line: 48, column: 11, scope: !3083)
!3085 = !DILocation(line: 48, column: 31, scope: !3083)
!3086 = !DILocation(line: 48, column: 34, scope: !3083)
!3087 = !DILocation(line: 48, column: 40, scope: !3083)
!3088 = !DILocation(line: 48, column: 6, scope: !3072)
!3089 = !DILocation(line: 49, column: 7, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !2970, line: 49, column: 7)
!3091 = distinct !DILexicalBlock(scope: !3083, file: !2970, line: 48, column: 45)
!3092 = !DILocation(line: 49, column: 13, scope: !3090)
!3093 = !DILocation(line: 49, column: 7, scope: !3091)
!3094 = !DILocation(line: 51, column: 11, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3090, file: !2970, line: 49, column: 18)
!3096 = !DILocation(line: 51, column: 17, scope: !3095)
!3097 = !DILocation(line: 51, column: 21, scope: !3095)
!3098 = !DILocation(line: 51, column: 4, scope: !3095)
!3099 = !DILocation(line: 53, column: 10, scope: !3091)
!3100 = !DILocation(line: 53, column: 16, scope: !3091)
!3101 = !DILocation(line: 53, column: 3, scope: !3091)
!3102 = !DILocation(line: 55, column: 10, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3083, file: !2970, line: 54, column: 9)
!3104 = !DILocation(line: 55, column: 3, scope: !3103)
!3105 = !DILocation(line: 57, column: 1, scope: !3072)
!3106 = distinct !DISubprogram(name: "percpu_arena_choose", scope: !2970, file: !2970, line: 25, type: !3107, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3109)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!7}
!3109 = !{!3110, !3111}
!3110 = !DILocalVariable(name: "cpuid", scope: !3106, file: !2970, line: 28, type: !1192)
!3111 = !DILocalVariable(name: "arena_ind", scope: !3106, file: !2970, line: 31, type: !7)
!3112 = !DILocation(line: 26, column: 2, scope: !3106)
!3113 = !DILocation(line: 26, column: 2, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3106, file: !2970, line: 26, column: 2)
!3115 = !DILocation(line: 28, column: 2, scope: !3106)
!3116 = !DILocation(line: 28, column: 17, scope: !3106)
!3117 = !DILocation(line: 28, column: 25, scope: !3106)
!3118 = !DILocation(line: 29, column: 2, scope: !3106)
!3119 = !DILocation(line: 29, column: 2, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3106, file: !2970, line: 29, column: 2)
!3121 = !DILocation(line: 31, column: 2, scope: !3106)
!3122 = !DILocation(line: 31, column: 11, scope: !3106)
!3123 = !DILocation(line: 32, column: 7, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3106, file: !2970, line: 32, column: 6)
!3125 = !DILocation(line: 32, column: 24, scope: !3124)
!3126 = !DILocation(line: 32, column: 41, scope: !3124)
!3127 = !DILocation(line: 32, column: 55, scope: !3124)
!3128 = !DILocation(line: 32, column: 63, scope: !3124)
!3129 = !DILocation(line: 32, column: 69, scope: !3124)
!3130 = !DILocation(line: 32, column: 61, scope: !3124)
!3131 = !DILocation(line: 32, column: 6, scope: !3106)
!3132 = !DILocation(line: 34, column: 15, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3124, file: !2970, line: 33, column: 10)
!3134 = !DILocation(line: 34, column: 13, scope: !3133)
!3135 = !DILocation(line: 35, column: 2, scope: !3133)
!3136 = !DILocation(line: 36, column: 3, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3124, file: !2970, line: 35, column: 9)
!3138 = !DILocation(line: 36, column: 3, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3137, file: !2970, line: 36, column: 3)
!3140 = !DILocation(line: 38, column: 15, scope: !3137)
!3141 = !DILocation(line: 38, column: 23, scope: !3137)
!3142 = !DILocation(line: 38, column: 29, scope: !3137)
!3143 = !DILocation(line: 38, column: 21, scope: !3137)
!3144 = !DILocation(line: 38, column: 13, scope: !3137)
!3145 = !DILocation(line: 41, column: 9, scope: !3106)
!3146 = !DILocation(line: 42, column: 1, scope: !3106)
!3147 = !DILocation(line: 41, column: 2, scope: !3106)
!3148 = distinct !DISubprogram(name: "percpu_arena_update", scope: !1522, file: !1522, line: 7, type: !3149, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{null, !970, !7}
!3151 = !{!3152, !3153, !3154, !3155, !3156, !3159, !3160, !3161}
!3152 = !DILocalVariable(name: "tsd", arg: 1, scope: !3148, file: !1522, line: 7, type: !970)
!3153 = !DILocalVariable(name: "cpu", arg: 2, scope: !3148, file: !1522, line: 7, type: !7)
!3154 = !DILocalVariable(name: "oldarena", scope: !3148, file: !1522, line: 9, type: !208)
!3155 = !DILocalVariable(name: "oldind", scope: !3148, file: !1522, line: 11, type: !7)
!3156 = !DILocalVariable(name: "newind", scope: !3157, file: !1522, line: 14, type: !7)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !1522, line: 13, column: 21)
!3158 = distinct !DILexicalBlock(scope: !3148, file: !1522, line: 13, column: 6)
!3159 = !DILocalVariable(name: "newarena", scope: !3157, file: !1522, line: 15, type: !208)
!3160 = !DILocalVariable(name: "tcache", scope: !3157, file: !1522, line: 20, type: !354)
!3161 = !DILocalVariable(name: "tcache_slow", scope: !3162, file: !1522, line: 22, type: !298)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !1522, line: 21, column: 23)
!3163 = distinct !DILexicalBlock(scope: !3157, file: !1522, line: 21, column: 7)
!3164 = !DILocation(line: 7, column: 28, scope: !3148)
!3165 = !DILocation(line: 7, column: 42, scope: !3148)
!3166 = !DILocation(line: 8, column: 2, scope: !3148)
!3167 = !DILocation(line: 8, column: 2, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3148, file: !1522, line: 8, column: 2)
!3169 = !DILocation(line: 9, column: 2, scope: !3148)
!3170 = !DILocation(line: 9, column: 11, scope: !3148)
!3171 = !DILocation(line: 9, column: 36, scope: !3148)
!3172 = !DILocation(line: 9, column: 22, scope: !3148)
!3173 = !DILocation(line: 10, column: 2, scope: !3148)
!3174 = !DILocation(line: 10, column: 2, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3148, file: !1522, line: 10, column: 2)
!3176 = !DILocation(line: 11, column: 2, scope: !3148)
!3177 = !DILocation(line: 11, column: 11, scope: !3148)
!3178 = !DILocation(line: 11, column: 34, scope: !3148)
!3179 = !DILocation(line: 11, column: 20, scope: !3148)
!3180 = !DILocation(line: 13, column: 6, scope: !3158)
!3181 = !DILocation(line: 13, column: 16, scope: !3158)
!3182 = !DILocation(line: 13, column: 13, scope: !3158)
!3183 = !DILocation(line: 13, column: 6, scope: !3148)
!3184 = !DILocation(line: 14, column: 3, scope: !3157)
!3185 = !DILocation(line: 14, column: 12, scope: !3157)
!3186 = !DILocation(line: 14, column: 21, scope: !3157)
!3187 = !DILocation(line: 15, column: 3, scope: !3157)
!3188 = !DILocation(line: 15, column: 12, scope: !3157)
!3189 = !DILocation(line: 15, column: 42, scope: !3157)
!3190 = !DILocation(line: 15, column: 33, scope: !3157)
!3191 = !DILocation(line: 15, column: 48, scope: !3157)
!3192 = !DILocation(line: 15, column: 23, scope: !3157)
!3193 = !DILocation(line: 16, column: 3, scope: !3157)
!3194 = !DILocation(line: 16, column: 3, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3157, file: !1522, line: 16, column: 3)
!3196 = !DILocation(line: 19, column: 17, scope: !3157)
!3197 = !DILocation(line: 19, column: 22, scope: !3157)
!3198 = !DILocation(line: 19, column: 32, scope: !3157)
!3199 = !DILocation(line: 19, column: 3, scope: !3157)
!3200 = !DILocation(line: 20, column: 3, scope: !3157)
!3201 = !DILocation(line: 20, column: 13, scope: !3157)
!3202 = !DILocation(line: 20, column: 33, scope: !3157)
!3203 = !DILocation(line: 20, column: 22, scope: !3157)
!3204 = !DILocation(line: 21, column: 7, scope: !3163)
!3205 = !DILocation(line: 21, column: 14, scope: !3163)
!3206 = !DILocation(line: 21, column: 7, scope: !3157)
!3207 = !DILocation(line: 22, column: 4, scope: !3162)
!3208 = !DILocation(line: 22, column: 19, scope: !3162)
!3209 = !DILocation(line: 22, column: 54, scope: !3162)
!3210 = !DILocation(line: 22, column: 33, scope: !3162)
!3211 = !DILocation(line: 23, column: 38, scope: !3162)
!3212 = !DILocation(line: 23, column: 29, scope: !3162)
!3213 = !DILocation(line: 23, column: 44, scope: !3162)
!3214 = !DILocation(line: 24, column: 8, scope: !3162)
!3215 = !DILocation(line: 24, column: 16, scope: !3162)
!3216 = !DILocation(line: 23, column: 4, scope: !3162)
!3217 = !DILocation(line: 25, column: 3, scope: !3163)
!3218 = !DILocation(line: 25, column: 3, scope: !3162)
!3219 = !DILocation(line: 26, column: 2, scope: !3158)
!3220 = !DILocation(line: 26, column: 2, scope: !3157)
!3221 = !DILocation(line: 27, column: 1, scope: !3148)
!3222 = distinct !DISubprogram(name: "tsd_reentrancy_levelp_get", scope: !178, file: !178, line: 344, type: !3223, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3226)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!3225, !970}
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!3226 = !{!3227, !3228}
!3227 = !DILocalVariable(name: "tsd", arg: 1, scope: !3222, file: !178, line: 344, type: !970)
!3228 = !DILocalVariable(name: "state", scope: !3222, file: !178, line: 344, type: !344)
!3229 = !DILocation(line: 344, column: 1, scope: !3222)
!3230 = !DILocation(line: 344, column: 1, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3222, file: !178, line: 344, column: 1)
!3232 = distinct !DISubprogram(name: "tsd_reentrancy_levelp_get_unsafe", scope: !178, file: !178, line: 323, type: !3223, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3233)
!3233 = !{!3234}
!3234 = !DILocalVariable(name: "tsd", arg: 1, scope: !3232, file: !178, line: 323, type: !970)
!3235 = !DILocation(line: 323, column: 1, scope: !3232)
!3236 = distinct !DISubprogram(name: "atomic_load_p", scope: !168, file: !168, line: 83, type: !3237, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3242)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!121, !3239, !3241}
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!3241 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_memory_order_t", file: !110, line: 14, baseType: !109)
!3242 = !{!3243, !3244, !3245}
!3243 = !DILocalVariable(name: "a", arg: 1, scope: !3236, file: !168, line: 83, type: !3239)
!3244 = !DILocalVariable(name: "mo", arg: 2, scope: !3236, file: !168, line: 83, type: !3241)
!3245 = !DILocalVariable(name: "result", scope: !3236, file: !168, line: 83, type: !121)
!3246 = !DILocation(line: 83, column: 1, scope: !3236)
!3247 = !DISubprogram(name: "arena_init", scope: !3020, file: !3020, line: 63, type: !3248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!208, !174, !7, !3250}
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3252)
!3252 = !DIDerivedType(tag: DW_TAG_typedef, name: "arena_config_t", file: !99, line: 54, baseType: !3253)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arena_config_s", file: !99, line: 44, size: 128, elements: !3254)
!3254 = !{!3255, !3256}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "extent_hooks", scope: !3253, file: !99, line: 46, baseType: !1199, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_use_hooks", scope: !3253, file: !99, line: 51, baseType: !185, size: 8, offset: 64)
!3257 = distinct !DISubprogram(name: "atomic_enum_to_builtin", scope: !110, file: !110, line: 17, type: !3258, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3260)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!956, !3241}
!3260 = !{!3261}
!3261 = !DILocalVariable(name: "mo", arg: 1, scope: !3257, file: !110, line: 17, type: !3241)
!3262 = !DILocation(line: 17, column: 46, scope: !3257)
!3263 = !DILocation(line: 18, column: 10, scope: !3257)
!3264 = !DILocation(line: 18, column: 2, scope: !3257)
!3265 = !DILocation(line: 20, column: 3, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3257, file: !110, line: 18, column: 14)
!3267 = !DILocation(line: 22, column: 3, scope: !3266)
!3268 = !DILocation(line: 24, column: 3, scope: !3266)
!3269 = !DILocation(line: 26, column: 3, scope: !3266)
!3270 = !DILocation(line: 28, column: 3, scope: !3266)
!3271 = !DILocation(line: 31, column: 2, scope: !3257)
!3272 = !DILocation(line: 31, column: 2, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3257, file: !110, line: 31, column: 2)
!3274 = !DILocation(line: 32, column: 1, scope: !3257)
!3275 = distinct !DISubprogram(name: "tsd_iarenap_get", scope: !178, file: !178, line: 344, type: !2766, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3276)
!3276 = !{!3277, !3278}
!3277 = !DILocalVariable(name: "tsd", arg: 1, scope: !3275, file: !178, line: 344, type: !970)
!3278 = !DILocalVariable(name: "state", scope: !3275, file: !178, line: 344, type: !344)
!3279 = !DILocation(line: 344, column: 1, scope: !3275)
!3280 = !DILocation(line: 344, column: 1, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3275, file: !178, line: 344, column: 1)
!3282 = distinct !DISubprogram(name: "tsd_iarenap_get_unsafe", scope: !178, file: !178, line: 323, type: !2766, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3283)
!3283 = !{!3284}
!3284 = !DILocalVariable(name: "tsd", arg: 1, scope: !3282, file: !178, line: 323, type: !970)
!3285 = !DILocation(line: 323, column: 1, scope: !3282)
!3286 = distinct !DISubprogram(name: "tsd_tcache_enabled_get", scope: !178, file: !178, line: 373, type: !3024, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3287)
!3287 = !{!3288}
!3288 = !DILocalVariable(name: "tsd", arg: 1, scope: !3286, file: !178, line: 373, type: !970)
!3289 = !DILocation(line: 373, column: 1, scope: !3286)
!3290 = distinct !DISubprogram(name: "tsd_tcache_enabledp_get", scope: !178, file: !178, line: 344, type: !3291, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3293)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!608, !970}
!3293 = !{!3294, !3295}
!3294 = !DILocalVariable(name: "tsd", arg: 1, scope: !3290, file: !178, line: 344, type: !970)
!3295 = !DILocalVariable(name: "state", scope: !3290, file: !178, line: 344, type: !344)
!3296 = !DILocation(line: 344, column: 1, scope: !3290)
!3297 = !DILocation(line: 344, column: 1, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3290, file: !178, line: 344, column: 1)
!3299 = distinct !DISubprogram(name: "tsd_tcache_enabledp_get_unsafe", scope: !178, file: !178, line: 323, type: !3291, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3300)
!3300 = !{!3301}
!3301 = !DILocalVariable(name: "tsd", arg: 1, scope: !3299, file: !178, line: 323, type: !970)
!3302 = !DILocation(line: 323, column: 1, scope: !3299)
!3303 = distinct !DISubprogram(name: "tsd_tcache_slowp_get_unsafe", scope: !178, file: !178, line: 323, type: !3037, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3304)
!3304 = !{!3305}
!3305 = !DILocalVariable(name: "tsd", arg: 1, scope: !3303, file: !178, line: 323, type: !970)
!3306 = !DILocation(line: 323, column: 1, scope: !3303)
!3307 = distinct !DISubprogram(name: "tsd_tcachep_get_unsafe", scope: !178, file: !178, line: 324, type: !3046, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3308)
!3308 = !{!3309}
!3309 = !DILocalVariable(name: "tsd", arg: 1, scope: !3307, file: !178, line: 324, type: !970)
!3310 = !DILocation(line: 324, column: 1, scope: !3307)
!3311 = distinct !DISubprogram(name: "malloc_getcpu", scope: !2970, file: !2970, line: 11, type: !3312, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!1192}
!3314 = !DILocation(line: 12, column: 2, scope: !3311)
!3315 = !DILocation(line: 12, column: 2, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3311, file: !2970, line: 12, column: 2)
!3317 = !DILocation(line: 16, column: 25, scope: !3311)
!3318 = !DILocation(line: 16, column: 2, scope: !3311)
!3319 = !DISubprogram(name: "sched_getcpu", scope: !3320, file: !3320, line: 89, type: !3321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3320 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sched.h", directory: "", checksumkind: CSK_MD5, checksum: "d4ce64b0770084f4b46206c69dd94f59")
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!956}
!3323 = !DISubprogram(name: "arena_migrate", scope: !3020, file: !3020, line: 65, type: !3324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{null, !970, !208, !208}
!3326 = distinct !DISubprogram(name: "tcache_get", scope: !2970, file: !2970, line: 93, type: !3046, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3327)
!3327 = !{!3328}
!3328 = !DILocalVariable(name: "tsd", arg: 1, scope: !3326, file: !2970, line: 93, type: !970)
!3329 = !DILocation(line: 93, column: 19, scope: !3326)
!3330 = !DILocation(line: 94, column: 24, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3326, file: !2970, line: 94, column: 6)
!3332 = !DILocation(line: 94, column: 7, scope: !3331)
!3333 = !DILocation(line: 94, column: 6, scope: !3326)
!3334 = !DILocation(line: 95, column: 3, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3331, file: !2970, line: 94, column: 30)
!3336 = !DILocation(line: 98, column: 25, scope: !3326)
!3337 = !DILocation(line: 98, column: 9, scope: !3326)
!3338 = !DILocation(line: 98, column: 2, scope: !3326)
!3339 = !DILocation(line: 99, column: 1, scope: !3326)
!3340 = distinct !DISubprogram(name: "witness_assert_not_owner", scope: !6, file: !6, line: 220, type: !3341, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3343)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{null, !1194, !1047}
!3343 = !{!3344, !3345, !3346, !3348, !3350}
!3344 = !DILocalVariable(name: "witness_tsdn", arg: 1, scope: !3340, file: !6, line: 220, type: !1194)
!3345 = !DILocalVariable(name: "witness", arg: 2, scope: !3340, file: !6, line: 221, type: !1047)
!3346 = !DILocalVariable(name: "witness_tsd", scope: !3340, file: !6, line: 222, type: !3347)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!3348 = !DILocalVariable(name: "witnesses", scope: !3340, file: !6, line: 223, type: !3349)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!3350 = !DILocalVariable(name: "w", scope: !3340, file: !6, line: 224, type: !1032)
!3351 = !DILocation(line: 220, column: 42, scope: !3340)
!3352 = !DILocation(line: 221, column: 22, scope: !3340)
!3353 = !DILocation(line: 222, column: 2, scope: !3340)
!3354 = !DILocation(line: 222, column: 17, scope: !3340)
!3355 = !DILocation(line: 223, column: 2, scope: !3340)
!3356 = !DILocation(line: 223, column: 18, scope: !3340)
!3357 = !DILocation(line: 224, column: 2, scope: !3340)
!3358 = !DILocation(line: 224, column: 13, scope: !3340)
!3359 = !DILocation(line: 244, column: 1, scope: !3340)
!3360 = distinct !DISubprogram(name: "tsdn_witness_tsdp_get", scope: !178, file: !178, line: 364, type: !3361, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3363)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!1194, !174}
!3363 = !{!3364, !3365}
!3364 = !DILocalVariable(name: "tsdn", arg: 1, scope: !3360, file: !178, line: 364, type: !174)
!3365 = !DILocalVariable(name: "tsd", scope: !3360, file: !178, line: 364, type: !970)
!3366 = !DILocation(line: 364, column: 1, scope: !3360)
!3367 = !DILocation(line: 364, column: 1, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3360, file: !178, line: 364, column: 1)
!3369 = !DILocation(line: 364, column: 1, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3368, file: !178, line: 364, column: 1)
!3371 = distinct !DISubprogram(name: "malloc_mutex_trylock_final", scope: !53, file: !53, line: 156, type: !3372, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3374)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!185, !135}
!3374 = !{!3375}
!3375 = !DILocalVariable(name: "mutex", arg: 1, scope: !3371, file: !53, line: 156, type: !135)
!3376 = !DILocation(line: 156, column: 44, scope: !3371)
!3377 = !DILocation(line: 157, column: 9, scope: !3371)
!3378 = !DILocation(line: 157, column: 2, scope: !3371)
!3379 = !DISubprogram(name: "malloc_mutex_lock_slow", scope: !53, file: !53, line: 147, type: !3380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{null, !135}
!3382 = distinct !DISubprogram(name: "atomic_store_b", scope: !168, file: !168, line: 89, type: !3383, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3386)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{null, !3385, !185, !3241}
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!3386 = !{!3387, !3388, !3389}
!3387 = !DILocalVariable(name: "a", arg: 1, scope: !3382, file: !168, line: 89, type: !3385)
!3388 = !DILocalVariable(name: "val", arg: 2, scope: !3382, file: !168, line: 89, type: !185)
!3389 = !DILocalVariable(name: "mo", arg: 3, scope: !3382, file: !168, line: 89, type: !3241)
!3390 = !DILocation(line: 89, column: 1, scope: !3382)
!3391 = distinct !DISubprogram(name: "mutex_owner_stats_update", scope: !53, file: !53, line: 161, type: !1539, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3392)
!3392 = !{!3393, !3394, !3395}
!3393 = !DILocalVariable(name: "tsdn", arg: 1, scope: !3391, file: !53, line: 161, type: !174)
!3394 = !DILocalVariable(name: "mutex", arg: 2, scope: !3391, file: !53, line: 161, type: !135)
!3395 = !DILocalVariable(name: "data", scope: !3396, file: !53, line: 163, type: !3398)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !53, line: 162, column: 20)
!3397 = distinct !DILexicalBlock(scope: !3391, file: !53, line: 162, column: 6)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!3399 = !DILocation(line: 161, column: 34, scope: !3391)
!3400 = !DILocation(line: 161, column: 56, scope: !3391)
!3401 = !DILocation(line: 163, column: 3, scope: !3396)
!3402 = !DILocation(line: 163, column: 22, scope: !3396)
!3403 = !DILocation(line: 163, column: 30, scope: !3396)
!3404 = !DILocation(line: 163, column: 37, scope: !3396)
!3405 = !DILocation(line: 164, column: 3, scope: !3396)
!3406 = !DILocation(line: 164, column: 9, scope: !3396)
!3407 = !DILocation(line: 164, column: 19, scope: !3396)
!3408 = !{!3409, !1278, i64 56}
!3409 = !{!"", !2354, i64 0, !2354, i64 8, !1278, i64 16, !1278, i64 24, !1535, i64 32, !2904, i64 36, !1278, i64 40, !1272, i64 48, !1278, i64 56}
!3410 = !DILocation(line: 165, column: 7, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3396, file: !53, line: 165, column: 7)
!3412 = !DILocation(line: 165, column: 13, scope: !3411)
!3413 = !{!3409, !1272, i64 48}
!3414 = !DILocation(line: 165, column: 27, scope: !3411)
!3415 = !DILocation(line: 165, column: 24, scope: !3411)
!3416 = !DILocation(line: 165, column: 7, scope: !3396)
!3417 = !DILocation(line: 166, column: 23, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3411, file: !53, line: 165, column: 33)
!3419 = !DILocation(line: 166, column: 4, scope: !3418)
!3420 = !DILocation(line: 166, column: 10, scope: !3418)
!3421 = !DILocation(line: 166, column: 21, scope: !3418)
!3422 = !DILocation(line: 167, column: 4, scope: !3418)
!3423 = !DILocation(line: 167, column: 10, scope: !3418)
!3424 = !DILocation(line: 167, column: 26, scope: !3418)
!3425 = !{!3409, !1278, i64 40}
!3426 = !DILocation(line: 168, column: 3, scope: !3418)
!3427 = !DILocation(line: 169, column: 2, scope: !3397)
!3428 = !DILocation(line: 170, column: 1, scope: !3391)
!3429 = distinct !DISubprogram(name: "witness_lock", scope: !6, file: !6, line: 306, type: !3430, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3432)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{null, !1194, !1032}
!3432 = !{!3433, !3434, !3435, !3436, !3437}
!3433 = !DILocalVariable(name: "witness_tsdn", arg: 1, scope: !3429, file: !6, line: 306, type: !1194)
!3434 = !DILocalVariable(name: "witness", arg: 2, scope: !3429, file: !6, line: 306, type: !1032)
!3435 = !DILocalVariable(name: "witness_tsd", scope: !3429, file: !6, line: 307, type: !3347)
!3436 = !DILocalVariable(name: "witnesses", scope: !3429, file: !6, line: 308, type: !3349)
!3437 = !DILocalVariable(name: "w", scope: !3429, file: !6, line: 309, type: !1032)
!3438 = !DILocation(line: 306, column: 30, scope: !3429)
!3439 = !DILocation(line: 306, column: 55, scope: !3429)
!3440 = !DILocation(line: 307, column: 2, scope: !3429)
!3441 = !DILocation(line: 307, column: 17, scope: !3429)
!3442 = !DILocation(line: 308, column: 2, scope: !3429)
!3443 = !DILocation(line: 308, column: 18, scope: !3429)
!3444 = !DILocation(line: 309, column: 2, scope: !3429)
!3445 = !DILocation(line: 309, column: 13, scope: !3429)
!3446 = !DILocation(line: 346, column: 1, scope: !3429)
!3447 = distinct !DISubprogram(name: "tsd_witness_tsdp_get", scope: !178, file: !178, line: 346, type: !3448, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3450)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!3347, !970}
!3450 = !{!3451, !3452}
!3451 = !DILocalVariable(name: "tsd", arg: 1, scope: !3447, file: !178, line: 346, type: !970)
!3452 = !DILocalVariable(name: "state", scope: !3447, file: !178, line: 346, type: !344)
!3453 = !DILocation(line: 346, column: 1, scope: !3447)
!3454 = !DILocation(line: 346, column: 1, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3447, file: !178, line: 346, column: 1)
!3456 = distinct !DISubprogram(name: "tsd_witness_tsdp_get_unsafe", scope: !178, file: !178, line: 325, type: !3448, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3457)
!3457 = !{!3458}
!3458 = !DILocalVariable(name: "tsd", arg: 1, scope: !3456, file: !178, line: 325, type: !970)
!3459 = !DILocation(line: 325, column: 1, scope: !3456)
!3460 = !DISubprogram(name: "pthread_mutex_trylock", scope: !3461, file: !3461, line: 790, type: !3462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3461 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "5205981c6f80cc3dc1e81231df63d8ef")
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!956, !3464}
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!3465 = distinct !DISubprogram(name: "witness_unlock", scope: !6, file: !6, line: 349, type: !3430, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3466)
!3466 = !{!3467, !3468, !3469, !3470}
!3467 = !DILocalVariable(name: "witness_tsdn", arg: 1, scope: !3465, file: !6, line: 349, type: !1194)
!3468 = !DILocalVariable(name: "witness", arg: 2, scope: !3465, file: !6, line: 349, type: !1032)
!3469 = !DILocalVariable(name: "witness_tsd", scope: !3465, file: !6, line: 350, type: !3347)
!3470 = !DILocalVariable(name: "witnesses", scope: !3465, file: !6, line: 351, type: !3349)
!3471 = !DILocation(line: 349, column: 32, scope: !3465)
!3472 = !DILocation(line: 349, column: 57, scope: !3465)
!3473 = !DILocation(line: 350, column: 2, scope: !3465)
!3474 = !DILocation(line: 350, column: 17, scope: !3465)
!3475 = !DILocation(line: 351, column: 2, scope: !3465)
!3476 = !DILocation(line: 351, column: 18, scope: !3465)
!3477 = !DILocation(line: 376, column: 1, scope: !3465)
!3478 = !DISubprogram(name: "pthread_mutex_unlock", scope: !3461, file: !3461, line: 835, type: !3462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3479 = distinct !DISubprogram(name: "arena_decay_ticks", scope: !1462, file: !1462, line: 118, type: !3480, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3482)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{null, !174, !208, !7}
!3482 = !{!3483, !3484, !3485, !3486, !3487, !3489}
!3483 = !DILocalVariable(name: "tsdn", arg: 1, scope: !3479, file: !1462, line: 118, type: !174)
!3484 = !DILocalVariable(name: "arena", arg: 2, scope: !3479, file: !1462, line: 118, type: !208)
!3485 = !DILocalVariable(name: "nticks", arg: 3, scope: !3479, file: !1462, line: 118, type: !7)
!3486 = !DILocalVariable(name: "tsd", scope: !3479, file: !1462, line: 122, type: !970)
!3487 = !DILocalVariable(name: "decay_ticker", scope: !3479, file: !1462, line: 132, type: !3488)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!3489 = !DILocalVariable(name: "prng_state", scope: !3479, file: !1462, line: 133, type: !3490)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!3491 = !DILocation(line: 118, column: 27, scope: !3479)
!3492 = !DILocation(line: 118, column: 42, scope: !3479)
!3493 = !DILocation(line: 118, column: 58, scope: !3479)
!3494 = !DILocation(line: 119, column: 6, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3479, file: !1462, line: 119, column: 6)
!3496 = !DILocation(line: 119, column: 6, scope: !3479)
!3497 = !DILocation(line: 120, column: 3, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3495, file: !1462, line: 119, column: 33)
!3499 = !DILocation(line: 122, column: 2, scope: !3479)
!3500 = !DILocation(line: 122, column: 9, scope: !3479)
!3501 = !DILocation(line: 122, column: 24, scope: !3479)
!3502 = !DILocation(line: 122, column: 15, scope: !3479)
!3503 = !DILocation(line: 132, column: 2, scope: !3479)
!3504 = !DILocation(line: 132, column: 17, scope: !3479)
!3505 = !DILocation(line: 132, column: 60, scope: !3479)
!3506 = !DILocation(line: 132, column: 32, scope: !3479)
!3507 = !DILocation(line: 133, column: 2, scope: !3479)
!3508 = !DILocation(line: 133, column: 12, scope: !3479)
!3509 = !DILocation(line: 133, column: 45, scope: !3479)
!3510 = !DILocation(line: 133, column: 25, scope: !3479)
!3511 = !DILocation(line: 134, column: 6, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3479, file: !1462, line: 134, column: 6)
!3513 = !DILocation(line: 134, column: 6, scope: !3479)
!3514 = !DILocation(line: 135, column: 15, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3512, file: !1462, line: 134, column: 69)
!3516 = !DILocation(line: 135, column: 21, scope: !3515)
!3517 = !DILocation(line: 135, column: 3, scope: !3515)
!3518 = !DILocation(line: 136, column: 2, scope: !3515)
!3519 = !DILocation(line: 137, column: 1, scope: !3479)
!3520 = distinct !DISubprogram(name: "tsd_arena_decay_tickerp_get", scope: !178, file: !178, line: 344, type: !3521, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3523)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!3488, !970}
!3523 = !{!3524, !3525}
!3524 = !DILocalVariable(name: "tsd", arg: 1, scope: !3520, file: !178, line: 344, type: !970)
!3525 = !DILocalVariable(name: "state", scope: !3520, file: !178, line: 344, type: !344)
!3526 = !DILocation(line: 344, column: 1, scope: !3520)
!3527 = !DILocation(line: 344, column: 1, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3520, file: !178, line: 344, column: 1)
!3529 = distinct !DISubprogram(name: "tsd_prng_statep_get", scope: !178, file: !178, line: 344, type: !3530, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3532)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!3490, !970}
!3532 = !{!3533, !3534}
!3533 = !DILocalVariable(name: "tsd", arg: 1, scope: !3529, file: !178, line: 344, type: !970)
!3534 = !DILocalVariable(name: "state", scope: !3529, file: !178, line: 344, type: !344)
!3535 = !DILocation(line: 344, column: 1, scope: !3529)
!3536 = !DILocation(line: 344, column: 1, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3529, file: !178, line: 344, column: 1)
!3538 = distinct !DISubprogram(name: "ticker_geom_ticks", scope: !950, file: !950, line: 162, type: !3539, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3541)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!185, !3488, !3490, !954}
!3541 = !{!3542, !3543, !3544}
!3542 = !DILocalVariable(name: "ticker", arg: 1, scope: !3538, file: !950, line: 162, type: !3488)
!3543 = !DILocalVariable(name: "prng_state", arg: 2, scope: !3538, file: !950, line: 162, type: !3490)
!3544 = !DILocalVariable(name: "nticks", arg: 3, scope: !3538, file: !950, line: 162, type: !954)
!3545 = !DILocation(line: 162, column: 34, scope: !3538)
!3546 = !DILocation(line: 162, column: 52, scope: !3538)
!3547 = !DILocation(line: 162, column: 72, scope: !3538)
!3548 = !DILocation(line: 163, column: 18, scope: !3538)
!3549 = !DILocation(line: 163, column: 2, scope: !3538)
!3550 = !DILocation(line: 163, column: 10, scope: !3538)
!3551 = !DILocation(line: 163, column: 15, scope: !3538)
!3552 = !{!3553, !1535, i64 0}
!3553 = !{!"ticker_geom_s", !1535, i64 0, !1535, i64 4}
!3554 = !DILocation(line: 164, column: 6, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3538, file: !950, line: 164, column: 6)
!3556 = !DILocation(line: 164, column: 6, scope: !3538)
!3557 = !DILocation(line: 165, column: 28, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3555, file: !950, line: 164, column: 34)
!3559 = !DILocation(line: 165, column: 36, scope: !3558)
!3560 = !DILocation(line: 165, column: 10, scope: !3558)
!3561 = !DILocation(line: 165, column: 3, scope: !3558)
!3562 = !DILocation(line: 167, column: 2, scope: !3538)
!3563 = !DILocation(line: 168, column: 1, scope: !3538)
!3564 = !DISubprogram(name: "arena_decay", scope: !1518, file: !1518, line: 57, type: !3565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{null, !174, !208, !185, !185}
!3567 = distinct !DISubprogram(name: "tsd_arena_decay_tickerp_get_unsafe", scope: !178, file: !178, line: 323, type: !3521, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3568)
!3568 = !{!3569}
!3569 = !DILocalVariable(name: "tsd", arg: 1, scope: !3567, file: !178, line: 323, type: !970)
!3570 = !DILocation(line: 323, column: 1, scope: !3567)
!3571 = distinct !DISubprogram(name: "tsd_prng_statep_get_unsafe", scope: !178, file: !178, line: 323, type: !3530, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3572)
!3572 = !{!3573}
!3573 = !DILocalVariable(name: "tsd", arg: 1, scope: !3571, file: !178, line: 323, type: !970)
!3574 = !DILocation(line: 323, column: 1, scope: !3571)
!3575 = distinct !DISubprogram(name: "ticker_geom_fixup", scope: !950, file: !950, line: 153, type: !3576, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3578)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!185, !3488, !3490}
!3578 = !{!3579, !3580, !3581}
!3579 = !DILocalVariable(name: "ticker", arg: 1, scope: !3575, file: !950, line: 153, type: !3488)
!3580 = !DILocalVariable(name: "prng_state", arg: 2, scope: !3575, file: !950, line: 153, type: !3490)
!3581 = !DILocalVariable(name: "idx", scope: !3575, file: !950, line: 154, type: !156)
!3582 = !DILocation(line: 153, column: 34, scope: !3575)
!3583 = !DILocation(line: 153, column: 52, scope: !3575)
!3584 = !DILocation(line: 154, column: 2, scope: !3575)
!3585 = !DILocation(line: 154, column: 11, scope: !3575)
!3586 = !DILocation(line: 154, column: 35, scope: !3575)
!3587 = !DILocation(line: 154, column: 17, scope: !3575)
!3588 = !DILocation(line: 156, column: 16, scope: !3575)
!3589 = !DILocation(line: 156, column: 24, scope: !3575)
!3590 = !{!3553, !1535, i64 4}
!3591 = !DILocation(line: 156, column: 6, scope: !3575)
!3592 = !DILocation(line: 156, column: 61, scope: !3575)
!3593 = !DILocation(line: 156, column: 43, scope: !3575)
!3594 = !DILocation(line: 156, column: 33, scope: !3575)
!3595 = !DILocation(line: 156, column: 31, scope: !3575)
!3596 = !DILocation(line: 157, column: 6, scope: !3575)
!3597 = !DILocation(line: 155, column: 17, scope: !3575)
!3598 = !DILocation(line: 155, column: 2, scope: !3575)
!3599 = !DILocation(line: 155, column: 10, scope: !3575)
!3600 = !DILocation(line: 155, column: 15, scope: !3575)
!3601 = !DILocation(line: 159, column: 1, scope: !3575)
!3602 = !DILocation(line: 158, column: 2, scope: !3575)
!3603 = distinct !DISubprogram(name: "prng_lg_range_u64", scope: !3604, file: !3604, line: 76, type: !3605, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3607)
!3604 = !DIFile(filename: "include/jemalloc/internal/prng.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "fafa60880131ee153071917ad0e47639")
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!156, !3490, !7}
!3607 = !{!3608, !3609, !3610}
!3608 = !DILocalVariable(name: "state", arg: 1, scope: !3603, file: !3604, line: 76, type: !3490)
!3609 = !DILocalVariable(name: "lg_range", arg: 2, scope: !3603, file: !3604, line: 76, type: !7)
!3610 = !DILocalVariable(name: "ret", scope: !3603, file: !3604, line: 81, type: !156)
!3611 = !DILocation(line: 76, column: 29, scope: !3603)
!3612 = !DILocation(line: 76, column: 45, scope: !3603)
!3613 = !DILocation(line: 77, column: 2, scope: !3603)
!3614 = !DILocation(line: 77, column: 2, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3603, file: !3604, line: 77, column: 2)
!3616 = !DILocation(line: 78, column: 2, scope: !3603)
!3617 = !DILocation(line: 78, column: 2, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3603, file: !3604, line: 78, column: 2)
!3619 = !DILocation(line: 80, column: 32, scope: !3603)
!3620 = !DILocation(line: 80, column: 31, scope: !3603)
!3621 = !DILocation(line: 80, column: 11, scope: !3603)
!3622 = !DILocation(line: 80, column: 3, scope: !3603)
!3623 = !DILocation(line: 80, column: 9, scope: !3603)
!3624 = !DILocation(line: 81, column: 2, scope: !3603)
!3625 = !DILocation(line: 81, column: 11, scope: !3603)
!3626 = !DILocation(line: 81, column: 18, scope: !3603)
!3627 = !DILocation(line: 81, column: 17, scope: !3603)
!3628 = !DILocation(line: 81, column: 33, scope: !3603)
!3629 = !DILocation(line: 81, column: 31, scope: !3603)
!3630 = !DILocation(line: 81, column: 24, scope: !3603)
!3631 = !DILocation(line: 83, column: 9, scope: !3603)
!3632 = !DILocation(line: 84, column: 1, scope: !3603)
!3633 = !DILocation(line: 83, column: 2, scope: !3603)
!3634 = distinct !DISubprogram(name: "prng_state_next_u64", scope: !3604, file: !3604, line: 40, type: !2721, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3635)
!3635 = !{!3636}
!3636 = !DILocalVariable(name: "state", arg: 1, scope: !3634, file: !3604, line: 40, type: !156)
!3637 = !DILocation(line: 40, column: 30, scope: !3634)
!3638 = !DILocation(line: 41, column: 10, scope: !3634)
!3639 = !DILocation(line: 41, column: 16, scope: !3634)
!3640 = !DILocation(line: 41, column: 29, scope: !3634)
!3641 = !DILocation(line: 41, column: 2, scope: !3634)
!3642 = distinct !DISubprogram(name: "sz_index2size", scope: !341, file: !341, line: 249, type: !2611, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3643)
!3643 = !{!3644}
!3644 = !DILocalVariable(name: "index", arg: 1, scope: !3642, file: !341, line: 249, type: !340)
!3645 = !DILocation(line: 249, column: 23, scope: !3642)
!3646 = !DILocation(line: 250, column: 2, scope: !3642)
!3647 = !DILocation(line: 250, column: 2, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3642, file: !341, line: 250, column: 2)
!3649 = !DILocation(line: 251, column: 30, scope: !3642)
!3650 = !DILocation(line: 251, column: 9, scope: !3642)
!3651 = !DILocation(line: 251, column: 2, scope: !3642)
!3652 = distinct !DISubprogram(name: "edata_szind_get", scope: !58, file: !58, line: 274, type: !3653, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3655)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!340, !1627}
!3655 = !{!3656, !3657}
!3656 = !DILocalVariable(name: "edata", arg: 1, scope: !3652, file: !58, line: 274, type: !1627)
!3657 = !DILocalVariable(name: "szind", scope: !3652, file: !58, line: 275, type: !340)
!3658 = !DILocation(line: 274, column: 32, scope: !3652)
!3659 = !DILocation(line: 275, column: 2, scope: !3652)
!3660 = !DILocation(line: 275, column: 10, scope: !3652)
!3661 = !DILocation(line: 275, column: 48, scope: !3652)
!3662 = !DILocation(line: 275, column: 18, scope: !3652)
!3663 = !DILocation(line: 276, column: 2, scope: !3652)
!3664 = !DILocation(line: 276, column: 2, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3652, file: !58, line: 276, column: 2)
!3666 = !DILocation(line: 277, column: 9, scope: !3652)
!3667 = !DILocation(line: 278, column: 1, scope: !3652)
!3668 = !DILocation(line: 277, column: 2, scope: !3652)
!3669 = distinct !DISubprogram(name: "edata_szind_get_maybe_invalid", scope: !58, file: !58, line: 266, type: !3653, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3670)
!3670 = !{!3671, !3672}
!3671 = !DILocalVariable(name: "edata", arg: 1, scope: !3669, file: !58, line: 266, type: !1627)
!3672 = !DILocalVariable(name: "szind", scope: !3669, file: !58, line: 267, type: !340)
!3673 = !DILocation(line: 266, column: 46, scope: !3669)
!3674 = !DILocation(line: 267, column: 2, scope: !3669)
!3675 = !DILocation(line: 267, column: 10, scope: !3669)
!3676 = !DILocation(line: 267, column: 29, scope: !3669)
!3677 = !DILocation(line: 267, column: 36, scope: !3669)
!3678 = !{!1638, !1278, i64 0}
!3679 = !DILocation(line: 267, column: 43, scope: !3669)
!3680 = !DILocation(line: 267, column: 68, scope: !3669)
!3681 = !DILocation(line: 267, column: 18, scope: !3669)
!3682 = !DILocation(line: 269, column: 2, scope: !3669)
!3683 = !DILocation(line: 269, column: 2, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3669, file: !58, line: 269, column: 2)
!3685 = !DILocation(line: 270, column: 9, scope: !3669)
!3686 = !DILocation(line: 271, column: 1, scope: !3669)
!3687 = !DILocation(line: 270, column: 2, scope: !3669)
!3688 = distinct !DISubprogram(name: "edata_size_get", scope: !58, file: !58, line: 356, type: !1743, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3689)
!3689 = !{!3690}
!3690 = !DILocalVariable(name: "edata", arg: 1, scope: !3688, file: !58, line: 356, type: !1627)
!3691 = !DILocation(line: 356, column: 31, scope: !3688)
!3692 = !DILocation(line: 357, column: 10, scope: !3688)
!3693 = !DILocation(line: 357, column: 17, scope: !3688)
!3694 = !DILocation(line: 357, column: 28, scope: !3688)
!3695 = !DILocation(line: 357, column: 2, scope: !3688)
!3696 = distinct !DISubprogram(name: "sz_size2index", scope: !341, file: !341, line: 203, type: !2628, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3697)
!3697 = !{!3698}
!3698 = !DILocalVariable(name: "size", arg: 1, scope: !3696, file: !341, line: 203, type: !118)
!3699 = !DILocation(line: 203, column: 22, scope: !3696)
!3700 = !DILocation(line: 204, column: 6, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3696, file: !341, line: 204, column: 6)
!3702 = !DILocation(line: 204, column: 6, scope: !3696)
!3703 = !DILocation(line: 205, column: 31, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3701, file: !341, line: 204, column: 42)
!3705 = !DILocation(line: 205, column: 10, scope: !3704)
!3706 = !DILocation(line: 205, column: 3, scope: !3704)
!3707 = !DILocation(line: 207, column: 31, scope: !3696)
!3708 = !DILocation(line: 207, column: 9, scope: !3696)
!3709 = !DILocation(line: 207, column: 2, scope: !3696)
!3710 = !DILocation(line: 208, column: 1, scope: !3696)
!3711 = !DISubprogram(name: "pa_expand", scope: !245, file: !245, line: 173, type: !3712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!185, !174, !3714, !377, !118, !118, !340, !185, !608}
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!3715 = !DISubprogram(name: "arena_handle_deferred_work", scope: !1518, file: !1518, line: 45, type: !1613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3716 = !DISubprogram(name: "arena_extent_ralloc_large_expand", scope: !1518, file: !1518, line: 52, type: !3717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{null, !174, !208, !377, !118}
!3719 = distinct !DISubprogram(name: "sz_size2index_compute", scope: !341, file: !341, line: 155, type: !2628, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3720)
!3720 = !{!3721, !3722, !3725, !3726, !3728, !3729, !3730, !3731, !3732, !3733}
!3721 = !DILocalVariable(name: "size", arg: 1, scope: !3719, file: !341, line: 155, type: !118)
!3722 = !DILocalVariable(name: "lg_tmin", scope: !3723, file: !341, line: 165, type: !340)
!3723 = distinct !DILexicalBlock(scope: !3724, file: !341, line: 164, column: 46)
!3724 = distinct !DILexicalBlock(scope: !3719, file: !341, line: 164, column: 6)
!3725 = !DILocalVariable(name: "lg_ceil", scope: !3723, file: !341, line: 166, type: !340)
!3726 = !DILocalVariable(name: "x", scope: !3727, file: !341, line: 171, type: !340)
!3727 = distinct !DILexicalBlock(scope: !3719, file: !341, line: 170, column: 2)
!3728 = !DILocalVariable(name: "shift", scope: !3727, file: !341, line: 172, type: !340)
!3729 = !DILocalVariable(name: "grp", scope: !3727, file: !341, line: 174, type: !340)
!3730 = !DILocalVariable(name: "lg_delta", scope: !3727, file: !341, line: 176, type: !340)
!3731 = !DILocalVariable(name: "delta_inverse_mask", scope: !3727, file: !341, line: 179, type: !118)
!3732 = !DILocalVariable(name: "mod", scope: !3727, file: !341, line: 180, type: !340)
!3733 = !DILocalVariable(name: "index", scope: !3727, file: !341, line: 183, type: !340)
!3734 = !DILocation(line: 155, column: 30, scope: !3719)
!3735 = !DILocation(line: 156, column: 6, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3719, file: !341, line: 156, column: 6)
!3737 = !DILocation(line: 156, column: 6, scope: !3719)
!3738 = !DILocation(line: 157, column: 3, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3736, file: !341, line: 156, column: 42)
!3740 = !DILocation(line: 160, column: 6, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3719, file: !341, line: 160, column: 6)
!3742 = !DILocation(line: 160, column: 11, scope: !3741)
!3743 = !DILocation(line: 160, column: 6, scope: !3719)
!3744 = !DILocation(line: 161, column: 3, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3741, file: !341, line: 160, column: 17)
!3746 = !DILocation(line: 164, column: 6, scope: !3724)
!3747 = !DILocation(line: 164, column: 11, scope: !3724)
!3748 = !DILocation(line: 164, column: 6, scope: !3719)
!3749 = !DILocation(line: 165, column: 3, scope: !3723)
!3750 = !DILocation(line: 165, column: 11, scope: !3723)
!3751 = !DILocation(line: 166, column: 3, scope: !3723)
!3752 = !DILocation(line: 166, column: 11, scope: !3723)
!3753 = !DILocation(line: 166, column: 43, scope: !3723)
!3754 = !DILocation(line: 166, column: 30, scope: !3723)
!3755 = !DILocation(line: 166, column: 21, scope: !3723)
!3756 = !DILocation(line: 167, column: 11, scope: !3723)
!3757 = !DILocation(line: 167, column: 21, scope: !3723)
!3758 = !DILocation(line: 167, column: 19, scope: !3723)
!3759 = !DILocation(line: 167, column: 35, scope: !3723)
!3760 = !DILocation(line: 167, column: 45, scope: !3723)
!3761 = !DILocation(line: 167, column: 43, scope: !3723)
!3762 = !DILocation(line: 167, column: 3, scope: !3723)
!3763 = !DILocation(line: 168, column: 2, scope: !3724)
!3764 = !DILocation(line: 171, column: 3, scope: !3727)
!3765 = !DILocation(line: 171, column: 11, scope: !3727)
!3766 = !DILocation(line: 171, column: 25, scope: !3727)
!3767 = !DILocation(line: 171, column: 29, scope: !3727)
!3768 = !DILocation(line: 171, column: 33, scope: !3727)
!3769 = !DILocation(line: 171, column: 15, scope: !3727)
!3770 = !DILocation(line: 172, column: 3, scope: !3727)
!3771 = !DILocation(line: 172, column: 11, scope: !3727)
!3772 = !DILocation(line: 172, column: 20, scope: !3727)
!3773 = !DILocation(line: 172, column: 22, scope: !3727)
!3774 = !DILocation(line: 172, column: 19, scope: !3727)
!3775 = !DILocation(line: 173, column: 7, scope: !3727)
!3776 = !DILocation(line: 173, column: 9, scope: !3727)
!3777 = !DILocation(line: 174, column: 3, scope: !3727)
!3778 = !DILocation(line: 174, column: 11, scope: !3727)
!3779 = !DILocation(line: 174, column: 17, scope: !3727)
!3780 = !DILocation(line: 174, column: 23, scope: !3727)
!3781 = !DILocation(line: 176, column: 3, scope: !3727)
!3782 = !DILocation(line: 176, column: 11, scope: !3727)
!3783 = !DILocation(line: 176, column: 23, scope: !3727)
!3784 = !DILocation(line: 176, column: 25, scope: !3727)
!3785 = !DILocation(line: 176, column: 22, scope: !3727)
!3786 = !DILocation(line: 177, column: 22, scope: !3727)
!3787 = !DILocation(line: 177, column: 24, scope: !3727)
!3788 = !DILocation(line: 177, column: 39, scope: !3727)
!3789 = !DILocation(line: 179, column: 3, scope: !3727)
!3790 = !DILocation(line: 179, column: 10, scope: !3727)
!3791 = !DILocation(line: 179, column: 41, scope: !3727)
!3792 = !DILocation(line: 179, column: 38, scope: !3727)
!3793 = !DILocation(line: 180, column: 3, scope: !3727)
!3794 = !DILocation(line: 180, column: 11, scope: !3727)
!3795 = !DILocation(line: 180, column: 21, scope: !3727)
!3796 = !DILocation(line: 180, column: 25, scope: !3727)
!3797 = !DILocation(line: 180, column: 31, scope: !3727)
!3798 = !DILocation(line: 180, column: 29, scope: !3727)
!3799 = !DILocation(line: 180, column: 54, scope: !3727)
!3800 = !DILocation(line: 180, column: 51, scope: !3727)
!3801 = !DILocation(line: 180, column: 65, scope: !3727)
!3802 = !DILocation(line: 180, column: 17, scope: !3727)
!3803 = !DILocation(line: 183, column: 3, scope: !3727)
!3804 = !DILocation(line: 183, column: 11, scope: !3727)
!3805 = !DILocation(line: 183, column: 30, scope: !3727)
!3806 = !DILocation(line: 183, column: 28, scope: !3727)
!3807 = !DILocation(line: 183, column: 36, scope: !3727)
!3808 = !DILocation(line: 183, column: 34, scope: !3727)
!3809 = !DILocation(line: 184, column: 10, scope: !3727)
!3810 = !DILocation(line: 184, column: 3, scope: !3727)
!3811 = !DILocation(line: 185, column: 2, scope: !3719)
!3812 = !DILocation(line: 186, column: 1, scope: !3719)
!3813 = distinct !DISubprogram(name: "edata_arena_ind_get", scope: !58, file: !58, line: 257, type: !3814, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3816)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!7, !1627}
!3816 = !{!3817, !3818}
!3817 = !DILocalVariable(name: "edata", arg: 1, scope: !3813, file: !58, line: 257, type: !1627)
!3818 = !DILocalVariable(name: "arena_ind", scope: !3813, file: !58, line: 258, type: !7)
!3819 = !DILocation(line: 257, column: 36, scope: !3813)
!3820 = !DILocation(line: 258, column: 2, scope: !3813)
!3821 = !DILocation(line: 258, column: 11, scope: !3813)
!3822 = !DILocation(line: 258, column: 35, scope: !3813)
!3823 = !DILocation(line: 258, column: 42, scope: !3813)
!3824 = !DILocation(line: 258, column: 49, scope: !3813)
!3825 = !DILocation(line: 259, column: 29, scope: !3813)
!3826 = !DILocation(line: 258, column: 23, scope: !3813)
!3827 = !DILocation(line: 260, column: 2, scope: !3813)
!3828 = !DILocation(line: 260, column: 2, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3813, file: !58, line: 260, column: 2)
!3830 = !DILocation(line: 262, column: 9, scope: !3813)
!3831 = !DILocation(line: 263, column: 1, scope: !3813)
!3832 = !DILocation(line: 262, column: 2, scope: !3813)
!3833 = !DISubprogram(name: "arena_get_ehooks", scope: !1518, file: !1518, line: 87, type: !3834, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!1886, !208}
!3836 = distinct !DISubprogram(name: "ehooks_split_will_fail", scope: !525, file: !525, line: 135, type: !3837, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3840)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!185, !3839}
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!3840 = !{!3841}
!3841 = !DILocalVariable(name: "ehooks", arg: 1, scope: !3836, file: !525, line: 135, type: !3839)
!3842 = !DILocation(line: 135, column: 34, scope: !3836)
!3843 = !DILocation(line: 136, column: 37, scope: !3836)
!3844 = !DILocation(line: 136, column: 9, scope: !3836)
!3845 = !DILocation(line: 136, column: 46, scope: !3836)
!3846 = !{!3847, !1272, i64 56}
!3847 = !{!"extent_hooks_s", !1272, i64 0, !1272, i64 8, !1272, i64 16, !1272, i64 24, !1272, i64 32, !1272, i64 40, !1272, i64 48, !1272, i64 56, !1272, i64 64}
!3848 = !DILocation(line: 136, column: 52, scope: !3836)
!3849 = !DILocation(line: 136, column: 2, scope: !3836)
!3850 = !DISubprogram(name: "pa_shrink", scope: !245, file: !245, line: 179, type: !3851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!185, !174, !3714, !377, !118, !118, !340, !608}
!3853 = !DISubprogram(name: "arena_extent_ralloc_large_shrink", scope: !1518, file: !1518, line: 50, type: !3717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3854 = distinct !DISubprogram(name: "ehooks_get_extent_hooks_ptr", scope: !525, file: !525, line: 110, type: !3855, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3857)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!1199, !3839}
!3857 = !{!3858}
!3858 = !DILocalVariable(name: "ehooks", arg: 1, scope: !3854, file: !525, line: 110, type: !3839)
!3859 = !DILocation(line: 110, column: 39, scope: !3854)
!3860 = !DILocation(line: 111, column: 42, scope: !3854)
!3861 = !DILocation(line: 111, column: 50, scope: !3854)
!3862 = !DILocation(line: 111, column: 27, scope: !3854)
!3863 = !DILocation(line: 111, column: 2, scope: !3854)
!3864 = distinct !DISubprogram(name: "tsdn_rtree_ctx", scope: !178, file: !178, line: 474, type: !3865, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3867)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!2084, !174, !2084}
!3867 = !{!3868, !3869}
!3868 = !DILocalVariable(name: "tsdn", arg: 1, scope: !3864, file: !178, line: 474, type: !174)
!3869 = !DILocalVariable(name: "fallback", arg: 2, scope: !3864, file: !178, line: 474, type: !2084)
!3870 = !DILocation(line: 474, column: 24, scope: !3864)
!3871 = !DILocation(line: 474, column: 43, scope: !3864)
!3872 = !DILocation(line: 479, column: 6, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3864, file: !178, line: 479, column: 6)
!3874 = !DILocation(line: 479, column: 6, scope: !3864)
!3875 = !DILocation(line: 480, column: 23, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3873, file: !178, line: 479, column: 33)
!3877 = !DILocation(line: 480, column: 3, scope: !3876)
!3878 = !DILocation(line: 481, column: 10, scope: !3876)
!3879 = !DILocation(line: 481, column: 3, scope: !3876)
!3880 = !DILocation(line: 483, column: 32, scope: !3864)
!3881 = !DILocation(line: 483, column: 23, scope: !3864)
!3882 = !DILocation(line: 483, column: 9, scope: !3864)
!3883 = !DILocation(line: 483, column: 2, scope: !3864)
!3884 = !DILocation(line: 484, column: 1, scope: !3864)
!3885 = distinct !DISubprogram(name: "rtree_read", scope: !696, file: !696, line: 432, type: !3886, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3901)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!3888, !174, !3900, !2084, !122}
!3888 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtree_contents_t", file: !696, line: 51, baseType: !3889)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtree_contents_s", file: !696, line: 52, size: 192, elements: !3890)
!3890 = !{!3891, !3892}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "edata", scope: !3889, file: !696, line: 53, baseType: !377, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !3889, file: !696, line: 54, baseType: !3893, size: 96, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtree_metadata_t", file: !696, line: 43, baseType: !3894)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtree_metadata_s", file: !696, line: 44, size: 96, elements: !3895)
!3895 = !{!3896, !3897, !3898, !3899}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "szind", scope: !3894, file: !696, line: 45, baseType: !340, size: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3894, file: !696, line: 46, baseType: !680, size: 32, offset: 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "is_head", scope: !3894, file: !696, line: 47, baseType: !185, size: 8, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "slab", scope: !3894, file: !696, line: 48, baseType: !185, size: 8, offset: 72)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!3901 = !{!3902, !3903, !3904, !3905, !3906}
!3902 = !DILocalVariable(name: "tsdn", arg: 1, scope: !3885, file: !696, line: 432, type: !174)
!3903 = !DILocalVariable(name: "rtree", arg: 2, scope: !3885, file: !696, line: 432, type: !3900)
!3904 = !DILocalVariable(name: "rtree_ctx", arg: 3, scope: !3885, file: !696, line: 432, type: !2084)
!3905 = !DILocalVariable(name: "key", arg: 4, scope: !3885, file: !696, line: 433, type: !122)
!3906 = !DILocalVariable(name: "elm", scope: !3885, file: !696, line: 434, type: !1004)
!3907 = !DILocation(line: 432, column: 20, scope: !3885)
!3908 = !DILocation(line: 432, column: 35, scope: !3885)
!3909 = !DILocation(line: 432, column: 55, scope: !3885)
!3910 = !DILocation(line: 433, column: 15, scope: !3885)
!3911 = !DILocation(line: 434, column: 2, scope: !3885)
!3912 = !DILocation(line: 434, column: 20, scope: !3885)
!3913 = !DILocation(line: 434, column: 48, scope: !3885)
!3914 = !DILocation(line: 434, column: 54, scope: !3885)
!3915 = !DILocation(line: 434, column: 61, scope: !3885)
!3916 = !DILocation(line: 435, column: 6, scope: !3885)
!3917 = !DILocation(line: 434, column: 26, scope: !3885)
!3918 = !DILocation(line: 436, column: 2, scope: !3885)
!3919 = !DILocation(line: 436, column: 2, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3885, file: !696, line: 436, column: 2)
!3921 = !DILocation(line: 437, column: 29, scope: !3885)
!3922 = !DILocation(line: 437, column: 35, scope: !3885)
!3923 = !DILocation(line: 437, column: 42, scope: !3885)
!3924 = !DILocation(line: 437, column: 9, scope: !3885)
!3925 = !DILocation(line: 438, column: 1, scope: !3885)
!3926 = !DISubprogram(name: "rtree_ctx_data_init", scope: !994, file: !994, line: 60, type: !3927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{null, !2084}
!3929 = distinct !DISubprogram(name: "tsd_rtree_ctx", scope: !178, file: !178, line: 469, type: !3930, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3932)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!2084, !970}
!3932 = !{!3933}
!3933 = !DILocalVariable(name: "tsd", arg: 1, scope: !3929, file: !178, line: 469, type: !970)
!3934 = !DILocation(line: 469, column: 22, scope: !3929)
!3935 = !DILocation(line: 470, column: 28, scope: !3929)
!3936 = !DILocation(line: 470, column: 9, scope: !3929)
!3937 = !DILocation(line: 470, column: 2, scope: !3929)
!3938 = distinct !DISubprogram(name: "tsd_rtree_ctxp_get", scope: !178, file: !178, line: 344, type: !3930, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3939)
!3939 = !{!3940, !3941}
!3940 = !DILocalVariable(name: "tsd", arg: 1, scope: !3938, file: !178, line: 344, type: !970)
!3941 = !DILocalVariable(name: "state", scope: !3938, file: !178, line: 344, type: !344)
!3942 = !DILocation(line: 344, column: 1, scope: !3938)
!3943 = !DILocation(line: 344, column: 1, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3938, file: !178, line: 344, column: 1)
!3945 = distinct !DISubprogram(name: "tsd_rtree_ctxp_get_unsafe", scope: !178, file: !178, line: 323, type: !3930, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3946)
!3946 = !{!3947}
!3947 = !DILocalVariable(name: "tsd", arg: 1, scope: !3945, file: !178, line: 323, type: !970)
!3948 = !DILocation(line: 323, column: 1, scope: !3945)
!3949 = distinct !DISubprogram(name: "rtree_leaf_elm_lookup", scope: !696, file: !696, line: 357, type: !3950, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3952)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!1004, !174, !3900, !2084, !122, !185, !185}
!3952 = !{!3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3964, !3965, !3969, !3970, !3972, !3978}
!3953 = !DILocalVariable(name: "tsdn", arg: 1, scope: !3949, file: !696, line: 357, type: !174)
!3954 = !DILocalVariable(name: "rtree", arg: 2, scope: !3949, file: !696, line: 357, type: !3900)
!3955 = !DILocalVariable(name: "rtree_ctx", arg: 3, scope: !3949, file: !696, line: 357, type: !2084)
!3956 = !DILocalVariable(name: "key", arg: 4, scope: !3949, file: !696, line: 358, type: !122)
!3957 = !DILocalVariable(name: "dependent", arg: 5, scope: !3949, file: !696, line: 358, type: !185)
!3958 = !DILocalVariable(name: "init_missing", arg: 6, scope: !3949, file: !696, line: 358, type: !185)
!3959 = !DILocalVariable(name: "slot", scope: !3949, file: !696, line: 362, type: !118)
!3960 = !DILocalVariable(name: "leafkey", scope: !3949, file: !696, line: 363, type: !122)
!3961 = !DILocalVariable(name: "leaf", scope: !3962, file: !696, line: 368, type: !1004)
!3962 = distinct !DILexicalBlock(scope: !3963, file: !696, line: 367, column: 57)
!3963 = distinct !DILexicalBlock(scope: !3949, file: !696, line: 367, column: 6)
!3964 = !DILocalVariable(name: "subkey", scope: !3962, file: !696, line: 370, type: !122)
!3965 = !DILocalVariable(name: "leaf", scope: !3966, file: !696, line: 404, type: !1004)
!3966 = distinct !DILexicalBlock(scope: !3967, file: !696, line: 404, column: 2)
!3967 = distinct !DILexicalBlock(scope: !3968, file: !696, line: 404, column: 2)
!3968 = distinct !DILexicalBlock(scope: !3949, file: !696, line: 404, column: 2)
!3969 = !DILocalVariable(name: "subkey", scope: !3966, file: !696, line: 404, type: !122)
!3970 = !DILocalVariable(name: "i", scope: !3971, file: !696, line: 406, type: !7)
!3971 = distinct !DILexicalBlock(scope: !3949, file: !696, line: 406, column: 2)
!3972 = !DILocalVariable(name: "leaf", scope: !3973, file: !696, line: 407, type: !1004)
!3973 = distinct !DILexicalBlock(scope: !3974, file: !696, line: 407, column: 3)
!3974 = distinct !DILexicalBlock(scope: !3975, file: !696, line: 407, column: 3)
!3975 = distinct !DILexicalBlock(scope: !3976, file: !696, line: 407, column: 3)
!3976 = distinct !DILexicalBlock(scope: !3977, file: !696, line: 406, column: 53)
!3977 = distinct !DILexicalBlock(scope: !3971, file: !696, line: 406, column: 2)
!3978 = !DILocalVariable(name: "subkey", scope: !3973, file: !696, line: 407, type: !122)
!3979 = !DILocation(line: 357, column: 31, scope: !3949)
!3980 = !DILocation(line: 357, column: 46, scope: !3949)
!3981 = !DILocation(line: 357, column: 66, scope: !3949)
!3982 = !DILocation(line: 358, column: 15, scope: !3949)
!3983 = !DILocation(line: 358, column: 25, scope: !3949)
!3984 = !DILocation(line: 358, column: 41, scope: !3949)
!3985 = !DILocation(line: 359, column: 2, scope: !3949)
!3986 = !DILocation(line: 359, column: 2, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3949, file: !696, line: 359, column: 2)
!3988 = !DILocation(line: 360, column: 2, scope: !3949)
!3989 = !DILocation(line: 360, column: 2, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3949, file: !696, line: 360, column: 2)
!3991 = !DILocation(line: 362, column: 2, scope: !3949)
!3992 = !DILocation(line: 362, column: 9, scope: !3949)
!3993 = !DILocation(line: 362, column: 39, scope: !3949)
!3994 = !DILocation(line: 362, column: 16, scope: !3949)
!3995 = !DILocation(line: 363, column: 2, scope: !3949)
!3996 = !DILocation(line: 363, column: 12, scope: !3949)
!3997 = !DILocation(line: 363, column: 36, scope: !3949)
!3998 = !DILocation(line: 363, column: 22, scope: !3949)
!3999 = !DILocation(line: 364, column: 2, scope: !3949)
!4000 = !DILocation(line: 364, column: 2, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3949, file: !696, line: 364, column: 2)
!4002 = !DILocation(line: 367, column: 6, scope: !3963)
!4003 = !{!4004, !1278, i64 0}
!4004 = !{!"rtree_ctx_cache_elm_s", !1278, i64 0, !1272, i64 8}
!4005 = !DILocation(line: 367, column: 6, scope: !3949)
!4006 = !DILocation(line: 368, column: 3, scope: !3962)
!4007 = !DILocation(line: 368, column: 21, scope: !3962)
!4008 = !DILocation(line: 368, column: 28, scope: !3962)
!4009 = !DILocation(line: 368, column: 39, scope: !3962)
!4010 = !DILocation(line: 368, column: 45, scope: !3962)
!4011 = !DILocation(line: 368, column: 51, scope: !3962)
!4012 = !{!4004, !1272, i64 8}
!4013 = !DILocation(line: 369, column: 3, scope: !3962)
!4014 = !DILocation(line: 369, column: 3, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !3962, file: !696, line: 369, column: 3)
!4016 = !DILocation(line: 370, column: 3, scope: !3962)
!4017 = !DILocation(line: 370, column: 13, scope: !3962)
!4018 = !DILocation(line: 370, column: 35, scope: !3962)
!4019 = !DILocation(line: 370, column: 22, scope: !3962)
!4020 = !DILocation(line: 371, column: 11, scope: !3962)
!4021 = !DILocation(line: 371, column: 16, scope: !3962)
!4022 = !DILocation(line: 371, column: 3, scope: !3962)
!4023 = !DILocation(line: 372, column: 2, scope: !3963)
!4024 = !DILocation(line: 404, column: 2, scope: !3949)
!4025 = !DILocation(line: 404, column: 2, scope: !3967)
!4026 = !DILocation(line: 404, column: 2, scope: !3968)
!4027 = !DILocation(line: 404, column: 2, scope: !3966)
!4028 = !DILocation(line: 404, column: 2, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !3966, file: !696, line: 404, column: 2)
!4030 = !DILocation(line: 404, column: 2, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4032, file: !696, line: 404, column: 2)
!4032 = distinct !DILexicalBlock(scope: !3966, file: !696, line: 404, column: 2)
!4033 = !DILocation(line: 406, column: 7, scope: !3971)
!4034 = !DILocation(line: 406, column: 16, scope: !3971)
!4035 = !DILocation(line: 406, column: 23, scope: !3977)
!4036 = !DILocation(line: 406, column: 25, scope: !3977)
!4037 = !DILocation(line: 406, column: 2, scope: !3971)
!4038 = !DILocation(line: 407, column: 3, scope: !3976)
!4039 = !DILocation(line: 407, column: 3, scope: !3974)
!4040 = !DILocation(line: 407, column: 3, scope: !3975)
!4041 = !DILocation(line: 407, column: 3, scope: !3973)
!4042 = !DILocation(line: 407, column: 3, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !3973, file: !696, line: 407, column: 3)
!4044 = !DILocation(line: 407, column: 3, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !3973, file: !696, line: 407, column: 3)
!4046 = !DILocation(line: 407, column: 3, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4045, file: !696, line: 407, column: 3)
!4048 = !DILocation(line: 407, column: 3, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4045, file: !696, line: 407, column: 3)
!4050 = !DILocation(line: 408, column: 2, scope: !3976)
!4051 = !DILocation(line: 406, column: 49, scope: !3977)
!4052 = !DILocation(line: 406, column: 2, scope: !3977)
!4053 = distinct !{!4053, !4037, !4054, !4055}
!4054 = !DILocation(line: 408, column: 2, scope: !3971)
!4055 = !{!"llvm.loop.mustprogress"}
!4056 = !DILocation(line: 411, column: 36, scope: !3949)
!4057 = !DILocation(line: 411, column: 42, scope: !3949)
!4058 = !DILocation(line: 411, column: 49, scope: !3949)
!4059 = !DILocation(line: 411, column: 60, scope: !3949)
!4060 = !DILocation(line: 412, column: 6, scope: !3949)
!4061 = !DILocation(line: 412, column: 17, scope: !3949)
!4062 = !DILocation(line: 411, column: 9, scope: !3949)
!4063 = !DILocation(line: 411, column: 2, scope: !3949)
!4064 = !DILocation(line: 413, column: 1, scope: !3949)
!4065 = distinct !DISubprogram(name: "rtree_leaf_elm_read", scope: !696, file: !696, line: 239, type: !4066, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4068)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!3888, !174, !3900, !1004, !185}
!4068 = !{!4069, !4070, !4071, !4072, !4073, !4074}
!4069 = !DILocalVariable(name: "tsdn", arg: 1, scope: !4065, file: !696, line: 239, type: !174)
!4070 = !DILocalVariable(name: "rtree", arg: 2, scope: !4065, file: !696, line: 239, type: !3900)
!4071 = !DILocalVariable(name: "elm", arg: 3, scope: !4065, file: !696, line: 239, type: !1004)
!4072 = !DILocalVariable(name: "dependent", arg: 4, scope: !4065, file: !696, line: 240, type: !185)
!4073 = !DILocalVariable(name: "bits", scope: !4065, file: !696, line: 242, type: !122)
!4074 = !DILocalVariable(name: "contents", scope: !4065, file: !696, line: 243, type: !3888)
!4075 = !DILocation(line: 239, column: 29, scope: !4065)
!4076 = !DILocation(line: 239, column: 44, scope: !4065)
!4077 = !DILocation(line: 239, column: 69, scope: !4065)
!4078 = !DILocation(line: 240, column: 10, scope: !4065)
!4079 = !DILocation(line: 242, column: 2, scope: !4065)
!4080 = !DILocation(line: 242, column: 12, scope: !4065)
!4081 = !DILocation(line: 242, column: 44, scope: !4065)
!4082 = !DILocation(line: 242, column: 50, scope: !4065)
!4083 = !DILocation(line: 242, column: 57, scope: !4065)
!4084 = !DILocation(line: 242, column: 62, scope: !4065)
!4085 = !DILocation(line: 242, column: 19, scope: !4065)
!4086 = !DILocation(line: 243, column: 19, scope: !4065)
!4087 = !DILocation(line: 243, column: 57, scope: !4065)
!4088 = !DILocation(line: 243, column: 30, scope: !4065)
!4089 = !DILocation(line: 264, column: 1, scope: !4065)
!4090 = distinct !DISubprogram(name: "rtree_cache_direct_map", scope: !696, file: !696, line: 152, type: !4091, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4093)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!118, !122}
!4093 = !{!4094}
!4094 = !DILocalVariable(name: "key", arg: 1, scope: !4090, file: !696, line: 152, type: !122)
!4095 = !DILocation(line: 152, column: 34, scope: !4090)
!4096 = !DILocation(line: 153, column: 19, scope: !4090)
!4097 = !DILocation(line: 153, column: 26, scope: !4090)
!4098 = !DILocation(line: 153, column: 23, scope: !4090)
!4099 = !DILocation(line: 153, column: 49, scope: !4090)
!4100 = !DILocation(line: 153, column: 2, scope: !4090)
!4101 = distinct !DISubprogram(name: "rtree_leafkey", scope: !696, file: !696, line: 146, type: !4102, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4104)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!122, !122}
!4104 = !{!4105, !4106}
!4105 = !DILocalVariable(name: "key", arg: 1, scope: !4101, file: !696, line: 146, type: !122)
!4106 = !DILocalVariable(name: "mask", scope: !4101, file: !696, line: 147, type: !122)
!4107 = !DILocation(line: 146, column: 25, scope: !4101)
!4108 = !DILocation(line: 147, column: 2, scope: !4101)
!4109 = !DILocation(line: 147, column: 12, scope: !4101)
!4110 = !DILocation(line: 147, column: 31, scope: !4101)
!4111 = !DILocation(line: 147, column: 28, scope: !4101)
!4112 = !DILocation(line: 147, column: 54, scope: !4101)
!4113 = !DILocation(line: 147, column: 19, scope: !4101)
!4114 = !DILocation(line: 148, column: 10, scope: !4101)
!4115 = !DILocation(line: 148, column: 16, scope: !4101)
!4116 = !DILocation(line: 148, column: 14, scope: !4101)
!4117 = !DILocation(line: 149, column: 1, scope: !4101)
!4118 = !DILocation(line: 148, column: 2, scope: !4101)
!4119 = distinct !DISubprogram(name: "rtree_subkey", scope: !696, file: !696, line: 158, type: !4120, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4122)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!122, !122, !7}
!4122 = !{!4123, !4124, !4125, !4126, !4127, !4128, !4129}
!4123 = !DILocalVariable(name: "key", arg: 1, scope: !4119, file: !696, line: 158, type: !122)
!4124 = !DILocalVariable(name: "level", arg: 2, scope: !4119, file: !696, line: 158, type: !7)
!4125 = !DILocalVariable(name: "ptrbits", scope: !4119, file: !696, line: 159, type: !7)
!4126 = !DILocalVariable(name: "cumbits", scope: !4119, file: !696, line: 160, type: !7)
!4127 = !DILocalVariable(name: "shiftbits", scope: !4119, file: !696, line: 161, type: !7)
!4128 = !DILocalVariable(name: "maskbits", scope: !4119, file: !696, line: 162, type: !7)
!4129 = !DILocalVariable(name: "mask", scope: !4119, file: !696, line: 163, type: !122)
!4130 = !DILocation(line: 158, column: 24, scope: !4119)
!4131 = !DILocation(line: 158, column: 38, scope: !4119)
!4132 = !DILocation(line: 159, column: 2, scope: !4119)
!4133 = !DILocation(line: 159, column: 11, scope: !4119)
!4134 = !DILocation(line: 160, column: 2, scope: !4119)
!4135 = !DILocation(line: 160, column: 11, scope: !4119)
!4136 = !DILocation(line: 160, column: 34, scope: !4119)
!4137 = !DILocation(line: 160, column: 21, scope: !4119)
!4138 = !DILocation(line: 160, column: 41, scope: !4119)
!4139 = !{!4140, !1535, i64 4}
!4140 = !{!"rtree_level_s", !1535, i64 0, !1535, i64 4}
!4141 = !DILocation(line: 161, column: 2, scope: !4119)
!4142 = !DILocation(line: 161, column: 11, scope: !4119)
!4143 = !DILocation(line: 161, column: 23, scope: !4119)
!4144 = !DILocation(line: 161, column: 33, scope: !4119)
!4145 = !DILocation(line: 161, column: 31, scope: !4119)
!4146 = !DILocation(line: 162, column: 2, scope: !4119)
!4147 = !DILocation(line: 162, column: 11, scope: !4119)
!4148 = !DILocation(line: 162, column: 35, scope: !4119)
!4149 = !DILocation(line: 162, column: 22, scope: !4119)
!4150 = !DILocation(line: 162, column: 42, scope: !4119)
!4151 = !{!4140, !1535, i64 0}
!4152 = !DILocation(line: 163, column: 2, scope: !4119)
!4153 = !DILocation(line: 163, column: 12, scope: !4119)
!4154 = !DILocation(line: 163, column: 29, scope: !4119)
!4155 = !DILocation(line: 163, column: 26, scope: !4119)
!4156 = !DILocation(line: 163, column: 39, scope: !4119)
!4157 = !DILocation(line: 164, column: 11, scope: !4119)
!4158 = !DILocation(line: 164, column: 18, scope: !4119)
!4159 = !DILocation(line: 164, column: 15, scope: !4119)
!4160 = !DILocation(line: 164, column: 31, scope: !4119)
!4161 = !DILocation(line: 164, column: 29, scope: !4119)
!4162 = !DILocation(line: 165, column: 1, scope: !4119)
!4163 = !DILocation(line: 164, column: 2, scope: !4119)
!4164 = !DISubprogram(name: "rtree_leaf_elm_lookup_hard", scope: !696, file: !696, line: 134, type: !3950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4165 = distinct !DISubprogram(name: "rtree_leaf_maskbits", scope: !696, file: !696, line: 138, type: !3107, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4166)
!4166 = !{!4167, !4168}
!4167 = !DILocalVariable(name: "ptrbits", scope: !4165, file: !696, line: 139, type: !7)
!4168 = !DILocalVariable(name: "cumbits", scope: !4165, file: !696, line: 140, type: !7)
!4169 = !DILocation(line: 139, column: 2, scope: !4165)
!4170 = !DILocation(line: 139, column: 11, scope: !4165)
!4171 = !DILocation(line: 140, column: 2, scope: !4165)
!4172 = !DILocation(line: 140, column: 11, scope: !4165)
!4173 = !DILocation(line: 142, column: 9, scope: !4165)
!4174 = !DILocation(line: 142, column: 19, scope: !4165)
!4175 = !DILocation(line: 142, column: 17, scope: !4165)
!4176 = !DILocation(line: 143, column: 1, scope: !4165)
!4177 = !DILocation(line: 142, column: 2, scope: !4165)
!4178 = distinct !DISubprogram(name: "rtree_leaf_elm_bits_read", scope: !696, file: !696, line: 180, type: !4179, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4181)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!122, !174, !3900, !1004, !185}
!4181 = !{!4182, !4183, !4184, !4185}
!4182 = !DILocalVariable(name: "tsdn", arg: 1, scope: !4178, file: !696, line: 180, type: !174)
!4183 = !DILocalVariable(name: "rtree", arg: 2, scope: !4178, file: !696, line: 180, type: !3900)
!4184 = !DILocalVariable(name: "elm", arg: 3, scope: !4178, file: !696, line: 181, type: !1004)
!4185 = !DILocalVariable(name: "dependent", arg: 4, scope: !4178, file: !696, line: 181, type: !185)
!4186 = !DILocation(line: 180, column: 34, scope: !4178)
!4187 = !DILocation(line: 180, column: 49, scope: !4178)
!4188 = !DILocation(line: 181, column: 23, scope: !4178)
!4189 = !DILocation(line: 181, column: 33, scope: !4178)
!4190 = !DILocation(line: 182, column: 35, scope: !4178)
!4191 = !DILocation(line: 182, column: 40, scope: !4178)
!4192 = !DILocation(line: 182, column: 49, scope: !4178)
!4193 = !DILocation(line: 182, column: 20, scope: !4178)
!4194 = !DILocation(line: 182, column: 9, scope: !4178)
!4195 = !DILocation(line: 182, column: 2, scope: !4178)
!4196 = distinct !DISubprogram(name: "rtree_leaf_elm_bits_decode", scope: !696, file: !696, line: 205, type: !4197, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4199)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!3888, !122}
!4199 = !{!4200, !4201, !4202, !4203}
!4200 = !DILocalVariable(name: "bits", arg: 1, scope: !4196, file: !696, line: 205, type: !122)
!4201 = !DILocalVariable(name: "contents", scope: !4196, file: !696, line: 206, type: !3888)
!4202 = !DILocalVariable(name: "state_bits", scope: !4196, file: !696, line: 212, type: !122)
!4203 = !DILocalVariable(name: "low_bit_mask", scope: !4196, file: !696, line: 217, type: !122)
!4204 = !DILocation(line: 205, column: 38, scope: !4196)
!4205 = !DILocation(line: 206, column: 19, scope: !4196)
!4206 = !DILocation(line: 208, column: 28, scope: !4196)
!4207 = !DILocation(line: 208, column: 33, scope: !4196)
!4208 = !DILocation(line: 208, column: 11, scope: !4196)
!4209 = !DILocation(line: 208, column: 20, scope: !4196)
!4210 = !DILocation(line: 208, column: 26, scope: !4196)
!4211 = !{!2098, !1535, i64 8}
!4212 = !DILocation(line: 209, column: 34, scope: !4196)
!4213 = !DILocation(line: 209, column: 39, scope: !4196)
!4214 = !DILocation(line: 209, column: 27, scope: !4196)
!4215 = !DILocation(line: 209, column: 11, scope: !4196)
!4216 = !DILocation(line: 209, column: 20, scope: !4196)
!4217 = !DILocation(line: 209, column: 25, scope: !4196)
!4218 = !{!2098, !1281, i64 17}
!4219 = !DILocation(line: 210, column: 37, scope: !4196)
!4220 = !DILocation(line: 210, column: 42, scope: !4196)
!4221 = !DILocation(line: 210, column: 30, scope: !4196)
!4222 = !DILocation(line: 210, column: 11, scope: !4196)
!4223 = !DILocation(line: 210, column: 20, scope: !4196)
!4224 = !DILocation(line: 210, column: 28, scope: !4196)
!4225 = !{!2098, !1281, i64 16}
!4226 = !DILocation(line: 212, column: 2, scope: !4196)
!4227 = !DILocation(line: 212, column: 12, scope: !4196)
!4228 = !DILocation(line: 212, column: 26, scope: !4196)
!4229 = !DILocation(line: 212, column: 31, scope: !4196)
!4230 = !DILocation(line: 212, column: 56, scope: !4196)
!4231 = !DILocation(line: 214, column: 2, scope: !4196)
!4232 = !DILocation(line: 214, column: 2, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4196, file: !696, line: 214, column: 2)
!4234 = !DILocation(line: 215, column: 44, scope: !4196)
!4235 = !DILocation(line: 215, column: 28, scope: !4196)
!4236 = !DILocation(line: 215, column: 11, scope: !4196)
!4237 = !DILocation(line: 215, column: 20, scope: !4196)
!4238 = !DILocation(line: 215, column: 26, scope: !4196)
!4239 = !{!2098, !1273, i64 12}
!4240 = !DILocation(line: 217, column: 2, scope: !4196)
!4241 = !DILocation(line: 217, column: 12, scope: !4196)
!4242 = !DILocation(line: 229, column: 54, scope: !4196)
!4243 = !DILocation(line: 229, column: 59, scope: !4196)
!4244 = !DILocation(line: 230, column: 6, scope: !4196)
!4245 = !DILocation(line: 230, column: 23, scope: !4196)
!4246 = !DILocation(line: 230, column: 21, scope: !4196)
!4247 = !DILocation(line: 229, column: 19, scope: !4196)
!4248 = !DILocation(line: 229, column: 11, scope: !4196)
!4249 = !DILocation(line: 229, column: 17, scope: !4196)
!4250 = !DILocation(line: 232, column: 2, scope: !4196)
!4251 = !DILocation(line: 232, column: 2, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4196, file: !696, line: 232, column: 2)
!4253 = !DILocation(line: 234, column: 1, scope: !4196)
!4254 = distinct !DISubprogram(name: "witness_assert_depth_to_rank", scope: !6, file: !6, line: 266, type: !4255, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4257)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{null, !1194, !1041, !7}
!4257 = !{!4258, !4259, !4260}
!4258 = !DILocalVariable(name: "witness_tsdn", arg: 1, scope: !4254, file: !6, line: 266, type: !1194)
!4259 = !DILocalVariable(name: "rank_inclusive", arg: 2, scope: !4254, file: !6, line: 267, type: !1041)
!4260 = !DILocalVariable(name: "depth", arg: 3, scope: !4254, file: !6, line: 267, type: !7)
!4261 = !DILocation(line: 266, column: 46, scope: !4254)
!4262 = !DILocation(line: 267, column: 20, scope: !4254)
!4263 = !DILocation(line: 267, column: 45, scope: !4254)
!4264 = !DILocation(line: 269, column: 3, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4266, file: !6, line: 268, column: 56)
!4266 = distinct !DILexicalBlock(scope: !4254, file: !6, line: 268, column: 6)
!4267 = distinct !DISubprogram(name: "arena_sdalloc", scope: !1462, file: !1462, line: 379, type: !2147, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4268)
!4268 = !{!4269, !4270, !4271, !4272, !4273, !4274, !4275}
!4269 = !DILocalVariable(name: "tsdn", arg: 1, scope: !4267, file: !1462, line: 379, type: !174)
!4270 = !DILocalVariable(name: "ptr", arg: 2, scope: !4267, file: !1462, line: 379, type: !121)
!4271 = !DILocalVariable(name: "size", arg: 3, scope: !4267, file: !1462, line: 379, type: !118)
!4272 = !DILocalVariable(name: "tcache", arg: 4, scope: !4267, file: !1462, line: 379, type: !354)
!4273 = !DILocalVariable(name: "caller_alloc_ctx", arg: 5, scope: !4267, file: !1462, line: 380, type: !2149)
!4274 = !DILocalVariable(name: "slow_path", arg: 6, scope: !4267, file: !1462, line: 380, type: !185)
!4275 = !DILocalVariable(name: "alloc_ctx", scope: !4267, file: !1462, line: 390, type: !2150)
!4276 = !DILocation(line: 379, column: 23, scope: !4267)
!4277 = !DILocation(line: 379, column: 35, scope: !4267)
!4278 = !DILocation(line: 379, column: 47, scope: !4267)
!4279 = !DILocation(line: 379, column: 63, scope: !4267)
!4280 = !DILocation(line: 380, column: 23, scope: !4267)
!4281 = !DILocation(line: 380, column: 46, scope: !4267)
!4282 = !DILocation(line: 381, column: 2, scope: !4267)
!4283 = !DILocation(line: 381, column: 2, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4267, file: !1462, line: 381, column: 2)
!4285 = !DILocation(line: 382, column: 2, scope: !4267)
!4286 = !DILocation(line: 382, column: 2, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4267, file: !1462, line: 382, column: 2)
!4288 = !DILocation(line: 383, column: 2, scope: !4267)
!4289 = !DILocation(line: 383, column: 2, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4267, file: !1462, line: 383, column: 2)
!4291 = !DILocation(line: 385, column: 6, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4267, file: !1462, line: 385, column: 6)
!4293 = !DILocation(line: 385, column: 6, scope: !4267)
!4294 = !DILocation(line: 386, column: 27, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4292, file: !1462, line: 385, column: 32)
!4296 = !DILocation(line: 386, column: 33, scope: !4295)
!4297 = !DILocation(line: 386, column: 38, scope: !4295)
!4298 = !DILocation(line: 386, column: 3, scope: !4295)
!4299 = !DILocation(line: 387, column: 3, scope: !4295)
!4300 = !DILocation(line: 390, column: 2, scope: !4267)
!4301 = !DILocation(line: 390, column: 19, scope: !4267)
!4302 = !DILocation(line: 405, column: 35, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4304, file: !1462, line: 400, column: 9)
!4304 = distinct !DILexicalBlock(scope: !4267, file: !1462, line: 391, column: 6)
!4305 = !DILocation(line: 405, column: 21, scope: !4303)
!4306 = !DILocation(line: 405, column: 13, scope: !4303)
!4307 = !DILocation(line: 405, column: 19, scope: !4303)
!4308 = !{!4309, !1535, i64 0}
!4309 = !{!"emap_alloc_ctx_t", !1535, i64 0, !1281, i64 4}
!4310 = !DILocation(line: 406, column: 31, scope: !4303)
!4311 = !DILocation(line: 406, column: 21, scope: !4303)
!4312 = !DILocation(line: 406, column: 37, scope: !4303)
!4313 = !DILocation(line: 406, column: 13, scope: !4303)
!4314 = !DILocation(line: 406, column: 18, scope: !4303)
!4315 = !{!4309, !1281, i64 4}
!4316 = !DILocation(line: 416, column: 6, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4267, file: !1462, line: 416, column: 6)
!4318 = !DILocation(line: 416, column: 6, scope: !4267)
!4319 = !DILocation(line: 418, column: 32, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4317, file: !1462, line: 416, column: 30)
!4321 = !DILocation(line: 418, column: 23, scope: !4320)
!4322 = !DILocation(line: 418, column: 39, scope: !4320)
!4323 = !DILocation(line: 418, column: 47, scope: !4320)
!4324 = !DILocation(line: 419, column: 17, scope: !4320)
!4325 = !DILocation(line: 419, column: 24, scope: !4320)
!4326 = !DILocation(line: 418, column: 3, scope: !4320)
!4327 = !DILocation(line: 420, column: 2, scope: !4320)
!4328 = !DILocation(line: 421, column: 22, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4317, file: !1462, line: 420, column: 9)
!4330 = !DILocation(line: 421, column: 28, scope: !4329)
!4331 = !DILocation(line: 421, column: 33, scope: !4329)
!4332 = !DILocation(line: 421, column: 51, scope: !4329)
!4333 = !DILocation(line: 422, column: 7, scope: !4329)
!4334 = !DILocation(line: 421, column: 3, scope: !4329)
!4335 = !DILocation(line: 424, column: 1, scope: !4267)
!4336 = distinct !DISubprogram(name: "arena_sdalloc_no_tcache", scope: !1462, file: !1462, line: 340, type: !4337, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4339)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{null, !174, !121, !118}
!4339 = !{!4340, !4341, !4342, !4343}
!4340 = !DILocalVariable(name: "tsdn", arg: 1, scope: !4336, file: !1462, line: 340, type: !174)
!4341 = !DILocalVariable(name: "ptr", arg: 2, scope: !4336, file: !1462, line: 340, type: !121)
!4342 = !DILocalVariable(name: "size", arg: 3, scope: !4336, file: !1462, line: 340, type: !118)
!4343 = !DILocalVariable(name: "alloc_ctx", scope: !4336, file: !1462, line: 344, type: !2150)
!4344 = !DILocation(line: 340, column: 33, scope: !4336)
!4345 = !DILocation(line: 340, column: 45, scope: !4336)
!4346 = !DILocation(line: 340, column: 57, scope: !4336)
!4347 = !DILocation(line: 341, column: 2, scope: !4336)
!4348 = !DILocation(line: 341, column: 2, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4336, file: !1462, line: 341, column: 2)
!4350 = !DILocation(line: 342, column: 2, scope: !4336)
!4351 = !DILocation(line: 342, column: 2, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4336, file: !1462, line: 342, column: 2)
!4353 = !DILocation(line: 344, column: 2, scope: !4336)
!4354 = !DILocation(line: 344, column: 19, scope: !4336)
!4355 = !DILocation(line: 350, column: 35, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !1462, line: 345, column: 33)
!4357 = distinct !DILexicalBlock(scope: !4336, file: !1462, line: 345, column: 6)
!4358 = !DILocation(line: 350, column: 21, scope: !4356)
!4359 = !DILocation(line: 350, column: 13, scope: !4356)
!4360 = !DILocation(line: 350, column: 19, scope: !4356)
!4361 = !DILocation(line: 351, column: 31, scope: !4356)
!4362 = !DILocation(line: 351, column: 21, scope: !4356)
!4363 = !DILocation(line: 351, column: 37, scope: !4356)
!4364 = !DILocation(line: 351, column: 13, scope: !4356)
!4365 = !DILocation(line: 351, column: 18, scope: !4356)
!4366 = !DILocation(line: 370, column: 6, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4336, file: !1462, line: 370, column: 6)
!4368 = !DILocation(line: 370, column: 6, scope: !4336)
!4369 = !DILocation(line: 372, column: 22, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4367, file: !1462, line: 370, column: 30)
!4371 = !DILocation(line: 372, column: 28, scope: !4370)
!4372 = !DILocation(line: 372, column: 3, scope: !4370)
!4373 = !DILocation(line: 373, column: 2, scope: !4370)
!4374 = !DILocation(line: 374, column: 32, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4367, file: !1462, line: 373, column: 9)
!4376 = !DILocation(line: 374, column: 38, scope: !4375)
!4377 = !DILocation(line: 374, column: 53, scope: !4375)
!4378 = !DILocation(line: 374, column: 3, scope: !4375)
!4379 = !DILocation(line: 376, column: 1, scope: !4336)
!4380 = distinct !DISubprogram(name: "tcache_dalloc_small", scope: !4381, file: !4381, line: 129, type: !4382, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4384)
!4381 = !DIFile(filename: "include/jemalloc/internal/tcache_inlines.h", directory: "/local-ssd/jemalloc-jgelsfk4zpnuevzavzyyfzw3pop64gjj-build/aidengro/spack-stage-jemalloc-5.3.0-jgelsfk4zpnuevzavzyyfzw3pop64gjj/spack-src", checksumkind: CSK_MD5, checksum: "db95d0b928eeede9956e89c26c59c0b5")
!4382 = !DISubroutineType(types: !4383)
!4383 = !{null, !970, !354, !121, !340, !185}
!4384 = !{!4385, !4386, !4387, !4388, !4389, !4390, !4391, !4395, !4396}
!4385 = !DILocalVariable(name: "tsd", arg: 1, scope: !4380, file: !4381, line: 129, type: !970)
!4386 = !DILocalVariable(name: "tcache", arg: 2, scope: !4380, file: !4381, line: 129, type: !354)
!4387 = !DILocalVariable(name: "ptr", arg: 3, scope: !4380, file: !4381, line: 129, type: !121)
!4388 = !DILocalVariable(name: "binind", arg: 4, scope: !4380, file: !4381, line: 129, type: !340)
!4389 = !DILocalVariable(name: "slow_path", arg: 5, scope: !4380, file: !4381, line: 130, type: !185)
!4390 = !DILocalVariable(name: "bin", scope: !4380, file: !4381, line: 133, type: !321)
!4391 = !DILocalVariable(name: "max", scope: !4392, file: !4381, line: 154, type: !4394)
!4392 = distinct !DILexicalBlock(scope: !4393, file: !4381, line: 149, column: 50)
!4393 = distinct !DILexicalBlock(scope: !4380, file: !4381, line: 149, column: 6)
!4394 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_bin_sz_t", file: !311, line: 21, baseType: !333)
!4395 = !DILocalVariable(name: "remain", scope: !4392, file: !4381, line: 156, type: !7)
!4396 = !DILocalVariable(name: "ret", scope: !4392, file: !4381, line: 158, type: !185)
!4397 = !DILocation(line: 129, column: 28, scope: !4380)
!4398 = !DILocation(line: 129, column: 43, scope: !4380)
!4399 = !DILocation(line: 129, column: 57, scope: !4380)
!4400 = !DILocation(line: 129, column: 70, scope: !4380)
!4401 = !DILocation(line: 130, column: 10, scope: !4380)
!4402 = !DILocation(line: 131, column: 2, scope: !4380)
!4403 = !DILocation(line: 131, column: 2, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4380, file: !4381, line: 131, column: 2)
!4405 = !DILocation(line: 133, column: 2, scope: !4380)
!4406 = !DILocation(line: 133, column: 15, scope: !4380)
!4407 = !DILocation(line: 133, column: 22, scope: !4380)
!4408 = !DILocation(line: 133, column: 30, scope: !4380)
!4409 = !DILocation(line: 133, column: 35, scope: !4380)
!4410 = !DILocation(line: 139, column: 32, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4380, file: !4381, line: 139, column: 6)
!4412 = !DILocation(line: 139, column: 6, scope: !4411)
!4413 = !DILocation(line: 139, column: 6, scope: !4380)
!4414 = !DILocation(line: 141, column: 16, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4411, file: !4381, line: 139, column: 38)
!4416 = !DILocation(line: 141, column: 35, scope: !4415)
!4417 = !DILocation(line: 141, column: 21, scope: !4415)
!4418 = !DILocation(line: 141, column: 3, scope: !4415)
!4419 = !DILocation(line: 142, column: 23, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4415, file: !4381, line: 142, column: 7)
!4421 = !DILocation(line: 142, column: 28, scope: !4420)
!4422 = !DILocation(line: 142, column: 7, scope: !4420)
!4423 = !DILocation(line: 142, column: 7, scope: !4415)
!4424 = !DILocation(line: 143, column: 4, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4420, file: !4381, line: 142, column: 34)
!4426 = !DILocation(line: 145, column: 3, scope: !4415)
!4427 = !DILocation(line: 145, column: 3, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4415, file: !4381, line: 145, column: 3)
!4429 = !DILocation(line: 147, column: 2, scope: !4415)
!4430 = !DILocation(line: 149, column: 6, scope: !4393)
!4431 = !DILocation(line: 149, column: 6, scope: !4380)
!4432 = !DILocation(line: 150, column: 7, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4392, file: !4381, line: 150, column: 7)
!4434 = !DILocation(line: 150, column: 7, scope: !4392)
!4435 = !DILocation(line: 151, column: 32, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4433, file: !4381, line: 150, column: 57)
!4437 = !DILocation(line: 151, column: 23, scope: !4436)
!4438 = !DILocation(line: 151, column: 38, scope: !4436)
!4439 = !DILocation(line: 151, column: 4, scope: !4436)
!4440 = !DILocation(line: 152, column: 4, scope: !4436)
!4441 = !DILocation(line: 154, column: 3, scope: !4392)
!4442 = !DILocation(line: 154, column: 18, scope: !4392)
!4443 = !DILocation(line: 155, column: 8, scope: !4392)
!4444 = !DILocation(line: 155, column: 24, scope: !4392)
!4445 = !DILocation(line: 154, column: 24, scope: !4392)
!4446 = !{!4447, !4447, i64 0}
!4447 = !{!"short", !1273, i64 0}
!4448 = !DILocation(line: 156, column: 3, scope: !4392)
!4449 = !DILocation(line: 156, column: 12, scope: !4392)
!4450 = !DILocation(line: 156, column: 21, scope: !4392)
!4451 = !DILocation(line: 156, column: 28, scope: !4392)
!4452 = !DILocation(line: 156, column: 25, scope: !4392)
!4453 = !DILocation(line: 157, column: 26, scope: !4392)
!4454 = !DILocation(line: 157, column: 31, scope: !4392)
!4455 = !DILocation(line: 157, column: 39, scope: !4392)
!4456 = !DILocation(line: 157, column: 44, scope: !4392)
!4457 = !DILocation(line: 157, column: 52, scope: !4392)
!4458 = !DILocation(line: 157, column: 3, scope: !4392)
!4459 = !DILocation(line: 158, column: 3, scope: !4392)
!4460 = !DILocation(line: 158, column: 8, scope: !4392)
!4461 = !DILocation(line: 158, column: 36, scope: !4392)
!4462 = !DILocation(line: 158, column: 41, scope: !4392)
!4463 = !DILocation(line: 158, column: 14, scope: !4392)
!4464 = !DILocation(line: 159, column: 3, scope: !4392)
!4465 = !DILocation(line: 159, column: 3, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4392, file: !4381, line: 159, column: 3)
!4467 = !DILocation(line: 160, column: 2, scope: !4393)
!4468 = !DILocation(line: 160, column: 2, scope: !4392)
!4469 = !DILocation(line: 161, column: 1, scope: !4380)
!4470 = distinct !DISubprogram(name: "arena_dalloc_large", scope: !1462, file: !1462, line: 281, type: !4471, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4473)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{null, !174, !121, !354, !340, !185}
!4473 = !{!4474, !4475, !4476, !4477, !4478, !4479}
!4474 = !DILocalVariable(name: "tsdn", arg: 1, scope: !4470, file: !1462, line: 281, type: !174)
!4475 = !DILocalVariable(name: "ptr", arg: 2, scope: !4470, file: !1462, line: 281, type: !121)
!4476 = !DILocalVariable(name: "tcache", arg: 3, scope: !4470, file: !1462, line: 281, type: !354)
!4477 = !DILocalVariable(name: "szind", arg: 4, scope: !4470, file: !1462, line: 281, type: !340)
!4478 = !DILocalVariable(name: "slow_path", arg: 5, scope: !4470, file: !1462, line: 282, type: !185)
!4479 = !DILocalVariable(name: "edata", scope: !4480, file: !1462, line: 291, type: !377)
!4480 = distinct !DILexicalBlock(scope: !4481, file: !1462, line: 290, column: 9)
!4481 = distinct !DILexicalBlock(scope: !4470, file: !1462, line: 283, column: 6)
!4482 = !DILocation(line: 281, column: 28, scope: !4470)
!4483 = !DILocation(line: 281, column: 40, scope: !4470)
!4484 = !DILocation(line: 281, column: 55, scope: !4470)
!4485 = !DILocation(line: 281, column: 71, scope: !4470)
!4486 = !DILocation(line: 282, column: 10, scope: !4470)
!4487 = !DILocation(line: 283, column: 6, scope: !4481)
!4488 = !DILocation(line: 283, column: 14, scope: !4481)
!4489 = !DILocation(line: 283, column: 12, scope: !4481)
!4490 = !DILocation(line: 283, column: 6, scope: !4470)
!4491 = !DILocation(line: 287, column: 33, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4493, file: !1462, line: 286, column: 10)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !1462, line: 284, column: 7)
!4494 = distinct !DILexicalBlock(scope: !4481, file: !1462, line: 283, column: 22)
!4495 = !DILocation(line: 287, column: 24, scope: !4492)
!4496 = !DILocation(line: 287, column: 40, scope: !4492)
!4497 = !DILocation(line: 287, column: 48, scope: !4492)
!4498 = !DILocation(line: 287, column: 53, scope: !4492)
!4499 = !DILocation(line: 288, column: 8, scope: !4492)
!4500 = !DILocation(line: 287, column: 4, scope: !4492)
!4501 = !DILocation(line: 290, column: 2, scope: !4494)
!4502 = !DILocation(line: 291, column: 3, scope: !4480)
!4503 = !DILocation(line: 291, column: 12, scope: !4480)
!4504 = !DILocation(line: 291, column: 38, scope: !4480)
!4505 = !DILocation(line: 292, column: 7, scope: !4480)
!4506 = !DILocation(line: 291, column: 20, scope: !4480)
!4507 = !DILocation(line: 293, column: 34, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4480, file: !1462, line: 293, column: 7)
!4509 = !DILocation(line: 293, column: 41, scope: !4508)
!4510 = !DILocation(line: 293, column: 46, scope: !4508)
!4511 = !DILocation(line: 293, column: 7, scope: !4508)
!4512 = !DILocation(line: 293, column: 7, scope: !4480)
!4513 = !DILocation(line: 295, column: 4, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4508, file: !1462, line: 293, column: 54)
!4515 = !DILocation(line: 297, column: 16, scope: !4480)
!4516 = !DILocation(line: 297, column: 22, scope: !4480)
!4517 = !DILocation(line: 297, column: 3, scope: !4480)
!4518 = !DILocation(line: 298, column: 2, scope: !4481)
!4519 = !DILocation(line: 299, column: 1, scope: !4470)
!4520 = !DISubprogram(name: "arena_dalloc_small", scope: !1518, file: !1518, line: 80, type: !4521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{null, !174, !121}
!4523 = distinct !DISubprogram(name: "arena_dalloc_large_no_tcache", scope: !1462, file: !1462, line: 243, type: !4524, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4526)
!4524 = !DISubroutineType(types: !4525)
!4525 = !{null, !174, !121, !340}
!4526 = !{!4527, !4528, !4529, !4530}
!4527 = !DILocalVariable(name: "tsdn", arg: 1, scope: !4523, file: !1462, line: 243, type: !174)
!4528 = !DILocalVariable(name: "ptr", arg: 2, scope: !4523, file: !1462, line: 243, type: !121)
!4529 = !DILocalVariable(name: "szind", arg: 3, scope: !4523, file: !1462, line: 243, type: !340)
!4530 = !DILocalVariable(name: "edata", scope: !4531, file: !1462, line: 247, type: !377)
!4531 = distinct !DILexicalBlock(scope: !4532, file: !1462, line: 246, column: 9)
!4532 = distinct !DILexicalBlock(scope: !4523, file: !1462, line: 244, column: 6)
!4533 = !DILocation(line: 243, column: 38, scope: !4523)
!4534 = !DILocation(line: 243, column: 50, scope: !4523)
!4535 = !DILocation(line: 243, column: 63, scope: !4523)
!4536 = !DILocation(line: 247, column: 3, scope: !4531)
!4537 = !DILocation(line: 247, column: 12, scope: !4531)
!4538 = !DILocation(line: 247, column: 38, scope: !4531)
!4539 = !DILocation(line: 248, column: 7, scope: !4531)
!4540 = !DILocation(line: 247, column: 20, scope: !4531)
!4541 = !DILocation(line: 249, column: 34, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4531, file: !1462, line: 249, column: 7)
!4543 = !DILocation(line: 249, column: 41, scope: !4542)
!4544 = !DILocation(line: 249, column: 46, scope: !4542)
!4545 = !DILocation(line: 249, column: 7, scope: !4542)
!4546 = !DILocation(line: 249, column: 7, scope: !4531)
!4547 = !DILocation(line: 251, column: 4, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4542, file: !1462, line: 249, column: 54)
!4549 = !DILocation(line: 253, column: 16, scope: !4531)
!4550 = !DILocation(line: 253, column: 22, scope: !4531)
!4551 = !DILocation(line: 253, column: 3, scope: !4531)
!4552 = !DILocation(line: 254, column: 2, scope: !4532)
!4553 = !DILocation(line: 255, column: 1, scope: !4523)
!4554 = distinct !DISubprogram(name: "large_dalloc_safety_checks", scope: !1462, file: !1462, line: 214, type: !4555, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4557)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!185, !377, !121, !340}
!4557 = !{!4558, !4559, !4560}
!4558 = !DILocalVariable(name: "edata", arg: 1, scope: !4554, file: !1462, line: 214, type: !377)
!4559 = !DILocalVariable(name: "ptr", arg: 2, scope: !4554, file: !1462, line: 214, type: !121)
!4560 = !DILocalVariable(name: "szind", arg: 3, scope: !4554, file: !1462, line: 214, type: !340)
!4561 = !DILocation(line: 214, column: 37, scope: !4554)
!4562 = !DILocation(line: 214, column: 50, scope: !4554)
!4563 = !DILocation(line: 214, column: 63, scope: !4554)
!4564 = !DILocation(line: 216, column: 3, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4566, file: !1462, line: 215, column: 33)
!4566 = distinct !DILexicalBlock(scope: !4554, file: !1462, line: 215, column: 6)
!4567 = distinct !DISubprogram(name: "cache_bin_nonfast_aligned", scope: !311, file: !311, line: 152, type: !4568, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4570)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!185, !1117}
!4570 = !{!4571}
!4571 = !DILocalVariable(name: "ptr", arg: 1, scope: !4567, file: !311, line: 152, type: !1117)
!4572 = !DILocation(line: 152, column: 39, scope: !4567)
!4573 = !DILocation(line: 154, column: 3, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4575, file: !311, line: 153, column: 29)
!4575 = distinct !DILexicalBlock(scope: !4567, file: !311, line: 153, column: 6)
!4576 = distinct !DISubprogram(name: "san_junk_ptr", scope: !1248, file: !1248, line: 167, type: !573, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4577)
!4577 = !{!4578, !4579, !4580, !4581, !4582}
!4578 = !DILocalVariable(name: "ptr", arg: 1, scope: !4576, file: !1248, line: 167, type: !121)
!4579 = !DILocalVariable(name: "usize", arg: 2, scope: !4576, file: !1248, line: 167, type: !118)
!4580 = !DILocalVariable(name: "first", scope: !4576, file: !1248, line: 173, type: !121)
!4581 = !DILocalVariable(name: "mid", scope: !4576, file: !1248, line: 173, type: !121)
!4582 = !DILocalVariable(name: "last", scope: !4576, file: !1248, line: 173, type: !121)
!4583 = !DILocation(line: 167, column: 20, scope: !4576)
!4584 = !DILocation(line: 167, column: 32, scope: !4576)
!4585 = !DILocation(line: 168, column: 6, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4576, file: !1248, line: 168, column: 6)
!4587 = !DILocation(line: 168, column: 6, scope: !4576)
!4588 = !DILocation(line: 169, column: 10, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4586, file: !1248, line: 168, column: 34)
!4590 = !DILocation(line: 169, column: 38, scope: !4589)
!4591 = !DILocation(line: 169, column: 3, scope: !4589)
!4592 = !DILocation(line: 170, column: 3, scope: !4589)
!4593 = !DILocation(line: 173, column: 2, scope: !4576)
!4594 = !DILocation(line: 173, column: 8, scope: !4576)
!4595 = !DILocation(line: 173, column: 16, scope: !4576)
!4596 = !DILocation(line: 173, column: 22, scope: !4576)
!4597 = !DILocation(line: 174, column: 25, scope: !4576)
!4598 = !DILocation(line: 174, column: 30, scope: !4576)
!4599 = !DILocation(line: 174, column: 2, scope: !4576)
!4600 = !DILocation(line: 175, column: 16, scope: !4576)
!4601 = !DILocation(line: 175, column: 22, scope: !4576)
!4602 = !DILocation(line: 176, column: 16, scope: !4576)
!4603 = !DILocation(line: 176, column: 20, scope: !4576)
!4604 = !DILocation(line: 177, column: 16, scope: !4576)
!4605 = !DILocation(line: 177, column: 21, scope: !4576)
!4606 = !DILocation(line: 178, column: 1, scope: !4576)
!4607 = distinct !DISubprogram(name: "cache_bin_stash", scope: !311, file: !311, line: 449, type: !4608, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4610)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!185, !321, !121}
!4610 = !{!4611, !4612, !4613, !4614}
!4611 = !DILocalVariable(name: "bin", arg: 1, scope: !4607, file: !311, line: 449, type: !321)
!4612 = !DILocalVariable(name: "ptr", arg: 2, scope: !4607, file: !311, line: 449, type: !121)
!4613 = !DILocalVariable(name: "low_bits_head", scope: !4607, file: !311, line: 455, type: !333)
!4614 = !DILocalVariable(name: "diff", scope: !4607, file: !311, line: 457, type: !333)
!4615 = !DILocation(line: 449, column: 30, scope: !4607)
!4616 = !DILocation(line: 449, column: 41, scope: !4607)
!4617 = !DILocation(line: 450, column: 21, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4607, file: !311, line: 450, column: 6)
!4619 = !DILocation(line: 450, column: 6, scope: !4618)
!4620 = !DILocation(line: 450, column: 6, scope: !4607)
!4621 = !DILocation(line: 451, column: 3, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4618, file: !311, line: 450, column: 27)
!4623 = !DILocation(line: 455, column: 2, scope: !4607)
!4624 = !DILocation(line: 455, column: 11, scope: !4607)
!4625 = !DILocation(line: 455, column: 48, scope: !4607)
!4626 = !DILocation(line: 455, column: 53, scope: !4607)
!4627 = !{!4628, !1272, i64 0}
!4628 = !{!"cache_bin_s", !1272, i64 0, !4629, i64 8, !4447, i64 16, !4447, i64 18, !4447, i64 20}
!4629 = !{!"cache_bin_stats_s", !1278, i64 0}
!4630 = !DILocation(line: 455, column: 37, scope: !4607)
!4631 = !DILocation(line: 455, column: 27, scope: !4607)
!4632 = !DILocation(line: 457, column: 2, scope: !4607)
!4633 = !DILocation(line: 457, column: 11, scope: !4607)
!4634 = !DILocation(line: 457, column: 33, scope: !4607)
!4635 = !DILocation(line: 457, column: 38, scope: !4607)
!4636 = !DILocation(line: 457, column: 43, scope: !4607)
!4637 = !{!4628, !4447, i64 18}
!4638 = !DILocation(line: 457, column: 58, scope: !4607)
!4639 = !DILocation(line: 457, column: 18, scope: !4607)
!4640 = !DILocation(line: 459, column: 50, scope: !4607)
!4641 = !DILocation(line: 459, column: 24, scope: !4607)
!4642 = !DILocation(line: 459, column: 29, scope: !4607)
!4643 = !DILocation(line: 459, column: 13, scope: !4607)
!4644 = !DILocation(line: 459, column: 42, scope: !4607)
!4645 = !DILocation(line: 459, column: 40, scope: !4607)
!4646 = !DILocation(line: 459, column: 3, scope: !4607)
!4647 = !DILocation(line: 459, column: 48, scope: !4607)
!4648 = !DILocation(line: 461, column: 2, scope: !4607)
!4649 = !DILocation(line: 461, column: 2, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4607, file: !311, line: 461, column: 2)
!4651 = !DILocation(line: 462, column: 2, scope: !4607)
!4652 = !DILocation(line: 462, column: 7, scope: !4607)
!4653 = !DILocation(line: 462, column: 21, scope: !4607)
!4654 = !DILocation(line: 463, column: 27, scope: !4607)
!4655 = !DILocation(line: 463, column: 32, scope: !4607)
!4656 = !DILocation(line: 463, column: 37, scope: !4607)
!4657 = !DILocation(line: 463, column: 52, scope: !4607)
!4658 = !DILocation(line: 463, column: 2, scope: !4607)
!4659 = !DILocation(line: 465, column: 2, scope: !4607)
!4660 = !DILocation(line: 466, column: 1, scope: !4607)
!4661 = distinct !DISubprogram(name: "cache_bin_dalloc_easy", scope: !311, file: !311, line: 434, type: !4608, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4662)
!4662 = !{!4663, !4664}
!4663 = !DILocalVariable(name: "bin", arg: 1, scope: !4661, file: !311, line: 434, type: !321)
!4664 = !DILocalVariable(name: "ptr", arg: 2, scope: !4661, file: !311, line: 434, type: !121)
!4665 = !DILocation(line: 434, column: 36, scope: !4661)
!4666 = !DILocation(line: 434, column: 47, scope: !4661)
!4667 = !DILocation(line: 435, column: 6, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4661, file: !311, line: 435, column: 6)
!4669 = !DILocation(line: 435, column: 6, scope: !4661)
!4670 = !DILocation(line: 436, column: 3, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4668, file: !311, line: 435, column: 37)
!4672 = !DILocation(line: 439, column: 2, scope: !4661)
!4673 = !DILocation(line: 439, column: 7, scope: !4661)
!4674 = !DILocation(line: 439, column: 17, scope: !4661)
!4675 = !DILocation(line: 440, column: 21, scope: !4661)
!4676 = !DILocation(line: 440, column: 3, scope: !4661)
!4677 = !DILocation(line: 440, column: 8, scope: !4661)
!4678 = !DILocation(line: 440, column: 19, scope: !4661)
!4679 = !DILocation(line: 441, column: 27, scope: !4661)
!4680 = !DILocation(line: 441, column: 32, scope: !4661)
!4681 = !DILocation(line: 441, column: 37, scope: !4661)
!4682 = !DILocation(line: 442, column: 27, scope: !4661)
!4683 = !DILocation(line: 442, column: 32, scope: !4661)
!4684 = !DILocation(line: 442, column: 16, scope: !4661)
!4685 = !DILocation(line: 442, column: 6, scope: !4661)
!4686 = !DILocation(line: 441, column: 2, scope: !4661)
!4687 = !DILocation(line: 444, column: 2, scope: !4661)
!4688 = !DILocation(line: 445, column: 1, scope: !4661)
!4689 = distinct !DISubprogram(name: "tcache_small_bin_disabled", scope: !4381, file: !4381, line: 31, type: !4690, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4692)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!185, !340, !321}
!4692 = !{!4693, !4694, !4695}
!4693 = !DILocalVariable(name: "ind", arg: 1, scope: !4689, file: !4381, line: 31, type: !340)
!4694 = !DILocalVariable(name: "bin", arg: 2, scope: !4689, file: !4381, line: 31, type: !321)
!4695 = !DILocalVariable(name: "ret", scope: !4689, file: !4381, line: 33, type: !185)
!4696 = !DILocation(line: 31, column: 35, scope: !4689)
!4697 = !DILocation(line: 31, column: 53, scope: !4689)
!4698 = !DILocation(line: 32, column: 2, scope: !4689)
!4699 = !DILocation(line: 32, column: 2, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4689, file: !4381, line: 32, column: 2)
!4701 = !DILocation(line: 33, column: 2, scope: !4689)
!4702 = !DILocation(line: 33, column: 7, scope: !4689)
!4703 = !DILocation(line: 33, column: 42, scope: !4689)
!4704 = !DILocation(line: 33, column: 58, scope: !4689)
!4705 = !DILocation(line: 33, column: 14, scope: !4689)
!4706 = !DILocation(line: 33, column: 64, scope: !4689)
!4707 = !DILocation(line: 34, column: 6, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4689, file: !4381, line: 34, column: 6)
!4709 = !DILocation(line: 34, column: 10, scope: !4708)
!4710 = !DILocation(line: 34, column: 13, scope: !4708)
!4711 = !DILocation(line: 34, column: 17, scope: !4708)
!4712 = !DILocation(line: 34, column: 6, scope: !4689)
!4713 = !DILocation(line: 36, column: 3, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4708, file: !4381, line: 34, column: 26)
!4715 = !DILocation(line: 36, column: 3, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4714, file: !4381, line: 36, column: 3)
!4717 = !DILocation(line: 37, column: 3, scope: !4714)
!4718 = !DILocation(line: 37, column: 3, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4714, file: !4381, line: 37, column: 3)
!4720 = !DILocation(line: 39, column: 2, scope: !4714)
!4721 = !DILocation(line: 41, column: 9, scope: !4689)
!4722 = !DILocation(line: 42, column: 1, scope: !4689)
!4723 = !DILocation(line: 41, column: 2, scope: !4689)
!4724 = distinct !DISubprogram(name: "cache_bin_info_ncached_max", scope: !311, file: !311, line: 173, type: !4725, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4732)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!4394, !4727}
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_bin_info_t", file: !311, line: 62, baseType: !4729)
!4729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_bin_info_s", file: !311, line: 63, size: 16, elements: !4730)
!4730 = !{!4731}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "ncached_max", scope: !4729, file: !311, line: 64, baseType: !4394, size: 16)
!4732 = !{!4733}
!4733 = !DILocalVariable(name: "info", arg: 1, scope: !4724, file: !311, line: 173, type: !4727)
!4734 = !DILocation(line: 173, column: 46, scope: !4724)
!4735 = !DILocation(line: 174, column: 9, scope: !4724)
!4736 = !DILocation(line: 174, column: 15, scope: !4724)
!4737 = !{!4738, !4447, i64 0}
!4738 = !{!"cache_bin_info_s", !4447, i64 0}
!4739 = !DILocation(line: 174, column: 2, scope: !4724)
!4740 = !DISubprogram(name: "tcache_bin_flush_small", scope: !3055, file: !3055, line: 41, type: !4741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{null, !970, !354, !321, !340, !7}
!4743 = distinct !DISubprogram(name: "san_junk_ptr_should_slow", scope: !1248, file: !1248, line: 158, type: !4744, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{!185}
!4746 = !DILocation(line: 163, column: 2, scope: !4743)
!4747 = distinct !DISubprogram(name: "san_junk_ptr_locations", scope: !1248, file: !1248, line: 134, type: !4748, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4750)
!4748 = !DISubroutineType(types: !4749)
!4749 = !{null, !121, !118, !326, !326, !326}
!4750 = !{!4751, !4752, !4753, !4754, !4755, !4756}
!4751 = !DILocalVariable(name: "ptr", arg: 1, scope: !4747, file: !1248, line: 134, type: !121)
!4752 = !DILocalVariable(name: "usize", arg: 2, scope: !4747, file: !1248, line: 134, type: !118)
!4753 = !DILocalVariable(name: "first", arg: 3, scope: !4747, file: !1248, line: 134, type: !326)
!4754 = !DILocalVariable(name: "mid", arg: 4, scope: !4747, file: !1248, line: 134, type: !326)
!4755 = !DILocalVariable(name: "last", arg: 5, scope: !4747, file: !1248, line: 135, type: !326)
!4756 = !DILocalVariable(name: "ptr_sz", scope: !4747, file: !1248, line: 136, type: !118)
!4757 = !DILocation(line: 134, column: 30, scope: !4747)
!4758 = !DILocation(line: 134, column: 42, scope: !4747)
!4759 = !DILocation(line: 134, column: 56, scope: !4747)
!4760 = !DILocation(line: 134, column: 70, scope: !4747)
!4761 = !DILocation(line: 135, column: 12, scope: !4747)
!4762 = !DILocation(line: 136, column: 2, scope: !4747)
!4763 = !DILocation(line: 136, column: 9, scope: !4747)
!4764 = !DILocation(line: 138, column: 11, scope: !4747)
!4765 = !DILocation(line: 138, column: 3, scope: !4747)
!4766 = !DILocation(line: 138, column: 9, scope: !4747)
!4767 = !DILocation(line: 140, column: 29, scope: !4747)
!4768 = !DILocation(line: 140, column: 18, scope: !4747)
!4769 = !DILocation(line: 140, column: 37, scope: !4747)
!4770 = !DILocation(line: 140, column: 43, scope: !4747)
!4771 = !DILocation(line: 140, column: 53, scope: !4747)
!4772 = !DILocation(line: 140, column: 60, scope: !4747)
!4773 = !DILocation(line: 140, column: 51, scope: !4747)
!4774 = !DILocation(line: 140, column: 49, scope: !4747)
!4775 = !DILocation(line: 140, column: 33, scope: !4747)
!4776 = !DILocation(line: 140, column: 9, scope: !4747)
!4777 = !DILocation(line: 140, column: 3, scope: !4747)
!4778 = !DILocation(line: 140, column: 7, scope: !4747)
!4779 = !DILocation(line: 141, column: 2, scope: !4747)
!4780 = !DILocation(line: 141, column: 2, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4747, file: !1248, line: 141, column: 2)
!4782 = !DILocation(line: 142, column: 2, scope: !4747)
!4783 = !DILocation(line: 142, column: 2, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4747, file: !1248, line: 142, column: 2)
!4785 = !DILocation(line: 151, column: 30, scope: !4747)
!4786 = !DILocation(line: 151, column: 19, scope: !4747)
!4787 = !DILocation(line: 151, column: 36, scope: !4747)
!4788 = !DILocation(line: 151, column: 34, scope: !4747)
!4789 = !DILocation(line: 151, column: 42, scope: !4747)
!4790 = !DILocation(line: 151, column: 10, scope: !4747)
!4791 = !DILocation(line: 151, column: 3, scope: !4747)
!4792 = !DILocation(line: 151, column: 8, scope: !4747)
!4793 = !DILocation(line: 152, column: 2, scope: !4747)
!4794 = !DILocation(line: 152, column: 2, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4747, file: !1248, line: 152, column: 2)
!4796 = !DILocation(line: 153, column: 2, scope: !4747)
!4797 = !DILocation(line: 153, column: 2, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4747, file: !1248, line: 153, column: 2)
!4799 = !DILocation(line: 154, column: 2, scope: !4747)
!4800 = !DILocation(line: 154, column: 2, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4747, file: !1248, line: 154, column: 2)
!4802 = !DILocation(line: 155, column: 1, scope: !4747)
!4803 = distinct !DISubprogram(name: "cache_bin_full", scope: !311, file: !311, line: 426, type: !4804, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4806)
!4804 = !DISubroutineType(types: !4805)
!4805 = !{!185, !321}
!4806 = !{!4807}
!4807 = !DILocalVariable(name: "bin", arg: 1, scope: !4803, file: !311, line: 426, type: !321)
!4808 = !DILocation(line: 426, column: 29, scope: !4803)
!4809 = !DILocation(line: 427, column: 31, scope: !4803)
!4810 = !DILocation(line: 427, column: 36, scope: !4803)
!4811 = !DILocation(line: 427, column: 20, scope: !4803)
!4812 = !DILocation(line: 427, column: 10, scope: !4803)
!4813 = !DILocation(line: 427, column: 50, scope: !4803)
!4814 = !DILocation(line: 427, column: 55, scope: !4803)
!4815 = !DILocation(line: 427, column: 47, scope: !4803)
!4816 = !DILocation(line: 427, column: 2, scope: !4803)
!4817 = distinct !DISubprogram(name: "cache_bin_diff", scope: !311, file: !311, line: 197, type: !4818, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4820)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!333, !321, !333, !333, !185}
!4820 = !{!4821, !4822, !4823, !4824}
!4821 = !DILocalVariable(name: "bin", arg: 1, scope: !4817, file: !311, line: 197, type: !321)
!4822 = !DILocalVariable(name: "earlier", arg: 2, scope: !4817, file: !311, line: 197, type: !333)
!4823 = !DILocalVariable(name: "later", arg: 3, scope: !4817, file: !311, line: 197, type: !333)
!4824 = !DILocalVariable(name: "racy", arg: 4, scope: !4817, file: !311, line: 197, type: !185)
!4825 = !DILocation(line: 197, column: 29, scope: !4817)
!4826 = !DILocation(line: 197, column: 43, scope: !4817)
!4827 = !DILocation(line: 197, column: 61, scope: !4817)
!4828 = !DILocation(line: 197, column: 73, scope: !4817)
!4829 = !DILocation(line: 203, column: 7, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4817, file: !311, line: 203, column: 6)
!4831 = !DILocation(line: 203, column: 6, scope: !4817)
!4832 = !DILocation(line: 204, column: 28, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4830, file: !311, line: 203, column: 13)
!4834 = !DILocation(line: 204, column: 33, scope: !4833)
!4835 = !DILocation(line: 204, column: 42, scope: !4833)
!4836 = !DILocation(line: 204, column: 3, scope: !4833)
!4837 = !DILocation(line: 205, column: 2, scope: !4833)
!4838 = !DILocation(line: 206, column: 9, scope: !4817)
!4839 = !DILocation(line: 206, column: 17, scope: !4817)
!4840 = !DILocation(line: 206, column: 15, scope: !4817)
!4841 = !DILocation(line: 206, column: 2, scope: !4817)
!4842 = distinct !DISubprogram(name: "cache_bin_assert_earlier", scope: !311, file: !311, line: 184, type: !4843, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4845)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{null, !321, !333, !333}
!4845 = !{!4846, !4847, !4848}
!4846 = !DILocalVariable(name: "bin", arg: 1, scope: !4842, file: !311, line: 184, type: !321)
!4847 = !DILocalVariable(name: "earlier", arg: 2, scope: !4842, file: !311, line: 184, type: !333)
!4848 = !DILocalVariable(name: "later", arg: 3, scope: !4842, file: !311, line: 184, type: !333)
!4849 = !DILocation(line: 184, column: 39, scope: !4842)
!4850 = !DILocation(line: 184, column: 53, scope: !4842)
!4851 = !DILocation(line: 184, column: 71, scope: !4842)
!4852 = !DILocation(line: 185, column: 6, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4842, file: !311, line: 185, column: 6)
!4854 = !DILocation(line: 185, column: 16, scope: !4853)
!4855 = !DILocation(line: 185, column: 14, scope: !4853)
!4856 = !DILocation(line: 185, column: 6, scope: !4842)
!4857 = !DILocation(line: 186, column: 3, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4853, file: !311, line: 185, column: 23)
!4859 = !DILocation(line: 186, column: 3, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4858, file: !311, line: 186, column: 3)
!4861 = !DILocation(line: 187, column: 2, scope: !4858)
!4862 = !DILocation(line: 188, column: 1, scope: !4842)
!4863 = distinct !DISubprogram(name: "tcache_dalloc_large", scope: !4381, file: !4381, line: 164, type: !4382, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4864)
!4864 = !{!4865, !4866, !4867, !4868, !4869, !4870, !4871, !4874}
!4865 = !DILocalVariable(name: "tsd", arg: 1, scope: !4863, file: !4381, line: 164, type: !970)
!4866 = !DILocalVariable(name: "tcache", arg: 2, scope: !4863, file: !4381, line: 164, type: !354)
!4867 = !DILocalVariable(name: "ptr", arg: 3, scope: !4863, file: !4381, line: 164, type: !121)
!4868 = !DILocalVariable(name: "binind", arg: 4, scope: !4863, file: !4381, line: 164, type: !340)
!4869 = !DILocalVariable(name: "slow_path", arg: 5, scope: !4863, file: !4381, line: 165, type: !185)
!4870 = !DILocalVariable(name: "bin", scope: !4863, file: !4381, line: 171, type: !321)
!4871 = !DILocalVariable(name: "remain", scope: !4872, file: !4381, line: 173, type: !7)
!4872 = distinct !DILexicalBlock(scope: !4873, file: !4381, line: 172, column: 50)
!4873 = distinct !DILexicalBlock(scope: !4863, file: !4381, line: 172, column: 6)
!4874 = !DILocalVariable(name: "ret", scope: !4872, file: !4381, line: 176, type: !185)
!4875 = !DILocation(line: 164, column: 28, scope: !4863)
!4876 = !DILocation(line: 164, column: 43, scope: !4863)
!4877 = !DILocation(line: 164, column: 57, scope: !4863)
!4878 = !DILocation(line: 164, column: 70, scope: !4863)
!4879 = !DILocation(line: 165, column: 10, scope: !4863)
!4880 = !DILocation(line: 167, column: 2, scope: !4863)
!4881 = !DILocation(line: 167, column: 2, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4863, file: !4381, line: 167, column: 2)
!4883 = !DILocation(line: 169, column: 2, scope: !4863)
!4884 = !DILocation(line: 169, column: 2, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4863, file: !4381, line: 169, column: 2)
!4886 = !DILocation(line: 171, column: 2, scope: !4863)
!4887 = !DILocation(line: 171, column: 15, scope: !4863)
!4888 = !DILocation(line: 171, column: 22, scope: !4863)
!4889 = !DILocation(line: 171, column: 30, scope: !4863)
!4890 = !DILocation(line: 171, column: 35, scope: !4863)
!4891 = !DILocation(line: 172, column: 6, scope: !4873)
!4892 = !DILocation(line: 172, column: 6, scope: !4863)
!4893 = !DILocation(line: 173, column: 3, scope: !4872)
!4894 = !DILocation(line: 173, column: 12, scope: !4872)
!4895 = !DILocation(line: 174, column: 8, scope: !4872)
!4896 = !DILocation(line: 174, column: 24, scope: !4872)
!4897 = !DILocation(line: 173, column: 21, scope: !4872)
!4898 = !DILocation(line: 174, column: 36, scope: !4872)
!4899 = !DILocation(line: 174, column: 33, scope: !4872)
!4900 = !DILocation(line: 175, column: 26, scope: !4872)
!4901 = !DILocation(line: 175, column: 31, scope: !4872)
!4902 = !DILocation(line: 175, column: 39, scope: !4872)
!4903 = !DILocation(line: 175, column: 44, scope: !4872)
!4904 = !DILocation(line: 175, column: 52, scope: !4872)
!4905 = !DILocation(line: 175, column: 3, scope: !4872)
!4906 = !DILocation(line: 176, column: 3, scope: !4872)
!4907 = !DILocation(line: 176, column: 8, scope: !4872)
!4908 = !DILocation(line: 176, column: 36, scope: !4872)
!4909 = !DILocation(line: 176, column: 41, scope: !4872)
!4910 = !DILocation(line: 176, column: 14, scope: !4872)
!4911 = !DILocation(line: 177, column: 3, scope: !4872)
!4912 = !DILocation(line: 177, column: 3, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4872, file: !4381, line: 177, column: 3)
!4914 = !DILocation(line: 178, column: 2, scope: !4873)
!4915 = !DILocation(line: 178, column: 2, scope: !4872)
!4916 = !DILocation(line: 179, column: 1, scope: !4863)
!4917 = !DISubprogram(name: "tcache_bin_flush_large", scope: !3055, file: !3055, line: 43, type: !4741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4918 = distinct !DISubprogram(name: "edata_list_active_remove", scope: !58, file: !58, line: 253, type: !1574, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4919)
!4919 = !{!4920, !4921}
!4920 = !DILocalVariable(name: "list", arg: 1, scope: !4918, file: !58, line: 253, type: !613)
!4921 = !DILocalVariable(name: "item", arg: 2, scope: !4918, file: !58, line: 253, type: !377)
!4922 = !DILocation(line: 253, column: 1, scope: !4918)
!4923 = !DILocation(line: 253, column: 1, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4925, file: !58, line: 253, column: 1)
!4925 = distinct !DILexicalBlock(scope: !4918, file: !58, line: 253, column: 1)
!4926 = !DILocation(line: 253, column: 1, scope: !4925)
!4927 = !DILocation(line: 253, column: 1, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4924, file: !58, line: 253, column: 1)
!4929 = !DILocation(line: 253, column: 1, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4925, file: !58, line: 253, column: 1)
!4931 = !DILocation(line: 253, column: 1, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4930, file: !58, line: 253, column: 1)
!4933 = !DILocation(line: 253, column: 1, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4932, file: !58, line: 253, column: 1)
!4935 = !DILocation(line: 253, column: 1, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4930, file: !58, line: 253, column: 1)
!4937 = !DILocation(line: 253, column: 1, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4936, file: !58, line: 253, column: 1)
!4939 = distinct !DISubprogram(name: "malloc_mutex_assert_owner", scope: !53, file: !53, line: 235, type: !1539, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4940)
!4940 = !{!4941, !4942}
!4941 = !DILocalVariable(name: "tsdn", arg: 1, scope: !4939, file: !53, line: 235, type: !174)
!4942 = !DILocalVariable(name: "mutex", arg: 2, scope: !4939, file: !53, line: 235, type: !135)
!4943 = !DILocation(line: 235, column: 35, scope: !4939)
!4944 = !DILocation(line: 235, column: 57, scope: !4939)
!4945 = !DILocation(line: 236, column: 45, scope: !4939)
!4946 = !DILocation(line: 236, column: 23, scope: !4939)
!4947 = !DILocation(line: 236, column: 53, scope: !4939)
!4948 = !DILocation(line: 236, column: 60, scope: !4939)
!4949 = !DILocation(line: 236, column: 2, scope: !4939)
!4950 = !DILocation(line: 237, column: 1, scope: !4939)
!4951 = !DISubprogram(name: "arena_extent_dalloc_large_prep", scope: !1518, file: !1518, line: 48, type: !2261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4952 = distinct !DISubprogram(name: "witness_assert_owner", scope: !6, file: !6, line: 198, type: !3341, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4953)
!4953 = !{!4954, !4955, !4956}
!4954 = !DILocalVariable(name: "witness_tsdn", arg: 1, scope: !4952, file: !6, line: 198, type: !1194)
!4955 = !DILocalVariable(name: "witness", arg: 2, scope: !4952, file: !6, line: 198, type: !1047)
!4956 = !DILocalVariable(name: "witness_tsd", scope: !4952, file: !6, line: 199, type: !3347)
!4957 = !DILocation(line: 198, column: 38, scope: !4952)
!4958 = !DILocation(line: 198, column: 69, scope: !4952)
!4959 = !DILocation(line: 199, column: 2, scope: !4952)
!4960 = !DILocation(line: 199, column: 17, scope: !4952)
!4961 = !DILocation(line: 217, column: 1, scope: !4952)
!4962 = !DISubprogram(name: "pa_dalloc", scope: !245, file: !245, line: 188, type: !4963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4963 = !DISubroutineType(types: !4964)
!4964 = !{null, !174, !3714, !377, !608}
!4965 = distinct !DISubprogram(name: "edata_prof_tctx_set", scope: !58, file: !58, line: 553, type: !2430, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4966)
!4966 = !{!4967, !4968}
!4967 = !DILocalVariable(name: "edata", arg: 1, scope: !4965, file: !58, line: 553, type: !377)
!4968 = !DILocalVariable(name: "tctx", arg: 2, scope: !4965, file: !58, line: 553, type: !124)
!4969 = !DILocation(line: 553, column: 30, scope: !4965)
!4970 = !DILocation(line: 553, column: 50, scope: !4965)
!4971 = !DILocation(line: 554, column: 18, scope: !4965)
!4972 = !DILocation(line: 554, column: 25, scope: !4965)
!4973 = !DILocation(line: 554, column: 37, scope: !4965)
!4974 = !DILocation(line: 554, column: 50, scope: !4965)
!4975 = !DILocation(line: 554, column: 2, scope: !4965)
!4976 = !DILocation(line: 555, column: 1, scope: !4965)
!4977 = distinct !DISubprogram(name: "atomic_store_p", scope: !168, file: !168, line: 83, type: !4978, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4981)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{null, !4980, !121, !3241}
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!4981 = !{!4982, !4983, !4984}
!4982 = !DILocalVariable(name: "a", arg: 1, scope: !4977, file: !168, line: 83, type: !4980)
!4983 = !DILocalVariable(name: "val", arg: 2, scope: !4977, file: !168, line: 83, type: !121)
!4984 = !DILocalVariable(name: "mo", arg: 3, scope: !4977, file: !168, line: 83, type: !3241)
!4985 = !DILocation(line: 83, column: 1, scope: !4977)
