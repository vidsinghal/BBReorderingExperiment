; ModuleID = 'samples/417.bc'
source_filename = "../spack-src/externals/cgns/hdf5/H5Cdbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.H5C_t = type { i32, i8, ptr, ptr, i32, ptr, i64, i64, ptr, i8, ptr, i8, i8, i32, i64, [6 x i32], [6 x i64], i64, [6 x i64], i64, [6 x i64], [65536 x ptr], i32, i64, ptr, ptr, i64, ptr, ptr, i8, i8, i32, i64, [6 x i32], [6 x i64], ptr, i32, i32, i64, ptr, i8, i32, i32, i64, ptr, ptr, i32, i64, ptr, ptr, i32, i64, ptr, ptr, i8, i8, i64, i8, i8, i8, i8, i8, i8, %struct.H5C_auto_size_ctl_t, i32, [10 x i8], [11 x i32], i32, i32, i32, [10 x %struct.H5C_cache_entry_t], i64, i64, %struct.H5C_cache_image_ctl_t, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i64, i32, ptr, ptr, i8, i8, [31 x i64], [31 x i64], [31 x i64], [31 x i64], [31 x i32], [31 x i64], [31 x i64], [31 x i64], [31 x i64], [31 x i64], [31 x i64], [31 x i64], [31 x i64], [31 x i64], [31 x i64], [31 x i64], [31 x i64], [31 x i64], [31 x i64], [31 x i64], [31 x i64], [31 x i64], [31 x i64], i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32, i64, i32, i64, i32, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64, [31 x i32], [31 x i32], [31 x i32], [31 x i32], [31 x i64], [31 x i32], [32 x i8], i64 }
%struct.H5C_auto_size_ctl_t = type { i32, ptr, i8, i64, double, i64, i64, i64, i32, double, double, i8, i64, i32, double, double, i32, double, double, i8, i64, i32, i8, double }
%struct.H5C_cache_entry_t = type { i32, ptr, i64, i64, ptr, i8, ptr, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, i64, ptr, i64, i64, i32, i8, i32, i32, i8, i32, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.H5C_cache_image_ctl_t = type { i32, i8, i8, i32, i32 }
%struct.H5C_tag_info_t = type { i64, ptr, i64, i8 }
%struct.H5C_class_t = type { i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@H5C_dump_cache.func_check = internal global i8 0, align 1
@H5C_init_g = external global i8, align 1
@H5_libterm_g = external global i8, align 1
@.str = private unnamed_addr constant [24 x i8] c"cache_ptr != ((void*)0)\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"../spack-src/externals/cgns/hdf5/H5Cdbg.c\00", align 1
@__PRETTY_FUNCTION__.H5C_dump_cache = private unnamed_addr constant [45 x i8] c"herr_t H5C_dump_cache(H5C_t *, const char *)\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"cache_ptr->magic == 0x005CAC0E\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"cache_name != ((void*)0)\00", align 1
@__func__.H5C_dump_cache = private unnamed_addr constant [15 x i8] c"H5C_dump_cache\00", align 1
@H5E_ERR_CLS_g = external global i64, align 8
@H5E_CACHE_g = external global i64, align 8
@H5E_CANTCREATE_g = external global i64, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"can't create skip list\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"entry_ptr->magic == 0x005CAC0A\00", align 1
@H5E_BADVALUE_g = external global i64, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"can't insert entry in skip list\00", align 1
@stdout = external global ptr, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"\0A\0ADump of metadata cache \22%s\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Entry \00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"|       Address      \00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"|         Tag        \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"|  Size \00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"| Ring \00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"|              Type              \00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"| Prot/Pin/Dirty\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [114 x i8] c"----------------------------------------------------------------------------------------------------------------\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"%s%5d \00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"  0x%16llx \00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"    %16s \00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"  %5lld \00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"    %d  \00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"  %2d %-32s \00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"H5SL_count(slist_ptr) == 0\00", align 1
@H5C_dump_cache_LRU.func_check = internal global i8 0, align 1
@__PRETTY_FUNCTION__.H5C_dump_cache_LRU = private unnamed_addr constant [49 x i8] c"herr_t H5C_dump_cache_LRU(H5C_t *, const char *)\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"\0A\0ADump of metadata cache LRU \22%s\22\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"LRU len = %d, LRU size = %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"index_size = %d, max_cache_size = %d, delta = %d\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"| Dirty\00", align 1
@H5C_dump_cache_skip_list.func_check = internal global i8 0, align 1
@__PRETTY_FUNCTION__.H5C_dump_cache_skip_list = private unnamed_addr constant [49 x i8] c"herr_t H5C_dump_cache_skip_list(H5C_t *, char *)\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"calling_fcn != ((void*)0)\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"\0A\0ADumping metadata cache skip list from %s.\0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c" slist %s.\0A\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"\09slist len = %u.\0A\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"\09slist size = %zu.\0A\00", align 1
@.str.38 = private unnamed_addr constant [58 x i8] c"Num:    Addr:               Len: Prot/Pind: Dirty: Type:\0A\00", align 1
@.str.39 = private unnamed_addr constant [53 x i8] c"%s%d       0x%016llx  %4lld    %d/%d       %d    %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"\09\09node_ptr = %p, item = %p\0A\00", align 1
@H5C_set_prefix.func_check = internal global i8 0, align 1
@__func__.H5C_set_prefix = private unnamed_addr constant [15 x i8] c"H5C_set_prefix\00", align 1
@H5E_SYSTEM_g = external global i64, align 8
@.str.41 = private unnamed_addr constant [22 x i8] c"Bad param(s) on entry\00", align 1
@H5C_stats.func_check = internal global i8 0, align 1
@__PRETTY_FUNCTION__.H5C_stats = private unnamed_addr constant [49 x i8] c"herr_t H5C_stats(H5C_t *, const char *, hbool_t)\00", align 1
@__func__.H5C_stats = private unnamed_addr constant [10 x i8] c"H5C_stats\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"Bad cache_ptr or cache_name\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"\0A%sH5C: cache statistics for %s\0A\00", align 1
@.str.44 = private unnamed_addr constant [52 x i8] c"%s  hash table insertion / deletions   = %ld / %ld\0A\00", align 1
@.str.45 = private unnamed_addr constant [52 x i8] c"%s  HT successful / failed searches    = %ld / %ld\0A\00", align 1
@.str.46 = private unnamed_addr constant [50 x i8] c"%s  Av. HT suc / failed search depth   = %f / %f\0A\00", align 1
@.str.47 = private unnamed_addr constant [64 x i8] c"%s  current (max) index size / length  = %ld (%ld) / %lu (%lu)\0A\00", align 1
@.str.48 = private unnamed_addr constant [64 x i8] c"%s  current (max) clean/dirty idx size = %ld (%ld) / %ld (%ld)\0A\00", align 1
@.str.49 = private unnamed_addr constant [64 x i8] c"%s  current (max) slist size / length  = %ld (%ld) / %lu (%lu)\0A\00", align 1
@.str.50 = private unnamed_addr constant [64 x i8] c"%s  current (max) PL size / length     = %ld (%ld) / %lu (%lu)\0A\00", align 1
@.str.51 = private unnamed_addr constant [64 x i8] c"%s  current (max) PEL size / length    = %ld (%ld) / %lu (%lu)\0A\00", align 1
@.str.52 = private unnamed_addr constant [52 x i8] c"%s  current LRU list size / length     = %ld / %lu\0A\00", align 1
@.str.53 = private unnamed_addr constant [57 x i8] c"%s  Total hits / misses / hit_rate     = %ld / %ld / %f\0A\00", align 1
@.str.54 = private unnamed_addr constant [58 x i8] c"%s  Total write / read (max) protects  = %ld / %ld (%ld)\0A\00", align 1
@.str.55 = private unnamed_addr constant [52 x i8] c"%s  Total clears / flushes             = %ld / %ld\0A\00", align 1
@.str.56 = private unnamed_addr constant [52 x i8] c"%s  Total evictions / take ownerships  = %ld / %ld\0A\00", align 1
@.str.57 = private unnamed_addr constant [57 x i8] c"%s  Total insertions(pinned) / moves   = %ld(%ld) / %ld\0A\00", align 1
@.str.58 = private unnamed_addr constant [52 x i8] c"%s  Total entry / cache flush moves    = %ld / %ld\0A\00", align 1
@.str.59 = private unnamed_addr constant [52 x i8] c"%s  Total entry size incrs / decrs     = %ld / %ld\0A\00", align 1
@.str.60 = private unnamed_addr constant [52 x i8] c"%s  Ttl entry/cache flush size changes = %ld / %ld\0A\00", align 1
@.str.61 = private unnamed_addr constant [58 x i8] c"%s  Total entry pins (dirty) / unpins  = %ld (%ld) / %ld\0A\00", align 1
@.str.62 = private unnamed_addr constant [52 x i8] c"%s  Total pinned flushes / clears      = %ld / %ld\0A\00", align 1
@.str.63 = private unnamed_addr constant [47 x i8] c"%s  MSIC: (make space in cache) calls  = %lld\0A\00", align 1
@.str.64 = private unnamed_addr constant [52 x i8] c"%s  MSIC: Average/max entries skipped  = %lf / %ld\0A\00", align 1
@.str.65 = private unnamed_addr constant [61 x i8] c"%s  MSIC: Average/max dirty pf entries skipped  = %lf / %ld\0A\00", align 1
@.str.66 = private unnamed_addr constant [52 x i8] c"%s  MSIC: Average/max entries scanned  = %lf / %ld\0A\00", align 1
@.str.67 = private unnamed_addr constant [47 x i8] c"%s  MSIC: Scanned to make space(evict) = %lld\0A\00", align 1
@.str.68 = private unnamed_addr constant [47 x i8] c"%s  MSIC: Scanned to satisfy min_clean = %lld\0A\00", align 1
@.str.69 = private unnamed_addr constant [59 x i8] c"%s  slist/LRU/index scan restarts   = %lld / %lld / %lld.\0A\00", align 1
@.str.70 = private unnamed_addr constant [65 x i8] c"%s  cache image creations/reads/loads/size = %d / %d /%d / %llu\0A\00", align 1
@.str.71 = private unnamed_addr constant [54 x i8] c"%s  prefetches / dirty prefetches      = %lld / %lld\0A\00", align 1
@.str.72 = private unnamed_addr constant [61 x i8] c"%s  prefetch hits/flushes/evictions    = %lld / %lld / %lld\0A\00", align 1
@.str.73 = private unnamed_addr constant [46 x i8] c"%s  prefetched entry use rate          = %lf\0A\00", align 1
@.str.74 = private unnamed_addr constant [50 x i8] c"%s  aggregate max / min accesses       = %d / %d\0A\00", align 1
@.str.75 = private unnamed_addr constant [50 x i8] c"%s  aggregate max_clears / max_flushes = %d / %d\0A\00", align 1
@.str.76 = private unnamed_addr constant [50 x i8] c"%s  aggregate max_size / max_pins      = %d / %d\0A\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"%s  Stats on %s:\0A\00", align 1
@.str.78 = private unnamed_addr constant [55 x i8] c"%s    hits / misses / hit_rate       = %ld / %ld / %f\0A\00", align 1
@.str.79 = private unnamed_addr constant [55 x i8] c"%s    write / read (max) protects    = %ld / %ld (%d)\0A\00", align 1
@.str.80 = private unnamed_addr constant [50 x i8] c"%s    clears / flushes               = %ld / %ld\0A\00", align 1
@.str.81 = private unnamed_addr constant [50 x i8] c"%s    evictions / take ownerships    = %ld / %ld\0A\00", align 1
@.str.82 = private unnamed_addr constant [55 x i8] c"%s    insertions(pinned) / moves     = %ld(%ld) / %ld\0A\00", align 1
@.str.83 = private unnamed_addr constant [50 x i8] c"%s    entry / cache flush moves      = %ld / %ld\0A\00", align 1
@.str.84 = private unnamed_addr constant [50 x i8] c"%s    size increases / decreases     = %ld / %ld\0A\00", align 1
@.str.85 = private unnamed_addr constant [50 x i8] c"%s    entry/cache flush size changes = %ld / %ld\0A\00", align 1
@.str.86 = private unnamed_addr constant [50 x i8] c"%s    entry pins / unpins            = %ld / %ld\0A\00", align 1
@.str.87 = private unnamed_addr constant [50 x i8] c"%s    entry dirty pins/pin'd flushes = %ld / %ld\0A\00", align 1
@.str.88 = private unnamed_addr constant [48 x i8] c"%s    entry max / min accesses       = %d / %d\0A\00", align 1
@.str.89 = private unnamed_addr constant [48 x i8] c"%s    entry max_clears / max_flushes = %d / %d\0A\00", align 1
@.str.90 = private unnamed_addr constant [48 x i8] c"%s    entry max_size / max_pins      = %d / %d\0A\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"cache_ptr\00", align 1
@__PRETTY_FUNCTION__.H5C_stats__reset = private unnamed_addr constant [31 x i8] c"void H5C_stats__reset(H5C_t *)\00", align 1
@H5C_flush_dependency_exists.func_check = internal global i8 0, align 1
@__PRETTY_FUNCTION__.H5C_flush_dependency_exists = private unnamed_addr constant [73 x i8] c"herr_t H5C_flush_dependency_exists(H5C_t *, haddr_t, haddr_t, hbool_t *)\00", align 1
@.str.92 = private unnamed_addr constant [49 x i8] c"((parent_addr)!=(9223372036854775807L *2UL+1UL))\00", align 1
@.str.93 = private unnamed_addr constant [48 x i8] c"((child_addr)!=(9223372036854775807L *2UL+1UL))\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"fd_exists_ptr\00", align 1
@__func__.H5C_flush_dependency_exists = private unnamed_addr constant [28 x i8] c"H5C_flush_dependency_exists\00", align 1
@.str.95 = private unnamed_addr constant [24 x i8] c"pre HT search SC failed\00", align 1
@.str.96 = private unnamed_addr constant [36 x i8] c"post successful HT search SC failed\00", align 1
@.str.97 = private unnamed_addr constant [36 x i8] c"(parent_ptr)->ht_prev != ((void*)0)\00", align 1
@.str.98 = private unnamed_addr constant [33 x i8] c"post HT shift to front SC failed\00", align 1
@.str.99 = private unnamed_addr constant [35 x i8] c"(child_ptr)->ht_prev != ((void*)0)\00", align 1
@.str.100 = private unnamed_addr constant [32 x i8] c"parent_ptr->magic == 0x005CAC0A\00", align 1
@.str.101 = private unnamed_addr constant [31 x i8] c"child_ptr->magic == 0x005CAC0A\00", align 1
@.str.102 = private unnamed_addr constant [28 x i8] c"child_ptr->flush_dep_parent\00", align 1
@.str.103 = private unnamed_addr constant [68 x i8] c"child_ptr->flush_dep_parent_nalloc >= child_ptr->flush_dep_nparents\00", align 1
@.str.104 = private unnamed_addr constant [36 x i8] c"parent_ptr->flush_dep_nchildren > 0\00", align 1
@H5C_validate_index_list.func_check = internal global i8 0, align 1
@__PRETTY_FUNCTION__.H5C_validate_index_list = private unnamed_addr constant [40 x i8] c"herr_t H5C_validate_index_list(H5C_t *)\00", align 1
@__func__.H5C_validate_index_list = private unnamed_addr constant [24 x i8] c"H5C_validate_index_list\00", align 1
@.str.105 = private unnamed_addr constant [37 x i8] c"Index list pointer validation failed\00", align 1
@.str.106 = private unnamed_addr constant [40 x i8] c"Index list pointer sanity checks failed\00", align 1
@.str.107 = private unnamed_addr constant [39 x i8] c"Index list length sanity checks failed\00", align 1
@.str.108 = private unnamed_addr constant [42 x i8] c"Index list pointers for entry are invalid\00", align 1
@.str.109 = private unnamed_addr constant [20 x i8] c"entry_ptr->ring > 0\00", align 1
@.str.110 = private unnamed_addr constant [20 x i8] c"entry_ptr->ring < 6\00", align 1
@.str.111 = private unnamed_addr constant [51 x i8] c"Index, clean and dirty sizes for cache are invalid\00", align 1
@.str.112 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@H5C_get_entry_ptr_from_addr.func_check = internal global i8 0, align 1
@__PRETTY_FUNCTION__.H5C_get_entry_ptr_from_addr = private unnamed_addr constant [62 x i8] c"herr_t H5C_get_entry_ptr_from_addr(H5C_t *, haddr_t, void **)\00", align 1
@.str.113 = private unnamed_addr constant [42 x i8] c"((addr)!=(9223372036854775807L *2UL+1UL))\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"entry_ptr_ptr\00", align 1
@__func__.H5C_get_entry_ptr_from_addr = private unnamed_addr constant [28 x i8] c"H5C_get_entry_ptr_from_addr\00", align 1
@.str.115 = private unnamed_addr constant [35 x i8] c"(entry_ptr)->ht_prev != ((void*)0)\00", align 1
@H5C_get_serialization_in_progress.func_check = internal global i8 0, align 1
@__PRETTY_FUNCTION__.H5C_get_serialization_in_progress = private unnamed_addr constant [57 x i8] c"hbool_t H5C_get_serialization_in_progress(const H5C_t *)\00", align 1
@H5C_cache_is_clean.func_check = internal global i8 0, align 1
@__PRETTY_FUNCTION__.H5C_cache_is_clean = private unnamed_addr constant [54 x i8] c"hbool_t H5C_cache_is_clean(const H5C_t *, H5C_ring_t)\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"inner_ring >= 1\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"inner_ring <= 5\00", align 1
@H5C_verify_entry_type.func_check = internal global i8 0, align 1
@__PRETTY_FUNCTION__.H5C_verify_entry_type = private unnamed_addr constant [90 x i8] c"herr_t H5C_verify_entry_type(H5C_t *, haddr_t, const H5C_class_t *, hbool_t *, hbool_t *)\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"expected_type\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"in_cache_ptr\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"type_ok_ptr\00", align 1
@__func__.H5C_verify_entry_type = private unnamed_addr constant [22 x i8] c"H5C_verify_entry_type\00", align 1

; Function Attrs: nounwind uwtable
define i32 @H5C_dump_cache(ptr noundef %cache_ptr, ptr noundef %cache_name) #0 {
entry:
  %cache_ptr.addr = alloca ptr, align 8
  %cache_name.addr = alloca ptr, align 8
  %entry_ptr = alloca ptr, align 8
  %slist_ptr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  store ptr %cache_ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  store ptr %cache_name, ptr %cache_name.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_ptr) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %slist_ptr) #6
  store ptr null, ptr %slist_ptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #6
  store i32 0, ptr %ret_value, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #6
  store i8 0, ptr %err_occurred, align 1, !tbaa !10
  %0 = load i8, ptr @H5C_dump_cache.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr @H5C_dump_cache.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr @H5C_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  store i8 1, ptr @H5C_init_g, align 1, !tbaa !10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %3 = load i8, ptr @H5C_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool5 = trunc i8 %3 to i1
  br i1 %tobool5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %4 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool6 = trunc i8 %4 to i1
  br i1 %tobool6, label %if.end90, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false, %if.end4
  %5 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %5, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then7
  br label %cond.end

cond.false:                                       ; preds = %if.then7
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 89, ptr noundef @__PRETTY_FUNCTION__.H5C_dump_cache) #7
  unreachable

6:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  %7 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %magic = getelementptr inbounds %struct.H5C_t, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %magic, align 8, !tbaa !14
  %cmp8 = icmp eq i32 %8, 6073358
  br i1 %cmp8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 90, ptr noundef @__PRETTY_FUNCTION__.H5C_dump_cache) #7
  unreachable

9:                                                ; No predecessors!
  br label %cond.end11

cond.end11:                                       ; preds = %9, %cond.true9
  %10 = load ptr, ptr %cache_name.addr, align 8, !tbaa !4
  %cmp12 = icmp ne ptr %10, null
  br i1 %cmp12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %cond.end11
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end11
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 91, ptr noundef @__PRETTY_FUNCTION__.H5C_dump_cache) #7
  unreachable

11:                                               ; No predecessors!
  br label %cond.end15

cond.end15:                                       ; preds = %11, %cond.true13
  %call = call ptr @H5SL_create(i32 noundef 1, ptr noundef null)
  store ptr %call, ptr %slist_ptr, align 8, !tbaa !4
  %cmp16 = icmp eq ptr null, %call
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %cond.end15
  %12 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %13 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %14 = load i64, ptr @H5E_CANTCREATE_g, align 8, !tbaa !21
  %call18 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_dump_cache, i32 noundef 95, i64 noundef %12, i64 noundef %13, i64 noundef %14, ptr noundef @.str.4)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %15 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool19 = trunc i8 %15 to i1
  %frombool = zext i1 %tobool19 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !8
  br label %done

if.end20:                                         ; preds = %cond.end15
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end20
  %16 = load i32, ptr %i, align 4, !tbaa !8
  %cmp21 = icmp slt i32 %16, 65536
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index = getelementptr inbounds %struct.H5C_t, ptr %17, i32 0, i32 21
  %18 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [65536 x ptr], ptr %index, i64 0, i64 %idxprom
  %19 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %19, ptr %entry_ptr, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %if.end34, %for.body
  %20 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp22 = icmp ne ptr %20, null
  br i1 %cmp22, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %magic23 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %magic23, align 8, !tbaa !22
  %cmp24 = icmp eq i32 %22, 6073354
  br i1 %cmp24, label %cond.true25, label %cond.false26

cond.true25:                                      ; preds = %while.body
  br label %cond.end27

cond.false26:                                     ; preds = %while.body
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 105, ptr noundef @__PRETTY_FUNCTION__.H5C_dump_cache) #7
  unreachable

23:                                               ; No predecessors!
  br label %cond.end27

cond.end27:                                       ; preds = %23, %cond.true25
  %24 = load ptr, ptr %slist_ptr, align 8, !tbaa !4
  %25 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %26 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %addr = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %26, i32 0, i32 2
  %call28 = call i32 @H5SL_insert(ptr noundef %24, ptr noundef %25, ptr noundef %addr)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end34

if.then30:                                        ; preds = %cond.end27
  %27 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %28 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %29 = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !21
  %call31 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_dump_cache, i32 noundef 107, i64 noundef %27, i64 noundef %28, i64 noundef %29, ptr noundef @.str.6)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %30 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool32 = trunc i8 %30 to i1
  %frombool33 = zext i1 %tobool32 to i8
  store i8 %frombool33, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !8
  br label %done

if.end34:                                         ; preds = %cond.end27
  %31 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_next = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %31, i32 0, i32 27
  %32 = load ptr, ptr %ht_next, align 8, !tbaa !24
  store ptr %32, ptr %entry_ptr, align 8, !tbaa !4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %33 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load ptr, ptr @stdout, align 8, !tbaa !4
  %35 = load ptr, ptr %cache_name.addr, align 8, !tbaa !4
  %call35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.7, ptr noundef %35)
  %36 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.8)
  %37 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.9)
  %38 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str.10)
  %39 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str.11)
  %40 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @.str.12)
  %41 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.13)
  %42 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.14)
  %43 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef @.str.15)
  %44 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.16)
  store i32 0, ptr %i, align 4, !tbaa !8
  %45 = load ptr, ptr %slist_ptr, align 8, !tbaa !4
  %call45 = call ptr @H5SL_remove_first(ptr noundef %45)
  store ptr %call45, ptr %entry_ptr, align 8, !tbaa !4
  br label %while.cond46

while.cond46:                                     ; preds = %if.end62, %for.end
  %46 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp47 = icmp ne ptr %46, null
  br i1 %cmp47, label %while.body48, label %while.end78

while.body48:                                     ; preds = %while.cond46
  %47 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %magic49 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %47, i32 0, i32 0
  %48 = load i32, ptr %magic49, align 8, !tbaa !22
  %cmp50 = icmp eq i32 %48, 6073354
  br i1 %cmp50, label %cond.true51, label %cond.false52

cond.true51:                                      ; preds = %while.body48
  br label %cond.end53

cond.false52:                                     ; preds = %while.body48
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 135, ptr noundef @__PRETTY_FUNCTION__.H5C_dump_cache) #7
  unreachable

49:                                               ; No predecessors!
  br label %cond.end53

cond.end53:                                       ; preds = %49, %cond.true51
  %50 = load ptr, ptr @stdout, align 8, !tbaa !4
  %51 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix = getelementptr inbounds %struct.H5C_t, ptr %51, i32 0, i32 153
  %arraydecay = getelementptr inbounds [32 x i8], ptr %prefix, i64 0, i64 0
  %52 = load i32, ptr %i, align 4, !tbaa !8
  %call54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.17, ptr noundef %arraydecay, i32 noundef %52)
  %53 = load ptr, ptr @stdout, align 8, !tbaa !4
  %54 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %addr55 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %54, i32 0, i32 2
  %55 = load i64, ptr %addr55, align 8, !tbaa !25
  %call56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef @.str.18, i64 noundef %55)
  %56 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %tag_info = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %56, i32 0, i32 48
  %57 = load ptr, ptr %tag_info, align 8, !tbaa !26
  %cmp57 = icmp eq ptr null, %57
  br i1 %cmp57, label %if.then58, label %if.else

if.then58:                                        ; preds = %cond.end53
  %58 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @.str.19, ptr noundef @.str.20)
  br label %if.end62

if.else:                                          ; preds = %cond.end53
  %59 = load ptr, ptr @stdout, align 8, !tbaa !4
  %60 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %tag_info60 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %60, i32 0, i32 48
  %61 = load ptr, ptr %tag_info60, align 8, !tbaa !26
  %tag = getelementptr inbounds %struct.H5C_tag_info_t, ptr %61, i32 0, i32 0
  %62 = load i64, ptr %tag, align 8, !tbaa !27
  %call61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @.str.18, i64 noundef %62)
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then58
  %63 = load ptr, ptr @stdout, align 8, !tbaa !4
  %64 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %64, i32 0, i32 3
  %65 = load i64, ptr %size, align 8, !tbaa !29
  %call63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef @.str.21, i64 noundef %65)
  %66 = load ptr, ptr @stdout, align 8, !tbaa !4
  %67 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ring = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %67, i32 0, i32 18
  %68 = load i32, ptr %ring, align 8, !tbaa !30
  %call64 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef @.str.22, i32 noundef %68)
  %69 = load ptr, ptr @stdout, align 8, !tbaa !4
  %70 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %70, i32 0, i32 6
  %71 = load ptr, ptr %type, align 8, !tbaa !31
  %id = getelementptr inbounds %struct.H5C_class_t, ptr %71, i32 0, i32 0
  %72 = load i32, ptr %id, align 8, !tbaa !32
  %73 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %type65 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %73, i32 0, i32 6
  %74 = load ptr, ptr %type65, align 8, !tbaa !31
  %name = getelementptr inbounds %struct.H5C_class_t, ptr %74, i32 0, i32 1
  %75 = load ptr, ptr %name, align 8, !tbaa !34
  %call66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @.str.23, i32 noundef %72, ptr noundef %75)
  %76 = load ptr, ptr @stdout, align 8, !tbaa !4
  %77 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %is_protected = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %77, i32 0, i32 9
  %78 = load i8, ptr %is_protected, align 2, !tbaa !35, !range !12, !noundef !13
  %tobool67 = trunc i8 %78 to i1
  %conv = zext i1 %tobool67 to i32
  %call68 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef @.str.24, i32 noundef %conv)
  %79 = load ptr, ptr @stdout, align 8, !tbaa !4
  %80 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %is_pinned = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %80, i32 0, i32 12
  %81 = load i8, ptr %is_pinned, align 8, !tbaa !36, !range !12, !noundef !13
  %tobool69 = trunc i8 %81 to i1
  %conv70 = zext i1 %tobool69 to i32
  %call71 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef @.str.24, i32 noundef %conv70)
  %82 = load ptr, ptr @stdout, align 8, !tbaa !4
  %83 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %is_dirty = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %83, i32 0, i32 7
  %84 = load i8, ptr %is_dirty, align 8, !tbaa !37, !range !12, !noundef !13
  %tobool72 = trunc i8 %84 to i1
  %conv73 = zext i1 %tobool72 to i32
  %call74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef @.str.24, i32 noundef %conv73)
  %85 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef @.str.15)
  %86 = load ptr, ptr %slist_ptr, align 8, !tbaa !4
  %call76 = call ptr @H5SL_remove_first(ptr noundef %86)
  store ptr %call76, ptr %entry_ptr, align 8, !tbaa !4
  %87 = load i32, ptr %i, align 4, !tbaa !8
  %inc77 = add nsw i32 %87, 1
  store i32 %inc77, ptr %i, align 4, !tbaa !8
  br label %while.cond46

while.end78:                                      ; preds = %while.cond46
  %88 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef @.str.25)
  %89 = load ptr, ptr %slist_ptr, align 8, !tbaa !4
  %call80 = call i64 @H5SL_count(ptr noundef %89)
  %cmp81 = icmp eq i64 %call80, 0
  br i1 %cmp81, label %cond.true83, label %cond.false84

cond.true83:                                      ; preds = %while.end78
  br label %cond.end85

cond.false84:                                     ; preds = %while.end78
  call void @__assert_fail(ptr noundef @.str.26, ptr noundef @.str.1, i32 noundef 161, ptr noundef @__PRETTY_FUNCTION__.H5C_dump_cache) #7
  unreachable

90:                                               ; No predecessors!
  br label %cond.end85

cond.end85:                                       ; preds = %90, %cond.true83
  br label %done

done:                                             ; preds = %cond.end85, %if.then30, %if.then17
  %91 = load ptr, ptr %slist_ptr, align 8, !tbaa !4
  %tobool86 = icmp ne ptr %91, null
  br i1 %tobool86, label %if.then87, label %if.end89

if.then87:                                        ; preds = %done
  %92 = load ptr, ptr %slist_ptr, align 8, !tbaa !4
  %call88 = call i32 @H5SL_close(ptr noundef %92)
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %done
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %lor.lhs.false
  %93 = load i32, ptr %ret_value, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %slist_ptr) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_ptr) #6
  ret i32 %93
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare ptr @H5SL_create(i32 noundef, ptr noundef) #3

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ...) #3

declare i32 @H5SL_insert(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare ptr @H5SL_remove_first(ptr noundef) #3

declare i64 @H5SL_count(ptr noundef) #3

declare i32 @H5SL_close(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @H5C_dump_cache_LRU(ptr noundef %cache_ptr, ptr noundef %cache_name) #0 {
entry:
  %cache_ptr.addr = alloca ptr, align 8
  %cache_name.addr = alloca ptr, align 8
  %entry_ptr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cache_ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  store ptr %cache_name, ptr %cache_name.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_ptr) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  store i32 0, ptr %i, align 4, !tbaa !8
  %0 = load i8, ptr @H5C_dump_cache_LRU.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr @H5C_dump_cache_LRU.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr @H5C_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  store i8 1, ptr @H5C_init_g, align 1, !tbaa !10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %3 = load i8, ptr @H5C_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool5 = trunc i8 %3 to i1
  br i1 %tobool5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %4 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool6 = trunc i8 %4 to i1
  br i1 %tobool6, label %if.end59, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false, %if.end4
  %5 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %5, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then7
  br label %cond.end

cond.false:                                       ; preds = %if.then7
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 196, ptr noundef @__PRETTY_FUNCTION__.H5C_dump_cache_LRU) #7
  unreachable

6:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  %7 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %magic = getelementptr inbounds %struct.H5C_t, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %magic, align 8, !tbaa !14
  %cmp8 = icmp eq i32 %8, 6073358
  br i1 %cmp8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 197, ptr noundef @__PRETTY_FUNCTION__.H5C_dump_cache_LRU) #7
  unreachable

9:                                                ; No predecessors!
  br label %cond.end11

cond.end11:                                       ; preds = %9, %cond.true9
  %10 = load ptr, ptr %cache_name.addr, align 8, !tbaa !4
  %cmp12 = icmp ne ptr %10, null
  br i1 %cmp12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %cond.end11
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end11
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 198, ptr noundef @__PRETTY_FUNCTION__.H5C_dump_cache_LRU) #7
  unreachable

11:                                               ; No predecessors!
  br label %cond.end15

cond.end15:                                       ; preds = %11, %cond.true13
  %12 = load ptr, ptr @stdout, align 8, !tbaa !4
  %13 = load ptr, ptr %cache_name.addr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.27, ptr noundef %13)
  %14 = load ptr, ptr @stdout, align 8, !tbaa !4
  %15 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %LRU_list_len = getelementptr inbounds %struct.H5C_t, ptr %15, i32 0, i32 50
  %16 = load i32, ptr %LRU_list_len, align 8, !tbaa !38
  %17 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %LRU_list_size = getelementptr inbounds %struct.H5C_t, ptr %17, i32 0, i32 51
  %18 = load i64, ptr %LRU_list_size, align 8, !tbaa !39
  %conv = trunc i64 %18 to i32
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.28, i32 noundef %16, i32 noundef %conv)
  %19 = load ptr, ptr @stdout, align 8, !tbaa !4
  %20 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_size = getelementptr inbounds %struct.H5C_t, ptr %20, i32 0, i32 14
  %21 = load i64, ptr %index_size, align 8, !tbaa !40
  %conv17 = trunc i64 %21 to i32
  %22 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_cache_size = getelementptr inbounds %struct.H5C_t, ptr %22, i32 0, i32 6
  %23 = load i64, ptr %max_cache_size, align 8, !tbaa !41
  %conv18 = trunc i64 %23 to i32
  %24 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_cache_size19 = getelementptr inbounds %struct.H5C_t, ptr %24, i32 0, i32 6
  %25 = load i64, ptr %max_cache_size19, align 8, !tbaa !41
  %conv20 = trunc i64 %25 to i32
  %26 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_size21 = getelementptr inbounds %struct.H5C_t, ptr %26, i32 0, i32 14
  %27 = load i64, ptr %index_size21, align 8, !tbaa !40
  %conv22 = trunc i64 %27 to i32
  %sub = sub nsw i32 %conv20, %conv22
  %call23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.29, i32 noundef %conv17, i32 noundef %conv18, i32 noundef %sub)
  %28 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.8)
  %29 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.9)
  %30 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.10)
  %31 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.11)
  %32 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.12)
  %33 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.13)
  %34 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.30)
  %35 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.15)
  %36 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.16)
  %37 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %LRU_head_ptr = getelementptr inbounds %struct.H5C_t, ptr %37, i32 0, i32 52
  %38 = load ptr, ptr %LRU_head_ptr, align 8, !tbaa !42
  store ptr %38, ptr %entry_ptr, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %if.end49, %cond.end15
  %39 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp33 = icmp ne ptr %39, null
  br i1 %cmp33, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %40 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %magic35 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %40, i32 0, i32 0
  %41 = load i32, ptr %magic35, align 8, !tbaa !22
  %cmp36 = icmp eq i32 %41, 6073354
  br i1 %cmp36, label %cond.true38, label %cond.false39

cond.true38:                                      ; preds = %while.body
  br label %cond.end40

cond.false39:                                     ; preds = %while.body
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 222, ptr noundef @__PRETTY_FUNCTION__.H5C_dump_cache_LRU) #7
  unreachable

42:                                               ; No predecessors!
  br label %cond.end40

cond.end40:                                       ; preds = %42, %cond.true38
  %43 = load ptr, ptr @stdout, align 8, !tbaa !4
  %44 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix = getelementptr inbounds %struct.H5C_t, ptr %44, i32 0, i32 153
  %arraydecay = getelementptr inbounds [32 x i8], ptr %prefix, i64 0, i64 0
  %45 = load i32, ptr %i, align 4, !tbaa !8
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef @.str.17, ptr noundef %arraydecay, i32 noundef %45)
  %46 = load ptr, ptr @stdout, align 8, !tbaa !4
  %47 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %addr = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %47, i32 0, i32 2
  %48 = load i64, ptr %addr, align 8, !tbaa !25
  %call42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.18, i64 noundef %48)
  %49 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %tag_info = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %49, i32 0, i32 48
  %50 = load ptr, ptr %tag_info, align 8, !tbaa !26
  %cmp43 = icmp eq ptr null, %50
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %cond.end40
  %51 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef @.str.19, ptr noundef @.str.20)
  br label %if.end49

if.else:                                          ; preds = %cond.end40
  %52 = load ptr, ptr @stdout, align 8, !tbaa !4
  %53 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %tag_info47 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %53, i32 0, i32 48
  %54 = load ptr, ptr %tag_info47, align 8, !tbaa !26
  %tag = getelementptr inbounds %struct.H5C_tag_info_t, ptr %54, i32 0, i32 0
  %55 = load i64, ptr %tag, align 8, !tbaa !27
  %call48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @.str.18, i64 noundef %55)
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then45
  %56 = load ptr, ptr @stdout, align 8, !tbaa !4
  %57 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %57, i32 0, i32 3
  %58 = load i64, ptr %size, align 8, !tbaa !29
  %call50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef @.str.21, i64 noundef %58)
  %59 = load ptr, ptr @stdout, align 8, !tbaa !4
  %60 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ring = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %60, i32 0, i32 18
  %61 = load i32, ptr %ring, align 8, !tbaa !30
  %call51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @.str.22, i32 noundef %61)
  %62 = load ptr, ptr @stdout, align 8, !tbaa !4
  %63 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %63, i32 0, i32 6
  %64 = load ptr, ptr %type, align 8, !tbaa !31
  %id = getelementptr inbounds %struct.H5C_class_t, ptr %64, i32 0, i32 0
  %65 = load i32, ptr %id, align 8, !tbaa !32
  %66 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %type52 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %66, i32 0, i32 6
  %67 = load ptr, ptr %type52, align 8, !tbaa !31
  %name = getelementptr inbounds %struct.H5C_class_t, ptr %67, i32 0, i32 1
  %68 = load ptr, ptr %name, align 8, !tbaa !34
  %call53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef @.str.23, i32 noundef %65, ptr noundef %68)
  %69 = load ptr, ptr @stdout, align 8, !tbaa !4
  %70 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %is_dirty = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %70, i32 0, i32 7
  %71 = load i8, ptr %is_dirty, align 8, !tbaa !37, !range !12, !noundef !13
  %tobool54 = trunc i8 %71 to i1
  %conv55 = zext i1 %tobool54 to i32
  %call56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @.str.24, i32 noundef %conv55)
  %72 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef @.str.15)
  %73 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %73, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  %74 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %74, i32 0, i32 31
  %75 = load ptr, ptr %next, align 8, !tbaa !43
  store ptr %75, ptr %entry_ptr, align 8, !tbaa !4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %76 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef @.str.16)
  br label %if.end59

if.end59:                                         ; preds = %while.end, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_ptr) #6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @H5C_dump_cache_skip_list(ptr noundef %cache_ptr, ptr noundef %calling_fcn) #0 {
entry:
  %cache_ptr.addr = alloca ptr, align 8
  %calling_fcn.addr = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  %i = alloca i32, align 4
  %entry_ptr = alloca ptr, align 8
  %node_ptr = alloca ptr, align 8
  store ptr %cache_ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  store ptr %calling_fcn, ptr %calling_fcn.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #6
  store i32 0, ptr %ret_value, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_ptr) #6
  store ptr null, ptr %entry_ptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %node_ptr) #6
  store ptr null, ptr %node_ptr, align 8, !tbaa !4
  %0 = load i8, ptr @H5C_dump_cache_skip_list.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr @H5C_dump_cache_skip_list.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr @H5C_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  store i8 1, ptr @H5C_init_g, align 1, !tbaa !10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %3 = load i8, ptr @H5C_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool5 = trunc i8 %3 to i1
  br i1 %tobool5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %4 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool6 = trunc i8 %4 to i1
  br i1 %tobool6, label %if.end52, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false, %if.end4
  %5 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cmp = icmp ne ptr %5, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then7
  br label %cond.end

cond.false:                                       ; preds = %if.then7
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 282, ptr noundef @__PRETTY_FUNCTION__.H5C_dump_cache_skip_list) #7
  unreachable

6:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  %7 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %magic = getelementptr inbounds %struct.H5C_t, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %magic, align 8, !tbaa !14
  %cmp8 = icmp eq i32 %8, 6073358
  br i1 %cmp8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 283, ptr noundef @__PRETTY_FUNCTION__.H5C_dump_cache_skip_list) #7
  unreachable

9:                                                ; No predecessors!
  br label %cond.end11

cond.end11:                                       ; preds = %9, %cond.true9
  %10 = load ptr, ptr %calling_fcn.addr, align 8, !tbaa !4
  %cmp12 = icmp ne ptr %10, null
  br i1 %cmp12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %cond.end11
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end11
  call void @__assert_fail(ptr noundef @.str.31, ptr noundef @.str.1, i32 noundef 284, ptr noundef @__PRETTY_FUNCTION__.H5C_dump_cache_skip_list) #7
  unreachable

11:                                               ; No predecessors!
  br label %cond.end15

cond.end15:                                       ; preds = %11, %cond.true13
  %12 = load ptr, ptr @stdout, align 8, !tbaa !4
  %13 = load ptr, ptr %calling_fcn.addr, align 8, !tbaa !4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.32, ptr noundef %13)
  %14 = load ptr, ptr @stdout, align 8, !tbaa !4
  %15 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %slist_enabled = getelementptr inbounds %struct.H5C_t, ptr %15, i32 0, i32 29
  %16 = load i8, ptr %slist_enabled, align 8, !tbaa !44, !range !12, !noundef !13
  %tobool16 = trunc i8 %16 to i1
  %17 = zext i1 %tobool16 to i64
  %cond = select i1 %tobool16, ptr @.str.34, ptr @.str.35
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.33, ptr noundef %cond)
  %18 = load ptr, ptr @stdout, align 8, !tbaa !4
  %19 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %slist_len = getelementptr inbounds %struct.H5C_t, ptr %19, i32 0, i32 31
  %20 = load i32, ptr %slist_len, align 4, !tbaa !45
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.36, i32 noundef %20)
  %21 = load ptr, ptr @stdout, align 8, !tbaa !4
  %22 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %slist_size = getelementptr inbounds %struct.H5C_t, ptr %22, i32 0, i32 32
  %23 = load i64, ptr %slist_size, align 8, !tbaa !46
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.37, i64 noundef %23)
  %24 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %slist_len20 = getelementptr inbounds %struct.H5C_t, ptr %24, i32 0, i32 31
  %25 = load i32, ptr %slist_len20, align 4, !tbaa !45
  %cmp21 = icmp ugt i32 %25, 0
  br i1 %cmp21, label %if.then22, label %if.end50

if.then22:                                        ; preds = %cond.end15
  %26 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.38)
  store i32 0, ptr %i, align 4, !tbaa !8
  %27 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %slist_ptr = getelementptr inbounds %struct.H5C_t, ptr %27, i32 0, i32 35
  %28 = load ptr, ptr %slist_ptr, align 8, !tbaa !47
  %call24 = call ptr @H5SL_first(ptr noundef %28)
  store ptr %call24, ptr %node_ptr, align 8, !tbaa !4
  %29 = load ptr, ptr %node_ptr, align 8, !tbaa !4
  %cmp25 = icmp ne ptr %29, null
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then22
  %30 = load ptr, ptr %node_ptr, align 8, !tbaa !4
  %call27 = call ptr @H5SL_item(ptr noundef %30)
  store ptr %call27, ptr %entry_ptr, align 8, !tbaa !4
  br label %if.end28

if.else:                                          ; preds = %if.then22
  store ptr null, ptr %entry_ptr, align 8, !tbaa !4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then26
  br label %while.cond

while.cond:                                       ; preds = %if.end49, %if.end28
  %31 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp29 = icmp ne ptr %31, null
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %magic30 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %32, i32 0, i32 0
  %33 = load i32, ptr %magic30, align 8, !tbaa !22
  %cmp31 = icmp eq i32 %33, 6073354
  br i1 %cmp31, label %cond.true32, label %cond.false33

cond.true32:                                      ; preds = %while.body
  br label %cond.end34

cond.false33:                                     ; preds = %while.body
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 313, ptr noundef @__PRETTY_FUNCTION__.H5C_dump_cache_skip_list) #7
  unreachable

34:                                               ; No predecessors!
  br label %cond.end34

cond.end34:                                       ; preds = %34, %cond.true32
  %35 = load ptr, ptr @stdout, align 8, !tbaa !4
  %36 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix = getelementptr inbounds %struct.H5C_t, ptr %36, i32 0, i32 153
  %arraydecay = getelementptr inbounds [32 x i8], ptr %prefix, i64 0, i64 0
  %37 = load i32, ptr %i, align 4, !tbaa !8
  %38 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %addr = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %38, i32 0, i32 2
  %39 = load i64, ptr %addr, align 8, !tbaa !25
  %40 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %40, i32 0, i32 3
  %41 = load i64, ptr %size, align 8, !tbaa !29
  %42 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %is_protected = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %42, i32 0, i32 9
  %43 = load i8, ptr %is_protected, align 2, !tbaa !35, !range !12, !noundef !13
  %tobool35 = trunc i8 %43 to i1
  %conv = zext i1 %tobool35 to i32
  %44 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %is_pinned = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %44, i32 0, i32 12
  %45 = load i8, ptr %is_pinned, align 8, !tbaa !36, !range !12, !noundef !13
  %tobool36 = trunc i8 %45 to i1
  %conv37 = zext i1 %tobool36 to i32
  %46 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %is_dirty = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %46, i32 0, i32 7
  %47 = load i8, ptr %is_dirty, align 8, !tbaa !37, !range !12, !noundef !13
  %tobool38 = trunc i8 %47 to i1
  %conv39 = zext i1 %tobool38 to i32
  %48 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %48, i32 0, i32 6
  %49 = load ptr, ptr %type, align 8, !tbaa !31
  %name = getelementptr inbounds %struct.H5C_class_t, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %name, align 8, !tbaa !34
  %call40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.39, ptr noundef %arraydecay, i32 noundef %37, i64 noundef %39, i64 noundef %41, i32 noundef %conv, i32 noundef %conv37, i32 noundef %conv39, ptr noundef %50)
  %51 = load ptr, ptr @stdout, align 8, !tbaa !4
  %52 = load ptr, ptr %node_ptr, align 8, !tbaa !4
  %53 = load ptr, ptr %node_ptr, align 8, !tbaa !4
  %call41 = call ptr @H5SL_item(ptr noundef %53)
  %call42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef @.str.40, ptr noundef %52, ptr noundef %call41)
  %54 = load ptr, ptr %node_ptr, align 8, !tbaa !4
  %call43 = call ptr @H5SL_next(ptr noundef %54)
  store ptr %call43, ptr %node_ptr, align 8, !tbaa !4
  %55 = load ptr, ptr %node_ptr, align 8, !tbaa !4
  %cmp44 = icmp ne ptr %55, null
  br i1 %cmp44, label %if.then46, label %if.else48

if.then46:                                        ; preds = %cond.end34
  %56 = load ptr, ptr %node_ptr, align 8, !tbaa !4
  %call47 = call ptr @H5SL_item(ptr noundef %56)
  store ptr %call47, ptr %entry_ptr, align 8, !tbaa !4
  br label %if.end49

if.else48:                                        ; preds = %cond.end34
  store ptr null, ptr %entry_ptr, align 8, !tbaa !4
  br label %if.end49

if.end49:                                         ; preds = %if.else48, %if.then46
  %57 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %57, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end50

if.end50:                                         ; preds = %while.end, %cond.end15
  %58 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @.str.25)
  br label %if.end52

if.end52:                                         ; preds = %if.end50, %lor.lhs.false
  %59 = load i32, ptr %ret_value, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %node_ptr) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_ptr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #6
  ret i32 %59
}

declare ptr @H5SL_first(ptr noundef) #3

declare ptr @H5SL_item(ptr noundef) #3

declare ptr @H5SL_next(ptr noundef) #3

; Function Attrs: nounwind uwtable
define i32 @H5C_set_prefix(ptr noundef %cache_ptr, ptr noundef %prefix) #0 {
entry:
  %cache_ptr.addr = alloca ptr, align 8
  %prefix.addr = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  store ptr %cache_ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  store ptr %prefix, ptr %prefix.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #6
  store i32 0, ptr %ret_value, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #6
  store i8 0, ptr %err_occurred, align 1, !tbaa !10
  %0 = load i8, ptr @H5C_set_prefix.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr @H5C_set_prefix.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr @H5C_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  store i8 1, ptr @H5C_init_g, align 1, !tbaa !10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %3 = load i8, ptr @H5C_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool5 = trunc i8 %3 to i1
  br i1 %tobool5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %4 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool6 = trunc i8 %4 to i1
  br i1 %tobool6, label %if.end22, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false, %if.end4
  %5 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then14, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.then7
  %6 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %magic = getelementptr inbounds %struct.H5C_t, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %magic, align 8, !tbaa !14
  %cmp9 = icmp ne i32 %7, 6073358
  br i1 %cmp9, label %if.then14, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %8 = load ptr, ptr %prefix.addr, align 8, !tbaa !4
  %cmp11 = icmp eq ptr %8, null
  br i1 %cmp11, label %if.then14, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %9 = load ptr, ptr %prefix.addr, align 8, !tbaa !4
  %call = call i64 @strlen(ptr noundef %9) #8
  %cmp13 = icmp uge i64 %call, 32
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false8, %if.then7
  %10 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %11 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %12 = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !21
  %call15 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_set_prefix, i32 noundef 369, i64 noundef %10, i64 noundef %11, i64 noundef %12, ptr noundef @.str.41)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %13 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool16 = trunc i8 %13 to i1
  %frombool = zext i1 %tobool16 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !8
  br label %done

if.end17:                                         ; preds = %lor.lhs.false12
  %14 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix18 = getelementptr inbounds %struct.H5C_t, ptr %14, i32 0, i32 153
  %arrayidx = getelementptr inbounds [32 x i8], ptr %prefix18, i64 0, i64 0
  %15 = load ptr, ptr %prefix.addr, align 8, !tbaa !4
  %call19 = call ptr @strncpy(ptr noundef %arrayidx, ptr noundef %15, i64 noundef 32) #6
  %16 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix20 = getelementptr inbounds %struct.H5C_t, ptr %16, i32 0, i32 153
  %arrayidx21 = getelementptr inbounds [32 x i8], ptr %prefix20, i64 0, i64 31
  store i8 0, ptr %arrayidx21, align 1, !tbaa !48
  br label %done

done:                                             ; preds = %if.end17, %if.then14
  br label %if.end22

if.end22:                                         ; preds = %done, %lor.lhs.false
  %17 = load i32, ptr %ret_value, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #6
  ret i32 %17
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: nounwind uwtable
define i32 @H5C_stats(ptr noundef %cache_ptr, ptr noundef %cache_name, i1 noundef zeroext %display_detailed_stats) #0 {
entry:
  %cache_ptr.addr = alloca ptr, align 8
  %cache_name.addr = alloca ptr, align 8
  %display_detailed_stats.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %total_hits = alloca i64, align 8
  %total_misses = alloca i64, align 8
  %total_write_protects = alloca i64, align 8
  %total_read_protects = alloca i64, align 8
  %max_read_protects = alloca i64, align 8
  %total_insertions = alloca i64, align 8
  %total_pinned_insertions = alloca i64, align 8
  %total_clears = alloca i64, align 8
  %total_flushes = alloca i64, align 8
  %total_evictions = alloca i64, align 8
  %total_take_ownerships = alloca i64, align 8
  %total_moves = alloca i64, align 8
  %total_entry_flush_moves = alloca i64, align 8
  %total_cache_flush_moves = alloca i64, align 8
  %total_size_increases = alloca i64, align 8
  %total_size_decreases = alloca i64, align 8
  %total_entry_flush_size_changes = alloca i64, align 8
  %total_cache_flush_size_changes = alloca i64, align 8
  %total_pins = alloca i64, align 8
  %total_unpins = alloca i64, align 8
  %total_dirty_pins = alloca i64, align 8
  %total_pinned_flushes = alloca i64, align 8
  %total_pinned_clears = alloca i64, align 8
  %aggregate_max_accesses = alloca i32, align 4
  %aggregate_min_accesses = alloca i32, align 4
  %aggregate_max_clears = alloca i32, align 4
  %aggregate_max_flushes = alloca i32, align 4
  %aggregate_max_size = alloca i64, align 8
  %aggregate_max_pins = alloca i32, align 4
  %hit_rate = alloca double, align 8
  %prefetch_use_rate = alloca double, align 8
  %average_successful_search_depth = alloca double, align 8
  %average_failed_search_depth = alloca double, align 8
  %average_entries_skipped_per_calls_to_msic = alloca double, align 8
  %average_dirty_pf_entries_skipped_per_call_to_msic = alloca double, align 8
  %average_entries_scanned_per_calls_to_msic = alloca double, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  store ptr %cache_ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  store ptr %cache_name, ptr %cache_name.addr, align 8, !tbaa !4
  %frombool = zext i1 %display_detailed_stats to i8
  store i8 %frombool, ptr %display_detailed_stats.addr, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_hits) #6
  store i64 0, ptr %total_hits, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_misses) #6
  store i64 0, ptr %total_misses, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_write_protects) #6
  store i64 0, ptr %total_write_protects, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_read_protects) #6
  store i64 0, ptr %total_read_protects, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_read_protects) #6
  store i64 0, ptr %max_read_protects, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_insertions) #6
  store i64 0, ptr %total_insertions, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_pinned_insertions) #6
  store i64 0, ptr %total_pinned_insertions, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_clears) #6
  store i64 0, ptr %total_clears, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_flushes) #6
  store i64 0, ptr %total_flushes, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_evictions) #6
  store i64 0, ptr %total_evictions, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_take_ownerships) #6
  store i64 0, ptr %total_take_ownerships, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_moves) #6
  store i64 0, ptr %total_moves, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_entry_flush_moves) #6
  store i64 0, ptr %total_entry_flush_moves, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_cache_flush_moves) #6
  store i64 0, ptr %total_cache_flush_moves, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_size_increases) #6
  store i64 0, ptr %total_size_increases, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_size_decreases) #6
  store i64 0, ptr %total_size_decreases, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_entry_flush_size_changes) #6
  store i64 0, ptr %total_entry_flush_size_changes, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_cache_flush_size_changes) #6
  store i64 0, ptr %total_cache_flush_size_changes, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_pins) #6
  store i64 0, ptr %total_pins, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_unpins) #6
  store i64 0, ptr %total_unpins, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_dirty_pins) #6
  store i64 0, ptr %total_dirty_pins, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_pinned_flushes) #6
  store i64 0, ptr %total_pinned_flushes, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_pinned_clears) #6
  store i64 0, ptr %total_pinned_clears, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %aggregate_max_accesses) #6
  store i32 0, ptr %aggregate_max_accesses, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %aggregate_min_accesses) #6
  store i32 1000000, ptr %aggregate_min_accesses, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %aggregate_max_clears) #6
  store i32 0, ptr %aggregate_max_clears, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %aggregate_max_flushes) #6
  store i32 0, ptr %aggregate_max_flushes, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %aggregate_max_size) #6
  store i64 0, ptr %aggregate_max_size, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %aggregate_max_pins) #6
  store i32 0, ptr %aggregate_max_pins, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %hit_rate) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %prefetch_use_rate) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %average_successful_search_depth) #6
  store double 0.000000e+00, ptr %average_successful_search_depth, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr %average_failed_search_depth) #6
  store double 0.000000e+00, ptr %average_failed_search_depth, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr %average_entries_skipped_per_calls_to_msic) #6
  store double 0.000000e+00, ptr %average_entries_skipped_per_calls_to_msic, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr %average_dirty_pf_entries_skipped_per_call_to_msic) #6
  store double 0.000000e+00, ptr %average_dirty_pf_entries_skipped_per_call_to_msic, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr %average_entries_scanned_per_calls_to_msic) #6
  store double 0.000000e+00, ptr %average_entries_scanned_per_calls_to_msic, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #6
  store i32 0, ptr %ret_value, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #6
  store i8 0, ptr %err_occurred, align 1, !tbaa !10
  %0 = load i8, ptr @H5C_stats.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr @H5C_stats.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr @H5C_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  store i8 1, ptr @H5C_init_g, align 1, !tbaa !10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %3 = load i8, ptr @H5C_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool5 = trunc i8 %3 to i1
  br i1 %tobool5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %4 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool6 = trunc i8 %4 to i1
  br i1 %tobool6, label %if.end508, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false, %if.end4
  %5 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %magic = getelementptr inbounds %struct.H5C_t, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %magic, align 8, !tbaa !14
  %cmp = icmp eq i32 %6, 6073358
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then7
  br label %cond.end

cond.false:                                       ; preds = %if.then7
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 442, ptr noundef @__PRETTY_FUNCTION__.H5C_stats) #7
  unreachable

7:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %7, %cond.true
  %8 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cmp8 = icmp eq ptr null, %8
  br i1 %cmp8, label %if.then14, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %cond.end
  %9 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %magic10 = getelementptr inbounds %struct.H5C_t, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %magic10, align 8, !tbaa !14
  %cmp11 = icmp ne i32 %10, 6073358
  br i1 %cmp11, label %if.then14, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %11 = load ptr, ptr %cache_name.addr, align 8, !tbaa !4
  %cmp13 = icmp eq ptr null, %11
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %lor.lhs.false12, %lor.lhs.false9, %cond.end
  %12 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %13 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %14 = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !21
  %call = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_stats, i32 noundef 448, i64 noundef %12, i64 noundef %13, i64 noundef %14, ptr noundef @.str.42)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %15 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool15 = trunc i8 %15 to i1
  %frombool16 = zext i1 %tobool15 to i8
  store i8 %frombool16, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !8
  br label %done

if.end17:                                         ; preds = %lor.lhs.false12
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end17
  %16 = load i32, ptr %i, align 4, !tbaa !8
  %17 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_type_id = getelementptr inbounds %struct.H5C_t, ptr %17, i32 0, i32 4
  %18 = load i32, ptr %max_type_id, align 8, !tbaa !50
  %cmp18 = icmp sle i32 %16, %18
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %hits = getelementptr inbounds %struct.H5C_t, ptr %19, i32 0, i32 90
  %20 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [31 x i64], ptr %hits, i64 0, i64 %idxprom
  %21 = load i64, ptr %arrayidx, align 8, !tbaa !21
  %22 = load i64, ptr %total_hits, align 8, !tbaa !21
  %add = add nsw i64 %22, %21
  store i64 %add, ptr %total_hits, align 8, !tbaa !21
  %23 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %misses = getelementptr inbounds %struct.H5C_t, ptr %23, i32 0, i32 91
  %24 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom19 = sext i32 %24 to i64
  %arrayidx20 = getelementptr inbounds [31 x i64], ptr %misses, i64 0, i64 %idxprom19
  %25 = load i64, ptr %arrayidx20, align 8, !tbaa !21
  %26 = load i64, ptr %total_misses, align 8, !tbaa !21
  %add21 = add nsw i64 %26, %25
  store i64 %add21, ptr %total_misses, align 8, !tbaa !21
  %27 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %write_protects = getelementptr inbounds %struct.H5C_t, ptr %27, i32 0, i32 92
  %28 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom22 = sext i32 %28 to i64
  %arrayidx23 = getelementptr inbounds [31 x i64], ptr %write_protects, i64 0, i64 %idxprom22
  %29 = load i64, ptr %arrayidx23, align 8, !tbaa !21
  %30 = load i64, ptr %total_write_protects, align 8, !tbaa !21
  %add24 = add nsw i64 %30, %29
  store i64 %add24, ptr %total_write_protects, align 8, !tbaa !21
  %31 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %read_protects = getelementptr inbounds %struct.H5C_t, ptr %31, i32 0, i32 93
  %32 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom25 = sext i32 %32 to i64
  %arrayidx26 = getelementptr inbounds [31 x i64], ptr %read_protects, i64 0, i64 %idxprom25
  %33 = load i64, ptr %arrayidx26, align 8, !tbaa !21
  %34 = load i64, ptr %total_read_protects, align 8, !tbaa !21
  %add27 = add nsw i64 %34, %33
  store i64 %add27, ptr %total_read_protects, align 8, !tbaa !21
  %35 = load i64, ptr %max_read_protects, align 8, !tbaa !21
  %36 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_read_protects28 = getelementptr inbounds %struct.H5C_t, ptr %36, i32 0, i32 94
  %37 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom29 = sext i32 %37 to i64
  %arrayidx30 = getelementptr inbounds [31 x i32], ptr %max_read_protects28, i64 0, i64 %idxprom29
  %38 = load i32, ptr %arrayidx30, align 4, !tbaa !8
  %conv = sext i32 %38 to i64
  %cmp31 = icmp slt i64 %35, %conv
  br i1 %cmp31, label %if.then33, label %if.end38

if.then33:                                        ; preds = %for.body
  %39 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_read_protects34 = getelementptr inbounds %struct.H5C_t, ptr %39, i32 0, i32 94
  %40 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom35 = sext i32 %40 to i64
  %arrayidx36 = getelementptr inbounds [31 x i32], ptr %max_read_protects34, i64 0, i64 %idxprom35
  %41 = load i32, ptr %arrayidx36, align 4, !tbaa !8
  %conv37 = sext i32 %41 to i64
  store i64 %conv37, ptr %max_read_protects, align 8, !tbaa !21
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %for.body
  %42 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %insertions = getelementptr inbounds %struct.H5C_t, ptr %42, i32 0, i32 95
  %43 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom39 = sext i32 %43 to i64
  %arrayidx40 = getelementptr inbounds [31 x i64], ptr %insertions, i64 0, i64 %idxprom39
  %44 = load i64, ptr %arrayidx40, align 8, !tbaa !21
  %45 = load i64, ptr %total_insertions, align 8, !tbaa !21
  %add41 = add nsw i64 %45, %44
  store i64 %add41, ptr %total_insertions, align 8, !tbaa !21
  %46 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %pinned_insertions = getelementptr inbounds %struct.H5C_t, ptr %46, i32 0, i32 96
  %47 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom42 = sext i32 %47 to i64
  %arrayidx43 = getelementptr inbounds [31 x i64], ptr %pinned_insertions, i64 0, i64 %idxprom42
  %48 = load i64, ptr %arrayidx43, align 8, !tbaa !21
  %49 = load i64, ptr %total_pinned_insertions, align 8, !tbaa !21
  %add44 = add nsw i64 %49, %48
  store i64 %add44, ptr %total_pinned_insertions, align 8, !tbaa !21
  %50 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %clears = getelementptr inbounds %struct.H5C_t, ptr %50, i32 0, i32 97
  %51 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom45 = sext i32 %51 to i64
  %arrayidx46 = getelementptr inbounds [31 x i64], ptr %clears, i64 0, i64 %idxprom45
  %52 = load i64, ptr %arrayidx46, align 8, !tbaa !21
  %53 = load i64, ptr %total_clears, align 8, !tbaa !21
  %add47 = add nsw i64 %53, %52
  store i64 %add47, ptr %total_clears, align 8, !tbaa !21
  %54 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %flushes = getelementptr inbounds %struct.H5C_t, ptr %54, i32 0, i32 98
  %55 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom48 = sext i32 %55 to i64
  %arrayidx49 = getelementptr inbounds [31 x i64], ptr %flushes, i64 0, i64 %idxprom48
  %56 = load i64, ptr %arrayidx49, align 8, !tbaa !21
  %57 = load i64, ptr %total_flushes, align 8, !tbaa !21
  %add50 = add nsw i64 %57, %56
  store i64 %add50, ptr %total_flushes, align 8, !tbaa !21
  %58 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %evictions = getelementptr inbounds %struct.H5C_t, ptr %58, i32 0, i32 99
  %59 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom51 = sext i32 %59 to i64
  %arrayidx52 = getelementptr inbounds [31 x i64], ptr %evictions, i64 0, i64 %idxprom51
  %60 = load i64, ptr %arrayidx52, align 8, !tbaa !21
  %61 = load i64, ptr %total_evictions, align 8, !tbaa !21
  %add53 = add nsw i64 %61, %60
  store i64 %add53, ptr %total_evictions, align 8, !tbaa !21
  %62 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %take_ownerships = getelementptr inbounds %struct.H5C_t, ptr %62, i32 0, i32 100
  %63 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom54 = sext i32 %63 to i64
  %arrayidx55 = getelementptr inbounds [31 x i64], ptr %take_ownerships, i64 0, i64 %idxprom54
  %64 = load i64, ptr %arrayidx55, align 8, !tbaa !21
  %65 = load i64, ptr %total_take_ownerships, align 8, !tbaa !21
  %add56 = add nsw i64 %65, %64
  store i64 %add56, ptr %total_take_ownerships, align 8, !tbaa !21
  %66 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %moves = getelementptr inbounds %struct.H5C_t, ptr %66, i32 0, i32 101
  %67 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom57 = sext i32 %67 to i64
  %arrayidx58 = getelementptr inbounds [31 x i64], ptr %moves, i64 0, i64 %idxprom57
  %68 = load i64, ptr %arrayidx58, align 8, !tbaa !21
  %69 = load i64, ptr %total_moves, align 8, !tbaa !21
  %add59 = add nsw i64 %69, %68
  store i64 %add59, ptr %total_moves, align 8, !tbaa !21
  %70 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %entry_flush_moves = getelementptr inbounds %struct.H5C_t, ptr %70, i32 0, i32 102
  %71 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom60 = sext i32 %71 to i64
  %arrayidx61 = getelementptr inbounds [31 x i64], ptr %entry_flush_moves, i64 0, i64 %idxprom60
  %72 = load i64, ptr %arrayidx61, align 8, !tbaa !21
  %73 = load i64, ptr %total_entry_flush_moves, align 8, !tbaa !21
  %add62 = add nsw i64 %73, %72
  store i64 %add62, ptr %total_entry_flush_moves, align 8, !tbaa !21
  %74 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cache_flush_moves = getelementptr inbounds %struct.H5C_t, ptr %74, i32 0, i32 103
  %75 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom63 = sext i32 %75 to i64
  %arrayidx64 = getelementptr inbounds [31 x i64], ptr %cache_flush_moves, i64 0, i64 %idxprom63
  %76 = load i64, ptr %arrayidx64, align 8, !tbaa !21
  %77 = load i64, ptr %total_cache_flush_moves, align 8, !tbaa !21
  %add65 = add nsw i64 %77, %76
  store i64 %add65, ptr %total_cache_flush_moves, align 8, !tbaa !21
  %78 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %size_increases = getelementptr inbounds %struct.H5C_t, ptr %78, i32 0, i32 109
  %79 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom66 = sext i32 %79 to i64
  %arrayidx67 = getelementptr inbounds [31 x i64], ptr %size_increases, i64 0, i64 %idxprom66
  %80 = load i64, ptr %arrayidx67, align 8, !tbaa !21
  %81 = load i64, ptr %total_size_increases, align 8, !tbaa !21
  %add68 = add nsw i64 %81, %80
  store i64 %add68, ptr %total_size_increases, align 8, !tbaa !21
  %82 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %size_decreases = getelementptr inbounds %struct.H5C_t, ptr %82, i32 0, i32 110
  %83 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom69 = sext i32 %83 to i64
  %arrayidx70 = getelementptr inbounds [31 x i64], ptr %size_decreases, i64 0, i64 %idxprom69
  %84 = load i64, ptr %arrayidx70, align 8, !tbaa !21
  %85 = load i64, ptr %total_size_decreases, align 8, !tbaa !21
  %add71 = add nsw i64 %85, %84
  store i64 %add71, ptr %total_size_decreases, align 8, !tbaa !21
  %86 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %entry_flush_size_changes = getelementptr inbounds %struct.H5C_t, ptr %86, i32 0, i32 111
  %87 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom72 = sext i32 %87 to i64
  %arrayidx73 = getelementptr inbounds [31 x i64], ptr %entry_flush_size_changes, i64 0, i64 %idxprom72
  %88 = load i64, ptr %arrayidx73, align 8, !tbaa !21
  %89 = load i64, ptr %total_entry_flush_size_changes, align 8, !tbaa !21
  %add74 = add nsw i64 %89, %88
  store i64 %add74, ptr %total_entry_flush_size_changes, align 8, !tbaa !21
  %90 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cache_flush_size_changes = getelementptr inbounds %struct.H5C_t, ptr %90, i32 0, i32 112
  %91 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom75 = sext i32 %91 to i64
  %arrayidx76 = getelementptr inbounds [31 x i64], ptr %cache_flush_size_changes, i64 0, i64 %idxprom75
  %92 = load i64, ptr %arrayidx76, align 8, !tbaa !21
  %93 = load i64, ptr %total_cache_flush_size_changes, align 8, !tbaa !21
  %add77 = add nsw i64 %93, %92
  store i64 %add77, ptr %total_cache_flush_size_changes, align 8, !tbaa !21
  %94 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %pins = getelementptr inbounds %struct.H5C_t, ptr %94, i32 0, i32 104
  %95 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom78 = sext i32 %95 to i64
  %arrayidx79 = getelementptr inbounds [31 x i64], ptr %pins, i64 0, i64 %idxprom78
  %96 = load i64, ptr %arrayidx79, align 8, !tbaa !21
  %97 = load i64, ptr %total_pins, align 8, !tbaa !21
  %add80 = add nsw i64 %97, %96
  store i64 %add80, ptr %total_pins, align 8, !tbaa !21
  %98 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %unpins = getelementptr inbounds %struct.H5C_t, ptr %98, i32 0, i32 105
  %99 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom81 = sext i32 %99 to i64
  %arrayidx82 = getelementptr inbounds [31 x i64], ptr %unpins, i64 0, i64 %idxprom81
  %100 = load i64, ptr %arrayidx82, align 8, !tbaa !21
  %101 = load i64, ptr %total_unpins, align 8, !tbaa !21
  %add83 = add nsw i64 %101, %100
  store i64 %add83, ptr %total_unpins, align 8, !tbaa !21
  %102 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %dirty_pins = getelementptr inbounds %struct.H5C_t, ptr %102, i32 0, i32 106
  %103 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom84 = sext i32 %103 to i64
  %arrayidx85 = getelementptr inbounds [31 x i64], ptr %dirty_pins, i64 0, i64 %idxprom84
  %104 = load i64, ptr %arrayidx85, align 8, !tbaa !21
  %105 = load i64, ptr %total_dirty_pins, align 8, !tbaa !21
  %add86 = add nsw i64 %105, %104
  store i64 %add86, ptr %total_dirty_pins, align 8, !tbaa !21
  %106 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %pinned_flushes = getelementptr inbounds %struct.H5C_t, ptr %106, i32 0, i32 107
  %107 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom87 = sext i32 %107 to i64
  %arrayidx88 = getelementptr inbounds [31 x i64], ptr %pinned_flushes, i64 0, i64 %idxprom87
  %108 = load i64, ptr %arrayidx88, align 8, !tbaa !21
  %109 = load i64, ptr %total_pinned_flushes, align 8, !tbaa !21
  %add89 = add nsw i64 %109, %108
  store i64 %add89, ptr %total_pinned_flushes, align 8, !tbaa !21
  %110 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %pinned_clears = getelementptr inbounds %struct.H5C_t, ptr %110, i32 0, i32 108
  %111 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom90 = sext i32 %111 to i64
  %arrayidx91 = getelementptr inbounds [31 x i64], ptr %pinned_clears, i64 0, i64 %idxprom90
  %112 = load i64, ptr %arrayidx91, align 8, !tbaa !21
  %113 = load i64, ptr %total_pinned_clears, align 8, !tbaa !21
  %add92 = add nsw i64 %113, %112
  store i64 %add92, ptr %total_pinned_clears, align 8, !tbaa !21
  %114 = load i32, ptr %aggregate_max_accesses, align 4, !tbaa !8
  %115 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_accesses = getelementptr inbounds %struct.H5C_t, ptr %115, i32 0, i32 147
  %116 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom93 = sext i32 %116 to i64
  %arrayidx94 = getelementptr inbounds [31 x i32], ptr %max_accesses, i64 0, i64 %idxprom93
  %117 = load i32, ptr %arrayidx94, align 4, !tbaa !8
  %cmp95 = icmp slt i32 %114, %117
  br i1 %cmp95, label %if.then97, label %if.end101

if.then97:                                        ; preds = %if.end38
  %118 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_accesses98 = getelementptr inbounds %struct.H5C_t, ptr %118, i32 0, i32 147
  %119 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom99 = sext i32 %119 to i64
  %arrayidx100 = getelementptr inbounds [31 x i32], ptr %max_accesses98, i64 0, i64 %idxprom99
  %120 = load i32, ptr %arrayidx100, align 4, !tbaa !8
  store i32 %120, ptr %aggregate_max_accesses, align 4, !tbaa !8
  br label %if.end101

if.end101:                                        ; preds = %if.then97, %if.end38
  %121 = load i32, ptr %aggregate_min_accesses, align 4, !tbaa !8
  %122 = load i32, ptr %aggregate_max_accesses, align 4, !tbaa !8
  %cmp102 = icmp sgt i32 %121, %122
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.end101
  %123 = load i32, ptr %aggregate_max_accesses, align 4, !tbaa !8
  store i32 %123, ptr %aggregate_min_accesses, align 4, !tbaa !8
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.end101
  %124 = load i32, ptr %aggregate_min_accesses, align 4, !tbaa !8
  %125 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %min_accesses = getelementptr inbounds %struct.H5C_t, ptr %125, i32 0, i32 148
  %126 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom106 = sext i32 %126 to i64
  %arrayidx107 = getelementptr inbounds [31 x i32], ptr %min_accesses, i64 0, i64 %idxprom106
  %127 = load i32, ptr %arrayidx107, align 4, !tbaa !8
  %cmp108 = icmp sgt i32 %124, %127
  br i1 %cmp108, label %if.then110, label %if.end114

if.then110:                                       ; preds = %if.end105
  %128 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %min_accesses111 = getelementptr inbounds %struct.H5C_t, ptr %128, i32 0, i32 148
  %129 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom112 = sext i32 %129 to i64
  %arrayidx113 = getelementptr inbounds [31 x i32], ptr %min_accesses111, i64 0, i64 %idxprom112
  %130 = load i32, ptr %arrayidx113, align 4, !tbaa !8
  store i32 %130, ptr %aggregate_min_accesses, align 4, !tbaa !8
  br label %if.end114

if.end114:                                        ; preds = %if.then110, %if.end105
  %131 = load i32, ptr %aggregate_max_clears, align 4, !tbaa !8
  %132 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_clears = getelementptr inbounds %struct.H5C_t, ptr %132, i32 0, i32 149
  %133 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom115 = sext i32 %133 to i64
  %arrayidx116 = getelementptr inbounds [31 x i32], ptr %max_clears, i64 0, i64 %idxprom115
  %134 = load i32, ptr %arrayidx116, align 4, !tbaa !8
  %cmp117 = icmp slt i32 %131, %134
  br i1 %cmp117, label %if.then119, label %if.end123

if.then119:                                       ; preds = %if.end114
  %135 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_clears120 = getelementptr inbounds %struct.H5C_t, ptr %135, i32 0, i32 149
  %136 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom121 = sext i32 %136 to i64
  %arrayidx122 = getelementptr inbounds [31 x i32], ptr %max_clears120, i64 0, i64 %idxprom121
  %137 = load i32, ptr %arrayidx122, align 4, !tbaa !8
  store i32 %137, ptr %aggregate_max_clears, align 4, !tbaa !8
  br label %if.end123

if.end123:                                        ; preds = %if.then119, %if.end114
  %138 = load i32, ptr %aggregate_max_flushes, align 4, !tbaa !8
  %139 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_flushes = getelementptr inbounds %struct.H5C_t, ptr %139, i32 0, i32 150
  %140 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom124 = sext i32 %140 to i64
  %arrayidx125 = getelementptr inbounds [31 x i32], ptr %max_flushes, i64 0, i64 %idxprom124
  %141 = load i32, ptr %arrayidx125, align 4, !tbaa !8
  %cmp126 = icmp slt i32 %138, %141
  br i1 %cmp126, label %if.then128, label %if.end132

if.then128:                                       ; preds = %if.end123
  %142 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_flushes129 = getelementptr inbounds %struct.H5C_t, ptr %142, i32 0, i32 150
  %143 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom130 = sext i32 %143 to i64
  %arrayidx131 = getelementptr inbounds [31 x i32], ptr %max_flushes129, i64 0, i64 %idxprom130
  %144 = load i32, ptr %arrayidx131, align 4, !tbaa !8
  store i32 %144, ptr %aggregate_max_flushes, align 4, !tbaa !8
  br label %if.end132

if.end132:                                        ; preds = %if.then128, %if.end123
  %145 = load i64, ptr %aggregate_max_size, align 8, !tbaa !21
  %146 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_size = getelementptr inbounds %struct.H5C_t, ptr %146, i32 0, i32 151
  %147 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom133 = sext i32 %147 to i64
  %arrayidx134 = getelementptr inbounds [31 x i64], ptr %max_size, i64 0, i64 %idxprom133
  %148 = load i64, ptr %arrayidx134, align 8, !tbaa !21
  %cmp135 = icmp ult i64 %145, %148
  br i1 %cmp135, label %if.then137, label %if.end141

if.then137:                                       ; preds = %if.end132
  %149 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_size138 = getelementptr inbounds %struct.H5C_t, ptr %149, i32 0, i32 151
  %150 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom139 = sext i32 %150 to i64
  %arrayidx140 = getelementptr inbounds [31 x i64], ptr %max_size138, i64 0, i64 %idxprom139
  %151 = load i64, ptr %arrayidx140, align 8, !tbaa !21
  store i64 %151, ptr %aggregate_max_size, align 8, !tbaa !21
  br label %if.end141

if.end141:                                        ; preds = %if.then137, %if.end132
  %152 = load i32, ptr %aggregate_max_pins, align 4, !tbaa !8
  %153 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_pins = getelementptr inbounds %struct.H5C_t, ptr %153, i32 0, i32 152
  %154 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom142 = sext i32 %154 to i64
  %arrayidx143 = getelementptr inbounds [31 x i32], ptr %max_pins, i64 0, i64 %idxprom142
  %155 = load i32, ptr %arrayidx143, align 4, !tbaa !8
  %cmp144 = icmp slt i32 %152, %155
  br i1 %cmp144, label %if.then146, label %if.end150

if.then146:                                       ; preds = %if.end141
  %156 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_pins147 = getelementptr inbounds %struct.H5C_t, ptr %156, i32 0, i32 152
  %157 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom148 = sext i32 %157 to i64
  %arrayidx149 = getelementptr inbounds [31 x i32], ptr %max_pins147, i64 0, i64 %idxprom148
  %158 = load i32, ptr %arrayidx149, align 4, !tbaa !8
  store i32 %158, ptr %aggregate_max_pins, align 4, !tbaa !8
  br label %if.end150

if.end150:                                        ; preds = %if.then146, %if.end141
  br label %for.inc

for.inc:                                          ; preds = %if.end150
  %159 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %159, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %160 = load i64, ptr %total_hits, align 8, !tbaa !21
  %cmp151 = icmp sgt i64 %160, 0
  br i1 %cmp151, label %if.then156, label %lor.lhs.false153

lor.lhs.false153:                                 ; preds = %for.end
  %161 = load i64, ptr %total_misses, align 8, !tbaa !21
  %cmp154 = icmp sgt i64 %161, 0
  br i1 %cmp154, label %if.then156, label %if.else

if.then156:                                       ; preds = %lor.lhs.false153, %for.end
  %162 = load i64, ptr %total_hits, align 8, !tbaa !21
  %conv157 = sitofp i64 %162 to double
  %mul = fmul double 1.000000e+02, %conv157
  %163 = load i64, ptr %total_hits, align 8, !tbaa !21
  %164 = load i64, ptr %total_misses, align 8, !tbaa !21
  %add158 = add nsw i64 %163, %164
  %conv159 = sitofp i64 %add158 to double
  %div = fdiv double %mul, %conv159
  store double %div, ptr %hit_rate, align 8, !tbaa !49
  br label %if.end160

if.else:                                          ; preds = %lor.lhs.false153
  store double 0.000000e+00, ptr %hit_rate, align 8, !tbaa !49
  br label %if.end160

if.end160:                                        ; preds = %if.else, %if.then156
  %165 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %successful_ht_searches = getelementptr inbounds %struct.H5C_t, ptr %165, i32 0, i32 115
  %166 = load i64, ptr %successful_ht_searches, align 8, !tbaa !51
  %cmp161 = icmp sgt i64 %166, 0
  br i1 %cmp161, label %if.then163, label %if.end168

if.then163:                                       ; preds = %if.end160
  %167 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_successful_ht_search_depth = getelementptr inbounds %struct.H5C_t, ptr %167, i32 0, i32 116
  %168 = load i64, ptr %total_successful_ht_search_depth, align 8, !tbaa !52
  %conv164 = sitofp i64 %168 to double
  %169 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %successful_ht_searches165 = getelementptr inbounds %struct.H5C_t, ptr %169, i32 0, i32 115
  %170 = load i64, ptr %successful_ht_searches165, align 8, !tbaa !51
  %conv166 = sitofp i64 %170 to double
  %div167 = fdiv double %conv164, %conv166
  store double %div167, ptr %average_successful_search_depth, align 8, !tbaa !49
  br label %if.end168

if.end168:                                        ; preds = %if.then163, %if.end160
  %171 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %failed_ht_searches = getelementptr inbounds %struct.H5C_t, ptr %171, i32 0, i32 117
  %172 = load i64, ptr %failed_ht_searches, align 8, !tbaa !53
  %cmp169 = icmp sgt i64 %172, 0
  br i1 %cmp169, label %if.then171, label %if.end176

if.then171:                                       ; preds = %if.end168
  %173 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_failed_ht_search_depth = getelementptr inbounds %struct.H5C_t, ptr %173, i32 0, i32 118
  %174 = load i64, ptr %total_failed_ht_search_depth, align 8, !tbaa !54
  %conv172 = sitofp i64 %174 to double
  %175 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %failed_ht_searches173 = getelementptr inbounds %struct.H5C_t, ptr %175, i32 0, i32 117
  %176 = load i64, ptr %failed_ht_searches173, align 8, !tbaa !53
  %conv174 = sitofp i64 %176 to double
  %div175 = fdiv double %conv172, %conv174
  store double %div175, ptr %average_failed_search_depth, align 8, !tbaa !49
  br label %if.end176

if.end176:                                        ; preds = %if.then171, %if.end168
  %177 = load ptr, ptr @stdout, align 8, !tbaa !4
  %178 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix = getelementptr inbounds %struct.H5C_t, ptr %178, i32 0, i32 153
  %arraydecay = getelementptr inbounds [32 x i8], ptr %prefix, i64 0, i64 0
  %179 = load ptr, ptr %cache_name.addr, align 8, !tbaa !4
  %call177 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef @.str.43, ptr noundef %arraydecay, ptr noundef %179)
  %180 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call178 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef @.str.15)
  %181 = load ptr, ptr @stdout, align 8, !tbaa !4
  %182 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix179 = getelementptr inbounds %struct.H5C_t, ptr %182, i32 0, i32 153
  %arraydecay180 = getelementptr inbounds [32 x i8], ptr %prefix179, i64 0, i64 0
  %183 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_ht_insertions = getelementptr inbounds %struct.H5C_t, ptr %183, i32 0, i32 113
  %184 = load i64, ptr %total_ht_insertions, align 8, !tbaa !55
  %185 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_ht_deletions = getelementptr inbounds %struct.H5C_t, ptr %185, i32 0, i32 114
  %186 = load i64, ptr %total_ht_deletions, align 8, !tbaa !56
  %call181 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %181, ptr noundef @.str.44, ptr noundef %arraydecay180, i64 noundef %184, i64 noundef %186)
  %187 = load ptr, ptr @stdout, align 8, !tbaa !4
  %188 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix182 = getelementptr inbounds %struct.H5C_t, ptr %188, i32 0, i32 153
  %arraydecay183 = getelementptr inbounds [32 x i8], ptr %prefix182, i64 0, i64 0
  %189 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %successful_ht_searches184 = getelementptr inbounds %struct.H5C_t, ptr %189, i32 0, i32 115
  %190 = load i64, ptr %successful_ht_searches184, align 8, !tbaa !51
  %191 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %failed_ht_searches185 = getelementptr inbounds %struct.H5C_t, ptr %191, i32 0, i32 117
  %192 = load i64, ptr %failed_ht_searches185, align 8, !tbaa !53
  %call186 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %187, ptr noundef @.str.45, ptr noundef %arraydecay183, i64 noundef %190, i64 noundef %192)
  %193 = load ptr, ptr @stdout, align 8, !tbaa !4
  %194 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix187 = getelementptr inbounds %struct.H5C_t, ptr %194, i32 0, i32 153
  %arraydecay188 = getelementptr inbounds [32 x i8], ptr %prefix187, i64 0, i64 0
  %195 = load double, ptr %average_successful_search_depth, align 8, !tbaa !49
  %196 = load double, ptr %average_failed_search_depth, align 8, !tbaa !49
  %call189 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %193, ptr noundef @.str.46, ptr noundef %arraydecay188, double noundef %195, double noundef %196)
  %197 = load ptr, ptr @stdout, align 8, !tbaa !4
  %198 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix190 = getelementptr inbounds %struct.H5C_t, ptr %198, i32 0, i32 153
  %arraydecay191 = getelementptr inbounds [32 x i8], ptr %prefix190, i64 0, i64 0
  %199 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_size = getelementptr inbounds %struct.H5C_t, ptr %199, i32 0, i32 14
  %200 = load i64, ptr %index_size, align 8, !tbaa !40
  %201 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_index_size = getelementptr inbounds %struct.H5C_t, ptr %201, i32 0, i32 120
  %202 = load i64, ptr %max_index_size, align 8, !tbaa !57
  %203 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_len = getelementptr inbounds %struct.H5C_t, ptr %203, i32 0, i32 13
  %204 = load i32, ptr %index_len, align 4, !tbaa !58
  %conv192 = zext i32 %204 to i64
  %205 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_index_len = getelementptr inbounds %struct.H5C_t, ptr %205, i32 0, i32 119
  %206 = load i32, ptr %max_index_len, align 8, !tbaa !59
  %conv193 = zext i32 %206 to i64
  %call194 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %197, ptr noundef @.str.47, ptr noundef %arraydecay191, i64 noundef %200, i64 noundef %202, i64 noundef %conv192, i64 noundef %conv193)
  %207 = load ptr, ptr @stdout, align 8, !tbaa !4
  %208 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix195 = getelementptr inbounds %struct.H5C_t, ptr %208, i32 0, i32 153
  %arraydecay196 = getelementptr inbounds [32 x i8], ptr %prefix195, i64 0, i64 0
  %209 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %clean_index_size = getelementptr inbounds %struct.H5C_t, ptr %209, i32 0, i32 17
  %210 = load i64, ptr %clean_index_size, align 8, !tbaa !60
  %211 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_clean_index_size = getelementptr inbounds %struct.H5C_t, ptr %211, i32 0, i32 121
  %212 = load i64, ptr %max_clean_index_size, align 8, !tbaa !61
  %213 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %dirty_index_size = getelementptr inbounds %struct.H5C_t, ptr %213, i32 0, i32 19
  %214 = load i64, ptr %dirty_index_size, align 8, !tbaa !62
  %215 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_dirty_index_size = getelementptr inbounds %struct.H5C_t, ptr %215, i32 0, i32 122
  %216 = load i64, ptr %max_dirty_index_size, align 8, !tbaa !63
  %call197 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %207, ptr noundef @.str.48, ptr noundef %arraydecay196, i64 noundef %210, i64 noundef %212, i64 noundef %214, i64 noundef %216)
  %217 = load ptr, ptr @stdout, align 8, !tbaa !4
  %218 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix198 = getelementptr inbounds %struct.H5C_t, ptr %218, i32 0, i32 153
  %arraydecay199 = getelementptr inbounds [32 x i8], ptr %prefix198, i64 0, i64 0
  %219 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %slist_size = getelementptr inbounds %struct.H5C_t, ptr %219, i32 0, i32 32
  %220 = load i64, ptr %slist_size, align 8, !tbaa !46
  %221 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_slist_size = getelementptr inbounds %struct.H5C_t, ptr %221, i32 0, i32 124
  %222 = load i64, ptr %max_slist_size, align 8, !tbaa !64
  %223 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %slist_len = getelementptr inbounds %struct.H5C_t, ptr %223, i32 0, i32 31
  %224 = load i32, ptr %slist_len, align 4, !tbaa !45
  %conv200 = zext i32 %224 to i64
  %225 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_slist_len = getelementptr inbounds %struct.H5C_t, ptr %225, i32 0, i32 123
  %226 = load i32, ptr %max_slist_len, align 8, !tbaa !65
  %conv201 = zext i32 %226 to i64
  %call202 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %217, ptr noundef @.str.49, ptr noundef %arraydecay199, i64 noundef %220, i64 noundef %222, i64 noundef %conv200, i64 noundef %conv201)
  %227 = load ptr, ptr @stdout, align 8, !tbaa !4
  %228 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix203 = getelementptr inbounds %struct.H5C_t, ptr %228, i32 0, i32 153
  %arraydecay204 = getelementptr inbounds [32 x i8], ptr %prefix203, i64 0, i64 0
  %229 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %pl_size = getelementptr inbounds %struct.H5C_t, ptr %229, i32 0, i32 43
  %230 = load i64, ptr %pl_size, align 8, !tbaa !66
  %231 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_pl_size = getelementptr inbounds %struct.H5C_t, ptr %231, i32 0, i32 126
  %232 = load i64, ptr %max_pl_size, align 8, !tbaa !67
  %233 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %pl_len = getelementptr inbounds %struct.H5C_t, ptr %233, i32 0, i32 42
  %234 = load i32, ptr %pl_len, align 8, !tbaa !68
  %conv205 = zext i32 %234 to i64
  %235 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_pl_len = getelementptr inbounds %struct.H5C_t, ptr %235, i32 0, i32 125
  %236 = load i32, ptr %max_pl_len, align 8, !tbaa !69
  %conv206 = zext i32 %236 to i64
  %call207 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %227, ptr noundef @.str.50, ptr noundef %arraydecay204, i64 noundef %230, i64 noundef %232, i64 noundef %conv205, i64 noundef %conv206)
  %237 = load ptr, ptr @stdout, align 8, !tbaa !4
  %238 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix208 = getelementptr inbounds %struct.H5C_t, ptr %238, i32 0, i32 153
  %arraydecay209 = getelementptr inbounds [32 x i8], ptr %prefix208, i64 0, i64 0
  %239 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %pel_size = getelementptr inbounds %struct.H5C_t, ptr %239, i32 0, i32 47
  %240 = load i64, ptr %pel_size, align 8, !tbaa !70
  %241 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_pel_size = getelementptr inbounds %struct.H5C_t, ptr %241, i32 0, i32 128
  %242 = load i64, ptr %max_pel_size, align 8, !tbaa !71
  %243 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %pel_len = getelementptr inbounds %struct.H5C_t, ptr %243, i32 0, i32 46
  %244 = load i32, ptr %pel_len, align 8, !tbaa !72
  %conv210 = zext i32 %244 to i64
  %245 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_pel_len = getelementptr inbounds %struct.H5C_t, ptr %245, i32 0, i32 127
  %246 = load i32, ptr %max_pel_len, align 8, !tbaa !73
  %conv211 = zext i32 %246 to i64
  %call212 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %237, ptr noundef @.str.51, ptr noundef %arraydecay209, i64 noundef %240, i64 noundef %242, i64 noundef %conv210, i64 noundef %conv211)
  %247 = load ptr, ptr @stdout, align 8, !tbaa !4
  %248 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix213 = getelementptr inbounds %struct.H5C_t, ptr %248, i32 0, i32 153
  %arraydecay214 = getelementptr inbounds [32 x i8], ptr %prefix213, i64 0, i64 0
  %249 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %LRU_list_size = getelementptr inbounds %struct.H5C_t, ptr %249, i32 0, i32 51
  %250 = load i64, ptr %LRU_list_size, align 8, !tbaa !39
  %251 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %LRU_list_len = getelementptr inbounds %struct.H5C_t, ptr %251, i32 0, i32 50
  %252 = load i32, ptr %LRU_list_len, align 8, !tbaa !38
  %conv215 = zext i32 %252 to i64
  %call216 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %247, ptr noundef @.str.52, ptr noundef %arraydecay214, i64 noundef %250, i64 noundef %conv215)
  %253 = load ptr, ptr @stdout, align 8, !tbaa !4
  %254 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix217 = getelementptr inbounds %struct.H5C_t, ptr %254, i32 0, i32 153
  %arraydecay218 = getelementptr inbounds [32 x i8], ptr %prefix217, i64 0, i64 0
  %255 = load i64, ptr %total_hits, align 8, !tbaa !21
  %256 = load i64, ptr %total_misses, align 8, !tbaa !21
  %257 = load double, ptr %hit_rate, align 8, !tbaa !49
  %call219 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %253, ptr noundef @.str.53, ptr noundef %arraydecay218, i64 noundef %255, i64 noundef %256, double noundef %257)
  %258 = load ptr, ptr @stdout, align 8, !tbaa !4
  %259 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix220 = getelementptr inbounds %struct.H5C_t, ptr %259, i32 0, i32 153
  %arraydecay221 = getelementptr inbounds [32 x i8], ptr %prefix220, i64 0, i64 0
  %260 = load i64, ptr %total_write_protects, align 8, !tbaa !21
  %261 = load i64, ptr %total_read_protects, align 8, !tbaa !21
  %262 = load i64, ptr %max_read_protects, align 8, !tbaa !21
  %call222 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %258, ptr noundef @.str.54, ptr noundef %arraydecay221, i64 noundef %260, i64 noundef %261, i64 noundef %262)
  %263 = load ptr, ptr @stdout, align 8, !tbaa !4
  %264 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix223 = getelementptr inbounds %struct.H5C_t, ptr %264, i32 0, i32 153
  %arraydecay224 = getelementptr inbounds [32 x i8], ptr %prefix223, i64 0, i64 0
  %265 = load i64, ptr %total_clears, align 8, !tbaa !21
  %266 = load i64, ptr %total_flushes, align 8, !tbaa !21
  %call225 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %263, ptr noundef @.str.55, ptr noundef %arraydecay224, i64 noundef %265, i64 noundef %266)
  %267 = load ptr, ptr @stdout, align 8, !tbaa !4
  %268 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix226 = getelementptr inbounds %struct.H5C_t, ptr %268, i32 0, i32 153
  %arraydecay227 = getelementptr inbounds [32 x i8], ptr %prefix226, i64 0, i64 0
  %269 = load i64, ptr %total_evictions, align 8, !tbaa !21
  %270 = load i64, ptr %total_take_ownerships, align 8, !tbaa !21
  %call228 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %267, ptr noundef @.str.56, ptr noundef %arraydecay227, i64 noundef %269, i64 noundef %270)
  %271 = load ptr, ptr @stdout, align 8, !tbaa !4
  %272 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix229 = getelementptr inbounds %struct.H5C_t, ptr %272, i32 0, i32 153
  %arraydecay230 = getelementptr inbounds [32 x i8], ptr %prefix229, i64 0, i64 0
  %273 = load i64, ptr %total_insertions, align 8, !tbaa !21
  %274 = load i64, ptr %total_pinned_insertions, align 8, !tbaa !21
  %275 = load i64, ptr %total_moves, align 8, !tbaa !21
  %call231 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %271, ptr noundef @.str.57, ptr noundef %arraydecay230, i64 noundef %273, i64 noundef %274, i64 noundef %275)
  %276 = load ptr, ptr @stdout, align 8, !tbaa !4
  %277 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix232 = getelementptr inbounds %struct.H5C_t, ptr %277, i32 0, i32 153
  %arraydecay233 = getelementptr inbounds [32 x i8], ptr %prefix232, i64 0, i64 0
  %278 = load i64, ptr %total_entry_flush_moves, align 8, !tbaa !21
  %279 = load i64, ptr %total_cache_flush_moves, align 8, !tbaa !21
  %call234 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %276, ptr noundef @.str.58, ptr noundef %arraydecay233, i64 noundef %278, i64 noundef %279)
  %280 = load ptr, ptr @stdout, align 8, !tbaa !4
  %281 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix235 = getelementptr inbounds %struct.H5C_t, ptr %281, i32 0, i32 153
  %arraydecay236 = getelementptr inbounds [32 x i8], ptr %prefix235, i64 0, i64 0
  %282 = load i64, ptr %total_size_increases, align 8, !tbaa !21
  %283 = load i64, ptr %total_size_decreases, align 8, !tbaa !21
  %call237 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %280, ptr noundef @.str.59, ptr noundef %arraydecay236, i64 noundef %282, i64 noundef %283)
  %284 = load ptr, ptr @stdout, align 8, !tbaa !4
  %285 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix238 = getelementptr inbounds %struct.H5C_t, ptr %285, i32 0, i32 153
  %arraydecay239 = getelementptr inbounds [32 x i8], ptr %prefix238, i64 0, i64 0
  %286 = load i64, ptr %total_entry_flush_size_changes, align 8, !tbaa !21
  %287 = load i64, ptr %total_cache_flush_size_changes, align 8, !tbaa !21
  %call240 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %284, ptr noundef @.str.60, ptr noundef %arraydecay239, i64 noundef %286, i64 noundef %287)
  %288 = load ptr, ptr @stdout, align 8, !tbaa !4
  %289 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix241 = getelementptr inbounds %struct.H5C_t, ptr %289, i32 0, i32 153
  %arraydecay242 = getelementptr inbounds [32 x i8], ptr %prefix241, i64 0, i64 0
  %290 = load i64, ptr %total_pins, align 8, !tbaa !21
  %291 = load i64, ptr %total_dirty_pins, align 8, !tbaa !21
  %292 = load i64, ptr %total_unpins, align 8, !tbaa !21
  %call243 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %288, ptr noundef @.str.61, ptr noundef %arraydecay242, i64 noundef %290, i64 noundef %291, i64 noundef %292)
  %293 = load ptr, ptr @stdout, align 8, !tbaa !4
  %294 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix244 = getelementptr inbounds %struct.H5C_t, ptr %294, i32 0, i32 153
  %arraydecay245 = getelementptr inbounds [32 x i8], ptr %prefix244, i64 0, i64 0
  %295 = load i64, ptr %total_pinned_flushes, align 8, !tbaa !21
  %296 = load i64, ptr %total_pinned_clears, align 8, !tbaa !21
  %call246 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %293, ptr noundef @.str.62, ptr noundef %arraydecay245, i64 noundef %295, i64 noundef %296)
  %297 = load ptr, ptr @stdout, align 8, !tbaa !4
  %298 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix247 = getelementptr inbounds %struct.H5C_t, ptr %298, i32 0, i32 153
  %arraydecay248 = getelementptr inbounds [32 x i8], ptr %prefix247, i64 0, i64 0
  %299 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %calls_to_msic = getelementptr inbounds %struct.H5C_t, ptr %299, i32 0, i32 129
  %300 = load i64, ptr %calls_to_msic, align 8, !tbaa !74
  %call249 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %297, ptr noundef @.str.63, ptr noundef %arraydecay248, i64 noundef %300)
  %301 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %calls_to_msic250 = getelementptr inbounds %struct.H5C_t, ptr %301, i32 0, i32 129
  %302 = load i64, ptr %calls_to_msic250, align 8, !tbaa !74
  %cmp251 = icmp sgt i64 %302, 0
  br i1 %cmp251, label %if.then253, label %if.end258

if.then253:                                       ; preds = %if.end176
  %303 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_entries_skipped_in_msic = getelementptr inbounds %struct.H5C_t, ptr %303, i32 0, i32 130
  %304 = load i64, ptr %total_entries_skipped_in_msic, align 8, !tbaa !75
  %conv254 = sitofp i64 %304 to double
  %305 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %calls_to_msic255 = getelementptr inbounds %struct.H5C_t, ptr %305, i32 0, i32 129
  %306 = load i64, ptr %calls_to_msic255, align 8, !tbaa !74
  %conv256 = sitofp i64 %306 to double
  %div257 = fdiv double %conv254, %conv256
  store double %div257, ptr %average_entries_skipped_per_calls_to_msic, align 8, !tbaa !49
  br label %if.end258

if.end258:                                        ; preds = %if.then253, %if.end176
  %307 = load ptr, ptr @stdout, align 8, !tbaa !4
  %308 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix259 = getelementptr inbounds %struct.H5C_t, ptr %308, i32 0, i32 153
  %arraydecay260 = getelementptr inbounds [32 x i8], ptr %prefix259, i64 0, i64 0
  %309 = load double, ptr %average_entries_skipped_per_calls_to_msic, align 8, !tbaa !49
  %310 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_entries_skipped_in_msic = getelementptr inbounds %struct.H5C_t, ptr %310, i32 0, i32 133
  %311 = load i32, ptr %max_entries_skipped_in_msic, align 8, !tbaa !76
  %conv261 = sext i32 %311 to i64
  %call262 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %307, ptr noundef @.str.64, ptr noundef %arraydecay260, double noundef %309, i64 noundef %conv261)
  %312 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %calls_to_msic263 = getelementptr inbounds %struct.H5C_t, ptr %312, i32 0, i32 129
  %313 = load i64, ptr %calls_to_msic263, align 8, !tbaa !74
  %cmp264 = icmp sgt i64 %313, 0
  br i1 %cmp264, label %if.then266, label %if.end271

if.then266:                                       ; preds = %if.end258
  %314 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_dirty_pf_entries_skipped_in_msic = getelementptr inbounds %struct.H5C_t, ptr %314, i32 0, i32 131
  %315 = load i64, ptr %total_dirty_pf_entries_skipped_in_msic, align 8, !tbaa !77
  %conv267 = sitofp i64 %315 to double
  %316 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %calls_to_msic268 = getelementptr inbounds %struct.H5C_t, ptr %316, i32 0, i32 129
  %317 = load i64, ptr %calls_to_msic268, align 8, !tbaa !74
  %conv269 = sitofp i64 %317 to double
  %div270 = fdiv double %conv267, %conv269
  store double %div270, ptr %average_dirty_pf_entries_skipped_per_call_to_msic, align 8, !tbaa !49
  br label %if.end271

if.end271:                                        ; preds = %if.then266, %if.end258
  %318 = load ptr, ptr @stdout, align 8, !tbaa !4
  %319 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix272 = getelementptr inbounds %struct.H5C_t, ptr %319, i32 0, i32 153
  %arraydecay273 = getelementptr inbounds [32 x i8], ptr %prefix272, i64 0, i64 0
  %320 = load double, ptr %average_dirty_pf_entries_skipped_per_call_to_msic, align 8, !tbaa !49
  %321 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_dirty_pf_entries_skipped_in_msic = getelementptr inbounds %struct.H5C_t, ptr %321, i32 0, i32 134
  %322 = load i32, ptr %max_dirty_pf_entries_skipped_in_msic, align 4, !tbaa !78
  %conv274 = sext i32 %322 to i64
  %call275 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %318, ptr noundef @.str.65, ptr noundef %arraydecay273, double noundef %320, i64 noundef %conv274)
  %323 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %calls_to_msic276 = getelementptr inbounds %struct.H5C_t, ptr %323, i32 0, i32 129
  %324 = load i64, ptr %calls_to_msic276, align 8, !tbaa !74
  %cmp277 = icmp sgt i64 %324, 0
  br i1 %cmp277, label %if.then279, label %if.end284

if.then279:                                       ; preds = %if.end271
  %325 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_entries_scanned_in_msic = getelementptr inbounds %struct.H5C_t, ptr %325, i32 0, i32 132
  %326 = load i64, ptr %total_entries_scanned_in_msic, align 8, !tbaa !79
  %conv280 = sitofp i64 %326 to double
  %327 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %calls_to_msic281 = getelementptr inbounds %struct.H5C_t, ptr %327, i32 0, i32 129
  %328 = load i64, ptr %calls_to_msic281, align 8, !tbaa !74
  %conv282 = sitofp i64 %328 to double
  %div283 = fdiv double %conv280, %conv282
  store double %div283, ptr %average_entries_scanned_per_calls_to_msic, align 8, !tbaa !49
  br label %if.end284

if.end284:                                        ; preds = %if.then279, %if.end271
  %329 = load ptr, ptr @stdout, align 8, !tbaa !4
  %330 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix285 = getelementptr inbounds %struct.H5C_t, ptr %330, i32 0, i32 153
  %arraydecay286 = getelementptr inbounds [32 x i8], ptr %prefix285, i64 0, i64 0
  %331 = load double, ptr %average_entries_scanned_per_calls_to_msic, align 8, !tbaa !49
  %332 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_entries_scanned_in_msic = getelementptr inbounds %struct.H5C_t, ptr %332, i32 0, i32 135
  %333 = load i32, ptr %max_entries_scanned_in_msic, align 8, !tbaa !80
  %conv287 = sext i32 %333 to i64
  %call288 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %329, ptr noundef @.str.66, ptr noundef %arraydecay286, double noundef %331, i64 noundef %conv287)
  %334 = load ptr, ptr @stdout, align 8, !tbaa !4
  %335 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix289 = getelementptr inbounds %struct.H5C_t, ptr %335, i32 0, i32 153
  %arraydecay290 = getelementptr inbounds [32 x i8], ptr %prefix289, i64 0, i64 0
  %336 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %entries_scanned_to_make_space = getelementptr inbounds %struct.H5C_t, ptr %336, i32 0, i32 136
  %337 = load i64, ptr %entries_scanned_to_make_space, align 8, !tbaa !81
  %call291 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %334, ptr noundef @.str.67, ptr noundef %arraydecay290, i64 noundef %337)
  %338 = load ptr, ptr @stdout, align 8, !tbaa !4
  %339 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix292 = getelementptr inbounds %struct.H5C_t, ptr %339, i32 0, i32 153
  %arraydecay293 = getelementptr inbounds [32 x i8], ptr %prefix292, i64 0, i64 0
  %340 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_entries_scanned_in_msic294 = getelementptr inbounds %struct.H5C_t, ptr %340, i32 0, i32 132
  %341 = load i64, ptr %total_entries_scanned_in_msic294, align 8, !tbaa !79
  %342 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %entries_scanned_to_make_space295 = getelementptr inbounds %struct.H5C_t, ptr %342, i32 0, i32 136
  %343 = load i64, ptr %entries_scanned_to_make_space295, align 8, !tbaa !81
  %sub = sub nsw i64 %341, %343
  %call296 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %338, ptr noundef @.str.68, ptr noundef %arraydecay293, i64 noundef %sub)
  %344 = load ptr, ptr @stdout, align 8, !tbaa !4
  %345 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix297 = getelementptr inbounds %struct.H5C_t, ptr %345, i32 0, i32 153
  %arraydecay298 = getelementptr inbounds [32 x i8], ptr %prefix297, i64 0, i64 0
  %346 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %slist_scan_restarts = getelementptr inbounds %struct.H5C_t, ptr %346, i32 0, i32 137
  %347 = load i64, ptr %slist_scan_restarts, align 8, !tbaa !82
  %348 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %LRU_scan_restarts = getelementptr inbounds %struct.H5C_t, ptr %348, i32 0, i32 138
  %349 = load i64, ptr %LRU_scan_restarts, align 8, !tbaa !83
  %350 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_scan_restarts = getelementptr inbounds %struct.H5C_t, ptr %350, i32 0, i32 139
  %351 = load i64, ptr %index_scan_restarts, align 8, !tbaa !84
  %call299 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %344, ptr noundef @.str.69, ptr noundef %arraydecay298, i64 noundef %347, i64 noundef %349, i64 noundef %351)
  %352 = load ptr, ptr @stdout, align 8, !tbaa !4
  %353 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix300 = getelementptr inbounds %struct.H5C_t, ptr %353, i32 0, i32 153
  %arraydecay301 = getelementptr inbounds [32 x i8], ptr %prefix300, i64 0, i64 0
  %354 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %images_created = getelementptr inbounds %struct.H5C_t, ptr %354, i32 0, i32 140
  %355 = load i32, ptr %images_created, align 8, !tbaa !85
  %356 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %images_read = getelementptr inbounds %struct.H5C_t, ptr %356, i32 0, i32 141
  %357 = load i32, ptr %images_read, align 4, !tbaa !86
  %358 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %images_loaded = getelementptr inbounds %struct.H5C_t, ptr %358, i32 0, i32 142
  %359 = load i32, ptr %images_loaded, align 8, !tbaa !87
  %360 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %last_image_size = getelementptr inbounds %struct.H5C_t, ptr %360, i32 0, i32 143
  %361 = load i64, ptr %last_image_size, align 8, !tbaa !88
  %call302 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %352, ptr noundef @.str.70, ptr noundef %arraydecay301, i32 noundef %355, i32 noundef %357, i32 noundef %359, i64 noundef %361)
  %362 = load ptr, ptr @stdout, align 8, !tbaa !4
  %363 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix303 = getelementptr inbounds %struct.H5C_t, ptr %363, i32 0, i32 153
  %arraydecay304 = getelementptr inbounds [32 x i8], ptr %prefix303, i64 0, i64 0
  %364 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefetches = getelementptr inbounds %struct.H5C_t, ptr %364, i32 0, i32 144
  %365 = load i64, ptr %prefetches, align 8, !tbaa !89
  %366 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %dirty_prefetches = getelementptr inbounds %struct.H5C_t, ptr %366, i32 0, i32 145
  %367 = load i64, ptr %dirty_prefetches, align 8, !tbaa !90
  %call305 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %362, ptr noundef @.str.71, ptr noundef %arraydecay304, i64 noundef %365, i64 noundef %367)
  %368 = load ptr, ptr @stdout, align 8, !tbaa !4
  %369 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix306 = getelementptr inbounds %struct.H5C_t, ptr %369, i32 0, i32 153
  %arraydecay307 = getelementptr inbounds [32 x i8], ptr %prefix306, i64 0, i64 0
  %370 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefetch_hits = getelementptr inbounds %struct.H5C_t, ptr %370, i32 0, i32 146
  %371 = load i64, ptr %prefetch_hits, align 8, !tbaa !91
  %372 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %flushes308 = getelementptr inbounds %struct.H5C_t, ptr %372, i32 0, i32 98
  %arrayidx309 = getelementptr inbounds [31 x i64], ptr %flushes308, i64 0, i64 29
  %373 = load i64, ptr %arrayidx309, align 8, !tbaa !21
  %374 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %evictions310 = getelementptr inbounds %struct.H5C_t, ptr %374, i32 0, i32 99
  %arrayidx311 = getelementptr inbounds [31 x i64], ptr %evictions310, i64 0, i64 29
  %375 = load i64, ptr %arrayidx311, align 8, !tbaa !21
  %call312 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %368, ptr noundef @.str.72, ptr noundef %arraydecay307, i64 noundef %371, i64 noundef %373, i64 noundef %375)
  %376 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefetches313 = getelementptr inbounds %struct.H5C_t, ptr %376, i32 0, i32 144
  %377 = load i64, ptr %prefetches313, align 8, !tbaa !89
  %cmp314 = icmp sgt i64 %377, 0
  br i1 %cmp314, label %if.then316, label %if.else323

if.then316:                                       ; preds = %if.end284
  %378 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefetch_hits317 = getelementptr inbounds %struct.H5C_t, ptr %378, i32 0, i32 146
  %379 = load i64, ptr %prefetch_hits317, align 8, !tbaa !91
  %conv318 = sitofp i64 %379 to double
  %mul319 = fmul double 1.000000e+02, %conv318
  %380 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefetches320 = getelementptr inbounds %struct.H5C_t, ptr %380, i32 0, i32 144
  %381 = load i64, ptr %prefetches320, align 8, !tbaa !89
  %conv321 = sitofp i64 %381 to double
  %div322 = fdiv double %mul319, %conv321
  store double %div322, ptr %prefetch_use_rate, align 8, !tbaa !49
  br label %if.end324

if.else323:                                       ; preds = %if.end284
  store double 0.000000e+00, ptr %prefetch_use_rate, align 8, !tbaa !49
  br label %if.end324

if.end324:                                        ; preds = %if.else323, %if.then316
  %382 = load ptr, ptr @stdout, align 8, !tbaa !4
  %383 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix325 = getelementptr inbounds %struct.H5C_t, ptr %383, i32 0, i32 153
  %arraydecay326 = getelementptr inbounds [32 x i8], ptr %prefix325, i64 0, i64 0
  %384 = load double, ptr %prefetch_use_rate, align 8, !tbaa !49
  %call327 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %382, ptr noundef @.str.73, ptr noundef %arraydecay326, double noundef %384)
  %385 = load ptr, ptr @stdout, align 8, !tbaa !4
  %386 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix328 = getelementptr inbounds %struct.H5C_t, ptr %386, i32 0, i32 153
  %arraydecay329 = getelementptr inbounds [32 x i8], ptr %prefix328, i64 0, i64 0
  %387 = load i32, ptr %aggregate_max_accesses, align 4, !tbaa !8
  %388 = load i32, ptr %aggregate_min_accesses, align 4, !tbaa !8
  %call330 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %385, ptr noundef @.str.74, ptr noundef %arraydecay329, i32 noundef %387, i32 noundef %388)
  %389 = load ptr, ptr @stdout, align 8, !tbaa !4
  %390 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix331 = getelementptr inbounds %struct.H5C_t, ptr %390, i32 0, i32 153
  %arraydecay332 = getelementptr inbounds [32 x i8], ptr %prefix331, i64 0, i64 0
  %391 = load i32, ptr %aggregate_max_clears, align 4, !tbaa !8
  %392 = load i32, ptr %aggregate_max_flushes, align 4, !tbaa !8
  %call333 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %389, ptr noundef @.str.75, ptr noundef %arraydecay332, i32 noundef %391, i32 noundef %392)
  %393 = load ptr, ptr @stdout, align 8, !tbaa !4
  %394 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix334 = getelementptr inbounds %struct.H5C_t, ptr %394, i32 0, i32 153
  %arraydecay335 = getelementptr inbounds [32 x i8], ptr %prefix334, i64 0, i64 0
  %395 = load i64, ptr %aggregate_max_size, align 8, !tbaa !21
  %conv336 = trunc i64 %395 to i32
  %396 = load i32, ptr %aggregate_max_pins, align 4, !tbaa !8
  %call337 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %393, ptr noundef @.str.76, ptr noundef %arraydecay335, i32 noundef %conv336, i32 noundef %396)
  %397 = load i8, ptr %display_detailed_stats.addr, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool338 = trunc i8 %397 to i1
  br i1 %tobool338, label %if.then339, label %if.end506

if.then339:                                       ; preds = %if.end324
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond340

for.cond340:                                      ; preds = %for.inc503, %if.then339
  %398 = load i32, ptr %i, align 4, !tbaa !8
  %399 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_type_id341 = getelementptr inbounds %struct.H5C_t, ptr %399, i32 0, i32 4
  %400 = load i32, ptr %max_type_id341, align 8, !tbaa !50
  %cmp342 = icmp sle i32 %398, %400
  br i1 %cmp342, label %for.body344, label %for.end505

for.body344:                                      ; preds = %for.cond340
  %401 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call345 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %401, ptr noundef @.str.15)
  %402 = load ptr, ptr @stdout, align 8, !tbaa !4
  %403 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix346 = getelementptr inbounds %struct.H5C_t, ptr %403, i32 0, i32 153
  %arraydecay347 = getelementptr inbounds [32 x i8], ptr %prefix346, i64 0, i64 0
  %404 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %class_table_ptr = getelementptr inbounds %struct.H5C_t, ptr %404, i32 0, i32 5
  %405 = load ptr, ptr %class_table_ptr, align 8, !tbaa !92
  %406 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom348 = sext i32 %406 to i64
  %arrayidx349 = getelementptr inbounds ptr, ptr %405, i64 %idxprom348
  %407 = load ptr, ptr %arrayidx349, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.H5C_class_t, ptr %407, i32 0, i32 1
  %408 = load ptr, ptr %name, align 8, !tbaa !34
  %call350 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %402, ptr noundef @.str.77, ptr noundef %arraydecay347, ptr noundef %408)
  %409 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %hits351 = getelementptr inbounds %struct.H5C_t, ptr %409, i32 0, i32 90
  %410 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom352 = sext i32 %410 to i64
  %arrayidx353 = getelementptr inbounds [31 x i64], ptr %hits351, i64 0, i64 %idxprom352
  %411 = load i64, ptr %arrayidx353, align 8, !tbaa !21
  %cmp354 = icmp sgt i64 %411, 0
  br i1 %cmp354, label %if.then362, label %lor.lhs.false356

lor.lhs.false356:                                 ; preds = %for.body344
  %412 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %misses357 = getelementptr inbounds %struct.H5C_t, ptr %412, i32 0, i32 91
  %413 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom358 = sext i32 %413 to i64
  %arrayidx359 = getelementptr inbounds [31 x i64], ptr %misses357, i64 0, i64 %idxprom358
  %414 = load i64, ptr %arrayidx359, align 8, !tbaa !21
  %cmp360 = icmp sgt i64 %414, 0
  br i1 %cmp360, label %if.then362, label %if.else377

if.then362:                                       ; preds = %lor.lhs.false356, %for.body344
  %415 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %hits363 = getelementptr inbounds %struct.H5C_t, ptr %415, i32 0, i32 90
  %416 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom364 = sext i32 %416 to i64
  %arrayidx365 = getelementptr inbounds [31 x i64], ptr %hits363, i64 0, i64 %idxprom364
  %417 = load i64, ptr %arrayidx365, align 8, !tbaa !21
  %conv366 = sitofp i64 %417 to double
  %mul367 = fmul double 1.000000e+02, %conv366
  %418 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %hits368 = getelementptr inbounds %struct.H5C_t, ptr %418, i32 0, i32 90
  %419 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom369 = sext i32 %419 to i64
  %arrayidx370 = getelementptr inbounds [31 x i64], ptr %hits368, i64 0, i64 %idxprom369
  %420 = load i64, ptr %arrayidx370, align 8, !tbaa !21
  %421 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %misses371 = getelementptr inbounds %struct.H5C_t, ptr %421, i32 0, i32 91
  %422 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom372 = sext i32 %422 to i64
  %arrayidx373 = getelementptr inbounds [31 x i64], ptr %misses371, i64 0, i64 %idxprom372
  %423 = load i64, ptr %arrayidx373, align 8, !tbaa !21
  %add374 = add nsw i64 %420, %423
  %conv375 = sitofp i64 %add374 to double
  %div376 = fdiv double %mul367, %conv375
  store double %div376, ptr %hit_rate, align 8, !tbaa !49
  br label %if.end378

if.else377:                                       ; preds = %lor.lhs.false356
  store double 0.000000e+00, ptr %hit_rate, align 8, !tbaa !49
  br label %if.end378

if.end378:                                        ; preds = %if.else377, %if.then362
  %424 = load ptr, ptr @stdout, align 8, !tbaa !4
  %425 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix379 = getelementptr inbounds %struct.H5C_t, ptr %425, i32 0, i32 153
  %arraydecay380 = getelementptr inbounds [32 x i8], ptr %prefix379, i64 0, i64 0
  %426 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %hits381 = getelementptr inbounds %struct.H5C_t, ptr %426, i32 0, i32 90
  %427 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom382 = sext i32 %427 to i64
  %arrayidx383 = getelementptr inbounds [31 x i64], ptr %hits381, i64 0, i64 %idxprom382
  %428 = load i64, ptr %arrayidx383, align 8, !tbaa !21
  %429 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %misses384 = getelementptr inbounds %struct.H5C_t, ptr %429, i32 0, i32 91
  %430 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom385 = sext i32 %430 to i64
  %arrayidx386 = getelementptr inbounds [31 x i64], ptr %misses384, i64 0, i64 %idxprom385
  %431 = load i64, ptr %arrayidx386, align 8, !tbaa !21
  %432 = load double, ptr %hit_rate, align 8, !tbaa !49
  %call387 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %424, ptr noundef @.str.78, ptr noundef %arraydecay380, i64 noundef %428, i64 noundef %431, double noundef %432)
  %433 = load ptr, ptr @stdout, align 8, !tbaa !4
  %434 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix388 = getelementptr inbounds %struct.H5C_t, ptr %434, i32 0, i32 153
  %arraydecay389 = getelementptr inbounds [32 x i8], ptr %prefix388, i64 0, i64 0
  %435 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %write_protects390 = getelementptr inbounds %struct.H5C_t, ptr %435, i32 0, i32 92
  %436 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom391 = sext i32 %436 to i64
  %arrayidx392 = getelementptr inbounds [31 x i64], ptr %write_protects390, i64 0, i64 %idxprom391
  %437 = load i64, ptr %arrayidx392, align 8, !tbaa !21
  %438 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %read_protects393 = getelementptr inbounds %struct.H5C_t, ptr %438, i32 0, i32 93
  %439 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom394 = sext i32 %439 to i64
  %arrayidx395 = getelementptr inbounds [31 x i64], ptr %read_protects393, i64 0, i64 %idxprom394
  %440 = load i64, ptr %arrayidx395, align 8, !tbaa !21
  %441 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_read_protects396 = getelementptr inbounds %struct.H5C_t, ptr %441, i32 0, i32 94
  %442 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom397 = sext i32 %442 to i64
  %arrayidx398 = getelementptr inbounds [31 x i32], ptr %max_read_protects396, i64 0, i64 %idxprom397
  %443 = load i32, ptr %arrayidx398, align 4, !tbaa !8
  %call399 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %433, ptr noundef @.str.79, ptr noundef %arraydecay389, i64 noundef %437, i64 noundef %440, i32 noundef %443)
  %444 = load ptr, ptr @stdout, align 8, !tbaa !4
  %445 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix400 = getelementptr inbounds %struct.H5C_t, ptr %445, i32 0, i32 153
  %arraydecay401 = getelementptr inbounds [32 x i8], ptr %prefix400, i64 0, i64 0
  %446 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %clears402 = getelementptr inbounds %struct.H5C_t, ptr %446, i32 0, i32 97
  %447 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom403 = sext i32 %447 to i64
  %arrayidx404 = getelementptr inbounds [31 x i64], ptr %clears402, i64 0, i64 %idxprom403
  %448 = load i64, ptr %arrayidx404, align 8, !tbaa !21
  %449 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %flushes405 = getelementptr inbounds %struct.H5C_t, ptr %449, i32 0, i32 98
  %450 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom406 = sext i32 %450 to i64
  %arrayidx407 = getelementptr inbounds [31 x i64], ptr %flushes405, i64 0, i64 %idxprom406
  %451 = load i64, ptr %arrayidx407, align 8, !tbaa !21
  %call408 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %444, ptr noundef @.str.80, ptr noundef %arraydecay401, i64 noundef %448, i64 noundef %451)
  %452 = load ptr, ptr @stdout, align 8, !tbaa !4
  %453 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix409 = getelementptr inbounds %struct.H5C_t, ptr %453, i32 0, i32 153
  %arraydecay410 = getelementptr inbounds [32 x i8], ptr %prefix409, i64 0, i64 0
  %454 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %evictions411 = getelementptr inbounds %struct.H5C_t, ptr %454, i32 0, i32 99
  %455 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom412 = sext i32 %455 to i64
  %arrayidx413 = getelementptr inbounds [31 x i64], ptr %evictions411, i64 0, i64 %idxprom412
  %456 = load i64, ptr %arrayidx413, align 8, !tbaa !21
  %457 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %take_ownerships414 = getelementptr inbounds %struct.H5C_t, ptr %457, i32 0, i32 100
  %458 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom415 = sext i32 %458 to i64
  %arrayidx416 = getelementptr inbounds [31 x i64], ptr %take_ownerships414, i64 0, i64 %idxprom415
  %459 = load i64, ptr %arrayidx416, align 8, !tbaa !21
  %call417 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %452, ptr noundef @.str.81, ptr noundef %arraydecay410, i64 noundef %456, i64 noundef %459)
  %460 = load ptr, ptr @stdout, align 8, !tbaa !4
  %461 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix418 = getelementptr inbounds %struct.H5C_t, ptr %461, i32 0, i32 153
  %arraydecay419 = getelementptr inbounds [32 x i8], ptr %prefix418, i64 0, i64 0
  %462 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %insertions420 = getelementptr inbounds %struct.H5C_t, ptr %462, i32 0, i32 95
  %463 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom421 = sext i32 %463 to i64
  %arrayidx422 = getelementptr inbounds [31 x i64], ptr %insertions420, i64 0, i64 %idxprom421
  %464 = load i64, ptr %arrayidx422, align 8, !tbaa !21
  %465 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %pinned_insertions423 = getelementptr inbounds %struct.H5C_t, ptr %465, i32 0, i32 96
  %466 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom424 = sext i32 %466 to i64
  %arrayidx425 = getelementptr inbounds [31 x i64], ptr %pinned_insertions423, i64 0, i64 %idxprom424
  %467 = load i64, ptr %arrayidx425, align 8, !tbaa !21
  %468 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %moves426 = getelementptr inbounds %struct.H5C_t, ptr %468, i32 0, i32 101
  %469 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom427 = sext i32 %469 to i64
  %arrayidx428 = getelementptr inbounds [31 x i64], ptr %moves426, i64 0, i64 %idxprom427
  %470 = load i64, ptr %arrayidx428, align 8, !tbaa !21
  %call429 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %460, ptr noundef @.str.82, ptr noundef %arraydecay419, i64 noundef %464, i64 noundef %467, i64 noundef %470)
  %471 = load ptr, ptr @stdout, align 8, !tbaa !4
  %472 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix430 = getelementptr inbounds %struct.H5C_t, ptr %472, i32 0, i32 153
  %arraydecay431 = getelementptr inbounds [32 x i8], ptr %prefix430, i64 0, i64 0
  %473 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %entry_flush_moves432 = getelementptr inbounds %struct.H5C_t, ptr %473, i32 0, i32 102
  %474 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom433 = sext i32 %474 to i64
  %arrayidx434 = getelementptr inbounds [31 x i64], ptr %entry_flush_moves432, i64 0, i64 %idxprom433
  %475 = load i64, ptr %arrayidx434, align 8, !tbaa !21
  %476 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cache_flush_moves435 = getelementptr inbounds %struct.H5C_t, ptr %476, i32 0, i32 103
  %477 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom436 = sext i32 %477 to i64
  %arrayidx437 = getelementptr inbounds [31 x i64], ptr %cache_flush_moves435, i64 0, i64 %idxprom436
  %478 = load i64, ptr %arrayidx437, align 8, !tbaa !21
  %call438 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %471, ptr noundef @.str.83, ptr noundef %arraydecay431, i64 noundef %475, i64 noundef %478)
  %479 = load ptr, ptr @stdout, align 8, !tbaa !4
  %480 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix439 = getelementptr inbounds %struct.H5C_t, ptr %480, i32 0, i32 153
  %arraydecay440 = getelementptr inbounds [32 x i8], ptr %prefix439, i64 0, i64 0
  %481 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %size_increases441 = getelementptr inbounds %struct.H5C_t, ptr %481, i32 0, i32 109
  %482 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom442 = sext i32 %482 to i64
  %arrayidx443 = getelementptr inbounds [31 x i64], ptr %size_increases441, i64 0, i64 %idxprom442
  %483 = load i64, ptr %arrayidx443, align 8, !tbaa !21
  %484 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %size_decreases444 = getelementptr inbounds %struct.H5C_t, ptr %484, i32 0, i32 110
  %485 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom445 = sext i32 %485 to i64
  %arrayidx446 = getelementptr inbounds [31 x i64], ptr %size_decreases444, i64 0, i64 %idxprom445
  %486 = load i64, ptr %arrayidx446, align 8, !tbaa !21
  %call447 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %479, ptr noundef @.str.84, ptr noundef %arraydecay440, i64 noundef %483, i64 noundef %486)
  %487 = load ptr, ptr @stdout, align 8, !tbaa !4
  %488 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix448 = getelementptr inbounds %struct.H5C_t, ptr %488, i32 0, i32 153
  %arraydecay449 = getelementptr inbounds [32 x i8], ptr %prefix448, i64 0, i64 0
  %489 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %entry_flush_size_changes450 = getelementptr inbounds %struct.H5C_t, ptr %489, i32 0, i32 111
  %490 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom451 = sext i32 %490 to i64
  %arrayidx452 = getelementptr inbounds [31 x i64], ptr %entry_flush_size_changes450, i64 0, i64 %idxprom451
  %491 = load i64, ptr %arrayidx452, align 8, !tbaa !21
  %492 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cache_flush_size_changes453 = getelementptr inbounds %struct.H5C_t, ptr %492, i32 0, i32 112
  %493 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom454 = sext i32 %493 to i64
  %arrayidx455 = getelementptr inbounds [31 x i64], ptr %cache_flush_size_changes453, i64 0, i64 %idxprom454
  %494 = load i64, ptr %arrayidx455, align 8, !tbaa !21
  %call456 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %487, ptr noundef @.str.85, ptr noundef %arraydecay449, i64 noundef %491, i64 noundef %494)
  %495 = load ptr, ptr @stdout, align 8, !tbaa !4
  %496 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix457 = getelementptr inbounds %struct.H5C_t, ptr %496, i32 0, i32 153
  %arraydecay458 = getelementptr inbounds [32 x i8], ptr %prefix457, i64 0, i64 0
  %497 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %pins459 = getelementptr inbounds %struct.H5C_t, ptr %497, i32 0, i32 104
  %498 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom460 = sext i32 %498 to i64
  %arrayidx461 = getelementptr inbounds [31 x i64], ptr %pins459, i64 0, i64 %idxprom460
  %499 = load i64, ptr %arrayidx461, align 8, !tbaa !21
  %500 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %unpins462 = getelementptr inbounds %struct.H5C_t, ptr %500, i32 0, i32 105
  %501 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom463 = sext i32 %501 to i64
  %arrayidx464 = getelementptr inbounds [31 x i64], ptr %unpins462, i64 0, i64 %idxprom463
  %502 = load i64, ptr %arrayidx464, align 8, !tbaa !21
  %call465 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %495, ptr noundef @.str.86, ptr noundef %arraydecay458, i64 noundef %499, i64 noundef %502)
  %503 = load ptr, ptr @stdout, align 8, !tbaa !4
  %504 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix466 = getelementptr inbounds %struct.H5C_t, ptr %504, i32 0, i32 153
  %arraydecay467 = getelementptr inbounds [32 x i8], ptr %prefix466, i64 0, i64 0
  %505 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %dirty_pins468 = getelementptr inbounds %struct.H5C_t, ptr %505, i32 0, i32 106
  %506 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom469 = sext i32 %506 to i64
  %arrayidx470 = getelementptr inbounds [31 x i64], ptr %dirty_pins468, i64 0, i64 %idxprom469
  %507 = load i64, ptr %arrayidx470, align 8, !tbaa !21
  %508 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %pinned_flushes471 = getelementptr inbounds %struct.H5C_t, ptr %508, i32 0, i32 107
  %509 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom472 = sext i32 %509 to i64
  %arrayidx473 = getelementptr inbounds [31 x i64], ptr %pinned_flushes471, i64 0, i64 %idxprom472
  %510 = load i64, ptr %arrayidx473, align 8, !tbaa !21
  %call474 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %503, ptr noundef @.str.87, ptr noundef %arraydecay467, i64 noundef %507, i64 noundef %510)
  %511 = load ptr, ptr @stdout, align 8, !tbaa !4
  %512 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix475 = getelementptr inbounds %struct.H5C_t, ptr %512, i32 0, i32 153
  %arraydecay476 = getelementptr inbounds [32 x i8], ptr %prefix475, i64 0, i64 0
  %513 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_accesses477 = getelementptr inbounds %struct.H5C_t, ptr %513, i32 0, i32 147
  %514 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom478 = sext i32 %514 to i64
  %arrayidx479 = getelementptr inbounds [31 x i32], ptr %max_accesses477, i64 0, i64 %idxprom478
  %515 = load i32, ptr %arrayidx479, align 4, !tbaa !8
  %516 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %min_accesses480 = getelementptr inbounds %struct.H5C_t, ptr %516, i32 0, i32 148
  %517 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom481 = sext i32 %517 to i64
  %arrayidx482 = getelementptr inbounds [31 x i32], ptr %min_accesses480, i64 0, i64 %idxprom481
  %518 = load i32, ptr %arrayidx482, align 4, !tbaa !8
  %call483 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %511, ptr noundef @.str.88, ptr noundef %arraydecay476, i32 noundef %515, i32 noundef %518)
  %519 = load ptr, ptr @stdout, align 8, !tbaa !4
  %520 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix484 = getelementptr inbounds %struct.H5C_t, ptr %520, i32 0, i32 153
  %arraydecay485 = getelementptr inbounds [32 x i8], ptr %prefix484, i64 0, i64 0
  %521 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_clears486 = getelementptr inbounds %struct.H5C_t, ptr %521, i32 0, i32 149
  %522 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom487 = sext i32 %522 to i64
  %arrayidx488 = getelementptr inbounds [31 x i32], ptr %max_clears486, i64 0, i64 %idxprom487
  %523 = load i32, ptr %arrayidx488, align 4, !tbaa !8
  %524 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_flushes489 = getelementptr inbounds %struct.H5C_t, ptr %524, i32 0, i32 150
  %525 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom490 = sext i32 %525 to i64
  %arrayidx491 = getelementptr inbounds [31 x i32], ptr %max_flushes489, i64 0, i64 %idxprom490
  %526 = load i32, ptr %arrayidx491, align 4, !tbaa !8
  %call492 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %519, ptr noundef @.str.89, ptr noundef %arraydecay485, i32 noundef %523, i32 noundef %526)
  %527 = load ptr, ptr @stdout, align 8, !tbaa !4
  %528 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefix493 = getelementptr inbounds %struct.H5C_t, ptr %528, i32 0, i32 153
  %arraydecay494 = getelementptr inbounds [32 x i8], ptr %prefix493, i64 0, i64 0
  %529 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_size495 = getelementptr inbounds %struct.H5C_t, ptr %529, i32 0, i32 151
  %530 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom496 = sext i32 %530 to i64
  %arrayidx497 = getelementptr inbounds [31 x i64], ptr %max_size495, i64 0, i64 %idxprom496
  %531 = load i64, ptr %arrayidx497, align 8, !tbaa !21
  %conv498 = trunc i64 %531 to i32
  %532 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_pins499 = getelementptr inbounds %struct.H5C_t, ptr %532, i32 0, i32 152
  %533 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom500 = sext i32 %533 to i64
  %arrayidx501 = getelementptr inbounds [31 x i32], ptr %max_pins499, i64 0, i64 %idxprom500
  %534 = load i32, ptr %arrayidx501, align 4, !tbaa !8
  %call502 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %527, ptr noundef @.str.90, ptr noundef %arraydecay494, i32 noundef %conv498, i32 noundef %534)
  br label %for.inc503

for.inc503:                                       ; preds = %if.end378
  %535 = load i32, ptr %i, align 4, !tbaa !8
  %inc504 = add nsw i32 %535, 1
  store i32 %inc504, ptr %i, align 4, !tbaa !8
  br label %for.cond340

for.end505:                                       ; preds = %for.cond340
  br label %if.end506

if.end506:                                        ; preds = %for.end505, %if.end324
  %536 = load ptr, ptr @stdout, align 8, !tbaa !4
  %call507 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %536, ptr noundef @.str.15)
  br label %done

done:                                             ; preds = %if.end506, %if.then14
  br label %if.end508

if.end508:                                        ; preds = %done, %lor.lhs.false
  %537 = load i32, ptr %ret_value, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %average_entries_scanned_per_calls_to_msic) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %average_dirty_pf_entries_skipped_per_call_to_msic) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %average_entries_skipped_per_calls_to_msic) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %average_failed_search_depth) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %average_successful_search_depth) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %prefetch_use_rate) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %hit_rate) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %aggregate_max_pins) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %aggregate_max_size) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %aggregate_max_flushes) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %aggregate_max_clears) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %aggregate_min_accesses) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %aggregate_max_accesses) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_pinned_clears) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_pinned_flushes) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_dirty_pins) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_unpins) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_pins) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_cache_flush_size_changes) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_entry_flush_size_changes) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_size_decreases) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_size_increases) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_cache_flush_moves) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_entry_flush_moves) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_moves) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_take_ownerships) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_evictions) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_flushes) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_clears) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_pinned_insertions) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_insertions) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_read_protects) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_read_protects) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_write_protects) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_misses) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_hits) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret i32 %537
}

; Function Attrs: nounwind uwtable
define void @H5C_stats__reset(ptr noundef %cache_ptr) #0 {
entry:
  %cache_ptr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %cache_ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  %0 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.91, ptr noundef @.str.1, i32 noundef 749, ptr noundef @__PRETTY_FUNCTION__.H5C_stats__reset) #7
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %magic = getelementptr inbounds %struct.H5C_t, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %magic, align 8, !tbaa !14
  %cmp = icmp eq i32 %3, 6073358
  br i1 %cmp, label %cond.true1, label %cond.false2

cond.true1:                                       ; preds = %cond.end
  br label %cond.end3

cond.false2:                                      ; preds = %cond.end
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 750, ptr noundef @__PRETTY_FUNCTION__.H5C_stats__reset) #7
  unreachable

4:                                                ; No predecessors!
  br label %cond.end3

cond.end3:                                        ; preds = %4, %cond.true1
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end3
  %5 = load i32, ptr %i, align 4, !tbaa !8
  %6 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_type_id = getelementptr inbounds %struct.H5C_t, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %max_type_id, align 8, !tbaa !50
  %cmp4 = icmp sle i32 %5, %7
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %hits = getelementptr inbounds %struct.H5C_t, ptr %8, i32 0, i32 90
  %9 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [31 x i64], ptr %hits, i64 0, i64 %idxprom
  store i64 0, ptr %arrayidx, align 8, !tbaa !21
  %10 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %misses = getelementptr inbounds %struct.H5C_t, ptr %10, i32 0, i32 91
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [31 x i64], ptr %misses, i64 0, i64 %idxprom5
  store i64 0, ptr %arrayidx6, align 8, !tbaa !21
  %12 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %write_protects = getelementptr inbounds %struct.H5C_t, ptr %12, i32 0, i32 92
  %13 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds [31 x i64], ptr %write_protects, i64 0, i64 %idxprom7
  store i64 0, ptr %arrayidx8, align 8, !tbaa !21
  %14 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %read_protects = getelementptr inbounds %struct.H5C_t, ptr %14, i32 0, i32 93
  %15 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom9 = sext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds [31 x i64], ptr %read_protects, i64 0, i64 %idxprom9
  store i64 0, ptr %arrayidx10, align 8, !tbaa !21
  %16 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_read_protects = getelementptr inbounds %struct.H5C_t, ptr %16, i32 0, i32 94
  %17 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds [31 x i32], ptr %max_read_protects, i64 0, i64 %idxprom11
  store i32 0, ptr %arrayidx12, align 4, !tbaa !8
  %18 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %insertions = getelementptr inbounds %struct.H5C_t, ptr %18, i32 0, i32 95
  %19 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom13 = sext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds [31 x i64], ptr %insertions, i64 0, i64 %idxprom13
  store i64 0, ptr %arrayidx14, align 8, !tbaa !21
  %20 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %pinned_insertions = getelementptr inbounds %struct.H5C_t, ptr %20, i32 0, i32 96
  %21 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom15 = sext i32 %21 to i64
  %arrayidx16 = getelementptr inbounds [31 x i64], ptr %pinned_insertions, i64 0, i64 %idxprom15
  store i64 0, ptr %arrayidx16, align 8, !tbaa !21
  %22 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %clears = getelementptr inbounds %struct.H5C_t, ptr %22, i32 0, i32 97
  %23 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom17 = sext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds [31 x i64], ptr %clears, i64 0, i64 %idxprom17
  store i64 0, ptr %arrayidx18, align 8, !tbaa !21
  %24 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %flushes = getelementptr inbounds %struct.H5C_t, ptr %24, i32 0, i32 98
  %25 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom19 = sext i32 %25 to i64
  %arrayidx20 = getelementptr inbounds [31 x i64], ptr %flushes, i64 0, i64 %idxprom19
  store i64 0, ptr %arrayidx20, align 8, !tbaa !21
  %26 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %evictions = getelementptr inbounds %struct.H5C_t, ptr %26, i32 0, i32 99
  %27 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom21 = sext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds [31 x i64], ptr %evictions, i64 0, i64 %idxprom21
  store i64 0, ptr %arrayidx22, align 8, !tbaa !21
  %28 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %take_ownerships = getelementptr inbounds %struct.H5C_t, ptr %28, i32 0, i32 100
  %29 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom23 = sext i32 %29 to i64
  %arrayidx24 = getelementptr inbounds [31 x i64], ptr %take_ownerships, i64 0, i64 %idxprom23
  store i64 0, ptr %arrayidx24, align 8, !tbaa !21
  %30 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %moves = getelementptr inbounds %struct.H5C_t, ptr %30, i32 0, i32 101
  %31 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom25 = sext i32 %31 to i64
  %arrayidx26 = getelementptr inbounds [31 x i64], ptr %moves, i64 0, i64 %idxprom25
  store i64 0, ptr %arrayidx26, align 8, !tbaa !21
  %32 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %entry_flush_moves = getelementptr inbounds %struct.H5C_t, ptr %32, i32 0, i32 102
  %33 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom27 = sext i32 %33 to i64
  %arrayidx28 = getelementptr inbounds [31 x i64], ptr %entry_flush_moves, i64 0, i64 %idxprom27
  store i64 0, ptr %arrayidx28, align 8, !tbaa !21
  %34 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cache_flush_moves = getelementptr inbounds %struct.H5C_t, ptr %34, i32 0, i32 103
  %35 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom29 = sext i32 %35 to i64
  %arrayidx30 = getelementptr inbounds [31 x i64], ptr %cache_flush_moves, i64 0, i64 %idxprom29
  store i64 0, ptr %arrayidx30, align 8, !tbaa !21
  %36 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %pins = getelementptr inbounds %struct.H5C_t, ptr %36, i32 0, i32 104
  %37 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom31 = sext i32 %37 to i64
  %arrayidx32 = getelementptr inbounds [31 x i64], ptr %pins, i64 0, i64 %idxprom31
  store i64 0, ptr %arrayidx32, align 8, !tbaa !21
  %38 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %unpins = getelementptr inbounds %struct.H5C_t, ptr %38, i32 0, i32 105
  %39 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom33 = sext i32 %39 to i64
  %arrayidx34 = getelementptr inbounds [31 x i64], ptr %unpins, i64 0, i64 %idxprom33
  store i64 0, ptr %arrayidx34, align 8, !tbaa !21
  %40 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %dirty_pins = getelementptr inbounds %struct.H5C_t, ptr %40, i32 0, i32 106
  %41 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom35 = sext i32 %41 to i64
  %arrayidx36 = getelementptr inbounds [31 x i64], ptr %dirty_pins, i64 0, i64 %idxprom35
  store i64 0, ptr %arrayidx36, align 8, !tbaa !21
  %42 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %pinned_flushes = getelementptr inbounds %struct.H5C_t, ptr %42, i32 0, i32 107
  %43 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom37 = sext i32 %43 to i64
  %arrayidx38 = getelementptr inbounds [31 x i64], ptr %pinned_flushes, i64 0, i64 %idxprom37
  store i64 0, ptr %arrayidx38, align 8, !tbaa !21
  %44 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %pinned_clears = getelementptr inbounds %struct.H5C_t, ptr %44, i32 0, i32 108
  %45 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom39 = sext i32 %45 to i64
  %arrayidx40 = getelementptr inbounds [31 x i64], ptr %pinned_clears, i64 0, i64 %idxprom39
  store i64 0, ptr %arrayidx40, align 8, !tbaa !21
  %46 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %size_increases = getelementptr inbounds %struct.H5C_t, ptr %46, i32 0, i32 109
  %47 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom41 = sext i32 %47 to i64
  %arrayidx42 = getelementptr inbounds [31 x i64], ptr %size_increases, i64 0, i64 %idxprom41
  store i64 0, ptr %arrayidx42, align 8, !tbaa !21
  %48 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %size_decreases = getelementptr inbounds %struct.H5C_t, ptr %48, i32 0, i32 110
  %49 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom43 = sext i32 %49 to i64
  %arrayidx44 = getelementptr inbounds [31 x i64], ptr %size_decreases, i64 0, i64 %idxprom43
  store i64 0, ptr %arrayidx44, align 8, !tbaa !21
  %50 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %entry_flush_size_changes = getelementptr inbounds %struct.H5C_t, ptr %50, i32 0, i32 111
  %51 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom45 = sext i32 %51 to i64
  %arrayidx46 = getelementptr inbounds [31 x i64], ptr %entry_flush_size_changes, i64 0, i64 %idxprom45
  store i64 0, ptr %arrayidx46, align 8, !tbaa !21
  %52 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cache_flush_size_changes = getelementptr inbounds %struct.H5C_t, ptr %52, i32 0, i32 112
  %53 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom47 = sext i32 %53 to i64
  %arrayidx48 = getelementptr inbounds [31 x i64], ptr %cache_flush_size_changes, i64 0, i64 %idxprom47
  store i64 0, ptr %arrayidx48, align 8, !tbaa !21
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %54, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_ht_insertions = getelementptr inbounds %struct.H5C_t, ptr %55, i32 0, i32 113
  store i64 0, ptr %total_ht_insertions, align 8, !tbaa !55
  %56 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_ht_deletions = getelementptr inbounds %struct.H5C_t, ptr %56, i32 0, i32 114
  store i64 0, ptr %total_ht_deletions, align 8, !tbaa !56
  %57 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %successful_ht_searches = getelementptr inbounds %struct.H5C_t, ptr %57, i32 0, i32 115
  store i64 0, ptr %successful_ht_searches, align 8, !tbaa !51
  %58 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_successful_ht_search_depth = getelementptr inbounds %struct.H5C_t, ptr %58, i32 0, i32 116
  store i64 0, ptr %total_successful_ht_search_depth, align 8, !tbaa !52
  %59 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %failed_ht_searches = getelementptr inbounds %struct.H5C_t, ptr %59, i32 0, i32 117
  store i64 0, ptr %failed_ht_searches, align 8, !tbaa !53
  %60 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_failed_ht_search_depth = getelementptr inbounds %struct.H5C_t, ptr %60, i32 0, i32 118
  store i64 0, ptr %total_failed_ht_search_depth, align 8, !tbaa !54
  %61 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_index_len = getelementptr inbounds %struct.H5C_t, ptr %61, i32 0, i32 119
  store i32 0, ptr %max_index_len, align 8, !tbaa !59
  %62 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_index_size = getelementptr inbounds %struct.H5C_t, ptr %62, i32 0, i32 120
  store i64 0, ptr %max_index_size, align 8, !tbaa !57
  %63 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_clean_index_size = getelementptr inbounds %struct.H5C_t, ptr %63, i32 0, i32 121
  store i64 0, ptr %max_clean_index_size, align 8, !tbaa !61
  %64 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_dirty_index_size = getelementptr inbounds %struct.H5C_t, ptr %64, i32 0, i32 122
  store i64 0, ptr %max_dirty_index_size, align 8, !tbaa !63
  %65 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_slist_len = getelementptr inbounds %struct.H5C_t, ptr %65, i32 0, i32 123
  store i32 0, ptr %max_slist_len, align 8, !tbaa !65
  %66 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_slist_size = getelementptr inbounds %struct.H5C_t, ptr %66, i32 0, i32 124
  store i64 0, ptr %max_slist_size, align 8, !tbaa !64
  %67 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_pl_len = getelementptr inbounds %struct.H5C_t, ptr %67, i32 0, i32 125
  store i32 0, ptr %max_pl_len, align 8, !tbaa !69
  %68 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_pl_size = getelementptr inbounds %struct.H5C_t, ptr %68, i32 0, i32 126
  store i64 0, ptr %max_pl_size, align 8, !tbaa !67
  %69 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_pel_len = getelementptr inbounds %struct.H5C_t, ptr %69, i32 0, i32 127
  store i32 0, ptr %max_pel_len, align 8, !tbaa !73
  %70 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_pel_size = getelementptr inbounds %struct.H5C_t, ptr %70, i32 0, i32 128
  store i64 0, ptr %max_pel_size, align 8, !tbaa !71
  %71 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %calls_to_msic = getelementptr inbounds %struct.H5C_t, ptr %71, i32 0, i32 129
  store i64 0, ptr %calls_to_msic, align 8, !tbaa !74
  %72 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_entries_skipped_in_msic = getelementptr inbounds %struct.H5C_t, ptr %72, i32 0, i32 130
  store i64 0, ptr %total_entries_skipped_in_msic, align 8, !tbaa !75
  %73 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_dirty_pf_entries_skipped_in_msic = getelementptr inbounds %struct.H5C_t, ptr %73, i32 0, i32 131
  store i64 0, ptr %total_dirty_pf_entries_skipped_in_msic, align 8, !tbaa !77
  %74 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_entries_scanned_in_msic = getelementptr inbounds %struct.H5C_t, ptr %74, i32 0, i32 132
  store i64 0, ptr %total_entries_scanned_in_msic, align 8, !tbaa !79
  %75 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_entries_skipped_in_msic = getelementptr inbounds %struct.H5C_t, ptr %75, i32 0, i32 133
  store i32 0, ptr %max_entries_skipped_in_msic, align 8, !tbaa !76
  %76 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_dirty_pf_entries_skipped_in_msic = getelementptr inbounds %struct.H5C_t, ptr %76, i32 0, i32 134
  store i32 0, ptr %max_dirty_pf_entries_skipped_in_msic, align 4, !tbaa !78
  %77 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_entries_scanned_in_msic = getelementptr inbounds %struct.H5C_t, ptr %77, i32 0, i32 135
  store i32 0, ptr %max_entries_scanned_in_msic, align 8, !tbaa !80
  %78 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %entries_scanned_to_make_space = getelementptr inbounds %struct.H5C_t, ptr %78, i32 0, i32 136
  store i64 0, ptr %entries_scanned_to_make_space, align 8, !tbaa !81
  %79 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %slist_scan_restarts = getelementptr inbounds %struct.H5C_t, ptr %79, i32 0, i32 137
  store i64 0, ptr %slist_scan_restarts, align 8, !tbaa !82
  %80 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %LRU_scan_restarts = getelementptr inbounds %struct.H5C_t, ptr %80, i32 0, i32 138
  store i64 0, ptr %LRU_scan_restarts, align 8, !tbaa !83
  %81 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_scan_restarts = getelementptr inbounds %struct.H5C_t, ptr %81, i32 0, i32 139
  store i64 0, ptr %index_scan_restarts, align 8, !tbaa !84
  %82 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %images_created = getelementptr inbounds %struct.H5C_t, ptr %82, i32 0, i32 140
  store i32 0, ptr %images_created, align 8, !tbaa !85
  %83 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %images_read = getelementptr inbounds %struct.H5C_t, ptr %83, i32 0, i32 141
  store i32 0, ptr %images_read, align 4, !tbaa !86
  %84 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %images_loaded = getelementptr inbounds %struct.H5C_t, ptr %84, i32 0, i32 142
  store i32 0, ptr %images_loaded, align 8, !tbaa !87
  %85 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %last_image_size = getelementptr inbounds %struct.H5C_t, ptr %85, i32 0, i32 143
  store i64 0, ptr %last_image_size, align 8, !tbaa !88
  %86 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefetches = getelementptr inbounds %struct.H5C_t, ptr %86, i32 0, i32 144
  store i64 0, ptr %prefetches, align 8, !tbaa !89
  %87 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %dirty_prefetches = getelementptr inbounds %struct.H5C_t, ptr %87, i32 0, i32 145
  store i64 0, ptr %dirty_prefetches, align 8, !tbaa !90
  %88 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %prefetch_hits = getelementptr inbounds %struct.H5C_t, ptr %88, i32 0, i32 146
  store i64 0, ptr %prefetch_hits, align 8, !tbaa !91
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc65, %for.end
  %89 = load i32, ptr %i, align 4, !tbaa !8
  %90 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_type_id50 = getelementptr inbounds %struct.H5C_t, ptr %90, i32 0, i32 4
  %91 = load i32, ptr %max_type_id50, align 8, !tbaa !50
  %cmp51 = icmp sle i32 %89, %91
  br i1 %cmp51, label %for.body52, label %for.end67

for.body52:                                       ; preds = %for.cond49
  %92 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_accesses = getelementptr inbounds %struct.H5C_t, ptr %92, i32 0, i32 147
  %93 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom53 = sext i32 %93 to i64
  %arrayidx54 = getelementptr inbounds [31 x i32], ptr %max_accesses, i64 0, i64 %idxprom53
  store i32 0, ptr %arrayidx54, align 4, !tbaa !8
  %94 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %min_accesses = getelementptr inbounds %struct.H5C_t, ptr %94, i32 0, i32 148
  %95 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom55 = sext i32 %95 to i64
  %arrayidx56 = getelementptr inbounds [31 x i32], ptr %min_accesses, i64 0, i64 %idxprom55
  store i32 1000000, ptr %arrayidx56, align 4, !tbaa !8
  %96 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_clears = getelementptr inbounds %struct.H5C_t, ptr %96, i32 0, i32 149
  %97 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom57 = sext i32 %97 to i64
  %arrayidx58 = getelementptr inbounds [31 x i32], ptr %max_clears, i64 0, i64 %idxprom57
  store i32 0, ptr %arrayidx58, align 4, !tbaa !8
  %98 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_flushes = getelementptr inbounds %struct.H5C_t, ptr %98, i32 0, i32 150
  %99 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom59 = sext i32 %99 to i64
  %arrayidx60 = getelementptr inbounds [31 x i32], ptr %max_flushes, i64 0, i64 %idxprom59
  store i32 0, ptr %arrayidx60, align 4, !tbaa !8
  %100 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_size = getelementptr inbounds %struct.H5C_t, ptr %100, i32 0, i32 151
  %101 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom61 = sext i32 %101 to i64
  %arrayidx62 = getelementptr inbounds [31 x i64], ptr %max_size, i64 0, i64 %idxprom61
  store i64 0, ptr %arrayidx62, align 8, !tbaa !21
  %102 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %max_pins = getelementptr inbounds %struct.H5C_t, ptr %102, i32 0, i32 152
  %103 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom63 = sext i32 %103 to i64
  %arrayidx64 = getelementptr inbounds [31 x i32], ptr %max_pins, i64 0, i64 %idxprom63
  store i32 0, ptr %arrayidx64, align 4, !tbaa !8
  br label %for.inc65

for.inc65:                                        ; preds = %for.body52
  %104 = load i32, ptr %i, align 4, !tbaa !8
  %inc66 = add nsw i32 %104, 1
  store i32 %inc66, ptr %i, align 4, !tbaa !8
  br label %for.cond49

for.end67:                                        ; preds = %for.cond49
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @H5C_flush_dependency_exists(ptr noundef %cache_ptr, i64 noundef %parent_addr, i64 noundef %child_addr, ptr noundef %fd_exists_ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %cache_ptr.addr = alloca ptr, align 8
  %parent_addr.addr = alloca i64, align 8
  %child_addr.addr = alloca i64, align 8
  %fd_exists_ptr.addr = alloca ptr, align 8
  %fd_exists = alloca i8, align 1
  %parent_ptr = alloca ptr, align 8
  %child_ptr = alloca ptr, align 8
  %ret_value = alloca i8, align 1
  %err_occurred = alloca i8, align 1
  %k = alloca i32, align 4
  %depth = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %k193 = alloca i32, align 4
  %depth194 = alloca i32, align 4
  %u = alloca i32, align 4
  store ptr %cache_ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  store i64 %parent_addr, ptr %parent_addr.addr, align 8, !tbaa !21
  store i64 %child_addr, ptr %child_addr.addr, align 8, !tbaa !21
  store ptr %fd_exists_ptr, ptr %fd_exists_ptr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 1, ptr %fd_exists) #6
  store i8 0, ptr %fd_exists, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_ptr) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %child_ptr) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret_value) #6
  store i8 0, ptr %ret_value, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #6
  store i8 0, ptr %err_occurred, align 1, !tbaa !10
  %0 = load i8, ptr @H5C_flush_dependency_exists.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr @H5C_flush_dependency_exists.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr @H5C_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  store i8 1, ptr @H5C_init_g, align 1, !tbaa !10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %3 = load i8, ptr @H5C_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool5 = trunc i8 %3 to i1
  br i1 %tobool5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %4 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool6 = trunc i8 %4 to i1
  br i1 %tobool6, label %if.end446, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false, %if.end4
  %5 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %tobool8 = icmp ne ptr %5, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then7
  br label %cond.end

cond.false:                                       ; preds = %if.then7
  call void @__assert_fail(ptr noundef @.str.91, ptr noundef @.str.1, i32 noundef 873, ptr noundef @__PRETTY_FUNCTION__.H5C_flush_dependency_exists) #7
  unreachable

6:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  %7 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %magic = getelementptr inbounds %struct.H5C_t, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %magic, align 8, !tbaa !14
  %cmp = icmp eq i32 %8, 6073358
  br i1 %cmp, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 874, ptr noundef @__PRETTY_FUNCTION__.H5C_flush_dependency_exists) #7
  unreachable

9:                                                ; No predecessors!
  br label %cond.end11

cond.end11:                                       ; preds = %9, %cond.true9
  %10 = load i64, ptr %parent_addr.addr, align 8, !tbaa !21
  %cmp12 = icmp ne i64 %10, -1
  br i1 %cmp12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %cond.end11
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end11
  call void @__assert_fail(ptr noundef @.str.92, ptr noundef @.str.1, i32 noundef 875, ptr noundef @__PRETTY_FUNCTION__.H5C_flush_dependency_exists) #7
  unreachable

11:                                               ; No predecessors!
  br label %cond.end15

cond.end15:                                       ; preds = %11, %cond.true13
  %12 = load i64, ptr %child_addr.addr, align 8, !tbaa !21
  %cmp16 = icmp ne i64 %12, -1
  br i1 %cmp16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %cond.end15
  br label %cond.end19

cond.false18:                                     ; preds = %cond.end15
  call void @__assert_fail(ptr noundef @.str.93, ptr noundef @.str.1, i32 noundef 876, ptr noundef @__PRETTY_FUNCTION__.H5C_flush_dependency_exists) #7
  unreachable

13:                                               ; No predecessors!
  br label %cond.end19

cond.end19:                                       ; preds = %13, %cond.true17
  %14 = load ptr, ptr %fd_exists_ptr.addr, align 8, !tbaa !4
  %tobool20 = icmp ne ptr %14, null
  br i1 %tobool20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.end19
  br label %cond.end23

cond.false22:                                     ; preds = %cond.end19
  call void @__assert_fail(ptr noundef @.str.94, ptr noundef @.str.1, i32 noundef 877, ptr noundef @__PRETTY_FUNCTION__.H5C_flush_dependency_exists) #7
  unreachable

15:                                               ; No predecessors!
  br label %cond.end23

cond.end23:                                       ; preds = %15, %cond.true21
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %depth) #6
  store i32 0, ptr %depth, align 4, !tbaa !8
  %16 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cmp24 = icmp eq ptr %16, null
  br i1 %cmp24, label %if.then41, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %cond.end23
  %17 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %magic26 = getelementptr inbounds %struct.H5C_t, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %magic26, align 8, !tbaa !14
  %cmp27 = icmp ne i32 %18, 6073358
  br i1 %cmp27, label %if.then41, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %19 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_size = getelementptr inbounds %struct.H5C_t, ptr %19, i32 0, i32 14
  %20 = load i64, ptr %index_size, align 8, !tbaa !40
  %21 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %clean_index_size = getelementptr inbounds %struct.H5C_t, ptr %21, i32 0, i32 17
  %22 = load i64, ptr %clean_index_size, align 8, !tbaa !60
  %23 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %dirty_index_size = getelementptr inbounds %struct.H5C_t, ptr %23, i32 0, i32 19
  %24 = load i64, ptr %dirty_index_size, align 8, !tbaa !62
  %add = add i64 %22, %24
  %cmp29 = icmp ne i64 %20, %add
  br i1 %cmp29, label %if.then41, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false28
  %25 = load i64, ptr %parent_addr.addr, align 8, !tbaa !21
  %cmp31 = icmp ne i64 %25, -1
  br i1 %cmp31, label %lor.lhs.false32, label %if.then41

lor.lhs.false32:                                  ; preds = %lor.lhs.false30
  %26 = load i64, ptr %parent_addr.addr, align 8, !tbaa !21
  %and = and i64 %26, 524280
  %conv = trunc i64 %and to i32
  %shr = lshr i32 %conv, 3
  %cmp33 = icmp slt i32 %shr, 0
  br i1 %cmp33, label %if.then41, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false32
  %27 = load i64, ptr %parent_addr.addr, align 8, !tbaa !21
  %and36 = and i64 %27, 524280
  %conv37 = trunc i64 %and36 to i32
  %shr38 = lshr i32 %conv37, 3
  %cmp39 = icmp sge i32 %shr38, 65536
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %lor.lhs.false35, %lor.lhs.false32, %lor.lhs.false30, %lor.lhs.false28, %lor.lhs.false25, %cond.end23
  %28 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %29 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %30 = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !21
  %call = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_flush_dependency_exists, i32 noundef 879, i64 noundef %28, i64 noundef %29, i64 noundef %30, ptr noundef @.str.95)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %31 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool42 = trunc i8 %31 to i1
  %frombool = zext i1 %tobool42 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !10
  store i8 1, ptr %ret_value, align 1, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end43:                                         ; preds = %lor.lhs.false35
  %32 = load i64, ptr %parent_addr.addr, align 8, !tbaa !21
  %and44 = and i64 %32, 524280
  %conv45 = trunc i64 %and44 to i32
  %shr46 = lshr i32 %conv45, 3
  store i32 %shr46, ptr %k, align 4, !tbaa !8
  %33 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index = getelementptr inbounds %struct.H5C_t, ptr %33, i32 0, i32 21
  %34 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom = sext i32 %34 to i64
  %arrayidx = getelementptr inbounds [65536 x ptr], ptr %index, i64 0, i64 %idxprom
  %35 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %35, ptr %parent_ptr, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %if.end180, %if.end43
  %36 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %tobool47 = icmp ne ptr %36, null
  br i1 %tobool47, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load i64, ptr %parent_addr.addr, align 8, !tbaa !21
  %cmp48 = icmp ne i64 %37, -1
  br i1 %cmp48, label %land.lhs.true50, label %if.end180

land.lhs.true50:                                  ; preds = %while.body
  %38 = load i64, ptr %parent_addr.addr, align 8, !tbaa !21
  %39 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %addr = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %39, i32 0, i32 2
  %40 = load i64, ptr %addr, align 8, !tbaa !25
  %cmp51 = icmp eq i64 %38, %40
  br i1 %cmp51, label %if.then53, label %if.end180

if.then53:                                        ; preds = %land.lhs.true50
  %41 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cmp54 = icmp eq ptr %41, null
  br i1 %cmp54, label %if.then123, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %if.then53
  %42 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %magic57 = getelementptr inbounds %struct.H5C_t, ptr %42, i32 0, i32 0
  %43 = load i32, ptr %magic57, align 8, !tbaa !14
  %cmp58 = icmp ne i32 %43, 6073358
  br i1 %cmp58, label %if.then123, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false56
  %44 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_len = getelementptr inbounds %struct.H5C_t, ptr %44, i32 0, i32 13
  %45 = load i32, ptr %index_len, align 4, !tbaa !58
  %cmp61 = icmp ult i32 %45, 1
  br i1 %cmp61, label %if.then123, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false60
  %46 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %cmp64 = icmp eq ptr %46, null
  br i1 %cmp64, label %if.then123, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false63
  %47 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_size67 = getelementptr inbounds %struct.H5C_t, ptr %47, i32 0, i32 14
  %48 = load i64, ptr %index_size67, align 8, !tbaa !40
  %49 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %49, i32 0, i32 3
  %50 = load i64, ptr %size, align 8, !tbaa !29
  %cmp68 = icmp ult i64 %48, %50
  br i1 %cmp68, label %if.then123, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %lor.lhs.false66
  %51 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_size71 = getelementptr inbounds %struct.H5C_t, ptr %51, i32 0, i32 14
  %52 = load i64, ptr %index_size71, align 8, !tbaa !40
  %53 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %clean_index_size72 = getelementptr inbounds %struct.H5C_t, ptr %53, i32 0, i32 17
  %54 = load i64, ptr %clean_index_size72, align 8, !tbaa !60
  %55 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %dirty_index_size73 = getelementptr inbounds %struct.H5C_t, ptr %55, i32 0, i32 19
  %56 = load i64, ptr %dirty_index_size73, align 8, !tbaa !62
  %add74 = add i64 %54, %56
  %cmp75 = icmp ne i64 %52, %add74
  br i1 %cmp75, label %if.then123, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %lor.lhs.false70
  %57 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %size78 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %57, i32 0, i32 3
  %58 = load i64, ptr %size78, align 8, !tbaa !29
  %cmp79 = icmp ule i64 %58, 0
  br i1 %cmp79, label %if.then123, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %lor.lhs.false77
  %59 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index82 = getelementptr inbounds %struct.H5C_t, ptr %59, i32 0, i32 21
  %60 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom83 = sext i32 %60 to i64
  %arrayidx84 = getelementptr inbounds [65536 x ptr], ptr %index82, i64 0, i64 %idxprom83
  %61 = load ptr, ptr %arrayidx84, align 8, !tbaa !4
  %cmp85 = icmp eq ptr %61, null
  br i1 %cmp85, label %if.then123, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %lor.lhs.false81
  %62 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index88 = getelementptr inbounds %struct.H5C_t, ptr %62, i32 0, i32 21
  %63 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom89 = sext i32 %63 to i64
  %arrayidx90 = getelementptr inbounds [65536 x ptr], ptr %index88, i64 0, i64 %idxprom89
  %64 = load ptr, ptr %arrayidx90, align 8, !tbaa !4
  %65 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %cmp91 = icmp ne ptr %64, %65
  br i1 %cmp91, label %land.lhs.true93, label %lor.lhs.false96

land.lhs.true93:                                  ; preds = %lor.lhs.false87
  %66 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %ht_prev = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %66, i32 0, i32 28
  %67 = load ptr, ptr %ht_prev, align 8, !tbaa !93
  %cmp94 = icmp eq ptr %67, null
  br i1 %cmp94, label %if.then123, label %lor.lhs.false96

lor.lhs.false96:                                  ; preds = %land.lhs.true93, %lor.lhs.false87
  %68 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index97 = getelementptr inbounds %struct.H5C_t, ptr %68, i32 0, i32 21
  %69 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom98 = sext i32 %69 to i64
  %arrayidx99 = getelementptr inbounds [65536 x ptr], ptr %index97, i64 0, i64 %idxprom98
  %70 = load ptr, ptr %arrayidx99, align 8, !tbaa !4
  %71 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %cmp100 = icmp eq ptr %70, %71
  br i1 %cmp100, label %land.lhs.true102, label %lor.lhs.false106

land.lhs.true102:                                 ; preds = %lor.lhs.false96
  %72 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %ht_prev103 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %72, i32 0, i32 28
  %73 = load ptr, ptr %ht_prev103, align 8, !tbaa !93
  %cmp104 = icmp ne ptr %73, null
  br i1 %cmp104, label %if.then123, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %land.lhs.true102, %lor.lhs.false96
  %74 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %ht_prev107 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %74, i32 0, i32 28
  %75 = load ptr, ptr %ht_prev107, align 8, !tbaa !93
  %cmp108 = icmp ne ptr %75, null
  br i1 %cmp108, label %land.lhs.true110, label %lor.lhs.false114

land.lhs.true110:                                 ; preds = %lor.lhs.false106
  %76 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %ht_prev111 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %76, i32 0, i32 28
  %77 = load ptr, ptr %ht_prev111, align 8, !tbaa !93
  %ht_next = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %77, i32 0, i32 27
  %78 = load ptr, ptr %ht_next, align 8, !tbaa !24
  %79 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %cmp112 = icmp ne ptr %78, %79
  br i1 %cmp112, label %if.then123, label %lor.lhs.false114

lor.lhs.false114:                                 ; preds = %land.lhs.true110, %lor.lhs.false106
  %80 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %ht_next115 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %80, i32 0, i32 27
  %81 = load ptr, ptr %ht_next115, align 8, !tbaa !24
  %cmp116 = icmp ne ptr %81, null
  br i1 %cmp116, label %land.lhs.true118, label %if.end127

land.lhs.true118:                                 ; preds = %lor.lhs.false114
  %82 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %ht_next119 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %82, i32 0, i32 27
  %83 = load ptr, ptr %ht_next119, align 8, !tbaa !24
  %ht_prev120 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %83, i32 0, i32 28
  %84 = load ptr, ptr %ht_prev120, align 8, !tbaa !93
  %85 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %cmp121 = icmp ne ptr %84, %85
  br i1 %cmp121, label %if.then123, label %if.end127

if.then123:                                       ; preds = %land.lhs.true118, %land.lhs.true110, %land.lhs.true102, %land.lhs.true93, %lor.lhs.false81, %lor.lhs.false77, %lor.lhs.false70, %lor.lhs.false66, %lor.lhs.false63, %lor.lhs.false60, %lor.lhs.false56, %if.then53
  %86 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %87 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %88 = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !21
  %call124 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_flush_dependency_exists, i32 noundef 879, i64 noundef %86, i64 noundef %87, i64 noundef %88, ptr noundef @.str.96)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %89 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool125 = trunc i8 %89 to i1
  %frombool126 = zext i1 %tobool125 to i8
  store i8 %frombool126, ptr %err_occurred, align 1, !tbaa !10
  store i8 1, ptr %ret_value, align 1, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end127:                                        ; preds = %land.lhs.true118, %lor.lhs.false114
  %90 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %91 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index128 = getelementptr inbounds %struct.H5C_t, ptr %91, i32 0, i32 21
  %92 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom129 = sext i32 %92 to i64
  %arrayidx130 = getelementptr inbounds [65536 x ptr], ptr %index128, i64 0, i64 %idxprom129
  %93 = load ptr, ptr %arrayidx130, align 8, !tbaa !4
  %cmp131 = icmp ne ptr %90, %93
  br i1 %cmp131, label %if.then133, label %if.end179

if.then133:                                       ; preds = %if.end127
  %94 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %ht_next134 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %94, i32 0, i32 27
  %95 = load ptr, ptr %ht_next134, align 8, !tbaa !24
  %tobool135 = icmp ne ptr %95, null
  br i1 %tobool135, label %if.then136, label %if.end140

if.then136:                                       ; preds = %if.then133
  %96 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %ht_prev137 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %96, i32 0, i32 28
  %97 = load ptr, ptr %ht_prev137, align 8, !tbaa !93
  %98 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %ht_next138 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %98, i32 0, i32 27
  %99 = load ptr, ptr %ht_next138, align 8, !tbaa !24
  %ht_prev139 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %99, i32 0, i32 28
  store ptr %97, ptr %ht_prev139, align 8, !tbaa !93
  br label %if.end140

if.end140:                                        ; preds = %if.then136, %if.then133
  %100 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %ht_prev141 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %100, i32 0, i32 28
  %101 = load ptr, ptr %ht_prev141, align 8, !tbaa !93
  %cmp142 = icmp ne ptr %101, null
  br i1 %cmp142, label %cond.true144, label %cond.false145

cond.true144:                                     ; preds = %if.end140
  br label %cond.end146

cond.false145:                                    ; preds = %if.end140
  call void @__assert_fail(ptr noundef @.str.97, ptr noundef @.str.1, i32 noundef 879, ptr noundef @__PRETTY_FUNCTION__.H5C_flush_dependency_exists) #7
  unreachable

102:                                              ; No predecessors!
  br label %cond.end146

cond.end146:                                      ; preds = %102, %cond.true144
  %103 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %ht_next147 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %103, i32 0, i32 27
  %104 = load ptr, ptr %ht_next147, align 8, !tbaa !24
  %105 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %ht_prev148 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %105, i32 0, i32 28
  %106 = load ptr, ptr %ht_prev148, align 8, !tbaa !93
  %ht_next149 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %106, i32 0, i32 27
  store ptr %104, ptr %ht_next149, align 8, !tbaa !24
  %107 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %108 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index150 = getelementptr inbounds %struct.H5C_t, ptr %108, i32 0, i32 21
  %109 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom151 = sext i32 %109 to i64
  %arrayidx152 = getelementptr inbounds [65536 x ptr], ptr %index150, i64 0, i64 %idxprom151
  %110 = load ptr, ptr %arrayidx152, align 8, !tbaa !4
  %ht_prev153 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %110, i32 0, i32 28
  store ptr %107, ptr %ht_prev153, align 8, !tbaa !93
  %111 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index154 = getelementptr inbounds %struct.H5C_t, ptr %111, i32 0, i32 21
  %112 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom155 = sext i32 %112 to i64
  %arrayidx156 = getelementptr inbounds [65536 x ptr], ptr %index154, i64 0, i64 %idxprom155
  %113 = load ptr, ptr %arrayidx156, align 8, !tbaa !4
  %114 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %ht_next157 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %114, i32 0, i32 27
  store ptr %113, ptr %ht_next157, align 8, !tbaa !24
  %115 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %ht_prev158 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %115, i32 0, i32 28
  store ptr null, ptr %ht_prev158, align 8, !tbaa !93
  %116 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %117 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index159 = getelementptr inbounds %struct.H5C_t, ptr %117, i32 0, i32 21
  %118 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom160 = sext i32 %118 to i64
  %arrayidx161 = getelementptr inbounds [65536 x ptr], ptr %index159, i64 0, i64 %idxprom160
  store ptr %116, ptr %arrayidx161, align 8, !tbaa !4
  %119 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cmp162 = icmp eq ptr %119, null
  br i1 %cmp162, label %if.then174, label %lor.lhs.false164

lor.lhs.false164:                                 ; preds = %cond.end146
  %120 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index165 = getelementptr inbounds %struct.H5C_t, ptr %120, i32 0, i32 21
  %121 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom166 = sext i32 %121 to i64
  %arrayidx167 = getelementptr inbounds [65536 x ptr], ptr %index165, i64 0, i64 %idxprom166
  %122 = load ptr, ptr %arrayidx167, align 8, !tbaa !4
  %123 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %cmp168 = icmp ne ptr %122, %123
  br i1 %cmp168, label %if.then174, label %lor.lhs.false170

lor.lhs.false170:                                 ; preds = %lor.lhs.false164
  %124 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %ht_prev171 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %124, i32 0, i32 28
  %125 = load ptr, ptr %ht_prev171, align 8, !tbaa !93
  %cmp172 = icmp ne ptr %125, null
  br i1 %cmp172, label %if.then174, label %if.end178

if.then174:                                       ; preds = %lor.lhs.false170, %lor.lhs.false164, %cond.end146
  %126 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %127 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %128 = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !21
  %call175 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_flush_dependency_exists, i32 noundef 879, i64 noundef %126, i64 noundef %127, i64 noundef %128, ptr noundef @.str.98)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %129 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool176 = trunc i8 %129 to i1
  %frombool177 = zext i1 %tobool176 to i8
  store i8 %frombool177, ptr %err_occurred, align 1, !tbaa !10
  store i8 1, ptr %ret_value, align 1, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end178:                                        ; preds = %lor.lhs.false170
  br label %if.end179

if.end179:                                        ; preds = %if.end178, %if.end127
  br label %while.end

if.end180:                                        ; preds = %land.lhs.true50, %while.body
  %130 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %ht_next181 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %130, i32 0, i32 27
  %131 = load ptr, ptr %ht_next181, align 8, !tbaa !24
  store ptr %131, ptr %parent_ptr, align 8, !tbaa !4
  %132 = load i32, ptr %depth, align 4, !tbaa !8
  %inc = add nsw i32 %132, 1
  store i32 %inc, ptr %depth, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %if.end179, %while.cond
  %133 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %cmp182 = icmp ne ptr %133, null
  br i1 %cmp182, label %if.then184, label %if.else

if.then184:                                       ; preds = %while.end
  %134 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %successful_ht_searches = getelementptr inbounds %struct.H5C_t, ptr %134, i32 0, i32 115
  %135 = load i64, ptr %successful_ht_searches, align 8, !tbaa !51
  %inc185 = add nsw i64 %135, 1
  store i64 %inc185, ptr %successful_ht_searches, align 8, !tbaa !51
  %136 = load i32, ptr %depth, align 4, !tbaa !8
  %conv186 = sext i32 %136 to i64
  %137 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_successful_ht_search_depth = getelementptr inbounds %struct.H5C_t, ptr %137, i32 0, i32 116
  %138 = load i64, ptr %total_successful_ht_search_depth, align 8, !tbaa !52
  %add187 = add nsw i64 %138, %conv186
  store i64 %add187, ptr %total_successful_ht_search_depth, align 8, !tbaa !52
  br label %if.end191

if.else:                                          ; preds = %while.end
  %139 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %failed_ht_searches = getelementptr inbounds %struct.H5C_t, ptr %139, i32 0, i32 117
  %140 = load i64, ptr %failed_ht_searches, align 8, !tbaa !53
  %inc188 = add nsw i64 %140, 1
  store i64 %inc188, ptr %failed_ht_searches, align 8, !tbaa !53
  %141 = load i32, ptr %depth, align 4, !tbaa !8
  %conv189 = sext i32 %141 to i64
  %142 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_failed_ht_search_depth = getelementptr inbounds %struct.H5C_t, ptr %142, i32 0, i32 118
  %143 = load i64, ptr %total_failed_ht_search_depth, align 8, !tbaa !54
  %add190 = add nsw i64 %143, %conv189
  store i64 %add190, ptr %total_failed_ht_search_depth, align 8, !tbaa !54
  br label %if.end191

if.end191:                                        ; preds = %if.else, %if.then184
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then174, %if.then123, %if.then41, %if.end191
  call void @llvm.lifetime.end.p0(i64 4, ptr %depth) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup449 [
    i32 0, label %cleanup.cont
    i32 2, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %k193) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %depth194) #6
  store i32 0, ptr %depth194, align 4, !tbaa !8
  %144 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cmp195 = icmp eq ptr %144, null
  br i1 %cmp195, label %if.then223, label %lor.lhs.false197

lor.lhs.false197:                                 ; preds = %cleanup.cont
  %145 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %magic198 = getelementptr inbounds %struct.H5C_t, ptr %145, i32 0, i32 0
  %146 = load i32, ptr %magic198, align 8, !tbaa !14
  %cmp199 = icmp ne i32 %146, 6073358
  br i1 %cmp199, label %if.then223, label %lor.lhs.false201

lor.lhs.false201:                                 ; preds = %lor.lhs.false197
  %147 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_size202 = getelementptr inbounds %struct.H5C_t, ptr %147, i32 0, i32 14
  %148 = load i64, ptr %index_size202, align 8, !tbaa !40
  %149 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %clean_index_size203 = getelementptr inbounds %struct.H5C_t, ptr %149, i32 0, i32 17
  %150 = load i64, ptr %clean_index_size203, align 8, !tbaa !60
  %151 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %dirty_index_size204 = getelementptr inbounds %struct.H5C_t, ptr %151, i32 0, i32 19
  %152 = load i64, ptr %dirty_index_size204, align 8, !tbaa !62
  %add205 = add i64 %150, %152
  %cmp206 = icmp ne i64 %148, %add205
  br i1 %cmp206, label %if.then223, label %lor.lhs.false208

lor.lhs.false208:                                 ; preds = %lor.lhs.false201
  %153 = load i64, ptr %child_addr.addr, align 8, !tbaa !21
  %cmp209 = icmp ne i64 %153, -1
  br i1 %cmp209, label %lor.lhs.false211, label %if.then223

lor.lhs.false211:                                 ; preds = %lor.lhs.false208
  %154 = load i64, ptr %child_addr.addr, align 8, !tbaa !21
  %and212 = and i64 %154, 524280
  %conv213 = trunc i64 %and212 to i32
  %shr214 = lshr i32 %conv213, 3
  %cmp215 = icmp slt i32 %shr214, 0
  br i1 %cmp215, label %if.then223, label %lor.lhs.false217

lor.lhs.false217:                                 ; preds = %lor.lhs.false211
  %155 = load i64, ptr %child_addr.addr, align 8, !tbaa !21
  %and218 = and i64 %155, 524280
  %conv219 = trunc i64 %and218 to i32
  %shr220 = lshr i32 %conv219, 3
  %cmp221 = icmp sge i32 %shr220, 65536
  br i1 %cmp221, label %if.then223, label %if.end227

if.then223:                                       ; preds = %lor.lhs.false217, %lor.lhs.false211, %lor.lhs.false208, %lor.lhs.false201, %lor.lhs.false197, %cleanup.cont
  %156 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %157 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %158 = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !21
  %call224 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_flush_dependency_exists, i32 noundef 880, i64 noundef %156, i64 noundef %157, i64 noundef %158, ptr noundef @.str.95)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %159 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool225 = trunc i8 %159 to i1
  %frombool226 = zext i1 %tobool225 to i8
  store i8 %frombool226, ptr %err_occurred, align 1, !tbaa !10
  store i8 1, ptr %ret_value, align 1, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup393

if.end227:                                        ; preds = %lor.lhs.false217
  %160 = load i64, ptr %child_addr.addr, align 8, !tbaa !21
  %and228 = and i64 %160, 524280
  %conv229 = trunc i64 %and228 to i32
  %shr230 = lshr i32 %conv229, 3
  store i32 %shr230, ptr %k193, align 4, !tbaa !8
  %161 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index231 = getelementptr inbounds %struct.H5C_t, ptr %161, i32 0, i32 21
  %162 = load i32, ptr %k193, align 4, !tbaa !8
  %idxprom232 = sext i32 %162 to i64
  %arrayidx233 = getelementptr inbounds [65536 x ptr], ptr %index231, i64 0, i64 %idxprom232
  %163 = load ptr, ptr %arrayidx233, align 8, !tbaa !4
  store ptr %163, ptr %child_ptr, align 8, !tbaa !4
  br label %while.cond234

while.cond234:                                    ; preds = %if.end374, %if.end227
  %164 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %tobool235 = icmp ne ptr %164, null
  br i1 %tobool235, label %while.body236, label %while.end377

while.body236:                                    ; preds = %while.cond234
  %165 = load i64, ptr %child_addr.addr, align 8, !tbaa !21
  %cmp237 = icmp ne i64 %165, -1
  br i1 %cmp237, label %land.lhs.true239, label %if.end374

land.lhs.true239:                                 ; preds = %while.body236
  %166 = load i64, ptr %child_addr.addr, align 8, !tbaa !21
  %167 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %addr240 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %167, i32 0, i32 2
  %168 = load i64, ptr %addr240, align 8, !tbaa !25
  %cmp241 = icmp eq i64 %166, %168
  br i1 %cmp241, label %if.then243, label %if.end374

if.then243:                                       ; preds = %land.lhs.true239
  %169 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cmp244 = icmp eq ptr %169, null
  br i1 %cmp244, label %if.then317, label %lor.lhs.false246

lor.lhs.false246:                                 ; preds = %if.then243
  %170 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %magic247 = getelementptr inbounds %struct.H5C_t, ptr %170, i32 0, i32 0
  %171 = load i32, ptr %magic247, align 8, !tbaa !14
  %cmp248 = icmp ne i32 %171, 6073358
  br i1 %cmp248, label %if.then317, label %lor.lhs.false250

lor.lhs.false250:                                 ; preds = %lor.lhs.false246
  %172 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_len251 = getelementptr inbounds %struct.H5C_t, ptr %172, i32 0, i32 13
  %173 = load i32, ptr %index_len251, align 4, !tbaa !58
  %cmp252 = icmp ult i32 %173, 1
  br i1 %cmp252, label %if.then317, label %lor.lhs.false254

lor.lhs.false254:                                 ; preds = %lor.lhs.false250
  %174 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %cmp255 = icmp eq ptr %174, null
  br i1 %cmp255, label %if.then317, label %lor.lhs.false257

lor.lhs.false257:                                 ; preds = %lor.lhs.false254
  %175 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_size258 = getelementptr inbounds %struct.H5C_t, ptr %175, i32 0, i32 14
  %176 = load i64, ptr %index_size258, align 8, !tbaa !40
  %177 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %size259 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %177, i32 0, i32 3
  %178 = load i64, ptr %size259, align 8, !tbaa !29
  %cmp260 = icmp ult i64 %176, %178
  br i1 %cmp260, label %if.then317, label %lor.lhs.false262

lor.lhs.false262:                                 ; preds = %lor.lhs.false257
  %179 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_size263 = getelementptr inbounds %struct.H5C_t, ptr %179, i32 0, i32 14
  %180 = load i64, ptr %index_size263, align 8, !tbaa !40
  %181 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %clean_index_size264 = getelementptr inbounds %struct.H5C_t, ptr %181, i32 0, i32 17
  %182 = load i64, ptr %clean_index_size264, align 8, !tbaa !60
  %183 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %dirty_index_size265 = getelementptr inbounds %struct.H5C_t, ptr %183, i32 0, i32 19
  %184 = load i64, ptr %dirty_index_size265, align 8, !tbaa !62
  %add266 = add i64 %182, %184
  %cmp267 = icmp ne i64 %180, %add266
  br i1 %cmp267, label %if.then317, label %lor.lhs.false269

lor.lhs.false269:                                 ; preds = %lor.lhs.false262
  %185 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %size270 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %185, i32 0, i32 3
  %186 = load i64, ptr %size270, align 8, !tbaa !29
  %cmp271 = icmp ule i64 %186, 0
  br i1 %cmp271, label %if.then317, label %lor.lhs.false273

lor.lhs.false273:                                 ; preds = %lor.lhs.false269
  %187 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index274 = getelementptr inbounds %struct.H5C_t, ptr %187, i32 0, i32 21
  %188 = load i32, ptr %k193, align 4, !tbaa !8
  %idxprom275 = sext i32 %188 to i64
  %arrayidx276 = getelementptr inbounds [65536 x ptr], ptr %index274, i64 0, i64 %idxprom275
  %189 = load ptr, ptr %arrayidx276, align 8, !tbaa !4
  %cmp277 = icmp eq ptr %189, null
  br i1 %cmp277, label %if.then317, label %lor.lhs.false279

lor.lhs.false279:                                 ; preds = %lor.lhs.false273
  %190 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index280 = getelementptr inbounds %struct.H5C_t, ptr %190, i32 0, i32 21
  %191 = load i32, ptr %k193, align 4, !tbaa !8
  %idxprom281 = sext i32 %191 to i64
  %arrayidx282 = getelementptr inbounds [65536 x ptr], ptr %index280, i64 0, i64 %idxprom281
  %192 = load ptr, ptr %arrayidx282, align 8, !tbaa !4
  %193 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %cmp283 = icmp ne ptr %192, %193
  br i1 %cmp283, label %land.lhs.true285, label %lor.lhs.false289

land.lhs.true285:                                 ; preds = %lor.lhs.false279
  %194 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %ht_prev286 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %194, i32 0, i32 28
  %195 = load ptr, ptr %ht_prev286, align 8, !tbaa !93
  %cmp287 = icmp eq ptr %195, null
  br i1 %cmp287, label %if.then317, label %lor.lhs.false289

lor.lhs.false289:                                 ; preds = %land.lhs.true285, %lor.lhs.false279
  %196 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index290 = getelementptr inbounds %struct.H5C_t, ptr %196, i32 0, i32 21
  %197 = load i32, ptr %k193, align 4, !tbaa !8
  %idxprom291 = sext i32 %197 to i64
  %arrayidx292 = getelementptr inbounds [65536 x ptr], ptr %index290, i64 0, i64 %idxprom291
  %198 = load ptr, ptr %arrayidx292, align 8, !tbaa !4
  %199 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %cmp293 = icmp eq ptr %198, %199
  br i1 %cmp293, label %land.lhs.true295, label %lor.lhs.false299

land.lhs.true295:                                 ; preds = %lor.lhs.false289
  %200 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %ht_prev296 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %200, i32 0, i32 28
  %201 = load ptr, ptr %ht_prev296, align 8, !tbaa !93
  %cmp297 = icmp ne ptr %201, null
  br i1 %cmp297, label %if.then317, label %lor.lhs.false299

lor.lhs.false299:                                 ; preds = %land.lhs.true295, %lor.lhs.false289
  %202 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %ht_prev300 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %202, i32 0, i32 28
  %203 = load ptr, ptr %ht_prev300, align 8, !tbaa !93
  %cmp301 = icmp ne ptr %203, null
  br i1 %cmp301, label %land.lhs.true303, label %lor.lhs.false308

land.lhs.true303:                                 ; preds = %lor.lhs.false299
  %204 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %ht_prev304 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %204, i32 0, i32 28
  %205 = load ptr, ptr %ht_prev304, align 8, !tbaa !93
  %ht_next305 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %205, i32 0, i32 27
  %206 = load ptr, ptr %ht_next305, align 8, !tbaa !24
  %207 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %cmp306 = icmp ne ptr %206, %207
  br i1 %cmp306, label %if.then317, label %lor.lhs.false308

lor.lhs.false308:                                 ; preds = %land.lhs.true303, %lor.lhs.false299
  %208 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %ht_next309 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %208, i32 0, i32 27
  %209 = load ptr, ptr %ht_next309, align 8, !tbaa !24
  %cmp310 = icmp ne ptr %209, null
  br i1 %cmp310, label %land.lhs.true312, label %if.end321

land.lhs.true312:                                 ; preds = %lor.lhs.false308
  %210 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %ht_next313 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %210, i32 0, i32 27
  %211 = load ptr, ptr %ht_next313, align 8, !tbaa !24
  %ht_prev314 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %211, i32 0, i32 28
  %212 = load ptr, ptr %ht_prev314, align 8, !tbaa !93
  %213 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %cmp315 = icmp ne ptr %212, %213
  br i1 %cmp315, label %if.then317, label %if.end321

if.then317:                                       ; preds = %land.lhs.true312, %land.lhs.true303, %land.lhs.true295, %land.lhs.true285, %lor.lhs.false273, %lor.lhs.false269, %lor.lhs.false262, %lor.lhs.false257, %lor.lhs.false254, %lor.lhs.false250, %lor.lhs.false246, %if.then243
  %214 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %215 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %216 = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !21
  %call318 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_flush_dependency_exists, i32 noundef 880, i64 noundef %214, i64 noundef %215, i64 noundef %216, ptr noundef @.str.96)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %217 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool319 = trunc i8 %217 to i1
  %frombool320 = zext i1 %tobool319 to i8
  store i8 %frombool320, ptr %err_occurred, align 1, !tbaa !10
  store i8 1, ptr %ret_value, align 1, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup393

if.end321:                                        ; preds = %land.lhs.true312, %lor.lhs.false308
  %218 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %219 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index322 = getelementptr inbounds %struct.H5C_t, ptr %219, i32 0, i32 21
  %220 = load i32, ptr %k193, align 4, !tbaa !8
  %idxprom323 = sext i32 %220 to i64
  %arrayidx324 = getelementptr inbounds [65536 x ptr], ptr %index322, i64 0, i64 %idxprom323
  %221 = load ptr, ptr %arrayidx324, align 8, !tbaa !4
  %cmp325 = icmp ne ptr %218, %221
  br i1 %cmp325, label %if.then327, label %if.end373

if.then327:                                       ; preds = %if.end321
  %222 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %ht_next328 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %222, i32 0, i32 27
  %223 = load ptr, ptr %ht_next328, align 8, !tbaa !24
  %tobool329 = icmp ne ptr %223, null
  br i1 %tobool329, label %if.then330, label %if.end334

if.then330:                                       ; preds = %if.then327
  %224 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %ht_prev331 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %224, i32 0, i32 28
  %225 = load ptr, ptr %ht_prev331, align 8, !tbaa !93
  %226 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %ht_next332 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %226, i32 0, i32 27
  %227 = load ptr, ptr %ht_next332, align 8, !tbaa !24
  %ht_prev333 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %227, i32 0, i32 28
  store ptr %225, ptr %ht_prev333, align 8, !tbaa !93
  br label %if.end334

if.end334:                                        ; preds = %if.then330, %if.then327
  %228 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %ht_prev335 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %228, i32 0, i32 28
  %229 = load ptr, ptr %ht_prev335, align 8, !tbaa !93
  %cmp336 = icmp ne ptr %229, null
  br i1 %cmp336, label %cond.true338, label %cond.false339

cond.true338:                                     ; preds = %if.end334
  br label %cond.end340

cond.false339:                                    ; preds = %if.end334
  call void @__assert_fail(ptr noundef @.str.99, ptr noundef @.str.1, i32 noundef 880, ptr noundef @__PRETTY_FUNCTION__.H5C_flush_dependency_exists) #7
  unreachable

230:                                              ; No predecessors!
  br label %cond.end340

cond.end340:                                      ; preds = %230, %cond.true338
  %231 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %ht_next341 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %231, i32 0, i32 27
  %232 = load ptr, ptr %ht_next341, align 8, !tbaa !24
  %233 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %ht_prev342 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %233, i32 0, i32 28
  %234 = load ptr, ptr %ht_prev342, align 8, !tbaa !93
  %ht_next343 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %234, i32 0, i32 27
  store ptr %232, ptr %ht_next343, align 8, !tbaa !24
  %235 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %236 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index344 = getelementptr inbounds %struct.H5C_t, ptr %236, i32 0, i32 21
  %237 = load i32, ptr %k193, align 4, !tbaa !8
  %idxprom345 = sext i32 %237 to i64
  %arrayidx346 = getelementptr inbounds [65536 x ptr], ptr %index344, i64 0, i64 %idxprom345
  %238 = load ptr, ptr %arrayidx346, align 8, !tbaa !4
  %ht_prev347 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %238, i32 0, i32 28
  store ptr %235, ptr %ht_prev347, align 8, !tbaa !93
  %239 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index348 = getelementptr inbounds %struct.H5C_t, ptr %239, i32 0, i32 21
  %240 = load i32, ptr %k193, align 4, !tbaa !8
  %idxprom349 = sext i32 %240 to i64
  %arrayidx350 = getelementptr inbounds [65536 x ptr], ptr %index348, i64 0, i64 %idxprom349
  %241 = load ptr, ptr %arrayidx350, align 8, !tbaa !4
  %242 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %ht_next351 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %242, i32 0, i32 27
  store ptr %241, ptr %ht_next351, align 8, !tbaa !24
  %243 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %ht_prev352 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %243, i32 0, i32 28
  store ptr null, ptr %ht_prev352, align 8, !tbaa !93
  %244 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %245 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index353 = getelementptr inbounds %struct.H5C_t, ptr %245, i32 0, i32 21
  %246 = load i32, ptr %k193, align 4, !tbaa !8
  %idxprom354 = sext i32 %246 to i64
  %arrayidx355 = getelementptr inbounds [65536 x ptr], ptr %index353, i64 0, i64 %idxprom354
  store ptr %244, ptr %arrayidx355, align 8, !tbaa !4
  %247 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cmp356 = icmp eq ptr %247, null
  br i1 %cmp356, label %if.then368, label %lor.lhs.false358

lor.lhs.false358:                                 ; preds = %cond.end340
  %248 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index359 = getelementptr inbounds %struct.H5C_t, ptr %248, i32 0, i32 21
  %249 = load i32, ptr %k193, align 4, !tbaa !8
  %idxprom360 = sext i32 %249 to i64
  %arrayidx361 = getelementptr inbounds [65536 x ptr], ptr %index359, i64 0, i64 %idxprom360
  %250 = load ptr, ptr %arrayidx361, align 8, !tbaa !4
  %251 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %cmp362 = icmp ne ptr %250, %251
  br i1 %cmp362, label %if.then368, label %lor.lhs.false364

lor.lhs.false364:                                 ; preds = %lor.lhs.false358
  %252 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %ht_prev365 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %252, i32 0, i32 28
  %253 = load ptr, ptr %ht_prev365, align 8, !tbaa !93
  %cmp366 = icmp ne ptr %253, null
  br i1 %cmp366, label %if.then368, label %if.end372

if.then368:                                       ; preds = %lor.lhs.false364, %lor.lhs.false358, %cond.end340
  %254 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %255 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %256 = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !21
  %call369 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_flush_dependency_exists, i32 noundef 880, i64 noundef %254, i64 noundef %255, i64 noundef %256, ptr noundef @.str.98)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %257 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool370 = trunc i8 %257 to i1
  %frombool371 = zext i1 %tobool370 to i8
  store i8 %frombool371, ptr %err_occurred, align 1, !tbaa !10
  store i8 1, ptr %ret_value, align 1, !tbaa !10
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup393

if.end372:                                        ; preds = %lor.lhs.false364
  br label %if.end373

if.end373:                                        ; preds = %if.end372, %if.end321
  br label %while.end377

if.end374:                                        ; preds = %land.lhs.true239, %while.body236
  %258 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %ht_next375 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %258, i32 0, i32 27
  %259 = load ptr, ptr %ht_next375, align 8, !tbaa !24
  store ptr %259, ptr %child_ptr, align 8, !tbaa !4
  %260 = load i32, ptr %depth194, align 4, !tbaa !8
  %inc376 = add nsw i32 %260, 1
  store i32 %inc376, ptr %depth194, align 4, !tbaa !8
  br label %while.cond234

while.end377:                                     ; preds = %if.end373, %while.cond234
  %261 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %cmp378 = icmp ne ptr %261, null
  br i1 %cmp378, label %if.then380, label %if.else386

if.then380:                                       ; preds = %while.end377
  %262 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %successful_ht_searches381 = getelementptr inbounds %struct.H5C_t, ptr %262, i32 0, i32 115
  %263 = load i64, ptr %successful_ht_searches381, align 8, !tbaa !51
  %inc382 = add nsw i64 %263, 1
  store i64 %inc382, ptr %successful_ht_searches381, align 8, !tbaa !51
  %264 = load i32, ptr %depth194, align 4, !tbaa !8
  %conv383 = sext i32 %264 to i64
  %265 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_successful_ht_search_depth384 = getelementptr inbounds %struct.H5C_t, ptr %265, i32 0, i32 116
  %266 = load i64, ptr %total_successful_ht_search_depth384, align 8, !tbaa !52
  %add385 = add nsw i64 %266, %conv383
  store i64 %add385, ptr %total_successful_ht_search_depth384, align 8, !tbaa !52
  br label %if.end392

if.else386:                                       ; preds = %while.end377
  %267 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %failed_ht_searches387 = getelementptr inbounds %struct.H5C_t, ptr %267, i32 0, i32 117
  %268 = load i64, ptr %failed_ht_searches387, align 8, !tbaa !53
  %inc388 = add nsw i64 %268, 1
  store i64 %inc388, ptr %failed_ht_searches387, align 8, !tbaa !53
  %269 = load i32, ptr %depth194, align 4, !tbaa !8
  %conv389 = sext i32 %269 to i64
  %270 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_failed_ht_search_depth390 = getelementptr inbounds %struct.H5C_t, ptr %270, i32 0, i32 118
  %271 = load i64, ptr %total_failed_ht_search_depth390, align 8, !tbaa !54
  %add391 = add nsw i64 %271, %conv389
  store i64 %add391, ptr %total_failed_ht_search_depth390, align 8, !tbaa !54
  br label %if.end392

if.end392:                                        ; preds = %if.else386, %if.then380
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup393

cleanup393:                                       ; preds = %if.then368, %if.then317, %if.then223, %if.end392
  call void @llvm.lifetime.end.p0(i64 4, ptr %depth194) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k193) #6
  %cleanup.dest395 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest395, label %cleanup449 [
    i32 0, label %cleanup.cont396
    i32 2, label %done
  ]

cleanup.cont396:                                  ; preds = %cleanup393
  %272 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %tobool397 = icmp ne ptr %272, null
  br i1 %tobool397, label %land.lhs.true398, label %if.end443

land.lhs.true398:                                 ; preds = %cleanup.cont396
  %273 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %tobool399 = icmp ne ptr %273, null
  br i1 %tobool399, label %if.then400, label %if.end443

if.then400:                                       ; preds = %land.lhs.true398
  %274 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %magic401 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %274, i32 0, i32 0
  %275 = load i32, ptr %magic401, align 8, !tbaa !22
  %cmp402 = icmp eq i32 %275, 6073354
  br i1 %cmp402, label %cond.true404, label %cond.false405

cond.true404:                                     ; preds = %if.then400
  br label %cond.end406

cond.false405:                                    ; preds = %if.then400
  call void @__assert_fail(ptr noundef @.str.100, ptr noundef @.str.1, i32 noundef 883, ptr noundef @__PRETTY_FUNCTION__.H5C_flush_dependency_exists) #7
  unreachable

276:                                              ; No predecessors!
  br label %cond.end406

cond.end406:                                      ; preds = %276, %cond.true404
  %277 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %magic407 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %277, i32 0, i32 0
  %278 = load i32, ptr %magic407, align 8, !tbaa !22
  %cmp408 = icmp eq i32 %278, 6073354
  br i1 %cmp408, label %cond.true410, label %cond.false411

cond.true410:                                     ; preds = %cond.end406
  br label %cond.end412

cond.false411:                                    ; preds = %cond.end406
  call void @__assert_fail(ptr noundef @.str.101, ptr noundef @.str.1, i32 noundef 884, ptr noundef @__PRETTY_FUNCTION__.H5C_flush_dependency_exists) #7
  unreachable

279:                                              ; No predecessors!
  br label %cond.end412

cond.end412:                                      ; preds = %279, %cond.true410
  %280 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %flush_dep_nparents = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %280, i32 0, i32 20
  %281 = load i32, ptr %flush_dep_nparents, align 8, !tbaa !94
  %cmp413 = icmp ugt i32 %281, 0
  br i1 %cmp413, label %if.then415, label %if.end442

if.then415:                                       ; preds = %cond.end412
  call void @llvm.lifetime.start.p0(i64 4, ptr %u) #6
  %282 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %flush_dep_parent = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %282, i32 0, i32 19
  %283 = load ptr, ptr %flush_dep_parent, align 8, !tbaa !95
  %tobool416 = icmp ne ptr %283, null
  br i1 %tobool416, label %cond.true417, label %cond.false418

cond.true417:                                     ; preds = %if.then415
  br label %cond.end419

cond.false418:                                    ; preds = %if.then415
  call void @__assert_fail(ptr noundef @.str.102, ptr noundef @.str.1, i32 noundef 889, ptr noundef @__PRETTY_FUNCTION__.H5C_flush_dependency_exists) #7
  unreachable

284:                                              ; No predecessors!
  br label %cond.end419

cond.end419:                                      ; preds = %284, %cond.true417
  %285 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %flush_dep_parent_nalloc = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %285, i32 0, i32 21
  %286 = load i32, ptr %flush_dep_parent_nalloc, align 4, !tbaa !96
  %287 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %flush_dep_nparents420 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %287, i32 0, i32 20
  %288 = load i32, ptr %flush_dep_nparents420, align 8, !tbaa !94
  %cmp421 = icmp uge i32 %286, %288
  br i1 %cmp421, label %cond.true423, label %cond.false424

cond.true423:                                     ; preds = %cond.end419
  br label %cond.end425

cond.false424:                                    ; preds = %cond.end419
  call void @__assert_fail(ptr noundef @.str.103, ptr noundef @.str.1, i32 noundef 890, ptr noundef @__PRETTY_FUNCTION__.H5C_flush_dependency_exists) #7
  unreachable

289:                                              ; No predecessors!
  br label %cond.end425

cond.end425:                                      ; preds = %289, %cond.true423
  store i32 0, ptr %u, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end425
  %290 = load i32, ptr %u, align 4, !tbaa !8
  %291 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %flush_dep_nparents426 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %291, i32 0, i32 20
  %292 = load i32, ptr %flush_dep_nparents426, align 8, !tbaa !94
  %cmp427 = icmp ult i32 %290, %292
  br i1 %cmp427, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %293 = load ptr, ptr %child_ptr, align 8, !tbaa !4
  %flush_dep_parent429 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %293, i32 0, i32 19
  %294 = load ptr, ptr %flush_dep_parent429, align 8, !tbaa !95
  %295 = load i32, ptr %u, align 4, !tbaa !8
  %idxprom430 = zext i32 %295 to i64
  %arrayidx431 = getelementptr inbounds ptr, ptr %294, i64 %idxprom430
  %296 = load ptr, ptr %arrayidx431, align 8, !tbaa !4
  %297 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %cmp432 = icmp eq ptr %296, %297
  br i1 %cmp432, label %if.then434, label %if.end440

if.then434:                                       ; preds = %for.body
  store i8 1, ptr %fd_exists, align 1, !tbaa !10
  %298 = load ptr, ptr %parent_ptr, align 8, !tbaa !4
  %flush_dep_nchildren = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %298, i32 0, i32 22
  %299 = load i32, ptr %flush_dep_nchildren, align 8, !tbaa !97
  %cmp435 = icmp ugt i32 %299, 0
  br i1 %cmp435, label %cond.true437, label %cond.false438

cond.true437:                                     ; preds = %if.then434
  br label %cond.end439

cond.false438:                                    ; preds = %if.then434
  call void @__assert_fail(ptr noundef @.str.104, ptr noundef @.str.1, i32 noundef 895, ptr noundef @__PRETTY_FUNCTION__.H5C_flush_dependency_exists) #7
  unreachable

300:                                              ; No predecessors!
  br label %cond.end439

cond.end439:                                      ; preds = %300, %cond.true437
  br label %for.end

if.end440:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end440
  %301 = load i32, ptr %u, align 4, !tbaa !8
  %inc441 = add i32 %301, 1
  store i32 %inc441, ptr %u, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %cond.end439, %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %u) #6
  br label %if.end442

if.end442:                                        ; preds = %for.end, %cond.end412
  br label %if.end443

if.end443:                                        ; preds = %if.end442, %land.lhs.true398, %cleanup.cont396
  %302 = load i8, ptr %fd_exists, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool444 = trunc i8 %302 to i1
  %303 = load ptr, ptr %fd_exists_ptr.addr, align 8, !tbaa !4
  %frombool445 = zext i1 %tobool444 to i8
  store i8 %frombool445, ptr %303, align 1, !tbaa !10
  br label %done

done:                                             ; preds = %if.end443, %cleanup393, %cleanup
  br label %if.end446

if.end446:                                        ; preds = %done, %lor.lhs.false
  %304 = load i8, ptr %ret_value, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool447 = trunc i8 %304 to i1
  %conv448 = zext i1 %tobool447 to i32
  store i32 %conv448, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup449

cleanup449:                                       ; preds = %if.end446, %cleanup393, %cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret_value) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %child_ptr) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_ptr) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %fd_exists) #6
  %305 = load i32, ptr %retval, align 4
  ret i32 %305
}

; Function Attrs: nounwind uwtable
define i32 @H5C_validate_index_list(ptr noundef %cache_ptr) #0 {
entry:
  %cache_ptr.addr = alloca ptr, align 8
  %entry_ptr = alloca ptr, align 8
  %len = alloca i32, align 4
  %index_ring_len = alloca [6 x i32], align 16
  %size = alloca i64, align 8
  %clean_size = alloca i64, align 8
  %dirty_size = alloca i64, align 8
  %index_ring_size = alloca [6 x i64], align 16
  %clean_index_ring_size = alloca [6 x i64], align 16
  %dirty_index_ring_size = alloca [6 x i64], align 16
  %i = alloca i32, align 4
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  store ptr %cache_ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_ptr) #6
  store ptr null, ptr %entry_ptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #6
  store i32 0, ptr %len, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 24, ptr %index_ring_len) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #6
  store i64 0, ptr %size, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %clean_size) #6
  store i64 0, ptr %clean_size, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %dirty_size) #6
  store i64 0, ptr %dirty_size, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 48, ptr %index_ring_size) #6
  call void @llvm.lifetime.start.p0(i64 48, ptr %clean_index_ring_size) #6
  call void @llvm.lifetime.start.p0(i64 48, ptr %dirty_index_ring_size) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #6
  store i32 0, ptr %ret_value, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #6
  store i8 0, ptr %err_occurred, align 1, !tbaa !10
  %0 = load i8, ptr @H5C_validate_index_list.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr @H5C_validate_index_list.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr @H5C_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.end183, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %3 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %tobool4 = icmp ne ptr %3, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then3
  br label %cond.end

cond.false:                                       ; preds = %if.then3
  call void @__assert_fail(ptr noundef @.str.91, ptr noundef @.str.1, i32 noundef 944, ptr noundef @__PRETTY_FUNCTION__.H5C_validate_index_list) #7
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %magic = getelementptr inbounds %struct.H5C_t, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %magic, align 8, !tbaa !14
  %cmp = icmp eq i32 %6, 6073358
  br i1 %cmp, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.end
  br label %cond.end7

cond.false6:                                      ; preds = %cond.end
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 945, ptr noundef @__PRETTY_FUNCTION__.H5C_validate_index_list) #7
  unreachable

7:                                                ; No predecessors!
  br label %cond.end7

cond.end7:                                        ; preds = %7, %cond.true5
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end7
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %8, 6
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [6 x i32], ptr %index_ring_len, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !8
  %10 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [6 x i64], ptr %index_ring_size, i64 0, i64 %idxprom9
  store i64 0, ptr %arrayidx10, align 8, !tbaa !21
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [6 x i64], ptr %clean_index_ring_size, i64 0, i64 %idxprom11
  store i64 0, ptr %arrayidx12, align 8, !tbaa !21
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [6 x i64], ptr %dirty_index_ring_size, i64 0, i64 %idxprom13
  store i64 0, ptr %arrayidx14, align 8, !tbaa !21
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %il_head = getelementptr inbounds %struct.H5C_t, ptr %14, i32 0, i32 24
  %15 = load ptr, ptr %il_head, align 8, !tbaa !98
  %cmp15 = icmp eq ptr %15, null
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %for.end
  %16 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %il_tail = getelementptr inbounds %struct.H5C_t, ptr %16, i32 0, i32 25
  %17 = load ptr, ptr %il_tail, align 8, !tbaa !99
  %cmp17 = icmp eq ptr %17, null
  br i1 %cmp17, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %lor.lhs.false16, %for.end
  %18 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %il_head18 = getelementptr inbounds %struct.H5C_t, ptr %18, i32 0, i32 24
  %19 = load ptr, ptr %il_head18, align 8, !tbaa !98
  %20 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %il_tail19 = getelementptr inbounds %struct.H5C_t, ptr %20, i32 0, i32 25
  %21 = load ptr, ptr %il_tail19, align 8, !tbaa !99
  %cmp20 = icmp ne ptr %19, %21
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %land.lhs.true
  %22 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %23 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %24 = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !21
  %call = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_validate_index_list, i32 noundef 956, i64 noundef %22, i64 noundef %23, i64 noundef %24, ptr noundef @.str.105)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %25 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool22 = trunc i8 %25 to i1
  %frombool = zext i1 %tobool22 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !8
  br label %done

if.end23:                                         ; preds = %land.lhs.true, %lor.lhs.false16
  %26 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_len = getelementptr inbounds %struct.H5C_t, ptr %26, i32 0, i32 13
  %27 = load i32, ptr %index_len, align 4, !tbaa !58
  %cmp24 = icmp eq i32 %27, 1
  br i1 %cmp24, label %land.lhs.true25, label %if.end40

land.lhs.true25:                                  ; preds = %if.end23
  %28 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %il_head26 = getelementptr inbounds %struct.H5C_t, ptr %28, i32 0, i32 24
  %29 = load ptr, ptr %il_head26, align 8, !tbaa !98
  %30 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %il_tail27 = getelementptr inbounds %struct.H5C_t, ptr %30, i32 0, i32 25
  %31 = load ptr, ptr %il_tail27, align 8, !tbaa !99
  %cmp28 = icmp ne ptr %29, %31
  br i1 %cmp28, label %if.then36, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %land.lhs.true25
  %32 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %il_head30 = getelementptr inbounds %struct.H5C_t, ptr %32, i32 0, i32 24
  %33 = load ptr, ptr %il_head30, align 8, !tbaa !98
  %cmp31 = icmp eq ptr %33, null
  br i1 %cmp31, label %if.then36, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false29
  %34 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %il_head33 = getelementptr inbounds %struct.H5C_t, ptr %34, i32 0, i32 24
  %35 = load ptr, ptr %il_head33, align 8, !tbaa !98
  %size34 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %35, i32 0, i32 3
  %36 = load i64, ptr %size34, align 8, !tbaa !29
  %37 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_size = getelementptr inbounds %struct.H5C_t, ptr %37, i32 0, i32 14
  %38 = load i64, ptr %index_size, align 8, !tbaa !40
  %cmp35 = icmp ne i64 %36, %38
  br i1 %cmp35, label %if.then36, label %if.end40

if.then36:                                        ; preds = %lor.lhs.false32, %lor.lhs.false29, %land.lhs.true25
  %39 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %40 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %41 = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !21
  %call37 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_validate_index_list, i32 noundef 961, i64 noundef %39, i64 noundef %40, i64 noundef %41, ptr noundef @.str.106)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %42 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool38 = trunc i8 %42 to i1
  %frombool39 = zext i1 %tobool38 to i8
  store i8 %frombool39, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !8
  br label %done

if.end40:                                         ; preds = %lor.lhs.false32, %if.end23
  %43 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_len41 = getelementptr inbounds %struct.H5C_t, ptr %43, i32 0, i32 13
  %44 = load i32, ptr %index_len41, align 4, !tbaa !58
  %cmp42 = icmp uge i32 %44, 1
  br i1 %cmp42, label %land.lhs.true43, label %if.end59

land.lhs.true43:                                  ; preds = %if.end40
  %45 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %il_head44 = getelementptr inbounds %struct.H5C_t, ptr %45, i32 0, i32 24
  %46 = load ptr, ptr %il_head44, align 8, !tbaa !98
  %cmp45 = icmp eq ptr %46, null
  br i1 %cmp45, label %if.then55, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %land.lhs.true43
  %47 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %il_head47 = getelementptr inbounds %struct.H5C_t, ptr %47, i32 0, i32 24
  %48 = load ptr, ptr %il_head47, align 8, !tbaa !98
  %il_prev = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %48, i32 0, i32 30
  %49 = load ptr, ptr %il_prev, align 8, !tbaa !100
  %cmp48 = icmp ne ptr %49, null
  br i1 %cmp48, label %if.then55, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false46
  %50 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %il_tail50 = getelementptr inbounds %struct.H5C_t, ptr %50, i32 0, i32 25
  %51 = load ptr, ptr %il_tail50, align 8, !tbaa !99
  %cmp51 = icmp eq ptr %51, null
  br i1 %cmp51, label %if.then55, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false49
  %52 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %il_tail53 = getelementptr inbounds %struct.H5C_t, ptr %52, i32 0, i32 25
  %53 = load ptr, ptr %il_tail53, align 8, !tbaa !99
  %il_next = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %53, i32 0, i32 29
  %54 = load ptr, ptr %il_next, align 8, !tbaa !101
  %cmp54 = icmp ne ptr %54, null
  br i1 %cmp54, label %if.then55, label %if.end59

if.then55:                                        ; preds = %lor.lhs.false52, %lor.lhs.false49, %lor.lhs.false46, %land.lhs.true43
  %55 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %56 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %57 = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !21
  %call56 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_validate_index_list, i32 noundef 966, i64 noundef %55, i64 noundef %56, i64 noundef %57, ptr noundef @.str.107)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %58 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool57 = trunc i8 %58 to i1
  %frombool58 = zext i1 %tobool57 to i8
  store i8 %frombool58, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !8
  br label %done

if.end59:                                         ; preds = %lor.lhs.false52, %if.end40
  %59 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %il_head60 = getelementptr inbounds %struct.H5C_t, ptr %59, i32 0, i32 24
  %60 = load ptr, ptr %il_head60, align 8, !tbaa !98
  store ptr %60, ptr %entry_ptr, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %if.end126, %if.end59
  %61 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp61 = icmp ne ptr %61, null
  br i1 %cmp61, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %62 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %63 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %il_head62 = getelementptr inbounds %struct.H5C_t, ptr %63, i32 0, i32 24
  %64 = load ptr, ptr %il_head62, align 8, !tbaa !98
  %cmp63 = icmp ne ptr %62, %64
  br i1 %cmp63, label %land.lhs.true64, label %if.end75

land.lhs.true64:                                  ; preds = %while.body
  %65 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %il_prev65 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %65, i32 0, i32 30
  %66 = load ptr, ptr %il_prev65, align 8, !tbaa !100
  %cmp66 = icmp eq ptr %66, null
  br i1 %cmp66, label %if.then71, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %land.lhs.true64
  %67 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %il_prev68 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %67, i32 0, i32 30
  %68 = load ptr, ptr %il_prev68, align 8, !tbaa !100
  %il_next69 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %68, i32 0, i32 29
  %69 = load ptr, ptr %il_next69, align 8, !tbaa !101
  %70 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp70 = icmp ne ptr %69, %70
  br i1 %cmp70, label %if.then71, label %if.end75

if.then71:                                        ; preds = %lor.lhs.false67, %land.lhs.true64
  %71 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %72 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %73 = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !21
  %call72 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_validate_index_list, i32 noundef 972, i64 noundef %71, i64 noundef %72, i64 noundef %73, ptr noundef @.str.108)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %74 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool73 = trunc i8 %74 to i1
  %frombool74 = zext i1 %tobool73 to i8
  store i8 %frombool74, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !8
  br label %done

if.end75:                                         ; preds = %lor.lhs.false67, %while.body
  %75 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %76 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %il_tail76 = getelementptr inbounds %struct.H5C_t, ptr %76, i32 0, i32 25
  %77 = load ptr, ptr %il_tail76, align 8, !tbaa !99
  %cmp77 = icmp ne ptr %75, %77
  br i1 %cmp77, label %land.lhs.true78, label %if.end89

land.lhs.true78:                                  ; preds = %if.end75
  %78 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %il_next79 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %78, i32 0, i32 29
  %79 = load ptr, ptr %il_next79, align 8, !tbaa !101
  %cmp80 = icmp eq ptr %79, null
  br i1 %cmp80, label %if.then85, label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %land.lhs.true78
  %80 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %il_next82 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %80, i32 0, i32 29
  %81 = load ptr, ptr %il_next82, align 8, !tbaa !101
  %il_prev83 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %81, i32 0, i32 30
  %82 = load ptr, ptr %il_prev83, align 8, !tbaa !100
  %83 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp84 = icmp ne ptr %82, %83
  br i1 %cmp84, label %if.then85, label %if.end89

if.then85:                                        ; preds = %lor.lhs.false81, %land.lhs.true78
  %84 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %85 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %86 = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !21
  %call86 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_validate_index_list, i32 noundef 976, i64 noundef %84, i64 noundef %85, i64 noundef %86, ptr noundef @.str.108)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %87 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool87 = trunc i8 %87 to i1
  %frombool88 = zext i1 %tobool87 to i8
  store i8 %frombool88, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !8
  br label %done

if.end89:                                         ; preds = %lor.lhs.false81, %if.end75
  %88 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ring = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %88, i32 0, i32 18
  %89 = load i32, ptr %ring, align 8, !tbaa !30
  %cmp90 = icmp sgt i32 %89, 0
  br i1 %cmp90, label %cond.true91, label %cond.false92

cond.true91:                                      ; preds = %if.end89
  br label %cond.end93

cond.false92:                                     ; preds = %if.end89
  call void @__assert_fail(ptr noundef @.str.109, ptr noundef @.str.1, i32 noundef 978, ptr noundef @__PRETTY_FUNCTION__.H5C_validate_index_list) #7
  unreachable

90:                                               ; No predecessors!
  br label %cond.end93

cond.end93:                                       ; preds = %90, %cond.true91
  %91 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ring94 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %91, i32 0, i32 18
  %92 = load i32, ptr %ring94, align 8, !tbaa !30
  %cmp95 = icmp slt i32 %92, 6
  br i1 %cmp95, label %cond.true96, label %cond.false97

cond.true96:                                      ; preds = %cond.end93
  br label %cond.end98

cond.false97:                                     ; preds = %cond.end93
  call void @__assert_fail(ptr noundef @.str.110, ptr noundef @.str.1, i32 noundef 979, ptr noundef @__PRETTY_FUNCTION__.H5C_validate_index_list) #7
  unreachable

93:                                               ; No predecessors!
  br label %cond.end98

cond.end98:                                       ; preds = %93, %cond.true96
  %94 = load i32, ptr %len, align 4, !tbaa !8
  %inc99 = add i32 %94, 1
  store i32 %inc99, ptr %len, align 4, !tbaa !8
  %95 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ring100 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %95, i32 0, i32 18
  %96 = load i32, ptr %ring100, align 8, !tbaa !30
  %idxprom101 = sext i32 %96 to i64
  %arrayidx102 = getelementptr inbounds [6 x i32], ptr %index_ring_len, i64 0, i64 %idxprom101
  %97 = load i32, ptr %arrayidx102, align 4, !tbaa !8
  %add = add nsw i32 %97, 1
  store i32 %add, ptr %arrayidx102, align 4, !tbaa !8
  %98 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %size103 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %98, i32 0, i32 3
  %99 = load i64, ptr %size103, align 8, !tbaa !29
  %100 = load i64, ptr %size, align 8, !tbaa !21
  %add104 = add i64 %100, %99
  store i64 %add104, ptr %size, align 8, !tbaa !21
  %101 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %size105 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %101, i32 0, i32 3
  %102 = load i64, ptr %size105, align 8, !tbaa !29
  %103 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ring106 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %103, i32 0, i32 18
  %104 = load i32, ptr %ring106, align 8, !tbaa !30
  %idxprom107 = sext i32 %104 to i64
  %arrayidx108 = getelementptr inbounds [6 x i64], ptr %index_ring_size, i64 0, i64 %idxprom107
  %105 = load i64, ptr %arrayidx108, align 8, !tbaa !21
  %add109 = add i64 %105, %102
  store i64 %add109, ptr %arrayidx108, align 8, !tbaa !21
  %106 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %is_dirty = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %106, i32 0, i32 7
  %107 = load i8, ptr %is_dirty, align 8, !tbaa !37, !range !12, !noundef !13
  %tobool110 = trunc i8 %107 to i1
  br i1 %tobool110, label %if.then111, label %if.else

if.then111:                                       ; preds = %cond.end98
  %108 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %size112 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %108, i32 0, i32 3
  %109 = load i64, ptr %size112, align 8, !tbaa !29
  %110 = load i64, ptr %dirty_size, align 8, !tbaa !21
  %add113 = add i64 %110, %109
  store i64 %add113, ptr %dirty_size, align 8, !tbaa !21
  %111 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %size114 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %111, i32 0, i32 3
  %112 = load i64, ptr %size114, align 8, !tbaa !29
  %113 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ring115 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %113, i32 0, i32 18
  %114 = load i32, ptr %ring115, align 8, !tbaa !30
  %idxprom116 = sext i32 %114 to i64
  %arrayidx117 = getelementptr inbounds [6 x i64], ptr %dirty_index_ring_size, i64 0, i64 %idxprom116
  %115 = load i64, ptr %arrayidx117, align 8, !tbaa !21
  %add118 = add i64 %115, %112
  store i64 %add118, ptr %arrayidx117, align 8, !tbaa !21
  br label %if.end126

if.else:                                          ; preds = %cond.end98
  %116 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %size119 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %116, i32 0, i32 3
  %117 = load i64, ptr %size119, align 8, !tbaa !29
  %118 = load i64, ptr %clean_size, align 8, !tbaa !21
  %add120 = add i64 %118, %117
  store i64 %add120, ptr %clean_size, align 8, !tbaa !21
  %119 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %size121 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %119, i32 0, i32 3
  %120 = load i64, ptr %size121, align 8, !tbaa !29
  %121 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ring122 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %121, i32 0, i32 18
  %122 = load i32, ptr %ring122, align 8, !tbaa !30
  %idxprom123 = sext i32 %122 to i64
  %arrayidx124 = getelementptr inbounds [6 x i64], ptr %clean_index_ring_size, i64 0, i64 %idxprom123
  %123 = load i64, ptr %arrayidx124, align 8, !tbaa !21
  %add125 = add i64 %123, %120
  store i64 %add125, ptr %arrayidx124, align 8, !tbaa !21
  br label %if.end126

if.end126:                                        ; preds = %if.else, %if.then111
  %124 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %il_next127 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %124, i32 0, i32 29
  %125 = load ptr, ptr %il_next127, align 8, !tbaa !101
  store ptr %125, ptr %entry_ptr, align 8, !tbaa !4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %126 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_len128 = getelementptr inbounds %struct.H5C_t, ptr %126, i32 0, i32 13
  %127 = load i32, ptr %index_len128, align 4, !tbaa !58
  %128 = load i32, ptr %len, align 4, !tbaa !8
  %cmp129 = icmp ne i32 %127, %128
  br i1 %cmp129, label %if.then144, label %lor.lhs.false130

lor.lhs.false130:                                 ; preds = %while.end
  %129 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %il_len = getelementptr inbounds %struct.H5C_t, ptr %129, i32 0, i32 22
  %130 = load i32, ptr %il_len, align 8, !tbaa !102
  %131 = load i32, ptr %len, align 4, !tbaa !8
  %cmp131 = icmp ne i32 %130, %131
  br i1 %cmp131, label %if.then144, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %lor.lhs.false130
  %132 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_size133 = getelementptr inbounds %struct.H5C_t, ptr %132, i32 0, i32 14
  %133 = load i64, ptr %index_size133, align 8, !tbaa !40
  %134 = load i64, ptr %size, align 8, !tbaa !21
  %cmp134 = icmp ne i64 %133, %134
  br i1 %cmp134, label %if.then144, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %lor.lhs.false132
  %135 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %il_size = getelementptr inbounds %struct.H5C_t, ptr %135, i32 0, i32 23
  %136 = load i64, ptr %il_size, align 8, !tbaa !103
  %137 = load i64, ptr %size, align 8, !tbaa !21
  %cmp136 = icmp ne i64 %136, %137
  br i1 %cmp136, label %if.then144, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %lor.lhs.false135
  %138 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %clean_index_size = getelementptr inbounds %struct.H5C_t, ptr %138, i32 0, i32 17
  %139 = load i64, ptr %clean_index_size, align 8, !tbaa !60
  %140 = load i64, ptr %clean_size, align 8, !tbaa !21
  %cmp138 = icmp ne i64 %139, %140
  br i1 %cmp138, label %if.then144, label %lor.lhs.false139

lor.lhs.false139:                                 ; preds = %lor.lhs.false137
  %141 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %dirty_index_size = getelementptr inbounds %struct.H5C_t, ptr %141, i32 0, i32 19
  %142 = load i64, ptr %dirty_index_size, align 8, !tbaa !62
  %143 = load i64, ptr %dirty_size, align 8, !tbaa !21
  %cmp140 = icmp ne i64 %142, %143
  br i1 %cmp140, label %if.then144, label %lor.lhs.false141

lor.lhs.false141:                                 ; preds = %lor.lhs.false139
  %144 = load i64, ptr %clean_size, align 8, !tbaa !21
  %145 = load i64, ptr %dirty_size, align 8, !tbaa !21
  %add142 = add i64 %144, %145
  %146 = load i64, ptr %size, align 8, !tbaa !21
  %cmp143 = icmp ne i64 %add142, %146
  br i1 %cmp143, label %if.then144, label %if.end148

if.then144:                                       ; preds = %lor.lhs.false141, %lor.lhs.false139, %lor.lhs.false137, %lor.lhs.false135, %lor.lhs.false132, %lor.lhs.false130, %while.end
  %147 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %148 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %149 = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !21
  %call145 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_validate_index_list, i32 noundef 1002, i64 noundef %147, i64 noundef %148, i64 noundef %149, ptr noundef @.str.111)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %150 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool146 = trunc i8 %150 to i1
  %frombool147 = zext i1 %tobool146 to i8
  store i8 %frombool147, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !8
  br label %done

if.end148:                                        ; preds = %lor.lhs.false141
  store i64 0, ptr %size, align 8, !tbaa !21
  store i64 0, ptr %clean_size, align 8, !tbaa !21
  store i64 0, ptr %dirty_size, align 8, !tbaa !21
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond149

for.cond149:                                      ; preds = %for.inc164, %if.end148
  %151 = load i32, ptr %i, align 4, !tbaa !8
  %cmp150 = icmp slt i32 %151, 6
  br i1 %cmp150, label %for.body151, label %for.end166

for.body151:                                      ; preds = %for.cond149
  %152 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom152 = sext i32 %152 to i64
  %arrayidx153 = getelementptr inbounds [6 x i64], ptr %clean_index_ring_size, i64 0, i64 %idxprom152
  %153 = load i64, ptr %arrayidx153, align 8, !tbaa !21
  %154 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom154 = sext i32 %154 to i64
  %arrayidx155 = getelementptr inbounds [6 x i64], ptr %dirty_index_ring_size, i64 0, i64 %idxprom154
  %155 = load i64, ptr %arrayidx155, align 8, !tbaa !21
  %add156 = add i64 %153, %155
  %156 = load i64, ptr %size, align 8, !tbaa !21
  %add157 = add i64 %156, %add156
  store i64 %add157, ptr %size, align 8, !tbaa !21
  %157 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom158 = sext i32 %157 to i64
  %arrayidx159 = getelementptr inbounds [6 x i64], ptr %clean_index_ring_size, i64 0, i64 %idxprom158
  %158 = load i64, ptr %arrayidx159, align 8, !tbaa !21
  %159 = load i64, ptr %clean_size, align 8, !tbaa !21
  %add160 = add i64 %159, %158
  store i64 %add160, ptr %clean_size, align 8, !tbaa !21
  %160 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom161 = sext i32 %160 to i64
  %arrayidx162 = getelementptr inbounds [6 x i64], ptr %dirty_index_ring_size, i64 0, i64 %idxprom161
  %161 = load i64, ptr %arrayidx162, align 8, !tbaa !21
  %162 = load i64, ptr %dirty_size, align 8, !tbaa !21
  %add163 = add i64 %162, %161
  store i64 %add163, ptr %dirty_size, align 8, !tbaa !21
  br label %for.inc164

for.inc164:                                       ; preds = %for.body151
  %163 = load i32, ptr %i, align 4, !tbaa !8
  %inc165 = add nsw i32 %163, 1
  store i32 %inc165, ptr %i, align 4, !tbaa !8
  br label %for.cond149

for.end166:                                       ; preds = %for.cond149
  %164 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_size167 = getelementptr inbounds %struct.H5C_t, ptr %164, i32 0, i32 14
  %165 = load i64, ptr %index_size167, align 8, !tbaa !40
  %166 = load i64, ptr %size, align 8, !tbaa !21
  %cmp168 = icmp ne i64 %165, %166
  br i1 %cmp168, label %if.then175, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %for.end166
  %167 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %clean_index_size170 = getelementptr inbounds %struct.H5C_t, ptr %167, i32 0, i32 17
  %168 = load i64, ptr %clean_index_size170, align 8, !tbaa !60
  %169 = load i64, ptr %clean_size, align 8, !tbaa !21
  %cmp171 = icmp ne i64 %168, %169
  br i1 %cmp171, label %if.then175, label %lor.lhs.false172

lor.lhs.false172:                                 ; preds = %lor.lhs.false169
  %170 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %dirty_index_size173 = getelementptr inbounds %struct.H5C_t, ptr %170, i32 0, i32 19
  %171 = load i64, ptr %dirty_index_size173, align 8, !tbaa !62
  %172 = load i64, ptr %dirty_size, align 8, !tbaa !21
  %cmp174 = icmp ne i64 %171, %172
  br i1 %cmp174, label %if.then175, label %if.end179

if.then175:                                       ; preds = %lor.lhs.false172, %lor.lhs.false169, %for.end166
  %173 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %174 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %175 = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !21
  %call176 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_validate_index_list, i32 noundef 1015, i64 noundef %173, i64 noundef %174, i64 noundef %175, ptr noundef @.str.111)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %176 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool177 = trunc i8 %176 to i1
  %frombool178 = zext i1 %tobool177 to i8
  store i8 %frombool178, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !8
  br label %done

if.end179:                                        ; preds = %lor.lhs.false172
  br label %done

done:                                             ; preds = %if.end179, %if.then175, %if.then144, %if.then85, %if.then71, %if.then55, %if.then36, %if.then21
  %177 = load i32, ptr %ret_value, align 4, !tbaa !8
  %cmp180 = icmp ne i32 %177, 0
  br i1 %cmp180, label %if.then181, label %if.end182

if.then181:                                       ; preds = %done
  call void @__assert_fail(ptr noundef @.str.112, ptr noundef @.str.1, i32 noundef 1019, ptr noundef @__PRETTY_FUNCTION__.H5C_validate_index_list) #7
  unreachable

if.end182:                                        ; preds = %done
  br label %if.end183

if.end183:                                        ; preds = %if.end182, %lor.lhs.false
  %178 = load i32, ptr %ret_value, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr %dirty_index_ring_size) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr %clean_index_ring_size) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr %index_ring_size) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %dirty_size) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %clean_size) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr %index_ring_len) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_ptr) #6
  ret i32 %178
}

; Function Attrs: nounwind uwtable
define i32 @H5C_get_entry_ptr_from_addr(ptr noundef %cache_ptr, i64 noundef %addr, ptr noundef %entry_ptr_ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %cache_ptr.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %entry_ptr_ptr.addr = alloca ptr, align 8
  %entry_ptr = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  %k = alloca i32, align 4
  %depth = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cache_ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  store i64 %addr, ptr %addr.addr, align 8, !tbaa !21
  store ptr %entry_ptr_ptr, ptr %entry_ptr_ptr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_ptr) #6
  store ptr null, ptr %entry_ptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #6
  store i32 0, ptr %ret_value, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #6
  store i8 0, ptr %err_occurred, align 1, !tbaa !10
  %0 = load i8, ptr @H5C_get_entry_ptr_from_addr.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr @H5C_get_entry_ptr_from_addr.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr @H5C_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  store i8 1, ptr @H5C_init_g, align 1, !tbaa !10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %3 = load i8, ptr @H5C_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool5 = trunc i8 %3 to i1
  br i1 %tobool5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %4 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool6 = trunc i8 %4 to i1
  br i1 %tobool6, label %if.end196, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false, %if.end4
  %5 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %tobool8 = icmp ne ptr %5, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then7
  br label %cond.end

cond.false:                                       ; preds = %if.then7
  call void @__assert_fail(ptr noundef @.str.91, ptr noundef @.str.1, i32 noundef 1071, ptr noundef @__PRETTY_FUNCTION__.H5C_get_entry_ptr_from_addr) #7
  unreachable

6:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  %7 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %magic = getelementptr inbounds %struct.H5C_t, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %magic, align 8, !tbaa !14
  %cmp = icmp eq i32 %8, 6073358
  br i1 %cmp, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 1072, ptr noundef @__PRETTY_FUNCTION__.H5C_get_entry_ptr_from_addr) #7
  unreachable

9:                                                ; No predecessors!
  br label %cond.end11

cond.end11:                                       ; preds = %9, %cond.true9
  %10 = load i64, ptr %addr.addr, align 8, !tbaa !21
  %cmp12 = icmp ne i64 %10, -1
  br i1 %cmp12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %cond.end11
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end11
  call void @__assert_fail(ptr noundef @.str.113, ptr noundef @.str.1, i32 noundef 1073, ptr noundef @__PRETTY_FUNCTION__.H5C_get_entry_ptr_from_addr) #7
  unreachable

11:                                               ; No predecessors!
  br label %cond.end15

cond.end15:                                       ; preds = %11, %cond.true13
  %12 = load ptr, ptr %entry_ptr_ptr.addr, align 8, !tbaa !4
  %tobool16 = icmp ne ptr %12, null
  br i1 %tobool16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %cond.end15
  br label %cond.end19

cond.false18:                                     ; preds = %cond.end15
  call void @__assert_fail(ptr noundef @.str.114, ptr noundef @.str.1, i32 noundef 1074, ptr noundef @__PRETTY_FUNCTION__.H5C_get_entry_ptr_from_addr) #7
  unreachable

13:                                               ; No predecessors!
  br label %cond.end19

cond.end19:                                       ; preds = %13, %cond.true17
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %depth) #6
  store i32 0, ptr %depth, align 4, !tbaa !8
  %14 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cmp20 = icmp eq ptr %14, null
  br i1 %cmp20, label %if.then37, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %cond.end19
  %15 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %magic22 = getelementptr inbounds %struct.H5C_t, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %magic22, align 8, !tbaa !14
  %cmp23 = icmp ne i32 %16, 6073358
  br i1 %cmp23, label %if.then37, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false21
  %17 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_size = getelementptr inbounds %struct.H5C_t, ptr %17, i32 0, i32 14
  %18 = load i64, ptr %index_size, align 8, !tbaa !40
  %19 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %clean_index_size = getelementptr inbounds %struct.H5C_t, ptr %19, i32 0, i32 17
  %20 = load i64, ptr %clean_index_size, align 8, !tbaa !60
  %21 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %dirty_index_size = getelementptr inbounds %struct.H5C_t, ptr %21, i32 0, i32 19
  %22 = load i64, ptr %dirty_index_size, align 8, !tbaa !62
  %add = add i64 %20, %22
  %cmp25 = icmp ne i64 %18, %add
  br i1 %cmp25, label %if.then37, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false24
  %23 = load i64, ptr %addr.addr, align 8, !tbaa !21
  %cmp27 = icmp ne i64 %23, -1
  br i1 %cmp27, label %lor.lhs.false28, label %if.then37

lor.lhs.false28:                                  ; preds = %lor.lhs.false26
  %24 = load i64, ptr %addr.addr, align 8, !tbaa !21
  %and = and i64 %24, 524280
  %conv = trunc i64 %and to i32
  %shr = lshr i32 %conv, 3
  %cmp29 = icmp slt i32 %shr, 0
  br i1 %cmp29, label %if.then37, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false28
  %25 = load i64, ptr %addr.addr, align 8, !tbaa !21
  %and32 = and i64 %25, 524280
  %conv33 = trunc i64 %and32 to i32
  %shr34 = lshr i32 %conv33, 3
  %cmp35 = icmp sge i32 %shr34, 65536
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %lor.lhs.false31, %lor.lhs.false28, %lor.lhs.false26, %lor.lhs.false24, %lor.lhs.false21, %cond.end19
  %26 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %27 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %28 = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !21
  %call = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_get_entry_ptr_from_addr, i32 noundef 1076, i64 noundef %26, i64 noundef %27, i64 noundef %28, ptr noundef @.str.95)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %29 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool38 = trunc i8 %29 to i1
  %frombool = zext i1 %tobool38 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !8
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end39:                                         ; preds = %lor.lhs.false31
  %30 = load i64, ptr %addr.addr, align 8, !tbaa !21
  %and40 = and i64 %30, 524280
  %conv41 = trunc i64 %and40 to i32
  %shr42 = lshr i32 %conv41, 3
  store i32 %shr42, ptr %k, align 4, !tbaa !8
  %31 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index = getelementptr inbounds %struct.H5C_t, ptr %31, i32 0, i32 21
  %32 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom = sext i32 %32 to i64
  %arrayidx = getelementptr inbounds [65536 x ptr], ptr %index, i64 0, i64 %idxprom
  %33 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %33, ptr %entry_ptr, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %if.end177, %if.end39
  %34 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %tobool43 = icmp ne ptr %34, null
  br i1 %tobool43, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %35 = load i64, ptr %addr.addr, align 8, !tbaa !21
  %cmp44 = icmp ne i64 %35, -1
  br i1 %cmp44, label %land.lhs.true46, label %if.end177

land.lhs.true46:                                  ; preds = %while.body
  %36 = load i64, ptr %addr.addr, align 8, !tbaa !21
  %37 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %addr47 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %37, i32 0, i32 2
  %38 = load i64, ptr %addr47, align 8, !tbaa !25
  %cmp48 = icmp eq i64 %36, %38
  br i1 %cmp48, label %if.then50, label %if.end177

if.then50:                                        ; preds = %land.lhs.true46
  %39 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cmp51 = icmp eq ptr %39, null
  br i1 %cmp51, label %if.then120, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %if.then50
  %40 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %magic54 = getelementptr inbounds %struct.H5C_t, ptr %40, i32 0, i32 0
  %41 = load i32, ptr %magic54, align 8, !tbaa !14
  %cmp55 = icmp ne i32 %41, 6073358
  br i1 %cmp55, label %if.then120, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false53
  %42 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_len = getelementptr inbounds %struct.H5C_t, ptr %42, i32 0, i32 13
  %43 = load i32, ptr %index_len, align 4, !tbaa !58
  %cmp58 = icmp ult i32 %43, 1
  br i1 %cmp58, label %if.then120, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false57
  %44 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp61 = icmp eq ptr %44, null
  br i1 %cmp61, label %if.then120, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false60
  %45 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_size64 = getelementptr inbounds %struct.H5C_t, ptr %45, i32 0, i32 14
  %46 = load i64, ptr %index_size64, align 8, !tbaa !40
  %47 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %47, i32 0, i32 3
  %48 = load i64, ptr %size, align 8, !tbaa !29
  %cmp65 = icmp ult i64 %46, %48
  br i1 %cmp65, label %if.then120, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false63
  %49 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_size68 = getelementptr inbounds %struct.H5C_t, ptr %49, i32 0, i32 14
  %50 = load i64, ptr %index_size68, align 8, !tbaa !40
  %51 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %clean_index_size69 = getelementptr inbounds %struct.H5C_t, ptr %51, i32 0, i32 17
  %52 = load i64, ptr %clean_index_size69, align 8, !tbaa !60
  %53 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %dirty_index_size70 = getelementptr inbounds %struct.H5C_t, ptr %53, i32 0, i32 19
  %54 = load i64, ptr %dirty_index_size70, align 8, !tbaa !62
  %add71 = add i64 %52, %54
  %cmp72 = icmp ne i64 %50, %add71
  br i1 %cmp72, label %if.then120, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %lor.lhs.false67
  %55 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %size75 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %55, i32 0, i32 3
  %56 = load i64, ptr %size75, align 8, !tbaa !29
  %cmp76 = icmp ule i64 %56, 0
  br i1 %cmp76, label %if.then120, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %lor.lhs.false74
  %57 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index79 = getelementptr inbounds %struct.H5C_t, ptr %57, i32 0, i32 21
  %58 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom80 = sext i32 %58 to i64
  %arrayidx81 = getelementptr inbounds [65536 x ptr], ptr %index79, i64 0, i64 %idxprom80
  %59 = load ptr, ptr %arrayidx81, align 8, !tbaa !4
  %cmp82 = icmp eq ptr %59, null
  br i1 %cmp82, label %if.then120, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %lor.lhs.false78
  %60 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index85 = getelementptr inbounds %struct.H5C_t, ptr %60, i32 0, i32 21
  %61 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom86 = sext i32 %61 to i64
  %arrayidx87 = getelementptr inbounds [65536 x ptr], ptr %index85, i64 0, i64 %idxprom86
  %62 = load ptr, ptr %arrayidx87, align 8, !tbaa !4
  %63 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp88 = icmp ne ptr %62, %63
  br i1 %cmp88, label %land.lhs.true90, label %lor.lhs.false93

land.lhs.true90:                                  ; preds = %lor.lhs.false84
  %64 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_prev = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %64, i32 0, i32 28
  %65 = load ptr, ptr %ht_prev, align 8, !tbaa !93
  %cmp91 = icmp eq ptr %65, null
  br i1 %cmp91, label %if.then120, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %land.lhs.true90, %lor.lhs.false84
  %66 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index94 = getelementptr inbounds %struct.H5C_t, ptr %66, i32 0, i32 21
  %67 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom95 = sext i32 %67 to i64
  %arrayidx96 = getelementptr inbounds [65536 x ptr], ptr %index94, i64 0, i64 %idxprom95
  %68 = load ptr, ptr %arrayidx96, align 8, !tbaa !4
  %69 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp97 = icmp eq ptr %68, %69
  br i1 %cmp97, label %land.lhs.true99, label %lor.lhs.false103

land.lhs.true99:                                  ; preds = %lor.lhs.false93
  %70 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_prev100 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %70, i32 0, i32 28
  %71 = load ptr, ptr %ht_prev100, align 8, !tbaa !93
  %cmp101 = icmp ne ptr %71, null
  br i1 %cmp101, label %if.then120, label %lor.lhs.false103

lor.lhs.false103:                                 ; preds = %land.lhs.true99, %lor.lhs.false93
  %72 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_prev104 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %72, i32 0, i32 28
  %73 = load ptr, ptr %ht_prev104, align 8, !tbaa !93
  %cmp105 = icmp ne ptr %73, null
  br i1 %cmp105, label %land.lhs.true107, label %lor.lhs.false111

land.lhs.true107:                                 ; preds = %lor.lhs.false103
  %74 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_prev108 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %74, i32 0, i32 28
  %75 = load ptr, ptr %ht_prev108, align 8, !tbaa !93
  %ht_next = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %75, i32 0, i32 27
  %76 = load ptr, ptr %ht_next, align 8, !tbaa !24
  %77 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp109 = icmp ne ptr %76, %77
  br i1 %cmp109, label %if.then120, label %lor.lhs.false111

lor.lhs.false111:                                 ; preds = %land.lhs.true107, %lor.lhs.false103
  %78 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_next112 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %78, i32 0, i32 27
  %79 = load ptr, ptr %ht_next112, align 8, !tbaa !24
  %cmp113 = icmp ne ptr %79, null
  br i1 %cmp113, label %land.lhs.true115, label %if.end124

land.lhs.true115:                                 ; preds = %lor.lhs.false111
  %80 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_next116 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %80, i32 0, i32 27
  %81 = load ptr, ptr %ht_next116, align 8, !tbaa !24
  %ht_prev117 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %81, i32 0, i32 28
  %82 = load ptr, ptr %ht_prev117, align 8, !tbaa !93
  %83 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp118 = icmp ne ptr %82, %83
  br i1 %cmp118, label %if.then120, label %if.end124

if.then120:                                       ; preds = %land.lhs.true115, %land.lhs.true107, %land.lhs.true99, %land.lhs.true90, %lor.lhs.false78, %lor.lhs.false74, %lor.lhs.false67, %lor.lhs.false63, %lor.lhs.false60, %lor.lhs.false57, %lor.lhs.false53, %if.then50
  %84 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %85 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %86 = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !21
  %call121 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_get_entry_ptr_from_addr, i32 noundef 1076, i64 noundef %84, i64 noundef %85, i64 noundef %86, ptr noundef @.str.96)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %87 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool122 = trunc i8 %87 to i1
  %frombool123 = zext i1 %tobool122 to i8
  store i8 %frombool123, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !8
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end124:                                        ; preds = %land.lhs.true115, %lor.lhs.false111
  %88 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %89 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index125 = getelementptr inbounds %struct.H5C_t, ptr %89, i32 0, i32 21
  %90 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom126 = sext i32 %90 to i64
  %arrayidx127 = getelementptr inbounds [65536 x ptr], ptr %index125, i64 0, i64 %idxprom126
  %91 = load ptr, ptr %arrayidx127, align 8, !tbaa !4
  %cmp128 = icmp ne ptr %88, %91
  br i1 %cmp128, label %if.then130, label %if.end176

if.then130:                                       ; preds = %if.end124
  %92 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_next131 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %92, i32 0, i32 27
  %93 = load ptr, ptr %ht_next131, align 8, !tbaa !24
  %tobool132 = icmp ne ptr %93, null
  br i1 %tobool132, label %if.then133, label %if.end137

if.then133:                                       ; preds = %if.then130
  %94 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_prev134 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %94, i32 0, i32 28
  %95 = load ptr, ptr %ht_prev134, align 8, !tbaa !93
  %96 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_next135 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %96, i32 0, i32 27
  %97 = load ptr, ptr %ht_next135, align 8, !tbaa !24
  %ht_prev136 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %97, i32 0, i32 28
  store ptr %95, ptr %ht_prev136, align 8, !tbaa !93
  br label %if.end137

if.end137:                                        ; preds = %if.then133, %if.then130
  %98 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_prev138 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %98, i32 0, i32 28
  %99 = load ptr, ptr %ht_prev138, align 8, !tbaa !93
  %cmp139 = icmp ne ptr %99, null
  br i1 %cmp139, label %cond.true141, label %cond.false142

cond.true141:                                     ; preds = %if.end137
  br label %cond.end143

cond.false142:                                    ; preds = %if.end137
  call void @__assert_fail(ptr noundef @.str.115, ptr noundef @.str.1, i32 noundef 1076, ptr noundef @__PRETTY_FUNCTION__.H5C_get_entry_ptr_from_addr) #7
  unreachable

100:                                              ; No predecessors!
  br label %cond.end143

cond.end143:                                      ; preds = %100, %cond.true141
  %101 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_next144 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %101, i32 0, i32 27
  %102 = load ptr, ptr %ht_next144, align 8, !tbaa !24
  %103 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_prev145 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %103, i32 0, i32 28
  %104 = load ptr, ptr %ht_prev145, align 8, !tbaa !93
  %ht_next146 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %104, i32 0, i32 27
  store ptr %102, ptr %ht_next146, align 8, !tbaa !24
  %105 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %106 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index147 = getelementptr inbounds %struct.H5C_t, ptr %106, i32 0, i32 21
  %107 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom148 = sext i32 %107 to i64
  %arrayidx149 = getelementptr inbounds [65536 x ptr], ptr %index147, i64 0, i64 %idxprom148
  %108 = load ptr, ptr %arrayidx149, align 8, !tbaa !4
  %ht_prev150 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %108, i32 0, i32 28
  store ptr %105, ptr %ht_prev150, align 8, !tbaa !93
  %109 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index151 = getelementptr inbounds %struct.H5C_t, ptr %109, i32 0, i32 21
  %110 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom152 = sext i32 %110 to i64
  %arrayidx153 = getelementptr inbounds [65536 x ptr], ptr %index151, i64 0, i64 %idxprom152
  %111 = load ptr, ptr %arrayidx153, align 8, !tbaa !4
  %112 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_next154 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %112, i32 0, i32 27
  store ptr %111, ptr %ht_next154, align 8, !tbaa !24
  %113 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_prev155 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %113, i32 0, i32 28
  store ptr null, ptr %ht_prev155, align 8, !tbaa !93
  %114 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %115 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index156 = getelementptr inbounds %struct.H5C_t, ptr %115, i32 0, i32 21
  %116 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom157 = sext i32 %116 to i64
  %arrayidx158 = getelementptr inbounds [65536 x ptr], ptr %index156, i64 0, i64 %idxprom157
  store ptr %114, ptr %arrayidx158, align 8, !tbaa !4
  %117 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cmp159 = icmp eq ptr %117, null
  br i1 %cmp159, label %if.then171, label %lor.lhs.false161

lor.lhs.false161:                                 ; preds = %cond.end143
  %118 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index162 = getelementptr inbounds %struct.H5C_t, ptr %118, i32 0, i32 21
  %119 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom163 = sext i32 %119 to i64
  %arrayidx164 = getelementptr inbounds [65536 x ptr], ptr %index162, i64 0, i64 %idxprom163
  %120 = load ptr, ptr %arrayidx164, align 8, !tbaa !4
  %121 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp165 = icmp ne ptr %120, %121
  br i1 %cmp165, label %if.then171, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %lor.lhs.false161
  %122 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_prev168 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %122, i32 0, i32 28
  %123 = load ptr, ptr %ht_prev168, align 8, !tbaa !93
  %cmp169 = icmp ne ptr %123, null
  br i1 %cmp169, label %if.then171, label %if.end175

if.then171:                                       ; preds = %lor.lhs.false167, %lor.lhs.false161, %cond.end143
  %124 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %125 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %126 = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !21
  %call172 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_get_entry_ptr_from_addr, i32 noundef 1076, i64 noundef %124, i64 noundef %125, i64 noundef %126, ptr noundef @.str.98)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %127 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool173 = trunc i8 %127 to i1
  %frombool174 = zext i1 %tobool173 to i8
  store i8 %frombool174, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !8
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end175:                                        ; preds = %lor.lhs.false167
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %if.end124
  br label %while.end

if.end177:                                        ; preds = %land.lhs.true46, %while.body
  %128 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_next178 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %128, i32 0, i32 27
  %129 = load ptr, ptr %ht_next178, align 8, !tbaa !24
  store ptr %129, ptr %entry_ptr, align 8, !tbaa !4
  %130 = load i32, ptr %depth, align 4, !tbaa !8
  %inc = add nsw i32 %130, 1
  store i32 %inc, ptr %depth, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %if.end176, %while.cond
  %131 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp179 = icmp ne ptr %131, null
  br i1 %cmp179, label %if.then181, label %if.else

if.then181:                                       ; preds = %while.end
  %132 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %successful_ht_searches = getelementptr inbounds %struct.H5C_t, ptr %132, i32 0, i32 115
  %133 = load i64, ptr %successful_ht_searches, align 8, !tbaa !51
  %inc182 = add nsw i64 %133, 1
  store i64 %inc182, ptr %successful_ht_searches, align 8, !tbaa !51
  %134 = load i32, ptr %depth, align 4, !tbaa !8
  %conv183 = sext i32 %134 to i64
  %135 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_successful_ht_search_depth = getelementptr inbounds %struct.H5C_t, ptr %135, i32 0, i32 116
  %136 = load i64, ptr %total_successful_ht_search_depth, align 8, !tbaa !52
  %add184 = add nsw i64 %136, %conv183
  store i64 %add184, ptr %total_successful_ht_search_depth, align 8, !tbaa !52
  br label %if.end188

if.else:                                          ; preds = %while.end
  %137 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %failed_ht_searches = getelementptr inbounds %struct.H5C_t, ptr %137, i32 0, i32 117
  %138 = load i64, ptr %failed_ht_searches, align 8, !tbaa !53
  %inc185 = add nsw i64 %138, 1
  store i64 %inc185, ptr %failed_ht_searches, align 8, !tbaa !53
  %139 = load i32, ptr %depth, align 4, !tbaa !8
  %conv186 = sext i32 %139 to i64
  %140 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_failed_ht_search_depth = getelementptr inbounds %struct.H5C_t, ptr %140, i32 0, i32 118
  %141 = load i64, ptr %total_failed_ht_search_depth, align 8, !tbaa !54
  %add187 = add nsw i64 %141, %conv186
  store i64 %add187, ptr %total_failed_ht_search_depth, align 8, !tbaa !54
  br label %if.end188

if.end188:                                        ; preds = %if.else, %if.then181
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then171, %if.then120, %if.then37, %if.end188
  call void @llvm.lifetime.end.p0(i64 4, ptr %depth) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup197 [
    i32 0, label %cleanup.cont
    i32 2, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  %142 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp190 = icmp eq ptr %142, null
  br i1 %cmp190, label %if.then192, label %if.else193

if.then192:                                       ; preds = %cleanup.cont
  %143 = load ptr, ptr %entry_ptr_ptr.addr, align 8, !tbaa !4
  store ptr null, ptr %143, align 8, !tbaa !4
  br label %if.end195

if.else193:                                       ; preds = %cleanup.cont
  %144 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %145 = load ptr, ptr %entry_ptr_ptr.addr, align 8, !tbaa !4
  store ptr %144, ptr %145, align 8, !tbaa !4
  %146 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %get_entry_ptr_from_addr_counter = getelementptr inbounds %struct.H5C_t, ptr %146, i32 0, i32 154
  %147 = load i64, ptr %get_entry_ptr_from_addr_counter, align 8, !tbaa !104
  %inc194 = add nsw i64 %147, 1
  store i64 %inc194, ptr %get_entry_ptr_from_addr_counter, align 8, !tbaa !104
  br label %if.end195

if.end195:                                        ; preds = %if.else193, %if.then192
  br label %done

done:                                             ; preds = %if.end195, %cleanup
  br label %if.end196

if.end196:                                        ; preds = %done, %lor.lhs.false
  %148 = load i32, ptr %ret_value, align 4, !tbaa !8
  store i32 %148, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup197

cleanup197:                                       ; preds = %if.end196, %cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_ptr) #6
  %149 = load i32, ptr %retval, align 4
  ret i32 %149
}

; Function Attrs: nounwind uwtable
define zeroext i1 @H5C_get_serialization_in_progress(ptr noundef %cache_ptr) #0 {
entry:
  %cache_ptr.addr = alloca ptr, align 8
  store ptr %cache_ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %0 = load i8, ptr @H5C_get_serialization_in_progress.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr @H5C_get_serialization_in_progress.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr @H5C_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.end8, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %3 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %tobool4 = icmp ne ptr %3, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then3
  br label %cond.end

cond.false:                                       ; preds = %if.then3
  call void @__assert_fail(ptr noundef @.str.91, ptr noundef @.str.1, i32 noundef 1115, ptr noundef @__PRETTY_FUNCTION__.H5C_get_serialization_in_progress) #7
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %magic = getelementptr inbounds %struct.H5C_t, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %magic, align 8, !tbaa !14
  %cmp = icmp eq i32 %6, 6073358
  br i1 %cmp, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.end
  br label %cond.end7

cond.false6:                                      ; preds = %cond.end
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 1116, ptr noundef @__PRETTY_FUNCTION__.H5C_get_serialization_in_progress) #7
  unreachable

7:                                                ; No predecessors!
  br label %cond.end7

cond.end7:                                        ; preds = %7, %cond.true5
  br label %if.end8

if.end8:                                          ; preds = %cond.end7, %lor.lhs.false
  %8 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %serialization_in_progress = getelementptr inbounds %struct.H5C_t, ptr %8, i32 0, i32 74
  %9 = load i8, ptr %serialization_in_progress, align 8, !tbaa !105, !range !12, !noundef !13
  %tobool9 = trunc i8 %9 to i1
  ret i1 %tobool9
}

; Function Attrs: nounwind uwtable
define zeroext i1 @H5C_cache_is_clean(ptr noundef %cache_ptr, i32 noundef %inner_ring) #0 {
entry:
  %cache_ptr.addr = alloca ptr, align 8
  %inner_ring.addr = alloca i32, align 4
  %ring = alloca i32, align 4
  %ret_value = alloca i8, align 1
  store ptr %cache_ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  store i32 %inner_ring, ptr %inner_ring.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ring) #6
  store i32 1, ptr %ring, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret_value) #6
  store i8 1, ptr %ret_value, align 1, !tbaa !10
  %0 = load i8, ptr @H5C_cache_is_clean.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr @H5C_cache_is_clean.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr @H5C_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.end20, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %3 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %tobool4 = icmp ne ptr %3, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then3
  br label %cond.end

cond.false:                                       ; preds = %if.then3
  call void @__assert_fail(ptr noundef @.str.91, ptr noundef @.str.1, i32 noundef 1149, ptr noundef @__PRETTY_FUNCTION__.H5C_cache_is_clean) #7
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %magic = getelementptr inbounds %struct.H5C_t, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %magic, align 8, !tbaa !14
  %cmp = icmp eq i32 %6, 6073358
  br i1 %cmp, label %cond.true5, label %cond.false6

cond.true5:                                       ; preds = %cond.end
  br label %cond.end7

cond.false6:                                      ; preds = %cond.end
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 1150, ptr noundef @__PRETTY_FUNCTION__.H5C_cache_is_clean) #7
  unreachable

7:                                                ; No predecessors!
  br label %cond.end7

cond.end7:                                        ; preds = %7, %cond.true5
  %8 = load i32, ptr %inner_ring.addr, align 4, !tbaa !8
  %cmp8 = icmp sge i32 %8, 1
  br i1 %cmp8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end7
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end7
  call void @__assert_fail(ptr noundef @.str.116, ptr noundef @.str.1, i32 noundef 1151, ptr noundef @__PRETTY_FUNCTION__.H5C_cache_is_clean) #7
  unreachable

9:                                                ; No predecessors!
  br label %cond.end11

cond.end11:                                       ; preds = %9, %cond.true9
  %10 = load i32, ptr %inner_ring.addr, align 4, !tbaa !8
  %cmp12 = icmp sle i32 %10, 5
  br i1 %cmp12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %cond.end11
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end11
  call void @__assert_fail(ptr noundef @.str.117, ptr noundef @.str.1, i32 noundef 1152, ptr noundef @__PRETTY_FUNCTION__.H5C_cache_is_clean) #7
  unreachable

11:                                               ; No predecessors!
  br label %cond.end15

cond.end15:                                       ; preds = %11, %cond.true13
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %cond.end15
  %12 = load i32, ptr %ring, align 4, !tbaa !8
  %13 = load i32, ptr %inner_ring.addr, align 4, !tbaa !8
  %cmp16 = icmp sle i32 %12, %13
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %dirty_index_ring_size = getelementptr inbounds %struct.H5C_t, ptr %14, i32 0, i32 20
  %15 = load i32, ptr %ring, align 4, !tbaa !8
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [6 x i64], ptr %dirty_index_ring_size, i64 0, i64 %idxprom
  %16 = load i64, ptr %arrayidx, align 8, !tbaa !21
  %cmp17 = icmp ugt i64 %16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %while.body
  store i8 0, ptr %ret_value, align 1, !tbaa !10
  br label %done

if.end19:                                         ; preds = %while.body
  %17 = load i32, ptr %ring, align 4, !tbaa !8
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %ring, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %done

done:                                             ; preds = %while.end, %if.then18
  br label %if.end20

if.end20:                                         ; preds = %done, %lor.lhs.false
  %18 = load i8, ptr %ret_value, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool21 = trunc i8 %18 to i1
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret_value) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ring) #6
  ret i1 %tobool21
}

; Function Attrs: nounwind uwtable
define i32 @H5C_verify_entry_type(ptr noundef %cache_ptr, i64 noundef %addr, ptr noundef %expected_type, ptr noundef %in_cache_ptr, ptr noundef %type_ok_ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %cache_ptr.addr = alloca ptr, align 8
  %addr.addr = alloca i64, align 8
  %expected_type.addr = alloca ptr, align 8
  %in_cache_ptr.addr = alloca ptr, align 8
  %type_ok_ptr.addr = alloca ptr, align 8
  %entry_ptr = alloca ptr, align 8
  %ret_value = alloca i32, align 4
  %err_occurred = alloca i8, align 1
  %k = alloca i32, align 4
  %depth = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cache_ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  store i64 %addr, ptr %addr.addr, align 8, !tbaa !21
  store ptr %expected_type, ptr %expected_type.addr, align 8, !tbaa !4
  store ptr %in_cache_ptr, ptr %in_cache_ptr.addr, align 8, !tbaa !4
  store ptr %type_ok_ptr, ptr %type_ok_ptr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry_ptr) #6
  store ptr null, ptr %entry_ptr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_value) #6
  store i32 0, ptr %ret_value, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr %err_occurred) #6
  store i8 0, ptr %err_occurred, align 1, !tbaa !10
  %0 = load i8, ptr @H5C_verify_entry_type.func_check, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr @H5C_verify_entry_type.func_check, align 1, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr @H5C_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool1 = trunc i8 %1 to i1
  br i1 %tobool1, label %if.end4, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %land.lhs.true
  store i8 1, ptr @H5C_init_g, align 1, !tbaa !10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %3 = load i8, ptr @H5C_init_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool5 = trunc i8 %3 to i1
  br i1 %tobool5, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %4 = load i8, ptr @H5_libterm_g, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool6 = trunc i8 %4 to i1
  br i1 %tobool6, label %if.end213, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false, %if.end4
  %5 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %tobool8 = icmp ne ptr %5, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then7
  br label %cond.end

cond.false:                                       ; preds = %if.then7
  call void @__assert_fail(ptr noundef @.str.91, ptr noundef @.str.1, i32 noundef 1202, ptr noundef @__PRETTY_FUNCTION__.H5C_verify_entry_type) #7
  unreachable

6:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  %7 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %magic = getelementptr inbounds %struct.H5C_t, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %magic, align 8, !tbaa !14
  %cmp = icmp eq i32 %8, 6073358
  br i1 %cmp, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 1203, ptr noundef @__PRETTY_FUNCTION__.H5C_verify_entry_type) #7
  unreachable

9:                                                ; No predecessors!
  br label %cond.end11

cond.end11:                                       ; preds = %9, %cond.true9
  %10 = load i64, ptr %addr.addr, align 8, !tbaa !21
  %cmp12 = icmp ne i64 %10, -1
  br i1 %cmp12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %cond.end11
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end11
  call void @__assert_fail(ptr noundef @.str.113, ptr noundef @.str.1, i32 noundef 1204, ptr noundef @__PRETTY_FUNCTION__.H5C_verify_entry_type) #7
  unreachable

11:                                               ; No predecessors!
  br label %cond.end15

cond.end15:                                       ; preds = %11, %cond.true13
  %12 = load ptr, ptr %expected_type.addr, align 8, !tbaa !4
  %tobool16 = icmp ne ptr %12, null
  br i1 %tobool16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %cond.end15
  br label %cond.end19

cond.false18:                                     ; preds = %cond.end15
  call void @__assert_fail(ptr noundef @.str.118, ptr noundef @.str.1, i32 noundef 1205, ptr noundef @__PRETTY_FUNCTION__.H5C_verify_entry_type) #7
  unreachable

13:                                               ; No predecessors!
  br label %cond.end19

cond.end19:                                       ; preds = %13, %cond.true17
  %14 = load ptr, ptr %in_cache_ptr.addr, align 8, !tbaa !4
  %tobool20 = icmp ne ptr %14, null
  br i1 %tobool20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.end19
  br label %cond.end23

cond.false22:                                     ; preds = %cond.end19
  call void @__assert_fail(ptr noundef @.str.119, ptr noundef @.str.1, i32 noundef 1206, ptr noundef @__PRETTY_FUNCTION__.H5C_verify_entry_type) #7
  unreachable

15:                                               ; No predecessors!
  br label %cond.end23

cond.end23:                                       ; preds = %15, %cond.true21
  %16 = load ptr, ptr %type_ok_ptr.addr, align 8, !tbaa !4
  %tobool24 = icmp ne ptr %16, null
  br i1 %tobool24, label %cond.true25, label %cond.false26

cond.true25:                                      ; preds = %cond.end23
  br label %cond.end27

cond.false26:                                     ; preds = %cond.end23
  call void @__assert_fail(ptr noundef @.str.120, ptr noundef @.str.1, i32 noundef 1207, ptr noundef @__PRETTY_FUNCTION__.H5C_verify_entry_type) #7
  unreachable

17:                                               ; No predecessors!
  br label %cond.end27

cond.end27:                                       ; preds = %17, %cond.true25
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %depth) #6
  store i32 0, ptr %depth, align 4, !tbaa !8
  %18 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cmp28 = icmp eq ptr %18, null
  br i1 %cmp28, label %if.then45, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %cond.end27
  %19 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %magic30 = getelementptr inbounds %struct.H5C_t, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %magic30, align 8, !tbaa !14
  %cmp31 = icmp ne i32 %20, 6073358
  br i1 %cmp31, label %if.then45, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false29
  %21 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_size = getelementptr inbounds %struct.H5C_t, ptr %21, i32 0, i32 14
  %22 = load i64, ptr %index_size, align 8, !tbaa !40
  %23 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %clean_index_size = getelementptr inbounds %struct.H5C_t, ptr %23, i32 0, i32 17
  %24 = load i64, ptr %clean_index_size, align 8, !tbaa !60
  %25 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %dirty_index_size = getelementptr inbounds %struct.H5C_t, ptr %25, i32 0, i32 19
  %26 = load i64, ptr %dirty_index_size, align 8, !tbaa !62
  %add = add i64 %24, %26
  %cmp33 = icmp ne i64 %22, %add
  br i1 %cmp33, label %if.then45, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %lor.lhs.false32
  %27 = load i64, ptr %addr.addr, align 8, !tbaa !21
  %cmp35 = icmp ne i64 %27, -1
  br i1 %cmp35, label %lor.lhs.false36, label %if.then45

lor.lhs.false36:                                  ; preds = %lor.lhs.false34
  %28 = load i64, ptr %addr.addr, align 8, !tbaa !21
  %and = and i64 %28, 524280
  %conv = trunc i64 %and to i32
  %shr = lshr i32 %conv, 3
  %cmp37 = icmp slt i32 %shr, 0
  br i1 %cmp37, label %if.then45, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  %29 = load i64, ptr %addr.addr, align 8, !tbaa !21
  %and40 = and i64 %29, 524280
  %conv41 = trunc i64 %and40 to i32
  %shr42 = lshr i32 %conv41, 3
  %cmp43 = icmp sge i32 %shr42, 65536
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %lor.lhs.false39, %lor.lhs.false36, %lor.lhs.false34, %lor.lhs.false32, %lor.lhs.false29, %cond.end27
  %30 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %31 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %32 = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !21
  %call = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_verify_entry_type, i32 noundef 1209, i64 noundef %30, i64 noundef %31, i64 noundef %32, ptr noundef @.str.95)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %33 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool46 = trunc i8 %33 to i1
  %frombool = zext i1 %tobool46 to i8
  store i8 %frombool, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !8
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false39
  %34 = load i64, ptr %addr.addr, align 8, !tbaa !21
  %and48 = and i64 %34, 524280
  %conv49 = trunc i64 %and48 to i32
  %shr50 = lshr i32 %conv49, 3
  store i32 %shr50, ptr %k, align 4, !tbaa !8
  %35 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index = getelementptr inbounds %struct.H5C_t, ptr %35, i32 0, i32 21
  %36 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom = sext i32 %36 to i64
  %arrayidx = getelementptr inbounds [65536 x ptr], ptr %index, i64 0, i64 %idxprom
  %37 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %37, ptr %entry_ptr, align 8, !tbaa !4
  br label %while.cond

while.cond:                                       ; preds = %if.end185, %if.end47
  %38 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %tobool51 = icmp ne ptr %38, null
  br i1 %tobool51, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load i64, ptr %addr.addr, align 8, !tbaa !21
  %cmp52 = icmp ne i64 %39, -1
  br i1 %cmp52, label %land.lhs.true54, label %if.end185

land.lhs.true54:                                  ; preds = %while.body
  %40 = load i64, ptr %addr.addr, align 8, !tbaa !21
  %41 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %addr55 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %41, i32 0, i32 2
  %42 = load i64, ptr %addr55, align 8, !tbaa !25
  %cmp56 = icmp eq i64 %40, %42
  br i1 %cmp56, label %if.then58, label %if.end185

if.then58:                                        ; preds = %land.lhs.true54
  %43 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cmp59 = icmp eq ptr %43, null
  br i1 %cmp59, label %if.then128, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %if.then58
  %44 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %magic62 = getelementptr inbounds %struct.H5C_t, ptr %44, i32 0, i32 0
  %45 = load i32, ptr %magic62, align 8, !tbaa !14
  %cmp63 = icmp ne i32 %45, 6073358
  br i1 %cmp63, label %if.then128, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %lor.lhs.false61
  %46 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_len = getelementptr inbounds %struct.H5C_t, ptr %46, i32 0, i32 13
  %47 = load i32, ptr %index_len, align 4, !tbaa !58
  %cmp66 = icmp ult i32 %47, 1
  br i1 %cmp66, label %if.then128, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false65
  %48 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp69 = icmp eq ptr %48, null
  br i1 %cmp69, label %if.then128, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %lor.lhs.false68
  %49 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_size72 = getelementptr inbounds %struct.H5C_t, ptr %49, i32 0, i32 14
  %50 = load i64, ptr %index_size72, align 8, !tbaa !40
  %51 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %size = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %51, i32 0, i32 3
  %52 = load i64, ptr %size, align 8, !tbaa !29
  %cmp73 = icmp ult i64 %50, %52
  br i1 %cmp73, label %if.then128, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %lor.lhs.false71
  %53 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index_size76 = getelementptr inbounds %struct.H5C_t, ptr %53, i32 0, i32 14
  %54 = load i64, ptr %index_size76, align 8, !tbaa !40
  %55 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %clean_index_size77 = getelementptr inbounds %struct.H5C_t, ptr %55, i32 0, i32 17
  %56 = load i64, ptr %clean_index_size77, align 8, !tbaa !60
  %57 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %dirty_index_size78 = getelementptr inbounds %struct.H5C_t, ptr %57, i32 0, i32 19
  %58 = load i64, ptr %dirty_index_size78, align 8, !tbaa !62
  %add79 = add i64 %56, %58
  %cmp80 = icmp ne i64 %54, %add79
  br i1 %cmp80, label %if.then128, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false75
  %59 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %size83 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %59, i32 0, i32 3
  %60 = load i64, ptr %size83, align 8, !tbaa !29
  %cmp84 = icmp ule i64 %60, 0
  br i1 %cmp84, label %if.then128, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %lor.lhs.false82
  %61 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index87 = getelementptr inbounds %struct.H5C_t, ptr %61, i32 0, i32 21
  %62 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom88 = sext i32 %62 to i64
  %arrayidx89 = getelementptr inbounds [65536 x ptr], ptr %index87, i64 0, i64 %idxprom88
  %63 = load ptr, ptr %arrayidx89, align 8, !tbaa !4
  %cmp90 = icmp eq ptr %63, null
  br i1 %cmp90, label %if.then128, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %lor.lhs.false86
  %64 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index93 = getelementptr inbounds %struct.H5C_t, ptr %64, i32 0, i32 21
  %65 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom94 = sext i32 %65 to i64
  %arrayidx95 = getelementptr inbounds [65536 x ptr], ptr %index93, i64 0, i64 %idxprom94
  %66 = load ptr, ptr %arrayidx95, align 8, !tbaa !4
  %67 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp96 = icmp ne ptr %66, %67
  br i1 %cmp96, label %land.lhs.true98, label %lor.lhs.false101

land.lhs.true98:                                  ; preds = %lor.lhs.false92
  %68 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_prev = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %68, i32 0, i32 28
  %69 = load ptr, ptr %ht_prev, align 8, !tbaa !93
  %cmp99 = icmp eq ptr %69, null
  br i1 %cmp99, label %if.then128, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %land.lhs.true98, %lor.lhs.false92
  %70 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index102 = getelementptr inbounds %struct.H5C_t, ptr %70, i32 0, i32 21
  %71 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom103 = sext i32 %71 to i64
  %arrayidx104 = getelementptr inbounds [65536 x ptr], ptr %index102, i64 0, i64 %idxprom103
  %72 = load ptr, ptr %arrayidx104, align 8, !tbaa !4
  %73 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp105 = icmp eq ptr %72, %73
  br i1 %cmp105, label %land.lhs.true107, label %lor.lhs.false111

land.lhs.true107:                                 ; preds = %lor.lhs.false101
  %74 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_prev108 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %74, i32 0, i32 28
  %75 = load ptr, ptr %ht_prev108, align 8, !tbaa !93
  %cmp109 = icmp ne ptr %75, null
  br i1 %cmp109, label %if.then128, label %lor.lhs.false111

lor.lhs.false111:                                 ; preds = %land.lhs.true107, %lor.lhs.false101
  %76 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_prev112 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %76, i32 0, i32 28
  %77 = load ptr, ptr %ht_prev112, align 8, !tbaa !93
  %cmp113 = icmp ne ptr %77, null
  br i1 %cmp113, label %land.lhs.true115, label %lor.lhs.false119

land.lhs.true115:                                 ; preds = %lor.lhs.false111
  %78 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_prev116 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %78, i32 0, i32 28
  %79 = load ptr, ptr %ht_prev116, align 8, !tbaa !93
  %ht_next = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %79, i32 0, i32 27
  %80 = load ptr, ptr %ht_next, align 8, !tbaa !24
  %81 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp117 = icmp ne ptr %80, %81
  br i1 %cmp117, label %if.then128, label %lor.lhs.false119

lor.lhs.false119:                                 ; preds = %land.lhs.true115, %lor.lhs.false111
  %82 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_next120 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %82, i32 0, i32 27
  %83 = load ptr, ptr %ht_next120, align 8, !tbaa !24
  %cmp121 = icmp ne ptr %83, null
  br i1 %cmp121, label %land.lhs.true123, label %if.end132

land.lhs.true123:                                 ; preds = %lor.lhs.false119
  %84 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_next124 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %84, i32 0, i32 27
  %85 = load ptr, ptr %ht_next124, align 8, !tbaa !24
  %ht_prev125 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %85, i32 0, i32 28
  %86 = load ptr, ptr %ht_prev125, align 8, !tbaa !93
  %87 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp126 = icmp ne ptr %86, %87
  br i1 %cmp126, label %if.then128, label %if.end132

if.then128:                                       ; preds = %land.lhs.true123, %land.lhs.true115, %land.lhs.true107, %land.lhs.true98, %lor.lhs.false86, %lor.lhs.false82, %lor.lhs.false75, %lor.lhs.false71, %lor.lhs.false68, %lor.lhs.false65, %lor.lhs.false61, %if.then58
  %88 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %89 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %90 = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !21
  %call129 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_verify_entry_type, i32 noundef 1209, i64 noundef %88, i64 noundef %89, i64 noundef %90, ptr noundef @.str.96)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %91 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool130 = trunc i8 %91 to i1
  %frombool131 = zext i1 %tobool130 to i8
  store i8 %frombool131, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !8
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end132:                                        ; preds = %land.lhs.true123, %lor.lhs.false119
  %92 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %93 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index133 = getelementptr inbounds %struct.H5C_t, ptr %93, i32 0, i32 21
  %94 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom134 = sext i32 %94 to i64
  %arrayidx135 = getelementptr inbounds [65536 x ptr], ptr %index133, i64 0, i64 %idxprom134
  %95 = load ptr, ptr %arrayidx135, align 8, !tbaa !4
  %cmp136 = icmp ne ptr %92, %95
  br i1 %cmp136, label %if.then138, label %if.end184

if.then138:                                       ; preds = %if.end132
  %96 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_next139 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %96, i32 0, i32 27
  %97 = load ptr, ptr %ht_next139, align 8, !tbaa !24
  %tobool140 = icmp ne ptr %97, null
  br i1 %tobool140, label %if.then141, label %if.end145

if.then141:                                       ; preds = %if.then138
  %98 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_prev142 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %98, i32 0, i32 28
  %99 = load ptr, ptr %ht_prev142, align 8, !tbaa !93
  %100 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_next143 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %100, i32 0, i32 27
  %101 = load ptr, ptr %ht_next143, align 8, !tbaa !24
  %ht_prev144 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %101, i32 0, i32 28
  store ptr %99, ptr %ht_prev144, align 8, !tbaa !93
  br label %if.end145

if.end145:                                        ; preds = %if.then141, %if.then138
  %102 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_prev146 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %102, i32 0, i32 28
  %103 = load ptr, ptr %ht_prev146, align 8, !tbaa !93
  %cmp147 = icmp ne ptr %103, null
  br i1 %cmp147, label %cond.true149, label %cond.false150

cond.true149:                                     ; preds = %if.end145
  br label %cond.end151

cond.false150:                                    ; preds = %if.end145
  call void @__assert_fail(ptr noundef @.str.115, ptr noundef @.str.1, i32 noundef 1209, ptr noundef @__PRETTY_FUNCTION__.H5C_verify_entry_type) #7
  unreachable

104:                                              ; No predecessors!
  br label %cond.end151

cond.end151:                                      ; preds = %104, %cond.true149
  %105 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_next152 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %105, i32 0, i32 27
  %106 = load ptr, ptr %ht_next152, align 8, !tbaa !24
  %107 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_prev153 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %107, i32 0, i32 28
  %108 = load ptr, ptr %ht_prev153, align 8, !tbaa !93
  %ht_next154 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %108, i32 0, i32 27
  store ptr %106, ptr %ht_next154, align 8, !tbaa !24
  %109 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %110 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index155 = getelementptr inbounds %struct.H5C_t, ptr %110, i32 0, i32 21
  %111 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom156 = sext i32 %111 to i64
  %arrayidx157 = getelementptr inbounds [65536 x ptr], ptr %index155, i64 0, i64 %idxprom156
  %112 = load ptr, ptr %arrayidx157, align 8, !tbaa !4
  %ht_prev158 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %112, i32 0, i32 28
  store ptr %109, ptr %ht_prev158, align 8, !tbaa !93
  %113 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index159 = getelementptr inbounds %struct.H5C_t, ptr %113, i32 0, i32 21
  %114 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom160 = sext i32 %114 to i64
  %arrayidx161 = getelementptr inbounds [65536 x ptr], ptr %index159, i64 0, i64 %idxprom160
  %115 = load ptr, ptr %arrayidx161, align 8, !tbaa !4
  %116 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_next162 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %116, i32 0, i32 27
  store ptr %115, ptr %ht_next162, align 8, !tbaa !24
  %117 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_prev163 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %117, i32 0, i32 28
  store ptr null, ptr %ht_prev163, align 8, !tbaa !93
  %118 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %119 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index164 = getelementptr inbounds %struct.H5C_t, ptr %119, i32 0, i32 21
  %120 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom165 = sext i32 %120 to i64
  %arrayidx166 = getelementptr inbounds [65536 x ptr], ptr %index164, i64 0, i64 %idxprom165
  store ptr %118, ptr %arrayidx166, align 8, !tbaa !4
  %121 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %cmp167 = icmp eq ptr %121, null
  br i1 %cmp167, label %if.then179, label %lor.lhs.false169

lor.lhs.false169:                                 ; preds = %cond.end151
  %122 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %index170 = getelementptr inbounds %struct.H5C_t, ptr %122, i32 0, i32 21
  %123 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom171 = sext i32 %123 to i64
  %arrayidx172 = getelementptr inbounds [65536 x ptr], ptr %index170, i64 0, i64 %idxprom171
  %124 = load ptr, ptr %arrayidx172, align 8, !tbaa !4
  %125 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp173 = icmp ne ptr %124, %125
  br i1 %cmp173, label %if.then179, label %lor.lhs.false175

lor.lhs.false175:                                 ; preds = %lor.lhs.false169
  %126 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_prev176 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %126, i32 0, i32 28
  %127 = load ptr, ptr %ht_prev176, align 8, !tbaa !93
  %cmp177 = icmp ne ptr %127, null
  br i1 %cmp177, label %if.then179, label %if.end183

if.then179:                                       ; preds = %lor.lhs.false175, %lor.lhs.false169, %cond.end151
  %128 = load i64, ptr @H5E_ERR_CLS_g, align 8, !tbaa !21
  %129 = load i64, ptr @H5E_CACHE_g, align 8, !tbaa !21
  %130 = load i64, ptr @H5E_SYSTEM_g, align 8, !tbaa !21
  %call180 = call i32 (ptr, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef null, ptr noundef @.str.1, ptr noundef @__func__.H5C_verify_entry_type, i32 noundef 1209, i64 noundef %128, i64 noundef %129, i64 noundef %130, ptr noundef @.str.98)
  store i8 1, ptr %err_occurred, align 1, !tbaa !10
  %131 = load i8, ptr %err_occurred, align 1, !tbaa !10, !range !12, !noundef !13
  %tobool181 = trunc i8 %131 to i1
  %frombool182 = zext i1 %tobool181 to i8
  store i8 %frombool182, ptr %err_occurred, align 1, !tbaa !10
  store i32 -1, ptr %ret_value, align 4, !tbaa !8
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end183:                                        ; preds = %lor.lhs.false175
  br label %if.end184

if.end184:                                        ; preds = %if.end183, %if.end132
  br label %while.end

if.end185:                                        ; preds = %land.lhs.true54, %while.body
  %132 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %ht_next186 = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %132, i32 0, i32 27
  %133 = load ptr, ptr %ht_next186, align 8, !tbaa !24
  store ptr %133, ptr %entry_ptr, align 8, !tbaa !4
  %134 = load i32, ptr %depth, align 4, !tbaa !8
  %inc = add nsw i32 %134, 1
  store i32 %inc, ptr %depth, align 4, !tbaa !8
  br label %while.cond

while.end:                                        ; preds = %if.end184, %while.cond
  %135 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp187 = icmp ne ptr %135, null
  br i1 %cmp187, label %if.then189, label %if.else

if.then189:                                       ; preds = %while.end
  %136 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %successful_ht_searches = getelementptr inbounds %struct.H5C_t, ptr %136, i32 0, i32 115
  %137 = load i64, ptr %successful_ht_searches, align 8, !tbaa !51
  %inc190 = add nsw i64 %137, 1
  store i64 %inc190, ptr %successful_ht_searches, align 8, !tbaa !51
  %138 = load i32, ptr %depth, align 4, !tbaa !8
  %conv191 = sext i32 %138 to i64
  %139 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_successful_ht_search_depth = getelementptr inbounds %struct.H5C_t, ptr %139, i32 0, i32 116
  %140 = load i64, ptr %total_successful_ht_search_depth, align 8, !tbaa !52
  %add192 = add nsw i64 %140, %conv191
  store i64 %add192, ptr %total_successful_ht_search_depth, align 8, !tbaa !52
  br label %if.end196

if.else:                                          ; preds = %while.end
  %141 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %failed_ht_searches = getelementptr inbounds %struct.H5C_t, ptr %141, i32 0, i32 117
  %142 = load i64, ptr %failed_ht_searches, align 8, !tbaa !53
  %inc193 = add nsw i64 %142, 1
  store i64 %inc193, ptr %failed_ht_searches, align 8, !tbaa !53
  %143 = load i32, ptr %depth, align 4, !tbaa !8
  %conv194 = sext i32 %143 to i64
  %144 = load ptr, ptr %cache_ptr.addr, align 8, !tbaa !4
  %total_failed_ht_search_depth = getelementptr inbounds %struct.H5C_t, ptr %144, i32 0, i32 118
  %145 = load i64, ptr %total_failed_ht_search_depth, align 8, !tbaa !54
  %add195 = add nsw i64 %145, %conv194
  store i64 %add195, ptr %total_failed_ht_search_depth, align 8, !tbaa !54
  br label %if.end196

if.end196:                                        ; preds = %if.else, %if.then189
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then179, %if.then128, %if.then45, %if.end196
  call void @llvm.lifetime.end.p0(i64 4, ptr %depth) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup214 [
    i32 0, label %cleanup.cont
    i32 2, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  %146 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %cmp198 = icmp eq ptr %146, null
  br i1 %cmp198, label %if.then200, label %if.else201

if.then200:                                       ; preds = %cleanup.cont
  %147 = load ptr, ptr %in_cache_ptr.addr, align 8, !tbaa !4
  store i8 0, ptr %147, align 1, !tbaa !10
  br label %if.end212

if.else201:                                       ; preds = %cleanup.cont
  %148 = load ptr, ptr %in_cache_ptr.addr, align 8, !tbaa !4
  store i8 1, ptr %148, align 1, !tbaa !10
  %149 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %prefetched = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %149, i32 0, i32 41
  %150 = load i8, ptr %prefetched, align 4, !tbaa !106, !range !12, !noundef !13
  %tobool202 = trunc i8 %150 to i1
  br i1 %tobool202, label %if.then203, label %if.else207

if.then203:                                       ; preds = %if.else201
  %151 = load ptr, ptr %expected_type.addr, align 8, !tbaa !4
  %id = getelementptr inbounds %struct.H5C_class_t, ptr %151, i32 0, i32 0
  %152 = load i32, ptr %id, align 8, !tbaa !32
  %153 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %prefetch_type_id = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %153, i32 0, i32 42
  %154 = load i32, ptr %prefetch_type_id, align 8, !tbaa !107
  %cmp204 = icmp eq i32 %152, %154
  %155 = load ptr, ptr %type_ok_ptr.addr, align 8, !tbaa !4
  %frombool206 = zext i1 %cmp204 to i8
  store i8 %frombool206, ptr %155, align 1, !tbaa !10
  br label %if.end211

if.else207:                                       ; preds = %if.else201
  %156 = load ptr, ptr %expected_type.addr, align 8, !tbaa !4
  %157 = load ptr, ptr %entry_ptr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.H5C_cache_entry_t, ptr %157, i32 0, i32 6
  %158 = load ptr, ptr %type, align 8, !tbaa !31
  %cmp208 = icmp eq ptr %156, %158
  %159 = load ptr, ptr %type_ok_ptr.addr, align 8, !tbaa !4
  %frombool210 = zext i1 %cmp208 to i8
  store i8 %frombool210, ptr %159, align 1, !tbaa !10
  br label %if.end211

if.end211:                                        ; preds = %if.else207, %if.then203
  br label %if.end212

if.end212:                                        ; preds = %if.end211, %if.then200
  br label %done

done:                                             ; preds = %if.end212, %cleanup
  br label %if.end213

if.end213:                                        ; preds = %done, %lor.lhs.false
  %160 = load i32, ptr %ret_value, align 4, !tbaa !8
  store i32 %160, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup214

cleanup214:                                       ; preds = %if.end213, %cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr %err_occurred) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_value) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry_ptr) #6
  %161 = load i32, ptr %retval, align 4
  ret i32 %161
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"_Bool", !6, i64 0}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!15, !9, i64 0}
!15 = !{!"H5C_t", !9, i64 0, !11, i64 4, !5, i64 8, !5, i64 16, !9, i64 24, !5, i64 32, !16, i64 40, !16, i64 48, !5, i64 56, !11, i64 64, !5, i64 72, !11, i64 80, !11, i64 81, !9, i64 84, !16, i64 88, !6, i64 96, !6, i64 120, !16, i64 168, !6, i64 176, !16, i64 224, !6, i64 232, !6, i64 280, !9, i64 524568, !16, i64 524576, !5, i64 524584, !5, i64 524592, !16, i64 524600, !5, i64 524608, !5, i64 524616, !11, i64 524624, !11, i64 524625, !9, i64 524628, !16, i64 524632, !6, i64 524640, !6, i64 524664, !5, i64 524712, !9, i64 524720, !9, i64 524724, !16, i64 524728, !5, i64 524736, !11, i64 524744, !9, i64 524748, !9, i64 524752, !16, i64 524760, !5, i64 524768, !5, i64 524776, !9, i64 524784, !16, i64 524792, !5, i64 524800, !5, i64 524808, !9, i64 524816, !16, i64 524824, !5, i64 524832, !5, i64 524840, !11, i64 524848, !11, i64 524849, !16, i64 524856, !11, i64 524864, !11, i64 524865, !11, i64 524866, !11, i64 524867, !11, i64 524868, !11, i64 524869, !17, i64 524872, !9, i64 525056, !6, i64 525060, !6, i64 525072, !9, i64 525116, !9, i64 525120, !9, i64 525124, !6, i64 525128, !16, i64 527848, !16, i64 527856, !19, i64 527864, !11, i64 527880, !11, i64 527881, !11, i64 527882, !11, i64 527883, !16, i64 527888, !20, i64 527896, !20, i64 527904, !16, i64 527912, !16, i64 527920, !16, i64 527928, !16, i64 527936, !9, i64 527944, !5, i64 527952, !5, i64 527960, !11, i64 527968, !11, i64 527969, !6, i64 527976, !6, i64 528224, !6, i64 528472, !6, i64 528720, !6, i64 528968, !6, i64 529096, !6, i64 529344, !6, i64 529592, !6, i64 529840, !6, i64 530088, !6, i64 530336, !6, i64 530584, !6, i64 530832, !6, i64 531080, !6, i64 531328, !6, i64 531576, !6, i64 531824, !6, i64 532072, !6, i64 532320, !6, i64 532568, !6, i64 532816, !6, i64 533064, !6, i64 533312, !16, i64 533560, !16, i64 533568, !16, i64 533576, !16, i64 533584, !16, i64 533592, !16, i64 533600, !9, i64 533608, !16, i64 533616, !16, i64 533624, !16, i64 533632, !9, i64 533640, !16, i64 533648, !9, i64 533656, !16, i64 533664, !9, i64 533672, !16, i64 533680, !16, i64 533688, !16, i64 533696, !16, i64 533704, !16, i64 533712, !9, i64 533720, !9, i64 533724, !9, i64 533728, !16, i64 533736, !16, i64 533744, !16, i64 533752, !16, i64 533760, !9, i64 533768, !9, i64 533772, !9, i64 533776, !20, i64 533784, !16, i64 533792, !16, i64 533800, !16, i64 533808, !6, i64 533816, !6, i64 533940, !6, i64 534064, !6, i64 534188, !6, i64 534312, !6, i64 534560, !6, i64 534684, !16, i64 534720}
!16 = !{!"long", !6, i64 0}
!17 = !{!"H5C_auto_size_ctl_t", !9, i64 0, !5, i64 8, !11, i64 16, !16, i64 24, !18, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !6, i64 64, !18, i64 72, !18, i64 80, !11, i64 88, !16, i64 96, !6, i64 104, !18, i64 112, !18, i64 120, !6, i64 128, !18, i64 136, !18, i64 144, !11, i64 152, !16, i64 160, !9, i64 168, !11, i64 172, !18, i64 176}
!18 = !{!"double", !6, i64 0}
!19 = !{!"H5C_cache_image_ctl_t", !9, i64 0, !11, i64 4, !11, i64 5, !9, i64 8, !9, i64 12}
!20 = !{!"long long", !6, i64 0}
!21 = !{!16, !16, i64 0}
!22 = !{!23, !9, i64 0}
!23 = !{!"H5C_cache_entry_t", !9, i64 0, !5, i64 8, !16, i64 16, !16, i64 24, !5, i64 32, !11, i64 40, !5, i64 48, !11, i64 56, !11, i64 57, !11, i64 58, !11, i64 59, !9, i64 60, !11, i64 64, !11, i64 65, !11, i64 66, !11, i64 67, !11, i64 68, !11, i64 69, !9, i64 72, !5, i64 80, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !11, i64 108, !11, i64 109, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !11, i64 160, !9, i64 164, !11, i64 168, !16, i64 176, !5, i64 184, !16, i64 192, !16, i64 200, !9, i64 208, !11, i64 212, !9, i64 216, !9, i64 220, !11, i64 224, !9, i64 228, !5, i64 232, !5, i64 240, !5, i64 248, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268}
!24 = !{!23, !5, i64 112}
!25 = !{!23, !16, i64 16}
!26 = !{!23, !5, i64 248}
!27 = !{!28, !16, i64 0}
!28 = !{!"H5C_tag_info_t", !16, i64 0, !5, i64 8, !16, i64 16, !11, i64 24}
!29 = !{!23, !16, i64 24}
!30 = !{!23, !9, i64 72}
!31 = !{!23, !5, i64 48}
!32 = !{!33, !9, i64 0}
!33 = !{!"H5C_class_t", !9, i64 0, !5, i64 8, !6, i64 16, !9, i64 20, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96}
!34 = !{!33, !5, i64 8}
!35 = !{!23, !11, i64 58}
!36 = !{!23, !11, i64 64}
!37 = !{!23, !11, i64 56}
!38 = !{!15, !9, i64 524816}
!39 = !{!15, !16, i64 524824}
!40 = !{!15, !16, i64 88}
!41 = !{!15, !16, i64 40}
!42 = !{!15, !5, i64 524832}
!43 = !{!23, !5, i64 144}
!44 = !{!15, !11, i64 524624}
!45 = !{!15, !9, i64 524628}
!46 = !{!15, !16, i64 524632}
!47 = !{!15, !5, i64 524712}
!48 = !{!6, !6, i64 0}
!49 = !{!18, !18, i64 0}
!50 = !{!15, !9, i64 24}
!51 = !{!15, !16, i64 533576}
!52 = !{!15, !16, i64 533584}
!53 = !{!15, !16, i64 533592}
!54 = !{!15, !16, i64 533600}
!55 = !{!15, !16, i64 533560}
!56 = !{!15, !16, i64 533568}
!57 = !{!15, !16, i64 533616}
!58 = !{!15, !9, i64 84}
!59 = !{!15, !9, i64 533608}
!60 = !{!15, !16, i64 168}
!61 = !{!15, !16, i64 533624}
!62 = !{!15, !16, i64 224}
!63 = !{!15, !16, i64 533632}
!64 = !{!15, !16, i64 533648}
!65 = !{!15, !9, i64 533640}
!66 = !{!15, !16, i64 524760}
!67 = !{!15, !16, i64 533664}
!68 = !{!15, !9, i64 524752}
!69 = !{!15, !9, i64 533656}
!70 = !{!15, !16, i64 524792}
!71 = !{!15, !16, i64 533680}
!72 = !{!15, !9, i64 524784}
!73 = !{!15, !9, i64 533672}
!74 = !{!15, !16, i64 533688}
!75 = !{!15, !16, i64 533696}
!76 = !{!15, !9, i64 533720}
!77 = !{!15, !16, i64 533704}
!78 = !{!15, !9, i64 533724}
!79 = !{!15, !16, i64 533712}
!80 = !{!15, !9, i64 533728}
!81 = !{!15, !16, i64 533736}
!82 = !{!15, !16, i64 533744}
!83 = !{!15, !16, i64 533752}
!84 = !{!15, !16, i64 533760}
!85 = !{!15, !9, i64 533768}
!86 = !{!15, !9, i64 533772}
!87 = !{!15, !9, i64 533776}
!88 = !{!15, !20, i64 533784}
!89 = !{!15, !16, i64 533792}
!90 = !{!15, !16, i64 533800}
!91 = !{!15, !16, i64 533808}
!92 = !{!15, !5, i64 32}
!93 = !{!23, !5, i64 120}
!94 = !{!23, !9, i64 88}
!95 = !{!23, !5, i64 80}
!96 = !{!23, !9, i64 92}
!97 = !{!23, !9, i64 96}
!98 = !{!15, !5, i64 524584}
!99 = !{!15, !5, i64 524592}
!100 = !{!23, !5, i64 136}
!101 = !{!23, !5, i64 128}
!102 = !{!15, !9, i64 524568}
!103 = !{!15, !16, i64 524576}
!104 = !{!15, !16, i64 534720}
!105 = !{!15, !11, i64 527880}
!106 = !{!23, !11, i64 212}
!107 = !{!23, !9, i64 216}
