; ModuleID = 'samples/831.bc'
source_filename = "rma/rma_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucp_request_param_t = type { i32, i32, ptr, %union.anon.58, i64, ptr, ptr, i32, %union.anon.59, ptr }
%union.anon.58 = type { ptr }
%union.anon.59 = type { ptr }
%struct.ucs_global_opts_t = type { %struct.ucs_log_component_config, ptr, i64, i32, i64, i64, i32, i32, i32, %struct.anon.75, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i64, i32, ptr, i64, i32, ptr, i64, %struct.ucs_config_names_array_t, i32, %struct.ucs_config_names_array_t, i32, i32, ptr, i32, %struct.ucs_config_allow_list_t, %struct.ucs_arch_global_opts, i32, i64, i64 }
%struct.ucs_log_component_config = type { i32, [16 x i8], ptr }
%struct.anon.75 = type { ptr, i32, i32 }
%struct.ucs_config_names_array_t = type { ptr, i32, i32 }
%struct.ucs_config_allow_list_t = type { %struct.ucs_config_names_array_t, i32 }
%struct.ucs_arch_global_opts = type { i64, i64 }
%struct.ucs_array_ep_config_arr_t = type { ptr, i32, i32 }
%struct.uct_iface_attr = type { %struct.anon, i64, i64, i64, i64, %struct.sockaddr_storage, double, %struct.uct_ppn_bandwidth, %struct.ucs_linear_func_t, i8, i64, i32 }
%struct.anon = type { %struct.anon.0, %struct.anon.1, %struct.anon.2, %struct.anon.3, %struct.anon.7, %struct.anon.7, i64, i64 }
%struct.anon.0 = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.1 = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.2 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.3 = type { %struct.anon.4, %struct.anon.5, %struct.anon.6 }
%struct.anon.4 = type { i64, i64, i64, i64 }
%struct.anon.5 = type { i64, i64, i64, i64 }
%struct.anon.6 = type { i64, i64, i64 }
%struct.anon.7 = type { i64, i64 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct.uct_ppn_bandwidth = type { double, double }
%struct.ucs_linear_func_t = type { double, double }
%struct.ucp_worker_iface = type { ptr, %struct.uct_iface_attr, ptr, %struct.ucs_list_link, i8, i32, i32, i32, i32, i32, i8 }
%struct.ucs_list_link = type { ptr, ptr }
%struct.ucp_request = type { i8, i32, i64, %union.anon, %union.anon.8 }
%union.anon = type { ptr }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { ptr, %union.anon.10, i64, i64, ptr, %struct.ucs_hlist_link, ptr, %struct.anon.11, %union.anon.21, %union.anon.48, i8, i8, i8, i8, %struct.uct_pending_req }
%union.anon.10 = type { ptr }
%struct.ucs_hlist_link = type { %struct.ucs_list_link }
%struct.anon.11 = type { %union.anon.12, %union.anon.20 }
%union.anon.12 = type { %struct.ucp_datatype_iter_t }
%struct.ucp_datatype_iter_t = type { i32, %struct.ucp_memory_info_t, i64, i64, %union.anon.13 }
%struct.ucp_memory_info_t = type { i8, i8 }
%union.anon.13 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i64, ptr, ptr }
%union.anon.20 = type { %struct.uct_completion }
%struct.uct_completion = type { ptr, i32, i8 }
%union.anon.21 = type { %struct.anon.29 }
%struct.anon.29 = type { i64, i64, ptr, %union.anon.30, %union.anon.31 }
%union.anon.30 = type { ptr }
%union.anon.31 = type { %struct.anon.33 }
%struct.anon.33 = type { i64, %union.anon.34 }
%union.anon.34 = type { %struct.anon.36 }
%struct.anon.36 = type { i64 }
%union.anon.48 = type { i16 }
%struct.uct_pending_req = type { ptr, [40 x i8] }
%struct.anon.26 = type { i64, ptr }
%struct.ucp_dt_state = type { i64, %union.anon.17 }
%union.anon.17 = type { %struct.ucp_dt_reg }
%struct.ucp_dt_reg = type { i64, [4 x ptr] }
%struct.ucp_ep = type { ptr, i8, i8, i16, i8, i16, [5 x ptr], ptr }
%struct.ucp_worker = type { i64, %struct.ucs_async_context, ptr, i64, i64, ptr, %struct.ucs_mpool, %struct.ucs_mpool, %struct.ucs_bitmap_128_t, i32, [32 x i8], [32 x i8], i32, i32, ptr, i32, i32, %struct.ucs_list_link, ptr, %struct.ucs_strided_alloc, %struct.ucs_list_link, i32, %struct.ucs_list_link, %struct.ucs_list_link, %struct.ucs_conn_match_ctx, ptr, i32, i32, %struct.ucs_bitmap_128_t, ptr, %struct.ucs_mpool_set, %struct.ucs_mpool, %struct.kh_ucp_worker_mpool_hash_s, %struct.ucs_queue_head, i32, %struct.ucp_tag_match, %struct.ucp_am_info, i64, [5 x ptr], %struct.ucs_cpu_set_t, %struct.kh_ucp_worker_rkey_config_s, %struct.kh_ucp_worker_discard_uct_ep_hash_s, %struct.ucs_ptr_map_ep_t, %struct.ucs_ptr_map_request_t, %struct.ucs_array_ep_config_arr_t, i32, [128 x %struct.ucp_rkey_config_t], %struct.anon.70, %struct.anon.71 }
%struct.ucs_async_context = type { %union.anon.64, i32, %struct.ucs_mpmc_queue, i64 }
%union.anon.64 = type { %struct.ucs_async_thread_context }
%struct.ucs_async_thread_context = type { %union.anon.65 }
%union.anon.65 = type { %struct.ucs_async_thread_mutex }
%struct.ucs_async_thread_mutex = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.ucs_mpmc_queue = type { %struct.ucs_spinlock, %struct.ucs_queue_head }
%struct.ucs_spinlock = type { i32 }
%struct.ucs_strided_alloc = type { ptr, %struct.ucs_queue_head, i64, i32, i32 }
%struct.ucs_conn_match_ctx = type { %struct.kh_ucs_conn_match_s, i64, i64, %struct.ucs_conn_match_ops }
%struct.kh_ucs_conn_match_s = type { i32, i32, i32, i32, ptr, ptr, ptr }
%struct.ucs_conn_match_ops = type { ptr, ptr, ptr, ptr }
%struct.ucs_bitmap_128_t = type { [2 x i64] }
%struct.ucs_mpool_set = type { i32, [32 x ptr], ptr }
%struct.ucs_mpool = type { ptr, ptr }
%struct.kh_ucp_worker_mpool_hash_s = type { i32, i32, i32, i32, ptr, ptr, ptr }
%struct.ucs_queue_head = type { ptr, ptr }
%struct.ucp_tag_match = type { %struct.anon.66, %struct.anon.67, %struct.kh_ucp_tag_frag_hash_s, %struct.anon.68 }
%struct.anon.66 = type { %struct.ucp_request_queue_t, ptr, i64, i32 }
%struct.ucp_request_queue_t = type { %struct.ucs_queue_head, i32, i32 }
%struct.anon.67 = type { %struct.ucs_list_link, ptr }
%struct.kh_ucp_tag_frag_hash_s = type { i32, i32, i32, i32, ptr, ptr, ptr }
%struct.anon.68 = type { %struct.ucs_queue_head, %struct.kh_ucp_tag_offload_hash_s, ptr, i64, i64 }
%struct.kh_ucp_tag_offload_hash_s = type { i32, i32, i32, i32, ptr, ptr, ptr }
%struct.ucp_am_info = type { i64, %struct.ucs_array_ucp_am_cbs_t }
%struct.ucs_array_ucp_am_cbs_t = type { ptr, i32, i32 }
%struct.ucs_cpu_set_t = type { [16 x i64] }
%struct.kh_ucp_worker_rkey_config_s = type { i32, i32, i32, i32, ptr, ptr, ptr }
%struct.kh_ucp_worker_discard_uct_ep_hash_s = type { i32, i32, i32, i32, ptr, ptr, ptr }
%struct.ucs_ptr_map_ep_t = type { %struct.ucs_ptr_map, [1 x %struct.ucs_ptr_safe_hash] }
%struct.ucs_ptr_map = type { i64, %struct.kh_ucs_ptr_map_impl_s }
%struct.kh_ucs_ptr_map_impl_s = type { i32, i32, i32, i32, ptr, ptr, ptr }
%struct.ucs_ptr_safe_hash = type { %struct.kh_ucs_ptr_map_impl_s, %struct.ucs_spinlock }
%struct.ucs_ptr_map_request_t = type { %struct.ucs_ptr_map, [0 x %struct.ucs_ptr_safe_hash] }
%struct.ucp_rkey_config_t = type { %struct.ucp_rkey_config_key, %struct.ucp_proto_select_short_t, [16 x %struct.ucs_sys_dev_distance], %struct.ucp_proto_select_t }
%struct.ucp_rkey_config_key = type { i64, i8, i8, i32 }
%struct.ucp_proto_select_short_t = type { i64, i64, i8, i8 }
%struct.ucs_sys_dev_distance = type { double, double }
%struct.ucp_proto_select_t = type { %struct.kh_ucp_proto_select_hash_s, %struct.anon.69 }
%struct.kh_ucp_proto_select_hash_s = type { i32, i32, i32, i32, ptr, ptr, ptr }
%struct.anon.69 = type { i64, ptr }
%struct.anon.70 = type { i32, i32, i64, ptr, i32, i32, i64 }
%struct.anon.71 = type { i64, i64, i64, i64 }
%struct.ucp_context = type { ptr, i8, ptr, i8, [5 x i64], [5 x i64], i64, [5 x i8], i8, [5 x i8], i64, ptr, %struct.ucs_bitmap_128_t, i8, i64, ptr, %struct.anon.60, %struct.ucp_mt_lock, [32 x i8], %struct.ucs_list_link }
%struct.anon.60 = type { i64, i64, i32, i32, %struct.anon.61, ptr, i32, %struct.ucs_bitmap_128_t, [128 x i8], i8, %struct.ucp_context_config, ptr, i32, %struct.anon.62 }
%struct.anon.61 = type { i64, ptr, ptr }
%struct.ucp_context_config = type { i64, i64, i64, i64, double, double, double, i64, i32, i64, double, i64, [5 x i64], [5 x i64], i32, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, ptr, ptr }
%struct.anon.62 = type { i32, ptr }
%struct.ucp_mt_lock = type { i32, %union.anon.63 }
%union.anon.63 = type { %union.pthread_mutex_t }
%struct.ucp_rkey = type { %union.anon.72, i64, [0 x %struct.ucp_tl_rkey] }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { i8, i8, i8, i8, i8, i8, i8, i8, i64, i64 }
%struct.ucp_tl_rkey = type { %struct.uct_rkey_bundle, ptr }
%struct.uct_rkey_bundle = type { i64, ptr, ptr }
%struct.anon.74 = type { i8, i8, i8 }
%struct.ucp_ep_config = type { %struct.ucp_ep_config_key, i16, i32, [16 x %struct.ucp_ep_rma_config], i64, %struct.ucp_ep_msg_config, [16 x i8], %struct.anon.76, %struct.anon.77, %struct.anon.80, %struct.anon.81, %struct.ucp_proto_select_t, i64 }
%struct.ucp_ep_config_key = type { i8, [16 x %struct.ucp_ep_config_key_lane], i8, i8, i8, i8, i8, [16 x i8], [16 x i8], i8, [16 x i8], [16 x i8], i64, i64, i64, ptr, i32 }
%struct.ucp_ep_config_key_lane = type { i8, i8, i8, i8, i32, i64 }
%struct.ucp_ep_rma_config = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ucp_ep_msg_config = type { i64, i64, i64, i64, i64, [16 x i64], [5 x i64], [16 x i64], i8 }
%struct.anon.76 = type { %struct.ucp_rndv_zcopy, %struct.ucp_rndv_zcopy, %struct.ucp_rndv_thresh, %struct.ucp_rndv_thresh, i64, i64 }
%struct.ucp_rndv_zcopy = type { i64, i64, i32, [16 x i8], [16 x double] }
%struct.ucp_rndv_thresh = type { i64, i64 }
%struct.anon.77 = type { ptr, ptr, i8, %struct.ucp_memtype_thresh, %struct.ucp_ep_msg_config, %struct.anon.78, %struct.anon.79 }
%struct.ucp_memtype_thresh = type { i64, i64 }
%struct.anon.78 = type { %struct.ucp_rndv_thresh, %struct.ucp_rndv_thresh }
%struct.anon.79 = type { %struct.ucp_memtype_thresh, i64, i64 }
%struct.anon.80 = type { ptr }
%struct.anon.81 = type { ptr, ptr, %struct.ucp_memtype_thresh, %struct.ucp_memtype_thresh }
%struct.ucp_rma_proto = type { ptr, ptr, ptr }
%union.ucs_mpool_elem = type { ptr }
%struct.ucp_proto_select_param_t = type <{ i8, i16, i8, i8, i8, i8, i8 }>
%struct.uct_ep = type { ptr }
%struct.uct_iface = type { %struct.uct_iface_ops }
%struct.uct_iface_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ucs_memtype_cache = type { %union.pthread_rwlock_t, %struct.ucs_pgtable }
%union.pthread_rwlock_t = type { %struct.__pthread_rwlock_arch_t }
%struct.__pthread_rwlock_arch_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, [7 x i8], i64, i32 }
%struct.ucs_pgtable = type { %struct.ucs_pgt_entry, i64, i64, i32, i32, ptr, ptr }
%struct.ucs_pgt_entry = type { i64 }
%struct.ucp_proto_threshold_elem_t = type { %struct.ucp_proto_config_t, i64 }
%struct.ucp_proto_config_t = type { ptr, ptr, i64, i8, i8, %struct.ucp_proto_select_param_t }
%struct.anon.14 = type { ptr, ptr }
%struct.ucp_dt_iov = type { ptr, i64 }
%struct.anon.16 = type { ptr, i64, i64, ptr }
%struct.ucp_dt_generic = type { ptr, %struct.ucp_generic_dt_ops }
%struct.ucp_generic_dt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ucs_memory_info = type { i32, i8, ptr, i64 }
%union.ucp_proto_select_key_t = type { i64 }
%struct.ucp_proto_select_elem_t = type { ptr, ptr, ptr }
%struct.ucp_proto = type { ptr, ptr, i32, ptr, ptr, [8 x ptr], ptr, ptr }
%struct.ucs_mpool_data = type { i64, i64, i64, double, i64, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.anon.18 = type { i64, i64, i64, ptr }
%struct.anon.19 = type { ptr }
%struct.ucp_ep_ext = type { ptr, ptr, %struct.ucs_list_link, i8, i64, i64, ptr, ptr, ptr, %struct.ucs_hlist_head, %union.anon.82, %struct.anon.83, %struct.anon.84, ptr }
%struct.ucs_hlist_head = type { ptr }
%union.anon.82 = type { %struct.ucp_ep_match_elem_t }
%struct.ucp_ep_match_elem_t = type { i64, %struct.ucs_conn_match_elem }
%struct.ucs_conn_match_elem = type { %struct.ucs_hlist_link }
%struct.anon.83 = type { %struct.ucs_list_link, %struct.ucs_queue_head }
%struct.anon.84 = type { %struct.ucs_list_link, %struct.ucs_queue_head }
%struct.ucp_mem = type { %struct.ucs_rcache_region, ptr, i32, i32, i8, i64, ptr, [0 x ptr] }
%struct.ucs_rcache_region = type { %struct.ucs_pgt_region, %struct.ucs_list_link, %struct.ucs_list_link, %struct.ucs_list_link, i32, i8, i8, i8, i8, %union.anon.85 }
%struct.ucs_pgt_region = type { i64, i64 }
%union.anon.85 = type { i64 }
%struct.uct_md_attr_v2_t = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.ucs_linear_func_t, [16 x i8], i64, %struct.ucs_cpu_set_t, i64, [256 x i8] }
%struct.ucp_tl_md = type { ptr, i8, %struct.uct_md_resource_desc, %struct.uct_md_attr_v2_t, i32 }
%struct.uct_md_resource_desc = type { [16 x i8] }

@.str = private unnamed_addr constant [14 x i8] c"ep_config_arr\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c"ucp_ep_config_t\00", align 1, !dbg !7
@ucp_request_null_param = external constant %struct.ucp_request_param_t, align 8
@ucs_global_opts = external global %struct.ucs_global_opts_t, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"rma/rma_send.c\00", align 1, !dbg !12
@__func__.ucp_put_nbx = private unnamed_addr constant [12 x i8] c"ucp_put_nbx\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [51 x i8] c"remote memory is unreachable (remote md_map 0x%lx)\00", align 1, !dbg !24
@ucp_rma_proto_list = external global [0 x ptr], align 8
@__func__.ucp_get_nbx = private unnamed_addr constant [12 x i8] c"ucp_get_nbx\00", align 1, !dbg !29
@.str.4 = private unnamed_addr constant [4 x i8] c"put\00", align 1, !dbg !31
@.str.5 = private unnamed_addr constant [4 x i8] c"get\00", align 1, !dbg !36
@.str.6 = private unnamed_addr constant [158 x i8] c"/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp/core/ucp_request.inl\00", align 1, !dbg !38
@__FUNCTION__.ucp_request_send_state_advance = private unnamed_addr constant [31 x i8] c"ucp_request_send_state_advance\00", align 1, !dbg !44
@.str.7 = private unnamed_addr constant [27 x i8] c"Fatal: unknown protocol %d\00", align 1, !dbg !49
@ucs_memtype_cache_global_instance = external global ptr, align 8
@__FUNCTION__.ucp_request_try_send = private unnamed_addr constant [21 x i8] c"ucp_request_try_send\00", align 1, !dbg !54
@.str.8 = private unnamed_addr constant [28 x i8] c"Fatal: unexpected error: %s\00", align 1, !dbg !59
@__FUNCTION__.ucp_request_send_state_init = private unnamed_addr constant [28 x i8] c"ucp_request_send_state_init\00", align 1, !dbg !64
@.str.9 = private unnamed_addr constant [25 x i8] c"Fatal: Invalid data type\00", align 1, !dbg !67
@__FUNCTION__.ucp_request_send_state_reset = private unnamed_addr constant [29 x i8] c"ucp_request_send_state_reset\00", align 1, !dbg !72
@.str.10 = private unnamed_addr constant [24 x i8] c"Fatal: unknown protocol\00", align 1, !dbg !77
@.str.11 = private unnamed_addr constant [7 x i8] c"delete\00", align 1, !dbg !82
@.str.12 = private unnamed_addr constant [12 x i8] c"rma/rma.inl\00", align 1, !dbg !87
@__func__.ucp_rma_wait = private unnamed_addr constant [13 x i8] c"ucp_rma_wait\00", align 1, !dbg !91
@.str.13 = private unnamed_addr constant [14 x i8] c"%s failed: %s\00", align 1, !dbg !96

; Function Attrs: alwaysinline nounwind uwtable
define internal signext i8 @ucs_array_ep_config_arr_grow(ptr noundef %array, i32 noundef %min_capacity) #0 !dbg !2807 {
entry:
  %retval = alloca i8, align 1
  %array.addr = alloca ptr, align 8
  %min_capacity.addr = alloca i32, align 4
  %status = alloca i8, align 1
  %capacity = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !2812, metadata !DIExpression()), !dbg !2820
  store i32 %min_capacity, ptr %min_capacity.addr, align 4, !tbaa !2821
  tail call void @llvm.dbg.declare(metadata ptr %min_capacity.addr, metadata !2813, metadata !DIExpression()), !dbg !2820
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #10, !dbg !2820
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !2814, metadata !DIExpression()), !dbg !2820
  call void @llvm.lifetime.start.p0(i64 8, ptr %capacity) #10, !dbg !2820
  tail call void @llvm.dbg.declare(metadata ptr %capacity, metadata !2815, metadata !DIExpression()), !dbg !2820
  %0 = load ptr, ptr %array.addr, align 8, !dbg !2823, !tbaa !2816
  %capacity1 = getelementptr inbounds %struct.ucs_array_ep_config_arr_t, ptr %0, i32 0, i32 2, !dbg !2823
  %1 = load i32, ptr %capacity1, align 4, !dbg !2823, !tbaa !2825
  %conv = zext i32 %1 to i64, !dbg !2823
  %and = and i64 %conv, 1, !dbg !2823
  %tobool = icmp ne i64 %and, 0, !dbg !2823
  br i1 %tobool, label %if.then, label %if.end, !dbg !2820

if.then:                                          ; preds = %entry
  store i8 -4, ptr %retval, align 1, !dbg !2827
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2827

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %array.addr, align 8, !dbg !2820, !tbaa !2816
  %capacity2 = getelementptr inbounds %struct.ucs_array_ep_config_arr_t, ptr %2, i32 0, i32 2, !dbg !2820
  %3 = load i32, ptr %capacity2, align 4, !dbg !2820, !tbaa !2825
  %conv3 = zext i32 %3 to i64, !dbg !2820
  store i64 %conv3, ptr %capacity, align 8, !dbg !2820, !tbaa !2829
  %4 = load ptr, ptr %array.addr, align 8, !dbg !2820, !tbaa !2816
  %buffer = getelementptr inbounds %struct.ucs_array_ep_config_arr_t, ptr %4, i32 0, i32 0, !dbg !2820
  %5 = load i32, ptr %min_capacity.addr, align 4, !dbg !2820, !tbaa !2821
  %conv4 = zext i32 %5 to i64, !dbg !2820
  %call = call signext i8 @ucs_array_grow(ptr noundef %buffer, ptr noundef %capacity, i64 noundef %conv4, i64 noundef 2728, ptr noundef @.str, ptr noundef @.str.1), !dbg !2820
  store i8 %call, ptr %status, align 1, !dbg !2820, !tbaa !2831
  %6 = load i8, ptr %status, align 1, !dbg !2832, !tbaa !2831
  %conv5 = sext i8 %6 to i32, !dbg !2832
  %cmp = icmp ne i32 %conv5, 0, !dbg !2832
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !2820

if.then7:                                         ; preds = %if.end
  %7 = load i8, ptr %status, align 1, !dbg !2834, !tbaa !2831
  store i8 %7, ptr %retval, align 1, !dbg !2834
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2834

if.end8:                                          ; preds = %if.end
  %8 = load i64, ptr %capacity, align 8, !dbg !2820, !tbaa !2829
  %conv9 = trunc i64 %8 to i32, !dbg !2820
  %9 = load ptr, ptr %array.addr, align 8, !dbg !2820, !tbaa !2816
  %capacity10 = getelementptr inbounds %struct.ucs_array_ep_config_arr_t, ptr %9, i32 0, i32 2, !dbg !2820
  store i32 %conv9, ptr %capacity10, align 4, !dbg !2820, !tbaa !2825
  store i8 0, ptr %retval, align 1, !dbg !2820
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2820

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %capacity) #10, !dbg !2820
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #10, !dbg !2820
  %10 = load i8, ptr %retval, align 1, !dbg !2820
  ret i8 %10, !dbg !2820
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !2836 signext i8 @ucs_array_grow(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal signext i8 @ucs_array_ep_config_arr_reserve(ptr noundef %array, i32 noundef %min_capacity) #0 !dbg !2840 {
entry:
  %retval = alloca i8, align 1
  %array.addr = alloca ptr, align 8
  %min_capacity.addr = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !2842, metadata !DIExpression()), !dbg !2844
  store i32 %min_capacity, ptr %min_capacity.addr, align 4, !tbaa !2821
  tail call void @llvm.dbg.declare(metadata ptr %min_capacity.addr, metadata !2843, metadata !DIExpression()), !dbg !2844
  %0 = load i32, ptr %min_capacity.addr, align 4, !dbg !2845, !tbaa !2821
  %conv = zext i32 %0 to i64, !dbg !2845
  %1 = load ptr, ptr %array.addr, align 8, !dbg !2845, !tbaa !2816
  %capacity = getelementptr inbounds %struct.ucs_array_ep_config_arr_t, ptr %1, i32 0, i32 2, !dbg !2845
  %2 = load i32, ptr %capacity, align 4, !dbg !2845, !tbaa !2825
  %conv1 = zext i32 %2 to i64, !dbg !2845
  %and = and i64 %conv1, -2, !dbg !2845
  %cmp = icmp ule i64 %conv, %and, !dbg !2845
  %conv2 = zext i1 %cmp to i32, !dbg !2845
  %conv3 = sext i32 %conv2 to i64, !dbg !2845
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 1), !dbg !2845
  %tobool = icmp ne i64 %expval, 0, !dbg !2845
  br i1 %tobool, label %if.then, label %if.end, !dbg !2844

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1, !dbg !2847
  br label %return, !dbg !2847

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %array.addr, align 8, !dbg !2844, !tbaa !2816
  %4 = load i32, ptr %min_capacity.addr, align 4, !dbg !2844, !tbaa !2821
  %call = call signext i8 @ucs_array_ep_config_arr_grow(ptr noundef %3, i32 noundef %4), !dbg !2844
  store i8 %call, ptr %retval, align 1, !dbg !2844
  br label %return, !dbg !2844

return:                                           ; preds = %if.end, %if.then
  %5 = load i8, ptr %retval, align 1, !dbg !2844
  ret i8 %5, !dbg !2844
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal signext i8 @ucs_array_ep_config_arr_append(ptr noundef %array) #0 !dbg !2849 {
entry:
  %retval = alloca i8, align 1
  %array.addr = alloca ptr, align 8
  %status = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %array.addr, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #10, !dbg !2855
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !2854, metadata !DIExpression()), !dbg !2855
  %0 = load ptr, ptr %array.addr, align 8, !dbg !2855, !tbaa !2816
  %1 = load ptr, ptr %array.addr, align 8, !dbg !2855, !tbaa !2816
  %length = getelementptr inbounds %struct.ucs_array_ep_config_arr_t, ptr %1, i32 0, i32 1, !dbg !2855
  %2 = load i32, ptr %length, align 8, !dbg !2855, !tbaa !2856
  %add = add i32 %2, 1, !dbg !2855
  %call = call signext i8 @ucs_array_ep_config_arr_reserve(ptr noundef %0, i32 noundef %add), !dbg !2855
  store i8 %call, ptr %status, align 1, !dbg !2855, !tbaa !2831
  %3 = load i8, ptr %status, align 1, !dbg !2857, !tbaa !2831
  %conv = sext i8 %3 to i32, !dbg !2857
  %cmp = icmp ne i32 %conv, 0, !dbg !2857
  %conv1 = zext i1 %cmp to i32, !dbg !2857
  %conv2 = sext i32 %conv1 to i64, !dbg !2857
  %expval = call i64 @llvm.expect.i64(i64 %conv2, i64 0), !dbg !2857
  %tobool = icmp ne i64 %expval, 0, !dbg !2857
  br i1 %tobool, label %if.then, label %if.end, !dbg !2855

if.then:                                          ; preds = %entry
  %4 = load i8, ptr %status, align 1, !dbg !2859, !tbaa !2831
  store i8 %4, ptr %retval, align 1, !dbg !2859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2859

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %array.addr, align 8, !dbg !2855, !tbaa !2816
  %length3 = getelementptr inbounds %struct.ucs_array_ep_config_arr_t, ptr %5, i32 0, i32 1, !dbg !2855
  %6 = load i32, ptr %length3, align 8, !dbg !2855, !tbaa !2856
  %inc = add i32 %6, 1, !dbg !2855
  store i32 %inc, ptr %length3, align 8, !dbg !2855, !tbaa !2856
  store i8 0, ptr %retval, align 1, !dbg !2855
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2855

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #10, !dbg !2855
  %7 = load i8, ptr %retval, align 1, !dbg !2855
  ret i8 %7, !dbg !2855
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @ucp_worker_is_tl_2sockaddr(ptr noundef %worker, i8 noundef zeroext %rsc_index) #0 !dbg !2861 {
entry:
  %worker.addr = alloca ptr, align 8
  %rsc_index.addr = alloca i8, align 1
  store ptr %worker, ptr %worker.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %worker.addr, metadata !2865, metadata !DIExpression()), !dbg !2867
  store i8 %rsc_index, ptr %rsc_index.addr, align 1, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %rsc_index.addr, metadata !2866, metadata !DIExpression()), !dbg !2868
  %0 = load ptr, ptr %worker.addr, align 8, !dbg !2869, !tbaa !2816
  %1 = load i8, ptr %rsc_index.addr, align 1, !dbg !2870, !tbaa !2831
  %call = call ptr @ucp_worker_iface_get_attr(ptr noundef %0, i8 noundef zeroext %1), !dbg !2871
  %cap = getelementptr inbounds %struct.uct_iface_attr, ptr %call, i32 0, i32 0, !dbg !2872
  %flags = getelementptr inbounds %struct.anon, ptr %cap, i32 0, i32 6, !dbg !2873
  %2 = load i64, ptr %flags, align 8, !dbg !2873, !tbaa !2874
  %and = and i64 %2, 4398046511104, !dbg !2888
  %tobool = icmp ne i64 %and, 0, !dbg !2889
  %lnot = xor i1 %tobool, true, !dbg !2889
  %lnot1 = xor i1 %lnot, true, !dbg !2890
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2890
  ret i32 %lnot.ext, !dbg !2891
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @ucp_worker_iface_get_attr(ptr noundef %worker, i8 noundef zeroext %rsc_index) #0 !dbg !2892 {
entry:
  %worker.addr = alloca ptr, align 8
  %rsc_index.addr = alloca i8, align 1
  store ptr %worker, ptr %worker.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %worker.addr, metadata !2896, metadata !DIExpression()), !dbg !2898
  store i8 %rsc_index, ptr %rsc_index.addr, align 1, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %rsc_index.addr, metadata !2897, metadata !DIExpression()), !dbg !2899
  %0 = load ptr, ptr %worker.addr, align 8, !dbg !2900, !tbaa !2816
  %1 = load i8, ptr %rsc_index.addr, align 1, !dbg !2901, !tbaa !2831
  %call = call ptr @ucp_worker_iface(ptr noundef %0, i8 noundef zeroext %1), !dbg !2902
  %attr = getelementptr inbounds %struct.ucp_worker_iface, ptr %call, i32 0, i32 1, !dbg !2903
  ret ptr %attr, !dbg !2904
}

; Function Attrs: nounwind uwtable
define signext i8 @ucp_rma_request_advance(ptr noundef %req, i64 noundef %frag_length, i8 noundef signext %status, i64 noundef %req_id) #4 !dbg !2905 {
entry:
  %retval = alloca i8, align 1
  %req.addr = alloca ptr, align 8
  %frag_length.addr = alloca i64, align 8
  %status.addr = alloca i8, align 1
  %req_id.addr = alloca i64, align 8
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !2909, metadata !DIExpression()), !dbg !2913
  store i64 %frag_length, ptr %frag_length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %frag_length.addr, metadata !2910, metadata !DIExpression()), !dbg !2914
  store i8 %status, ptr %status.addr, align 1, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !2911, metadata !DIExpression()), !dbg !2915
  store i64 %req_id, ptr %req_id.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %req_id.addr, metadata !2912, metadata !DIExpression()), !dbg !2916
  %0 = load ptr, ptr %req.addr, align 8, !dbg !2917, !tbaa !2816
  %1 = load i8, ptr %status.addr, align 1, !dbg !2918, !tbaa !2831
  call void @ucp_request_send_state_advance(ptr noundef %0, ptr noundef null, i32 noundef 4, i8 noundef signext %1), !dbg !2919
  %2 = load i8, ptr %status.addr, align 1, !dbg !2920, !tbaa !2831
  %conv = sext i8 %2 to i32, !dbg !2920
  %cmp = icmp slt i32 %conv, 0, !dbg !2920
  %conv1 = zext i1 %cmp to i32, !dbg !2920
  %conv2 = sext i32 %conv1 to i64, !dbg !2920
  %expval = call i64 @llvm.expect.i64(i64 %conv2, i64 0), !dbg !2920
  %tobool = icmp ne i64 %expval, 0, !dbg !2920
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2922

if.then:                                          ; preds = %entry
  %3 = load i8, ptr %status.addr, align 1, !dbg !2923, !tbaa !2831
  %conv3 = sext i8 %3 to i32, !dbg !2923
  %cmp4 = icmp eq i32 %conv3, -2, !dbg !2926
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !2927

if.then6:                                         ; preds = %if.then
  store i8 -2, ptr %retval, align 1, !dbg !2928
  br label %return, !dbg !2928

if.end:                                           ; preds = %if.then
  store i8 0, ptr %retval, align 1, !dbg !2930
  br label %return, !dbg !2930

if.end7:                                          ; preds = %entry
  %4 = load i64, ptr %frag_length.addr, align 8, !dbg !2931, !tbaa !2829
  %5 = load ptr, ptr %req.addr, align 8, !dbg !2932, !tbaa !2816
  %6 = getelementptr inbounds %struct.ucp_request, ptr %5, i32 0, i32 4, !dbg !2933
  %length = getelementptr inbounds %struct.anon.9, ptr %6, i32 0, i32 3, !dbg !2934
  %7 = load i64, ptr %length, align 8, !dbg !2935, !tbaa !2831
  %sub = sub i64 %7, %4, !dbg !2935
  store i64 %sub, ptr %length, align 8, !dbg !2935, !tbaa !2831
  %8 = load ptr, ptr %req.addr, align 8, !dbg !2936, !tbaa !2816
  %9 = getelementptr inbounds %struct.ucp_request, ptr %8, i32 0, i32 4, !dbg !2938
  %length8 = getelementptr inbounds %struct.anon.9, ptr %9, i32 0, i32 3, !dbg !2939
  %10 = load i64, ptr %length8, align 8, !dbg !2939, !tbaa !2831
  %cmp9 = icmp eq i64 %10, 0, !dbg !2940
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !2941

if.then11:                                        ; preds = %if.end7
  %11 = load ptr, ptr %req.addr, align 8, !dbg !2942, !tbaa !2816
  call void @ucp_send_request_invoke_uct_completion(ptr noundef %11), !dbg !2944
  store i8 0, ptr %retval, align 1, !dbg !2945
  br label %return, !dbg !2945

if.end12:                                         ; preds = %if.end7
  %12 = load ptr, ptr %req.addr, align 8, !dbg !2946, !tbaa !2816
  %13 = getelementptr inbounds %struct.ucp_request, ptr %12, i32 0, i32 4, !dbg !2946
  %14 = getelementptr inbounds %struct.anon.9, ptr %13, i32 0, i32 1, !dbg !2946
  %15 = load ptr, ptr %14, align 8, !dbg !2946, !tbaa !2831
  %16 = ptrtoint ptr %15 to i64, !dbg !2946
  %17 = load i64, ptr %frag_length.addr, align 8, !dbg !2946, !tbaa !2829
  %add = add nsw i64 %16, %17, !dbg !2946
  %18 = inttoptr i64 %add to ptr, !dbg !2946
  %19 = load ptr, ptr %req.addr, align 8, !dbg !2947, !tbaa !2816
  %20 = getelementptr inbounds %struct.ucp_request, ptr %19, i32 0, i32 4, !dbg !2948
  %21 = getelementptr inbounds %struct.anon.9, ptr %20, i32 0, i32 1, !dbg !2949
  store ptr %18, ptr %21, align 8, !dbg !2950, !tbaa !2831
  %22 = load i64, ptr %frag_length.addr, align 8, !dbg !2951, !tbaa !2829
  %23 = load ptr, ptr %req.addr, align 8, !dbg !2952, !tbaa !2816
  %24 = getelementptr inbounds %struct.ucp_request, ptr %23, i32 0, i32 4, !dbg !2953
  %25 = getelementptr inbounds %struct.anon.9, ptr %24, i32 0, i32 8, !dbg !2954
  %remote_addr = getelementptr inbounds %struct.anon.26, ptr %25, i32 0, i32 0, !dbg !2955
  %26 = load i64, ptr %remote_addr, align 8, !dbg !2956, !tbaa !2831
  %add13 = add i64 %26, %22, !dbg !2956
  store i64 %add13, ptr %remote_addr, align 8, !dbg !2956, !tbaa !2831
  store i8 1, ptr %retval, align 1, !dbg !2957
  br label %return, !dbg !2957

return:                                           ; preds = %if.end12, %if.then11, %if.end, %if.then6
  %27 = load i8, ptr %retval, align 1, !dbg !2958
  ret i8 %27, !dbg !2958
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_request_send_state_advance(ptr noundef %req, ptr noundef %new_dt_state, i32 noundef %proto, i8 noundef signext %status) #0 !dbg !2959 {
entry:
  %req.addr = alloca ptr, align 8
  %new_dt_state.addr = alloca ptr, align 8
  %proto.addr = alloca i32, align 4
  %status.addr = alloca i8, align 1
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !2965, metadata !DIExpression()), !dbg !2969
  store ptr %new_dt_state, ptr %new_dt_state.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %new_dt_state.addr, metadata !2966, metadata !DIExpression()), !dbg !2970
  store i32 %proto, ptr %proto.addr, align 4, !tbaa !2821
  tail call void @llvm.dbg.declare(metadata ptr %proto.addr, metadata !2967, metadata !DIExpression()), !dbg !2971
  store i8 %status, ptr %status.addr, align 1, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !2968, metadata !DIExpression()), !dbg !2972
  %0 = load i8, ptr %status.addr, align 1, !dbg !2973, !tbaa !2831
  %conv = sext i8 %0 to i32, !dbg !2973
  %cmp = icmp eq i32 %conv, -2, !dbg !2975
  br i1 %cmp, label %if.then, label %if.end, !dbg !2976

if.then:                                          ; preds = %entry
  br label %sw.epilog, !dbg !2977

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %status.addr, align 1, !dbg !2979, !tbaa !2831
  %conv2 = sext i8 %1 to i32, !dbg !2979
  %cmp3 = icmp slt i32 %conv2, 0, !dbg !2979
  %conv4 = zext i1 %cmp3 to i32, !dbg !2979
  %conv5 = sext i32 %conv4 to i64, !dbg !2979
  %expval = call i64 @llvm.expect.i64(i64 %conv5, i64 0), !dbg !2979
  %tobool = icmp ne i64 %expval, 0, !dbg !2979
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !2981

if.then6:                                         ; preds = %if.end
  %2 = load ptr, ptr %req.addr, align 8, !dbg !2982, !tbaa !2816
  %3 = load i8, ptr %status.addr, align 1, !dbg !2984, !tbaa !2831
  call void @ucp_request_send_state_ff(ptr noundef %2, i8 noundef signext %3), !dbg !2985
  br label %sw.epilog, !dbg !2986

if.end7:                                          ; preds = %if.end
  %4 = load i32, ptr %proto.addr, align 4, !dbg !2987, !tbaa !2821
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb14
  ], !dbg !2988

sw.bb:                                            ; preds = %if.end7, %if.end7, %if.end7
  %5 = load ptr, ptr %req.addr, align 8, !dbg !2989, !tbaa !2816
  %6 = getelementptr inbounds %struct.ucp_request, ptr %5, i32 0, i32 4, !dbg !2989
  %datatype = getelementptr inbounds %struct.anon.9, ptr %6, i32 0, i32 2, !dbg !2989
  %7 = load i64, ptr %datatype, align 8, !dbg !2989, !tbaa !2831
  %and = and i64 %7, 7, !dbg !2989
  %cmp8 = icmp eq i64 %and, 0, !dbg !2989
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !2992

if.then10:                                        ; preds = %sw.bb
  %8 = load ptr, ptr %new_dt_state.addr, align 8, !dbg !2993, !tbaa !2816
  %offset = getelementptr inbounds %struct.ucp_dt_state, ptr %8, i32 0, i32 0, !dbg !2995
  %9 = load i64, ptr %offset, align 8, !dbg !2995, !tbaa !2996
  %10 = load ptr, ptr %req.addr, align 8, !dbg !2998, !tbaa !2816
  %11 = getelementptr inbounds %struct.ucp_request, ptr %10, i32 0, i32 4, !dbg !2999
  %state = getelementptr inbounds %struct.anon.9, ptr %11, i32 0, i32 7, !dbg !3000
  %12 = getelementptr inbounds %struct.anon.11, ptr %state, i32 0, i32 0, !dbg !3001
  %offset11 = getelementptr inbounds %struct.ucp_dt_state, ptr %12, i32 0, i32 0, !dbg !3002
  store i64 %9, ptr %offset11, align 8, !dbg !3003, !tbaa !2831
  br label %if.end13, !dbg !3004

if.else:                                          ; preds = %sw.bb
  %13 = load ptr, ptr %req.addr, align 8, !dbg !3005, !tbaa !2816
  %14 = getelementptr inbounds %struct.ucp_request, ptr %13, i32 0, i32 4, !dbg !3007
  %state12 = getelementptr inbounds %struct.anon.9, ptr %14, i32 0, i32 7, !dbg !3008
  %15 = getelementptr inbounds %struct.anon.11, ptr %state12, i32 0, i32 0, !dbg !3009
  %16 = load ptr, ptr %new_dt_state.addr, align 8, !dbg !3010, !tbaa !2816
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %15, ptr align 8 %16, i64 48, i1 false), !dbg !3011, !tbaa.struct !3012
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  br label %sw.bb14, !dbg !2989

sw.bb14:                                          ; preds = %if.end7, %if.end13
  %17 = load i8, ptr %status.addr, align 1, !dbg !3013, !tbaa !2831
  %conv15 = sext i8 %17 to i32, !dbg !3013
  %cmp16 = icmp eq i32 %conv15, 1, !dbg !3015
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !3016

if.then18:                                        ; preds = %sw.bb14
  %18 = load ptr, ptr %req.addr, align 8, !dbg !3017, !tbaa !2816
  %19 = getelementptr inbounds %struct.ucp_request, ptr %18, i32 0, i32 4, !dbg !3019
  %state19 = getelementptr inbounds %struct.anon.9, ptr %19, i32 0, i32 7, !dbg !3020
  %20 = getelementptr inbounds %struct.anon.11, ptr %state19, i32 0, i32 1, !dbg !3021
  %count = getelementptr inbounds %struct.uct_completion, ptr %20, i32 0, i32 1, !dbg !3022
  %21 = load i32, ptr %count, align 8, !dbg !3023, !tbaa !2831
  %inc = add nsw i32 %21, 1, !dbg !3023
  store i32 %inc, ptr %count, align 8, !dbg !3023, !tbaa !2831
  br label %if.end20, !dbg !3024

if.end20:                                         ; preds = %if.then18, %sw.bb14
  br label %sw.epilog, !dbg !3025

sw.default:                                       ; preds = %if.end7
  %22 = load i32, ptr %proto.addr, align 4, !dbg !3026, !tbaa !2821
  call void (ptr, i32, ptr, ptr, ...) @ucs_fatal_error_format(ptr noundef @.str.6, i32 noundef 505, ptr noundef @__FUNCTION__.ucp_request_send_state_advance, ptr noundef @.str.7, i32 noundef %22) #11, !dbg !3026
  unreachable, !dbg !3026

sw.epilog:                                        ; preds = %if.then, %if.then6, %if.end20
  ret void, !dbg !3027
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_send_request_invoke_uct_completion(ptr noundef %req) #0 !dbg !3028 {
entry:
  %req.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !3030, metadata !DIExpression()), !dbg !3031
  %0 = load ptr, ptr %req.addr, align 8, !dbg !3032, !tbaa !2816
  %1 = getelementptr inbounds %struct.ucp_request, ptr %0, i32 0, i32 4, !dbg !3034
  %state = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 7, !dbg !3035
  %2 = getelementptr inbounds %struct.anon.11, ptr %state, i32 0, i32 1, !dbg !3036
  %count = getelementptr inbounds %struct.uct_completion, ptr %2, i32 0, i32 1, !dbg !3037
  %3 = load i32, ptr %count, align 8, !dbg !3037, !tbaa !2831
  %cmp = icmp eq i32 %3, 0, !dbg !3038
  br i1 %cmp, label %if.then, label %if.end, !dbg !3039

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %req.addr, align 8, !dbg !3040, !tbaa !2816
  %5 = getelementptr inbounds %struct.ucp_request, ptr %4, i32 0, i32 4, !dbg !3042
  %state1 = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 7, !dbg !3043
  %6 = getelementptr inbounds %struct.anon.11, ptr %state1, i32 0, i32 1, !dbg !3044
  %func = getelementptr inbounds %struct.uct_completion, ptr %6, i32 0, i32 0, !dbg !3045
  %7 = load ptr, ptr %func, align 8, !dbg !3045, !tbaa !2831
  %8 = load ptr, ptr %req.addr, align 8, !dbg !3046, !tbaa !2816
  %9 = getelementptr inbounds %struct.ucp_request, ptr %8, i32 0, i32 4, !dbg !3047
  %state2 = getelementptr inbounds %struct.anon.9, ptr %9, i32 0, i32 7, !dbg !3048
  %10 = getelementptr inbounds %struct.anon.11, ptr %state2, i32 0, i32 1, !dbg !3049
  call void %7(ptr noundef %10), !dbg !3040
  br label %if.end, !dbg !3050

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3051
}

; Function Attrs: nounwind uwtable
define signext i8 @ucp_put_nbi(ptr noundef %ep, ptr noundef %buffer, i64 noundef %length, i64 noundef %remote_addr, ptr noundef %rkey) #4 !dbg !3052 {
entry:
  %retval = alloca i8, align 1
  %ep.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %remote_addr.addr = alloca i64, align 8
  %rkey.addr = alloca ptr, align 8
  %status_ptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ep.addr, metadata !3056, metadata !DIExpression()), !dbg !3062
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !3057, metadata !DIExpression()), !dbg !3063
  store i64 %length, ptr %length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !3058, metadata !DIExpression()), !dbg !3064
  store i64 %remote_addr, ptr %remote_addr.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %remote_addr.addr, metadata !3059, metadata !DIExpression()), !dbg !3065
  store ptr %rkey, ptr %rkey.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %rkey.addr, metadata !3060, metadata !DIExpression()), !dbg !3066
  call void @llvm.lifetime.start.p0(i64 8, ptr %status_ptr) #10, !dbg !3067
  tail call void @llvm.dbg.declare(metadata ptr %status_ptr, metadata !3061, metadata !DIExpression()), !dbg !3068
  %0 = load ptr, ptr %ep.addr, align 8, !dbg !3069, !tbaa !2816
  %1 = load ptr, ptr %buffer.addr, align 8, !dbg !3070, !tbaa !2816
  %2 = load i64, ptr %length.addr, align 8, !dbg !3071, !tbaa !2829
  %3 = load i64, ptr %remote_addr.addr, align 8, !dbg !3072, !tbaa !2829
  %4 = load ptr, ptr %rkey.addr, align 8, !dbg !3073, !tbaa !2816
  %call = call ptr @ucp_put_nbx(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef @ucp_request_null_param), !dbg !3074
  store ptr %call, ptr %status_ptr, align 8, !dbg !3075, !tbaa !2816
  %5 = load ptr, ptr %status_ptr, align 8, !dbg !3076, !tbaa !2816
  %6 = ptrtoint ptr %5 to i64, !dbg !3076
  %sub = sub i64 %6, 1, !dbg !3076
  %cmp = icmp ult i64 %sub, -101, !dbg !3076
  br i1 %cmp, label %if.then, label %if.end, !dbg !3078

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %status_ptr, align 8, !dbg !3079, !tbaa !2816
  call void @ucp_request_free(ptr noundef %7), !dbg !3081
  store i8 1, ptr %retval, align 1, !dbg !3082
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3082

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %status_ptr, align 8, !dbg !3083, !tbaa !2816
  %9 = ptrtoint ptr %8 to i64, !dbg !3083
  %sub1 = sub i64 %9, 1, !dbg !3083
  %cmp2 = icmp ult i64 %sub1, -101, !dbg !3083
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !3083

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !3083

cond.false:                                       ; preds = %if.end
  %10 = load ptr, ptr %status_ptr, align 8, !dbg !3083, !tbaa !2816
  %11 = ptrtoint ptr %10 to i64, !dbg !3083
  %conv = trunc i64 %11 to i8, !dbg !3083
  %conv3 = sext i8 %conv to i32, !dbg !3083
  br label %cond.end, !dbg !3083

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv3, %cond.false ], !dbg !3083
  %conv4 = trunc i32 %cond to i8, !dbg !3083
  store i8 %conv4, ptr %retval, align 1, !dbg !3084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3084

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status_ptr) #10, !dbg !3085
  %12 = load i8, ptr %retval, align 1, !dbg !3085
  ret i8 %12, !dbg !3085
}

; Function Attrs: nounwind uwtable
define ptr @ucp_put_nbx(ptr noundef %ep, ptr noundef %buffer, i64 noundef %count, i64 noundef %remote_addr, ptr noundef %rkey, ptr noundef %param) #4 !dbg !3086 {
entry:
  %retval = alloca ptr, align 8
  %ep.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %remote_addr.addr = alloca i64, align 8
  %rkey.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %worker = alloca ptr, align 8
  %contig_length = alloca i64, align 8
  %datatype = alloca i64, align 8
  %rma_config = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %status = alloca i8, align 1
  %req = alloca ptr, align 8
  %attr_mask = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__req = alloca ptr, align 8
  %_req = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp48 = alloca ptr, align 8
  %_status_nc = alloca i8, align 1
  %tmp104 = alloca i8, align 1
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ep.addr, metadata !3116, metadata !DIExpression()), !dbg !3143
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !3117, metadata !DIExpression()), !dbg !3144
  store i64 %count, ptr %count.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3118, metadata !DIExpression()), !dbg !3145
  store i64 %remote_addr, ptr %remote_addr.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %remote_addr.addr, metadata !3119, metadata !DIExpression()), !dbg !3146
  store ptr %rkey, ptr %rkey.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %rkey.addr, metadata !3120, metadata !DIExpression()), !dbg !3147
  store ptr %param, ptr %param.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !3121, metadata !DIExpression()), !dbg !3148
  call void @llvm.lifetime.start.p0(i64 8, ptr %worker) #10, !dbg !3149
  tail call void @llvm.dbg.declare(metadata ptr %worker, metadata !3122, metadata !DIExpression()), !dbg !3150
  %0 = load ptr, ptr %ep.addr, align 8, !dbg !3151, !tbaa !2816
  %worker1 = getelementptr inbounds %struct.ucp_ep, ptr %0, i32 0, i32 0, !dbg !3152
  %1 = load ptr, ptr %worker1, align 8, !dbg !3152, !tbaa !3153
  store ptr %1, ptr %worker, align 8, !dbg !3150, !tbaa !2816
  call void @llvm.lifetime.start.p0(i64 8, ptr %contig_length) #10, !dbg !3155
  tail call void @llvm.dbg.declare(metadata ptr %contig_length, metadata !3123, metadata !DIExpression()), !dbg !3156
  store i64 0, ptr %contig_length, align 8, !dbg !3156, !tbaa !2829
  call void @llvm.lifetime.start.p0(i64 8, ptr %datatype) #10, !dbg !3157
  tail call void @llvm.dbg.declare(metadata ptr %datatype, metadata !3124, metadata !DIExpression()), !dbg !3158
  store i64 8, ptr %datatype, align 8, !dbg !3158, !tbaa !2829
  call void @llvm.lifetime.start.p0(i64 8, ptr %rma_config) #10, !dbg !3159
  tail call void @llvm.dbg.declare(metadata ptr %rma_config, metadata !3125, metadata !DIExpression()), !dbg !3160
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !3161
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !3127, metadata !DIExpression()), !dbg !3162
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #10, !dbg !3163
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !3128, metadata !DIExpression()), !dbg !3164
  call void @llvm.lifetime.start.p0(i64 8, ptr %req) #10, !dbg !3165
  tail call void @llvm.dbg.declare(metadata ptr %req, metadata !3129, metadata !DIExpression()), !dbg !3166
  call void @llvm.lifetime.start.p0(i64 4, ptr %attr_mask) #10, !dbg !3167
  tail call void @llvm.dbg.declare(metadata ptr %attr_mask, metadata !3130, metadata !DIExpression()), !dbg !3168
  br label %do.body, !dbg !3169

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3170

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !3172

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !3172

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !3170

do.body3:                                         ; preds = %do.end
  %2 = load i64, ptr %count.addr, align 8, !dbg !3174, !tbaa !2829
  %cmp = icmp eq i64 %2, 0, !dbg !3174
  br i1 %cmp, label %if.then, label %if.end, !dbg !3177

if.then:                                          ; preds = %do.body3
  store ptr null, ptr %retval, align 8, !dbg !3178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup148, !dbg !3178

if.end:                                           ; preds = %do.body3
  br label %do.cond4, !dbg !3177

do.cond4:                                         ; preds = %if.end
  br label %do.end5, !dbg !3177

do.end5:                                          ; preds = %do.cond4
  br label %do.body6, !dbg !3170

do.body6:                                         ; preds = %do.end5
  br label %do.cond7, !dbg !3180

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !3180

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !3170

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !3170

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !3182

do.body11:                                        ; preds = %do.end10
  br label %do.body12, !dbg !3183

do.body12:                                        ; preds = %do.body11
  br label %do.cond13, !dbg !3185

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !3185

do.end14:                                         ; preds = %do.cond13
  br label %do.cond15, !dbg !3183

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !3183

do.end16:                                         ; preds = %do.cond15
  %3 = load ptr, ptr %param.addr, align 8, !dbg !3187, !tbaa !2816
  %op_attr_mask = getelementptr inbounds %struct.ucp_request_param_t, ptr %3, i32 0, i32 0, !dbg !3188
  %4 = load i32, ptr %op_attr_mask, align 8, !dbg !3188, !tbaa !3189
  %and = and i32 %4, 65544, !dbg !3191
  store i32 %and, ptr %attr_mask, align 4, !dbg !3192, !tbaa !2821
  %5 = load ptr, ptr %worker, align 8, !dbg !3193, !tbaa !2816
  %context = getelementptr inbounds %struct.ucp_worker, ptr %5, i32 0, i32 2, !dbg !3194
  %6 = load ptr, ptr %context, align 8, !dbg !3194, !tbaa !3195
  %config = getelementptr inbounds %struct.ucp_context, ptr %6, i32 0, i32 16, !dbg !3224
  %ext = getelementptr inbounds %struct.anon.60, ptr %config, i32 0, i32 10, !dbg !3225
  %proto_enable = getelementptr inbounds %struct.ucp_context_config, ptr %ext, i32 0, i32 37, !dbg !3226
  %7 = load i32, ptr %proto_enable, align 8, !dbg !3226, !tbaa !3227
  %tobool = icmp ne i32 %7, 0, !dbg !3193
  br i1 %tobool, label %if.then17, label %if.else72, !dbg !3234

if.then17:                                        ; preds = %do.end16
  %8 = load ptr, ptr %ep.addr, align 8, !dbg !3235, !tbaa !2816
  %9 = load ptr, ptr %buffer.addr, align 8, !dbg !3236, !tbaa !2816
  %10 = load i64, ptr %count.addr, align 8, !dbg !3237, !tbaa !2829
  %11 = load i64, ptr %remote_addr.addr, align 8, !dbg !3238, !tbaa !2829
  %12 = load ptr, ptr %rkey.addr, align 8, !dbg !3239, !tbaa !2816
  %13 = load ptr, ptr %param.addr, align 8, !dbg !3240, !tbaa !2816
  %call = call signext i8 @ucp_put_send_short(ptr noundef %8, ptr noundef %9, i64 noundef %10, i64 noundef %11, ptr noundef %12, ptr noundef %13), !dbg !3241
  store i8 %call, ptr %status, align 1, !dbg !3242, !tbaa !2831
  %14 = load i8, ptr %status, align 1, !dbg !3243, !tbaa !2831
  %conv = sext i8 %14 to i32, !dbg !3243
  %cmp18 = icmp ne i32 %conv, -2, !dbg !3243
  %conv19 = zext i1 %cmp18 to i32, !dbg !3243
  %conv20 = sext i32 %conv19 to i64, !dbg !3243
  %expval = call i64 @llvm.expect.i64(i64 %conv20, i64 1), !dbg !3243
  %tobool21 = icmp ne i64 %expval, 0, !dbg !3243
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !3245

if.then22:                                        ; preds = %if.then17
  %15 = load i8, ptr %status, align 1, !dbg !3246, !tbaa !2831
  %conv23 = sext i8 %15 to i64, !dbg !3246
  %16 = inttoptr i64 %conv23 to ptr, !dbg !3246
  store ptr %16, ptr %ret, align 8, !dbg !3248, !tbaa !2816
  br label %out_unlock, !dbg !3249

if.end24:                                         ; preds = %if.then17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__req) #10, !dbg !3250
  tail call void @llvm.dbg.declare(metadata ptr %__req, metadata !3131, metadata !DIExpression()), !dbg !3250
  %17 = load ptr, ptr %param.addr, align 8, !dbg !3251, !tbaa !2816
  %op_attr_mask25 = getelementptr inbounds %struct.ucp_request_param_t, ptr %17, i32 0, i32 0, !dbg !3251
  %18 = load i32, ptr %op_attr_mask25, align 8, !dbg !3251, !tbaa !3189
  %and26 = and i32 %18, 1, !dbg !3251
  %tobool27 = icmp ne i32 %and26, 0, !dbg !3251
  br i1 %tobool27, label %if.else, label %if.then28, !dbg !3250

if.then28:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 8, ptr %_req) #10, !dbg !3252
  tail call void @llvm.dbg.declare(metadata ptr %_req, metadata !3135, metadata !DIExpression()), !dbg !3252
  %19 = load ptr, ptr %worker, align 8, !dbg !3252, !tbaa !2816
  %req_mp = getelementptr inbounds %struct.ucp_worker, ptr %19, i32 0, i32 6, !dbg !3252
  %call29 = call ptr @ucs_mpool_get_inline(ptr noundef %req_mp), !dbg !3252
  store ptr %call29, ptr %_req, align 8, !dbg !3252, !tbaa !2816
  %20 = load ptr, ptr %_req, align 8, !dbg !3253, !tbaa !2816
  %cmp30 = icmp ne ptr %20, null, !dbg !3253
  br i1 %cmp30, label %if.then32, label %if.end39, !dbg !3252

if.then32:                                        ; preds = %if.then28
  br label %do.body33, !dbg !3255

do.body33:                                        ; preds = %if.then32
  br label %do.body34, !dbg !3257

do.body34:                                        ; preds = %do.body33
  br label %do.cond35, !dbg !3259

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !3259

do.end36:                                         ; preds = %do.cond35
  br label %do.cond37, !dbg !3257

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !3257

do.end38:                                         ; preds = %do.cond37
  %21 = load ptr, ptr %_req, align 8, !dbg !3255, !tbaa !2816
  %22 = load ptr, ptr %worker, align 8, !dbg !3255, !tbaa !2816
  call void @ucp_request_reset_internal(ptr noundef %21, ptr noundef %22), !dbg !3255
  br label %if.end39, !dbg !3255

if.end39:                                         ; preds = %do.end38, %if.then28
  %23 = load ptr, ptr %_req, align 8, !dbg !3252, !tbaa !2816
  store ptr %23, ptr %tmp, align 8, !dbg !3253, !tbaa !2816
  call void @llvm.lifetime.end.p0(i64 8, ptr %_req) #10, !dbg !3261
  %24 = load ptr, ptr %tmp, align 8, !dbg !3252, !tbaa !2816
  store ptr %24, ptr %__req, align 8, !dbg !3261, !tbaa !2816
  %25 = load ptr, ptr %__req, align 8, !dbg !3262, !tbaa !2816
  %cmp40 = icmp eq ptr %25, null, !dbg !3262
  %conv41 = zext i1 %cmp40 to i32, !dbg !3262
  %conv42 = sext i32 %conv41 to i64, !dbg !3262
  %expval43 = call i64 @llvm.expect.i64(i64 %conv42, i64 0), !dbg !3262
  %tobool44 = icmp ne i64 %expval43, 0, !dbg !3262
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !3261

if.then45:                                        ; preds = %if.end39
  store ptr inttoptr (i64 -4 to ptr), ptr %ret, align 8, !dbg !3264, !tbaa !2816
  store i32 14, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3264

if.end46:                                         ; preds = %if.end39
  br label %if.end47, !dbg !3261

if.else:                                          ; preds = %if.end24
  %26 = load ptr, ptr %param.addr, align 8, !dbg !3267, !tbaa !2816
  %request = getelementptr inbounds %struct.ucp_request_param_t, ptr %26, i32 0, i32 2, !dbg !3267
  %27 = load ptr, ptr %request, align 8, !dbg !3267, !tbaa !3269
  %add.ptr = getelementptr inbounds %struct.ucp_request, ptr %27, i64 -1, !dbg !3267
  store ptr %add.ptr, ptr %__req, align 8, !dbg !3267, !tbaa !2816
  %28 = load ptr, ptr %__req, align 8, !dbg !3267, !tbaa !2816
  call void @ucp_request_id_reset(ptr noundef %28), !dbg !3267
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.end46
  %29 = load ptr, ptr %__req, align 8, !dbg !3250, !tbaa !2816
  store ptr %29, ptr %tmp48, align 8, !dbg !3251, !tbaa !2816
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3270
  br label %cleanup, !dbg !3270

cleanup:                                          ; preds = %if.then45, %if.end47
  call void @llvm.lifetime.end.p0(i64 8, ptr %__req) #10, !dbg !3270
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup148 [
    i32 0, label %cleanup.cont
    i32 14, label %out_unlock
  ]

cleanup.cont:                                     ; preds = %cleanup
  %30 = load ptr, ptr %tmp48, align 8, !dbg !3250, !tbaa !2816
  store ptr %30, ptr %req, align 8, !dbg !3271, !tbaa !2816
  %31 = load ptr, ptr %rkey.addr, align 8, !dbg !3272, !tbaa !2816
  %32 = load ptr, ptr %req, align 8, !dbg !3273, !tbaa !2816
  %33 = getelementptr inbounds %struct.ucp_request, ptr %32, i32 0, i32 4, !dbg !3274
  %34 = getelementptr inbounds %struct.anon.9, ptr %33, i32 0, i32 8, !dbg !3275
  %rkey49 = getelementptr inbounds %struct.anon.26, ptr %34, i32 0, i32 1, !dbg !3276
  store ptr %31, ptr %rkey49, align 8, !dbg !3277, !tbaa !2831
  %35 = load i64, ptr %remote_addr.addr, align 8, !dbg !3278, !tbaa !2829
  %36 = load ptr, ptr %req, align 8, !dbg !3279, !tbaa !2816
  %37 = getelementptr inbounds %struct.ucp_request, ptr %36, i32 0, i32 4, !dbg !3280
  %38 = getelementptr inbounds %struct.anon.9, ptr %37, i32 0, i32 8, !dbg !3281
  %remote_addr50 = getelementptr inbounds %struct.anon.26, ptr %38, i32 0, i32 0, !dbg !3282
  store i64 %35, ptr %remote_addr50, align 8, !dbg !3283, !tbaa !2831
  %39 = load i32, ptr %attr_mask, align 4, !dbg !3284, !tbaa !2821
  %cmp51 = icmp eq i32 %39, 0, !dbg !3284
  %conv52 = zext i1 %cmp51 to i32, !dbg !3284
  %conv53 = sext i32 %conv52 to i64, !dbg !3284
  %expval54 = call i64 @llvm.expect.i64(i64 %conv53, i64 1), !dbg !3284
  %tobool55 = icmp ne i64 %expval54, 0, !dbg !3284
  br i1 %tobool55, label %if.then56, label %if.else57, !dbg !3286

if.then56:                                        ; preds = %cleanup.cont
  %40 = load i64, ptr %count.addr, align 8, !dbg !3287, !tbaa !2829
  store i64 %40, ptr %contig_length, align 8, !dbg !3289, !tbaa !2829
  br label %if.end69, !dbg !3290

if.else57:                                        ; preds = %cleanup.cont
  %41 = load i32, ptr %attr_mask, align 4, !dbg !3291, !tbaa !2821
  %and58 = and i32 %41, 8, !dbg !3293
  %tobool59 = icmp ne i32 %and58, 0, !dbg !3293
  br i1 %tobool59, label %if.then60, label %if.end68, !dbg !3294

if.then60:                                        ; preds = %if.else57
  %42 = load ptr, ptr %param.addr, align 8, !dbg !3295, !tbaa !2816
  %datatype61 = getelementptr inbounds %struct.ucp_request_param_t, ptr %42, i32 0, i32 4, !dbg !3297
  %43 = load i64, ptr %datatype61, align 8, !dbg !3297, !tbaa !3298
  store i64 %43, ptr %datatype, align 8, !dbg !3299, !tbaa !2829
  %44 = load i64, ptr %datatype, align 8, !dbg !3300, !tbaa !2829
  %and62 = and i64 %44, 7, !dbg !3300
  %cmp63 = icmp eq i64 %and62, 0, !dbg !3300
  br i1 %cmp63, label %if.then65, label %if.end67, !dbg !3302

if.then65:                                        ; preds = %if.then60
  %45 = load i64, ptr %datatype, align 8, !dbg !3303, !tbaa !2829
  %46 = load i64, ptr %count.addr, align 8, !dbg !3305, !tbaa !2829
  %call66 = call i64 @ucp_contig_dt_length(i64 noundef %45, i64 noundef %46), !dbg !3306
  store i64 %call66, ptr %contig_length, align 8, !dbg !3307, !tbaa !2829
  br label %if.end67, !dbg !3308

if.end67:                                         ; preds = %if.then65, %if.then60
  br label %if.end68, !dbg !3309

if.end68:                                         ; preds = %if.end67, %if.else57
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then56
  %47 = load ptr, ptr %ep.addr, align 8, !dbg !3310, !tbaa !2816
  %48 = load ptr, ptr %worker, align 8, !dbg !3311, !tbaa !2816
  %49 = load ptr, ptr %rkey.addr, align 8, !dbg !3312, !tbaa !2816
  %call70 = call ptr @ucp_rkey_config(ptr noundef %48, ptr noundef %49), !dbg !3313
  %proto_select = getelementptr inbounds %struct.ucp_rkey_config_t, ptr %call70, i32 0, i32 3, !dbg !3314
  %50 = load ptr, ptr %rkey.addr, align 8, !dbg !3315, !tbaa !2816
  %51 = getelementptr inbounds %struct.ucp_rkey, ptr %50, i32 0, i32 0, !dbg !3316
  %cfg_index = getelementptr inbounds %struct.anon.74, ptr %51, i32 0, i32 2, !dbg !3316
  %52 = load i8, ptr %cfg_index, align 2, !dbg !3316, !tbaa !2831
  %53 = load ptr, ptr %req, align 8, !dbg !3317, !tbaa !2816
  %54 = load ptr, ptr %buffer.addr, align 8, !dbg !3318, !tbaa !2816
  %55 = load i64, ptr %count.addr, align 8, !dbg !3319, !tbaa !2829
  %56 = load i64, ptr %datatype, align 8, !dbg !3320, !tbaa !2829
  %57 = load i64, ptr %contig_length, align 8, !dbg !3321, !tbaa !2829
  %58 = load ptr, ptr %param.addr, align 8, !dbg !3322, !tbaa !2816
  %call71 = call ptr @ucp_proto_request_send_op(ptr noundef %47, ptr noundef %proto_select, i8 noundef zeroext %52, ptr noundef %53, i32 noundef 4, ptr noundef %54, i64 noundef %55, i64 noundef %56, i64 noundef %57, ptr noundef %58, i64 noundef 0, i16 noundef zeroext 0), !dbg !3323
  store ptr %call71, ptr %ret, align 8, !dbg !3324, !tbaa !2816
  br label %if.end147, !dbg !3325

if.else72:                                        ; preds = %do.end16
  call void @llvm.lifetime.start.p0(i64 1, ptr %_status_nc) #10, !dbg !3326
  tail call void @llvm.dbg.declare(metadata ptr %_status_nc, metadata !3139, metadata !DIExpression()), !dbg !3326
  store i8 0, ptr %_status_nc, align 1, !dbg !3326, !tbaa !2831
  %59 = load ptr, ptr %ep.addr, align 8, !dbg !3327, !tbaa !2816
  %cfg_index73 = getelementptr inbounds %struct.ucp_ep, ptr %59, i32 0, i32 2, !dbg !3327
  %60 = load i8, ptr %cfg_index73, align 1, !dbg !3327, !tbaa !3329
  %conv74 = zext i8 %60 to i32, !dbg !3327
  %61 = load ptr, ptr %rkey.addr, align 8, !dbg !3327, !tbaa !2816
  %62 = getelementptr inbounds %struct.ucp_rkey, ptr %61, i32 0, i32 0, !dbg !3327
  %ep_cfg_index = getelementptr inbounds %struct.anon.73, ptr %62, i32 0, i32 3, !dbg !3327
  %63 = load i8, ptr %ep_cfg_index, align 1, !dbg !3327, !tbaa !2831
  %conv75 = zext i8 %63 to i32, !dbg !3327
  %cmp76 = icmp ne i32 %conv74, %conv75, !dbg !3327
  %conv77 = zext i1 %cmp76 to i32, !dbg !3327
  %conv78 = sext i32 %conv77 to i64, !dbg !3327
  %expval79 = call i64 @llvm.expect.i64(i64 %conv78, i64 0), !dbg !3327
  %tobool80 = icmp ne i64 %expval79, 0, !dbg !3327
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !3326

if.then81:                                        ; preds = %if.else72
  %64 = load ptr, ptr %rkey.addr, align 8, !dbg !3330, !tbaa !2816
  %65 = load ptr, ptr %ep.addr, align 8, !dbg !3330, !tbaa !2816
  call void @ucp_rkey_resolve_inner(ptr noundef %64, ptr noundef %65), !dbg !3330
  br label %if.end82, !dbg !3330

if.end82:                                         ; preds = %if.then81, %if.else72
  %66 = load ptr, ptr %rkey.addr, align 8, !dbg !3332, !tbaa !2816
  %67 = getelementptr inbounds %struct.ucp_rkey, ptr %66, i32 0, i32 0, !dbg !3332
  %rma_lane = getelementptr inbounds %struct.anon.73, ptr %67, i32 0, i32 4, !dbg !3332
  %68 = load i8, ptr %rma_lane, align 4, !dbg !3332, !tbaa !2831
  %conv83 = zext i8 %68 to i32, !dbg !3332
  %cmp84 = icmp eq i32 %conv83, 255, !dbg !3332
  %conv85 = zext i1 %cmp84 to i32, !dbg !3332
  %conv86 = sext i32 %conv85 to i64, !dbg !3332
  %expval87 = call i64 @llvm.expect.i64(i64 %conv86, i64 0), !dbg !3332
  %tobool88 = icmp ne i64 %expval87, 0, !dbg !3332
  br i1 %tobool88, label %if.then89, label %if.end103, !dbg !3326

if.then89:                                        ; preds = %if.end82
  br label %do.body90, !dbg !3334

do.body90:                                        ; preds = %if.then89
  br label %do.body91, !dbg !3336

do.body91:                                        ; preds = %do.body90
  %69 = load i32, ptr @ucs_global_opts, align 8, !dbg !3338, !tbaa !3341
  %cmp92 = icmp ule i32 1, %69, !dbg !3338
  %land.ext = zext i1 %cmp92 to i32, !dbg !3338
  %conv94 = sext i32 %land.ext to i64, !dbg !3338
  %expval95 = call i64 @llvm.expect.i64(i64 %conv94, i64 0), !dbg !3338
  %tobool96 = icmp ne i64 %expval95, 0, !dbg !3338
  br i1 %tobool96, label %if.then97, label %if.end98, !dbg !3343

if.then97:                                        ; preds = %do.body91
  %70 = load ptr, ptr %rkey.addr, align 8, !dbg !3344, !tbaa !2816
  %md_map = getelementptr inbounds %struct.ucp_rkey, ptr %70, i32 0, i32 1, !dbg !3344
  %71 = load i64, ptr %md_map, align 8, !dbg !3344, !tbaa !3346
  call void (ptr, i32, ptr, i32, ptr, ptr, ...) @ucs_log_dispatch(ptr noundef @.str.2, i32 noundef 292, ptr noundef @__func__.ucp_put_nbx, i32 noundef 1, ptr noundef @ucs_global_opts, ptr noundef @.str.3, i64 noundef %71), !dbg !3344
  br label %if.end98, !dbg !3344

if.end98:                                         ; preds = %if.then97, %do.body91
  br label %do.cond99, !dbg !3343

do.cond99:                                        ; preds = %if.end98
  br label %do.end100, !dbg !3343

do.end100:                                        ; preds = %do.cond99
  br label %do.cond101, !dbg !3336

do.cond101:                                       ; preds = %do.end100
  br label %do.end102, !dbg !3336

do.end102:                                        ; preds = %do.cond101
  store i8 -6, ptr %_status_nc, align 1, !dbg !3334, !tbaa !2831
  br label %if.end103, !dbg !3334

if.end103:                                        ; preds = %do.end102, %if.end82
  %72 = load i8, ptr %_status_nc, align 1, !dbg !3326, !tbaa !2831
  store i8 %72, ptr %tmp104, align 1, !dbg !3332, !tbaa !2831
  call void @llvm.lifetime.end.p0(i64 1, ptr %_status_nc) #10, !dbg !3348
  %73 = load i8, ptr %tmp104, align 1, !dbg !3326, !tbaa !2831
  store i8 %73, ptr %status, align 1, !dbg !3349, !tbaa !2831
  %74 = load i8, ptr %status, align 1, !dbg !3350, !tbaa !2831
  %conv105 = sext i8 %74 to i32, !dbg !3350
  %cmp106 = icmp ne i32 %conv105, 0, !dbg !3352
  br i1 %cmp106, label %if.then108, label %if.end110, !dbg !3353

if.then108:                                       ; preds = %if.end103
  %75 = load i8, ptr %status, align 1, !dbg !3354, !tbaa !2831
  %conv109 = sext i8 %75 to i64, !dbg !3354
  %76 = inttoptr i64 %conv109 to ptr, !dbg !3354
  store ptr %76, ptr %ret, align 8, !dbg !3356, !tbaa !2816
  br label %out_unlock, !dbg !3357

if.end110:                                        ; preds = %if.end103
  %77 = load i32, ptr %attr_mask, align 4, !dbg !3358, !tbaa !2821
  %and111 = and i32 %77, 65536, !dbg !3358
  %tobool112 = icmp ne i32 %and111, 0, !dbg !3358
  br i1 %tobool112, label %land.end, label %land.rhs, !dbg !3358

land.rhs:                                         ; preds = %if.end110
  %78 = load i64, ptr %count.addr, align 8, !dbg !3358, !tbaa !2829
  %79 = load ptr, ptr %rkey.addr, align 8, !dbg !3358, !tbaa !2816
  %80 = getelementptr inbounds %struct.ucp_rkey, ptr %79, i32 0, i32 0, !dbg !3358
  %max_put_short = getelementptr inbounds %struct.anon.73, ptr %80, i32 0, i32 2, !dbg !3358
  %81 = load i8, ptr %max_put_short, align 2, !dbg !3358, !tbaa !2831
  %conv113 = sext i8 %81 to i64, !dbg !3358
  %cmp114 = icmp sle i64 %78, %conv113, !dbg !3358
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end110
  %82 = phi i1 [ false, %if.end110 ], [ %cmp114, %land.rhs ], !dbg !3360
  %land.ext116 = zext i1 %82 to i32, !dbg !3358
  %conv117 = sext i32 %land.ext116 to i64, !dbg !3358
  %expval118 = call i64 @llvm.expect.i64(i64 %conv117, i64 1), !dbg !3358
  %tobool119 = icmp ne i64 %expval118, 0, !dbg !3358
  br i1 %tobool119, label %if.then120, label %if.end134, !dbg !3361

if.then120:                                       ; preds = %land.end
  %83 = load ptr, ptr %ep.addr, align 8, !dbg !3362, !tbaa !2816
  %84 = load ptr, ptr %rkey.addr, align 8, !dbg !3362, !tbaa !2816
  %85 = getelementptr inbounds %struct.ucp_rkey, ptr %84, i32 0, i32 0, !dbg !3362
  %rma_lane121 = getelementptr inbounds %struct.anon.73, ptr %85, i32 0, i32 4, !dbg !3362
  %86 = load i8, ptr %rma_lane121, align 4, !dbg !3362, !tbaa !2831
  %call122 = call ptr @ucp_ep_get_fast_lane(ptr noundef %83, i8 noundef zeroext %86), !dbg !3362
  %87 = load ptr, ptr %buffer.addr, align 8, !dbg !3362, !tbaa !2816
  %88 = load i64, ptr %count.addr, align 8, !dbg !3362, !tbaa !2829
  %conv123 = trunc i64 %88 to i32, !dbg !3362
  %89 = load i64, ptr %remote_addr.addr, align 8, !dbg !3362, !tbaa !2829
  %90 = load ptr, ptr %rkey.addr, align 8, !dbg !3362, !tbaa !2816
  %91 = getelementptr inbounds %struct.ucp_rkey, ptr %90, i32 0, i32 0, !dbg !3362
  %rma_rkey = getelementptr inbounds %struct.anon.73, ptr %91, i32 0, i32 8, !dbg !3362
  %92 = load i64, ptr %rma_rkey, align 8, !dbg !3362, !tbaa !2831
  %call124 = call signext i8 @uct_ep_put_short(ptr noundef %call122, ptr noundef %87, i32 noundef %conv123, i64 noundef %89, i64 noundef %92), !dbg !3362
  store i8 %call124, ptr %status, align 1, !dbg !3364, !tbaa !2831
  %93 = load i8, ptr %status, align 1, !dbg !3365, !tbaa !2831
  %conv125 = sext i8 %93 to i32, !dbg !3365
  %cmp126 = icmp ne i32 %conv125, -2, !dbg !3365
  %conv127 = zext i1 %cmp126 to i32, !dbg !3365
  %conv128 = sext i32 %conv127 to i64, !dbg !3365
  %expval129 = call i64 @llvm.expect.i64(i64 %conv128, i64 1), !dbg !3365
  %tobool130 = icmp ne i64 %expval129, 0, !dbg !3365
  br i1 %tobool130, label %if.then131, label %if.end133, !dbg !3367

if.then131:                                       ; preds = %if.then120
  %94 = load i8, ptr %status, align 1, !dbg !3368, !tbaa !2831
  %conv132 = sext i8 %94 to i64, !dbg !3368
  %95 = inttoptr i64 %conv132 to ptr, !dbg !3368
  store ptr %95, ptr %ret, align 8, !dbg !3370, !tbaa !2816
  br label %out_unlock, !dbg !3371

if.end133:                                        ; preds = %if.then120
  br label %if.end134, !dbg !3372

if.end134:                                        ; preds = %if.end133, %land.end
  %96 = load ptr, ptr %param.addr, align 8, !dbg !3373, !tbaa !2816
  %op_attr_mask135 = getelementptr inbounds %struct.ucp_request_param_t, ptr %96, i32 0, i32 0, !dbg !3373
  %97 = load i32, ptr %op_attr_mask135, align 8, !dbg !3373, !tbaa !3189
  %and136 = and i32 %97, 262144, !dbg !3373
  %conv137 = zext i32 %and136 to i64, !dbg !3373
  %expval138 = call i64 @llvm.expect.i64(i64 %conv137, i64 0), !dbg !3373
  %tobool139 = icmp ne i64 %expval138, 0, !dbg !3373
  br i1 %tobool139, label %if.then140, label %if.end141, !dbg !3375

if.then140:                                       ; preds = %if.end134
  store ptr inttoptr (i64 -2 to ptr), ptr %ret, align 8, !dbg !3376, !tbaa !2816
  br label %out_unlock, !dbg !3378

if.end141:                                        ; preds = %if.end134
  %98 = load ptr, ptr %ep.addr, align 8, !dbg !3379, !tbaa !2816
  %call142 = call ptr @ucp_ep_config(ptr noundef %98), !dbg !3380
  %rma = getelementptr inbounds %struct.ucp_ep_config, ptr %call142, i32 0, i32 3, !dbg !3381
  %99 = load ptr, ptr %rkey.addr, align 8, !dbg !3382, !tbaa !2816
  %100 = getelementptr inbounds %struct.ucp_rkey, ptr %99, i32 0, i32 0, !dbg !3383
  %rma_lane143 = getelementptr inbounds %struct.anon.73, ptr %100, i32 0, i32 4, !dbg !3384
  %101 = load i8, ptr %rma_lane143, align 4, !dbg !3384, !tbaa !2831
  %idxprom = zext i8 %101 to i64, !dbg !3380
  %arrayidx = getelementptr inbounds [16 x %struct.ucp_ep_rma_config], ptr %rma, i64 0, i64 %idxprom, !dbg !3380
  store ptr %arrayidx, ptr %rma_config, align 8, !dbg !3385, !tbaa !2816
  %102 = load ptr, ptr %ep.addr, align 8, !dbg !3386, !tbaa !2816
  %103 = load ptr, ptr %buffer.addr, align 8, !dbg !3387, !tbaa !2816
  %104 = load i64, ptr %count.addr, align 8, !dbg !3388, !tbaa !2829
  %105 = load i64, ptr %remote_addr.addr, align 8, !dbg !3389, !tbaa !2829
  %106 = load ptr, ptr %rkey.addr, align 8, !dbg !3390, !tbaa !2816
  %107 = load ptr, ptr %rkey.addr, align 8, !dbg !3391, !tbaa !2816
  %108 = getelementptr inbounds %struct.ucp_rkey, ptr %107, i32 0, i32 0, !dbg !3391
  %rma_proto_index = getelementptr inbounds %struct.anon.73, ptr %108, i32 0, i32 7, !dbg !3391
  %109 = load i8, ptr %rma_proto_index, align 1, !dbg !3391, !tbaa !2831
  %idxprom144 = zext i8 %109 to i64, !dbg !3391
  %arrayidx145 = getelementptr inbounds [0 x ptr], ptr @ucp_rma_proto_list, i64 0, i64 %idxprom144, !dbg !3391
  %110 = load ptr, ptr %arrayidx145, align 8, !dbg !3391, !tbaa !2816
  %progress_put = getelementptr inbounds %struct.ucp_rma_proto, ptr %110, i32 0, i32 1, !dbg !3392
  %111 = load ptr, ptr %progress_put, align 8, !dbg !3392, !tbaa !3393
  %112 = load ptr, ptr %rma_config, align 8, !dbg !3395, !tbaa !2816
  %put_zcopy_thresh = getelementptr inbounds %struct.ucp_ep_rma_config, ptr %112, i32 0, i32 6, !dbg !3396
  %113 = load i64, ptr %put_zcopy_thresh, align 8, !dbg !3396, !tbaa !3397
  %114 = load ptr, ptr %param.addr, align 8, !dbg !3399, !tbaa !2816
  %call146 = call ptr @ucp_rma_nonblocking(ptr noundef %102, ptr noundef %103, i64 noundef %104, i64 noundef %105, ptr noundef %106, ptr noundef %111, i64 noundef %113, ptr noundef %114), !dbg !3400
  store ptr %call146, ptr %ret, align 8, !dbg !3401, !tbaa !2816
  br label %if.end147

if.end147:                                        ; preds = %if.end141, %if.end69
  br label %out_unlock, !dbg !3226

out_unlock:                                       ; preds = %if.end147, %cleanup, %if.then140, %if.then131, %if.then108, %if.then22
  tail call void @llvm.dbg.label(metadata !3142), !dbg !3402
  %115 = load ptr, ptr %ret, align 8, !dbg !3403, !tbaa !2816
  store ptr %115, ptr %retval, align 8, !dbg !3404
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup148, !dbg !3404

cleanup148:                                       ; preds = %out_unlock, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %attr_mask) #10, !dbg !3405
  call void @llvm.lifetime.end.p0(i64 8, ptr %req) #10, !dbg !3405
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #10, !dbg !3405
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !3405
  call void @llvm.lifetime.end.p0(i64 8, ptr %rma_config) #10, !dbg !3405
  call void @llvm.lifetime.end.p0(i64 8, ptr %datatype) #10, !dbg !3405
  call void @llvm.lifetime.end.p0(i64 8, ptr %contig_length) #10, !dbg !3405
  call void @llvm.lifetime.end.p0(i64 8, ptr %worker) #10, !dbg !3405
  %116 = load ptr, ptr %retval, align 8, !dbg !3405
  ret ptr %116, !dbg !3405
}

declare !dbg !3406 void @ucp_request_free(ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @ucp_put_nb(ptr noundef %ep, ptr noundef %buffer, i64 noundef %length, i64 noundef %remote_addr, ptr noundef %rkey, ptr noundef %cb) #4 !dbg !3407 {
entry:
  %ep.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %remote_addr.addr = alloca i64, align 8
  %rkey.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %param = alloca %struct.ucp_request_param_t, align 8
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ep.addr, metadata !3411, metadata !DIExpression()), !dbg !3418
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !3412, metadata !DIExpression()), !dbg !3419
  store i64 %length, ptr %length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !3413, metadata !DIExpression()), !dbg !3420
  store i64 %remote_addr, ptr %remote_addr.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %remote_addr.addr, metadata !3414, metadata !DIExpression()), !dbg !3421
  store ptr %rkey, ptr %rkey.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %rkey.addr, metadata !3415, metadata !DIExpression()), !dbg !3422
  store ptr %cb, ptr %cb.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !3416, metadata !DIExpression()), !dbg !3423
  call void @llvm.lifetime.start.p0(i64 72, ptr %param) #10, !dbg !3424
  tail call void @llvm.dbg.declare(metadata ptr %param, metadata !3417, metadata !DIExpression()), !dbg !3425
  call void @llvm.memset.p0.i64(ptr align 8 %param, i8 0, i64 72, i1 false), !dbg !3425
  %op_attr_mask = getelementptr inbounds %struct.ucp_request_param_t, ptr %param, i32 0, i32 0, !dbg !3426
  store i32 2, ptr %op_attr_mask, align 8, !dbg !3426, !tbaa !3189
  %cb1 = getelementptr inbounds %struct.ucp_request_param_t, ptr %param, i32 0, i32 3, !dbg !3426
  %0 = load ptr, ptr %cb.addr, align 8, !dbg !3427, !tbaa !2816
  store ptr %0, ptr %cb1, align 8, !dbg !3428, !tbaa !2831
  %1 = load ptr, ptr %ep.addr, align 8, !dbg !3429, !tbaa !2816
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !3430, !tbaa !2816
  %3 = load i64, ptr %length.addr, align 8, !dbg !3431, !tbaa !2829
  %4 = load i64, ptr %remote_addr.addr, align 8, !dbg !3432, !tbaa !2829
  %5 = load ptr, ptr %rkey.addr, align 8, !dbg !3433, !tbaa !2816
  %call = call ptr @ucp_put_nbx(ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %param), !dbg !3434
  call void @llvm.lifetime.end.p0(i64 72, ptr %param) #10, !dbg !3435
  ret ptr %call, !dbg !3436
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: alwaysinline nounwind uwtable
define internal signext i8 @ucp_put_send_short(ptr noundef %ep, ptr noundef %buffer, i64 noundef %length, i64 noundef %remote_addr, ptr noundef %rkey, ptr noundef %param) #0 !dbg !3437 {
entry:
  %retval = alloca i8, align 1
  %ep.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %remote_addr.addr = alloca i64, align 8
  %rkey.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %rkey_config = alloca ptr, align 8
  %tl_rkey = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ep.addr, metadata !3441, metadata !DIExpression()), !dbg !3451
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !3442, metadata !DIExpression()), !dbg !3452
  store i64 %length, ptr %length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !3443, metadata !DIExpression()), !dbg !3453
  store i64 %remote_addr, ptr %remote_addr.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %remote_addr.addr, metadata !3444, metadata !DIExpression()), !dbg !3454
  store ptr %rkey, ptr %rkey.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %rkey.addr, metadata !3445, metadata !DIExpression()), !dbg !3455
  store ptr %param, ptr %param.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !3446, metadata !DIExpression()), !dbg !3456
  call void @llvm.lifetime.start.p0(i64 8, ptr %rkey_config) #10, !dbg !3457
  tail call void @llvm.dbg.declare(metadata ptr %rkey_config, metadata !3447, metadata !DIExpression()), !dbg !3458
  call void @llvm.lifetime.start.p0(i64 8, ptr %tl_rkey) #10, !dbg !3459
  tail call void @llvm.dbg.declare(metadata ptr %tl_rkey, metadata !3450, metadata !DIExpression()), !dbg !3460
  %0 = load ptr, ptr %param.addr, align 8, !dbg !3461, !tbaa !2816
  %op_attr_mask = getelementptr inbounds %struct.ucp_request_param_t, ptr %0, i32 0, i32 0, !dbg !3461
  %1 = load i32, ptr %op_attr_mask, align 8, !dbg !3461, !tbaa !3189
  %and = and i32 %1, 65544, !dbg !3461
  %conv = zext i32 %and to i64, !dbg !3461
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3461
  %tobool = icmp ne i64 %expval, 0, !dbg !3461
  br i1 %tobool, label %if.then, label %if.end, !dbg !3463

if.then:                                          ; preds = %entry
  store i8 -2, ptr %retval, align 1, !dbg !3464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3464

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ep.addr, align 8, !dbg !3466, !tbaa !2816
  %worker = getelementptr inbounds %struct.ucp_ep, ptr %2, i32 0, i32 0, !dbg !3467
  %3 = load ptr, ptr %worker, align 8, !dbg !3467, !tbaa !3153
  %4 = load ptr, ptr %rkey.addr, align 8, !dbg !3468, !tbaa !2816
  %call = call ptr @ucp_rkey_config(ptr noundef %3, ptr noundef %4), !dbg !3469
  store ptr %call, ptr %rkey_config, align 8, !dbg !3470, !tbaa !2816
  %5 = load ptr, ptr %ep.addr, align 8, !dbg !3471, !tbaa !2816
  %6 = load ptr, ptr %rkey_config, align 8, !dbg !3471, !tbaa !2816
  %put_short = getelementptr inbounds %struct.ucp_rkey_config_t, ptr %6, i32 0, i32 1, !dbg !3471
  %7 = load i64, ptr %length.addr, align 8, !dbg !3471, !tbaa !2829
  %call1 = call i32 @ucp_proto_select_is_short(ptr noundef %5, ptr noundef %put_short, i64 noundef %7), !dbg !3471
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3471
  %lnot = xor i1 %tobool2, true, !dbg !3471
  %lnot.ext = zext i1 %lnot to i32, !dbg !3471
  %conv3 = sext i32 %lnot.ext to i64, !dbg !3471
  %expval4 = call i64 @llvm.expect.i64(i64 %conv3, i64 0), !dbg !3471
  %tobool5 = icmp ne i64 %expval4, 0, !dbg !3471
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !3473

if.then6:                                         ; preds = %if.end
  store i8 -2, ptr %retval, align 1, !dbg !3474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3474

if.end7:                                          ; preds = %if.end
  %8 = load ptr, ptr %rkey.addr, align 8, !dbg !3476, !tbaa !2816
  %9 = load ptr, ptr %rkey_config, align 8, !dbg !3477, !tbaa !2816
  %put_short8 = getelementptr inbounds %struct.ucp_rkey_config_t, ptr %9, i32 0, i32 1, !dbg !3478
  %rkey_index = getelementptr inbounds %struct.ucp_proto_select_short_t, ptr %put_short8, i32 0, i32 3, !dbg !3479
  %10 = load i8, ptr %rkey_index, align 1, !dbg !3479, !tbaa !3480
  %call9 = call i64 @ucp_rkey_get_tl_rkey(ptr noundef %8, i8 noundef zeroext %10), !dbg !3487
  store i64 %call9, ptr %tl_rkey, align 8, !dbg !3488, !tbaa !2829
  %11 = load ptr, ptr %ep.addr, align 8, !dbg !3489, !tbaa !2816
  %12 = load ptr, ptr %rkey_config, align 8, !dbg !3489, !tbaa !2816
  %put_short10 = getelementptr inbounds %struct.ucp_rkey_config_t, ptr %12, i32 0, i32 1, !dbg !3489
  %lane = getelementptr inbounds %struct.ucp_proto_select_short_t, ptr %put_short10, i32 0, i32 2, !dbg !3489
  %13 = load i8, ptr %lane, align 8, !dbg !3489, !tbaa !3490
  %call11 = call ptr @ucp_ep_get_fast_lane(ptr noundef %11, i8 noundef zeroext %13), !dbg !3489
  %14 = load ptr, ptr %buffer.addr, align 8, !dbg !3489, !tbaa !2816
  %15 = load i64, ptr %length.addr, align 8, !dbg !3489, !tbaa !2829
  %conv12 = trunc i64 %15 to i32, !dbg !3489
  %16 = load i64, ptr %remote_addr.addr, align 8, !dbg !3489, !tbaa !2829
  %17 = load i64, ptr %tl_rkey, align 8, !dbg !3489, !tbaa !2829
  %call13 = call signext i8 @uct_ep_put_short(ptr noundef %call11, ptr noundef %14, i32 noundef %conv12, i64 noundef %16, i64 noundef %17), !dbg !3489
  store i8 %call13, ptr %retval, align 1, !dbg !3491
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3491

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tl_rkey) #10, !dbg !3492
  call void @llvm.lifetime.end.p0(i64 8, ptr %rkey_config) #10, !dbg !3492
  %18 = load i8, ptr %retval, align 1, !dbg !3492
  ret i8 %18, !dbg !3492
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ucs_mpool_get_inline(ptr noundef %mp) #6 !dbg !3493 {
entry:
  %retval = alloca ptr, align 8
  %mp.addr = alloca ptr, align 8
  %elem = alloca ptr, align 8
  %obj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mp, ptr %mp.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %mp.addr, metadata !3498, metadata !DIExpression()), !dbg !3501
  call void @llvm.lifetime.start.p0(i64 8, ptr %elem) #10, !dbg !3502
  tail call void @llvm.dbg.declare(metadata ptr %elem, metadata !3499, metadata !DIExpression()), !dbg !3503
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #10, !dbg !3504
  tail call void @llvm.dbg.declare(metadata ptr %obj, metadata !3500, metadata !DIExpression()), !dbg !3505
  %0 = load ptr, ptr %mp.addr, align 8, !dbg !3506, !tbaa !2816
  %freelist = getelementptr inbounds %struct.ucs_mpool, ptr %0, i32 0, i32 0, !dbg !3506
  %1 = load ptr, ptr %freelist, align 8, !dbg !3506, !tbaa !3508
  %cmp = icmp eq ptr %1, null, !dbg !3506
  %conv = zext i1 %cmp to i32, !dbg !3506
  %conv1 = sext i32 %conv to i64, !dbg !3506
  %expval = call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !3506
  %tobool = icmp ne i64 %expval, 0, !dbg !3506
  br i1 %tobool, label %if.then, label %if.end, !dbg !3509

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %mp.addr, align 8, !dbg !3510, !tbaa !2816
  %call = call ptr @ucs_mpool_get_grow(ptr noundef %2), !dbg !3512
  store ptr %call, ptr %retval, align 8, !dbg !3513
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3513

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %mp.addr, align 8, !dbg !3514, !tbaa !2816
  %freelist2 = getelementptr inbounds %struct.ucs_mpool, ptr %3, i32 0, i32 0, !dbg !3515
  %4 = load ptr, ptr %freelist2, align 8, !dbg !3515, !tbaa !3508
  store ptr %4, ptr %elem, align 8, !dbg !3516, !tbaa !2816
  %5 = load ptr, ptr %elem, align 8, !dbg !3517, !tbaa !2816
  %6 = load ptr, ptr %5, align 8, !dbg !3518, !tbaa !2831
  %7 = load ptr, ptr %mp.addr, align 8, !dbg !3519, !tbaa !2816
  %freelist3 = getelementptr inbounds %struct.ucs_mpool, ptr %7, i32 0, i32 0, !dbg !3520
  store ptr %6, ptr %freelist3, align 8, !dbg !3521, !tbaa !3508
  %8 = load ptr, ptr %mp.addr, align 8, !dbg !3522, !tbaa !2816
  %9 = load ptr, ptr %elem, align 8, !dbg !3523, !tbaa !2816
  store ptr %8, ptr %9, align 8, !dbg !3524, !tbaa !2831
  %10 = load ptr, ptr %elem, align 8, !dbg !3525, !tbaa !2816
  %add.ptr = getelementptr inbounds %union.ucs_mpool_elem, ptr %10, i64 1, !dbg !3526
  store ptr %add.ptr, ptr %obj, align 8, !dbg !3527, !tbaa !2816
  %11 = load ptr, ptr %obj, align 8, !dbg !3528, !tbaa !2816
  store ptr %11, ptr %retval, align 8, !dbg !3529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3529

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #10, !dbg !3530
  call void @llvm.lifetime.end.p0(i64 8, ptr %elem) #10, !dbg !3530
  %12 = load ptr, ptr %retval, align 8, !dbg !3530
  ret ptr %12, !dbg !3530
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_request_reset_internal(ptr noundef %req, ptr noundef %worker) #0 !dbg !3531 {
entry:
  %req.addr = alloca ptr, align 8
  %worker.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !3535, metadata !DIExpression()), !dbg !3537
  store ptr %worker, ptr %worker.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %worker.addr, metadata !3536, metadata !DIExpression()), !dbg !3538
  ret void, !dbg !3539
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_request_id_reset(ptr noundef %req) #0 !dbg !3540 {
entry:
  %req.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !3542, metadata !DIExpression()), !dbg !3543
  %0 = load ptr, ptr %req.addr, align 8, !dbg !3544, !tbaa !2816
  %id = getelementptr inbounds %struct.ucp_request, ptr %0, i32 0, i32 2, !dbg !3545
  store i64 0, ptr %id, align 8, !dbg !3546, !tbaa !3547
  ret void, !dbg !3549
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ucp_contig_dt_length(i64 noundef %datatype, i64 noundef %count) #6 !dbg !3550 {
entry:
  %datatype.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  store i64 %datatype, ptr %datatype.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %datatype.addr, metadata !3555, metadata !DIExpression()), !dbg !3557
  store i64 %count, ptr %count.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3556, metadata !DIExpression()), !dbg !3558
  %0 = load i64, ptr %count.addr, align 8, !dbg !3559, !tbaa !2829
  %1 = load i64, ptr %datatype.addr, align 8, !dbg !3560, !tbaa !2829
  %call = call i64 @ucp_contig_dt_elem_size(i64 noundef %1), !dbg !3561
  %mul = mul i64 %0, %call, !dbg !3562
  ret i64 %mul, !dbg !3563
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @ucp_proto_request_send_op(ptr noundef %ep, ptr noundef %proto_select, i8 noundef zeroext %rkey_cfg_index, ptr noundef %req, i32 noundef %op_id, ptr noundef %buffer, i64 noundef %count, i64 noundef %datatype, i64 noundef %contig_length, ptr noundef %param, i64 noundef %header_length, i16 noundef zeroext %op_flags) #0 !dbg !3564 {
entry:
  %retval = alloca ptr, align 8
  %ep.addr = alloca ptr, align 8
  %proto_select.addr = alloca ptr, align 8
  %rkey_cfg_index.addr = alloca i8, align 1
  %req.addr = alloca ptr, align 8
  %op_id.addr = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %datatype.addr = alloca i64, align 8
  %contig_length.addr = alloca i64, align 8
  %param.addr = alloca ptr, align 8
  %header_length.addr = alloca i64, align 8
  %op_flags.addr = alloca i16, align 2
  %worker = alloca ptr, align 8
  %sel_param = alloca %struct.ucp_proto_select_param_t, align 1
  %status = alloca i8, align 1
  %sg_count = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %_status = alloca i8, align 1
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ep.addr, metadata !3571, metadata !DIExpression()), !dbg !3591
  store ptr %proto_select, ptr %proto_select.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %proto_select.addr, metadata !3572, metadata !DIExpression()), !dbg !3592
  store i8 %rkey_cfg_index, ptr %rkey_cfg_index.addr, align 1, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %rkey_cfg_index.addr, metadata !3573, metadata !DIExpression()), !dbg !3593
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !3574, metadata !DIExpression()), !dbg !3594
  store i32 %op_id, ptr %op_id.addr, align 4, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %op_id.addr, metadata !3575, metadata !DIExpression()), !dbg !3595
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !3576, metadata !DIExpression()), !dbg !3596
  store i64 %count, ptr %count.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3577, metadata !DIExpression()), !dbg !3597
  store i64 %datatype, ptr %datatype.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %datatype.addr, metadata !3578, metadata !DIExpression()), !dbg !3598
  store i64 %contig_length, ptr %contig_length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %contig_length.addr, metadata !3579, metadata !DIExpression()), !dbg !3599
  store ptr %param, ptr %param.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !3580, metadata !DIExpression()), !dbg !3600
  store i64 %header_length, ptr %header_length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %header_length.addr, metadata !3581, metadata !DIExpression()), !dbg !3601
  store i16 %op_flags, ptr %op_flags.addr, align 2, !tbaa !3602
  tail call void @llvm.dbg.declare(metadata ptr %op_flags.addr, metadata !3582, metadata !DIExpression()), !dbg !3603
  call void @llvm.lifetime.start.p0(i64 8, ptr %worker) #10, !dbg !3604
  tail call void @llvm.dbg.declare(metadata ptr %worker, metadata !3583, metadata !DIExpression()), !dbg !3605
  %0 = load ptr, ptr %ep.addr, align 8, !dbg !3606, !tbaa !2816
  %worker1 = getelementptr inbounds %struct.ucp_ep, ptr %0, i32 0, i32 0, !dbg !3607
  %1 = load ptr, ptr %worker1, align 8, !dbg !3607, !tbaa !3153
  store ptr %1, ptr %worker, align 8, !dbg !3605, !tbaa !2816
  call void @llvm.lifetime.start.p0(i64 8, ptr %sel_param) #10, !dbg !3608
  tail call void @llvm.dbg.declare(metadata ptr %sel_param, metadata !3584, metadata !DIExpression()), !dbg !3609
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #10, !dbg !3610
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !3585, metadata !DIExpression()), !dbg !3611
  call void @llvm.lifetime.start.p0(i64 1, ptr %sg_count) #10, !dbg !3612
  tail call void @llvm.dbg.declare(metadata ptr %sg_count, metadata !3586, metadata !DIExpression()), !dbg !3613
  %2 = load ptr, ptr %req.addr, align 8, !dbg !3614, !tbaa !2816
  %3 = load ptr, ptr %ep.addr, align 8, !dbg !3615, !tbaa !2816
  call void @ucp_proto_request_send_init(ptr noundef %2, ptr noundef %3, i32 noundef 0), !dbg !3616
  %4 = load ptr, ptr %worker, align 8, !dbg !3617, !tbaa !2816
  %context = getelementptr inbounds %struct.ucp_worker, ptr %4, i32 0, i32 2, !dbg !3617
  %5 = load ptr, ptr %context, align 8, !dbg !3617, !tbaa !3195
  %6 = load ptr, ptr %buffer.addr, align 8, !dbg !3617, !tbaa !2816
  %7 = load i64, ptr %count.addr, align 8, !dbg !3617, !tbaa !2829
  %8 = load i64, ptr %datatype.addr, align 8, !dbg !3617, !tbaa !2829
  %9 = load i64, ptr %contig_length.addr, align 8, !dbg !3617, !tbaa !2829
  %10 = load ptr, ptr %req.addr, align 8, !dbg !3617, !tbaa !2816
  %11 = getelementptr inbounds %struct.ucp_request, ptr %10, i32 0, i32 4, !dbg !3617
  %state = getelementptr inbounds %struct.anon.9, ptr %11, i32 0, i32 7, !dbg !3617
  %12 = getelementptr inbounds %struct.anon.11, ptr %state, i32 0, i32 0, !dbg !3617
  call void @ucp_datatype_iter_init(ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i32 noundef 1, ptr noundef %12, ptr noundef %sg_count), !dbg !3617
  %13 = load i32, ptr %op_id.addr, align 4, !dbg !3618, !tbaa !2831
  %14 = load ptr, ptr %param.addr, align 8, !dbg !3619, !tbaa !2816
  %op_attr_mask = getelementptr inbounds %struct.ucp_request_param_t, ptr %14, i32 0, i32 0, !dbg !3620
  %15 = load i32, ptr %op_attr_mask, align 8, !dbg !3620, !tbaa !3189
  %16 = load i16, ptr %op_flags.addr, align 2, !dbg !3621, !tbaa !3602
  %17 = load ptr, ptr %req.addr, align 8, !dbg !3622, !tbaa !2816
  %18 = getelementptr inbounds %struct.ucp_request, ptr %17, i32 0, i32 4, !dbg !3623
  %state2 = getelementptr inbounds %struct.anon.9, ptr %18, i32 0, i32 7, !dbg !3624
  %19 = getelementptr inbounds %struct.anon.11, ptr %state2, i32 0, i32 0, !dbg !3625
  %dt_class = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %19, i32 0, i32 0, !dbg !3626
  %20 = load i32, ptr %dt_class, align 8, !dbg !3626, !tbaa !2831
  %21 = load ptr, ptr %req.addr, align 8, !dbg !3627, !tbaa !2816
  %22 = getelementptr inbounds %struct.ucp_request, ptr %21, i32 0, i32 4, !dbg !3628
  %state3 = getelementptr inbounds %struct.anon.9, ptr %22, i32 0, i32 7, !dbg !3629
  %23 = getelementptr inbounds %struct.anon.11, ptr %state3, i32 0, i32 0, !dbg !3630
  %mem_info = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %23, i32 0, i32 1, !dbg !3631
  %24 = load i8, ptr %sg_count, align 1, !dbg !3632, !tbaa !2831
  call void @ucp_proto_select_param_init(ptr noundef %sel_param, i32 noundef %13, i32 noundef %15, i16 noundef zeroext %16, i32 noundef %20, ptr noundef %mem_info, i8 noundef zeroext %24), !dbg !3633
  %25 = load ptr, ptr %worker, align 8, !dbg !3634, !tbaa !2816
  %26 = load ptr, ptr %ep.addr, align 8, !dbg !3634, !tbaa !2816
  %27 = load ptr, ptr %req.addr, align 8, !dbg !3634, !tbaa !2816
  %28 = load ptr, ptr %proto_select.addr, align 8, !dbg !3634, !tbaa !2816
  %29 = load i8, ptr %rkey_cfg_index.addr, align 1, !dbg !3634, !tbaa !2831
  %30 = load ptr, ptr %req.addr, align 8, !dbg !3634, !tbaa !2816
  %31 = getelementptr inbounds %struct.ucp_request, ptr %30, i32 0, i32 4, !dbg !3634
  %state4 = getelementptr inbounds %struct.anon.9, ptr %31, i32 0, i32 7, !dbg !3634
  %32 = getelementptr inbounds %struct.anon.11, ptr %state4, i32 0, i32 0, !dbg !3634
  %length = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %32, i32 0, i32 2, !dbg !3634
  %33 = load i64, ptr %length, align 8, !dbg !3634, !tbaa !2831
  %34 = load i64, ptr %header_length.addr, align 8, !dbg !3634, !tbaa !2829
  %add = add i64 %33, %34, !dbg !3634
  %call = call signext i8 @ucp_proto_request_lookup_proto(ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %28, i8 noundef zeroext %29, ptr noundef %sel_param, i64 noundef %add), !dbg !3634
  store i8 %call, ptr %status, align 1, !dbg !3635, !tbaa !2831
  %35 = load i8, ptr %status, align 1, !dbg !3636, !tbaa !2831
  %conv = sext i8 %35 to i32, !dbg !3636
  %cmp = icmp ne i32 %conv, 0, !dbg !3638
  br i1 %cmp, label %if.then, label %if.end9, !dbg !3639

if.then:                                          ; preds = %entry
  %36 = load ptr, ptr %param.addr, align 8, !dbg !3640, !tbaa !2816
  %op_attr_mask6 = getelementptr inbounds %struct.ucp_request_param_t, ptr %36, i32 0, i32 0, !dbg !3640
  %37 = load i32, ptr %op_attr_mask6, align 8, !dbg !3640, !tbaa !3189
  %and = and i32 %37, 1, !dbg !3640
  %tobool = icmp ne i32 %and, 0, !dbg !3640
  br i1 %tobool, label %if.else, label %if.then7, !dbg !3643

if.then7:                                         ; preds = %if.then
  %38 = load ptr, ptr %req.addr, align 8, !dbg !3644, !tbaa !2816
  call void @ucp_request_put(ptr noundef %38), !dbg !3644
  br label %if.end, !dbg !3644

if.else:                                          ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %39 = load i8, ptr %status, align 1, !dbg !3646, !tbaa !2831
  %conv8 = sext i8 %39 to i64, !dbg !3646
  %40 = inttoptr i64 %conv8 to ptr, !dbg !3646
  store ptr %40, ptr %retval, align 8, !dbg !3647
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3647

if.end9:                                          ; preds = %entry
  %41 = load ptr, ptr %req.addr, align 8, !dbg !3648, !tbaa !2816
  call void @ucp_request_send(ptr noundef %41), !dbg !3648
  %42 = load ptr, ptr %req.addr, align 8, !dbg !3649, !tbaa !2816
  %flags = getelementptr inbounds %struct.ucp_request, ptr %42, i32 0, i32 1, !dbg !3650
  %43 = load i32, ptr %flags, align 4, !dbg !3650, !tbaa !3651
  %and10 = and i32 %43, 1, !dbg !3652
  %tobool11 = icmp ne i32 %and10, 0, !dbg !3652
  br i1 %tobool11, label %if.then12, label %if.end36, !dbg !3653

if.then12:                                        ; preds = %if.end9
  %44 = load ptr, ptr %param.addr, align 8, !dbg !3654, !tbaa !2816
  %op_attr_mask13 = getelementptr inbounds %struct.ucp_request_param_t, ptr %44, i32 0, i32 0, !dbg !3654
  %45 = load i32, ptr %op_attr_mask13, align 8, !dbg !3654, !tbaa !3189
  %and14 = and i32 %45, 65536, !dbg !3654
  %tobool15 = icmp ne i32 %and14, 0, !dbg !3654
  br i1 %tobool15, label %if.then16, label %if.end27, !dbg !3656

if.then16:                                        ; preds = %if.then12
  %46 = load ptr, ptr %param.addr, align 8, !dbg !3657, !tbaa !2816
  %op_attr_mask17 = getelementptr inbounds %struct.ucp_request_param_t, ptr %46, i32 0, i32 0, !dbg !3657
  %47 = load i32, ptr %op_attr_mask17, align 8, !dbg !3657, !tbaa !3189
  %and18 = and i32 %47, 2, !dbg !3657
  %tobool19 = icmp ne i32 %and18, 0, !dbg !3657
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !3660

if.then20:                                        ; preds = %if.then16
  %48 = load ptr, ptr %param.addr, align 8, !dbg !3661, !tbaa !2816
  %cb = getelementptr inbounds %struct.ucp_request_param_t, ptr %48, i32 0, i32 3, !dbg !3661
  %49 = load ptr, ptr %cb, align 8, !dbg !3661, !tbaa !2831
  %50 = load ptr, ptr %req.addr, align 8, !dbg !3661, !tbaa !2816
  %add.ptr = getelementptr inbounds %struct.ucp_request, ptr %50, i64 1, !dbg !3661
  %51 = load ptr, ptr %req.addr, align 8, !dbg !3661, !tbaa !2816
  %status21 = getelementptr inbounds %struct.ucp_request, ptr %51, i32 0, i32 0, !dbg !3661
  %52 = load i8, ptr %status21, align 8, !dbg !3661, !tbaa !3663
  %53 = load ptr, ptr %param.addr, align 8, !dbg !3661, !tbaa !2816
  %user_data = getelementptr inbounds %struct.ucp_request_param_t, ptr %53, i32 0, i32 5, !dbg !3661
  %54 = load ptr, ptr %user_data, align 8, !dbg !3661, !tbaa !3664
  call void %49(ptr noundef %add.ptr, i8 noundef signext %52, ptr noundef %54), !dbg !3661
  br label %if.end22, !dbg !3661

if.end22:                                         ; preds = %if.then20, %if.then16
  br label %do.body, !dbg !3660

do.body:                                          ; preds = %if.end22
  br label %do.body23, !dbg !3665

do.body23:                                        ; preds = %do.body
  br label %do.cond, !dbg !3667

do.cond:                                          ; preds = %do.body23
  br label %do.end, !dbg !3667

do.end:                                           ; preds = %do.cond
  br label %do.cond24, !dbg !3665

do.cond24:                                        ; preds = %do.end
  br label %do.end25, !dbg !3665

do.end25:                                         ; preds = %do.cond24
  %55 = load ptr, ptr %req.addr, align 8, !dbg !3660, !tbaa !2816
  %add.ptr26 = getelementptr inbounds %struct.ucp_request, ptr %55, i64 1, !dbg !3660
  store ptr %add.ptr26, ptr %retval, align 8, !dbg !3660
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3660

if.end27:                                         ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 1, ptr %_status) #10, !dbg !3669
  tail call void @llvm.dbg.declare(metadata ptr %_status, metadata !3587, metadata !DIExpression()), !dbg !3669
  %56 = load ptr, ptr %req.addr, align 8, !dbg !3669, !tbaa !2816
  %status28 = getelementptr inbounds %struct.ucp_request, ptr %56, i32 0, i32 0, !dbg !3669
  %57 = load i8, ptr %status28, align 8, !dbg !3669, !tbaa !3663
  store i8 %57, ptr %_status, align 1, !dbg !3669, !tbaa !2831
  %58 = load ptr, ptr %param.addr, align 8, !dbg !3670, !tbaa !2816
  %op_attr_mask29 = getelementptr inbounds %struct.ucp_request_param_t, ptr %58, i32 0, i32 0, !dbg !3670
  %59 = load i32, ptr %op_attr_mask29, align 8, !dbg !3670, !tbaa !3189
  %and30 = and i32 %59, 1, !dbg !3670
  %tobool31 = icmp ne i32 %and30, 0, !dbg !3670
  br i1 %tobool31, label %if.else33, label %if.then32, !dbg !3669

if.then32:                                        ; preds = %if.end27
  %60 = load ptr, ptr %req.addr, align 8, !dbg !3672, !tbaa !2816
  call void @ucp_request_put(ptr noundef %60), !dbg !3672
  br label %if.end34, !dbg !3672

if.else33:                                        ; preds = %if.end27
  br label %if.end34

if.end34:                                         ; preds = %if.else33, %if.then32
  %61 = load i8, ptr %_status, align 1, !dbg !3669, !tbaa !2831
  %conv35 = sext i8 %61 to i64, !dbg !3669
  %62 = inttoptr i64 %conv35 to ptr, !dbg !3669
  store ptr %62, ptr %retval, align 8, !dbg !3669
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %_status) #10, !dbg !3656
  br label %cleanup

if.end36:                                         ; preds = %if.end9
  %63 = load ptr, ptr %param.addr, align 8, !dbg !3674, !tbaa !2816
  %op_attr_mask37 = getelementptr inbounds %struct.ucp_request_param_t, ptr %63, i32 0, i32 0, !dbg !3674
  %64 = load i32, ptr %op_attr_mask37, align 8, !dbg !3674, !tbaa !3189
  %and38 = and i32 %64, 2, !dbg !3674
  %tobool39 = icmp ne i32 %and38, 0, !dbg !3674
  br i1 %tobool39, label %if.then40, label %if.end54, !dbg !3676

if.then40:                                        ; preds = %if.end36
  %65 = load ptr, ptr %param.addr, align 8, !dbg !3677, !tbaa !2816
  %cb41 = getelementptr inbounds %struct.ucp_request_param_t, ptr %65, i32 0, i32 3, !dbg !3677
  %66 = load ptr, ptr %cb41, align 8, !dbg !3677, !tbaa !2831
  %67 = load ptr, ptr %req.addr, align 8, !dbg !3677, !tbaa !2816
  %68 = getelementptr inbounds %struct.ucp_request, ptr %67, i32 0, i32 4, !dbg !3677
  %cb42 = getelementptr inbounds %struct.anon.9, ptr %68, i32 0, i32 4, !dbg !3677
  store ptr %66, ptr %cb42, align 8, !dbg !3677, !tbaa !2831
  %69 = load ptr, ptr %req.addr, align 8, !dbg !3677, !tbaa !2816
  %flags43 = getelementptr inbounds %struct.ucp_request, ptr %69, i32 0, i32 1, !dbg !3677
  %70 = load i32, ptr %flags43, align 4, !dbg !3677, !tbaa !3651
  %or = or i32 %70, 64, !dbg !3677
  store i32 %or, ptr %flags43, align 4, !dbg !3677, !tbaa !3651
  %71 = load ptr, ptr %param.addr, align 8, !dbg !3681, !tbaa !2816
  %op_attr_mask44 = getelementptr inbounds %struct.ucp_request_param_t, ptr %71, i32 0, i32 0, !dbg !3681
  %72 = load i32, ptr %op_attr_mask44, align 8, !dbg !3681, !tbaa !3189
  %and45 = and i32 %72, 4, !dbg !3681
  %tobool46 = icmp ne i32 %and45, 0, !dbg !3681
  br i1 %tobool46, label %cond.true, label %cond.false, !dbg !3681

cond.true:                                        ; preds = %if.then40
  %73 = load ptr, ptr %param.addr, align 8, !dbg !3681, !tbaa !2816
  %user_data47 = getelementptr inbounds %struct.ucp_request_param_t, ptr %73, i32 0, i32 5, !dbg !3681
  %74 = load ptr, ptr %user_data47, align 8, !dbg !3681, !tbaa !3664
  br label %cond.end, !dbg !3681

cond.false:                                       ; preds = %if.then40
  br label %cond.end, !dbg !3681

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %74, %cond.true ], [ null, %cond.false ], !dbg !3681
  %75 = load ptr, ptr %req.addr, align 8, !dbg !3681, !tbaa !2816
  %76 = getelementptr inbounds %struct.ucp_request, ptr %75, i32 0, i32 3, !dbg !3681
  store ptr %cond, ptr %76, align 8, !dbg !3681, !tbaa !2831
  br label %do.body48, !dbg !3681

do.body48:                                        ; preds = %cond.end
  br label %do.body49, !dbg !3682

do.body49:                                        ; preds = %do.body48
  br label %do.cond50, !dbg !3684

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !3684

do.end51:                                         ; preds = %do.cond50
  br label %do.cond52, !dbg !3682

do.cond52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !3682

do.end53:                                         ; preds = %do.cond52
  br label %if.end54, !dbg !3686

if.end54:                                         ; preds = %do.end53, %if.end36
  br label %do.body55, !dbg !3687

do.body55:                                        ; preds = %if.end54
  br label %do.body56, !dbg !3688

do.body56:                                        ; preds = %do.body55
  br label %do.cond57, !dbg !3690

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !3690

do.end58:                                         ; preds = %do.cond57
  br label %do.cond59, !dbg !3688

do.cond59:                                        ; preds = %do.end58
  br label %do.end60, !dbg !3688

do.end60:                                         ; preds = %do.cond59
  %77 = load ptr, ptr %req.addr, align 8, !dbg !3692, !tbaa !2816
  %add.ptr61 = getelementptr inbounds %struct.ucp_request, ptr %77, i64 1, !dbg !3693
  store ptr %add.ptr61, ptr %retval, align 8, !dbg !3694
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3694

cleanup:                                          ; preds = %do.end60, %if.end34, %do.end25, %if.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %sg_count) #10, !dbg !3695
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #10, !dbg !3695
  call void @llvm.lifetime.end.p0(i64 8, ptr %sel_param) #10, !dbg !3695
  call void @llvm.lifetime.end.p0(i64 8, ptr %worker) #10, !dbg !3695
  %78 = load ptr, ptr %retval, align 8, !dbg !3695
  ret ptr %78, !dbg !3695
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @ucp_rkey_config(ptr noundef %worker, ptr noundef %rkey) #0 !dbg !3696 {
entry:
  %worker.addr = alloca ptr, align 8
  %rkey.addr = alloca ptr, align 8
  store ptr %worker, ptr %worker.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %worker.addr, metadata !3702, metadata !DIExpression()), !dbg !3704
  store ptr %rkey, ptr %rkey.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %rkey.addr, metadata !3703, metadata !DIExpression()), !dbg !3705
  %0 = load ptr, ptr %worker.addr, align 8, !dbg !3706, !tbaa !2816
  %rkey_config = getelementptr inbounds %struct.ucp_worker, ptr %0, i32 0, i32 46, !dbg !3707
  %1 = load ptr, ptr %rkey.addr, align 8, !dbg !3708, !tbaa !2816
  %2 = getelementptr inbounds %struct.ucp_rkey, ptr %1, i32 0, i32 0, !dbg !3709
  %cfg_index = getelementptr inbounds %struct.anon.74, ptr %2, i32 0, i32 2, !dbg !3709
  %3 = load i8, ptr %cfg_index, align 2, !dbg !3709, !tbaa !2831
  %idxprom = zext i8 %3 to i64, !dbg !3706
  %arrayidx = getelementptr inbounds [128 x %struct.ucp_rkey_config_t], ptr %rkey_config, i64 0, i64 %idxprom, !dbg !3706
  ret ptr %arrayidx, !dbg !3710
}

declare !dbg !3711 void @ucp_rkey_resolve_inner(ptr noundef, ptr noundef) #2

declare !dbg !3714 void @ucs_log_dispatch(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal signext i8 @uct_ep_put_short(ptr noundef %ep, ptr noundef %buffer, i32 noundef %length, i64 noundef %remote_addr, i64 noundef %rkey) #0 !dbg !3718 {
entry:
  %ep.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %remote_addr.addr = alloca i64, align 8
  %rkey.addr = alloca i64, align 8
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ep.addr, metadata !3720, metadata !DIExpression()), !dbg !3725
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !3721, metadata !DIExpression()), !dbg !3726
  store i32 %length, ptr %length.addr, align 4, !tbaa !2821
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !3722, metadata !DIExpression()), !dbg !3727
  store i64 %remote_addr, ptr %remote_addr.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %remote_addr.addr, metadata !3723, metadata !DIExpression()), !dbg !3728
  store i64 %rkey, ptr %rkey.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %rkey.addr, metadata !3724, metadata !DIExpression()), !dbg !3729
  %0 = load ptr, ptr %ep.addr, align 8, !dbg !3730, !tbaa !2816
  %iface = getelementptr inbounds %struct.uct_ep, ptr %0, i32 0, i32 0, !dbg !3731
  %1 = load ptr, ptr %iface, align 8, !dbg !3731, !tbaa !3732
  %ops = getelementptr inbounds %struct.uct_iface, ptr %1, i32 0, i32 0, !dbg !3734
  %ep_put_short = getelementptr inbounds %struct.uct_iface_ops, ptr %ops, i32 0, i32 0, !dbg !3735
  %2 = load ptr, ptr %ep_put_short, align 8, !dbg !3735, !tbaa !3736
  %3 = load ptr, ptr %ep.addr, align 8, !dbg !3739, !tbaa !2816
  %4 = load ptr, ptr %buffer.addr, align 8, !dbg !3740, !tbaa !2816
  %5 = load i32, ptr %length.addr, align 4, !dbg !3741, !tbaa !2821
  %6 = load i64, ptr %remote_addr.addr, align 8, !dbg !3742, !tbaa !2829
  %7 = load i64, ptr %rkey.addr, align 8, !dbg !3743, !tbaa !2829
  %call = call signext i8 %2(ptr noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7), !dbg !3730
  ret i8 %call, !dbg !3744
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @ucp_ep_get_fast_lane(ptr noundef %ep, i8 noundef zeroext %lane_index) #0 !dbg !3745 {
entry:
  %ep.addr = alloca ptr, align 8
  %lane_index.addr = alloca i8, align 1
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ep.addr, metadata !3750, metadata !DIExpression()), !dbg !3752
  store i8 %lane_index, ptr %lane_index.addr, align 1, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %lane_index.addr, metadata !3751, metadata !DIExpression()), !dbg !3753
  %0 = load ptr, ptr %ep.addr, align 8, !dbg !3754, !tbaa !2816
  %uct_eps = getelementptr inbounds %struct.ucp_ep, ptr %0, i32 0, i32 6, !dbg !3755
  %1 = load i8, ptr %lane_index.addr, align 1, !dbg !3756, !tbaa !2831
  %idxprom = zext i8 %1 to i64, !dbg !3754
  %arrayidx = getelementptr inbounds [5 x ptr], ptr %uct_eps, i64 0, i64 %idxprom, !dbg !3754
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !3754, !tbaa !2816
  ret ptr %2, !dbg !3757
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ucp_ep_config(ptr noundef %ep) #6 !dbg !3758 {
entry:
  %ep.addr = alloca ptr, align 8
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ep.addr, metadata !3762, metadata !DIExpression()), !dbg !3763
  %0 = load ptr, ptr %ep.addr, align 8, !dbg !3764, !tbaa !2816
  %worker = getelementptr inbounds %struct.ucp_ep, ptr %0, i32 0, i32 0, !dbg !3764
  %1 = load ptr, ptr %worker, align 8, !dbg !3764, !tbaa !3153
  %ep_config = getelementptr inbounds %struct.ucp_worker, ptr %1, i32 0, i32 44, !dbg !3764
  %buffer = getelementptr inbounds %struct.ucs_array_ep_config_arr_t, ptr %ep_config, i32 0, i32 0, !dbg !3764
  %2 = load ptr, ptr %buffer, align 8, !dbg !3764, !tbaa !3765
  %3 = load ptr, ptr %ep.addr, align 8, !dbg !3764, !tbaa !2816
  %cfg_index = getelementptr inbounds %struct.ucp_ep, ptr %3, i32 0, i32 2, !dbg !3764
  %4 = load i8, ptr %cfg_index, align 1, !dbg !3764, !tbaa !3329
  %idxprom = zext i8 %4 to i64, !dbg !3764
  %arrayidx = getelementptr inbounds %struct.ucp_ep_config, ptr %2, i64 %idxprom, !dbg !3764
  ret ptr %arrayidx, !dbg !3766
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @ucp_rma_nonblocking(ptr noundef %ep, ptr noundef %buffer, i64 noundef %length, i64 noundef %remote_addr, ptr noundef %rkey, ptr noundef %progress_cb, i64 noundef %zcopy_thresh, ptr noundef %param) #0 !dbg !3767 {
entry:
  %retval = alloca ptr, align 8
  %ep.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %remote_addr.addr = alloca i64, align 8
  %rkey.addr = alloca ptr, align 8
  %progress_cb.addr = alloca ptr, align 8
  %zcopy_thresh.addr = alloca i64, align 8
  %param.addr = alloca ptr, align 8
  %status = alloca i8, align 1
  %req = alloca ptr, align 8
  %__req = alloca ptr, align 8
  %_req = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp12 = alloca ptr, align 8
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ep.addr, metadata !3771, metadata !DIExpression()), !dbg !3787
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !3772, metadata !DIExpression()), !dbg !3788
  store i64 %length, ptr %length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !3773, metadata !DIExpression()), !dbg !3789
  store i64 %remote_addr, ptr %remote_addr.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %remote_addr.addr, metadata !3774, metadata !DIExpression()), !dbg !3790
  store ptr %rkey, ptr %rkey.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %rkey.addr, metadata !3775, metadata !DIExpression()), !dbg !3791
  store ptr %progress_cb, ptr %progress_cb.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %progress_cb.addr, metadata !3776, metadata !DIExpression()), !dbg !3792
  store i64 %zcopy_thresh, ptr %zcopy_thresh.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %zcopy_thresh.addr, metadata !3777, metadata !DIExpression()), !dbg !3793
  store ptr %param, ptr %param.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !3778, metadata !DIExpression()), !dbg !3794
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #10, !dbg !3795
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !3779, metadata !DIExpression()), !dbg !3796
  call void @llvm.lifetime.start.p0(i64 8, ptr %req) #10, !dbg !3797
  tail call void @llvm.dbg.declare(metadata ptr %req, metadata !3780, metadata !DIExpression()), !dbg !3798
  call void @llvm.lifetime.start.p0(i64 8, ptr %__req) #10, !dbg !3799
  tail call void @llvm.dbg.declare(metadata ptr %__req, metadata !3781, metadata !DIExpression()), !dbg !3799
  %0 = load ptr, ptr %param.addr, align 8, !dbg !3800, !tbaa !2816
  %op_attr_mask = getelementptr inbounds %struct.ucp_request_param_t, ptr %0, i32 0, i32 0, !dbg !3800
  %1 = load i32, ptr %op_attr_mask, align 8, !dbg !3800, !tbaa !3189
  %and = and i32 %1, 1, !dbg !3800
  %tobool = icmp ne i32 %and, 0, !dbg !3800
  br i1 %tobool, label %if.else, label %if.then, !dbg !3799

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %_req) #10, !dbg !3801
  tail call void @llvm.dbg.declare(metadata ptr %_req, metadata !3783, metadata !DIExpression()), !dbg !3801
  %2 = load ptr, ptr %ep.addr, align 8, !dbg !3801, !tbaa !2816
  %worker = getelementptr inbounds %struct.ucp_ep, ptr %2, i32 0, i32 0, !dbg !3801
  %3 = load ptr, ptr %worker, align 8, !dbg !3801, !tbaa !3153
  %req_mp = getelementptr inbounds %struct.ucp_worker, ptr %3, i32 0, i32 6, !dbg !3801
  %call = call ptr @ucs_mpool_get_inline(ptr noundef %req_mp), !dbg !3801
  store ptr %call, ptr %_req, align 8, !dbg !3801, !tbaa !2816
  %4 = load ptr, ptr %_req, align 8, !dbg !3802, !tbaa !2816
  %cmp = icmp ne ptr %4, null, !dbg !3802
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3801

if.then1:                                         ; preds = %if.then
  br label %do.body, !dbg !3804

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !3806

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !3808

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !3808

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !3806

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !3806

do.end4:                                          ; preds = %do.cond3
  %5 = load ptr, ptr %_req, align 8, !dbg !3804, !tbaa !2816
  %6 = load ptr, ptr %ep.addr, align 8, !dbg !3804, !tbaa !2816
  %worker5 = getelementptr inbounds %struct.ucp_ep, ptr %6, i32 0, i32 0, !dbg !3804
  %7 = load ptr, ptr %worker5, align 8, !dbg !3804, !tbaa !3153
  call void @ucp_request_reset_internal(ptr noundef %5, ptr noundef %7), !dbg !3804
  br label %if.end, !dbg !3804

if.end:                                           ; preds = %do.end4, %if.then
  %8 = load ptr, ptr %_req, align 8, !dbg !3801, !tbaa !2816
  store ptr %8, ptr %tmp, align 8, !dbg !3802, !tbaa !2816
  call void @llvm.lifetime.end.p0(i64 8, ptr %_req) #10, !dbg !3810
  %9 = load ptr, ptr %tmp, align 8, !dbg !3801, !tbaa !2816
  store ptr %9, ptr %__req, align 8, !dbg !3810, !tbaa !2816
  %10 = load ptr, ptr %__req, align 8, !dbg !3811, !tbaa !2816
  %cmp6 = icmp eq ptr %10, null, !dbg !3811
  %conv = zext i1 %cmp6 to i32, !dbg !3811
  %conv7 = sext i32 %conv to i64, !dbg !3811
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !3811
  %tobool8 = icmp ne i64 %expval, 0, !dbg !3811
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !3810

if.then9:                                         ; preds = %if.end
  store ptr inttoptr (i64 -4 to ptr), ptr %retval, align 8, !dbg !3813
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3813

if.end10:                                         ; preds = %if.end
  br label %if.end11, !dbg !3810

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %param.addr, align 8, !dbg !3816, !tbaa !2816
  %request = getelementptr inbounds %struct.ucp_request_param_t, ptr %11, i32 0, i32 2, !dbg !3816
  %12 = load ptr, ptr %request, align 8, !dbg !3816, !tbaa !3269
  %add.ptr = getelementptr inbounds %struct.ucp_request, ptr %12, i64 -1, !dbg !3816
  store ptr %add.ptr, ptr %__req, align 8, !dbg !3816, !tbaa !2816
  %13 = load ptr, ptr %__req, align 8, !dbg !3816, !tbaa !2816
  call void @ucp_request_id_reset(ptr noundef %13), !dbg !3816
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end10
  %14 = load ptr, ptr %__req, align 8, !dbg !3799, !tbaa !2816
  store ptr %14, ptr %tmp12, align 8, !dbg !3800, !tbaa !2816
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3818
  br label %cleanup, !dbg !3818

cleanup:                                          ; preds = %if.end11, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %__req) #10, !dbg !3818
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup24 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %15 = load ptr, ptr %tmp12, align 8, !dbg !3799, !tbaa !2816
  store ptr %15, ptr %req, align 8, !dbg !3819, !tbaa !2816
  %16 = load ptr, ptr %req, align 8, !dbg !3820, !tbaa !2816
  %17 = load ptr, ptr %ep.addr, align 8, !dbg !3821, !tbaa !2816
  %18 = load ptr, ptr %buffer.addr, align 8, !dbg !3822, !tbaa !2816
  %19 = load i64, ptr %length.addr, align 8, !dbg !3823, !tbaa !2829
  %20 = load i64, ptr %remote_addr.addr, align 8, !dbg !3824, !tbaa !2829
  %21 = load ptr, ptr %rkey.addr, align 8, !dbg !3825, !tbaa !2816
  %22 = load ptr, ptr %progress_cb.addr, align 8, !dbg !3826, !tbaa !2816
  %23 = load i64, ptr %zcopy_thresh.addr, align 8, !dbg !3827, !tbaa !2829
  %24 = load ptr, ptr %param.addr, align 8, !dbg !3828, !tbaa !2816
  %call13 = call signext i8 @ucp_rma_request_init(ptr noundef %16, ptr noundef %17, ptr noundef %18, i64 noundef %19, i64 noundef %20, ptr noundef %21, ptr noundef %22, i64 noundef %23, ptr noundef %24), !dbg !3829
  store i8 %call13, ptr %status, align 1, !dbg !3830, !tbaa !2831
  %25 = load i8, ptr %status, align 1, !dbg !3831, !tbaa !2831
  %conv14 = sext i8 %25 to i32, !dbg !3831
  %cmp15 = icmp ne i32 %conv14, 0, !dbg !3831
  %conv16 = zext i1 %cmp15 to i32, !dbg !3831
  %conv17 = sext i32 %conv16 to i64, !dbg !3831
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !3831
  %tobool19 = icmp ne i64 %expval18, 0, !dbg !3831
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !3833

if.then20:                                        ; preds = %cleanup.cont
  %26 = load i8, ptr %status, align 1, !dbg !3834, !tbaa !2831
  %conv21 = sext i8 %26 to i64, !dbg !3834
  %27 = inttoptr i64 %conv21 to ptr, !dbg !3834
  store ptr %27, ptr %retval, align 8, !dbg !3836
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24, !dbg !3836

if.end22:                                         ; preds = %cleanup.cont
  %28 = load ptr, ptr %req, align 8, !dbg !3837, !tbaa !2816
  %29 = load ptr, ptr %param.addr, align 8, !dbg !3838, !tbaa !2816
  %call23 = call ptr @ucp_rma_send_request(ptr noundef %28, ptr noundef %29), !dbg !3839
  store ptr %call23, ptr %retval, align 8, !dbg !3840
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24, !dbg !3840

cleanup24:                                        ; preds = %if.end22, %if.then20, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %req) #10, !dbg !3841
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #10, !dbg !3841
  %30 = load ptr, ptr %retval, align 8, !dbg !3841
  ret ptr %30, !dbg !3841
}

; Function Attrs: nounwind uwtable
define signext i8 @ucp_get_nbi(ptr noundef %ep, ptr noundef %buffer, i64 noundef %length, i64 noundef %remote_addr, ptr noundef %rkey) #4 !dbg !3842 {
entry:
  %retval = alloca i8, align 1
  %ep.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %remote_addr.addr = alloca i64, align 8
  %rkey.addr = alloca ptr, align 8
  %status_ptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ep.addr, metadata !3846, metadata !DIExpression()), !dbg !3852
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !3847, metadata !DIExpression()), !dbg !3853
  store i64 %length, ptr %length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !3848, metadata !DIExpression()), !dbg !3854
  store i64 %remote_addr, ptr %remote_addr.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %remote_addr.addr, metadata !3849, metadata !DIExpression()), !dbg !3855
  store ptr %rkey, ptr %rkey.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %rkey.addr, metadata !3850, metadata !DIExpression()), !dbg !3856
  call void @llvm.lifetime.start.p0(i64 8, ptr %status_ptr) #10, !dbg !3857
  tail call void @llvm.dbg.declare(metadata ptr %status_ptr, metadata !3851, metadata !DIExpression()), !dbg !3858
  %0 = load ptr, ptr %ep.addr, align 8, !dbg !3859, !tbaa !2816
  %1 = load ptr, ptr %buffer.addr, align 8, !dbg !3860, !tbaa !2816
  %2 = load i64, ptr %length.addr, align 8, !dbg !3861, !tbaa !2829
  %3 = load i64, ptr %remote_addr.addr, align 8, !dbg !3862, !tbaa !2829
  %4 = load ptr, ptr %rkey.addr, align 8, !dbg !3863, !tbaa !2816
  %call = call ptr @ucp_get_nbx(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef @ucp_request_null_param), !dbg !3864
  store ptr %call, ptr %status_ptr, align 8, !dbg !3865, !tbaa !2816
  %5 = load ptr, ptr %status_ptr, align 8, !dbg !3866, !tbaa !2816
  %6 = ptrtoint ptr %5 to i64, !dbg !3866
  %sub = sub i64 %6, 1, !dbg !3866
  %cmp = icmp ult i64 %sub, -101, !dbg !3866
  br i1 %cmp, label %if.then, label %if.end, !dbg !3868

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %status_ptr, align 8, !dbg !3869, !tbaa !2816
  call void @ucp_request_free(ptr noundef %7), !dbg !3871
  store i8 1, ptr %retval, align 1, !dbg !3872
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3872

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %status_ptr, align 8, !dbg !3873, !tbaa !2816
  %9 = ptrtoint ptr %8 to i64, !dbg !3873
  %sub1 = sub i64 %9, 1, !dbg !3873
  %cmp2 = icmp ult i64 %sub1, -101, !dbg !3873
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !3873

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !3873

cond.false:                                       ; preds = %if.end
  %10 = load ptr, ptr %status_ptr, align 8, !dbg !3873, !tbaa !2816
  %11 = ptrtoint ptr %10 to i64, !dbg !3873
  %conv = trunc i64 %11 to i8, !dbg !3873
  %conv3 = sext i8 %conv to i32, !dbg !3873
  br label %cond.end, !dbg !3873

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv3, %cond.false ], !dbg !3873
  %conv4 = trunc i32 %cond to i8, !dbg !3873
  store i8 %conv4, ptr %retval, align 1, !dbg !3874
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3874

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %status_ptr) #10, !dbg !3875
  %12 = load i8, ptr %retval, align 1, !dbg !3875
  ret i8 %12, !dbg !3875
}

; Function Attrs: nounwind uwtable
define ptr @ucp_get_nbx(ptr noundef %ep, ptr noundef %buffer, i64 noundef %count, i64 noundef %remote_addr, ptr noundef %rkey, ptr noundef %param) #4 !dbg !3876 {
entry:
  %retval = alloca ptr, align 8
  %ep.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %remote_addr.addr = alloca i64, align 8
  %rkey.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %worker = alloca ptr, align 8
  %contig_length = alloca i64, align 8
  %rma_config = alloca ptr, align 8
  %ret = alloca ptr, align 8
  %status = alloca i8, align 1
  %req = alloca ptr, align 8
  %datatype = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__req = alloca ptr, align 8
  %_req = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  %_status_nc = alloca i8, align 1
  %tmp88 = alloca i8, align 1
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ep.addr, metadata !3880, metadata !DIExpression()), !dbg !3905
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !3881, metadata !DIExpression()), !dbg !3906
  store i64 %count, ptr %count.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3882, metadata !DIExpression()), !dbg !3907
  store i64 %remote_addr, ptr %remote_addr.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %remote_addr.addr, metadata !3883, metadata !DIExpression()), !dbg !3908
  store ptr %rkey, ptr %rkey.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %rkey.addr, metadata !3884, metadata !DIExpression()), !dbg !3909
  store ptr %param, ptr %param.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !3885, metadata !DIExpression()), !dbg !3910
  call void @llvm.lifetime.start.p0(i64 8, ptr %worker) #10, !dbg !3911
  tail call void @llvm.dbg.declare(metadata ptr %worker, metadata !3886, metadata !DIExpression()), !dbg !3912
  %0 = load ptr, ptr %ep.addr, align 8, !dbg !3913, !tbaa !2816
  %worker1 = getelementptr inbounds %struct.ucp_ep, ptr %0, i32 0, i32 0, !dbg !3914
  %1 = load ptr, ptr %worker1, align 8, !dbg !3914, !tbaa !3153
  store ptr %1, ptr %worker, align 8, !dbg !3912, !tbaa !2816
  call void @llvm.lifetime.start.p0(i64 8, ptr %contig_length) #10, !dbg !3915
  tail call void @llvm.dbg.declare(metadata ptr %contig_length, metadata !3887, metadata !DIExpression()), !dbg !3916
  store i64 0, ptr %contig_length, align 8, !dbg !3916, !tbaa !2829
  call void @llvm.lifetime.start.p0(i64 8, ptr %rma_config) #10, !dbg !3917
  tail call void @llvm.dbg.declare(metadata ptr %rma_config, metadata !3888, metadata !DIExpression()), !dbg !3918
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #10, !dbg !3919
  tail call void @llvm.dbg.declare(metadata ptr %ret, metadata !3889, metadata !DIExpression()), !dbg !3920
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #10, !dbg !3921
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !3890, metadata !DIExpression()), !dbg !3922
  call void @llvm.lifetime.start.p0(i64 8, ptr %req) #10, !dbg !3923
  tail call void @llvm.dbg.declare(metadata ptr %req, metadata !3891, metadata !DIExpression()), !dbg !3924
  call void @llvm.lifetime.start.p0(i64 8, ptr %datatype) #10, !dbg !3925
  tail call void @llvm.dbg.declare(metadata ptr %datatype, metadata !3892, metadata !DIExpression()), !dbg !3926
  %2 = load ptr, ptr %param.addr, align 8, !dbg !3927, !tbaa !2816
  %op_attr_mask = getelementptr inbounds %struct.ucp_request_param_t, ptr %2, i32 0, i32 0, !dbg !3927
  %3 = load i32, ptr %op_attr_mask, align 8, !dbg !3927, !tbaa !3189
  %and = and i32 %3, 262144, !dbg !3927
  %conv = zext i32 %and to i64, !dbg !3927
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3927
  %tobool = icmp ne i64 %expval, 0, !dbg !3927
  br i1 %tobool, label %if.then, label %if.end, !dbg !3929

if.then:                                          ; preds = %entry
  store ptr inttoptr (i64 -2 to ptr), ptr %retval, align 8, !dbg !3930
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup101, !dbg !3930

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !3932

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !3933

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !3935

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !3935

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !3933

do.body3:                                         ; preds = %do.end
  %4 = load i64, ptr %count.addr, align 8, !dbg !3937, !tbaa !2829
  %cmp = icmp eq i64 %4, 0, !dbg !3937
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !3940

if.then5:                                         ; preds = %do.body3
  store ptr null, ptr %retval, align 8, !dbg !3941
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup101, !dbg !3941

if.end6:                                          ; preds = %do.body3
  br label %do.cond7, !dbg !3940

do.cond7:                                         ; preds = %if.end6
  br label %do.end8, !dbg !3940

do.end8:                                          ; preds = %do.cond7
  br label %do.body9, !dbg !3933

do.body9:                                         ; preds = %do.end8
  br label %do.cond10, !dbg !3943

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !3943

do.end11:                                         ; preds = %do.cond10
  br label %do.cond12, !dbg !3933

do.cond12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !3933

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !3945

do.body14:                                        ; preds = %do.end13
  br label %do.body15, !dbg !3946

do.body15:                                        ; preds = %do.body14
  br label %do.cond16, !dbg !3948

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !3948

do.end17:                                         ; preds = %do.cond16
  br label %do.cond18, !dbg !3946

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !3946

do.end19:                                         ; preds = %do.cond18
  %5 = load ptr, ptr %worker, align 8, !dbg !3950, !tbaa !2816
  %context = getelementptr inbounds %struct.ucp_worker, ptr %5, i32 0, i32 2, !dbg !3951
  %6 = load ptr, ptr %context, align 8, !dbg !3951, !tbaa !3195
  %config = getelementptr inbounds %struct.ucp_context, ptr %6, i32 0, i32 16, !dbg !3952
  %ext = getelementptr inbounds %struct.anon.60, ptr %config, i32 0, i32 10, !dbg !3953
  %proto_enable = getelementptr inbounds %struct.ucp_context_config, ptr %ext, i32 0, i32 37, !dbg !3954
  %7 = load i32, ptr %proto_enable, align 8, !dbg !3954, !tbaa !3227
  %tobool20 = icmp ne i32 %7, 0, !dbg !3950
  br i1 %tobool20, label %if.then21, label %if.else56, !dbg !3955

if.then21:                                        ; preds = %do.end19
  %8 = load ptr, ptr %param.addr, align 8, !dbg !3956, !tbaa !2816
  %call = call i64 @ucp_request_param_datatype(ptr noundef %8), !dbg !3957
  store i64 %call, ptr %datatype, align 8, !dbg !3958, !tbaa !2829
  call void @llvm.lifetime.start.p0(i64 8, ptr %__req) #10, !dbg !3959
  tail call void @llvm.dbg.declare(metadata ptr %__req, metadata !3893, metadata !DIExpression()), !dbg !3959
  %9 = load ptr, ptr %param.addr, align 8, !dbg !3960, !tbaa !2816
  %op_attr_mask22 = getelementptr inbounds %struct.ucp_request_param_t, ptr %9, i32 0, i32 0, !dbg !3960
  %10 = load i32, ptr %op_attr_mask22, align 8, !dbg !3960, !tbaa !3189
  %and23 = and i32 %10, 1, !dbg !3960
  %tobool24 = icmp ne i32 %and23, 0, !dbg !3960
  br i1 %tobool24, label %if.else, label %if.then25, !dbg !3959

if.then25:                                        ; preds = %if.then21
  call void @llvm.lifetime.start.p0(i64 8, ptr %_req) #10, !dbg !3961
  tail call void @llvm.dbg.declare(metadata ptr %_req, metadata !3897, metadata !DIExpression()), !dbg !3961
  %11 = load ptr, ptr %worker, align 8, !dbg !3961, !tbaa !2816
  %req_mp = getelementptr inbounds %struct.ucp_worker, ptr %11, i32 0, i32 6, !dbg !3961
  %call26 = call ptr @ucs_mpool_get_inline(ptr noundef %req_mp), !dbg !3961
  store ptr %call26, ptr %_req, align 8, !dbg !3961, !tbaa !2816
  %12 = load ptr, ptr %_req, align 8, !dbg !3962, !tbaa !2816
  %cmp27 = icmp ne ptr %12, null, !dbg !3962
  br i1 %cmp27, label %if.then29, label %if.end36, !dbg !3961

if.then29:                                        ; preds = %if.then25
  br label %do.body30, !dbg !3964

do.body30:                                        ; preds = %if.then29
  br label %do.body31, !dbg !3966

do.body31:                                        ; preds = %do.body30
  br label %do.cond32, !dbg !3968

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !3968

do.end33:                                         ; preds = %do.cond32
  br label %do.cond34, !dbg !3966

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !3966

do.end35:                                         ; preds = %do.cond34
  %13 = load ptr, ptr %_req, align 8, !dbg !3964, !tbaa !2816
  %14 = load ptr, ptr %worker, align 8, !dbg !3964, !tbaa !2816
  call void @ucp_request_reset_internal(ptr noundef %13, ptr noundef %14), !dbg !3964
  br label %if.end36, !dbg !3964

if.end36:                                         ; preds = %do.end35, %if.then25
  %15 = load ptr, ptr %_req, align 8, !dbg !3961, !tbaa !2816
  store ptr %15, ptr %tmp, align 8, !dbg !3962, !tbaa !2816
  call void @llvm.lifetime.end.p0(i64 8, ptr %_req) #10, !dbg !3970
  %16 = load ptr, ptr %tmp, align 8, !dbg !3961, !tbaa !2816
  store ptr %16, ptr %__req, align 8, !dbg !3970, !tbaa !2816
  %17 = load ptr, ptr %__req, align 8, !dbg !3971, !tbaa !2816
  %cmp37 = icmp eq ptr %17, null, !dbg !3971
  %conv38 = zext i1 %cmp37 to i32, !dbg !3971
  %conv39 = sext i32 %conv38 to i64, !dbg !3971
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !3971
  %tobool41 = icmp ne i64 %expval40, 0, !dbg !3971
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !3970

if.then42:                                        ; preds = %if.end36
  store ptr inttoptr (i64 -4 to ptr), ptr %ret, align 8, !dbg !3973, !tbaa !2816
  store i32 18, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3973

if.end43:                                         ; preds = %if.end36
  br label %if.end44, !dbg !3970

if.else:                                          ; preds = %if.then21
  %18 = load ptr, ptr %param.addr, align 8, !dbg !3976, !tbaa !2816
  %request = getelementptr inbounds %struct.ucp_request_param_t, ptr %18, i32 0, i32 2, !dbg !3976
  %19 = load ptr, ptr %request, align 8, !dbg !3976, !tbaa !3269
  %add.ptr = getelementptr inbounds %struct.ucp_request, ptr %19, i64 -1, !dbg !3976
  store ptr %add.ptr, ptr %__req, align 8, !dbg !3976, !tbaa !2816
  %20 = load ptr, ptr %__req, align 8, !dbg !3976, !tbaa !2816
  call void @ucp_request_id_reset(ptr noundef %20), !dbg !3976
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.end43
  %21 = load ptr, ptr %__req, align 8, !dbg !3959, !tbaa !2816
  store ptr %21, ptr %tmp45, align 8, !dbg !3960, !tbaa !2816
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3978
  br label %cleanup, !dbg !3978

cleanup:                                          ; preds = %if.then42, %if.end44
  call void @llvm.lifetime.end.p0(i64 8, ptr %__req) #10, !dbg !3978
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup101 [
    i32 0, label %cleanup.cont
    i32 18, label %out_unlock
  ]

cleanup.cont:                                     ; preds = %cleanup
  %22 = load ptr, ptr %tmp45, align 8, !dbg !3959, !tbaa !2816
  store ptr %22, ptr %req, align 8, !dbg !3979, !tbaa !2816
  %23 = load ptr, ptr %rkey.addr, align 8, !dbg !3980, !tbaa !2816
  %24 = load ptr, ptr %req, align 8, !dbg !3981, !tbaa !2816
  %25 = getelementptr inbounds %struct.ucp_request, ptr %24, i32 0, i32 4, !dbg !3982
  %26 = getelementptr inbounds %struct.anon.9, ptr %25, i32 0, i32 8, !dbg !3983
  %rkey46 = getelementptr inbounds %struct.anon.26, ptr %26, i32 0, i32 1, !dbg !3984
  store ptr %23, ptr %rkey46, align 8, !dbg !3985, !tbaa !2831
  %27 = load i64, ptr %remote_addr.addr, align 8, !dbg !3986, !tbaa !2829
  %28 = load ptr, ptr %req, align 8, !dbg !3987, !tbaa !2816
  %29 = getelementptr inbounds %struct.ucp_request, ptr %28, i32 0, i32 4, !dbg !3988
  %30 = getelementptr inbounds %struct.anon.9, ptr %29, i32 0, i32 8, !dbg !3989
  %remote_addr47 = getelementptr inbounds %struct.anon.26, ptr %30, i32 0, i32 0, !dbg !3990
  store i64 %27, ptr %remote_addr47, align 8, !dbg !3991, !tbaa !2831
  %31 = load ptr, ptr %req, align 8, !dbg !3992, !tbaa !2816
  %32 = getelementptr inbounds %struct.ucp_request, ptr %31, i32 0, i32 4, !dbg !3993
  %state = getelementptr inbounds %struct.anon.9, ptr %32, i32 0, i32 7, !dbg !3994
  %33 = getelementptr inbounds %struct.anon.11, ptr %state, i32 0, i32 1, !dbg !3995
  store i64 0, ptr %33, align 8, !dbg !3996, !tbaa !2831
  %34 = load i64, ptr %datatype, align 8, !dbg !3997, !tbaa !2829
  %and48 = and i64 %34, 7, !dbg !3997
  %cmp49 = icmp eq i64 %and48, 0, !dbg !3997
  br i1 %cmp49, label %if.then51, label %if.end53, !dbg !3999

if.then51:                                        ; preds = %cleanup.cont
  %35 = load i64, ptr %datatype, align 8, !dbg !4000, !tbaa !2829
  %36 = load i64, ptr %count.addr, align 8, !dbg !4002, !tbaa !2829
  %call52 = call i64 @ucp_contig_dt_length(i64 noundef %35, i64 noundef %36), !dbg !4003
  store i64 %call52, ptr %contig_length, align 8, !dbg !4004, !tbaa !2829
  br label %if.end53, !dbg !4005

if.end53:                                         ; preds = %if.then51, %cleanup.cont
  %37 = load ptr, ptr %ep.addr, align 8, !dbg !4006, !tbaa !2816
  %38 = load ptr, ptr %worker, align 8, !dbg !4007, !tbaa !2816
  %39 = load ptr, ptr %rkey.addr, align 8, !dbg !4008, !tbaa !2816
  %call54 = call ptr @ucp_rkey_config(ptr noundef %38, ptr noundef %39), !dbg !4009
  %proto_select = getelementptr inbounds %struct.ucp_rkey_config_t, ptr %call54, i32 0, i32 3, !dbg !4010
  %40 = load ptr, ptr %rkey.addr, align 8, !dbg !4011, !tbaa !2816
  %41 = getelementptr inbounds %struct.ucp_rkey, ptr %40, i32 0, i32 0, !dbg !4012
  %cfg_index = getelementptr inbounds %struct.anon.74, ptr %41, i32 0, i32 2, !dbg !4012
  %42 = load i8, ptr %cfg_index, align 2, !dbg !4012, !tbaa !2831
  %43 = load ptr, ptr %req, align 8, !dbg !4013, !tbaa !2816
  %44 = load ptr, ptr %buffer.addr, align 8, !dbg !4014, !tbaa !2816
  %45 = load i64, ptr %count.addr, align 8, !dbg !4015, !tbaa !2829
  %46 = load i64, ptr %datatype, align 8, !dbg !4016, !tbaa !2829
  %47 = load i64, ptr %contig_length, align 8, !dbg !4017, !tbaa !2829
  %48 = load ptr, ptr %param.addr, align 8, !dbg !4018, !tbaa !2816
  %call55 = call ptr @ucp_proto_request_send_op(ptr noundef %37, ptr noundef %proto_select, i8 noundef zeroext %42, ptr noundef %43, i32 noundef 5, ptr noundef %44, i64 noundef %45, i64 noundef %46, i64 noundef %47, ptr noundef %48, i64 noundef 0, i16 noundef zeroext 0), !dbg !4019
  store ptr %call55, ptr %ret, align 8, !dbg !4020, !tbaa !2816
  br label %if.end100, !dbg !4021

if.else56:                                        ; preds = %do.end19
  call void @llvm.lifetime.start.p0(i64 1, ptr %_status_nc) #10, !dbg !4022
  tail call void @llvm.dbg.declare(metadata ptr %_status_nc, metadata !3901, metadata !DIExpression()), !dbg !4022
  store i8 0, ptr %_status_nc, align 1, !dbg !4022, !tbaa !2831
  %49 = load ptr, ptr %ep.addr, align 8, !dbg !4023, !tbaa !2816
  %cfg_index57 = getelementptr inbounds %struct.ucp_ep, ptr %49, i32 0, i32 2, !dbg !4023
  %50 = load i8, ptr %cfg_index57, align 1, !dbg !4023, !tbaa !3329
  %conv58 = zext i8 %50 to i32, !dbg !4023
  %51 = load ptr, ptr %rkey.addr, align 8, !dbg !4023, !tbaa !2816
  %52 = getelementptr inbounds %struct.ucp_rkey, ptr %51, i32 0, i32 0, !dbg !4023
  %ep_cfg_index = getelementptr inbounds %struct.anon.73, ptr %52, i32 0, i32 3, !dbg !4023
  %53 = load i8, ptr %ep_cfg_index, align 1, !dbg !4023, !tbaa !2831
  %conv59 = zext i8 %53 to i32, !dbg !4023
  %cmp60 = icmp ne i32 %conv58, %conv59, !dbg !4023
  %conv61 = zext i1 %cmp60 to i32, !dbg !4023
  %conv62 = sext i32 %conv61 to i64, !dbg !4023
  %expval63 = call i64 @llvm.expect.i64(i64 %conv62, i64 0), !dbg !4023
  %tobool64 = icmp ne i64 %expval63, 0, !dbg !4023
  br i1 %tobool64, label %if.then65, label %if.end66, !dbg !4022

if.then65:                                        ; preds = %if.else56
  %54 = load ptr, ptr %rkey.addr, align 8, !dbg !4025, !tbaa !2816
  %55 = load ptr, ptr %ep.addr, align 8, !dbg !4025, !tbaa !2816
  call void @ucp_rkey_resolve_inner(ptr noundef %54, ptr noundef %55), !dbg !4025
  br label %if.end66, !dbg !4025

if.end66:                                         ; preds = %if.then65, %if.else56
  %56 = load ptr, ptr %rkey.addr, align 8, !dbg !4027, !tbaa !2816
  %57 = getelementptr inbounds %struct.ucp_rkey, ptr %56, i32 0, i32 0, !dbg !4027
  %rma_lane = getelementptr inbounds %struct.anon.73, ptr %57, i32 0, i32 4, !dbg !4027
  %58 = load i8, ptr %rma_lane, align 4, !dbg !4027, !tbaa !2831
  %conv67 = zext i8 %58 to i32, !dbg !4027
  %cmp68 = icmp eq i32 %conv67, 255, !dbg !4027
  %conv69 = zext i1 %cmp68 to i32, !dbg !4027
  %conv70 = sext i32 %conv69 to i64, !dbg !4027
  %expval71 = call i64 @llvm.expect.i64(i64 %conv70, i64 0), !dbg !4027
  %tobool72 = icmp ne i64 %expval71, 0, !dbg !4027
  br i1 %tobool72, label %if.then73, label %if.end87, !dbg !4022

if.then73:                                        ; preds = %if.end66
  br label %do.body74, !dbg !4029

do.body74:                                        ; preds = %if.then73
  br label %do.body75, !dbg !4031

do.body75:                                        ; preds = %do.body74
  %59 = load i32, ptr @ucs_global_opts, align 8, !dbg !4033, !tbaa !3341
  %cmp76 = icmp ule i32 1, %59, !dbg !4033
  %land.ext = zext i1 %cmp76 to i32, !dbg !4033
  %conv78 = sext i32 %land.ext to i64, !dbg !4033
  %expval79 = call i64 @llvm.expect.i64(i64 %conv78, i64 0), !dbg !4033
  %tobool80 = icmp ne i64 %expval79, 0, !dbg !4033
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !4036

if.then81:                                        ; preds = %do.body75
  %60 = load ptr, ptr %rkey.addr, align 8, !dbg !4037, !tbaa !2816
  %md_map = getelementptr inbounds %struct.ucp_rkey, ptr %60, i32 0, i32 1, !dbg !4037
  %61 = load i64, ptr %md_map, align 8, !dbg !4037, !tbaa !3346
  call void (ptr, i32, ptr, i32, ptr, ptr, ...) @ucs_log_dispatch(ptr noundef @.str.2, i32 noundef 397, ptr noundef @__func__.ucp_get_nbx, i32 noundef 1, ptr noundef @ucs_global_opts, ptr noundef @.str.3, i64 noundef %61), !dbg !4037
  br label %if.end82, !dbg !4037

if.end82:                                         ; preds = %if.then81, %do.body75
  br label %do.cond83, !dbg !4036

do.cond83:                                        ; preds = %if.end82
  br label %do.end84, !dbg !4036

do.end84:                                         ; preds = %do.cond83
  br label %do.cond85, !dbg !4031

do.cond85:                                        ; preds = %do.end84
  br label %do.end86, !dbg !4031

do.end86:                                         ; preds = %do.cond85
  store i8 -6, ptr %_status_nc, align 1, !dbg !4029, !tbaa !2831
  br label %if.end87, !dbg !4029

if.end87:                                         ; preds = %do.end86, %if.end66
  %62 = load i8, ptr %_status_nc, align 1, !dbg !4022, !tbaa !2831
  store i8 %62, ptr %tmp88, align 1, !dbg !4027, !tbaa !2831
  call void @llvm.lifetime.end.p0(i64 1, ptr %_status_nc) #10, !dbg !4039
  %63 = load i8, ptr %tmp88, align 1, !dbg !4022, !tbaa !2831
  store i8 %63, ptr %status, align 1, !dbg !4040, !tbaa !2831
  %64 = load i8, ptr %status, align 1, !dbg !4041, !tbaa !2831
  %conv89 = sext i8 %64 to i32, !dbg !4041
  %cmp90 = icmp ne i32 %conv89, 0, !dbg !4043
  br i1 %cmp90, label %if.then92, label %if.end94, !dbg !4044

if.then92:                                        ; preds = %if.end87
  %65 = load i8, ptr %status, align 1, !dbg !4045, !tbaa !2831
  %conv93 = sext i8 %65 to i64, !dbg !4045
  %66 = inttoptr i64 %conv93 to ptr, !dbg !4045
  store ptr %66, ptr %ret, align 8, !dbg !4047, !tbaa !2816
  br label %out_unlock, !dbg !4048

if.end94:                                         ; preds = %if.end87
  %67 = load ptr, ptr %ep.addr, align 8, !dbg !4049, !tbaa !2816
  %call95 = call ptr @ucp_ep_config(ptr noundef %67), !dbg !4050
  %rma = getelementptr inbounds %struct.ucp_ep_config, ptr %call95, i32 0, i32 3, !dbg !4051
  %68 = load ptr, ptr %rkey.addr, align 8, !dbg !4052, !tbaa !2816
  %69 = getelementptr inbounds %struct.ucp_rkey, ptr %68, i32 0, i32 0, !dbg !4053
  %rma_lane96 = getelementptr inbounds %struct.anon.73, ptr %69, i32 0, i32 4, !dbg !4054
  %70 = load i8, ptr %rma_lane96, align 4, !dbg !4054, !tbaa !2831
  %idxprom = zext i8 %70 to i64, !dbg !4050
  %arrayidx = getelementptr inbounds [16 x %struct.ucp_ep_rma_config], ptr %rma, i64 0, i64 %idxprom, !dbg !4050
  store ptr %arrayidx, ptr %rma_config, align 8, !dbg !4055, !tbaa !2816
  %71 = load ptr, ptr %ep.addr, align 8, !dbg !4056, !tbaa !2816
  %72 = load ptr, ptr %buffer.addr, align 8, !dbg !4057, !tbaa !2816
  %73 = load i64, ptr %count.addr, align 8, !dbg !4058, !tbaa !2829
  %74 = load i64, ptr %remote_addr.addr, align 8, !dbg !4059, !tbaa !2829
  %75 = load ptr, ptr %rkey.addr, align 8, !dbg !4060, !tbaa !2816
  %76 = load ptr, ptr %rkey.addr, align 8, !dbg !4061, !tbaa !2816
  %77 = getelementptr inbounds %struct.ucp_rkey, ptr %76, i32 0, i32 0, !dbg !4061
  %rma_proto_index = getelementptr inbounds %struct.anon.73, ptr %77, i32 0, i32 7, !dbg !4061
  %78 = load i8, ptr %rma_proto_index, align 1, !dbg !4061, !tbaa !2831
  %idxprom97 = zext i8 %78 to i64, !dbg !4061
  %arrayidx98 = getelementptr inbounds [0 x ptr], ptr @ucp_rma_proto_list, i64 0, i64 %idxprom97, !dbg !4061
  %79 = load ptr, ptr %arrayidx98, align 8, !dbg !4061, !tbaa !2816
  %progress_get = getelementptr inbounds %struct.ucp_rma_proto, ptr %79, i32 0, i32 2, !dbg !4062
  %80 = load ptr, ptr %progress_get, align 8, !dbg !4062, !tbaa !4063
  %81 = load ptr, ptr %rma_config, align 8, !dbg !4064, !tbaa !2816
  %get_zcopy_thresh = getelementptr inbounds %struct.ucp_ep_rma_config, ptr %81, i32 0, i32 7, !dbg !4065
  %82 = load i64, ptr %get_zcopy_thresh, align 8, !dbg !4065, !tbaa !4066
  %83 = load ptr, ptr %param.addr, align 8, !dbg !4067, !tbaa !2816
  %call99 = call ptr @ucp_rma_nonblocking(ptr noundef %71, ptr noundef %72, i64 noundef %73, i64 noundef %74, ptr noundef %75, ptr noundef %80, i64 noundef %82, ptr noundef %83), !dbg !4068
  store ptr %call99, ptr %ret, align 8, !dbg !4069, !tbaa !2816
  br label %if.end100

if.end100:                                        ; preds = %if.end94, %if.end53
  br label %out_unlock, !dbg !3954

out_unlock:                                       ; preds = %if.end100, %cleanup, %if.then92
  tail call void @llvm.dbg.label(metadata !3904), !dbg !4070
  %84 = load ptr, ptr %ret, align 8, !dbg !4071, !tbaa !2816
  store ptr %84, ptr %retval, align 8, !dbg !4072
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup101, !dbg !4072

cleanup101:                                       ; preds = %out_unlock, %cleanup, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %datatype) #10, !dbg !4073
  call void @llvm.lifetime.end.p0(i64 8, ptr %req) #10, !dbg !4073
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #10, !dbg !4073
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #10, !dbg !4073
  call void @llvm.lifetime.end.p0(i64 8, ptr %rma_config) #10, !dbg !4073
  call void @llvm.lifetime.end.p0(i64 8, ptr %contig_length) #10, !dbg !4073
  call void @llvm.lifetime.end.p0(i64 8, ptr %worker) #10, !dbg !4073
  %85 = load ptr, ptr %retval, align 8, !dbg !4073
  ret ptr %85, !dbg !4073
}

; Function Attrs: nounwind uwtable
define ptr @ucp_get_nb(ptr noundef %ep, ptr noundef %buffer, i64 noundef %length, i64 noundef %remote_addr, ptr noundef %rkey, ptr noundef %cb) #4 !dbg !4074 {
entry:
  %ep.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %remote_addr.addr = alloca i64, align 8
  %rkey.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %param = alloca %struct.ucp_request_param_t, align 8
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ep.addr, metadata !4078, metadata !DIExpression()), !dbg !4085
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !4079, metadata !DIExpression()), !dbg !4086
  store i64 %length, ptr %length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !4080, metadata !DIExpression()), !dbg !4087
  store i64 %remote_addr, ptr %remote_addr.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %remote_addr.addr, metadata !4081, metadata !DIExpression()), !dbg !4088
  store ptr %rkey, ptr %rkey.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %rkey.addr, metadata !4082, metadata !DIExpression()), !dbg !4089
  store ptr %cb, ptr %cb.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !4083, metadata !DIExpression()), !dbg !4090
  call void @llvm.lifetime.start.p0(i64 72, ptr %param) #10, !dbg !4091
  tail call void @llvm.dbg.declare(metadata ptr %param, metadata !4084, metadata !DIExpression()), !dbg !4092
  call void @llvm.memset.p0.i64(ptr align 8 %param, i8 0, i64 72, i1 false), !dbg !4092
  %op_attr_mask = getelementptr inbounds %struct.ucp_request_param_t, ptr %param, i32 0, i32 0, !dbg !4093
  store i32 2, ptr %op_attr_mask, align 8, !dbg !4093, !tbaa !3189
  %cb1 = getelementptr inbounds %struct.ucp_request_param_t, ptr %param, i32 0, i32 3, !dbg !4093
  %0 = load ptr, ptr %cb.addr, align 8, !dbg !4094, !tbaa !2816
  store ptr %0, ptr %cb1, align 8, !dbg !4095, !tbaa !2831
  %1 = load ptr, ptr %ep.addr, align 8, !dbg !4096, !tbaa !2816
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !4097, !tbaa !2816
  %3 = load i64, ptr %length.addr, align 8, !dbg !4098, !tbaa !2829
  %4 = load i64, ptr %remote_addr.addr, align 8, !dbg !4099, !tbaa !2829
  %5 = load ptr, ptr %rkey.addr, align 8, !dbg !4100, !tbaa !2816
  %call = call ptr @ucp_get_nbx(ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %param), !dbg !4101
  call void @llvm.lifetime.end.p0(i64 72, ptr %param) #10, !dbg !4102
  ret ptr %call, !dbg !4103
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @ucp_request_param_datatype(ptr noundef %param) #0 !dbg !4104 {
entry:
  %param.addr = alloca ptr, align 8
  store ptr %param, ptr %param.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !4108, metadata !DIExpression()), !dbg !4109
  %0 = load ptr, ptr %param.addr, align 8, !dbg !4110, !tbaa !2816
  %op_attr_mask = getelementptr inbounds %struct.ucp_request_param_t, ptr %0, i32 0, i32 0, !dbg !4111
  %1 = load i32, ptr %op_attr_mask, align 8, !dbg !4111, !tbaa !3189
  %and = and i32 %1, 8, !dbg !4112
  %tobool = icmp ne i32 %and, 0, !dbg !4112
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4113

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %param.addr, align 8, !dbg !4114, !tbaa !2816
  %datatype = getelementptr inbounds %struct.ucp_request_param_t, ptr %2, i32 0, i32 4, !dbg !4115
  %3 = load i64, ptr %datatype, align 8, !dbg !4115, !tbaa !3298
  br label %cond.end, !dbg !4113

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4113

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ 8, %cond.false ], !dbg !4113
  ret i64 %cond, !dbg !4116
}

; Function Attrs: nounwind uwtable
define signext i8 @ucp_put(ptr noundef %ep, ptr noundef %buffer, i64 noundef %length, i64 noundef %remote_addr, ptr noundef %rkey) #4 !dbg !4117 {
entry:
  %ep.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %remote_addr.addr = alloca i64, align 8
  %rkey.addr = alloca ptr, align 8
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ep.addr, metadata !4119, metadata !DIExpression()), !dbg !4124
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !4120, metadata !DIExpression()), !dbg !4124
  store i64 %length, ptr %length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !4121, metadata !DIExpression()), !dbg !4124
  store i64 %remote_addr, ptr %remote_addr.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %remote_addr.addr, metadata !4122, metadata !DIExpression()), !dbg !4124
  store ptr %rkey, ptr %rkey.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %rkey.addr, metadata !4123, metadata !DIExpression()), !dbg !4124
  %0 = load ptr, ptr %ep.addr, align 8, !dbg !4125, !tbaa !2816
  %worker = getelementptr inbounds %struct.ucp_ep, ptr %0, i32 0, i32 0, !dbg !4126
  %1 = load ptr, ptr %worker, align 8, !dbg !4126, !tbaa !3153
  %2 = load ptr, ptr %ep.addr, align 8, !dbg !4127, !tbaa !2816
  %3 = load ptr, ptr %buffer.addr, align 8, !dbg !4128, !tbaa !2816
  %4 = load i64, ptr %length.addr, align 8, !dbg !4129, !tbaa !2829
  %5 = load i64, ptr %remote_addr.addr, align 8, !dbg !4130, !tbaa !2829
  %6 = load ptr, ptr %rkey.addr, align 8, !dbg !4131, !tbaa !2816
  %call = call ptr @ucp_put_nb(ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef @ucs_empty_function), !dbg !4132
  %call1 = call signext i8 @ucp_rma_wait(ptr noundef %1, ptr noundef %call, ptr noundef @.str.4), !dbg !4133
  ret i8 %call1, !dbg !4134
}

; Function Attrs: inlinehint nounwind uwtable
define internal signext i8 @ucp_rma_wait(ptr noundef %worker, ptr noundef %user_req, ptr noundef %op_name) #6 !dbg !4135 {
entry:
  %retval = alloca i8, align 1
  %worker.addr = alloca ptr, align 8
  %user_req.addr = alloca ptr, align 8
  %op_name.addr = alloca ptr, align 8
  %status = alloca i8, align 1
  %req = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %worker, ptr %worker.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %worker.addr, metadata !4139, metadata !DIExpression()), !dbg !4144
  store ptr %user_req, ptr %user_req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %user_req.addr, metadata !4140, metadata !DIExpression()), !dbg !4145
  store ptr %op_name, ptr %op_name.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %op_name.addr, metadata !4141, metadata !DIExpression()), !dbg !4146
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #10, !dbg !4147
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !4142, metadata !DIExpression()), !dbg !4148
  call void @llvm.lifetime.start.p0(i64 8, ptr %req) #10, !dbg !4149
  tail call void @llvm.dbg.declare(metadata ptr %req, metadata !4143, metadata !DIExpression()), !dbg !4150
  %0 = load ptr, ptr %user_req.addr, align 8, !dbg !4151, !tbaa !2816
  %cmp = icmp eq ptr %0, null, !dbg !4151
  %conv = zext i1 %cmp to i32, !dbg !4151
  %conv1 = sext i32 %conv to i64, !dbg !4151
  %expval = call i64 @llvm.expect.i64(i64 %conv1, i64 1), !dbg !4151
  %tobool = icmp ne i64 %expval, 0, !dbg !4151
  br i1 %tobool, label %if.then, label %if.else, !dbg !4153

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1, !dbg !4154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4154

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %user_req.addr, align 8, !dbg !4156, !tbaa !2816
  %2 = ptrtoint ptr %1 to i64, !dbg !4156
  %cmp2 = icmp uge i64 %2, -100, !dbg !4156
  %conv3 = zext i1 %cmp2 to i32, !dbg !4156
  %conv4 = sext i32 %conv3 to i64, !dbg !4156
  %expval5 = call i64 @llvm.expect.i64(i64 %conv4, i64 0), !dbg !4156
  %tobool6 = icmp ne i64 %expval5, 0, !dbg !4156
  br i1 %tobool6, label %if.then7, label %if.else32, !dbg !4158

if.then7:                                         ; preds = %if.else
  br label %do.body, !dbg !4159

do.body:                                          ; preds = %if.then7
  br label %do.body8, !dbg !4161

do.body8:                                         ; preds = %do.body
  %3 = load i32, ptr @ucs_global_opts, align 8, !dbg !4163, !tbaa !3341
  %cmp9 = icmp ule i32 2, %3, !dbg !4163
  %land.ext = zext i1 %cmp9 to i32, !dbg !4163
  %conv11 = sext i32 %land.ext to i64, !dbg !4163
  %expval12 = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !4163
  %tobool13 = icmp ne i64 %expval12, 0, !dbg !4163
  br i1 %tobool13, label %if.then14, label %if.end, !dbg !4166

if.then14:                                        ; preds = %do.body8
  %4 = load ptr, ptr %op_name.addr, align 8, !dbg !4167, !tbaa !2816
  %5 = load ptr, ptr %user_req.addr, align 8, !dbg !4167, !tbaa !2816
  %6 = ptrtoint ptr %5 to i64, !dbg !4167
  %sub = sub i64 %6, 1, !dbg !4167
  %cmp15 = icmp ult i64 %sub, -101, !dbg !4167
  br i1 %cmp15, label %cond.true, label %cond.false, !dbg !4167

cond.true:                                        ; preds = %if.then14
  br label %cond.end, !dbg !4167

cond.false:                                       ; preds = %if.then14
  %7 = load ptr, ptr %user_req.addr, align 8, !dbg !4167, !tbaa !2816
  %8 = ptrtoint ptr %7 to i64, !dbg !4167
  %conv17 = trunc i64 %8 to i8, !dbg !4167
  %conv18 = sext i8 %conv17 to i32, !dbg !4167
  br label %cond.end, !dbg !4167

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv18, %cond.false ], !dbg !4167
  %conv19 = trunc i32 %cond to i8, !dbg !4167
  %call = call ptr @ucs_status_string(i8 noundef signext %conv19), !dbg !4167
  call void (ptr, i32, ptr, i32, ptr, ptr, ...) @ucs_log_dispatch(ptr noundef @.str.12, i32 noundef 69, ptr noundef @__func__.ucp_rma_wait, i32 noundef 2, ptr noundef @ucs_global_opts, ptr noundef @.str.13, ptr noundef %4, ptr noundef %call), !dbg !4167
  br label %if.end, !dbg !4167

if.end:                                           ; preds = %cond.end, %do.body8
  br label %do.cond, !dbg !4166

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !4166

do.end:                                           ; preds = %do.cond
  br label %do.cond20, !dbg !4161

do.cond20:                                        ; preds = %do.end
  br label %do.end21, !dbg !4161

do.end21:                                         ; preds = %do.cond20
  %9 = load ptr, ptr %user_req.addr, align 8, !dbg !4169, !tbaa !2816
  %10 = ptrtoint ptr %9 to i64, !dbg !4169
  %sub22 = sub i64 %10, 1, !dbg !4169
  %cmp23 = icmp ult i64 %sub22, -101, !dbg !4169
  br i1 %cmp23, label %cond.true25, label %cond.false26, !dbg !4169

cond.true25:                                      ; preds = %do.end21
  br label %cond.end29, !dbg !4169

cond.false26:                                     ; preds = %do.end21
  %11 = load ptr, ptr %user_req.addr, align 8, !dbg !4169, !tbaa !2816
  %12 = ptrtoint ptr %11 to i64, !dbg !4169
  %conv27 = trunc i64 %12 to i8, !dbg !4169
  %conv28 = sext i8 %conv27 to i32, !dbg !4169
  br label %cond.end29, !dbg !4169

cond.end29:                                       ; preds = %cond.false26, %cond.true25
  %cond30 = phi i32 [ 1, %cond.true25 ], [ %conv28, %cond.false26 ], !dbg !4169
  %conv31 = trunc i32 %cond30 to i8, !dbg !4169
  store i8 %conv31, ptr %retval, align 1, !dbg !4170
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4170

if.else32:                                        ; preds = %if.else
  %13 = load ptr, ptr %user_req.addr, align 8, !dbg !4171, !tbaa !2816
  %add.ptr = getelementptr inbounds %struct.ucp_request, ptr %13, i64 -1, !dbg !4173
  store ptr %add.ptr, ptr %req, align 8, !dbg !4174, !tbaa !2816
  br label %do.body33, !dbg !4175

do.body33:                                        ; preds = %do.cond35, %if.else32
  %14 = load ptr, ptr %worker.addr, align 8, !dbg !4176, !tbaa !2816
  %call34 = call i32 @ucp_worker_progress(ptr noundef %14), !dbg !4178
  br label %do.cond35, !dbg !4179

do.cond35:                                        ; preds = %do.body33
  %15 = load ptr, ptr %req, align 8, !dbg !4180, !tbaa !2816
  %flags = getelementptr inbounds %struct.ucp_request, ptr %15, i32 0, i32 1, !dbg !4181
  %16 = load i32, ptr %flags, align 4, !dbg !4181, !tbaa !3651
  %and = and i32 %16, 1, !dbg !4182
  %tobool36 = icmp ne i32 %and, 0, !dbg !4183
  %lnot = xor i1 %tobool36, true, !dbg !4183
  br i1 %lnot, label %do.body33, label %do.end37, !dbg !4179, !llvm.loop !4184

do.end37:                                         ; preds = %do.cond35
  %17 = load ptr, ptr %req, align 8, !dbg !4187, !tbaa !2816
  %status38 = getelementptr inbounds %struct.ucp_request, ptr %17, i32 0, i32 0, !dbg !4188
  %18 = load i8, ptr %status38, align 8, !dbg !4188, !tbaa !3663
  store i8 %18, ptr %status, align 1, !dbg !4189, !tbaa !2831
  %19 = load ptr, ptr %user_req.addr, align 8, !dbg !4190, !tbaa !2816
  call void @ucp_request_release(ptr noundef %19), !dbg !4191
  %20 = load i8, ptr %status, align 1, !dbg !4192, !tbaa !2831
  store i8 %20, ptr %retval, align 1, !dbg !4193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4193

cleanup:                                          ; preds = %do.end37, %cond.end29, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %req) #10, !dbg !4194
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #10, !dbg !4194
  %21 = load i8, ptr %retval, align 1, !dbg !4194
  ret i8 %21, !dbg !4194
}

declare void @ucs_empty_function(...) #2

; Function Attrs: nounwind uwtable
define signext i8 @ucp_get(ptr noundef %ep, ptr noundef %buffer, i64 noundef %length, i64 noundef %remote_addr, ptr noundef %rkey) #4 !dbg !4195 {
entry:
  %ep.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %remote_addr.addr = alloca i64, align 8
  %rkey.addr = alloca ptr, align 8
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ep.addr, metadata !4197, metadata !DIExpression()), !dbg !4202
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !4198, metadata !DIExpression()), !dbg !4202
  store i64 %length, ptr %length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !4199, metadata !DIExpression()), !dbg !4202
  store i64 %remote_addr, ptr %remote_addr.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %remote_addr.addr, metadata !4200, metadata !DIExpression()), !dbg !4202
  store ptr %rkey, ptr %rkey.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %rkey.addr, metadata !4201, metadata !DIExpression()), !dbg !4202
  %0 = load ptr, ptr %ep.addr, align 8, !dbg !4203, !tbaa !2816
  %worker = getelementptr inbounds %struct.ucp_ep, ptr %0, i32 0, i32 0, !dbg !4204
  %1 = load ptr, ptr %worker, align 8, !dbg !4204, !tbaa !3153
  %2 = load ptr, ptr %ep.addr, align 8, !dbg !4205, !tbaa !2816
  %3 = load ptr, ptr %buffer.addr, align 8, !dbg !4206, !tbaa !2816
  %4 = load i64, ptr %length.addr, align 8, !dbg !4207, !tbaa !2829
  %5 = load i64, ptr %remote_addr.addr, align 8, !dbg !4208, !tbaa !2829
  %6 = load ptr, ptr %rkey.addr, align 8, !dbg !4209, !tbaa !2816
  %call = call ptr @ucp_get_nb(ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef @ucs_empty_function), !dbg !4210
  %call1 = call signext i8 @ucp_rma_wait(ptr noundef %1, ptr noundef %call, ptr noundef @.str.5), !dbg !4211
  ret i8 %call1, !dbg !4212
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @ucp_worker_iface(ptr noundef %worker, i8 noundef zeroext %rsc_index) #0 !dbg !4213 {
entry:
  %retval = alloca ptr, align 8
  %worker.addr = alloca ptr, align 8
  %rsc_index.addr = alloca i8, align 1
  %tl_bitmap = alloca %struct.ucs_bitmap_128_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %_word_index = alloca i64, align 8
  %_popcount = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %worker, ptr %worker.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %worker.addr, metadata !4217, metadata !DIExpression()), !dbg !4223
  store i8 %rsc_index, ptr %rsc_index.addr, align 1, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %rsc_index.addr, metadata !4218, metadata !DIExpression()), !dbg !4224
  call void @llvm.lifetime.start.p0(i64 16, ptr %tl_bitmap) #10, !dbg !4225
  tail call void @llvm.dbg.declare(metadata ptr %tl_bitmap, metadata !4219, metadata !DIExpression()), !dbg !4226
  %0 = load i8, ptr %rsc_index.addr, align 1, !dbg !4227, !tbaa !2831
  %conv = zext i8 %0 to i32, !dbg !4227
  %cmp = icmp eq i32 %conv, 255, !dbg !4229
  br i1 %cmp, label %if.then, label %if.end, !dbg !4230

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4231

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %worker.addr, align 8, !dbg !4233, !tbaa !2816
  %context = getelementptr inbounds %struct.ucp_worker, ptr %1, i32 0, i32 2, !dbg !4234
  %2 = load ptr, ptr %context, align 8, !dbg !4234, !tbaa !3195
  %tl_bitmap2 = getelementptr inbounds %struct.ucp_context, ptr %2, i32 0, i32 12, !dbg !4235
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tl_bitmap, ptr align 8 %tl_bitmap2, i64 16, i1 false), !dbg !4235, !tbaa.struct !4236
  %3 = load ptr, ptr %worker.addr, align 8, !dbg !4237, !tbaa !2816
  %ifaces = getelementptr inbounds %struct.ucp_worker, ptr %3, i32 0, i32 25, !dbg !4238
  %4 = load ptr, ptr %ifaces, align 8, !dbg !4238, !tbaa !4239
  call void @llvm.lifetime.start.p0(i64 8, ptr %_word_index) #10, !dbg !4240
  tail call void @llvm.dbg.declare(metadata ptr %_word_index, metadata !4220, metadata !DIExpression()), !dbg !4240
  store i64 0, ptr %_word_index, align 8, !dbg !4240, !tbaa !2829
  call void @llvm.lifetime.start.p0(i64 8, ptr %_popcount) #10, !dbg !4240
  tail call void @llvm.dbg.declare(metadata ptr %_popcount, metadata !4222, metadata !DIExpression()), !dbg !4240
  store i64 0, ptr %_popcount, align 8, !dbg !4240, !tbaa !2829
  store i64 0, ptr %_word_index, align 8, !dbg !4241, !tbaa !2829
  br label %for.cond, !dbg !4241

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, ptr %_word_index, align 8, !dbg !4243, !tbaa !2829
  %cmp3 = icmp ult i64 %5, 2, !dbg !4243
  br i1 %cmp3, label %for.body, label %for.end, !dbg !4241

for.body:                                         ; preds = %for.cond
  %6 = load i8, ptr %rsc_index.addr, align 1, !dbg !4245, !tbaa !2831
  %conv5 = zext i8 %6 to i64, !dbg !4245
  %7 = load i64, ptr %_word_index, align 8, !dbg !4245, !tbaa !2829
  %add = add i64 %7, 1, !dbg !4245
  %mul = mul i64 %add, 64, !dbg !4245
  %cmp6 = icmp uge i64 %conv5, %mul, !dbg !4245
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !4248

if.then8:                                         ; preds = %for.body
  %bits = getelementptr inbounds %struct.ucs_bitmap_128_t, ptr %tl_bitmap, i32 0, i32 0, !dbg !4249
  %8 = load i64, ptr %_word_index, align 8, !dbg !4249, !tbaa !2829
  %arrayidx = getelementptr inbounds [2 x i64], ptr %bits, i64 0, i64 %8, !dbg !4249
  %9 = load i64, ptr %arrayidx, align 8, !dbg !4249, !tbaa !2829
  %10 = call i64 @llvm.ctpop.i64(i64 %9), !dbg !4249
  %cast = trunc i64 %10 to i32, !dbg !4249
  %conv9 = sext i32 %cast to i64, !dbg !4249
  %11 = load i64, ptr %_popcount, align 8, !dbg !4249, !tbaa !2829
  %add10 = add i64 %11, %conv9, !dbg !4249
  store i64 %add10, ptr %_popcount, align 8, !dbg !4249, !tbaa !2829
  br label %if.end17, !dbg !4249

if.else:                                          ; preds = %for.body
  %bits11 = getelementptr inbounds %struct.ucs_bitmap_128_t, ptr %tl_bitmap, i32 0, i32 0, !dbg !4251
  %12 = load i64, ptr %_word_index, align 8, !dbg !4251, !tbaa !2829
  %arrayidx12 = getelementptr inbounds [2 x i64], ptr %bits11, i64 0, i64 %12, !dbg !4251
  %13 = load i64, ptr %arrayidx12, align 8, !dbg !4251, !tbaa !2829
  %14 = load i8, ptr %rsc_index.addr, align 1, !dbg !4251, !tbaa !2831
  %conv13 = zext i8 %14 to i64, !dbg !4251
  %rem = urem i64 %conv13, 64, !dbg !4251
  %shl = shl i64 1, %rem, !dbg !4251
  %sub = sub i64 %shl, 1, !dbg !4251
  %and = and i64 %13, %sub, !dbg !4251
  %15 = call i64 @llvm.ctpop.i64(i64 %and), !dbg !4251
  %cast14 = trunc i64 %15 to i32, !dbg !4251
  %conv15 = sext i32 %cast14 to i64, !dbg !4251
  %16 = load i64, ptr %_popcount, align 8, !dbg !4251, !tbaa !2829
  %add16 = add i64 %16, %conv15, !dbg !4251
  store i64 %add16, ptr %_popcount, align 8, !dbg !4251, !tbaa !2829
  br label %for.end, !dbg !4251

if.end17:                                         ; preds = %if.then8
  br label %for.inc, !dbg !4248

for.inc:                                          ; preds = %if.end17
  %17 = load i64, ptr %_word_index, align 8, !dbg !4243, !tbaa !2829
  %inc = add i64 %17, 1, !dbg !4243
  store i64 %inc, ptr %_word_index, align 8, !dbg !4243, !tbaa !2829
  br label %for.cond, !dbg !4243, !llvm.loop !4253

for.end:                                          ; preds = %if.else, %for.cond
  %18 = load i64, ptr %_popcount, align 8, !dbg !4240, !tbaa !2829
  store i64 %18, ptr %tmp, align 8, !dbg !4241, !tbaa !2829
  call void @llvm.lifetime.end.p0(i64 8, ptr %_popcount) #10, !dbg !4254
  call void @llvm.lifetime.end.p0(i64 8, ptr %_word_index) #10, !dbg !4254
  %19 = load i64, ptr %tmp, align 8, !dbg !4240, !tbaa !2829
  %arrayidx18 = getelementptr inbounds ptr, ptr %4, i64 %19, !dbg !4237
  %20 = load ptr, ptr %arrayidx18, align 8, !dbg !4237, !tbaa !2816
  store ptr %20, ptr %retval, align 8, !dbg !4255
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4255

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %tl_bitmap) #10, !dbg !4256
  %21 = load ptr, ptr %retval, align 8, !dbg !4256
  ret ptr %21, !dbg !4256
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #8

declare !dbg !4257 void @ucp_request_send_state_ff(ptr noundef, i8 noundef signext) #2

; Function Attrs: noreturn
declare !dbg !4258 void @ucs_fatal_error_format(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #9

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @ucp_proto_select_is_short(ptr noundef %ep, ptr noundef %proto_short, i64 noundef %length) #0 !dbg !4262 {
entry:
  %ep.addr = alloca ptr, align 8
  %proto_short.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ep.addr, metadata !4269, metadata !DIExpression()), !dbg !4272
  store ptr %proto_short, ptr %proto_short.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %proto_short.addr, metadata !4270, metadata !DIExpression()), !dbg !4273
  store i64 %length, ptr %length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !4271, metadata !DIExpression()), !dbg !4274
  %0 = load i64, ptr %length.addr, align 8, !dbg !4275, !tbaa !2829
  %1 = load ptr, ptr %proto_short.addr, align 8, !dbg !4275, !tbaa !2816
  %max_length_unknown_mem = getelementptr inbounds %struct.ucp_proto_select_short_t, ptr %1, i32 0, i32 1, !dbg !4275
  %2 = load i64, ptr %max_length_unknown_mem, align 8, !dbg !4275, !tbaa !4276
  %cmp = icmp sle i64 %0, %2, !dbg !4275
  %conv = zext i1 %cmp to i32, !dbg !4275
  %conv1 = sext i32 %conv to i64, !dbg !4275
  %expval = call i64 @llvm.expect.i64(i64 %conv1, i64 1), !dbg !4275
  %tobool = icmp ne i64 %expval, 0, !dbg !4275
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !4277

lor.rhs:                                          ; preds = %entry
  %3 = load i64, ptr %length.addr, align 8, !dbg !4278, !tbaa !2829
  %4 = load ptr, ptr %proto_short.addr, align 8, !dbg !4279, !tbaa !2816
  %max_length_host_mem = getelementptr inbounds %struct.ucp_proto_select_short_t, ptr %4, i32 0, i32 0, !dbg !4280
  %5 = load i64, ptr %max_length_host_mem, align 8, !dbg !4280, !tbaa !4281
  %cmp2 = icmp sle i64 %3, %5, !dbg !4282
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !4283

land.rhs:                                         ; preds = %lor.rhs
  %call = call i32 @ucs_memtype_cache_is_empty(), !dbg !4284
  %tobool4 = icmp ne i32 %call, 0, !dbg !4283
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %tobool4, %land.rhs ], !dbg !4285
  br label %lor.end, !dbg !4277

lor.end:                                          ; preds = %land.end, %entry
  %7 = phi i1 [ true, %entry ], [ %6, %land.end ]
  %lor.ext = zext i1 %7 to i32, !dbg !4277
  ret i32 %lor.ext, !dbg !4286
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @ucp_rkey_get_tl_rkey(ptr noundef %rkey, i8 noundef zeroext %rkey_index) #0 !dbg !4287 {
entry:
  %retval = alloca i64, align 8
  %rkey.addr = alloca ptr, align 8
  %rkey_index.addr = alloca i8, align 1
  store ptr %rkey, ptr %rkey.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %rkey.addr, metadata !4291, metadata !DIExpression()), !dbg !4293
  store i8 %rkey_index, ptr %rkey_index.addr, align 1, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %rkey_index.addr, metadata !4292, metadata !DIExpression()), !dbg !4294
  %0 = load i8, ptr %rkey_index.addr, align 1, !dbg !4295, !tbaa !2831
  %conv = zext i8 %0 to i32, !dbg !4295
  %cmp = icmp eq i32 %conv, 255, !dbg !4297
  br i1 %cmp, label %if.then, label %if.end, !dbg !4298

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !4299
  br label %return, !dbg !4299

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %rkey.addr, align 8, !dbg !4301, !tbaa !2816
  %tl_rkey = getelementptr inbounds %struct.ucp_rkey, ptr %1, i32 0, i32 2, !dbg !4302
  %2 = load i8, ptr %rkey_index.addr, align 1, !dbg !4303, !tbaa !2831
  %idxprom = zext i8 %2 to i64, !dbg !4301
  %arrayidx = getelementptr inbounds [0 x %struct.ucp_tl_rkey], ptr %tl_rkey, i64 0, i64 %idxprom, !dbg !4301
  %rkey2 = getelementptr inbounds %struct.ucp_tl_rkey, ptr %arrayidx, i32 0, i32 0, !dbg !4304
  %rkey3 = getelementptr inbounds %struct.uct_rkey_bundle, ptr %rkey2, i32 0, i32 0, !dbg !4305
  %3 = load i64, ptr %rkey3, align 8, !dbg !4305, !tbaa !4306
  store i64 %3, ptr %retval, align 8, !dbg !4309
  br label %return, !dbg !4309

return:                                           ; preds = %if.end, %if.then
  %4 = load i64, ptr %retval, align 8, !dbg !4310
  ret i64 %4, !dbg !4310
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @ucs_memtype_cache_is_empty() #0 !dbg !4311 {
entry:
  %0 = load ptr, ptr @ucs_memtype_cache_global_instance, align 8, !dbg !4315, !tbaa !2816
  %cmp = icmp ne ptr %0, null, !dbg !4316
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4317

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr @ucs_memtype_cache_global_instance, align 8, !dbg !4318, !tbaa !2816
  %pgtable = getelementptr inbounds %struct.ucs_memtype_cache, ptr %1, i32 0, i32 1, !dbg !4319
  %num_regions = getelementptr inbounds %struct.ucs_pgtable, ptr %pgtable, i32 0, i32 4, !dbg !4320
  %2 = load i32, ptr %num_regions, align 4, !dbg !4320, !tbaa !4321
  %cmp1 = icmp eq i32 %2, 0, !dbg !4325
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !4326
  %land.ext = zext i1 %3 to i32, !dbg !4317
  ret i32 %land.ext, !dbg !4327
}

declare !dbg !4328 ptr @ucs_mpool_get_grow(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ucp_contig_dt_elem_size(i64 noundef %datatype) #6 !dbg !4329 {
entry:
  %datatype.addr = alloca i64, align 8
  store i64 %datatype, ptr %datatype.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %datatype.addr, metadata !4333, metadata !DIExpression()), !dbg !4334
  %0 = load i64, ptr %datatype.addr, align 8, !dbg !4335, !tbaa !2829
  %shr = lshr i64 %0, 3, !dbg !4336
  ret i64 %shr, !dbg !4337
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_proto_request_send_init(ptr noundef %req, ptr noundef %ep, i32 noundef %flags) #0 !dbg !4338 {
entry:
  %req.addr = alloca ptr, align 8
  %ep.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !4342, metadata !DIExpression()), !dbg !4345
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ep.addr, metadata !4343, metadata !DIExpression()), !dbg !4346
  store i32 %flags, ptr %flags.addr, align 4, !tbaa !2821
  tail call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4344, metadata !DIExpression()), !dbg !4347
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4348, !tbaa !2821
  %or = or i32 4, %0, !dbg !4349
  %1 = load ptr, ptr %req.addr, align 8, !dbg !4350, !tbaa !2816
  %flags1 = getelementptr inbounds %struct.ucp_request, ptr %1, i32 0, i32 1, !dbg !4351
  store i32 %or, ptr %flags1, align 4, !dbg !4352, !tbaa !3651
  %2 = load ptr, ptr %ep.addr, align 8, !dbg !4353, !tbaa !2816
  %3 = load ptr, ptr %req.addr, align 8, !dbg !4354, !tbaa !2816
  %4 = getelementptr inbounds %struct.ucp_request, ptr %3, i32 0, i32 4, !dbg !4355
  %ep2 = getelementptr inbounds %struct.anon.9, ptr %4, i32 0, i32 0, !dbg !4356
  store ptr %2, ptr %ep2, align 8, !dbg !4357, !tbaa !2831
  ret void, !dbg !4358
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_datatype_iter_init(ptr noundef %context, ptr noundef %buffer, i64 noundef %count, i64 noundef %datatype, i64 noundef %contig_length, i32 noundef %is_pack, ptr noundef %dt_iter, ptr noundef %sg_count) #0 !dbg !4359 {
entry:
  %context.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %datatype.addr = alloca i64, align 8
  %contig_length.addr = alloca i64, align 8
  %is_pack.addr = alloca i32, align 4
  %dt_iter.addr = alloca ptr, align 8
  %sg_count.addr = alloca ptr, align 8
  %iov_length = alloca i64, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !4366, metadata !DIExpression()), !dbg !4375
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !4367, metadata !DIExpression()), !dbg !4376
  store i64 %count, ptr %count.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4368, metadata !DIExpression()), !dbg !4377
  store i64 %datatype, ptr %datatype.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %datatype.addr, metadata !4369, metadata !DIExpression()), !dbg !4378
  store i64 %contig_length, ptr %contig_length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %contig_length.addr, metadata !4370, metadata !DIExpression()), !dbg !4379
  store i32 %is_pack, ptr %is_pack.addr, align 4, !tbaa !2821
  tail call void @llvm.dbg.declare(metadata ptr %is_pack.addr, metadata !4371, metadata !DIExpression()), !dbg !4380
  store ptr %dt_iter, ptr %dt_iter.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %dt_iter.addr, metadata !4372, metadata !DIExpression()), !dbg !4381
  store ptr %sg_count, ptr %sg_count.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %sg_count.addr, metadata !4373, metadata !DIExpression()), !dbg !4382
  call void @llvm.lifetime.start.p0(i64 8, ptr %iov_length) #10, !dbg !4383
  tail call void @llvm.dbg.declare(metadata ptr %iov_length, metadata !4374, metadata !DIExpression()), !dbg !4384
  %0 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4385, !tbaa !2816
  %offset = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %0, i32 0, i32 3, !dbg !4386
  store i64 0, ptr %offset, align 8, !dbg !4387, !tbaa !4388
  %1 = load i64, ptr %datatype.addr, align 8, !dbg !4391, !tbaa !2829
  %call = call i32 @ucp_datatype_class(i64 noundef %1), !dbg !4392
  %2 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4393, !tbaa !2816
  %dt_class = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %2, i32 0, i32 0, !dbg !4394
  store i32 %call, ptr %dt_class, align 8, !dbg !4395, !tbaa !4396
  %3 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4397, !tbaa !2816
  %dt_class1 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %3, i32 0, i32 0, !dbg !4397
  %4 = load i32, ptr %dt_class1, align 8, !dbg !4397, !tbaa !4396
  %cmp = icmp eq i32 %4, 0, !dbg !4397
  %conv = zext i1 %cmp to i32, !dbg !4397
  %conv2 = sext i32 %conv to i64, !dbg !4397
  %expval = call i64 @llvm.expect.i64(i64 %conv2, i64 1), !dbg !4397
  %tobool = icmp ne i64 %expval, 0, !dbg !4397
  br i1 %tobool, label %if.then, label %if.else, !dbg !4399

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %context.addr, align 8, !dbg !4400, !tbaa !2816
  %6 = load ptr, ptr %buffer.addr, align 8, !dbg !4402, !tbaa !2816
  %7 = load i64, ptr %contig_length.addr, align 8, !dbg !4403, !tbaa !2829
  %8 = load i64, ptr %datatype.addr, align 8, !dbg !4404, !tbaa !2829
  %9 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4405, !tbaa !2816
  call void @ucp_datatype_contig_iter_init(ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8, ptr noundef %9), !dbg !4406
  %10 = load ptr, ptr %sg_count.addr, align 8, !dbg !4407, !tbaa !2816
  store i8 1, ptr %10, align 1, !dbg !4408, !tbaa !2831
  br label %if.end9, !dbg !4409

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4410, !tbaa !2816
  %dt_class3 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %11, i32 0, i32 0, !dbg !4412
  %12 = load i32, ptr %dt_class3, align 8, !dbg !4412, !tbaa !4396
  %cmp4 = icmp eq i32 %12, 2, !dbg !4413
  br i1 %cmp4, label %if.then6, label %if.else8, !dbg !4414

if.then6:                                         ; preds = %if.else
  %13 = load ptr, ptr %buffer.addr, align 8, !dbg !4415, !tbaa !2816
  %14 = load i64, ptr %count.addr, align 8, !dbg !4417, !tbaa !2829
  %call7 = call i64 @ucp_dt_iov_length(ptr noundef %13, i64 noundef %14), !dbg !4418
  store i64 %call7, ptr %iov_length, align 8, !dbg !4419, !tbaa !2829
  %15 = load ptr, ptr %context.addr, align 8, !dbg !4420, !tbaa !2816
  %16 = load ptr, ptr %buffer.addr, align 8, !dbg !4421, !tbaa !2816
  %17 = load i64, ptr %count.addr, align 8, !dbg !4422, !tbaa !2829
  %18 = load i64, ptr %datatype.addr, align 8, !dbg !4423, !tbaa !2829
  %19 = load i64, ptr %iov_length, align 8, !dbg !4424, !tbaa !2829
  %20 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4425, !tbaa !2816
  %21 = load ptr, ptr %sg_count.addr, align 8, !dbg !4426, !tbaa !2816
  call void @ucp_datatype_iov_iter_init(ptr noundef %15, ptr noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef %19, ptr noundef %20, ptr noundef %21), !dbg !4427
  br label %if.end, !dbg !4428

if.else8:                                         ; preds = %if.else
  %22 = load ptr, ptr %context.addr, align 8, !dbg !4429, !tbaa !2816
  %23 = load ptr, ptr %buffer.addr, align 8, !dbg !4431, !tbaa !2816
  %24 = load i64, ptr %count.addr, align 8, !dbg !4432, !tbaa !2829
  %25 = load i64, ptr %datatype.addr, align 8, !dbg !4433, !tbaa !2829
  %26 = load i32, ptr %is_pack.addr, align 4, !dbg !4434, !tbaa !2821
  %27 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4435, !tbaa !2816
  call void @ucp_datatype_generic_iter_init(ptr noundef %22, ptr noundef %23, i64 noundef %24, i64 noundef %25, i32 noundef %26, ptr noundef %27), !dbg !4436
  %28 = load ptr, ptr %sg_count.addr, align 8, !dbg !4437, !tbaa !2816
  store i8 0, ptr %28, align 1, !dbg !4438, !tbaa !2831
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then6
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %iov_length) #10, !dbg !4439
  ret void, !dbg !4439
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_proto_select_param_init(ptr noundef %select_param, i32 noundef %op_id, i32 noundef %op_attr_mask, i16 noundef zeroext %op_flags, i32 noundef %dt_class, ptr noundef %mem_info, i8 noundef zeroext %sg_count) #0 !dbg !4440 {
entry:
  %select_param.addr = alloca ptr, align 8
  %op_id.addr = alloca i32, align 4
  %op_attr_mask.addr = alloca i32, align 4
  %op_flags.addr = alloca i16, align 2
  %dt_class.addr = alloca i32, align 4
  %mem_info.addr = alloca ptr, align 8
  %sg_count.addr = alloca i8, align 1
  store ptr %select_param, ptr %select_param.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %select_param.addr, metadata !4447, metadata !DIExpression()), !dbg !4454
  store i32 %op_id, ptr %op_id.addr, align 4, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %op_id.addr, metadata !4448, metadata !DIExpression()), !dbg !4455
  store i32 %op_attr_mask, ptr %op_attr_mask.addr, align 4, !tbaa !2821
  tail call void @llvm.dbg.declare(metadata ptr %op_attr_mask.addr, metadata !4449, metadata !DIExpression()), !dbg !4456
  store i16 %op_flags, ptr %op_flags.addr, align 2, !tbaa !3602
  tail call void @llvm.dbg.declare(metadata ptr %op_flags.addr, metadata !4450, metadata !DIExpression()), !dbg !4457
  store i32 %dt_class, ptr %dt_class.addr, align 4, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %dt_class.addr, metadata !4451, metadata !DIExpression()), !dbg !4458
  store ptr %mem_info, ptr %mem_info.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %mem_info.addr, metadata !4452, metadata !DIExpression()), !dbg !4459
  store i8 %sg_count, ptr %sg_count.addr, align 1, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %sg_count.addr, metadata !4453, metadata !DIExpression()), !dbg !4460
  %0 = load i32, ptr %dt_class.addr, align 4, !dbg !4461, !tbaa !2831
  %cmp = icmp eq i32 %0, 0, !dbg !4463
  br i1 %cmp, label %if.then, label %if.else, !dbg !4464

if.then:                                          ; preds = %entry
  br label %if.end3, !dbg !4465

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %dt_class.addr, align 4, !dbg !4467, !tbaa !2831
  %cmp1 = icmp ne i32 %1, 2, !dbg !4469
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !4470

if.then2:                                         ; preds = %if.else
  br label %if.end, !dbg !4471

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %2 = load i32, ptr %op_id.addr, align 4, !dbg !4473, !tbaa !2831
  %conv = trunc i32 %2 to i8, !dbg !4473
  %3 = load ptr, ptr %select_param.addr, align 8, !dbg !4474, !tbaa !2816
  %op_id4 = getelementptr inbounds %struct.ucp_proto_select_param_t, ptr %3, i32 0, i32 0, !dbg !4475
  store i8 %conv, ptr %op_id4, align 1, !dbg !4476, !tbaa !4477
  %4 = load i16, ptr %op_flags.addr, align 2, !dbg !4479, !tbaa !3602
  %conv5 = zext i16 %4 to i32, !dbg !4479
  %5 = load i32, ptr %op_attr_mask.addr, align 4, !dbg !4480, !tbaa !2821
  %call = call zeroext i8 @ucp_proto_select_op_attr_to_flags(i32 noundef %5), !dbg !4481
  %conv6 = zext i8 %call to i32, !dbg !4481
  %or = or i32 %conv5, %conv6, !dbg !4482
  %conv7 = trunc i32 %or to i16, !dbg !4479
  %6 = load ptr, ptr %select_param.addr, align 8, !dbg !4483, !tbaa !2816
  %op_flags8 = getelementptr inbounds %struct.ucp_proto_select_param_t, ptr %6, i32 0, i32 1, !dbg !4484
  store i16 %conv7, ptr %op_flags8, align 1, !dbg !4485, !tbaa !4486
  %7 = load i32, ptr %dt_class.addr, align 4, !dbg !4487, !tbaa !2831
  %conv9 = trunc i32 %7 to i8, !dbg !4487
  %8 = load ptr, ptr %select_param.addr, align 8, !dbg !4488, !tbaa !2816
  %dt_class10 = getelementptr inbounds %struct.ucp_proto_select_param_t, ptr %8, i32 0, i32 2, !dbg !4489
  store i8 %conv9, ptr %dt_class10, align 1, !dbg !4490, !tbaa !4491
  %9 = load ptr, ptr %mem_info.addr, align 8, !dbg !4492, !tbaa !2816
  %type = getelementptr inbounds %struct.ucp_memory_info_t, ptr %9, i32 0, i32 0, !dbg !4493
  %10 = load i8, ptr %type, align 1, !dbg !4493, !tbaa !4494
  %11 = load ptr, ptr %select_param.addr, align 8, !dbg !4495, !tbaa !2816
  %mem_type = getelementptr inbounds %struct.ucp_proto_select_param_t, ptr %11, i32 0, i32 3, !dbg !4496
  store i8 %10, ptr %mem_type, align 1, !dbg !4497, !tbaa !4498
  %12 = load ptr, ptr %mem_info.addr, align 8, !dbg !4499, !tbaa !2816
  %sys_dev = getelementptr inbounds %struct.ucp_memory_info_t, ptr %12, i32 0, i32 1, !dbg !4500
  %13 = load i8, ptr %sys_dev, align 1, !dbg !4500, !tbaa !4501
  %14 = load ptr, ptr %select_param.addr, align 8, !dbg !4502, !tbaa !2816
  %sys_dev11 = getelementptr inbounds %struct.ucp_proto_select_param_t, ptr %14, i32 0, i32 4, !dbg !4503
  store i8 %13, ptr %sys_dev11, align 1, !dbg !4504, !tbaa !4505
  %15 = load i8, ptr %sg_count.addr, align 1, !dbg !4506, !tbaa !2831
  %16 = load ptr, ptr %select_param.addr, align 8, !dbg !4507, !tbaa !2816
  %sg_count12 = getelementptr inbounds %struct.ucp_proto_select_param_t, ptr %16, i32 0, i32 5, !dbg !4508
  store i8 %15, ptr %sg_count12, align 1, !dbg !4509, !tbaa !4510
  %17 = load ptr, ptr %select_param.addr, align 8, !dbg !4511, !tbaa !2816
  %padding = getelementptr inbounds %struct.ucp_proto_select_param_t, ptr %17, i32 0, i32 6, !dbg !4512
  store i8 0, ptr %padding, align 1, !dbg !4513, !tbaa !4514
  ret void, !dbg !4515
}

; Function Attrs: alwaysinline nounwind uwtable
define internal signext i8 @ucp_proto_request_lookup_proto(ptr noundef %worker, ptr noundef %ep, ptr noundef %req, ptr noundef %proto_select, i8 noundef zeroext %rkey_cfg_index, ptr noundef %sel_param, i64 noundef %msg_length) #0 !dbg !4516 {
entry:
  %worker.addr = alloca ptr, align 8
  %ep.addr = alloca ptr, align 8
  %req.addr = alloca ptr, align 8
  %proto_select.addr = alloca ptr, align 8
  %rkey_cfg_index.addr = alloca i8, align 1
  %sel_param.addr = alloca ptr, align 8
  %msg_length.addr = alloca i64, align 8
  %thresh_elem = alloca ptr, align 8
  store ptr %worker, ptr %worker.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %worker.addr, metadata !4520, metadata !DIExpression()), !dbg !4528
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ep.addr, metadata !4521, metadata !DIExpression()), !dbg !4529
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !4522, metadata !DIExpression()), !dbg !4530
  store ptr %proto_select, ptr %proto_select.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %proto_select.addr, metadata !4523, metadata !DIExpression()), !dbg !4531
  store i8 %rkey_cfg_index, ptr %rkey_cfg_index.addr, align 1, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %rkey_cfg_index.addr, metadata !4524, metadata !DIExpression()), !dbg !4532
  store ptr %sel_param, ptr %sel_param.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %sel_param.addr, metadata !4525, metadata !DIExpression()), !dbg !4533
  store i64 %msg_length, ptr %msg_length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %msg_length.addr, metadata !4526, metadata !DIExpression()), !dbg !4534
  call void @llvm.lifetime.start.p0(i64 8, ptr %thresh_elem) #10, !dbg !4535
  tail call void @llvm.dbg.declare(metadata ptr %thresh_elem, metadata !4527, metadata !DIExpression()), !dbg !4536
  %0 = load ptr, ptr %worker.addr, align 8, !dbg !4537, !tbaa !2816
  %1 = load ptr, ptr %proto_select.addr, align 8, !dbg !4538, !tbaa !2816
  %2 = load ptr, ptr %ep.addr, align 8, !dbg !4539, !tbaa !2816
  %cfg_index = getelementptr inbounds %struct.ucp_ep, ptr %2, i32 0, i32 2, !dbg !4540
  %3 = load i8, ptr %cfg_index, align 1, !dbg !4540, !tbaa !3329
  %4 = load i8, ptr %rkey_cfg_index.addr, align 1, !dbg !4541, !tbaa !2831
  %5 = load ptr, ptr %sel_param.addr, align 8, !dbg !4542, !tbaa !2816
  %6 = load i64, ptr %msg_length.addr, align 8, !dbg !4543, !tbaa !2829
  %call = call ptr @ucp_proto_select_lookup(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5, i64 noundef %6), !dbg !4544
  store ptr %call, ptr %thresh_elem, align 8, !dbg !4545, !tbaa !2816
  %7 = load ptr, ptr %req.addr, align 8, !dbg !4546, !tbaa !2816
  %8 = load ptr, ptr %thresh_elem, align 8, !dbg !4547, !tbaa !2816
  %proto_config = getelementptr inbounds %struct.ucp_proto_threshold_elem_t, ptr %8, i32 0, i32 0, !dbg !4548
  %9 = load i64, ptr %msg_length.addr, align 8, !dbg !4549, !tbaa !2829
  call void @ucp_proto_request_set_proto(ptr noundef %7, ptr noundef %proto_config, i64 noundef %9), !dbg !4550
  call void @llvm.lifetime.end.p0(i64 8, ptr %thresh_elem) #10, !dbg !4551
  ret i8 0, !dbg !4552
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_request_put(ptr noundef %req) #0 !dbg !4553 {
entry:
  %req.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !4555, metadata !DIExpression()), !dbg !4556
  br label %do.body, !dbg !4557

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4558

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4560

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !4558

do.end2:                                          ; preds = %do.end
  %0 = load ptr, ptr %req.addr, align 8, !dbg !4562, !tbaa !2816
  call void @ucs_mpool_put_inline(ptr noundef %0), !dbg !4563
  ret void, !dbg !4564
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_request_send(ptr noundef %req) #0 !dbg !4565 {
entry:
  %req.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !4567, metadata !DIExpression()), !dbg !4568
  br label %while.cond, !dbg !4569

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %req.addr, align 8, !dbg !4570, !tbaa !2816
  %call = call i32 @ucp_request_try_send(ptr noundef %0), !dbg !4571
  %tobool = icmp ne i32 %call, 0, !dbg !4572
  %lnot = xor i1 %tobool, true, !dbg !4572
  br i1 %lnot, label %while.body, label %while.end, !dbg !4569

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !4569, !llvm.loop !4573

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4575
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @ucp_datatype_class(i64 noundef %datatype) #0 !dbg !4576 {
entry:
  %datatype.addr = alloca i64, align 8
  store i64 %datatype, ptr %datatype.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %datatype.addr, metadata !4581, metadata !DIExpression()), !dbg !4582
  %0 = load i64, ptr %datatype.addr, align 8, !dbg !4583, !tbaa !2829
  %and = and i64 %0, 7, !dbg !4584
  %conv = trunc i64 %and to i32, !dbg !4585
  ret i32 %conv, !dbg !4586
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_datatype_contig_iter_init(ptr noundef %context, ptr noundef %buffer, i64 noundef %length, i64 noundef %datatype, ptr noundef %dt_iter) #0 !dbg !4587 {
entry:
  %context.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %datatype.addr = alloca i64, align 8
  %dt_iter.addr = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !4591, metadata !DIExpression()), !dbg !4596
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !4592, metadata !DIExpression()), !dbg !4597
  store i64 %length, ptr %length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !4593, metadata !DIExpression()), !dbg !4598
  store i64 %datatype, ptr %datatype.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %datatype.addr, metadata !4594, metadata !DIExpression()), !dbg !4599
  store ptr %dt_iter, ptr %dt_iter.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %dt_iter.addr, metadata !4595, metadata !DIExpression()), !dbg !4600
  %0 = load ptr, ptr %context.addr, align 8, !dbg !4601, !tbaa !2816
  %1 = load ptr, ptr %buffer.addr, align 8, !dbg !4602, !tbaa !2816
  %2 = load i64, ptr %length.addr, align 8, !dbg !4603, !tbaa !2829
  %3 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4604, !tbaa !2816
  %mem_info = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %3, i32 0, i32 1, !dbg !4605
  call void @ucp_memory_detect(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %mem_info), !dbg !4606
  %4 = load i64, ptr %length.addr, align 8, !dbg !4607, !tbaa !2829
  %5 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4608, !tbaa !2816
  %length1 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %5, i32 0, i32 2, !dbg !4609
  store i64 %4, ptr %length1, align 8, !dbg !4610, !tbaa !4611
  %6 = load ptr, ptr %buffer.addr, align 8, !dbg !4612, !tbaa !2816
  %7 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4613, !tbaa !2816
  %type = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %7, i32 0, i32 4, !dbg !4614
  %buffer2 = getelementptr inbounds %struct.anon.14, ptr %type, i32 0, i32 0, !dbg !4615
  store ptr %6, ptr %buffer2, align 8, !dbg !4616, !tbaa !2831
  %8 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4617, !tbaa !2816
  %type3 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %8, i32 0, i32 4, !dbg !4618
  %memh = getelementptr inbounds %struct.anon.14, ptr %type3, i32 0, i32 1, !dbg !4619
  store ptr null, ptr %memh, align 8, !dbg !4620, !tbaa !2831
  ret void, !dbg !4621
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ucp_dt_iov_length(ptr noundef %iov, i64 noundef %iovcnt) #6 !dbg !4622 {
entry:
  %iov.addr = alloca ptr, align 8
  %iovcnt.addr = alloca i64, align 8
  %iov_it = alloca i64, align 8
  %total_length = alloca i64, align 8
  store ptr %iov, ptr %iov.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %iov.addr, metadata !4627, metadata !DIExpression()), !dbg !4631
  store i64 %iovcnt, ptr %iovcnt.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %iovcnt.addr, metadata !4628, metadata !DIExpression()), !dbg !4632
  call void @llvm.lifetime.start.p0(i64 8, ptr %iov_it) #10, !dbg !4633
  tail call void @llvm.dbg.declare(metadata ptr %iov_it, metadata !4629, metadata !DIExpression()), !dbg !4634
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_length) #10, !dbg !4633
  tail call void @llvm.dbg.declare(metadata ptr %total_length, metadata !4630, metadata !DIExpression()), !dbg !4635
  store i64 0, ptr %total_length, align 8, !dbg !4635, !tbaa !2829
  store i64 0, ptr %iov_it, align 8, !dbg !4636, !tbaa !2829
  br label %for.cond, !dbg !4638

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %iov_it, align 8, !dbg !4639, !tbaa !2829
  %1 = load i64, ptr %iovcnt.addr, align 8, !dbg !4641, !tbaa !2829
  %cmp = icmp ult i64 %0, %1, !dbg !4642
  br i1 %cmp, label %for.body, label %for.end, !dbg !4643

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %iov.addr, align 8, !dbg !4644, !tbaa !2816
  %3 = load i64, ptr %iov_it, align 8, !dbg !4646, !tbaa !2829
  %arrayidx = getelementptr inbounds %struct.ucp_dt_iov, ptr %2, i64 %3, !dbg !4644
  %length = getelementptr inbounds %struct.ucp_dt_iov, ptr %arrayidx, i32 0, i32 1, !dbg !4647
  %4 = load i64, ptr %length, align 8, !dbg !4647, !tbaa !4648
  %5 = load i64, ptr %total_length, align 8, !dbg !4650, !tbaa !2829
  %add = add i64 %5, %4, !dbg !4650
  store i64 %add, ptr %total_length, align 8, !dbg !4650, !tbaa !2829
  br label %for.inc, !dbg !4651

for.inc:                                          ; preds = %for.body
  %6 = load i64, ptr %iov_it, align 8, !dbg !4652, !tbaa !2829
  %inc = add i64 %6, 1, !dbg !4652
  store i64 %inc, ptr %iov_it, align 8, !dbg !4652, !tbaa !2829
  br label %for.cond, !dbg !4653, !llvm.loop !4654

for.end:                                          ; preds = %for.cond
  %7 = load i64, ptr %total_length, align 8, !dbg !4656, !tbaa !2829
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_length) #10, !dbg !4657
  call void @llvm.lifetime.end.p0(i64 8, ptr %iov_it) #10, !dbg !4657
  ret i64 %7, !dbg !4658
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_datatype_iov_iter_init(ptr noundef %context, ptr noundef %buffer, i64 noundef %count, i64 noundef %datatype, i64 noundef %length, ptr noundef %dt_iter, ptr noundef %sg_count) #0 !dbg !4659 {
entry:
  %context.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %datatype.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %dt_iter.addr = alloca ptr, align 8
  %sg_count.addr = alloca ptr, align 8
  %iov = alloca ptr, align 8
  %_min_a = alloca i64, align 8
  %_min_b = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !4663, metadata !DIExpression()), !dbg !4676
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !4664, metadata !DIExpression()), !dbg !4677
  store i64 %count, ptr %count.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4665, metadata !DIExpression()), !dbg !4678
  store i64 %datatype, ptr %datatype.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %datatype.addr, metadata !4666, metadata !DIExpression()), !dbg !4679
  store i64 %length, ptr %length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !4667, metadata !DIExpression()), !dbg !4680
  store ptr %dt_iter, ptr %dt_iter.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %dt_iter.addr, metadata !4668, metadata !DIExpression()), !dbg !4681
  store ptr %sg_count, ptr %sg_count.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %sg_count.addr, metadata !4669, metadata !DIExpression()), !dbg !4682
  call void @llvm.lifetime.start.p0(i64 8, ptr %iov) #10, !dbg !4683
  tail call void @llvm.dbg.declare(metadata ptr %iov, metadata !4670, metadata !DIExpression()), !dbg !4684
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !4685, !tbaa !2816
  store ptr %0, ptr %iov, align 8, !dbg !4684, !tbaa !2816
  %1 = load i64, ptr %length.addr, align 8, !dbg !4686, !tbaa !2829
  %2 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4687, !tbaa !2816
  %length1 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %2, i32 0, i32 2, !dbg !4688
  store i64 %1, ptr %length1, align 8, !dbg !4689, !tbaa !4611
  %3 = load ptr, ptr %iov, align 8, !dbg !4690, !tbaa !2816
  %4 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4691, !tbaa !2816
  %type = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %4, i32 0, i32 4, !dbg !4692
  %iov2 = getelementptr inbounds %struct.anon.16, ptr %type, i32 0, i32 0, !dbg !4693
  store ptr %3, ptr %iov2, align 8, !dbg !4694, !tbaa !2831
  %5 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4695, !tbaa !2816
  %type3 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %5, i32 0, i32 4, !dbg !4696
  %iov_index = getelementptr inbounds %struct.anon.16, ptr %type3, i32 0, i32 1, !dbg !4697
  store i64 0, ptr %iov_index, align 8, !dbg !4698, !tbaa !2831
  %6 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4699, !tbaa !2816
  %type4 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %6, i32 0, i32 4, !dbg !4700
  %iov_offset = getelementptr inbounds %struct.anon.16, ptr %type4, i32 0, i32 2, !dbg !4701
  store i64 0, ptr %iov_offset, align 8, !dbg !4702, !tbaa !2831
  %7 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4703, !tbaa !2816
  %type5 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %7, i32 0, i32 4, !dbg !4704
  %memh = getelementptr inbounds %struct.anon.16, ptr %type5, i32 0, i32 3, !dbg !4705
  store ptr null, ptr %memh, align 8, !dbg !4706, !tbaa !2831
  %8 = load i64, ptr %count.addr, align 8, !dbg !4707, !tbaa !2829
  %cmp = icmp ugt i64 %8, 0, !dbg !4707
  %conv = zext i1 %cmp to i32, !dbg !4707
  %conv6 = sext i32 %conv to i64, !dbg !4707
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 1), !dbg !4707
  %tobool = icmp ne i64 %expval, 0, !dbg !4707
  br i1 %tobool, label %if.then, label %if.else, !dbg !4708

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %_min_a) #10, !dbg !4709
  tail call void @llvm.dbg.declare(metadata ptr %_min_a, metadata !4671, metadata !DIExpression()), !dbg !4709
  %9 = load i64, ptr %count.addr, align 8, !dbg !4709, !tbaa !2829
  store i64 %9, ptr %_min_a, align 8, !dbg !4709, !tbaa !2829
  call void @llvm.lifetime.start.p0(i64 8, ptr %_min_b) #10, !dbg !4709
  tail call void @llvm.dbg.declare(metadata ptr %_min_b, metadata !4675, metadata !DIExpression()), !dbg !4709
  store i64 255, ptr %_min_b, align 8, !dbg !4709, !tbaa !2829
  %10 = load i64, ptr %_min_a, align 8, !dbg !4709, !tbaa !2829
  %11 = load i64, ptr %_min_b, align 8, !dbg !4709, !tbaa !2829
  %cmp7 = icmp ult i64 %10, %11, !dbg !4709
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !4709

cond.true:                                        ; preds = %if.then
  %12 = load i64, ptr %_min_a, align 8, !dbg !4709, !tbaa !2829
  br label %cond.end, !dbg !4709

cond.false:                                       ; preds = %if.then
  %13 = load i64, ptr %_min_b, align 8, !dbg !4709, !tbaa !2829
  br label %cond.end, !dbg !4709

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %12, %cond.true ], [ %13, %cond.false ], !dbg !4709
  store i64 %cond, ptr %tmp, align 8, !dbg !4709, !tbaa !2829
  call void @llvm.lifetime.end.p0(i64 8, ptr %_min_b) #10, !dbg !4710
  call void @llvm.lifetime.end.p0(i64 8, ptr %_min_a) #10, !dbg !4710
  %14 = load i64, ptr %tmp, align 8, !dbg !4709, !tbaa !2829
  %conv9 = trunc i64 %14 to i8, !dbg !4710
  %15 = load ptr, ptr %sg_count.addr, align 8, !dbg !4711, !tbaa !2816
  store i8 %conv9, ptr %15, align 1, !dbg !4712, !tbaa !2831
  %16 = load ptr, ptr %context.addr, align 8, !dbg !4713, !tbaa !2816
  %17 = load ptr, ptr %iov, align 8, !dbg !4714, !tbaa !2816
  %buffer10 = getelementptr inbounds %struct.ucp_dt_iov, ptr %17, i32 0, i32 0, !dbg !4715
  %18 = load ptr, ptr %buffer10, align 8, !dbg !4715, !tbaa !4716
  %19 = load ptr, ptr %iov, align 8, !dbg !4717, !tbaa !2816
  %length11 = getelementptr inbounds %struct.ucp_dt_iov, ptr %19, i32 0, i32 1, !dbg !4718
  %20 = load i64, ptr %length11, align 8, !dbg !4718, !tbaa !4648
  %21 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4719, !tbaa !2816
  %mem_info = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %21, i32 0, i32 1, !dbg !4720
  call void @ucp_memory_detect(ptr noundef %16, ptr noundef %18, i64 noundef %20, ptr noundef %mem_info), !dbg !4721
  br label %if.end, !dbg !4722

if.else:                                          ; preds = %entry
  %22 = load ptr, ptr %sg_count.addr, align 8, !dbg !4723, !tbaa !2816
  store i8 1, ptr %22, align 1, !dbg !4725, !tbaa !2831
  %23 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4726, !tbaa !2816
  %mem_info12 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %23, i32 0, i32 1, !dbg !4727
  call void @ucp_memory_info_set_host(ptr noundef %mem_info12), !dbg !4728
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %iov) #10, !dbg !4729
  ret void, !dbg !4729
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_datatype_generic_iter_init(ptr noundef %context, ptr noundef %buffer, i64 noundef %count, i64 noundef %datatype, i32 noundef %is_pack, ptr noundef %dt_iter) #0 !dbg !4730 {
entry:
  %context.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %datatype.addr = alloca i64, align 8
  %is_pack.addr = alloca i32, align 4
  %dt_iter.addr = alloca ptr, align 8
  %dt_gen = alloca ptr, align 8
  %state = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !4734, metadata !DIExpression()), !dbg !4742
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !4735, metadata !DIExpression()), !dbg !4743
  store i64 %count, ptr %count.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4736, metadata !DIExpression()), !dbg !4744
  store i64 %datatype, ptr %datatype.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %datatype.addr, metadata !4737, metadata !DIExpression()), !dbg !4745
  store i32 %is_pack, ptr %is_pack.addr, align 4, !tbaa !2821
  tail call void @llvm.dbg.declare(metadata ptr %is_pack.addr, metadata !4738, metadata !DIExpression()), !dbg !4746
  store ptr %dt_iter, ptr %dt_iter.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %dt_iter.addr, metadata !4739, metadata !DIExpression()), !dbg !4747
  call void @llvm.lifetime.start.p0(i64 8, ptr %dt_gen) #10, !dbg !4748
  tail call void @llvm.dbg.declare(metadata ptr %dt_gen, metadata !4740, metadata !DIExpression()), !dbg !4749
  %0 = load i64, ptr %datatype.addr, align 8, !dbg !4750, !tbaa !2829
  %call = call ptr @ucp_dt_to_generic(i64 noundef %0), !dbg !4751
  store ptr %call, ptr %dt_gen, align 8, !dbg !4749, !tbaa !2816
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #10, !dbg !4752
  tail call void @llvm.dbg.declare(metadata ptr %state, metadata !4741, metadata !DIExpression()), !dbg !4753
  %1 = load i32, ptr %is_pack.addr, align 4, !dbg !4754, !tbaa !2821
  %tobool = icmp ne i32 %1, 0, !dbg !4754
  br i1 %tobool, label %if.then, label %if.else, !dbg !4756

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dt_gen, align 8, !dbg !4757, !tbaa !2816
  %ops = getelementptr inbounds %struct.ucp_dt_generic, ptr %2, i32 0, i32 1, !dbg !4759
  %start_pack = getelementptr inbounds %struct.ucp_generic_dt_ops, ptr %ops, i32 0, i32 0, !dbg !4760
  %3 = load ptr, ptr %start_pack, align 8, !dbg !4760, !tbaa !4761
  %4 = load ptr, ptr %dt_gen, align 8, !dbg !4764, !tbaa !2816
  %context1 = getelementptr inbounds %struct.ucp_dt_generic, ptr %4, i32 0, i32 0, !dbg !4765
  %5 = load ptr, ptr %context1, align 8, !dbg !4765, !tbaa !4766
  %6 = load ptr, ptr %buffer.addr, align 8, !dbg !4767, !tbaa !2816
  %7 = load i64, ptr %count.addr, align 8, !dbg !4768, !tbaa !2829
  %call2 = call ptr %3(ptr noundef %5, ptr noundef %6, i64 noundef %7), !dbg !4757
  store ptr %call2, ptr %state, align 8, !dbg !4769, !tbaa !2816
  br label %if.end, !dbg !4770

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %dt_gen, align 8, !dbg !4771, !tbaa !2816
  %ops3 = getelementptr inbounds %struct.ucp_dt_generic, ptr %8, i32 0, i32 1, !dbg !4773
  %start_unpack = getelementptr inbounds %struct.ucp_generic_dt_ops, ptr %ops3, i32 0, i32 1, !dbg !4774
  %9 = load ptr, ptr %start_unpack, align 8, !dbg !4774, !tbaa !4775
  %10 = load ptr, ptr %dt_gen, align 8, !dbg !4776, !tbaa !2816
  %context4 = getelementptr inbounds %struct.ucp_dt_generic, ptr %10, i32 0, i32 0, !dbg !4777
  %11 = load ptr, ptr %context4, align 8, !dbg !4777, !tbaa !4766
  %12 = load ptr, ptr %buffer.addr, align 8, !dbg !4778, !tbaa !2816
  %13 = load i64, ptr %count.addr, align 8, !dbg !4779, !tbaa !2829
  %call5 = call ptr %9(ptr noundef %11, ptr noundef %12, i64 noundef %13), !dbg !4771
  store ptr %call5, ptr %state, align 8, !dbg !4780, !tbaa !2816
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load ptr, ptr %dt_gen, align 8, !dbg !4781, !tbaa !2816
  %ops6 = getelementptr inbounds %struct.ucp_dt_generic, ptr %14, i32 0, i32 1, !dbg !4782
  %packed_size = getelementptr inbounds %struct.ucp_generic_dt_ops, ptr %ops6, i32 0, i32 2, !dbg !4783
  %15 = load ptr, ptr %packed_size, align 8, !dbg !4783, !tbaa !4784
  %16 = load ptr, ptr %state, align 8, !dbg !4785, !tbaa !2816
  %call7 = call i64 %15(ptr noundef %16), !dbg !4781
  %17 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4786, !tbaa !2816
  %length = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %17, i32 0, i32 2, !dbg !4787
  store i64 %call7, ptr %length, align 8, !dbg !4788, !tbaa !4611
  %18 = load ptr, ptr %buffer.addr, align 8, !dbg !4789, !tbaa !2816
  %19 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4790, !tbaa !2816
  %type = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %19, i32 0, i32 4, !dbg !4791
  %buffer8 = getelementptr inbounds %struct.anon.15, ptr %type, i32 0, i32 0, !dbg !4792
  store ptr %18, ptr %buffer8, align 8, !dbg !4793, !tbaa !2831
  %20 = load i64, ptr %count.addr, align 8, !dbg !4794, !tbaa !2829
  %21 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4795, !tbaa !2816
  %type9 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %21, i32 0, i32 4, !dbg !4796
  %count10 = getelementptr inbounds %struct.anon.15, ptr %type9, i32 0, i32 1, !dbg !4797
  store i64 %20, ptr %count10, align 8, !dbg !4798, !tbaa !2831
  %22 = load ptr, ptr %dt_gen, align 8, !dbg !4799, !tbaa !2816
  %23 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4800, !tbaa !2816
  %type11 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %23, i32 0, i32 4, !dbg !4801
  %dt_gen12 = getelementptr inbounds %struct.anon.15, ptr %type11, i32 0, i32 2, !dbg !4802
  store ptr %22, ptr %dt_gen12, align 8, !dbg !4803, !tbaa !2831
  %24 = load ptr, ptr %state, align 8, !dbg !4804, !tbaa !2816
  %25 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4805, !tbaa !2816
  %type13 = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %25, i32 0, i32 4, !dbg !4806
  %state14 = getelementptr inbounds %struct.anon.15, ptr %type13, i32 0, i32 3, !dbg !4807
  store ptr %24, ptr %state14, align 8, !dbg !4808, !tbaa !2831
  %26 = load ptr, ptr %dt_iter.addr, align 8, !dbg !4809, !tbaa !2816
  %mem_info = getelementptr inbounds %struct.ucp_datatype_iter_t, ptr %26, i32 0, i32 1, !dbg !4810
  call void @ucp_memory_info_set_host(ptr noundef %mem_info), !dbg !4811
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #10, !dbg !4812
  call void @llvm.lifetime.end.p0(i64 8, ptr %dt_gen) #10, !dbg !4812
  ret void, !dbg !4812
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_memory_detect(ptr noundef %context, ptr noundef %address, i64 noundef %length, ptr noundef %mem_info) #0 !dbg !4813 {
entry:
  %context.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %mem_info.addr = alloca ptr, align 8
  %mem_info_internal = alloca %struct.ucs_memory_info, align 8
  store ptr %context, ptr %context.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !4818, metadata !DIExpression()), !dbg !4830
  store ptr %address, ptr %address.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !4819, metadata !DIExpression()), !dbg !4831
  store i64 %length, ptr %length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !4820, metadata !DIExpression()), !dbg !4832
  store ptr %mem_info, ptr %mem_info.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %mem_info.addr, metadata !4821, metadata !DIExpression()), !dbg !4833
  call void @llvm.lifetime.start.p0(i64 24, ptr %mem_info_internal) #10, !dbg !4834
  tail call void @llvm.dbg.declare(metadata ptr %mem_info_internal, metadata !4822, metadata !DIExpression()), !dbg !4835
  %0 = load ptr, ptr %context.addr, align 8, !dbg !4836, !tbaa !2816
  %1 = load ptr, ptr %address.addr, align 8, !dbg !4837, !tbaa !2816
  %2 = load i64, ptr %length.addr, align 8, !dbg !4838, !tbaa !2829
  call void @ucp_memory_detect_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %mem_info_internal), !dbg !4839
  %type = getelementptr inbounds %struct.ucs_memory_info, ptr %mem_info_internal, i32 0, i32 0, !dbg !4840
  %3 = load i32, ptr %type, align 8, !dbg !4840, !tbaa !4841
  %conv = trunc i32 %3 to i8, !dbg !4843
  %4 = load ptr, ptr %mem_info.addr, align 8, !dbg !4844, !tbaa !2816
  %type1 = getelementptr inbounds %struct.ucp_memory_info_t, ptr %4, i32 0, i32 0, !dbg !4845
  store i8 %conv, ptr %type1, align 1, !dbg !4846, !tbaa !4494
  %sys_dev = getelementptr inbounds %struct.ucs_memory_info, ptr %mem_info_internal, i32 0, i32 1, !dbg !4847
  %5 = load i8, ptr %sys_dev, align 4, !dbg !4847, !tbaa !4848
  %6 = load ptr, ptr %mem_info.addr, align 8, !dbg !4849, !tbaa !2816
  %sys_dev2 = getelementptr inbounds %struct.ucp_memory_info_t, ptr %6, i32 0, i32 1, !dbg !4850
  store i8 %5, ptr %sys_dev2, align 1, !dbg !4851, !tbaa !4501
  call void @llvm.lifetime.end.p0(i64 24, ptr %mem_info_internal) #10, !dbg !4852
  ret void, !dbg !4852
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_memory_detect_internal(ptr noundef %context, ptr noundef %address, i64 noundef %length, ptr noundef %mem_info) #0 !dbg !4853 {
entry:
  %context.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %mem_info.addr = alloca ptr, align 8
  %status = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !4858, metadata !DIExpression()), !dbg !4864
  store ptr %address, ptr %address.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !4859, metadata !DIExpression()), !dbg !4865
  store i64 %length, ptr %length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !4860, metadata !DIExpression()), !dbg !4866
  store ptr %mem_info, ptr %mem_info.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %mem_info.addr, metadata !4861, metadata !DIExpression()), !dbg !4867
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #10, !dbg !4868
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !4862, metadata !DIExpression()), !dbg !4869
  %0 = load ptr, ptr %context.addr, align 8, !dbg !4870, !tbaa !2816
  %num_mem_type_detect_mds = getelementptr inbounds %struct.ucp_context, ptr %0, i32 0, i32 8, !dbg !4870
  %1 = load i8, ptr %num_mem_type_detect_mds, align 1, !dbg !4870, !tbaa !4872
  %conv = zext i8 %1 to i32, !dbg !4870
  %cmp = icmp eq i32 %conv, 0, !dbg !4870
  %conv1 = zext i1 %cmp to i32, !dbg !4870
  %conv2 = sext i32 %conv1 to i64, !dbg !4870
  %expval = call i64 @llvm.expect.i64(i64 %conv2, i64 1), !dbg !4870
  %tobool = icmp ne i64 %expval, 0, !dbg !4870
  br i1 %tobool, label %if.then, label %if.end, !dbg !4873

if.then:                                          ; preds = %entry
  br label %out_host_mem, !dbg !4874

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %address.addr, align 8, !dbg !4876, !tbaa !2816
  %3 = load i64, ptr %length.addr, align 8, !dbg !4877, !tbaa !2829
  %4 = load ptr, ptr %mem_info.addr, align 8, !dbg !4878, !tbaa !2816
  %call = call signext i8 @ucs_memtype_cache_lookup(ptr noundef %2, i64 noundef %3, ptr noundef %4), !dbg !4879
  store i8 %call, ptr %status, align 1, !dbg !4880, !tbaa !2831
  %5 = load i8, ptr %status, align 1, !dbg !4881, !tbaa !2831
  %conv3 = sext i8 %5 to i32, !dbg !4881
  %cmp4 = icmp eq i32 %conv3, -12, !dbg !4881
  %conv5 = zext i1 %cmp4 to i32, !dbg !4881
  %conv6 = sext i32 %conv5 to i64, !dbg !4881
  %expval7 = call i64 @llvm.expect.i64(i64 %conv6, i64 1), !dbg !4881
  %tobool8 = icmp ne i64 %expval7, 0, !dbg !4881
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !4883

if.then9:                                         ; preds = %if.end
  br label %do.body, !dbg !4884

do.body:                                          ; preds = %if.then9
  br label %do.body10, !dbg !4886

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !4888

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !4888

do.end:                                           ; preds = %do.cond
  br label %do.cond11, !dbg !4886

do.cond11:                                        ; preds = %do.end
  br label %do.end12, !dbg !4886

do.end12:                                         ; preds = %do.cond11
  br label %out_host_mem, !dbg !4890

if.else:                                          ; preds = %if.end
  %6 = load i8, ptr %status, align 1, !dbg !4891, !tbaa !2831
  %conv13 = sext i8 %6 to i32, !dbg !4891
  %cmp14 = icmp eq i32 %conv13, 0, !dbg !4891
  %conv15 = zext i1 %cmp14 to i32, !dbg !4891
  %conv16 = sext i32 %conv15 to i64, !dbg !4891
  %expval17 = call i64 @llvm.expect.i64(i64 %conv16, i64 1), !dbg !4891
  %tobool18 = icmp ne i64 %expval17, 0, !dbg !4891
  br i1 %tobool18, label %if.then19, label %if.else40, !dbg !4893

if.then19:                                        ; preds = %if.else
  %7 = load ptr, ptr %mem_info.addr, align 8, !dbg !4894, !tbaa !2816
  %type = getelementptr inbounds %struct.ucs_memory_info, ptr %7, i32 0, i32 0, !dbg !4894
  %8 = load i32, ptr %type, align 8, !dbg !4894, !tbaa !4841
  %cmp20 = icmp eq i32 %8, 5, !dbg !4894
  %conv21 = zext i1 %cmp20 to i32, !dbg !4894
  %conv22 = sext i32 %conv21 to i64, !dbg !4894
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !4894
  %tobool24 = icmp ne i64 %expval23, 0, !dbg !4894
  br i1 %tobool24, label %if.then25, label %if.else32, !dbg !4897

if.then25:                                        ; preds = %if.then19
  br label %do.body26, !dbg !4898

do.body26:                                        ; preds = %if.then25
  br label %do.body27, !dbg !4900

do.body27:                                        ; preds = %do.body26
  br label %do.cond28, !dbg !4902

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !4902

do.end29:                                         ; preds = %do.cond28
  br label %do.cond30, !dbg !4900

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !4900

do.end31:                                         ; preds = %do.cond30
  %9 = load ptr, ptr %context.addr, align 8, !dbg !4904, !tbaa !2816
  %10 = load ptr, ptr %address.addr, align 8, !dbg !4905, !tbaa !2816
  %11 = load i64, ptr %length.addr, align 8, !dbg !4906, !tbaa !2829
  %12 = load ptr, ptr %mem_info.addr, align 8, !dbg !4907, !tbaa !2816
  call void @ucp_memory_detect_slowpath(ptr noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12), !dbg !4908
  br label %if.end39, !dbg !4909

if.else32:                                        ; preds = %if.then19
  br label %do.body33, !dbg !4910

do.body33:                                        ; preds = %if.else32
  br label %do.body34, !dbg !4912

do.body34:                                        ; preds = %do.body33
  br label %do.cond35, !dbg !4914

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !4914

do.end36:                                         ; preds = %do.cond35
  br label %do.cond37, !dbg !4912

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !4912

do.end38:                                         ; preds = %do.cond37
  br label %if.end39

if.end39:                                         ; preds = %do.end38, %do.end31
  br label %if.end41, !dbg !4916

if.else40:                                        ; preds = %if.else
  %13 = load ptr, ptr %context.addr, align 8, !dbg !4917, !tbaa !2816
  %14 = load ptr, ptr %address.addr, align 8, !dbg !4919, !tbaa !2816
  %15 = load i64, ptr %length.addr, align 8, !dbg !4920, !tbaa !2829
  %16 = load ptr, ptr %mem_info.addr, align 8, !dbg !4921, !tbaa !2816
  call void @ucp_memory_detect_slowpath(ptr noundef %13, ptr noundef %14, i64 noundef %15, ptr noundef %16), !dbg !4922
  br label %if.end41

if.end41:                                         ; preds = %if.else40, %if.end39
  br label %if.end42

if.end42:                                         ; preds = %if.end41
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4923

out_host_mem:                                     ; preds = %do.end12, %if.then
  tail call void @llvm.dbg.label(metadata !4863), !dbg !4924
  %17 = load ptr, ptr %mem_info.addr, align 8, !dbg !4925, !tbaa !2816
  call void @ucs_memory_info_set_host(ptr noundef %17), !dbg !4926
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4927
  br label %cleanup, !dbg !4927

cleanup:                                          ; preds = %out_host_mem, %if.end42
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #10, !dbg !4927
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4927

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !4928 signext i8 @ucs_memtype_cache_lookup(ptr noundef, i64 noundef, ptr noundef) #2

declare !dbg !4931 void @ucp_memory_detect_slowpath(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucs_memory_info_set_host(ptr noundef %mem_info) #0 !dbg !4932 {
entry:
  %mem_info.addr = alloca ptr, align 8
  store ptr %mem_info, ptr %mem_info.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %mem_info.addr, metadata !4936, metadata !DIExpression()), !dbg !4937
  %0 = load ptr, ptr %mem_info.addr, align 8, !dbg !4938, !tbaa !2816
  %type = getelementptr inbounds %struct.ucs_memory_info, ptr %0, i32 0, i32 0, !dbg !4939
  store i32 0, ptr %type, align 8, !dbg !4940, !tbaa !4841
  %1 = load ptr, ptr %mem_info.addr, align 8, !dbg !4941, !tbaa !2816
  %sys_dev = getelementptr inbounds %struct.ucs_memory_info, ptr %1, i32 0, i32 1, !dbg !4942
  store i8 -1, ptr %sys_dev, align 4, !dbg !4943, !tbaa !4848
  %2 = load ptr, ptr %mem_info.addr, align 8, !dbg !4944, !tbaa !2816
  %base_address = getelementptr inbounds %struct.ucs_memory_info, ptr %2, i32 0, i32 2, !dbg !4945
  store ptr null, ptr %base_address, align 8, !dbg !4946, !tbaa !4947
  %3 = load ptr, ptr %mem_info.addr, align 8, !dbg !4948, !tbaa !2816
  %alloc_length = getelementptr inbounds %struct.ucs_memory_info, ptr %3, i32 0, i32 3, !dbg !4949
  store i64 -1, ptr %alloc_length, align 8, !dbg !4950, !tbaa !4951
  ret void, !dbg !4952
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_memory_info_set_host(ptr noundef %mem_info) #0 !dbg !4953 {
entry:
  %mem_info.addr = alloca ptr, align 8
  store ptr %mem_info, ptr %mem_info.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %mem_info.addr, metadata !4957, metadata !DIExpression()), !dbg !4958
  %0 = load ptr, ptr %mem_info.addr, align 8, !dbg !4959, !tbaa !2816
  %type = getelementptr inbounds %struct.ucp_memory_info_t, ptr %0, i32 0, i32 0, !dbg !4960
  store i8 0, ptr %type, align 1, !dbg !4961, !tbaa !4494
  %1 = load ptr, ptr %mem_info.addr, align 8, !dbg !4962, !tbaa !2816
  %sys_dev = getelementptr inbounds %struct.ucp_memory_info_t, ptr %1, i32 0, i32 1, !dbg !4963
  store i8 -1, ptr %sys_dev, align 1, !dbg !4964, !tbaa !4501
  ret void, !dbg !4965
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @ucp_dt_to_generic(i64 noundef %datatype) #0 !dbg !4966 {
entry:
  %datatype.addr = alloca i64, align 8
  store i64 %datatype, ptr %datatype.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %datatype.addr, metadata !4970, metadata !DIExpression()), !dbg !4971
  %0 = load i64, ptr %datatype.addr, align 8, !dbg !4972, !tbaa !2829
  %and = and i64 %0, -8, !dbg !4973
  %1 = inttoptr i64 %and to ptr, !dbg !4974
  ret ptr %1, !dbg !4975
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @ucp_proto_select_op_attr_to_flags(i32 noundef %op_attr_mask) #0 !dbg !4976 {
entry:
  %op_attr_mask.addr = alloca i32, align 4
  store i32 %op_attr_mask, ptr %op_attr_mask.addr, align 4, !tbaa !2821
  tail call void @llvm.dbg.declare(metadata ptr %op_attr_mask.addr, metadata !4980, metadata !DIExpression()), !dbg !4981
  %0 = load i32, ptr %op_attr_mask.addr, align 4, !dbg !4982, !tbaa !2821
  %div = udiv i32 %0, 65536, !dbg !4983
  %conv = trunc i32 %div to i8, !dbg !4982
  ret i8 %conv, !dbg !4984
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @ucp_proto_select_lookup(ptr noundef %worker, ptr noundef %proto_select, i8 noundef zeroext %ep_cfg_index, i8 noundef zeroext %rkey_cfg_index, ptr noundef %select_param, i64 noundef %msg_length) #0 !dbg !4985 {
entry:
  %retval = alloca ptr, align 8
  %worker.addr = alloca ptr, align 8
  %proto_select.addr = alloca ptr, align 8
  %ep_cfg_index.addr = alloca i8, align 1
  %rkey_cfg_index.addr = alloca i8, align 1
  %select_param.addr = alloca ptr, align 8
  %msg_length.addr = alloca i64, align 8
  %select_elem = alloca ptr, align 8
  %key = alloca %union.ucp_proto_select_key_t, align 8
  %khiter = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %worker, ptr %worker.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %worker.addr, metadata !4989, metadata !DIExpression()), !dbg !5004
  store ptr %proto_select, ptr %proto_select.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %proto_select.addr, metadata !4990, metadata !DIExpression()), !dbg !5005
  store i8 %ep_cfg_index, ptr %ep_cfg_index.addr, align 1, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %ep_cfg_index.addr, metadata !4991, metadata !DIExpression()), !dbg !5006
  store i8 %rkey_cfg_index, ptr %rkey_cfg_index.addr, align 1, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %rkey_cfg_index.addr, metadata !4992, metadata !DIExpression()), !dbg !5007
  store ptr %select_param, ptr %select_param.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %select_param.addr, metadata !4993, metadata !DIExpression()), !dbg !5008
  store i64 %msg_length, ptr %msg_length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %msg_length.addr, metadata !4994, metadata !DIExpression()), !dbg !5009
  call void @llvm.lifetime.start.p0(i64 8, ptr %select_elem) #10, !dbg !5010
  tail call void @llvm.dbg.declare(metadata ptr %select_elem, metadata !4995, metadata !DIExpression()), !dbg !5011
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #10, !dbg !5012
  tail call void @llvm.dbg.declare(metadata ptr %key, metadata !4996, metadata !DIExpression()), !dbg !5013
  call void @llvm.lifetime.start.p0(i64 4, ptr %khiter) #10, !dbg !5014
  tail call void @llvm.dbg.declare(metadata ptr %khiter, metadata !5002, metadata !DIExpression()), !dbg !5015
  %0 = load ptr, ptr %select_param.addr, align 8, !dbg !5016, !tbaa !2816
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %key, ptr align 1 %0, i64 8, i1 false), !dbg !5017, !tbaa.struct !5018
  %1 = load ptr, ptr %proto_select.addr, align 8, !dbg !5019, !tbaa !2816
  %cache = getelementptr inbounds %struct.ucp_proto_select_t, ptr %1, i32 0, i32 1, !dbg !5019
  %key1 = getelementptr inbounds %struct.anon.69, ptr %cache, i32 0, i32 0, !dbg !5019
  %2 = load i64, ptr %key1, align 8, !dbg !5019, !tbaa !5021
  %3 = load i64, ptr %key, align 8, !dbg !5019, !tbaa !2831
  %cmp = icmp eq i64 %2, %3, !dbg !5019
  %conv = zext i1 %cmp to i32, !dbg !5019
  %conv2 = sext i32 %conv to i64, !dbg !5019
  %expval = call i64 @llvm.expect.i64(i64 %conv2, i64 1), !dbg !5019
  %tobool = icmp ne i64 %expval, 0, !dbg !5019
  br i1 %tobool, label %if.then, label %if.else, !dbg !5022

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %proto_select.addr, align 8, !dbg !5023, !tbaa !2816
  %cache3 = getelementptr inbounds %struct.ucp_proto_select_t, ptr %4, i32 0, i32 1, !dbg !5025
  %value = getelementptr inbounds %struct.anon.69, ptr %cache3, i32 0, i32 1, !dbg !5026
  %5 = load ptr, ptr %value, align 8, !dbg !5026, !tbaa !5027
  store ptr %5, ptr %select_elem, align 8, !dbg !5028, !tbaa !2816
  br label %if.end25, !dbg !5029

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %proto_select.addr, align 8, !dbg !5030, !tbaa !2816
  %hash = getelementptr inbounds %struct.ucp_proto_select_t, ptr %6, i32 0, i32 0, !dbg !5030
  %7 = load i64, ptr %key, align 8, !dbg !5030, !tbaa !2831
  %call = call i32 @kh_get_ucp_proto_select_hash(ptr noundef %hash, i64 noundef %7), !dbg !5030
  store i32 %call, ptr %khiter, align 4, !dbg !5032, !tbaa !2821
  %8 = load i32, ptr %khiter, align 4, !dbg !5033, !tbaa !2821
  %9 = load ptr, ptr %proto_select.addr, align 8, !dbg !5033, !tbaa !2816
  %hash4 = getelementptr inbounds %struct.ucp_proto_select_t, ptr %9, i32 0, i32 0, !dbg !5033
  %n_buckets = getelementptr inbounds %struct.kh_ucp_proto_select_hash_s, ptr %hash4, i32 0, i32 0, !dbg !5033
  %10 = load i32, ptr %n_buckets, align 8, !dbg !5033, !tbaa !5035
  %cmp5 = icmp ne i32 %8, %10, !dbg !5033
  %conv6 = zext i1 %cmp5 to i32, !dbg !5033
  %conv7 = sext i32 %conv6 to i64, !dbg !5033
  %expval8 = call i64 @llvm.expect.i64(i64 %conv7, i64 1), !dbg !5033
  %tobool9 = icmp ne i64 %expval8, 0, !dbg !5033
  br i1 %tobool9, label %if.then10, label %if.else12, !dbg !5036

if.then10:                                        ; preds = %if.else
  %11 = load ptr, ptr %proto_select.addr, align 8, !dbg !5037, !tbaa !2816
  %hash11 = getelementptr inbounds %struct.ucp_proto_select_t, ptr %11, i32 0, i32 0, !dbg !5037
  %vals = getelementptr inbounds %struct.kh_ucp_proto_select_hash_s, ptr %hash11, i32 0, i32 6, !dbg !5037
  %12 = load ptr, ptr %vals, align 8, !dbg !5037, !tbaa !5039
  %13 = load i32, ptr %khiter, align 4, !dbg !5037, !tbaa !2821
  %idxprom = zext i32 %13 to i64, !dbg !5037
  %arrayidx = getelementptr inbounds %struct.ucp_proto_select_elem_t, ptr %12, i64 %idxprom, !dbg !5037
  store ptr %arrayidx, ptr %select_elem, align 8, !dbg !5040, !tbaa !2816
  br label %if.end20, !dbg !5041

if.else12:                                        ; preds = %if.else
  %14 = load ptr, ptr %worker.addr, align 8, !dbg !5042, !tbaa !2816
  %15 = load ptr, ptr %proto_select.addr, align 8, !dbg !5044, !tbaa !2816
  %16 = load i8, ptr %ep_cfg_index.addr, align 1, !dbg !5045, !tbaa !2831
  %17 = load i8, ptr %rkey_cfg_index.addr, align 1, !dbg !5046, !tbaa !2831
  %call13 = call ptr @ucp_proto_select_lookup_slow(ptr noundef %14, ptr noundef %15, i8 noundef zeroext %16, i8 noundef zeroext %17, ptr noundef %key), !dbg !5047
  store ptr %call13, ptr %select_elem, align 8, !dbg !5048, !tbaa !2816
  %18 = load ptr, ptr %select_elem, align 8, !dbg !5049, !tbaa !2816
  %cmp14 = icmp eq ptr %18, null, !dbg !5049
  %conv15 = zext i1 %cmp14 to i32, !dbg !5049
  %conv16 = sext i32 %conv15 to i64, !dbg !5049
  %expval17 = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !5049
  %tobool18 = icmp ne i64 %expval17, 0, !dbg !5049
  br i1 %tobool18, label %if.then19, label %if.end, !dbg !5051

if.then19:                                        ; preds = %if.else12
  store ptr null, ptr %retval, align 8, !dbg !5052
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5052

if.end:                                           ; preds = %if.else12
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then10
  %19 = load i64, ptr %key, align 8, !dbg !5054, !tbaa !2831
  %20 = load ptr, ptr %proto_select.addr, align 8, !dbg !5055, !tbaa !2816
  %cache21 = getelementptr inbounds %struct.ucp_proto_select_t, ptr %20, i32 0, i32 1, !dbg !5056
  %key22 = getelementptr inbounds %struct.anon.69, ptr %cache21, i32 0, i32 0, !dbg !5057
  store i64 %19, ptr %key22, align 8, !dbg !5058, !tbaa !5021
  %21 = load ptr, ptr %select_elem, align 8, !dbg !5059, !tbaa !2816
  %22 = load ptr, ptr %proto_select.addr, align 8, !dbg !5060, !tbaa !2816
  %cache23 = getelementptr inbounds %struct.ucp_proto_select_t, ptr %22, i32 0, i32 1, !dbg !5061
  %value24 = getelementptr inbounds %struct.anon.69, ptr %cache23, i32 0, i32 1, !dbg !5062
  store ptr %21, ptr %value24, align 8, !dbg !5063, !tbaa !5027
  br label %if.end25

if.end25:                                         ; preds = %if.end20, %if.then
  %23 = load ptr, ptr %select_elem, align 8, !dbg !5064, !tbaa !2816
  %24 = load i64, ptr %msg_length.addr, align 8, !dbg !5065, !tbaa !2829
  %call26 = call ptr @ucp_proto_select_thresholds_search(ptr noundef %23, i64 noundef %24), !dbg !5066
  store ptr %call26, ptr %retval, align 8, !dbg !5067
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5067

cleanup:                                          ; preds = %if.end25, %if.then19
  call void @llvm.lifetime.end.p0(i64 4, ptr %khiter) #10, !dbg !5068
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #10, !dbg !5068
  call void @llvm.lifetime.end.p0(i64 8, ptr %select_elem) #10, !dbg !5068
  %25 = load ptr, ptr %retval, align 8, !dbg !5068
  ret ptr %25, !dbg !5068
}

; Function Attrs: nounwind uwtable
define internal void @ucp_proto_request_set_proto(ptr noundef %req, ptr noundef %proto_config, i64 noundef %msg_length) #4 !dbg !5069 {
entry:
  %req.addr = alloca ptr, align 8
  %proto_config.addr = alloca ptr, align 8
  %msg_length.addr = alloca i64, align 8
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5073, metadata !DIExpression()), !dbg !5076
  store ptr %proto_config, ptr %proto_config.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %proto_config.addr, metadata !5074, metadata !DIExpression()), !dbg !5077
  store i64 %msg_length, ptr %msg_length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %msg_length.addr, metadata !5075, metadata !DIExpression()), !dbg !5078
  %0 = load ptr, ptr %proto_config.addr, align 8, !dbg !5079, !tbaa !2816
  %1 = load ptr, ptr %req.addr, align 8, !dbg !5080, !tbaa !2816
  %2 = getelementptr inbounds %struct.ucp_request, ptr %1, i32 0, i32 4, !dbg !5081
  %proto_config1 = getelementptr inbounds %struct.anon.9, ptr %2, i32 0, i32 6, !dbg !5082
  store ptr %0, ptr %proto_config1, align 8, !dbg !5083, !tbaa !2831
  %3 = load ptr, ptr %req.addr, align 8, !dbg !5084, !tbaa !2816
  call void @ucp_proto_request_set_stage(ptr noundef %3, i8 noundef zeroext 0), !dbg !5085
  ret void, !dbg !5086
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_get_ucp_proto_select_hash(ptr noundef %h, i64 noundef %key) #6 !dbg !5087 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %key.addr = alloca i64, align 8
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %last = alloca i32, align 4
  %mask = alloca i32, align 4
  %step = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !5093, metadata !DIExpression()), !dbg !5102
  store i64 %key, ptr %key.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5094, metadata !DIExpression()), !dbg !5102
  %0 = load ptr, ptr %h.addr, align 8, !dbg !5103, !tbaa !2816
  %n_buckets = getelementptr inbounds %struct.kh_ucp_proto_select_hash_s, ptr %0, i32 0, i32 0, !dbg !5103
  %1 = load i32, ptr %n_buckets, align 8, !dbg !5103, !tbaa !5104
  %tobool = icmp ne i32 %1, 0, !dbg !5103
  br i1 %tobool, label %if.then, label %if.else, !dbg !5102

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #10, !dbg !5105
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !5095, metadata !DIExpression()), !dbg !5105
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !5105
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !5098, metadata !DIExpression()), !dbg !5105
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #10, !dbg !5105
  tail call void @llvm.dbg.declare(metadata ptr %last, metadata !5099, metadata !DIExpression()), !dbg !5105
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #10, !dbg !5105
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !5100, metadata !DIExpression()), !dbg !5105
  call void @llvm.lifetime.start.p0(i64 4, ptr %step) #10, !dbg !5105
  tail call void @llvm.dbg.declare(metadata ptr %step, metadata !5101, metadata !DIExpression()), !dbg !5105
  store i32 0, ptr %step, align 4, !dbg !5105, !tbaa !2821
  %2 = load ptr, ptr %h.addr, align 8, !dbg !5105, !tbaa !2816
  %n_buckets1 = getelementptr inbounds %struct.kh_ucp_proto_select_hash_s, ptr %2, i32 0, i32 0, !dbg !5105
  %3 = load i32, ptr %n_buckets1, align 8, !dbg !5105, !tbaa !5104
  %sub = sub i32 %3, 1, !dbg !5105
  store i32 %sub, ptr %mask, align 4, !dbg !5105, !tbaa !2821
  %4 = load i64, ptr %key.addr, align 8, !dbg !5105, !tbaa !2829
  %shr = lshr i64 %4, 33, !dbg !5105
  %5 = load i64, ptr %key.addr, align 8, !dbg !5105, !tbaa !2829
  %xor = xor i64 %shr, %5, !dbg !5105
  %6 = load i64, ptr %key.addr, align 8, !dbg !5105, !tbaa !2829
  %shl = shl i64 %6, 11, !dbg !5105
  %xor2 = xor i64 %xor, %shl, !dbg !5105
  %conv = trunc i64 %xor2 to i32, !dbg !5105
  store i32 %conv, ptr %k, align 4, !dbg !5105, !tbaa !2821
  %7 = load i32, ptr %k, align 4, !dbg !5105, !tbaa !2821
  %8 = load i32, ptr %mask, align 4, !dbg !5105, !tbaa !2821
  %and = and i32 %7, %8, !dbg !5105
  store i32 %and, ptr %i, align 4, !dbg !5105, !tbaa !2821
  %9 = load i32, ptr %i, align 4, !dbg !5105, !tbaa !2821
  store i32 %9, ptr %last, align 4, !dbg !5105, !tbaa !2821
  br label %while.cond, !dbg !5105

while.cond:                                       ; preds = %if.end, %if.then
  %10 = load ptr, ptr %h.addr, align 8, !dbg !5105, !tbaa !2816
  %flags = getelementptr inbounds %struct.kh_ucp_proto_select_hash_s, ptr %10, i32 0, i32 4, !dbg !5105
  %11 = load ptr, ptr %flags, align 8, !dbg !5105, !tbaa !5106
  %12 = load i32, ptr %i, align 4, !dbg !5105, !tbaa !2821
  %shr3 = lshr i32 %12, 4, !dbg !5105
  %idxprom = zext i32 %shr3 to i64, !dbg !5105
  %arrayidx = getelementptr inbounds i32, ptr %11, i64 %idxprom, !dbg !5105
  %13 = load i32, ptr %arrayidx, align 4, !dbg !5105, !tbaa !2821
  %14 = load i32, ptr %i, align 4, !dbg !5105, !tbaa !2821
  %and4 = and i32 %14, 15, !dbg !5105
  %shl5 = shl i32 %and4, 1, !dbg !5105
  %shr6 = lshr i32 %13, %shl5, !dbg !5105
  %and7 = and i32 %shr6, 2, !dbg !5105
  %tobool8 = icmp ne i32 %and7, 0, !dbg !5105
  br i1 %tobool8, label %land.end, label %land.rhs, !dbg !5105

land.rhs:                                         ; preds = %while.cond
  %15 = load ptr, ptr %h.addr, align 8, !dbg !5105, !tbaa !2816
  %flags9 = getelementptr inbounds %struct.kh_ucp_proto_select_hash_s, ptr %15, i32 0, i32 4, !dbg !5105
  %16 = load ptr, ptr %flags9, align 8, !dbg !5105, !tbaa !5106
  %17 = load i32, ptr %i, align 4, !dbg !5105, !tbaa !2821
  %shr10 = lshr i32 %17, 4, !dbg !5105
  %idxprom11 = zext i32 %shr10 to i64, !dbg !5105
  %arrayidx12 = getelementptr inbounds i32, ptr %16, i64 %idxprom11, !dbg !5105
  %18 = load i32, ptr %arrayidx12, align 4, !dbg !5105, !tbaa !2821
  %19 = load i32, ptr %i, align 4, !dbg !5105, !tbaa !2821
  %and13 = and i32 %19, 15, !dbg !5105
  %shl14 = shl i32 %and13, 1, !dbg !5105
  %shr15 = lshr i32 %18, %shl14, !dbg !5105
  %and16 = and i32 %shr15, 1, !dbg !5105
  %tobool17 = icmp ne i32 %and16, 0, !dbg !5105
  br i1 %tobool17, label %lor.end, label %lor.rhs, !dbg !5105

lor.rhs:                                          ; preds = %land.rhs
  %20 = load ptr, ptr %h.addr, align 8, !dbg !5105, !tbaa !2816
  %keys = getelementptr inbounds %struct.kh_ucp_proto_select_hash_s, ptr %20, i32 0, i32 5, !dbg !5105
  %21 = load ptr, ptr %keys, align 8, !dbg !5105, !tbaa !5107
  %22 = load i32, ptr %i, align 4, !dbg !5105, !tbaa !2821
  %idxprom18 = zext i32 %22 to i64, !dbg !5105
  %arrayidx19 = getelementptr inbounds i64, ptr %21, i64 %idxprom18, !dbg !5105
  %23 = load i64, ptr %arrayidx19, align 8, !dbg !5105, !tbaa !2829
  %24 = load i64, ptr %key.addr, align 8, !dbg !5105, !tbaa !2829
  %cmp = icmp eq i64 %23, %24, !dbg !5105
  %lnot = xor i1 %cmp, true, !dbg !5105
  br label %lor.end, !dbg !5105

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %25 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %26 = phi i1 [ false, %while.cond ], [ %25, %lor.end ], !dbg !5108
  br i1 %26, label %while.body, label %while.end, !dbg !5105

while.body:                                       ; preds = %land.end
  %27 = load i32, ptr %i, align 4, !dbg !5109, !tbaa !2821
  %28 = load i32, ptr %step, align 4, !dbg !5109, !tbaa !2821
  %inc = add i32 %28, 1, !dbg !5109
  store i32 %inc, ptr %step, align 4, !dbg !5109, !tbaa !2821
  %add = add i32 %27, %inc, !dbg !5109
  %29 = load i32, ptr %mask, align 4, !dbg !5109, !tbaa !2821
  %and21 = and i32 %add, %29, !dbg !5109
  store i32 %and21, ptr %i, align 4, !dbg !5109, !tbaa !2821
  %30 = load i32, ptr %i, align 4, !dbg !5111, !tbaa !2821
  %31 = load i32, ptr %last, align 4, !dbg !5111, !tbaa !2821
  %cmp22 = icmp eq i32 %30, %31, !dbg !5111
  br i1 %cmp22, label %if.then24, label %if.end, !dbg !5109

if.then24:                                        ; preds = %while.body
  %32 = load ptr, ptr %h.addr, align 8, !dbg !5111, !tbaa !2816
  %n_buckets25 = getelementptr inbounds %struct.kh_ucp_proto_select_hash_s, ptr %32, i32 0, i32 0, !dbg !5111
  %33 = load i32, ptr %n_buckets25, align 8, !dbg !5111, !tbaa !5104
  store i32 %33, ptr %retval, align 4, !dbg !5111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5111

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !5105, !llvm.loop !5113

while.end:                                        ; preds = %land.end
  %34 = load ptr, ptr %h.addr, align 8, !dbg !5105, !tbaa !2816
  %flags26 = getelementptr inbounds %struct.kh_ucp_proto_select_hash_s, ptr %34, i32 0, i32 4, !dbg !5105
  %35 = load ptr, ptr %flags26, align 8, !dbg !5105, !tbaa !5106
  %36 = load i32, ptr %i, align 4, !dbg !5105, !tbaa !2821
  %shr27 = lshr i32 %36, 4, !dbg !5105
  %idxprom28 = zext i32 %shr27 to i64, !dbg !5105
  %arrayidx29 = getelementptr inbounds i32, ptr %35, i64 %idxprom28, !dbg !5105
  %37 = load i32, ptr %arrayidx29, align 4, !dbg !5105, !tbaa !2821
  %38 = load i32, ptr %i, align 4, !dbg !5105, !tbaa !2821
  %and30 = and i32 %38, 15, !dbg !5105
  %shl31 = shl i32 %and30, 1, !dbg !5105
  %shr32 = lshr i32 %37, %shl31, !dbg !5105
  %and33 = and i32 %shr32, 3, !dbg !5105
  %tobool34 = icmp ne i32 %and33, 0, !dbg !5105
  br i1 %tobool34, label %cond.true, label %cond.false, !dbg !5105

cond.true:                                        ; preds = %while.end
  %39 = load ptr, ptr %h.addr, align 8, !dbg !5105, !tbaa !2816
  %n_buckets35 = getelementptr inbounds %struct.kh_ucp_proto_select_hash_s, ptr %39, i32 0, i32 0, !dbg !5105
  %40 = load i32, ptr %n_buckets35, align 8, !dbg !5105, !tbaa !5104
  br label %cond.end, !dbg !5105

cond.false:                                       ; preds = %while.end
  %41 = load i32, ptr %i, align 4, !dbg !5105, !tbaa !2821
  br label %cond.end, !dbg !5105

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %40, %cond.true ], [ %41, %cond.false ], !dbg !5105
  store i32 %cond, ptr %retval, align 4, !dbg !5105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5105

cleanup:                                          ; preds = %cond.end, %if.then24
  call void @llvm.lifetime.end.p0(i64 4, ptr %step) #10, !dbg !5103
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #10, !dbg !5103
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #10, !dbg !5103
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !5103
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #10, !dbg !5103
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5103
  br label %return, !dbg !5103

return:                                           ; preds = %if.else, %cleanup
  %42 = load i32, ptr %retval, align 4, !dbg !5102
  ret i32 %42, !dbg !5102
}

declare !dbg !5114 ptr @ucp_proto_select_lookup_slow(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @ucp_proto_select_thresholds_search(ptr noundef %select_elem, i64 noundef %msg_length) #0 !dbg !5117 {
entry:
  %retval = alloca ptr, align 8
  %select_elem.addr = alloca ptr, align 8
  %msg_length.addr = alloca i64, align 8
  %thresholds = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %select_elem, ptr %select_elem.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %select_elem.addr, metadata !5121, metadata !DIExpression()), !dbg !5124
  store i64 %msg_length, ptr %msg_length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %msg_length.addr, metadata !5122, metadata !DIExpression()), !dbg !5125
  call void @llvm.lifetime.start.p0(i64 8, ptr %thresholds) #10, !dbg !5126
  tail call void @llvm.dbg.declare(metadata ptr %thresholds, metadata !5123, metadata !DIExpression()), !dbg !5127
  %0 = load ptr, ptr %select_elem.addr, align 8, !dbg !5128, !tbaa !2816
  %thresholds1 = getelementptr inbounds %struct.ucp_proto_select_elem_t, ptr %0, i32 0, i32 0, !dbg !5129
  %1 = load ptr, ptr %thresholds1, align 8, !dbg !5129, !tbaa !5130
  store ptr %1, ptr %thresholds, align 8, !dbg !5127, !tbaa !2816
  %2 = load i64, ptr %msg_length.addr, align 8, !dbg !5132, !tbaa !2829
  %3 = load ptr, ptr %thresholds, align 8, !dbg !5132, !tbaa !2816
  %arrayidx = getelementptr inbounds %struct.ucp_proto_threshold_elem_t, ptr %3, i64 0, !dbg !5132
  %max_msg_length = getelementptr inbounds %struct.ucp_proto_threshold_elem_t, ptr %arrayidx, i32 0, i32 1, !dbg !5132
  %4 = load i64, ptr %max_msg_length, align 8, !dbg !5132, !tbaa !5134
  %cmp = icmp ule i64 %2, %4, !dbg !5132
  %conv = zext i1 %cmp to i32, !dbg !5132
  %conv2 = sext i32 %conv to i64, !dbg !5132
  %expval = call i64 @llvm.expect.i64(i64 %conv2, i64 1), !dbg !5132
  %tobool = icmp ne i64 %expval, 0, !dbg !5132
  br i1 %tobool, label %if.then, label %if.end, !dbg !5137

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %thresholds, align 8, !dbg !5138, !tbaa !2816
  %arrayidx3 = getelementptr inbounds %struct.ucp_proto_threshold_elem_t, ptr %5, i64 0, !dbg !5138
  store ptr %arrayidx3, ptr %retval, align 8, !dbg !5138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5138

if.end:                                           ; preds = %entry
  %6 = load i64, ptr %msg_length.addr, align 8, !dbg !5140, !tbaa !2829
  %7 = load ptr, ptr %thresholds, align 8, !dbg !5140, !tbaa !2816
  %arrayidx4 = getelementptr inbounds %struct.ucp_proto_threshold_elem_t, ptr %7, i64 1, !dbg !5140
  %max_msg_length5 = getelementptr inbounds %struct.ucp_proto_threshold_elem_t, ptr %arrayidx4, i32 0, i32 1, !dbg !5140
  %8 = load i64, ptr %max_msg_length5, align 8, !dbg !5140, !tbaa !5134
  %cmp6 = icmp ule i64 %6, %8, !dbg !5140
  %conv7 = zext i1 %cmp6 to i32, !dbg !5140
  %conv8 = sext i32 %conv7 to i64, !dbg !5140
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 1), !dbg !5140
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !5140
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !5137

if.then11:                                        ; preds = %if.end
  %9 = load ptr, ptr %thresholds, align 8, !dbg !5142, !tbaa !2816
  %arrayidx12 = getelementptr inbounds %struct.ucp_proto_threshold_elem_t, ptr %9, i64 1, !dbg !5142
  store ptr %arrayidx12, ptr %retval, align 8, !dbg !5142
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5142

if.end13:                                         ; preds = %if.end
  %10 = load i64, ptr %msg_length.addr, align 8, !dbg !5144, !tbaa !2829
  %11 = load ptr, ptr %thresholds, align 8, !dbg !5144, !tbaa !2816
  %arrayidx14 = getelementptr inbounds %struct.ucp_proto_threshold_elem_t, ptr %11, i64 2, !dbg !5144
  %max_msg_length15 = getelementptr inbounds %struct.ucp_proto_threshold_elem_t, ptr %arrayidx14, i32 0, i32 1, !dbg !5144
  %12 = load i64, ptr %max_msg_length15, align 8, !dbg !5144, !tbaa !5134
  %cmp16 = icmp ule i64 %10, %12, !dbg !5144
  %conv17 = zext i1 %cmp16 to i32, !dbg !5144
  %conv18 = sext i32 %conv17 to i64, !dbg !5144
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 1), !dbg !5144
  %tobool20 = icmp ne i64 %expval19, 0, !dbg !5144
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !5137

if.then21:                                        ; preds = %if.end13
  %13 = load ptr, ptr %thresholds, align 8, !dbg !5146, !tbaa !2816
  %arrayidx22 = getelementptr inbounds %struct.ucp_proto_threshold_elem_t, ptr %13, i64 2, !dbg !5146
  store ptr %arrayidx22, ptr %retval, align 8, !dbg !5146
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5146

if.end23:                                         ; preds = %if.end13
  %14 = load ptr, ptr %thresholds, align 8, !dbg !5148, !tbaa !2816
  %add.ptr = getelementptr inbounds %struct.ucp_proto_threshold_elem_t, ptr %14, i64 3, !dbg !5149
  %15 = load i64, ptr %msg_length.addr, align 8, !dbg !5150, !tbaa !2829
  %call = call ptr @ucp_proto_thresholds_search_slow(ptr noundef %add.ptr, i64 noundef %15), !dbg !5151
  store ptr %call, ptr %retval, align 8, !dbg !5152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5152

cleanup:                                          ; preds = %if.end23, %if.then21, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %thresholds) #10, !dbg !5153
  %16 = load ptr, ptr %retval, align 8, !dbg !5153
  ret ptr %16, !dbg !5153
}

declare !dbg !5154 ptr @ucp_proto_thresholds_search_slow(ptr noundef, i64 noundef) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_proto_request_set_stage(ptr noundef %req, i8 noundef zeroext %proto_stage) #0 !dbg !5157 {
entry:
  %req.addr = alloca ptr, align 8
  %proto_stage.addr = alloca i8, align 1
  %proto = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5161, metadata !DIExpression()), !dbg !5164
  store i8 %proto_stage, ptr %proto_stage.addr, align 1, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %proto_stage.addr, metadata !5162, metadata !DIExpression()), !dbg !5165
  call void @llvm.lifetime.start.p0(i64 8, ptr %proto) #10, !dbg !5166
  tail call void @llvm.dbg.declare(metadata ptr %proto, metadata !5163, metadata !DIExpression()), !dbg !5167
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5168, !tbaa !2816
  %1 = getelementptr inbounds %struct.ucp_request, ptr %0, i32 0, i32 4, !dbg !5169
  %proto_config = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 6, !dbg !5170
  %2 = load ptr, ptr %proto_config, align 8, !dbg !5170, !tbaa !2831
  %proto1 = getelementptr inbounds %struct.ucp_proto_config_t, ptr %2, i32 0, i32 0, !dbg !5171
  %3 = load ptr, ptr %proto1, align 8, !dbg !5171, !tbaa !5172
  store ptr %3, ptr %proto, align 8, !dbg !5167, !tbaa !2816
  br label %do.body, !dbg !5173

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5174

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !5176

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5176

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5174

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5174

do.end4:                                          ; preds = %do.cond3
  %4 = load i8, ptr %proto_stage.addr, align 1, !dbg !5178, !tbaa !2831
  %5 = load ptr, ptr %req.addr, align 8, !dbg !5179, !tbaa !2816
  %6 = getelementptr inbounds %struct.ucp_request, ptr %5, i32 0, i32 4, !dbg !5180
  %proto_stage5 = getelementptr inbounds %struct.anon.9, ptr %6, i32 0, i32 13, !dbg !5181
  store i8 %4, ptr %proto_stage5, align 1, !dbg !5182, !tbaa !2831
  %7 = load ptr, ptr %proto, align 8, !dbg !5183, !tbaa !2816
  %progress = getelementptr inbounds %struct.ucp_proto, ptr %7, i32 0, i32 5, !dbg !5186
  %8 = load i8, ptr %proto_stage.addr, align 1, !dbg !5187, !tbaa !2831
  %idxprom = zext i8 %8 to i64, !dbg !5183
  %arrayidx = getelementptr inbounds [8 x ptr], ptr %progress, i64 0, i64 %idxprom, !dbg !5183
  %9 = load ptr, ptr %arrayidx, align 8, !dbg !5183, !tbaa !2816
  %10 = load ptr, ptr %req.addr, align 8, !dbg !5188, !tbaa !2816
  %11 = getelementptr inbounds %struct.ucp_request, ptr %10, i32 0, i32 4, !dbg !5189
  %uct = getelementptr inbounds %struct.anon.9, ptr %11, i32 0, i32 14, !dbg !5190
  %func = getelementptr inbounds %struct.uct_pending_req, ptr %uct, i32 0, i32 0, !dbg !5191
  store ptr %9, ptr %func, align 8, !dbg !5192, !tbaa !2831
  call void @llvm.lifetime.end.p0(i64 8, ptr %proto) #10, !dbg !5193
  ret void, !dbg !5193
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ucs_mpool_put_inline(ptr noundef %obj) #6 !dbg !5194 {
entry:
  %obj.addr = alloca ptr, align 8
  %elem = alloca ptr, align 8
  %mp = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !5196, metadata !DIExpression()), !dbg !5199
  call void @llvm.lifetime.start.p0(i64 8, ptr %elem) #10, !dbg !5200
  tail call void @llvm.dbg.declare(metadata ptr %elem, metadata !5197, metadata !DIExpression()), !dbg !5201
  call void @llvm.lifetime.start.p0(i64 8, ptr %mp) #10, !dbg !5202
  tail call void @llvm.dbg.declare(metadata ptr %mp, metadata !5198, metadata !DIExpression()), !dbg !5203
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !5204, !tbaa !2816
  %call = call ptr @ucs_mpool_obj_to_elem(ptr noundef %0), !dbg !5205
  store ptr %call, ptr %elem, align 8, !dbg !5206, !tbaa !2816
  %1 = load ptr, ptr %elem, align 8, !dbg !5207, !tbaa !2816
  %2 = load ptr, ptr %1, align 8, !dbg !5208, !tbaa !2831
  store ptr %2, ptr %mp, align 8, !dbg !5209, !tbaa !2816
  %3 = load ptr, ptr %mp, align 8, !dbg !5210, !tbaa !2816
  %4 = load ptr, ptr %elem, align 8, !dbg !5211, !tbaa !2816
  call void @ucs_mpool_add_to_freelist(ptr noundef %3, ptr noundef %4, i32 noundef 0), !dbg !5212
  call void @llvm.lifetime.end.p0(i64 8, ptr %mp) #10, !dbg !5213
  call void @llvm.lifetime.end.p0(i64 8, ptr %elem) #10, !dbg !5213
  ret void, !dbg !5213
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ucs_mpool_obj_to_elem(ptr noundef %obj) #6 !dbg !5214 {
entry:
  %obj.addr = alloca ptr, align 8
  %elem = alloca ptr, align 8
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !5218, metadata !DIExpression()), !dbg !5220
  call void @llvm.lifetime.start.p0(i64 8, ptr %elem) #10, !dbg !5221
  tail call void @llvm.dbg.declare(metadata ptr %elem, metadata !5219, metadata !DIExpression()), !dbg !5222
  %0 = load ptr, ptr %obj.addr, align 8, !dbg !5223, !tbaa !2816
  %add.ptr = getelementptr inbounds %union.ucs_mpool_elem, ptr %0, i64 -1, !dbg !5224
  store ptr %add.ptr, ptr %elem, align 8, !dbg !5222, !tbaa !2816
  %1 = load ptr, ptr %elem, align 8, !dbg !5225, !tbaa !2816
  call void @llvm.lifetime.end.p0(i64 8, ptr %elem) #10, !dbg !5226
  ret ptr %1, !dbg !5227
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ucs_mpool_add_to_freelist(ptr noundef %mp, ptr noundef %elem, i32 noundef %add_to_tail) #6 !dbg !5228 {
entry:
  %mp.addr = alloca ptr, align 8
  %elem.addr = alloca ptr, align 8
  %add_to_tail.addr = alloca i32, align 4
  %tail = alloca ptr, align 8
  store ptr %mp, ptr %mp.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %mp.addr, metadata !5232, metadata !DIExpression()), !dbg !5236
  store ptr %elem, ptr %elem.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %elem.addr, metadata !5233, metadata !DIExpression()), !dbg !5237
  store i32 %add_to_tail, ptr %add_to_tail.addr, align 4, !tbaa !2821
  tail call void @llvm.dbg.declare(metadata ptr %add_to_tail.addr, metadata !5234, metadata !DIExpression()), !dbg !5238
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail) #10, !dbg !5239
  tail call void @llvm.dbg.declare(metadata ptr %tail, metadata !5235, metadata !DIExpression()), !dbg !5240
  %0 = load i32, ptr %add_to_tail.addr, align 4, !dbg !5241, !tbaa !2821
  %tobool = icmp ne i32 %0, 0, !dbg !5241
  br i1 %tobool, label %if.then, label %if.else6, !dbg !5243

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %elem.addr, align 8, !dbg !5244, !tbaa !2816
  store ptr null, ptr %1, align 8, !dbg !5246, !tbaa !2831
  %2 = load ptr, ptr %mp.addr, align 8, !dbg !5247, !tbaa !2816
  %freelist = getelementptr inbounds %struct.ucs_mpool, ptr %2, i32 0, i32 0, !dbg !5249
  %3 = load ptr, ptr %freelist, align 8, !dbg !5249, !tbaa !3508
  %cmp = icmp eq ptr %3, null, !dbg !5250
  br i1 %cmp, label %if.then1, label %if.else, !dbg !5251

if.then1:                                         ; preds = %if.then
  %4 = load ptr, ptr %elem.addr, align 8, !dbg !5252, !tbaa !2816
  %5 = load ptr, ptr %mp.addr, align 8, !dbg !5254, !tbaa !2816
  %freelist2 = getelementptr inbounds %struct.ucs_mpool, ptr %5, i32 0, i32 0, !dbg !5255
  store ptr %4, ptr %freelist2, align 8, !dbg !5256, !tbaa !3508
  br label %if.end, !dbg !5257

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %mp.addr, align 8, !dbg !5258, !tbaa !2816
  %data = getelementptr inbounds %struct.ucs_mpool, ptr %6, i32 0, i32 1, !dbg !5260
  %7 = load ptr, ptr %data, align 8, !dbg !5260, !tbaa !5261
  %tail3 = getelementptr inbounds %struct.ucs_mpool_data, ptr %7, i32 0, i32 8, !dbg !5262
  %8 = load ptr, ptr %tail3, align 8, !dbg !5262, !tbaa !5263
  store ptr %8, ptr %tail, align 8, !dbg !5265, !tbaa !2816
  %9 = load ptr, ptr %elem.addr, align 8, !dbg !5266, !tbaa !2816
  %10 = load ptr, ptr %tail, align 8, !dbg !5267, !tbaa !2816
  store ptr %9, ptr %10, align 8, !dbg !5268, !tbaa !2831
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %11 = load ptr, ptr %elem.addr, align 8, !dbg !5269, !tbaa !2816
  %12 = load ptr, ptr %mp.addr, align 8, !dbg !5270, !tbaa !2816
  %data4 = getelementptr inbounds %struct.ucs_mpool, ptr %12, i32 0, i32 1, !dbg !5271
  %13 = load ptr, ptr %data4, align 8, !dbg !5271, !tbaa !5261
  %tail5 = getelementptr inbounds %struct.ucs_mpool_data, ptr %13, i32 0, i32 8, !dbg !5272
  store ptr %11, ptr %tail5, align 8, !dbg !5273, !tbaa !5263
  br label %if.end9, !dbg !5274

if.else6:                                         ; preds = %entry
  %14 = load ptr, ptr %mp.addr, align 8, !dbg !5275, !tbaa !2816
  %freelist7 = getelementptr inbounds %struct.ucs_mpool, ptr %14, i32 0, i32 0, !dbg !5277
  %15 = load ptr, ptr %freelist7, align 8, !dbg !5277, !tbaa !3508
  %16 = load ptr, ptr %elem.addr, align 8, !dbg !5278, !tbaa !2816
  store ptr %15, ptr %16, align 8, !dbg !5279, !tbaa !2831
  %17 = load ptr, ptr %elem.addr, align 8, !dbg !5280, !tbaa !2816
  %18 = load ptr, ptr %mp.addr, align 8, !dbg !5281, !tbaa !2816
  %freelist8 = getelementptr inbounds %struct.ucs_mpool, ptr %18, i32 0, i32 0, !dbg !5282
  store ptr %17, ptr %freelist8, align 8, !dbg !5283, !tbaa !3508
  br label %if.end9

if.end9:                                          ; preds = %if.else6, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail) #10, !dbg !5284
  ret void, !dbg !5284
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @ucp_request_try_send(ptr noundef %req) #0 !dbg !5285 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %status = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5289, metadata !DIExpression()), !dbg !5291
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #10, !dbg !5292
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !5290, metadata !DIExpression()), !dbg !5293
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5294, !tbaa !2816
  %1 = getelementptr inbounds %struct.ucp_request, ptr %0, i32 0, i32 4, !dbg !5295
  %uct = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 14, !dbg !5296
  %func = getelementptr inbounds %struct.uct_pending_req, ptr %uct, i32 0, i32 0, !dbg !5297
  %2 = load ptr, ptr %func, align 8, !dbg !5297, !tbaa !2831
  %3 = load ptr, ptr %req.addr, align 8, !dbg !5298, !tbaa !2816
  %4 = getelementptr inbounds %struct.ucp_request, ptr %3, i32 0, i32 4, !dbg !5299
  %uct1 = getelementptr inbounds %struct.anon.9, ptr %4, i32 0, i32 14, !dbg !5300
  %call = call signext i8 %2(ptr noundef %uct1), !dbg !5294
  store i8 %call, ptr %status, align 1, !dbg !5301, !tbaa !2831
  %5 = load i8, ptr %status, align 1, !dbg !5302, !tbaa !2831
  %conv = sext i8 %5 to i32, !dbg !5302
  %cmp = icmp eq i32 %conv, 0, !dbg !5304
  br i1 %cmp, label %if.then, label %if.else, !dbg !5305

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !5306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5306

if.else:                                          ; preds = %entry
  %6 = load i8, ptr %status, align 1, !dbg !5308, !tbaa !2831
  %conv3 = sext i8 %6 to i32, !dbg !5308
  %cmp4 = icmp eq i32 %conv3, 1, !dbg !5310
  br i1 %cmp4, label %if.then6, label %if.else7, !dbg !5311

if.then6:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4, !dbg !5312
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5312

if.else7:                                         ; preds = %if.else
  %7 = load i8, ptr %status, align 1, !dbg !5314, !tbaa !2831
  %conv8 = sext i8 %7 to i32, !dbg !5314
  %cmp9 = icmp eq i32 %conv8, -2, !dbg !5316
  br i1 %cmp9, label %if.then11, label %if.end, !dbg !5317

if.then11:                                        ; preds = %if.else7
  %8 = load ptr, ptr %req.addr, align 8, !dbg !5318, !tbaa !2816
  %call12 = call i32 @ucp_request_pending_add(ptr noundef %8), !dbg !5320
  store i32 %call12, ptr %retval, align 4, !dbg !5321
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5321

if.end:                                           ; preds = %if.else7
  br label %if.end13

if.end13:                                         ; preds = %if.end
  br label %if.end14

if.end14:                                         ; preds = %if.end13
  %9 = load i8, ptr %status, align 1, !dbg !5322, !tbaa !2831
  %call15 = call ptr @ucs_status_string(i8 noundef signext %9), !dbg !5322
  call void (ptr, i32, ptr, ptr, ...) @ucs_fatal_error_format(ptr noundef @.str.6, i32 noundef 346, ptr noundef @__FUNCTION__.ucp_request_try_send, ptr noundef @.str.8, ptr noundef %call15) #11, !dbg !5322
  unreachable, !dbg !5322

cleanup:                                          ; preds = %if.then11, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #10, !dbg !5323
  %10 = load i32, ptr %retval, align 4, !dbg !5323
  ret i32 %10, !dbg !5323
}

declare !dbg !5324 i32 @ucp_request_pending_add(ptr noundef) #2

declare !dbg !5325 ptr @ucs_status_string(i8 noundef signext) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal signext i8 @ucp_rma_request_init(ptr noundef %req, ptr noundef %ep, ptr noundef %buffer, i64 noundef %length, i64 noundef %remote_addr, ptr noundef %rkey, ptr noundef %cb, i64 noundef %zcopy_thresh, ptr noundef %param) #0 !dbg !5328 {
entry:
  %retval = alloca i8, align 1
  %req.addr = alloca ptr, align 8
  %ep.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %remote_addr.addr = alloca i64, align 8
  %rkey.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  %zcopy_thresh.addr = alloca i64, align 8
  %param.addr = alloca ptr, align 8
  %context = alloca ptr, align 8
  %status = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5332, metadata !DIExpression()), !dbg !5343
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ep.addr, metadata !5333, metadata !DIExpression()), !dbg !5344
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5334, metadata !DIExpression()), !dbg !5345
  store i64 %length, ptr %length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !5335, metadata !DIExpression()), !dbg !5346
  store i64 %remote_addr, ptr %remote_addr.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %remote_addr.addr, metadata !5336, metadata !DIExpression()), !dbg !5347
  store ptr %rkey, ptr %rkey.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %rkey.addr, metadata !5337, metadata !DIExpression()), !dbg !5348
  store ptr %cb, ptr %cb.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %cb.addr, metadata !5338, metadata !DIExpression()), !dbg !5349
  store i64 %zcopy_thresh, ptr %zcopy_thresh.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %zcopy_thresh.addr, metadata !5339, metadata !DIExpression()), !dbg !5350
  store ptr %param, ptr %param.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5340, metadata !DIExpression()), !dbg !5351
  call void @llvm.lifetime.start.p0(i64 8, ptr %context) #10, !dbg !5352
  tail call void @llvm.dbg.declare(metadata ptr %context, metadata !5341, metadata !DIExpression()), !dbg !5353
  %0 = load ptr, ptr %ep.addr, align 8, !dbg !5354, !tbaa !2816
  %worker = getelementptr inbounds %struct.ucp_ep, ptr %0, i32 0, i32 0, !dbg !5355
  %1 = load ptr, ptr %worker, align 8, !dbg !5355, !tbaa !3153
  %context1 = getelementptr inbounds %struct.ucp_worker, ptr %1, i32 0, i32 2, !dbg !5356
  %2 = load ptr, ptr %context1, align 8, !dbg !5356, !tbaa !3195
  store ptr %2, ptr %context, align 8, !dbg !5353, !tbaa !2816
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #10, !dbg !5357
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !5342, metadata !DIExpression()), !dbg !5358
  %3 = load ptr, ptr %req.addr, align 8, !dbg !5359, !tbaa !2816
  %flags = getelementptr inbounds %struct.ucp_request, ptr %3, i32 0, i32 1, !dbg !5360
  store i32 0, ptr %flags, align 4, !dbg !5361, !tbaa !3651
  %4 = load ptr, ptr %ep.addr, align 8, !dbg !5362, !tbaa !2816
  %5 = load ptr, ptr %req.addr, align 8, !dbg !5363, !tbaa !2816
  %6 = getelementptr inbounds %struct.ucp_request, ptr %5, i32 0, i32 4, !dbg !5364
  %ep2 = getelementptr inbounds %struct.anon.9, ptr %6, i32 0, i32 0, !dbg !5365
  store ptr %4, ptr %ep2, align 8, !dbg !5366, !tbaa !2831
  %7 = load ptr, ptr %buffer.addr, align 8, !dbg !5367, !tbaa !2816
  %8 = load ptr, ptr %req.addr, align 8, !dbg !5368, !tbaa !2816
  %9 = getelementptr inbounds %struct.ucp_request, ptr %8, i32 0, i32 4, !dbg !5369
  %10 = getelementptr inbounds %struct.anon.9, ptr %9, i32 0, i32 1, !dbg !5370
  store ptr %7, ptr %10, align 8, !dbg !5371, !tbaa !2831
  %11 = load ptr, ptr %req.addr, align 8, !dbg !5372, !tbaa !2816
  %12 = getelementptr inbounds %struct.ucp_request, ptr %11, i32 0, i32 4, !dbg !5373
  %datatype = getelementptr inbounds %struct.anon.9, ptr %12, i32 0, i32 2, !dbg !5374
  store i64 8, ptr %datatype, align 8, !dbg !5375, !tbaa !2831
  %13 = load ptr, ptr %context, align 8, !dbg !5376, !tbaa !2816
  %14 = load ptr, ptr %buffer.addr, align 8, !dbg !5377, !tbaa !2816
  %15 = load i64, ptr %length.addr, align 8, !dbg !5378, !tbaa !2829
  %16 = load ptr, ptr %param.addr, align 8, !dbg !5379, !tbaa !2816
  %call = call i32 @ucp_request_get_memory_type(ptr noundef %13, ptr noundef %14, i64 noundef %15, ptr noundef %16), !dbg !5380
  %conv = trunc i32 %call to i8, !dbg !5380
  %17 = load ptr, ptr %req.addr, align 8, !dbg !5381, !tbaa !2816
  %18 = getelementptr inbounds %struct.ucp_request, ptr %17, i32 0, i32 4, !dbg !5382
  %mem_type = getelementptr inbounds %struct.anon.9, ptr %18, i32 0, i32 10, !dbg !5383
  store i8 %conv, ptr %mem_type, align 2, !dbg !5384, !tbaa !2831
  %19 = load i64, ptr %length.addr, align 8, !dbg !5385, !tbaa !2829
  %20 = load ptr, ptr %req.addr, align 8, !dbg !5386, !tbaa !2816
  %21 = getelementptr inbounds %struct.ucp_request, ptr %20, i32 0, i32 4, !dbg !5387
  %length3 = getelementptr inbounds %struct.anon.9, ptr %21, i32 0, i32 3, !dbg !5388
  store i64 %19, ptr %length3, align 8, !dbg !5389, !tbaa !2831
  %22 = load i64, ptr %remote_addr.addr, align 8, !dbg !5390, !tbaa !2829
  %23 = load ptr, ptr %req.addr, align 8, !dbg !5391, !tbaa !2816
  %24 = getelementptr inbounds %struct.ucp_request, ptr %23, i32 0, i32 4, !dbg !5392
  %25 = getelementptr inbounds %struct.anon.9, ptr %24, i32 0, i32 8, !dbg !5393
  %remote_addr4 = getelementptr inbounds %struct.anon.26, ptr %25, i32 0, i32 0, !dbg !5394
  store i64 %22, ptr %remote_addr4, align 8, !dbg !5395, !tbaa !2831
  %26 = load ptr, ptr %rkey.addr, align 8, !dbg !5396, !tbaa !2816
  %27 = load ptr, ptr %req.addr, align 8, !dbg !5397, !tbaa !2816
  %28 = getelementptr inbounds %struct.ucp_request, ptr %27, i32 0, i32 4, !dbg !5398
  %29 = getelementptr inbounds %struct.anon.9, ptr %28, i32 0, i32 8, !dbg !5399
  %rkey5 = getelementptr inbounds %struct.anon.26, ptr %29, i32 0, i32 1, !dbg !5400
  store ptr %26, ptr %rkey5, align 8, !dbg !5401, !tbaa !2831
  %30 = load ptr, ptr %cb.addr, align 8, !dbg !5402, !tbaa !2816
  %31 = load ptr, ptr %req.addr, align 8, !dbg !5403, !tbaa !2816
  %32 = getelementptr inbounds %struct.ucp_request, ptr %31, i32 0, i32 4, !dbg !5404
  %uct = getelementptr inbounds %struct.anon.9, ptr %32, i32 0, i32 14, !dbg !5405
  %func = getelementptr inbounds %struct.uct_pending_req, ptr %uct, i32 0, i32 0, !dbg !5406
  store ptr %30, ptr %func, align 8, !dbg !5407, !tbaa !2831
  %33 = load ptr, ptr %rkey.addr, align 8, !dbg !5408, !tbaa !2816
  %34 = getelementptr inbounds %struct.ucp_rkey, ptr %33, i32 0, i32 0, !dbg !5409
  %rma_lane = getelementptr inbounds %struct.anon.73, ptr %34, i32 0, i32 4, !dbg !5410
  %35 = load i8, ptr %rma_lane, align 4, !dbg !5410, !tbaa !2831
  %36 = load ptr, ptr %req.addr, align 8, !dbg !5411, !tbaa !2816
  %37 = getelementptr inbounds %struct.ucp_request, ptr %36, i32 0, i32 4, !dbg !5412
  %lane = getelementptr inbounds %struct.anon.9, ptr %37, i32 0, i32 12, !dbg !5413
  store i8 %35, ptr %lane, align 4, !dbg !5414, !tbaa !2831
  %38 = load ptr, ptr %req.addr, align 8, !dbg !5415, !tbaa !2816
  %39 = load i64, ptr %length.addr, align 8, !dbg !5416, !tbaa !2829
  call void @ucp_request_send_state_init(ptr noundef %38, i64 noundef 8, i64 noundef %39), !dbg !5417
  %40 = load ptr, ptr %req.addr, align 8, !dbg !5418, !tbaa !2816
  %41 = load i64, ptr %length.addr, align 8, !dbg !5419, !tbaa !2829
  %42 = load i64, ptr %zcopy_thresh.addr, align 8, !dbg !5420, !tbaa !2829
  %cmp = icmp ult i64 %41, %42, !dbg !5421
  %43 = zext i1 %cmp to i64, !dbg !5422
  %cond = select i1 %cmp, ptr @ucp_rma_request_bcopy_completion, ptr @ucp_rma_request_zcopy_completion, !dbg !5422
  call void @ucp_request_send_state_reset(ptr noundef %40, ptr noundef %cond, i32 noundef 4), !dbg !5423
  %44 = load i64, ptr %length.addr, align 8, !dbg !5424, !tbaa !2829
  %45 = load i64, ptr %zcopy_thresh.addr, align 8, !dbg !5426, !tbaa !2829
  %cmp7 = icmp ult i64 %44, %45, !dbg !5427
  br i1 %cmp7, label %if.then, label %if.end, !dbg !5428

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1, !dbg !5429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5429

if.end:                                           ; preds = %entry
  %46 = load ptr, ptr %req.addr, align 8, !dbg !5431, !tbaa !2816
  %47 = load ptr, ptr %ep.addr, align 8, !dbg !5432, !tbaa !2816
  %call9 = call ptr @ucp_ep_config(ptr noundef %47), !dbg !5433
  %key = getelementptr inbounds %struct.ucp_ep_config, ptr %call9, i32 0, i32 0, !dbg !5434
  %rma_md_map = getelementptr inbounds %struct.ucp_ep_config_key, ptr %key, i32 0, i32 13, !dbg !5435
  %48 = load i64, ptr %rma_md_map, align 8, !dbg !5435, !tbaa !5436
  %49 = load ptr, ptr %param.addr, align 8, !dbg !5449, !tbaa !2816
  %call10 = call signext i8 @ucp_send_request_set_user_memh(ptr noundef %46, i64 noundef %48, ptr noundef %49), !dbg !5450
  store i8 %call10, ptr %status, align 1, !dbg !5451, !tbaa !2831
  %50 = load i8, ptr %status, align 1, !dbg !5452, !tbaa !2831
  %conv11 = sext i8 %50 to i32, !dbg !5452
  %cmp12 = icmp ne i32 %conv11, 0, !dbg !5454
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !5455

if.then14:                                        ; preds = %if.end
  %51 = load i8, ptr %status, align 1, !dbg !5456, !tbaa !2831
  store i8 %51, ptr %retval, align 1, !dbg !5458
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5458

if.end15:                                         ; preds = %if.end
  %52 = load ptr, ptr %req.addr, align 8, !dbg !5459, !tbaa !2816
  %53 = load ptr, ptr %req.addr, align 8, !dbg !5460, !tbaa !2816
  %54 = getelementptr inbounds %struct.ucp_request, ptr %53, i32 0, i32 4, !dbg !5461
  %lane16 = getelementptr inbounds %struct.anon.9, ptr %54, i32 0, i32 12, !dbg !5462
  %55 = load i8, ptr %lane16, align 4, !dbg !5462, !tbaa !2831
  %call17 = call signext i8 @ucp_request_send_buffer_reg_lane(ptr noundef %52, i8 noundef zeroext %55, i32 noundef 0), !dbg !5463
  store i8 %call17, ptr %retval, align 1, !dbg !5464
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5464

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #10, !dbg !5465
  call void @llvm.lifetime.end.p0(i64 8, ptr %context) #10, !dbg !5465
  %56 = load i8, ptr %retval, align 1, !dbg !5465
  ret i8 %56, !dbg !5465
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @ucp_rma_send_request(ptr noundef %req, ptr noundef %param) #0 !dbg !5466 {
entry:
  %retval = alloca ptr, align 8
  %req.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %_status = alloca i8, align 1
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5470, metadata !DIExpression()), !dbg !5476
  store ptr %param, ptr %param.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5471, metadata !DIExpression()), !dbg !5477
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5478, !tbaa !2816
  call void @ucp_request_send(ptr noundef %0), !dbg !5479
  %1 = load ptr, ptr %req.addr, align 8, !dbg !5480, !tbaa !2816
  %flags = getelementptr inbounds %struct.ucp_request, ptr %1, i32 0, i32 1, !dbg !5481
  %2 = load i32, ptr %flags, align 4, !dbg !5481, !tbaa !3651
  %and = and i32 %2, 1, !dbg !5482
  %tobool = icmp ne i32 %and, 0, !dbg !5482
  br i1 %tobool, label %if.then, label %if.end18, !dbg !5483

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %param.addr, align 8, !dbg !5484, !tbaa !2816
  %op_attr_mask = getelementptr inbounds %struct.ucp_request_param_t, ptr %3, i32 0, i32 0, !dbg !5484
  %4 = load i32, ptr %op_attr_mask, align 8, !dbg !5484, !tbaa !3189
  %and1 = and i32 %4, 65536, !dbg !5484
  %tobool2 = icmp ne i32 %and1, 0, !dbg !5484
  br i1 %tobool2, label %if.then3, label %if.end11, !dbg !5486

if.then3:                                         ; preds = %if.then
  %5 = load ptr, ptr %param.addr, align 8, !dbg !5487, !tbaa !2816
  %op_attr_mask4 = getelementptr inbounds %struct.ucp_request_param_t, ptr %5, i32 0, i32 0, !dbg !5487
  %6 = load i32, ptr %op_attr_mask4, align 8, !dbg !5487, !tbaa !3189
  %and5 = and i32 %6, 2, !dbg !5487
  %tobool6 = icmp ne i32 %and5, 0, !dbg !5487
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !5490

if.then7:                                         ; preds = %if.then3
  %7 = load ptr, ptr %param.addr, align 8, !dbg !5491, !tbaa !2816
  %cb = getelementptr inbounds %struct.ucp_request_param_t, ptr %7, i32 0, i32 3, !dbg !5491
  %8 = load ptr, ptr %cb, align 8, !dbg !5491, !tbaa !2831
  %9 = load ptr, ptr %req.addr, align 8, !dbg !5491, !tbaa !2816
  %add.ptr = getelementptr inbounds %struct.ucp_request, ptr %9, i64 1, !dbg !5491
  %10 = load ptr, ptr %req.addr, align 8, !dbg !5491, !tbaa !2816
  %status = getelementptr inbounds %struct.ucp_request, ptr %10, i32 0, i32 0, !dbg !5491
  %11 = load i8, ptr %status, align 8, !dbg !5491, !tbaa !3663
  %12 = load ptr, ptr %param.addr, align 8, !dbg !5491, !tbaa !2816
  %user_data = getelementptr inbounds %struct.ucp_request_param_t, ptr %12, i32 0, i32 5, !dbg !5491
  %13 = load ptr, ptr %user_data, align 8, !dbg !5491, !tbaa !3664
  call void %8(ptr noundef %add.ptr, i8 noundef signext %11, ptr noundef %13), !dbg !5491
  br label %if.end, !dbg !5491

if.end:                                           ; preds = %if.then7, %if.then3
  br label %do.body, !dbg !5490

do.body:                                          ; preds = %if.end
  br label %do.body8, !dbg !5493

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !5495

do.end:                                           ; preds = %do.body8
  br label %do.end9, !dbg !5493

do.end9:                                          ; preds = %do.end
  %14 = load ptr, ptr %req.addr, align 8, !dbg !5490, !tbaa !2816
  %add.ptr10 = getelementptr inbounds %struct.ucp_request, ptr %14, i64 1, !dbg !5490
  store ptr %add.ptr10, ptr %retval, align 8, !dbg !5490
  br label %return, !dbg !5490

if.end11:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 1, ptr %_status) #10, !dbg !5497
  tail call void @llvm.dbg.declare(metadata ptr %_status, metadata !5472, metadata !DIExpression()), !dbg !5497
  %15 = load ptr, ptr %req.addr, align 8, !dbg !5497, !tbaa !2816
  %status12 = getelementptr inbounds %struct.ucp_request, ptr %15, i32 0, i32 0, !dbg !5497
  %16 = load i8, ptr %status12, align 8, !dbg !5497, !tbaa !3663
  store i8 %16, ptr %_status, align 1, !dbg !5497, !tbaa !2831
  %17 = load ptr, ptr %param.addr, align 8, !dbg !5498, !tbaa !2816
  %op_attr_mask13 = getelementptr inbounds %struct.ucp_request_param_t, ptr %17, i32 0, i32 0, !dbg !5498
  %18 = load i32, ptr %op_attr_mask13, align 8, !dbg !5498, !tbaa !3189
  %and14 = and i32 %18, 1, !dbg !5498
  %tobool15 = icmp ne i32 %and14, 0, !dbg !5498
  br i1 %tobool15, label %if.else, label %if.then16, !dbg !5497

if.then16:                                        ; preds = %if.end11
  %19 = load ptr, ptr %req.addr, align 8, !dbg !5500, !tbaa !2816
  call void @ucp_request_put(ptr noundef %19), !dbg !5500
  br label %if.end17, !dbg !5500

if.else:                                          ; preds = %if.end11
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then16
  %20 = load i8, ptr %_status, align 1, !dbg !5497, !tbaa !2831
  %conv = sext i8 %20 to i64, !dbg !5497
  %21 = inttoptr i64 %conv to ptr, !dbg !5497
  store ptr %21, ptr %retval, align 8, !dbg !5497
  call void @llvm.lifetime.end.p0(i64 1, ptr %_status) #10, !dbg !5486
  br label %return

if.end18:                                         ; preds = %entry
  br label %do.body19, !dbg !5502

do.body19:                                        ; preds = %if.end18
  br label %do.body20, !dbg !5503

do.body20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !5505

do.end21:                                         ; preds = %do.body20
  br label %do.end22, !dbg !5503

do.end22:                                         ; preds = %do.end21
  %22 = load ptr, ptr %param.addr, align 8, !dbg !5507, !tbaa !2816
  %op_attr_mask23 = getelementptr inbounds %struct.ucp_request_param_t, ptr %22, i32 0, i32 0, !dbg !5507
  %23 = load i32, ptr %op_attr_mask23, align 8, !dbg !5507, !tbaa !3189
  %and24 = and i32 %23, 2, !dbg !5507
  %tobool25 = icmp ne i32 %and24, 0, !dbg !5507
  br i1 %tobool25, label %if.then26, label %if.end38, !dbg !5509

if.then26:                                        ; preds = %do.end22
  %24 = load ptr, ptr %param.addr, align 8, !dbg !5510, !tbaa !2816
  %cb27 = getelementptr inbounds %struct.ucp_request_param_t, ptr %24, i32 0, i32 3, !dbg !5510
  %25 = load ptr, ptr %cb27, align 8, !dbg !5510, !tbaa !2831
  %26 = load ptr, ptr %req.addr, align 8, !dbg !5510, !tbaa !2816
  %27 = getelementptr inbounds %struct.ucp_request, ptr %26, i32 0, i32 4, !dbg !5510
  %cb28 = getelementptr inbounds %struct.anon.9, ptr %27, i32 0, i32 4, !dbg !5510
  store ptr %25, ptr %cb28, align 8, !dbg !5510, !tbaa !2831
  %28 = load ptr, ptr %req.addr, align 8, !dbg !5510, !tbaa !2816
  %flags29 = getelementptr inbounds %struct.ucp_request, ptr %28, i32 0, i32 1, !dbg !5510
  %29 = load i32, ptr %flags29, align 4, !dbg !5510, !tbaa !3651
  %or = or i32 %29, 64, !dbg !5510
  store i32 %or, ptr %flags29, align 4, !dbg !5510, !tbaa !3651
  %30 = load ptr, ptr %param.addr, align 8, !dbg !5514, !tbaa !2816
  %op_attr_mask30 = getelementptr inbounds %struct.ucp_request_param_t, ptr %30, i32 0, i32 0, !dbg !5514
  %31 = load i32, ptr %op_attr_mask30, align 8, !dbg !5514, !tbaa !3189
  %and31 = and i32 %31, 4, !dbg !5514
  %tobool32 = icmp ne i32 %and31, 0, !dbg !5514
  br i1 %tobool32, label %cond.true, label %cond.false, !dbg !5514

cond.true:                                        ; preds = %if.then26
  %32 = load ptr, ptr %param.addr, align 8, !dbg !5514, !tbaa !2816
  %user_data33 = getelementptr inbounds %struct.ucp_request_param_t, ptr %32, i32 0, i32 5, !dbg !5514
  %33 = load ptr, ptr %user_data33, align 8, !dbg !5514, !tbaa !3664
  br label %cond.end, !dbg !5514

cond.false:                                       ; preds = %if.then26
  br label %cond.end, !dbg !5514

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %33, %cond.true ], [ null, %cond.false ], !dbg !5514
  %34 = load ptr, ptr %req.addr, align 8, !dbg !5514, !tbaa !2816
  %35 = getelementptr inbounds %struct.ucp_request, ptr %34, i32 0, i32 3, !dbg !5514
  store ptr %cond, ptr %35, align 8, !dbg !5514, !tbaa !2831
  br label %do.body34, !dbg !5514

do.body34:                                        ; preds = %cond.end
  br label %do.body35, !dbg !5515

do.body35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !5517

do.end36:                                         ; preds = %do.body35
  br label %do.end37, !dbg !5515

do.end37:                                         ; preds = %do.end36
  br label %if.end38, !dbg !5519

if.end38:                                         ; preds = %do.end37, %do.end22
  %36 = load ptr, ptr %req.addr, align 8, !dbg !5520, !tbaa !2816
  %add.ptr39 = getelementptr inbounds %struct.ucp_request, ptr %36, i64 1, !dbg !5521
  store ptr %add.ptr39, ptr %retval, align 8, !dbg !5522
  br label %return, !dbg !5522

return:                                           ; preds = %if.end38, %if.end17, %do.end9
  %37 = load ptr, ptr %retval, align 8, !dbg !5523
  ret ptr %37, !dbg !5523
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @ucp_request_get_memory_type(ptr noundef %context, ptr noundef %address, i64 noundef %length, ptr noundef %param) #0 !dbg !5524 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %address.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %param.addr = alloca ptr, align 8
  %mem_info = alloca %struct.ucp_memory_info_t, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !5528, metadata !DIExpression()), !dbg !5533
  store ptr %address, ptr %address.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !5529, metadata !DIExpression()), !dbg !5534
  store i64 %length, ptr %length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !5530, metadata !DIExpression()), !dbg !5535
  store ptr %param, ptr %param.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5531, metadata !DIExpression()), !dbg !5536
  call void @llvm.lifetime.start.p0(i64 2, ptr %mem_info) #10, !dbg !5537
  tail call void @llvm.dbg.declare(metadata ptr %mem_info, metadata !5532, metadata !DIExpression()), !dbg !5538
  %0 = load ptr, ptr %param.addr, align 8, !dbg !5539, !tbaa !2816
  %op_attr_mask = getelementptr inbounds %struct.ucp_request_param_t, ptr %0, i32 0, i32 0, !dbg !5541
  %1 = load i32, ptr %op_attr_mask, align 8, !dbg !5541, !tbaa !3189
  %and = and i32 %1, 64, !dbg !5542
  %tobool = icmp ne i32 %and, 0, !dbg !5542
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5543

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %param.addr, align 8, !dbg !5544, !tbaa !2816
  %memory_type = getelementptr inbounds %struct.ucp_request_param_t, ptr %2, i32 0, i32 7, !dbg !5545
  %3 = load i32, ptr %memory_type, align 8, !dbg !5545, !tbaa !5546
  %cmp = icmp eq i32 %3, 5, !dbg !5547
  br i1 %cmp, label %if.then, label %if.end, !dbg !5548

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %context.addr, align 8, !dbg !5549, !tbaa !2816
  %5 = load ptr, ptr %address.addr, align 8, !dbg !5551, !tbaa !2816
  %6 = load i64, ptr %length.addr, align 8, !dbg !5552, !tbaa !2829
  call void @ucp_memory_detect(ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %mem_info), !dbg !5553
  %type = getelementptr inbounds %struct.ucp_memory_info_t, ptr %mem_info, i32 0, i32 0, !dbg !5554
  %7 = load i8, ptr %type, align 1, !dbg !5554, !tbaa !4494
  %conv = zext i8 %7 to i32, !dbg !5555
  store i32 %conv, ptr %retval, align 4, !dbg !5556
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5556

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %param.addr, align 8, !dbg !5557, !tbaa !2816
  %memory_type1 = getelementptr inbounds %struct.ucp_request_param_t, ptr %8, i32 0, i32 7, !dbg !5558
  %9 = load i32, ptr %memory_type1, align 8, !dbg !5558, !tbaa !5546
  store i32 %9, ptr %retval, align 4, !dbg !5559
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5559

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %mem_info) #10, !dbg !5560
  %10 = load i32, ptr %retval, align 4, !dbg !5560
  ret i32 %10, !dbg !5560
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_request_send_state_init(ptr noundef %req, i64 noundef %datatype, i64 noundef %dt_count) #0 !dbg !5561 {
entry:
  %req.addr = alloca ptr, align 8
  %datatype.addr = alloca i64, align 8
  %dt_count.addr = alloca i64, align 8
  %dt_gen = alloca ptr, align 8
  %state_gen = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5565, metadata !DIExpression()), !dbg !5570
  store i64 %datatype, ptr %datatype.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %datatype.addr, metadata !5566, metadata !DIExpression()), !dbg !5571
  store i64 %dt_count, ptr %dt_count.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %dt_count.addr, metadata !5567, metadata !DIExpression()), !dbg !5572
  call void @llvm.lifetime.start.p0(i64 8, ptr %dt_gen) #10, !dbg !5573
  tail call void @llvm.dbg.declare(metadata ptr %dt_gen, metadata !5568, metadata !DIExpression()), !dbg !5574
  call void @llvm.lifetime.start.p0(i64 8, ptr %state_gen) #10, !dbg !5575
  tail call void @llvm.dbg.declare(metadata ptr %state_gen, metadata !5569, metadata !DIExpression()), !dbg !5576
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5577, !tbaa !2816
  %1 = getelementptr inbounds %struct.ucp_request, ptr %0, i32 0, i32 4, !dbg !5578
  %state = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 7, !dbg !5579
  %2 = getelementptr inbounds %struct.anon.11, ptr %state, i32 0, i32 1, !dbg !5580
  %func = getelementptr inbounds %struct.uct_completion, ptr %2, i32 0, i32 0, !dbg !5581
  store ptr null, ptr %func, align 8, !dbg !5582, !tbaa !2831
  %3 = load i64, ptr %datatype.addr, align 8, !dbg !5583, !tbaa !2829
  %and = and i64 %3, 7, !dbg !5584
  switch i64 %and, label %sw.default [
    i64 0, label %sw.bb
    i64 2, label %sw.bb2
    i64 7, label %sw.bb11
  ], !dbg !5585

sw.bb:                                            ; preds = %entry
  %4 = load ptr, ptr %req.addr, align 8, !dbg !5586, !tbaa !2816
  %5 = getelementptr inbounds %struct.ucp_request, ptr %4, i32 0, i32 4, !dbg !5588
  %state1 = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 7, !dbg !5589
  %6 = getelementptr inbounds %struct.anon.11, ptr %state1, i32 0, i32 0, !dbg !5590
  %dt = getelementptr inbounds %struct.ucp_dt_state, ptr %6, i32 0, i32 1, !dbg !5591
  %md_map = getelementptr inbounds %struct.ucp_dt_reg, ptr %dt, i32 0, i32 0, !dbg !5592
  store i64 0, ptr %md_map, align 8, !dbg !5593, !tbaa !2831
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5594

sw.bb2:                                           ; preds = %entry
  %7 = load ptr, ptr %req.addr, align 8, !dbg !5595, !tbaa !2816
  %8 = getelementptr inbounds %struct.ucp_request, ptr %7, i32 0, i32 4, !dbg !5596
  %state3 = getelementptr inbounds %struct.anon.9, ptr %8, i32 0, i32 7, !dbg !5597
  %9 = getelementptr inbounds %struct.anon.11, ptr %state3, i32 0, i32 0, !dbg !5598
  %dt4 = getelementptr inbounds %struct.ucp_dt_state, ptr %9, i32 0, i32 1, !dbg !5599
  %iovcnt_offset = getelementptr inbounds %struct.anon.18, ptr %dt4, i32 0, i32 1, !dbg !5600
  store i64 0, ptr %iovcnt_offset, align 8, !dbg !5601, !tbaa !2831
  %10 = load ptr, ptr %req.addr, align 8, !dbg !5602, !tbaa !2816
  %11 = getelementptr inbounds %struct.ucp_request, ptr %10, i32 0, i32 4, !dbg !5603
  %state5 = getelementptr inbounds %struct.anon.9, ptr %11, i32 0, i32 7, !dbg !5604
  %12 = getelementptr inbounds %struct.anon.11, ptr %state5, i32 0, i32 0, !dbg !5605
  %dt6 = getelementptr inbounds %struct.ucp_dt_state, ptr %12, i32 0, i32 1, !dbg !5606
  %iov_offset = getelementptr inbounds %struct.anon.18, ptr %dt6, i32 0, i32 0, !dbg !5607
  store i64 0, ptr %iov_offset, align 8, !dbg !5608, !tbaa !2831
  %13 = load i64, ptr %dt_count.addr, align 8, !dbg !5609, !tbaa !2829
  %14 = load ptr, ptr %req.addr, align 8, !dbg !5610, !tbaa !2816
  %15 = getelementptr inbounds %struct.ucp_request, ptr %14, i32 0, i32 4, !dbg !5611
  %state7 = getelementptr inbounds %struct.anon.9, ptr %15, i32 0, i32 7, !dbg !5612
  %16 = getelementptr inbounds %struct.anon.11, ptr %state7, i32 0, i32 0, !dbg !5613
  %dt8 = getelementptr inbounds %struct.ucp_dt_state, ptr %16, i32 0, i32 1, !dbg !5614
  %iovcnt = getelementptr inbounds %struct.anon.18, ptr %dt8, i32 0, i32 2, !dbg !5615
  store i64 %13, ptr %iovcnt, align 8, !dbg !5616, !tbaa !2831
  %17 = load ptr, ptr %req.addr, align 8, !dbg !5617, !tbaa !2816
  %18 = getelementptr inbounds %struct.ucp_request, ptr %17, i32 0, i32 4, !dbg !5618
  %state9 = getelementptr inbounds %struct.anon.9, ptr %18, i32 0, i32 7, !dbg !5619
  %19 = getelementptr inbounds %struct.anon.11, ptr %state9, i32 0, i32 0, !dbg !5620
  %dt10 = getelementptr inbounds %struct.ucp_dt_state, ptr %19, i32 0, i32 1, !dbg !5621
  %dt_reg = getelementptr inbounds %struct.anon.18, ptr %dt10, i32 0, i32 3, !dbg !5622
  store ptr null, ptr %dt_reg, align 8, !dbg !5623, !tbaa !2831
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5624

sw.bb11:                                          ; preds = %entry
  %20 = load i64, ptr %datatype.addr, align 8, !dbg !5625, !tbaa !2829
  %call = call ptr @ucp_dt_to_generic(i64 noundef %20), !dbg !5626
  store ptr %call, ptr %dt_gen, align 8, !dbg !5627, !tbaa !2816
  %21 = load ptr, ptr %dt_gen, align 8, !dbg !5628, !tbaa !2816
  %ops = getelementptr inbounds %struct.ucp_dt_generic, ptr %21, i32 0, i32 1, !dbg !5629
  %start_pack = getelementptr inbounds %struct.ucp_generic_dt_ops, ptr %ops, i32 0, i32 0, !dbg !5630
  %22 = load ptr, ptr %start_pack, align 8, !dbg !5630, !tbaa !4761
  %23 = load ptr, ptr %dt_gen, align 8, !dbg !5631, !tbaa !2816
  %context = getelementptr inbounds %struct.ucp_dt_generic, ptr %23, i32 0, i32 0, !dbg !5632
  %24 = load ptr, ptr %context, align 8, !dbg !5632, !tbaa !4766
  %25 = load ptr, ptr %req.addr, align 8, !dbg !5633, !tbaa !2816
  %26 = getelementptr inbounds %struct.ucp_request, ptr %25, i32 0, i32 4, !dbg !5634
  %27 = getelementptr inbounds %struct.anon.9, ptr %26, i32 0, i32 1, !dbg !5635
  %28 = load ptr, ptr %27, align 8, !dbg !5635, !tbaa !2831
  %29 = load i64, ptr %dt_count.addr, align 8, !dbg !5636, !tbaa !2829
  %call12 = call ptr %22(ptr noundef %24, ptr noundef %28, i64 noundef %29), !dbg !5628
  store ptr %call12, ptr %state_gen, align 8, !dbg !5637, !tbaa !2816
  %30 = load ptr, ptr %state_gen, align 8, !dbg !5638, !tbaa !2816
  %31 = load ptr, ptr %req.addr, align 8, !dbg !5639, !tbaa !2816
  %32 = getelementptr inbounds %struct.ucp_request, ptr %31, i32 0, i32 4, !dbg !5640
  %state13 = getelementptr inbounds %struct.anon.9, ptr %32, i32 0, i32 7, !dbg !5641
  %33 = getelementptr inbounds %struct.anon.11, ptr %state13, i32 0, i32 0, !dbg !5642
  %dt14 = getelementptr inbounds %struct.ucp_dt_state, ptr %33, i32 0, i32 1, !dbg !5643
  %state15 = getelementptr inbounds %struct.anon.19, ptr %dt14, i32 0, i32 0, !dbg !5644
  store ptr %30, ptr %state15, align 8, !dbg !5645, !tbaa !2831
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5646

sw.default:                                       ; preds = %entry
  call void (ptr, i32, ptr, ptr, ...) @ucs_fatal_error_format(ptr noundef @.str.6, i32 noundef 413, ptr noundef @__FUNCTION__.ucp_request_send_state_init, ptr noundef @.str.9) #11, !dbg !5647
  unreachable, !dbg !5647

cleanup:                                          ; preds = %sw.bb11, %sw.bb2, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %state_gen) #10, !dbg !5648
  call void @llvm.lifetime.end.p0(i64 8, ptr %dt_gen) #10, !dbg !5648
  ret void, !dbg !5648
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_request_send_state_reset(ptr noundef %req, ptr noundef %comp_cb, i32 noundef %proto) #0 !dbg !5649 {
entry:
  %req.addr = alloca ptr, align 8
  %comp_cb.addr = alloca ptr, align 8
  %proto.addr = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5653, metadata !DIExpression()), !dbg !5656
  store ptr %comp_cb, ptr %comp_cb.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %comp_cb.addr, metadata !5654, metadata !DIExpression()), !dbg !5657
  store i32 %proto, ptr %proto.addr, align 4, !tbaa !2821
  tail call void @llvm.dbg.declare(metadata ptr %proto.addr, metadata !5655, metadata !DIExpression()), !dbg !5658
  %0 = load i32, ptr %proto.addr, align 4, !dbg !5659, !tbaa !2821
  switch i32 %0, label %sw.default [
    i32 4, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb1
    i32 1, label %sw.bb1
    i32 0, label %sw.bb3
  ], !dbg !5660

sw.bb:                                            ; preds = %entry
  br label %sw.bb1, !dbg !5661

sw.bb1:                                           ; preds = %entry, %entry, %entry, %sw.bb
  %1 = load ptr, ptr %req.addr, align 8, !dbg !5662, !tbaa !2816
  %2 = getelementptr inbounds %struct.ucp_request, ptr %1, i32 0, i32 4, !dbg !5664
  %state = getelementptr inbounds %struct.anon.9, ptr %2, i32 0, i32 7, !dbg !5665
  %3 = getelementptr inbounds %struct.anon.11, ptr %state, i32 0, i32 1, !dbg !5666
  %count = getelementptr inbounds %struct.uct_completion, ptr %3, i32 0, i32 1, !dbg !5667
  store i32 0, ptr %count, align 8, !dbg !5668, !tbaa !2831
  %4 = load ptr, ptr %req.addr, align 8, !dbg !5669, !tbaa !2816
  %5 = getelementptr inbounds %struct.ucp_request, ptr %4, i32 0, i32 4, !dbg !5670
  %state2 = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 7, !dbg !5671
  %6 = getelementptr inbounds %struct.anon.11, ptr %state2, i32 0, i32 1, !dbg !5672
  %status = getelementptr inbounds %struct.uct_completion, ptr %6, i32 0, i32 2, !dbg !5673
  store i8 0, ptr %status, align 4, !dbg !5674, !tbaa !2831
  br label %sw.bb3, !dbg !5669

sw.bb3:                                           ; preds = %entry, %sw.bb1
  %7 = load ptr, ptr %comp_cb.addr, align 8, !dbg !5675, !tbaa !2816
  %8 = load ptr, ptr %req.addr, align 8, !dbg !5676, !tbaa !2816
  %9 = getelementptr inbounds %struct.ucp_request, ptr %8, i32 0, i32 4, !dbg !5677
  %state4 = getelementptr inbounds %struct.anon.9, ptr %9, i32 0, i32 7, !dbg !5678
  %10 = getelementptr inbounds %struct.anon.11, ptr %state4, i32 0, i32 1, !dbg !5679
  %func = getelementptr inbounds %struct.uct_completion, ptr %10, i32 0, i32 0, !dbg !5680
  store ptr %7, ptr %func, align 8, !dbg !5681, !tbaa !2831
  %11 = load ptr, ptr %req.addr, align 8, !dbg !5682, !tbaa !2816
  %12 = getelementptr inbounds %struct.ucp_request, ptr %11, i32 0, i32 4, !dbg !5683
  %state5 = getelementptr inbounds %struct.anon.9, ptr %12, i32 0, i32 7, !dbg !5684
  %13 = getelementptr inbounds %struct.anon.11, ptr %state5, i32 0, i32 0, !dbg !5685
  %offset = getelementptr inbounds %struct.ucp_dt_state, ptr %13, i32 0, i32 0, !dbg !5686
  store i64 0, ptr %offset, align 8, !dbg !5687, !tbaa !2831
  %14 = load i32, ptr %proto.addr, align 4, !dbg !5688, !tbaa !2821
  %cmp = icmp eq i32 %14, 0, !dbg !5690
  br i1 %cmp, label %if.then, label %if.end, !dbg !5691

if.then:                                          ; preds = %sw.bb3
  br label %if.end, !dbg !5692

if.end:                                           ; preds = %if.then, %sw.bb3
  br label %sw.epilog, !dbg !5694

sw.default:                                       ; preds = %entry
  call void (ptr, i32, ptr, ptr, ...) @ucs_fatal_error_format(ptr noundef @.str.6, i32 noundef 445, ptr noundef @__FUNCTION__.ucp_request_send_state_reset, ptr noundef @.str.10) #11, !dbg !5695
  unreachable, !dbg !5695

sw.epilog:                                        ; preds = %if.end
  ret void, !dbg !5696
}

; Function Attrs: nounwind uwtable
define internal void @ucp_rma_request_bcopy_completion(ptr noundef %self) #4 !dbg !5697 {
entry:
  %self.addr = alloca ptr, align 8
  %req = alloca ptr, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %self.addr, metadata !5699, metadata !DIExpression()), !dbg !5701
  call void @llvm.lifetime.start.p0(i64 8, ptr %req) #10, !dbg !5702
  tail call void @llvm.dbg.declare(metadata ptr %req, metadata !5700, metadata !DIExpression()), !dbg !5703
  %0 = load ptr, ptr %self.addr, align 8, !dbg !5704, !tbaa !2816
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 sub (i64 0, i64 ptrtoint (ptr getelementptr inbounds (%struct.anon.9, ptr getelementptr inbounds (%struct.ucp_request, ptr null, i32 0, i32 4), i32 0, i32 7, i32 1) to i64)), !dbg !5704
  store ptr %add.ptr, ptr %req, align 8, !dbg !5703, !tbaa !2816
  %1 = load ptr, ptr %req, align 8, !dbg !5705, !tbaa !2816
  %2 = getelementptr inbounds %struct.ucp_request, ptr %1, i32 0, i32 4, !dbg !5705
  %length = getelementptr inbounds %struct.anon.9, ptr %2, i32 0, i32 3, !dbg !5705
  %3 = load i64, ptr %length, align 8, !dbg !5705, !tbaa !2831
  %4 = load ptr, ptr %req, align 8, !dbg !5705, !tbaa !2816
  %5 = getelementptr inbounds %struct.ucp_request, ptr %4, i32 0, i32 4, !dbg !5705
  %state = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 7, !dbg !5705
  %6 = getelementptr inbounds %struct.anon.11, ptr %state, i32 0, i32 0, !dbg !5705
  %offset = getelementptr inbounds %struct.ucp_dt_state, ptr %6, i32 0, i32 0, !dbg !5705
  %7 = load i64, ptr %offset, align 8, !dbg !5705, !tbaa !2831
  %cmp = icmp eq i64 %3, %7, !dbg !5705
  %conv = zext i1 %cmp to i32, !dbg !5705
  %conv1 = sext i32 %conv to i64, !dbg !5705
  %expval = call i64 @llvm.expect.i64(i64 %conv1, i64 1), !dbg !5705
  %tobool = icmp ne i64 %expval, 0, !dbg !5705
  br i1 %tobool, label %if.then, label %if.end, !dbg !5707

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %req, align 8, !dbg !5708, !tbaa !2816
  call void @ucp_send_request_id_release(ptr noundef %8), !dbg !5710
  %9 = load ptr, ptr %req, align 8, !dbg !5711, !tbaa !2816
  %10 = load ptr, ptr %self.addr, align 8, !dbg !5712, !tbaa !2816
  %status = getelementptr inbounds %struct.uct_completion, ptr %10, i32 0, i32 2, !dbg !5713
  %11 = load i8, ptr %status, align 4, !dbg !5713, !tbaa !5714
  call void @ucp_request_complete_send(ptr noundef %9, i8 noundef signext %11), !dbg !5716
  br label %if.end, !dbg !5717

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %req) #10, !dbg !5718
  ret void, !dbg !5718
}

; Function Attrs: nounwind uwtable
define internal void @ucp_rma_request_zcopy_completion(ptr noundef %self) #4 !dbg !5719 {
entry:
  %self.addr = alloca ptr, align 8
  %req = alloca ptr, align 8
  store ptr %self, ptr %self.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %self.addr, metadata !5721, metadata !DIExpression()), !dbg !5723
  call void @llvm.lifetime.start.p0(i64 8, ptr %req) #10, !dbg !5724
  tail call void @llvm.dbg.declare(metadata ptr %req, metadata !5722, metadata !DIExpression()), !dbg !5725
  %0 = load ptr, ptr %self.addr, align 8, !dbg !5726, !tbaa !2816
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 sub (i64 0, i64 ptrtoint (ptr getelementptr inbounds (%struct.anon.9, ptr getelementptr inbounds (%struct.ucp_request, ptr null, i32 0, i32 4), i32 0, i32 7, i32 1) to i64)), !dbg !5726
  store ptr %add.ptr, ptr %req, align 8, !dbg !5725, !tbaa !2816
  %1 = load ptr, ptr %req, align 8, !dbg !5727, !tbaa !2816
  %2 = getelementptr inbounds %struct.ucp_request, ptr %1, i32 0, i32 4, !dbg !5727
  %length = getelementptr inbounds %struct.anon.9, ptr %2, i32 0, i32 3, !dbg !5727
  %3 = load i64, ptr %length, align 8, !dbg !5727, !tbaa !2831
  %4 = load ptr, ptr %req, align 8, !dbg !5727, !tbaa !2816
  %5 = getelementptr inbounds %struct.ucp_request, ptr %4, i32 0, i32 4, !dbg !5727
  %state = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 7, !dbg !5727
  %6 = getelementptr inbounds %struct.anon.11, ptr %state, i32 0, i32 0, !dbg !5727
  %offset = getelementptr inbounds %struct.ucp_dt_state, ptr %6, i32 0, i32 0, !dbg !5727
  %7 = load i64, ptr %offset, align 8, !dbg !5727, !tbaa !2831
  %cmp = icmp eq i64 %3, %7, !dbg !5727
  %conv = zext i1 %cmp to i32, !dbg !5727
  %conv1 = sext i32 %conv to i64, !dbg !5727
  %expval = call i64 @llvm.expect.i64(i64 %conv1, i64 1), !dbg !5727
  %tobool = icmp ne i64 %expval, 0, !dbg !5727
  br i1 %tobool, label %if.then, label %if.end, !dbg !5729

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %req, align 8, !dbg !5730, !tbaa !2816
  call void @ucp_send_request_id_release(ptr noundef %8), !dbg !5732
  %9 = load ptr, ptr %req, align 8, !dbg !5733, !tbaa !2816
  call void @ucp_request_send_buffer_dereg(ptr noundef %9), !dbg !5734
  %10 = load ptr, ptr %req, align 8, !dbg !5735, !tbaa !2816
  %11 = load ptr, ptr %self.addr, align 8, !dbg !5736, !tbaa !2816
  %status = getelementptr inbounds %struct.uct_completion, ptr %11, i32 0, i32 2, !dbg !5737
  %12 = load i8, ptr %status, align 4, !dbg !5737, !tbaa !5714
  call void @ucp_request_complete_send(ptr noundef %10, i8 noundef signext %12), !dbg !5738
  br label %if.end, !dbg !5739

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %req) #10, !dbg !5740
  ret void, !dbg !5740
}

; Function Attrs: alwaysinline nounwind uwtable
define internal signext i8 @ucp_send_request_set_user_memh(ptr noundef %req, i64 noundef %md_map, ptr noundef %param) #0 !dbg !5741 {
entry:
  %retval = alloca i8, align 1
  %req.addr = alloca ptr, align 8
  %md_map.addr = alloca i64, align 8
  %param.addr = alloca ptr, align 8
  %status = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5745, metadata !DIExpression()), !dbg !5749
  store i64 %md_map, ptr %md_map.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %md_map.addr, metadata !5746, metadata !DIExpression()), !dbg !5750
  store ptr %param, ptr %param.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5747, metadata !DIExpression()), !dbg !5751
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #10, !dbg !5752
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !5748, metadata !DIExpression()), !dbg !5753
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5754, !tbaa !2816
  %1 = load ptr, ptr %param.addr, align 8, !dbg !5756, !tbaa !2816
  %2 = load ptr, ptr %req.addr, align 8, !dbg !5757, !tbaa !2816
  %3 = getelementptr inbounds %struct.ucp_request, ptr %2, i32 0, i32 4, !dbg !5758
  %4 = getelementptr inbounds %struct.anon.9, ptr %3, i32 0, i32 1, !dbg !5759
  %5 = load ptr, ptr %4, align 8, !dbg !5759, !tbaa !2831
  %6 = load ptr, ptr %req.addr, align 8, !dbg !5760, !tbaa !2816
  %7 = getelementptr inbounds %struct.ucp_request, ptr %6, i32 0, i32 4, !dbg !5761
  %length = getelementptr inbounds %struct.anon.9, ptr %7, i32 0, i32 3, !dbg !5762
  %8 = load i64, ptr %length, align 8, !dbg !5762, !tbaa !2831
  %9 = load ptr, ptr %req.addr, align 8, !dbg !5763, !tbaa !2816
  %10 = getelementptr inbounds %struct.ucp_request, ptr %9, i32 0, i32 4, !dbg !5764
  %datatype = getelementptr inbounds %struct.anon.9, ptr %10, i32 0, i32 2, !dbg !5765
  %11 = load i64, ptr %datatype, align 8, !dbg !5765, !tbaa !2831
  %12 = load ptr, ptr %req.addr, align 8, !dbg !5766, !tbaa !2816
  %13 = getelementptr inbounds %struct.ucp_request, ptr %12, i32 0, i32 4, !dbg !5767
  %mem_type = getelementptr inbounds %struct.anon.9, ptr %13, i32 0, i32 10, !dbg !5768
  %14 = load i8, ptr %mem_type, align 2, !dbg !5768, !tbaa !2831
  %conv = zext i8 %14 to i32, !dbg !5769
  %call = call i32 @ucp_request_is_user_memh_valid(ptr noundef %0, ptr noundef %1, ptr noundef %5, i64 noundef %8, i64 noundef %11, i32 noundef %conv, ptr noundef %status), !dbg !5770
  %tobool = icmp ne i32 %call, 0, !dbg !5770
  br i1 %tobool, label %if.end, label %if.then, !dbg !5771

if.then:                                          ; preds = %entry
  %15 = load i8, ptr %status, align 1, !dbg !5772, !tbaa !2831
  store i8 %15, ptr %retval, align 1, !dbg !5774
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5774

if.end:                                           ; preds = %entry
  %16 = load ptr, ptr %req.addr, align 8, !dbg !5775, !tbaa !2816
  %17 = load i64, ptr %md_map.addr, align 8, !dbg !5776, !tbaa !2829
  %18 = load ptr, ptr %param.addr, align 8, !dbg !5777, !tbaa !2816
  %memh = getelementptr inbounds %struct.ucp_request_param_t, ptr %18, i32 0, i32 9, !dbg !5778
  %19 = load ptr, ptr %memh, align 8, !dbg !5778, !tbaa !5779
  %20 = load ptr, ptr %req.addr, align 8, !dbg !5780, !tbaa !2816
  %21 = getelementptr inbounds %struct.ucp_request, ptr %20, i32 0, i32 4, !dbg !5781
  %state = getelementptr inbounds %struct.anon.9, ptr %21, i32 0, i32 7, !dbg !5782
  %22 = getelementptr inbounds %struct.anon.11, ptr %state, i32 0, i32 0, !dbg !5783
  %dt = getelementptr inbounds %struct.ucp_dt_state, ptr %22, i32 0, i32 1, !dbg !5784
  call void @ucp_request_init_dt_reg_from_memh(ptr noundef %16, i64 noundef %17, ptr noundef %19, ptr noundef %dt), !dbg !5785
  store i8 0, ptr %retval, align 1, !dbg !5786
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5786

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #10, !dbg !5787
  %23 = load i8, ptr %retval, align 1, !dbg !5787
  ret i8 %23, !dbg !5787
}

; Function Attrs: alwaysinline nounwind uwtable
define internal signext i8 @ucp_request_send_buffer_reg_lane(ptr noundef %req, i8 noundef zeroext %lane, i32 noundef %uct_flags) #0 !dbg !5788 {
entry:
  %req.addr = alloca ptr, align 8
  %lane.addr = alloca i8, align 1
  %uct_flags.addr = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5792, metadata !DIExpression()), !dbg !5795
  store i8 %lane, ptr %lane.addr, align 1, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %lane.addr, metadata !5793, metadata !DIExpression()), !dbg !5796
  store i32 %uct_flags, ptr %uct_flags.addr, align 4, !tbaa !2821
  tail call void @llvm.dbg.declare(metadata ptr %uct_flags.addr, metadata !5794, metadata !DIExpression()), !dbg !5797
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5798, !tbaa !2816
  %1 = load i8, ptr %lane.addr, align 1, !dbg !5799, !tbaa !2831
  %2 = load i32, ptr %uct_flags.addr, align 4, !dbg !5800, !tbaa !2821
  %call = call signext i8 @ucp_request_send_buffer_reg_lane_check(ptr noundef %0, i8 noundef zeroext %1, i64 noundef 0, i32 noundef %2), !dbg !5801
  ret i8 %call, !dbg !5802
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_send_request_id_release(ptr noundef %req) #0 !dbg !5803 {
entry:
  %req.addr = alloca ptr, align 8
  %ep = alloca ptr, align 8
  %status = alloca i8, align 1
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5805, metadata !DIExpression()), !dbg !5808
  call void @llvm.lifetime.start.p0(i64 8, ptr %ep) #10, !dbg !5809
  tail call void @llvm.dbg.declare(metadata ptr %ep, metadata !5806, metadata !DIExpression()), !dbg !5810
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #10, !dbg !5811
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !5807, metadata !DIExpression()), !dbg !5812
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5813, !tbaa !2816
  %1 = getelementptr inbounds %struct.ucp_request, ptr %0, i32 0, i32 4, !dbg !5814
  %ep1 = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 0, !dbg !5815
  %2 = load ptr, ptr %ep1, align 8, !dbg !5815, !tbaa !2831
  store ptr %2, ptr %ep, align 8, !dbg !5816, !tbaa !2816
  %3 = load ptr, ptr %ep, align 8, !dbg !5817, !tbaa !2816
  %worker = getelementptr inbounds %struct.ucp_ep, ptr %3, i32 0, i32 0, !dbg !5817
  %4 = load ptr, ptr %worker, align 8, !dbg !5817, !tbaa !3153
  %request_map = getelementptr inbounds %struct.ucp_worker, ptr %4, i32 0, i32 43, !dbg !5817
  %5 = load ptr, ptr %req.addr, align 8, !dbg !5817, !tbaa !2816
  %id = getelementptr inbounds %struct.ucp_request, ptr %5, i32 0, i32 2, !dbg !5817
  %6 = load i64, ptr %id, align 8, !dbg !5817, !tbaa !3547
  %call = call signext i8 @ucs_ptr_map_del_request(ptr noundef %request_map, i64 noundef %6), !dbg !5817
  store i8 %call, ptr %status, align 1, !dbg !5818, !tbaa !2831
  %7 = load i8, ptr %status, align 1, !dbg !5819, !tbaa !2831
  %8 = load ptr, ptr %ep, align 8, !dbg !5820, !tbaa !2816
  %9 = load ptr, ptr %req.addr, align 8, !dbg !5821, !tbaa !2816
  call void @ucp_request_ptr_map_status_check(i8 noundef signext %7, ptr noundef @.str.11, ptr noundef %8, ptr noundef %9), !dbg !5822
  %10 = load i8, ptr %status, align 1, !dbg !5823, !tbaa !2831
  %conv = sext i8 %10 to i32, !dbg !5823
  %cmp = icmp eq i32 %conv, 0, !dbg !5825
  br i1 %cmp, label %if.then, label %if.end, !dbg !5826

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %ep, align 8, !dbg !5827, !tbaa !2816
  %ext = getelementptr inbounds %struct.ucp_ep, ptr %11, i32 0, i32 7, !dbg !5829
  %12 = load ptr, ptr %ext, align 8, !dbg !5829, !tbaa !5830
  %proto_reqs = getelementptr inbounds %struct.ucp_ep_ext, ptr %12, i32 0, i32 9, !dbg !5831
  %13 = load ptr, ptr %req.addr, align 8, !dbg !5832, !tbaa !2816
  %14 = getelementptr inbounds %struct.ucp_request, ptr %13, i32 0, i32 4, !dbg !5833
  %list = getelementptr inbounds %struct.anon.9, ptr %14, i32 0, i32 5, !dbg !5834
  call void @ucs_hlist_del(ptr noundef %proto_reqs, ptr noundef %list), !dbg !5835
  br label %if.end, !dbg !5836

if.end:                                           ; preds = %if.then, %entry
  %15 = load ptr, ptr %req.addr, align 8, !dbg !5837, !tbaa !2816
  call void @ucp_request_id_reset(ptr noundef %15), !dbg !5838
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #10, !dbg !5839
  call void @llvm.lifetime.end.p0(i64 8, ptr %ep) #10, !dbg !5839
  ret void, !dbg !5839
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_request_complete_send(ptr noundef %req, i8 noundef signext %status) #0 !dbg !5840 {
entry:
  %req.addr = alloca ptr, align 8
  %status.addr = alloca i8, align 1
  %_flags = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !5842, metadata !DIExpression()), !dbg !5846
  store i8 %status, ptr %status.addr, align 1, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !5843, metadata !DIExpression()), !dbg !5847
  br label %do.body, !dbg !5848

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5849

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5851

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !5849

do.end2:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %_flags) #10, !dbg !5853
  tail call void @llvm.dbg.declare(metadata ptr %_flags, metadata !5844, metadata !DIExpression()), !dbg !5853
  %0 = load ptr, ptr %req.addr, align 8, !dbg !5853, !tbaa !2816
  %flags = getelementptr inbounds %struct.ucp_request, ptr %0, i32 0, i32 1, !dbg !5853
  %1 = load i32, ptr %flags, align 4, !dbg !5853, !tbaa !3651
  %or = or i32 %1, 1, !dbg !5853
  store i32 %or, ptr %flags, align 4, !dbg !5853, !tbaa !3651
  store i32 %or, ptr %_flags, align 4, !dbg !5853, !tbaa !2821
  %2 = load i8, ptr %status.addr, align 1, !dbg !5853, !tbaa !2831
  %3 = load ptr, ptr %req.addr, align 8, !dbg !5853, !tbaa !2816
  %status3 = getelementptr inbounds %struct.ucp_request, ptr %3, i32 0, i32 0, !dbg !5853
  store i8 %2, ptr %status3, align 8, !dbg !5853, !tbaa !3663
  %4 = load ptr, ptr %req.addr, align 8, !dbg !5854, !tbaa !2816
  %flags4 = getelementptr inbounds %struct.ucp_request, ptr %4, i32 0, i32 1, !dbg !5854
  %5 = load i32, ptr %flags4, align 4, !dbg !5854, !tbaa !3651
  %and = and i32 %5, 64, !dbg !5854
  %conv = zext i32 %and to i64, !dbg !5854
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5854
  %tobool = icmp ne i64 %expval, 0, !dbg !5854
  br i1 %tobool, label %if.then, label %if.end, !dbg !5853

if.then:                                          ; preds = %do.end2
  %6 = load ptr, ptr %req.addr, align 8, !dbg !5856, !tbaa !2816
  %7 = getelementptr inbounds %struct.ucp_request, ptr %6, i32 0, i32 4, !dbg !5856
  %cb = getelementptr inbounds %struct.anon.9, ptr %7, i32 0, i32 4, !dbg !5856
  %8 = load ptr, ptr %cb, align 8, !dbg !5856, !tbaa !2831
  %9 = load ptr, ptr %req.addr, align 8, !dbg !5856, !tbaa !2816
  %add.ptr = getelementptr inbounds %struct.ucp_request, ptr %9, i64 1, !dbg !5856
  %10 = load i8, ptr %status.addr, align 1, !dbg !5856, !tbaa !2831
  %11 = load ptr, ptr %req.addr, align 8, !dbg !5856, !tbaa !2816
  %12 = getelementptr inbounds %struct.ucp_request, ptr %11, i32 0, i32 3, !dbg !5856
  %13 = load ptr, ptr %12, align 8, !dbg !5856, !tbaa !2831
  call void %8(ptr noundef %add.ptr, i8 noundef signext %10, ptr noundef %13), !dbg !5856
  br label %if.end, !dbg !5856

if.end:                                           ; preds = %if.then, %do.end2
  %14 = load i32, ptr %_flags, align 4, !dbg !5858, !tbaa !2821
  %and5 = and i32 %14, 2, !dbg !5858
  %conv6 = zext i32 %and5 to i64, !dbg !5858
  %expval7 = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !5858
  %tobool8 = icmp ne i64 %expval7, 0, !dbg !5858
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5853

if.then9:                                         ; preds = %if.end
  %15 = load ptr, ptr %req.addr, align 8, !dbg !5860, !tbaa !2816
  call void @ucp_request_put(ptr noundef %15), !dbg !5860
  br label %if.end10, !dbg !5860

if.end10:                                         ; preds = %if.then9, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %_flags) #10, !dbg !5862
  ret void, !dbg !5863
}

; Function Attrs: alwaysinline nounwind uwtable
define internal signext i8 @ucs_ptr_map_del_request(ptr noundef %map, i64 noundef %key) #0 !dbg !5864 {
entry:
  %map.addr = alloca ptr, align 8
  %key.addr = alloca i64, align 8
  store ptr %map, ptr %map.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !5869, metadata !DIExpression()), !dbg !5871
  store i64 %key, ptr %key.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5870, metadata !DIExpression()), !dbg !5871
  %0 = load ptr, ptr %map.addr, align 8, !dbg !5871, !tbaa !2816
  %ptr_map = getelementptr inbounds %struct.ucs_ptr_map_request_t, ptr %0, i32 0, i32 0, !dbg !5871
  %1 = load i64, ptr %key.addr, align 8, !dbg !5871, !tbaa !2829
  %2 = load ptr, ptr %map.addr, align 8, !dbg !5871, !tbaa !2816
  %safe = getelementptr inbounds %struct.ucs_ptr_map_request_t, ptr %2, i32 0, i32 1, !dbg !5871
  %arraydecay = getelementptr inbounds [0 x %struct.ucs_ptr_safe_hash], ptr %safe, i64 0, i64 0, !dbg !5871
  %call = call signext i8 @ucs_ptr_map_del(ptr noundef %ptr_map, i64 noundef %1, i32 noundef 0, ptr noundef %arraydecay), !dbg !5871
  ret i8 %call, !dbg !5871
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_request_ptr_map_status_check(i8 noundef signext %status, ptr noundef %action_str, ptr noundef %ep, ptr noundef %ptr) #0 !dbg !5872 {
entry:
  %status.addr = alloca i8, align 1
  %action_str.addr = alloca ptr, align 8
  %ep.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  store i8 %status, ptr %status.addr, align 1, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !5876, metadata !DIExpression()), !dbg !5880
  store ptr %action_str, ptr %action_str.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %action_str.addr, metadata !5877, metadata !DIExpression()), !dbg !5881
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ep.addr, metadata !5878, metadata !DIExpression()), !dbg !5882
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5879, metadata !DIExpression()), !dbg !5883
  ret void, !dbg !5884
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucs_hlist_del(ptr noundef %head, ptr noundef %elem) #0 !dbg !5885 {
entry:
  %head.addr = alloca ptr, align 8
  %elem.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5890, metadata !DIExpression()), !dbg !5892
  store ptr %elem, ptr %elem.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %elem.addr, metadata !5891, metadata !DIExpression()), !dbg !5893
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5894, !tbaa !2816
  %1 = load ptr, ptr %elem.addr, align 8, !dbg !5895, !tbaa !2816
  %2 = load ptr, ptr %elem.addr, align 8, !dbg !5896, !tbaa !2816
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5897, !tbaa !2816
  %ptr = getelementptr inbounds %struct.ucs_hlist_head, ptr %3, i32 0, i32 0, !dbg !5898
  %4 = load ptr, ptr %ptr, align 8, !dbg !5898, !tbaa !5899
  %cmp = icmp eq ptr %2, %4, !dbg !5901
  %conv = zext i1 %cmp to i32, !dbg !5901
  call void @ucs_hlist_del_common(ptr noundef %0, ptr noundef %1, i32 noundef %conv), !dbg !5902
  ret void, !dbg !5903
}

; Function Attrs: alwaysinline nounwind uwtable
define internal signext i8 @ucs_ptr_map_del(ptr noundef %map, i64 noundef %key, i32 noundef %is_put_thread_safe, ptr noundef %safe_hash) #0 !dbg !5904 {
entry:
  %map.addr = alloca ptr, align 8
  %key.addr = alloca i64, align 8
  %is_put_thread_safe.addr = alloca i32, align 4
  %safe_hash.addr = alloca ptr, align 8
  %dummy = alloca ptr, align 8
  store ptr %map, ptr %map.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !5911, metadata !DIExpression()), !dbg !5916
  store i64 %key, ptr %key.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5912, metadata !DIExpression()), !dbg !5917
  store i32 %is_put_thread_safe, ptr %is_put_thread_safe.addr, align 4, !tbaa !2821
  tail call void @llvm.dbg.declare(metadata ptr %is_put_thread_safe.addr, metadata !5913, metadata !DIExpression()), !dbg !5918
  store ptr %safe_hash, ptr %safe_hash.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %safe_hash.addr, metadata !5914, metadata !DIExpression()), !dbg !5919
  call void @llvm.lifetime.start.p0(i64 8, ptr %dummy) #10, !dbg !5920
  tail call void @llvm.dbg.declare(metadata ptr %dummy, metadata !5915, metadata !DIExpression()), !dbg !5921
  %0 = load ptr, ptr %map.addr, align 8, !dbg !5922, !tbaa !2816
  %1 = load i64, ptr %key.addr, align 8, !dbg !5923, !tbaa !2829
  %2 = load i32, ptr %is_put_thread_safe.addr, align 4, !dbg !5924, !tbaa !2821
  %3 = load ptr, ptr %safe_hash.addr, align 8, !dbg !5925, !tbaa !2816
  %call = call signext i8 @ucs_ptr_map_get(ptr noundef %0, i64 noundef %1, i32 noundef 1, ptr noundef %dummy, i32 noundef %2, ptr noundef %3), !dbg !5926
  call void @llvm.lifetime.end.p0(i64 8, ptr %dummy) #10, !dbg !5927
  ret i8 %call, !dbg !5928
}

; Function Attrs: alwaysinline nounwind uwtable
define internal signext i8 @ucs_ptr_map_get(ptr noundef %map, i64 noundef %key, i32 noundef %extract, ptr noundef %ptr_p, i32 noundef %is_put_thread_safe, ptr noundef %safe_hash) #0 !dbg !5929 {
entry:
  %retval = alloca i8, align 1
  %map.addr = alloca ptr, align 8
  %key.addr = alloca i64, align 8
  %extract.addr = alloca i32, align 4
  %ptr_p.addr = alloca ptr, align 8
  %is_put_thread_safe.addr = alloca i32, align 4
  %safe_hash.addr = alloca ptr, align 8
  %status = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !5933, metadata !DIExpression()), !dbg !5940
  store i64 %key, ptr %key.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5934, metadata !DIExpression()), !dbg !5941
  store i32 %extract, ptr %extract.addr, align 4, !tbaa !2821
  tail call void @llvm.dbg.declare(metadata ptr %extract.addr, metadata !5935, metadata !DIExpression()), !dbg !5942
  store ptr %ptr_p, ptr %ptr_p.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ptr_p.addr, metadata !5936, metadata !DIExpression()), !dbg !5943
  store i32 %is_put_thread_safe, ptr %is_put_thread_safe.addr, align 4, !tbaa !2821
  tail call void @llvm.dbg.declare(metadata ptr %is_put_thread_safe.addr, metadata !5937, metadata !DIExpression()), !dbg !5944
  store ptr %safe_hash, ptr %safe_hash.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %safe_hash.addr, metadata !5938, metadata !DIExpression()), !dbg !5945
  call void @llvm.lifetime.start.p0(i64 1, ptr %status) #10, !dbg !5946
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !5939, metadata !DIExpression()), !dbg !5947
  %0 = load i64, ptr %key.addr, align 8, !dbg !5948, !tbaa !2829
  %and = and i64 %0, 1, !dbg !5948
  %tobool = icmp ne i64 %and, 0, !dbg !5948
  %lnot = xor i1 %tobool, true, !dbg !5948
  %lnot.ext = zext i1 %lnot to i32, !dbg !5948
  %conv = sext i32 %lnot.ext to i64, !dbg !5948
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5948
  %tobool1 = icmp ne i64 %expval, 0, !dbg !5948
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5950

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %key.addr, align 8, !dbg !5951, !tbaa !2829
  %2 = inttoptr i64 %1 to ptr, !dbg !5953
  %3 = load ptr, ptr %ptr_p.addr, align 8, !dbg !5954, !tbaa !2816
  store ptr %2, ptr %3, align 8, !dbg !5955, !tbaa !2816
  store i8 -10, ptr %retval, align 1, !dbg !5956
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5956

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %map.addr, align 8, !dbg !5957, !tbaa !2816
  %hash = getelementptr inbounds %struct.ucs_ptr_map, ptr %4, i32 0, i32 1, !dbg !5958
  %5 = load i64, ptr %key.addr, align 8, !dbg !5959, !tbaa !2829
  %6 = load i32, ptr %extract.addr, align 4, !dbg !5960, !tbaa !2821
  %7 = load ptr, ptr %ptr_p.addr, align 8, !dbg !5961, !tbaa !2816
  %call = call signext i8 @ucs_ptr_hash_get(ptr noundef %hash, i64 noundef %5, i32 noundef %6, ptr noundef %7), !dbg !5962
  store i8 %call, ptr %status, align 1, !dbg !5963, !tbaa !2831
  %8 = load i8, ptr %status, align 1, !dbg !5964, !tbaa !2831
  %conv2 = sext i8 %8 to i32, !dbg !5964
  %cmp = icmp ne i32 %conv2, -12, !dbg !5964
  %conv3 = zext i1 %cmp to i32, !dbg !5964
  %conv4 = sext i32 %conv3 to i64, !dbg !5964
  %expval5 = call i64 @llvm.expect.i64(i64 %conv4, i64 1), !dbg !5964
  %tobool6 = icmp ne i64 %expval5, 0, !dbg !5964
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5966

if.then7:                                         ; preds = %if.end
  %9 = load i8, ptr %status, align 1, !dbg !5967, !tbaa !2831
  store i8 %9, ptr %retval, align 1, !dbg !5969
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5969

if.end8:                                          ; preds = %if.end
  %10 = load i32, ptr %is_put_thread_safe.addr, align 4, !dbg !5970, !tbaa !2821
  %tobool9 = icmp ne i32 %10, 0, !dbg !5970
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !5972

if.then10:                                        ; preds = %if.end8
  %11 = load ptr, ptr %map.addr, align 8, !dbg !5973, !tbaa !2816
  %12 = load i64, ptr %key.addr, align 8, !dbg !5975, !tbaa !2829
  %13 = load i32, ptr %extract.addr, align 4, !dbg !5976, !tbaa !2821
  %14 = load ptr, ptr %ptr_p.addr, align 8, !dbg !5977, !tbaa !2816
  %15 = load ptr, ptr %safe_hash.addr, align 8, !dbg !5978, !tbaa !2816
  %call11 = call signext i8 @ucs_ptr_safe_hash_get(ptr noundef %11, i64 noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15), !dbg !5979
  store i8 %call11, ptr %status, align 1, !dbg !5980, !tbaa !2831
  br label %if.end12, !dbg !5981

if.end12:                                         ; preds = %if.then10, %if.end8
  %16 = load i8, ptr %status, align 1, !dbg !5982, !tbaa !2831
  store i8 %16, ptr %retval, align 1, !dbg !5983
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5983

cleanup:                                          ; preds = %if.end12, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %status) #10, !dbg !5984
  %17 = load i8, ptr %retval, align 1, !dbg !5984
  ret i8 %17, !dbg !5984
}

; Function Attrs: alwaysinline nounwind uwtable
define internal signext i8 @ucs_ptr_hash_get(ptr noundef %hash, i64 noundef %key, i32 noundef %extract, ptr noundef %ptr_p) #0 !dbg !5985 {
entry:
  %retval = alloca i8, align 1
  %hash.addr = alloca ptr, align 8
  %key.addr = alloca i64, align 8
  %extract.addr = alloca i32, align 4
  %ptr_p.addr = alloca ptr, align 8
  %iter = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %hash, ptr %hash.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !5990, metadata !DIExpression()), !dbg !5995
  store i64 %key, ptr %key.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5991, metadata !DIExpression()), !dbg !5996
  store i32 %extract, ptr %extract.addr, align 4, !tbaa !2821
  tail call void @llvm.dbg.declare(metadata ptr %extract.addr, metadata !5992, metadata !DIExpression()), !dbg !5997
  store ptr %ptr_p, ptr %ptr_p.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ptr_p.addr, metadata !5993, metadata !DIExpression()), !dbg !5998
  call void @llvm.lifetime.start.p0(i64 4, ptr %iter) #10, !dbg !5999
  tail call void @llvm.dbg.declare(metadata ptr %iter, metadata !5994, metadata !DIExpression()), !dbg !6000
  %0 = load ptr, ptr %hash.addr, align 8, !dbg !6001, !tbaa !2816
  %1 = load i64, ptr %key.addr, align 8, !dbg !6001, !tbaa !2829
  %call = call i32 @kh_get_ucs_ptr_map_impl(ptr noundef %0, i64 noundef %1), !dbg !6001
  store i32 %call, ptr %iter, align 4, !dbg !6002, !tbaa !2821
  %2 = load i32, ptr %iter, align 4, !dbg !6003, !tbaa !2821
  %3 = load ptr, ptr %hash.addr, align 8, !dbg !6003, !tbaa !2816
  %n_buckets = getelementptr inbounds %struct.kh_ucs_ptr_map_impl_s, ptr %3, i32 0, i32 0, !dbg !6003
  %4 = load i32, ptr %n_buckets, align 8, !dbg !6003, !tbaa !6005
  %cmp = icmp eq i32 %2, %4, !dbg !6003
  %conv = zext i1 %cmp to i32, !dbg !6003
  %conv1 = sext i32 %conv to i64, !dbg !6003
  %expval = call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !6003
  %tobool = icmp ne i64 %expval, 0, !dbg !6003
  br i1 %tobool, label %if.then, label %if.end, !dbg !6006

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ptr_p.addr, align 8, !dbg !6007, !tbaa !2816
  store ptr null, ptr %5, align 8, !dbg !6009, !tbaa !2816
  store i8 -12, ptr %retval, align 1, !dbg !6010
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6010

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %hash.addr, align 8, !dbg !6011, !tbaa !2816
  %vals = getelementptr inbounds %struct.kh_ucs_ptr_map_impl_s, ptr %6, i32 0, i32 6, !dbg !6011
  %7 = load ptr, ptr %vals, align 8, !dbg !6011, !tbaa !6012
  %8 = load i32, ptr %iter, align 4, !dbg !6011, !tbaa !2821
  %idxprom = zext i32 %8 to i64, !dbg !6011
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom, !dbg !6011
  %9 = load ptr, ptr %arrayidx, align 8, !dbg !6011, !tbaa !2816
  %10 = load ptr, ptr %ptr_p.addr, align 8, !dbg !6013, !tbaa !2816
  store ptr %9, ptr %10, align 8, !dbg !6014, !tbaa !2816
  %11 = load i32, ptr %extract.addr, align 4, !dbg !6015, !tbaa !2821
  %tobool2 = icmp ne i32 %11, 0, !dbg !6015
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6017

if.then3:                                         ; preds = %if.end
  %12 = load ptr, ptr %hash.addr, align 8, !dbg !6018, !tbaa !2816
  %13 = load i32, ptr %iter, align 4, !dbg !6018, !tbaa !2821
  call void @kh_del_ucs_ptr_map_impl(ptr noundef %12, i32 noundef %13), !dbg !6018
  br label %if.end4, !dbg !6020

if.end4:                                          ; preds = %if.then3, %if.end
  store i8 0, ptr %retval, align 1, !dbg !6021
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6021

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %iter) #10, !dbg !6022
  %14 = load i8, ptr %retval, align 1, !dbg !6022
  ret i8 %14, !dbg !6022
}

declare !dbg !6023 signext i8 @ucs_ptr_safe_hash_get(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @kh_get_ucs_ptr_map_impl(ptr noundef %h, i64 noundef %key) #6 !dbg !6026 {
entry:
  %retval = alloca i32, align 4
  %h.addr = alloca ptr, align 8
  %key.addr = alloca i64, align 8
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %last = alloca i32, align 4
  %mask = alloca i32, align 4
  %step = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !6032, metadata !DIExpression()), !dbg !6041
  store i64 %key, ptr %key.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !6033, metadata !DIExpression()), !dbg !6041
  %0 = load ptr, ptr %h.addr, align 8, !dbg !6042, !tbaa !2816
  %n_buckets = getelementptr inbounds %struct.kh_ucs_ptr_map_impl_s, ptr %0, i32 0, i32 0, !dbg !6042
  %1 = load i32, ptr %n_buckets, align 8, !dbg !6042, !tbaa !6005
  %tobool = icmp ne i32 %1, 0, !dbg !6042
  br i1 %tobool, label %if.then, label %if.else, !dbg !6041

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #10, !dbg !6043
  tail call void @llvm.dbg.declare(metadata ptr %k, metadata !6034, metadata !DIExpression()), !dbg !6043
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !6043
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !6037, metadata !DIExpression()), !dbg !6043
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #10, !dbg !6043
  tail call void @llvm.dbg.declare(metadata ptr %last, metadata !6038, metadata !DIExpression()), !dbg !6043
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #10, !dbg !6043
  tail call void @llvm.dbg.declare(metadata ptr %mask, metadata !6039, metadata !DIExpression()), !dbg !6043
  call void @llvm.lifetime.start.p0(i64 4, ptr %step) #10, !dbg !6043
  tail call void @llvm.dbg.declare(metadata ptr %step, metadata !6040, metadata !DIExpression()), !dbg !6043
  store i32 0, ptr %step, align 4, !dbg !6043, !tbaa !2821
  %2 = load ptr, ptr %h.addr, align 8, !dbg !6043, !tbaa !2816
  %n_buckets1 = getelementptr inbounds %struct.kh_ucs_ptr_map_impl_s, ptr %2, i32 0, i32 0, !dbg !6043
  %3 = load i32, ptr %n_buckets1, align 8, !dbg !6043, !tbaa !6005
  %sub = sub i32 %3, 1, !dbg !6043
  store i32 %sub, ptr %mask, align 4, !dbg !6043, !tbaa !2821
  %4 = load i64, ptr %key.addr, align 8, !dbg !6043, !tbaa !2829
  %shr = lshr i64 %4, 33, !dbg !6043
  %5 = load i64, ptr %key.addr, align 8, !dbg !6043, !tbaa !2829
  %xor = xor i64 %shr, %5, !dbg !6043
  %6 = load i64, ptr %key.addr, align 8, !dbg !6043, !tbaa !2829
  %shl = shl i64 %6, 11, !dbg !6043
  %xor2 = xor i64 %xor, %shl, !dbg !6043
  %conv = trunc i64 %xor2 to i32, !dbg !6043
  store i32 %conv, ptr %k, align 4, !dbg !6043, !tbaa !2821
  %7 = load i32, ptr %k, align 4, !dbg !6043, !tbaa !2821
  %8 = load i32, ptr %mask, align 4, !dbg !6043, !tbaa !2821
  %and = and i32 %7, %8, !dbg !6043
  store i32 %and, ptr %i, align 4, !dbg !6043, !tbaa !2821
  %9 = load i32, ptr %i, align 4, !dbg !6043, !tbaa !2821
  store i32 %9, ptr %last, align 4, !dbg !6043, !tbaa !2821
  br label %while.cond, !dbg !6043

while.cond:                                       ; preds = %if.end, %if.then
  %10 = load ptr, ptr %h.addr, align 8, !dbg !6043, !tbaa !2816
  %flags = getelementptr inbounds %struct.kh_ucs_ptr_map_impl_s, ptr %10, i32 0, i32 4, !dbg !6043
  %11 = load ptr, ptr %flags, align 8, !dbg !6043, !tbaa !6044
  %12 = load i32, ptr %i, align 4, !dbg !6043, !tbaa !2821
  %shr3 = lshr i32 %12, 4, !dbg !6043
  %idxprom = zext i32 %shr3 to i64, !dbg !6043
  %arrayidx = getelementptr inbounds i32, ptr %11, i64 %idxprom, !dbg !6043
  %13 = load i32, ptr %arrayidx, align 4, !dbg !6043, !tbaa !2821
  %14 = load i32, ptr %i, align 4, !dbg !6043, !tbaa !2821
  %and4 = and i32 %14, 15, !dbg !6043
  %shl5 = shl i32 %and4, 1, !dbg !6043
  %shr6 = lshr i32 %13, %shl5, !dbg !6043
  %and7 = and i32 %shr6, 2, !dbg !6043
  %tobool8 = icmp ne i32 %and7, 0, !dbg !6043
  br i1 %tobool8, label %land.end, label %land.rhs, !dbg !6043

land.rhs:                                         ; preds = %while.cond
  %15 = load ptr, ptr %h.addr, align 8, !dbg !6043, !tbaa !2816
  %flags9 = getelementptr inbounds %struct.kh_ucs_ptr_map_impl_s, ptr %15, i32 0, i32 4, !dbg !6043
  %16 = load ptr, ptr %flags9, align 8, !dbg !6043, !tbaa !6044
  %17 = load i32, ptr %i, align 4, !dbg !6043, !tbaa !2821
  %shr10 = lshr i32 %17, 4, !dbg !6043
  %idxprom11 = zext i32 %shr10 to i64, !dbg !6043
  %arrayidx12 = getelementptr inbounds i32, ptr %16, i64 %idxprom11, !dbg !6043
  %18 = load i32, ptr %arrayidx12, align 4, !dbg !6043, !tbaa !2821
  %19 = load i32, ptr %i, align 4, !dbg !6043, !tbaa !2821
  %and13 = and i32 %19, 15, !dbg !6043
  %shl14 = shl i32 %and13, 1, !dbg !6043
  %shr15 = lshr i32 %18, %shl14, !dbg !6043
  %and16 = and i32 %shr15, 1, !dbg !6043
  %tobool17 = icmp ne i32 %and16, 0, !dbg !6043
  br i1 %tobool17, label %lor.end, label %lor.rhs, !dbg !6043

lor.rhs:                                          ; preds = %land.rhs
  %20 = load ptr, ptr %h.addr, align 8, !dbg !6043, !tbaa !2816
  %keys = getelementptr inbounds %struct.kh_ucs_ptr_map_impl_s, ptr %20, i32 0, i32 5, !dbg !6043
  %21 = load ptr, ptr %keys, align 8, !dbg !6043, !tbaa !6045
  %22 = load i32, ptr %i, align 4, !dbg !6043, !tbaa !2821
  %idxprom18 = zext i32 %22 to i64, !dbg !6043
  %arrayidx19 = getelementptr inbounds i64, ptr %21, i64 %idxprom18, !dbg !6043
  %23 = load i64, ptr %arrayidx19, align 8, !dbg !6043, !tbaa !2829
  %24 = load i64, ptr %key.addr, align 8, !dbg !6043, !tbaa !2829
  %cmp = icmp eq i64 %23, %24, !dbg !6043
  %lnot = xor i1 %cmp, true, !dbg !6043
  br label %lor.end, !dbg !6043

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %25 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %26 = phi i1 [ false, %while.cond ], [ %25, %lor.end ], !dbg !6046
  br i1 %26, label %while.body, label %while.end, !dbg !6043

while.body:                                       ; preds = %land.end
  %27 = load i32, ptr %i, align 4, !dbg !6047, !tbaa !2821
  %28 = load i32, ptr %step, align 4, !dbg !6047, !tbaa !2821
  %inc = add i32 %28, 1, !dbg !6047
  store i32 %inc, ptr %step, align 4, !dbg !6047, !tbaa !2821
  %add = add i32 %27, %inc, !dbg !6047
  %29 = load i32, ptr %mask, align 4, !dbg !6047, !tbaa !2821
  %and21 = and i32 %add, %29, !dbg !6047
  store i32 %and21, ptr %i, align 4, !dbg !6047, !tbaa !2821
  %30 = load i32, ptr %i, align 4, !dbg !6049, !tbaa !2821
  %31 = load i32, ptr %last, align 4, !dbg !6049, !tbaa !2821
  %cmp22 = icmp eq i32 %30, %31, !dbg !6049
  br i1 %cmp22, label %if.then24, label %if.end, !dbg !6047

if.then24:                                        ; preds = %while.body
  %32 = load ptr, ptr %h.addr, align 8, !dbg !6049, !tbaa !2816
  %n_buckets25 = getelementptr inbounds %struct.kh_ucs_ptr_map_impl_s, ptr %32, i32 0, i32 0, !dbg !6049
  %33 = load i32, ptr %n_buckets25, align 8, !dbg !6049, !tbaa !6005
  store i32 %33, ptr %retval, align 4, !dbg !6049
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6049

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !6043, !llvm.loop !6051

while.end:                                        ; preds = %land.end
  %34 = load ptr, ptr %h.addr, align 8, !dbg !6043, !tbaa !2816
  %flags26 = getelementptr inbounds %struct.kh_ucs_ptr_map_impl_s, ptr %34, i32 0, i32 4, !dbg !6043
  %35 = load ptr, ptr %flags26, align 8, !dbg !6043, !tbaa !6044
  %36 = load i32, ptr %i, align 4, !dbg !6043, !tbaa !2821
  %shr27 = lshr i32 %36, 4, !dbg !6043
  %idxprom28 = zext i32 %shr27 to i64, !dbg !6043
  %arrayidx29 = getelementptr inbounds i32, ptr %35, i64 %idxprom28, !dbg !6043
  %37 = load i32, ptr %arrayidx29, align 4, !dbg !6043, !tbaa !2821
  %38 = load i32, ptr %i, align 4, !dbg !6043, !tbaa !2821
  %and30 = and i32 %38, 15, !dbg !6043
  %shl31 = shl i32 %and30, 1, !dbg !6043
  %shr32 = lshr i32 %37, %shl31, !dbg !6043
  %and33 = and i32 %shr32, 3, !dbg !6043
  %tobool34 = icmp ne i32 %and33, 0, !dbg !6043
  br i1 %tobool34, label %cond.true, label %cond.false, !dbg !6043

cond.true:                                        ; preds = %while.end
  %39 = load ptr, ptr %h.addr, align 8, !dbg !6043, !tbaa !2816
  %n_buckets35 = getelementptr inbounds %struct.kh_ucs_ptr_map_impl_s, ptr %39, i32 0, i32 0, !dbg !6043
  %40 = load i32, ptr %n_buckets35, align 8, !dbg !6043, !tbaa !6005
  br label %cond.end, !dbg !6043

cond.false:                                       ; preds = %while.end
  %41 = load i32, ptr %i, align 4, !dbg !6043, !tbaa !2821
  br label %cond.end, !dbg !6043

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %40, %cond.true ], [ %41, %cond.false ], !dbg !6043
  store i32 %cond, ptr %retval, align 4, !dbg !6043
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6043

cleanup:                                          ; preds = %cond.end, %if.then24
  call void @llvm.lifetime.end.p0(i64 4, ptr %step) #10, !dbg !6042
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #10, !dbg !6042
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #10, !dbg !6042
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !6042
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #10, !dbg !6042
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6042
  br label %return, !dbg !6042

return:                                           ; preds = %if.else, %cleanup
  %42 = load i32, ptr %retval, align 4, !dbg !6041
  ret i32 %42, !dbg !6041
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @kh_del_ucs_ptr_map_impl(ptr noundef %h, i32 noundef %x) #6 !dbg !6052 {
entry:
  %h.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  store ptr %h, ptr %h.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !6057, metadata !DIExpression()), !dbg !6059
  store i32 %x, ptr %x.addr, align 4, !tbaa !2821
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !6058, metadata !DIExpression()), !dbg !6059
  %0 = load i32, ptr %x.addr, align 4, !dbg !6060, !tbaa !2821
  %1 = load ptr, ptr %h.addr, align 8, !dbg !6060, !tbaa !2816
  %n_buckets = getelementptr inbounds %struct.kh_ucs_ptr_map_impl_s, ptr %1, i32 0, i32 0, !dbg !6060
  %2 = load i32, ptr %n_buckets, align 8, !dbg !6060, !tbaa !6005
  %cmp = icmp ne i32 %0, %2, !dbg !6060
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6060

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %h.addr, align 8, !dbg !6060, !tbaa !2816
  %flags = getelementptr inbounds %struct.kh_ucs_ptr_map_impl_s, ptr %3, i32 0, i32 4, !dbg !6060
  %4 = load ptr, ptr %flags, align 8, !dbg !6060, !tbaa !6044
  %5 = load i32, ptr %x.addr, align 4, !dbg !6060, !tbaa !2821
  %shr = lshr i32 %5, 4, !dbg !6060
  %idxprom = zext i32 %shr to i64, !dbg !6060
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom, !dbg !6060
  %6 = load i32, ptr %arrayidx, align 4, !dbg !6060, !tbaa !2821
  %7 = load i32, ptr %x.addr, align 4, !dbg !6060, !tbaa !2821
  %and = and i32 %7, 15, !dbg !6060
  %shl = shl i32 %and, 1, !dbg !6060
  %shr1 = lshr i32 %6, %shl, !dbg !6060
  %and2 = and i32 %shr1, 3, !dbg !6060
  %tobool = icmp ne i32 %and2, 0, !dbg !6060
  br i1 %tobool, label %if.end, label %if.then, !dbg !6059

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, ptr %x.addr, align 4, !dbg !6062, !tbaa !2821
  %and3 = and i32 %8, 15, !dbg !6062
  %shl4 = shl i32 %and3, 1, !dbg !6062
  %sh_prom = zext i32 %shl4 to i64, !dbg !6062
  %shl5 = shl i64 1, %sh_prom, !dbg !6062
  %9 = load ptr, ptr %h.addr, align 8, !dbg !6062, !tbaa !2816
  %flags6 = getelementptr inbounds %struct.kh_ucs_ptr_map_impl_s, ptr %9, i32 0, i32 4, !dbg !6062
  %10 = load ptr, ptr %flags6, align 8, !dbg !6062, !tbaa !6044
  %11 = load i32, ptr %x.addr, align 4, !dbg !6062, !tbaa !2821
  %shr7 = lshr i32 %11, 4, !dbg !6062
  %idxprom8 = zext i32 %shr7 to i64, !dbg !6062
  %arrayidx9 = getelementptr inbounds i32, ptr %10, i64 %idxprom8, !dbg !6062
  %12 = load i32, ptr %arrayidx9, align 4, !dbg !6062, !tbaa !2821
  %conv = zext i32 %12 to i64, !dbg !6062
  %or = or i64 %conv, %shl5, !dbg !6062
  %conv10 = trunc i64 %or to i32, !dbg !6062
  store i32 %conv10, ptr %arrayidx9, align 4, !dbg !6062, !tbaa !2821
  %13 = load ptr, ptr %h.addr, align 8, !dbg !6062, !tbaa !2816
  %size = getelementptr inbounds %struct.kh_ucs_ptr_map_impl_s, ptr %13, i32 0, i32 1, !dbg !6062
  %14 = load i32, ptr %size, align 4, !dbg !6062, !tbaa !6064
  %dec = add i32 %14, -1, !dbg !6062
  store i32 %dec, ptr %size, align 4, !dbg !6062, !tbaa !6064
  br label %if.end, !dbg !6062

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !6059
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucs_hlist_del_common(ptr noundef %head, ptr noundef %elem, i32 noundef %is_head) #0 !dbg !6065 {
entry:
  %head.addr = alloca ptr, align 8
  %elem.addr = alloca ptr, align 8
  %is_head.addr = alloca i32, align 4
  store ptr %head, ptr %head.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6069, metadata !DIExpression()), !dbg !6072
  store ptr %elem, ptr %elem.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %elem.addr, metadata !6070, metadata !DIExpression()), !dbg !6073
  store i32 %is_head, ptr %is_head.addr, align 4, !tbaa !2821
  tail call void @llvm.dbg.declare(metadata ptr %is_head.addr, metadata !6071, metadata !DIExpression()), !dbg !6074
  %0 = load ptr, ptr %elem.addr, align 8, !dbg !6075, !tbaa !2816
  %list = getelementptr inbounds %struct.ucs_hlist_link, ptr %0, i32 0, i32 0, !dbg !6077
  %call = call i32 @ucs_list_is_empty(ptr noundef %list), !dbg !6078
  %tobool = icmp ne i32 %call, 0, !dbg !6078
  br i1 %tobool, label %if.then, label %if.else, !dbg !6079

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6080, !tbaa !2816
  %ptr = getelementptr inbounds %struct.ucs_hlist_head, ptr %1, i32 0, i32 0, !dbg !6082
  store ptr null, ptr %ptr, align 8, !dbg !6083, !tbaa !5899
  br label %if.end6, !dbg !6084

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %is_head.addr, align 4, !dbg !6085, !tbaa !2821
  %tobool1 = icmp ne i32 %2, 0, !dbg !6085
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !6088

if.then2:                                         ; preds = %if.else
  %3 = load ptr, ptr %elem.addr, align 8, !dbg !6089, !tbaa !2816
  %list3 = getelementptr inbounds %struct.ucs_hlist_link, ptr %3, i32 0, i32 0, !dbg !6089
  %next = getelementptr inbounds %struct.ucs_list_link, ptr %list3, i32 0, i32 1, !dbg !6089
  %4 = load ptr, ptr %next, align 8, !dbg !6089, !tbaa !6091
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 0, !dbg !6089
  %5 = load ptr, ptr %head.addr, align 8, !dbg !6093, !tbaa !2816
  %ptr4 = getelementptr inbounds %struct.ucs_hlist_head, ptr %5, i32 0, i32 0, !dbg !6094
  store ptr %add.ptr, ptr %ptr4, align 8, !dbg !6095, !tbaa !5899
  br label %if.end, !dbg !6096

if.end:                                           ; preds = %if.then2, %if.else
  %6 = load ptr, ptr %elem.addr, align 8, !dbg !6097, !tbaa !2816
  %list5 = getelementptr inbounds %struct.ucs_hlist_link, ptr %6, i32 0, i32 0, !dbg !6098
  call void @ucs_list_del(ptr noundef %list5), !dbg !6099
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  ret void, !dbg !6100
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ucs_list_is_empty(ptr noundef %head) #6 !dbg !6101 {
entry:
  %head.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6105, metadata !DIExpression()), !dbg !6106
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6107, !tbaa !2816
  %next = getelementptr inbounds %struct.ucs_list_link, ptr %0, i32 0, i32 1, !dbg !6108
  %1 = load ptr, ptr %next, align 8, !dbg !6108, !tbaa !6109
  %2 = load ptr, ptr %head.addr, align 8, !dbg !6110, !tbaa !2816
  %cmp = icmp eq ptr %1, %2, !dbg !6111
  %conv = zext i1 %cmp to i32, !dbg !6111
  ret i32 %conv, !dbg !6112
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ucs_list_del(ptr noundef %elem) #6 !dbg !6113 {
entry:
  %elem.addr = alloca ptr, align 8
  store ptr %elem, ptr %elem.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %elem.addr, metadata !6117, metadata !DIExpression()), !dbg !6118
  %0 = load ptr, ptr %elem.addr, align 8, !dbg !6119, !tbaa !2816
  %next = getelementptr inbounds %struct.ucs_list_link, ptr %0, i32 0, i32 1, !dbg !6120
  %1 = load ptr, ptr %next, align 8, !dbg !6120, !tbaa !6109
  %2 = load ptr, ptr %elem.addr, align 8, !dbg !6121, !tbaa !2816
  %prev = getelementptr inbounds %struct.ucs_list_link, ptr %2, i32 0, i32 0, !dbg !6122
  %3 = load ptr, ptr %prev, align 8, !dbg !6122, !tbaa !6123
  %next1 = getelementptr inbounds %struct.ucs_list_link, ptr %3, i32 0, i32 1, !dbg !6124
  store ptr %1, ptr %next1, align 8, !dbg !6125, !tbaa !6109
  %4 = load ptr, ptr %elem.addr, align 8, !dbg !6126, !tbaa !2816
  %prev2 = getelementptr inbounds %struct.ucs_list_link, ptr %4, i32 0, i32 0, !dbg !6127
  %5 = load ptr, ptr %prev2, align 8, !dbg !6127, !tbaa !6123
  %6 = load ptr, ptr %elem.addr, align 8, !dbg !6128, !tbaa !2816
  %next3 = getelementptr inbounds %struct.ucs_list_link, ptr %6, i32 0, i32 1, !dbg !6129
  %7 = load ptr, ptr %next3, align 8, !dbg !6129, !tbaa !6109
  %prev4 = getelementptr inbounds %struct.ucs_list_link, ptr %7, i32 0, i32 0, !dbg !6130
  store ptr %5, ptr %prev4, align 8, !dbg !6131, !tbaa !6123
  ret void, !dbg !6132
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_request_send_buffer_dereg(ptr noundef %req) #0 !dbg !6133 {
entry:
  %req.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6135, metadata !DIExpression()), !dbg !6136
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6137, !tbaa !2816
  %1 = getelementptr inbounds %struct.ucp_request, ptr %0, i32 0, i32 4, !dbg !6138
  %ep = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 0, !dbg !6139
  %2 = load ptr, ptr %ep, align 8, !dbg !6139, !tbaa !2831
  %worker = getelementptr inbounds %struct.ucp_ep, ptr %2, i32 0, i32 0, !dbg !6140
  %3 = load ptr, ptr %worker, align 8, !dbg !6140, !tbaa !3153
  %context = getelementptr inbounds %struct.ucp_worker, ptr %3, i32 0, i32 2, !dbg !6141
  %4 = load ptr, ptr %context, align 8, !dbg !6141, !tbaa !3195
  %5 = load ptr, ptr %req.addr, align 8, !dbg !6142, !tbaa !2816
  %6 = getelementptr inbounds %struct.ucp_request, ptr %5, i32 0, i32 4, !dbg !6143
  %datatype = getelementptr inbounds %struct.anon.9, ptr %6, i32 0, i32 2, !dbg !6144
  %7 = load i64, ptr %datatype, align 8, !dbg !6144, !tbaa !2831
  %8 = load ptr, ptr %req.addr, align 8, !dbg !6145, !tbaa !2816
  %9 = getelementptr inbounds %struct.ucp_request, ptr %8, i32 0, i32 4, !dbg !6146
  %state = getelementptr inbounds %struct.anon.9, ptr %9, i32 0, i32 7, !dbg !6147
  %10 = getelementptr inbounds %struct.anon.11, ptr %state, i32 0, i32 0, !dbg !6148
  %11 = load ptr, ptr %req.addr, align 8, !dbg !6149, !tbaa !2816
  call void @ucp_request_memory_dereg(ptr noundef %4, i64 noundef %7, ptr noundef %10, ptr noundef %11), !dbg !6150
  ret void, !dbg !6151
}

declare !dbg !6152 void @ucp_request_memory_dereg(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @ucp_request_is_user_memh_valid(ptr noundef %req, ptr noundef %param, ptr noundef %buffer, i64 noundef %length, i64 noundef %datatype, i32 noundef %mem_type, ptr noundef %status_p) #0 !dbg !6158 {
entry:
  %retval = alloca i32, align 4
  %req.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %datatype.addr = alloca i64, align 8
  %mem_type.addr = alloca i32, align 4
  %status_p.addr = alloca ptr, align 8
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6163, metadata !DIExpression()), !dbg !6170
  store ptr %param, ptr %param.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !6164, metadata !DIExpression()), !dbg !6171
  store ptr %buffer, ptr %buffer.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !6165, metadata !DIExpression()), !dbg !6172
  store i64 %length, ptr %length.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !6166, metadata !DIExpression()), !dbg !6173
  store i64 %datatype, ptr %datatype.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %datatype.addr, metadata !6167, metadata !DIExpression()), !dbg !6174
  store i32 %mem_type, ptr %mem_type.addr, align 4, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %mem_type.addr, metadata !6168, metadata !DIExpression()), !dbg !6175
  store ptr %status_p, ptr %status_p.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %status_p.addr, metadata !6169, metadata !DIExpression()), !dbg !6176
  %0 = load ptr, ptr %param.addr, align 8, !dbg !6177, !tbaa !2816
  %op_attr_mask = getelementptr inbounds %struct.ucp_request_param_t, ptr %0, i32 0, i32 0, !dbg !6179
  %1 = load i32, ptr %op_attr_mask, align 8, !dbg !6179, !tbaa !3189
  %and = and i32 %1, 256, !dbg !6180
  %tobool = icmp ne i32 %and, 0, !dbg !6180
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6181

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, ptr %datatype.addr, align 8, !dbg !6182, !tbaa !2829
  %and1 = and i64 %2, 7, !dbg !6182
  %cmp = icmp eq i64 %and1, 0, !dbg !6182
  br i1 %cmp, label %if.end, label %if.then, !dbg !6183

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %status_p.addr, align 8, !dbg !6184, !tbaa !2816
  store i8 0, ptr %3, align 1, !dbg !6186, !tbaa !2831
  store i32 0, ptr %retval, align 4, !dbg !6187
  br label %return, !dbg !6187

if.end:                                           ; preds = %lor.lhs.false
  store i32 1, ptr %retval, align 4, !dbg !6188
  br label %return, !dbg !6188

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !6189
  ret i32 %4, !dbg !6189
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @ucp_request_init_dt_reg_from_memh(ptr noundef %req, i64 noundef %md_map, ptr noundef %memh, ptr noundef %dt_reg) #0 !dbg !6190 {
entry:
  %req.addr = alloca ptr, align 8
  %md_map.addr = alloca i64, align 8
  %memh.addr = alloca ptr, align 8
  %dt_reg.addr = alloca ptr, align 8
  %md_index = alloca i8, align 1
  %memh_index = alloca i8, align 1
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6194, metadata !DIExpression()), !dbg !6200
  store i64 %md_map, ptr %md_map.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %md_map.addr, metadata !6195, metadata !DIExpression()), !dbg !6201
  store ptr %memh, ptr %memh.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %memh.addr, metadata !6196, metadata !DIExpression()), !dbg !6202
  store ptr %dt_reg, ptr %dt_reg.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %dt_reg.addr, metadata !6197, metadata !DIExpression()), !dbg !6203
  call void @llvm.lifetime.start.p0(i64 1, ptr %md_index) #10, !dbg !6204
  tail call void @llvm.dbg.declare(metadata ptr %md_index, metadata !6198, metadata !DIExpression()), !dbg !6205
  call void @llvm.lifetime.start.p0(i64 1, ptr %memh_index) #10, !dbg !6204
  tail call void @llvm.dbg.declare(metadata ptr %memh_index, metadata !6199, metadata !DIExpression()), !dbg !6206
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6207, !tbaa !2816
  %flags = getelementptr inbounds %struct.ucp_request, ptr %0, i32 0, i32 1, !dbg !6208
  %1 = load i32, ptr %flags, align 4, !dbg !6209, !tbaa !3651
  %or = or i32 %1, 8, !dbg !6209
  store i32 %or, ptr %flags, align 4, !dbg !6209, !tbaa !3651
  store i8 0, ptr %memh_index, align 1, !dbg !6210, !tbaa !2831
  %2 = load ptr, ptr %memh.addr, align 8, !dbg !6211, !tbaa !2816
  %md_map1 = getelementptr inbounds %struct.ucp_mem, ptr %2, i32 0, i32 5, !dbg !6211
  %3 = load i64, ptr %md_map1, align 8, !dbg !6211, !tbaa !6213
  %tobool = icmp ne i64 %3, 0, !dbg !6211
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6211

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %memh.addr, align 8, !dbg !6211, !tbaa !2816
  %md_map2 = getelementptr inbounds %struct.ucp_mem, ptr %4, i32 0, i32 5, !dbg !6211
  %5 = load i64, ptr %md_map2, align 8, !dbg !6211, !tbaa !6213
  %call = call i32 @ucs_ffs64(i64 noundef %5), !dbg !6211
  br label %cond.end, !dbg !6211

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6211

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 64, %cond.false ], !dbg !6211
  %conv = trunc i32 %cond to i8, !dbg !6211
  store i8 %conv, ptr %md_index, align 1, !dbg !6211, !tbaa !2831
  br label %for.cond, !dbg !6211

for.cond:                                         ; preds = %cond.end32, %cond.end
  %6 = load i8, ptr %md_index, align 1, !dbg !6217, !tbaa !2831
  %conv3 = zext i8 %6 to i32, !dbg !6217
  %cmp = icmp slt i32 %conv3, 64, !dbg !6217
  br i1 %cmp, label %for.body, label %for.end, !dbg !6211

for.body:                                         ; preds = %for.cond
  %7 = load i64, ptr %md_map.addr, align 8, !dbg !6219, !tbaa !2829
  %8 = load i8, ptr %md_index, align 1, !dbg !6222, !tbaa !2831
  %conv5 = zext i8 %8 to i32, !dbg !6222
  %sh_prom = zext i32 %conv5 to i64, !dbg !6222
  %shl = shl i64 1, %sh_prom, !dbg !6222
  %and = and i64 %7, %shl, !dbg !6223
  %tobool6 = icmp ne i64 %and, 0, !dbg !6223
  br i1 %tobool6, label %if.then, label %if.end19, !dbg !6224

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %memh.addr, align 8, !dbg !6225, !tbaa !2816
  %uct = getelementptr inbounds %struct.ucp_mem, ptr %9, i32 0, i32 7, !dbg !6227
  %10 = load i8, ptr %md_index, align 1, !dbg !6228, !tbaa !2831
  %idxprom = zext i8 %10 to i64, !dbg !6225
  %arrayidx = getelementptr inbounds [0 x ptr], ptr %uct, i64 0, i64 %idxprom, !dbg !6225
  %11 = load ptr, ptr %arrayidx, align 8, !dbg !6225, !tbaa !2816
  %12 = load ptr, ptr %dt_reg.addr, align 8, !dbg !6229, !tbaa !2816
  %memh7 = getelementptr inbounds %struct.ucp_dt_reg, ptr %12, i32 0, i32 1, !dbg !6230
  %13 = load i8, ptr %memh_index, align 1, !dbg !6231, !tbaa !2831
  %inc = add i8 %13, 1, !dbg !6231
  store i8 %inc, ptr %memh_index, align 1, !dbg !6231, !tbaa !2831
  %idxprom8 = zext i8 %13 to i64, !dbg !6229
  %arrayidx9 = getelementptr inbounds [4 x ptr], ptr %memh7, i64 0, i64 %idxprom8, !dbg !6229
  store ptr %11, ptr %arrayidx9, align 8, !dbg !6232, !tbaa !2816
  %14 = load i8, ptr %md_index, align 1, !dbg !6233, !tbaa !2831
  %conv10 = zext i8 %14 to i32, !dbg !6233
  %sh_prom11 = zext i32 %conv10 to i64, !dbg !6233
  %shl12 = shl i64 1, %sh_prom11, !dbg !6233
  %15 = load ptr, ptr %dt_reg.addr, align 8, !dbg !6234, !tbaa !2816
  %md_map13 = getelementptr inbounds %struct.ucp_dt_reg, ptr %15, i32 0, i32 0, !dbg !6235
  %16 = load i64, ptr %md_map13, align 8, !dbg !6236, !tbaa !6237
  %or14 = or i64 %16, %shl12, !dbg !6236
  store i64 %or14, ptr %md_map13, align 8, !dbg !6236, !tbaa !6237
  %17 = load i8, ptr %memh_index, align 1, !dbg !6239, !tbaa !2831
  %conv15 = zext i8 %17 to i32, !dbg !6239
  %cmp16 = icmp sge i32 %conv15, 4, !dbg !6241
  br i1 %cmp16, label %if.then18, label %if.end, !dbg !6242

if.then18:                                        ; preds = %if.then
  br label %for.end, !dbg !6243

if.end:                                           ; preds = %if.then
  br label %if.end19, !dbg !6245

if.end19:                                         ; preds = %if.end, %for.body
  br label %for.inc, !dbg !6246

for.inc:                                          ; preds = %if.end19
  %18 = load ptr, ptr %memh.addr, align 8, !dbg !6217, !tbaa !2816
  %md_map20 = getelementptr inbounds %struct.ucp_mem, ptr %18, i32 0, i32 5, !dbg !6217
  %19 = load i64, ptr %md_map20, align 8, !dbg !6217, !tbaa !6213
  %20 = load i8, ptr %md_index, align 1, !dbg !6217, !tbaa !2831
  %conv21 = zext i8 %20 to i64, !dbg !6217
  %shl22 = shl i64 -2, %conv21, !dbg !6217
  %and23 = and i64 %19, %shl22, !dbg !6217
  %tobool24 = icmp ne i64 %and23, 0, !dbg !6217
  br i1 %tobool24, label %cond.true25, label %cond.false31, !dbg !6217

cond.true25:                                      ; preds = %for.inc
  %21 = load ptr, ptr %memh.addr, align 8, !dbg !6217, !tbaa !2816
  %md_map26 = getelementptr inbounds %struct.ucp_mem, ptr %21, i32 0, i32 5, !dbg !6217
  %22 = load i64, ptr %md_map26, align 8, !dbg !6217, !tbaa !6213
  %23 = load i8, ptr %md_index, align 1, !dbg !6217, !tbaa !2831
  %conv27 = zext i8 %23 to i64, !dbg !6217
  %shl28 = shl i64 -2, %conv27, !dbg !6217
  %and29 = and i64 %22, %shl28, !dbg !6217
  %call30 = call i32 @ucs_ffs64(i64 noundef %and29), !dbg !6217
  br label %cond.end32, !dbg !6217

cond.false31:                                     ; preds = %for.inc
  br label %cond.end32, !dbg !6217

cond.end32:                                       ; preds = %cond.false31, %cond.true25
  %cond33 = phi i32 [ %call30, %cond.true25 ], [ 64, %cond.false31 ], !dbg !6217
  %conv34 = trunc i32 %cond33 to i8, !dbg !6217
  store i8 %conv34, ptr %md_index, align 1, !dbg !6217, !tbaa !2831
  br label %for.cond, !dbg !6217, !llvm.loop !6247

for.end:                                          ; preds = %if.then18, %for.cond
  call void @llvm.lifetime.end.p0(i64 1, ptr %memh_index) #10, !dbg !6249
  call void @llvm.lifetime.end.p0(i64 1, ptr %md_index) #10, !dbg !6249
  ret void, !dbg !6249
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @ucs_ffs64(i64 noundef %n) #0 !dbg !6250 {
entry:
  %n.addr = alloca i64, align 8
  %result = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6255, metadata !DIExpression()), !dbg !6257
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #10, !dbg !6258
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !6256, metadata !DIExpression()), !dbg !6259
  %0 = load i64, ptr %n.addr, align 8, !dbg !6260, !tbaa !2829
  %1 = call i64 asm "bsfq $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %0) #12, !dbg !6261, !srcloc !6262
  store i64 %1, ptr %result, align 8, !dbg !6261, !tbaa !2829
  %2 = load i64, ptr %result, align 8, !dbg !6263, !tbaa !2829
  %conv = trunc i64 %2 to i32, !dbg !6263
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #10, !dbg !6264
  ret i32 %conv, !dbg !6265
}

; Function Attrs: alwaysinline nounwind uwtable
define internal signext i8 @ucp_request_send_buffer_reg_lane_check(ptr noundef %req, i8 noundef zeroext %lane, i64 noundef %prev_md_map, i32 noundef %uct_flags) #0 !dbg !6266 {
entry:
  %retval = alloca i8, align 1
  %req.addr = alloca ptr, align 8
  %lane.addr = alloca i8, align 1
  %prev_md_map.addr = alloca i64, align 8
  %uct_flags.addr = alloca i32, align 4
  %md_map = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6270, metadata !DIExpression()), !dbg !6275
  store i8 %lane, ptr %lane.addr, align 1, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %lane.addr, metadata !6271, metadata !DIExpression()), !dbg !6276
  store i64 %prev_md_map, ptr %prev_md_map.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %prev_md_map.addr, metadata !6272, metadata !DIExpression()), !dbg !6277
  store i32 %uct_flags, ptr %uct_flags.addr, align 4, !tbaa !2821
  tail call void @llvm.dbg.declare(metadata ptr %uct_flags.addr, metadata !6273, metadata !DIExpression()), !dbg !6278
  call void @llvm.lifetime.start.p0(i64 8, ptr %md_map) #10, !dbg !6279
  tail call void @llvm.dbg.declare(metadata ptr %md_map, metadata !6274, metadata !DIExpression()), !dbg !6280
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6281, !tbaa !2816
  %1 = getelementptr inbounds %struct.ucp_request, ptr %0, i32 0, i32 4, !dbg !6283
  %ep = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 0, !dbg !6284
  %2 = load ptr, ptr %ep, align 8, !dbg !6284, !tbaa !2831
  %3 = load i8, ptr %lane.addr, align 1, !dbg !6285, !tbaa !2831
  %call = call ptr @ucp_ep_md_attr(ptr noundef %2, i8 noundef zeroext %3), !dbg !6286
  %flags = getelementptr inbounds %struct.uct_md_attr_v2_t, ptr %call, i32 0, i32 3, !dbg !6287
  %4 = load i64, ptr %flags, align 8, !dbg !6287, !tbaa !6288
  %and = and i64 %4, 4, !dbg !6290
  %tobool = icmp ne i64 %and, 0, !dbg !6290
  br i1 %tobool, label %if.end, label %if.then, !dbg !6291

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1, !dbg !6292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6292

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %req.addr, align 8, !dbg !6294, !tbaa !2816
  %6 = getelementptr inbounds %struct.ucp_request, ptr %5, i32 0, i32 4, !dbg !6294
  %ep1 = getelementptr inbounds %struct.anon.9, ptr %6, i32 0, i32 0, !dbg !6294
  %7 = load ptr, ptr %ep1, align 8, !dbg !6294, !tbaa !2831
  %8 = load i8, ptr %lane.addr, align 1, !dbg !6294, !tbaa !2831
  %call2 = call zeroext i8 @ucp_ep_md_index(ptr noundef %7, i8 noundef zeroext %8), !dbg !6294
  %conv = zext i8 %call2 to i32, !dbg !6294
  %sh_prom = zext i32 %conv to i64, !dbg !6294
  %shl = shl i64 1, %sh_prom, !dbg !6294
  %9 = load i64, ptr %prev_md_map.addr, align 8, !dbg !6295, !tbaa !2829
  %or = or i64 %shl, %9, !dbg !6296
  store i64 %or, ptr %md_map, align 8, !dbg !6297, !tbaa !2829
  %10 = load ptr, ptr %req.addr, align 8, !dbg !6298, !tbaa !2816
  %11 = load i64, ptr %md_map, align 8, !dbg !6299, !tbaa !2829
  %12 = load i32, ptr %uct_flags.addr, align 4, !dbg !6300, !tbaa !2821
  %call3 = call signext i8 @ucp_request_send_buffer_reg(ptr noundef %10, i64 noundef %11, i32 noundef %12), !dbg !6301
  store i8 %call3, ptr %retval, align 1, !dbg !6302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6302

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %md_map) #10, !dbg !6303
  %13 = load i8, ptr %retval, align 1, !dbg !6303
  ret i8 %13, !dbg !6303
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @ucp_ep_md_attr(ptr noundef %ep, i8 noundef zeroext %lane) #6 !dbg !6304 {
entry:
  %ep.addr = alloca ptr, align 8
  %lane.addr = alloca i8, align 1
  %context = alloca ptr, align 8
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ep.addr, metadata !6310, metadata !DIExpression()), !dbg !6313
  store i8 %lane, ptr %lane.addr, align 1, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %lane.addr, metadata !6311, metadata !DIExpression()), !dbg !6314
  call void @llvm.lifetime.start.p0(i64 8, ptr %context) #10, !dbg !6315
  tail call void @llvm.dbg.declare(metadata ptr %context, metadata !6312, metadata !DIExpression()), !dbg !6316
  %0 = load ptr, ptr %ep.addr, align 8, !dbg !6317, !tbaa !2816
  %worker = getelementptr inbounds %struct.ucp_ep, ptr %0, i32 0, i32 0, !dbg !6318
  %1 = load ptr, ptr %worker, align 8, !dbg !6318, !tbaa !3153
  %context1 = getelementptr inbounds %struct.ucp_worker, ptr %1, i32 0, i32 2, !dbg !6319
  %2 = load ptr, ptr %context1, align 8, !dbg !6319, !tbaa !3195
  store ptr %2, ptr %context, align 8, !dbg !6316, !tbaa !2816
  %3 = load ptr, ptr %context, align 8, !dbg !6320, !tbaa !2816
  %tl_mds = getelementptr inbounds %struct.ucp_context, ptr %3, i32 0, i32 2, !dbg !6321
  %4 = load ptr, ptr %tl_mds, align 8, !dbg !6321, !tbaa !6322
  %5 = load ptr, ptr %ep.addr, align 8, !dbg !6323, !tbaa !2816
  %6 = load i8, ptr %lane.addr, align 1, !dbg !6324, !tbaa !2831
  %call = call zeroext i8 @ucp_ep_md_index(ptr noundef %5, i8 noundef zeroext %6), !dbg !6325
  %idxprom = zext i8 %call to i64, !dbg !6320
  %arrayidx = getelementptr inbounds %struct.ucp_tl_md, ptr %4, i64 %idxprom, !dbg !6320
  %attr = getelementptr inbounds %struct.ucp_tl_md, ptr %arrayidx, i32 0, i32 3, !dbg !6326
  call void @llvm.lifetime.end.p0(i64 8, ptr %context) #10, !dbg !6327
  ret ptr %attr, !dbg !6328
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i8 @ucp_ep_md_index(ptr noundef %ep, i8 noundef zeroext %lane) #6 !dbg !6329 {
entry:
  %ep.addr = alloca ptr, align 8
  %lane.addr = alloca i8, align 1
  store ptr %ep, ptr %ep.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %ep.addr, metadata !6333, metadata !DIExpression()), !dbg !6335
  store i8 %lane, ptr %lane.addr, align 1, !tbaa !2831
  tail call void @llvm.dbg.declare(metadata ptr %lane.addr, metadata !6334, metadata !DIExpression()), !dbg !6336
  %0 = load ptr, ptr %ep.addr, align 8, !dbg !6337, !tbaa !2816
  %call = call ptr @ucp_ep_config(ptr noundef %0), !dbg !6338
  %md_index = getelementptr inbounds %struct.ucp_ep_config, ptr %call, i32 0, i32 6, !dbg !6339
  %1 = load i8, ptr %lane.addr, align 1, !dbg !6340, !tbaa !2831
  %idxprom = zext i8 %1 to i64, !dbg !6338
  %arrayidx = getelementptr inbounds [16 x i8], ptr %md_index, i64 0, i64 %idxprom, !dbg !6338
  %2 = load i8, ptr %arrayidx, align 1, !dbg !6338, !tbaa !2831
  ret i8 %2, !dbg !6341
}

; Function Attrs: alwaysinline nounwind uwtable
define internal signext i8 @ucp_request_send_buffer_reg(ptr noundef %req, i64 noundef %md_map, i32 noundef %uct_flags) #0 !dbg !6342 {
entry:
  %req.addr = alloca ptr, align 8
  %md_map.addr = alloca i64, align 8
  %uct_flags.addr = alloca i32, align 4
  store ptr %req, ptr %req.addr, align 8, !tbaa !2816
  tail call void @llvm.dbg.declare(metadata ptr %req.addr, metadata !6346, metadata !DIExpression()), !dbg !6349
  store i64 %md_map, ptr %md_map.addr, align 8, !tbaa !2829
  tail call void @llvm.dbg.declare(metadata ptr %md_map.addr, metadata !6347, metadata !DIExpression()), !dbg !6350
  store i32 %uct_flags, ptr %uct_flags.addr, align 4, !tbaa !2821
  tail call void @llvm.dbg.declare(metadata ptr %uct_flags.addr, metadata !6348, metadata !DIExpression()), !dbg !6351
  %0 = load ptr, ptr %req.addr, align 8, !dbg !6352, !tbaa !2816
  %1 = getelementptr inbounds %struct.ucp_request, ptr %0, i32 0, i32 4, !dbg !6353
  %ep = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 0, !dbg !6354
  %2 = load ptr, ptr %ep, align 8, !dbg !6354, !tbaa !2831
  %worker = getelementptr inbounds %struct.ucp_ep, ptr %2, i32 0, i32 0, !dbg !6355
  %3 = load ptr, ptr %worker, align 8, !dbg !6355, !tbaa !3153
  %context = getelementptr inbounds %struct.ucp_worker, ptr %3, i32 0, i32 2, !dbg !6356
  %4 = load ptr, ptr %context, align 8, !dbg !6356, !tbaa !3195
  %5 = load i64, ptr %md_map.addr, align 8, !dbg !6357, !tbaa !2829
  %6 = load ptr, ptr %req.addr, align 8, !dbg !6358, !tbaa !2816
  %7 = getelementptr inbounds %struct.ucp_request, ptr %6, i32 0, i32 4, !dbg !6359
  %8 = getelementptr inbounds %struct.anon.9, ptr %7, i32 0, i32 1, !dbg !6360
  %9 = load ptr, ptr %8, align 8, !dbg !6360, !tbaa !2831
  %10 = load ptr, ptr %req.addr, align 8, !dbg !6361, !tbaa !2816
  %11 = getelementptr inbounds %struct.ucp_request, ptr %10, i32 0, i32 4, !dbg !6362
  %length = getelementptr inbounds %struct.anon.9, ptr %11, i32 0, i32 3, !dbg !6363
  %12 = load i64, ptr %length, align 8, !dbg !6363, !tbaa !2831
  %13 = load ptr, ptr %req.addr, align 8, !dbg !6364, !tbaa !2816
  %14 = getelementptr inbounds %struct.ucp_request, ptr %13, i32 0, i32 4, !dbg !6365
  %datatype = getelementptr inbounds %struct.anon.9, ptr %14, i32 0, i32 2, !dbg !6366
  %15 = load i64, ptr %datatype, align 8, !dbg !6366, !tbaa !2831
  %16 = load ptr, ptr %req.addr, align 8, !dbg !6367, !tbaa !2816
  %17 = getelementptr inbounds %struct.ucp_request, ptr %16, i32 0, i32 4, !dbg !6368
  %state = getelementptr inbounds %struct.anon.9, ptr %17, i32 0, i32 7, !dbg !6369
  %18 = getelementptr inbounds %struct.anon.11, ptr %state, i32 0, i32 0, !dbg !6370
  %19 = load ptr, ptr %req.addr, align 8, !dbg !6371, !tbaa !2816
  %20 = getelementptr inbounds %struct.ucp_request, ptr %19, i32 0, i32 4, !dbg !6372
  %mem_type = getelementptr inbounds %struct.anon.9, ptr %20, i32 0, i32 10, !dbg !6373
  %21 = load i8, ptr %mem_type, align 2, !dbg !6373, !tbaa !2831
  %conv = zext i8 %21 to i32, !dbg !6374
  %22 = load ptr, ptr %req.addr, align 8, !dbg !6375, !tbaa !2816
  %23 = load i32, ptr %uct_flags.addr, align 4, !dbg !6376, !tbaa !2821
  %call = call signext i8 @ucp_request_memory_reg(ptr noundef %4, i64 noundef %5, ptr noundef %9, i64 noundef %12, i64 noundef %15, ptr noundef %18, i32 noundef %conv, ptr noundef %22, i32 noundef %23), !dbg !6377
  ret i8 %call, !dbg !6378
}

declare !dbg !6379 signext i8 @ucp_request_memory_reg(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare !dbg !6382 i32 @ucp_worker_progress(ptr noundef) #2

declare !dbg !6385 void @ucp_request_release(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #8

attributes #0 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { nounwind memory(none) }

!llvm.dbg.cu = !{!98}
!llvm.module.flags = !{!2801, !2802, !2803, !2804, !2805}
!llvm.ident = !{!2806}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "core/ucp_worker.inl", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "f7b68af453cdb9fee6f547f68743cdf6")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 14)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 16)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !14, line: 292, type: !15, isLocal: true, isDefinition: true)
!14 = !DIFile(filename: "rma/rma_send.c", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "cf01671a78f5e292c7836faad5e9703a")
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 15)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !14, line: 292, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 96, elements: !22)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!22 = !{!23}
!23 = !DISubrange(count: 12)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !14, line: 292, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 51)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !14, line: 397, type: !20, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !14, line: 421, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 4)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !14, line: 431, type: !33, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !40, line: 505, type: !41, isLocal: true, isDefinition: true)
!40 = !DIFile(filename: "core/ucp_request.inl", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "ded9b1fd17d3120231bc3bba5926e731")
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1264, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 158)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !40, line: 505, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 248, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 31)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !40, line: 505, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 27)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !40, line: 346, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 168, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 21)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !40, line: 346, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 28)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !40, line: 413, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 224, elements: !62)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !40, line: 413, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 25)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !40, line: 445, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 232, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 29)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !40, line: 445, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 24)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !40, line: 1039, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 7)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !89, line: 68, type: !90, isLocal: true, isDefinition: true)
!89 = !DIFile(filename: "rma/rma.inl", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "01e7393acdeb0a0c1e2aff38ab0fa37c")
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !22)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !89, line: 68, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 104, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 13)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !89, line: 68, type: !3, isLocal: true, isDefinition: true)
!98 = distinct !DICompileUnit(language: DW_LANG_C11, file: !14, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !99, retainedTypes: !337, globals: !2800, splitDebugInlining: false, nameTableKind: None)
!99 = !{!100, !137, !143, !152, !160, !169, !180, !190, !196, !202, !208, !213, !219, !228, !237, !245, !260, !278, !294, !319, !324}
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 45, baseType: !102, size: 8, elements: !103)
!101 = !DIFile(filename: "ucs/type/status.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "28c283b29442b5def29f6cf41aecfb03")
!102 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!104 = !DIEnumerator(name: "UCS_OK", value: 0)
!105 = !DIEnumerator(name: "UCS_INPROGRESS", value: 1)
!106 = !DIEnumerator(name: "UCS_ERR_NO_MESSAGE", value: -1)
!107 = !DIEnumerator(name: "UCS_ERR_NO_RESOURCE", value: -2)
!108 = !DIEnumerator(name: "UCS_ERR_IO_ERROR", value: -3)
!109 = !DIEnumerator(name: "UCS_ERR_NO_MEMORY", value: -4)
!110 = !DIEnumerator(name: "UCS_ERR_INVALID_PARAM", value: -5)
!111 = !DIEnumerator(name: "UCS_ERR_UNREACHABLE", value: -6)
!112 = !DIEnumerator(name: "UCS_ERR_INVALID_ADDR", value: -7)
!113 = !DIEnumerator(name: "UCS_ERR_NOT_IMPLEMENTED", value: -8)
!114 = !DIEnumerator(name: "UCS_ERR_MESSAGE_TRUNCATED", value: -9)
!115 = !DIEnumerator(name: "UCS_ERR_NO_PROGRESS", value: -10)
!116 = !DIEnumerator(name: "UCS_ERR_BUFFER_TOO_SMALL", value: -11)
!117 = !DIEnumerator(name: "UCS_ERR_NO_ELEM", value: -12)
!118 = !DIEnumerator(name: "UCS_ERR_SOME_CONNECTS_FAILED", value: -13)
!119 = !DIEnumerator(name: "UCS_ERR_NO_DEVICE", value: -14)
!120 = !DIEnumerator(name: "UCS_ERR_BUSY", value: -15)
!121 = !DIEnumerator(name: "UCS_ERR_CANCELED", value: -16)
!122 = !DIEnumerator(name: "UCS_ERR_SHMEM_SEGMENT", value: -17)
!123 = !DIEnumerator(name: "UCS_ERR_ALREADY_EXISTS", value: -18)
!124 = !DIEnumerator(name: "UCS_ERR_OUT_OF_RANGE", value: -19)
!125 = !DIEnumerator(name: "UCS_ERR_TIMED_OUT", value: -20)
!126 = !DIEnumerator(name: "UCS_ERR_EXCEEDS_LIMIT", value: -21)
!127 = !DIEnumerator(name: "UCS_ERR_UNSUPPORTED", value: -22)
!128 = !DIEnumerator(name: "UCS_ERR_REJECTED", value: -23)
!129 = !DIEnumerator(name: "UCS_ERR_NOT_CONNECTED", value: -24)
!130 = !DIEnumerator(name: "UCS_ERR_CONNECTION_RESET", value: -25)
!131 = !DIEnumerator(name: "UCS_ERR_FIRST_LINK_FAILURE", value: -40)
!132 = !DIEnumerator(name: "UCS_ERR_LAST_LINK_FAILURE", value: -59)
!133 = !DIEnumerator(name: "UCS_ERR_FIRST_ENDPOINT_FAILURE", value: -60)
!134 = !DIEnumerator(name: "UCS_ERR_ENDPOINT_TIMEOUT", value: -80)
!135 = !DIEnumerator(name: "UCS_ERR_LAST_ENDPOINT_FAILURE", value: -89)
!136 = !DIEnumerator(name: "UCS_ERR_LAST", value: -100)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !138, line: 121, baseType: !139, size: 32, elements: !140)
!138 = !DIFile(filename: "api/ucp_def.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "7e090a05b600feac1a576a0fb43e2012")
!139 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!140 = !{!141, !142}
!141 = !DIEnumerator(name: "UCP_ERR_HANDLING_MODE_NONE", value: 0)
!142 = !DIEnumerator(name: "UCP_ERR_HANDLING_MODE_PEER", value: 1)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !144, line: 37, baseType: !139, size: 32, elements: !145)
!144 = !DIFile(filename: "ucs/config/types.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "334625b5e9d9ea7b05f72001931650ae")
!145 = !{!146, !147, !148, !149, !150, !151}
!146 = !DIEnumerator(name: "UCS_ASYNC_MODE_SIGNAL", value: 0)
!147 = !DIEnumerator(name: "UCS_ASYNC_MODE_THREAD", value: 1)
!148 = !DIEnumerator(name: "UCS_ASYNC_MODE_THREAD_SPINLOCK", value: 1)
!149 = !DIEnumerator(name: "UCS_ASYNC_MODE_THREAD_MUTEX", value: 2)
!150 = !DIEnumerator(name: "UCS_ASYNC_MODE_POLL", value: 3)
!151 = !DIEnumerator(name: "UCS_ASYNC_MODE_LAST", value: 4)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !153, line: 307, baseType: !139, size: 32, elements: !154)
!153 = !DIFile(filename: "uct/api/uct.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "09bc2273d56a3774e618c4afb5c2e381")
!154 = !{!155, !156, !157, !158, !159}
!155 = !DIEnumerator(name: "UCT_DEVICE_TYPE_NET", value: 0)
!156 = !DIEnumerator(name: "UCT_DEVICE_TYPE_SHM", value: 1)
!157 = !DIEnumerator(name: "UCT_DEVICE_TYPE_ACC", value: 2)
!158 = !DIEnumerator(name: "UCT_DEVICE_TYPE_SELF", value: 3)
!159 = !DIEnumerator(name: "UCT_DEVICE_TYPE_LAST", value: 4)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !153, line: 472, baseType: !139, size: 32, elements: !161)
!161 = !{!162, !163, !164, !165, !166, !167, !168}
!162 = !DIEnumerator(name: "UCT_ALLOC_METHOD_THP", value: 0)
!163 = !DIEnumerator(name: "UCT_ALLOC_METHOD_MD", value: 1)
!164 = !DIEnumerator(name: "UCT_ALLOC_METHOD_HEAP", value: 2)
!165 = !DIEnumerator(name: "UCT_ALLOC_METHOD_MMAP", value: 3)
!166 = !DIEnumerator(name: "UCT_ALLOC_METHOD_HUGE", value: 4)
!167 = !DIEnumerator(name: "UCT_ALLOC_METHOD_LAST", value: 5)
!168 = !DIEnumerator(name: "UCT_ALLOC_METHOD_DEFAULT", value: 5)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !170, line: 227, baseType: !139, size: 32, elements: !171)
!170 = !DIFile(filename: "core/ucp_types.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "f846e622b45708728e368de7175239ab")
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179}
!172 = !DIEnumerator(name: "UCP_RNDV_MODE_AUTO", value: 0)
!173 = !DIEnumerator(name: "UCP_RNDV_MODE_GET_ZCOPY", value: 1)
!174 = !DIEnumerator(name: "UCP_RNDV_MODE_PUT_ZCOPY", value: 2)
!175 = !DIEnumerator(name: "UCP_RNDV_MODE_GET_PIPELINE", value: 3)
!176 = !DIEnumerator(name: "UCP_RNDV_MODE_PUT_PIPELINE", value: 4)
!177 = !DIEnumerator(name: "UCP_RNDV_MODE_AM", value: 5)
!178 = !DIEnumerator(name: "UCP_RNDV_MODE_RKEY_PTR", value: 6)
!179 = !DIEnumerator(name: "UCP_RNDV_MODE_LAST", value: 7)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ucs_memory_type", file: !181, line: 37, baseType: !139, size: 32, elements: !182)
!181 = !DIFile(filename: "ucs/memory/memory_type.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "bb76a75df4f6cf6e24ada6d360f0fc3a")
!182 = !{!183, !184, !185, !186, !187, !188, !189}
!183 = !DIEnumerator(name: "UCS_MEMORY_TYPE_HOST", value: 0)
!184 = !DIEnumerator(name: "UCS_MEMORY_TYPE_CUDA", value: 1)
!185 = !DIEnumerator(name: "UCS_MEMORY_TYPE_CUDA_MANAGED", value: 2)
!186 = !DIEnumerator(name: "UCS_MEMORY_TYPE_ROCM", value: 3)
!187 = !DIEnumerator(name: "UCS_MEMORY_TYPE_ROCM_MANAGED", value: 4)
!188 = !DIEnumerator(name: "UCS_MEMORY_TYPE_LAST", value: 5)
!189 = !DIEnumerator(name: "UCS_MEMORY_TYPE_UNKNOWN", value: 5)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !170, line: 204, baseType: !139, size: 32, elements: !191)
!191 = !{!192, !193, !194, !195}
!192 = !DIEnumerator(name: "UCP_ATOMIC_MODE_CPU", value: 0)
!193 = !DIEnumerator(name: "UCP_ATOMIC_MODE_DEVICE", value: 1)
!194 = !DIEnumerator(name: "UCP_ATOMIC_MODE_GUESS", value: 2)
!195 = !DIEnumerator(name: "UCP_ATOMIC_MODE_LAST", value: 3)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !170, line: 216, baseType: !139, size: 32, elements: !197)
!197 = !{!198, !199, !200, !201}
!198 = !DIEnumerator(name: "UCP_FENCE_MODE_WEAK", value: 0)
!199 = !DIEnumerator(name: "UCP_FENCE_MODE_STRONG", value: 1)
!200 = !DIEnumerator(name: "UCP_FENCE_MODE_AUTO", value: 2)
!201 = !DIEnumerator(name: "UCP_FENCE_MODE_LAST", value: 3)
!202 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ucs_on_off_auto_value", file: !144, line: 65, baseType: !139, size: 32, elements: !203)
!203 = !{!204, !205, !206, !207}
!204 = !DIEnumerator(name: "UCS_CONFIG_OFF", value: 0)
!205 = !DIEnumerator(name: "UCS_CONFIG_ON", value: 1)
!206 = !DIEnumerator(name: "UCS_CONFIG_AUTO", value: 2)
!207 = !DIEnumerator(name: "UCS_CONFIG_ON_OFF_LAST", value: 3)
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !170, line: 242, baseType: !139, size: 32, elements: !209)
!209 = !{!210, !211, !212}
!210 = !DIEnumerator(name: "UCP_OBJECT_VERSION_V1", value: 0)
!211 = !DIEnumerator(name: "UCP_OBJECT_VERSION_V2", value: 1)
!212 = !DIEnumerator(name: "UCP_OBJECT_VERSION_LAST", value: 2)
!213 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ucp_mt_type", file: !214, line: 22, baseType: !139, size: 32, elements: !215)
!214 = !DIFile(filename: "core/ucp_thread.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "69f03c99e0ee52bb967e07c4e49cc5b3")
!215 = !{!216, !217, !218}
!216 = !DIEnumerator(name: "UCP_MT_TYPE_NONE", value: 0)
!217 = !DIEnumerator(name: "UCP_MT_TYPE_SPINLOCK", value: 1)
!218 = !DIEnumerator(name: "UCP_MT_TYPE_MUTEX", value: 2)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ucp_dt_type", file: !220, line: 529, baseType: !139, size: 32, elements: !221)
!220 = !DIFile(filename: "api/ucp.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "8e9ea5e5050cba93f806ca3d6ba4ae1b")
!221 = !{!222, !223, !224, !225, !226, !227}
!222 = !DIEnumerator(name: "UCP_DATATYPE_CONTIG", value: 0)
!223 = !DIEnumerator(name: "UCP_DATATYPE_STRIDED", value: 1)
!224 = !DIEnumerator(name: "UCP_DATATYPE_IOV", value: 2)
!225 = !DIEnumerator(name: "UCP_DATATYPE_GENERIC", value: 7)
!226 = !DIEnumerator(name: "UCP_DATATYPE_SHIFT", value: 3)
!227 = !DIEnumerator(name: "UCP_DATATYPE_CLASS_MASK", value: 7)
!228 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uct_atomic_op", file: !153, line: 347, baseType: !139, size: 32, elements: !229)
!229 = !{!230, !231, !232, !233, !234, !235, !236}
!230 = !DIEnumerator(name: "UCT_ATOMIC_OP_ADD", value: 0)
!231 = !DIEnumerator(name: "UCT_ATOMIC_OP_AND", value: 1)
!232 = !DIEnumerator(name: "UCT_ATOMIC_OP_OR", value: 2)
!233 = !DIEnumerator(name: "UCT_ATOMIC_OP_XOR", value: 3)
!234 = !DIEnumerator(name: "UCT_ATOMIC_OP_SWAP", value: 4)
!235 = !DIEnumerator(name: "UCT_ATOMIC_OP_CSWAP", value: 5)
!236 = !DIEnumerator(name: "UCT_ATOMIC_OP_LAST", value: 6)
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !238, line: 72, baseType: !139, size: 32, elements: !239)
!238 = !DIFile(filename: "core/ucp_request.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "22ca07c2f1dc6444034ca2449f2c459a")
!239 = !{!240, !241, !242, !243, !244}
!240 = !DIEnumerator(name: "UCP_REQUEST_SEND_PROTO_BCOPY_AM", value: 0)
!241 = !DIEnumerator(name: "UCP_REQUEST_SEND_PROTO_ZCOPY_AM", value: 1)
!242 = !DIEnumerator(name: "UCP_REQUEST_SEND_PROTO_RNDV_GET", value: 2)
!243 = !DIEnumerator(name: "UCP_REQUEST_SEND_PROTO_RNDV_PUT", value: 3)
!244 = !DIEnumerator(name: "UCP_REQUEST_SEND_PROTO_RMA", value: 4)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !220, line: 723, baseType: !139, size: 32, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259}
!247 = !DIEnumerator(name: "UCP_OP_ATTR_FIELD_REQUEST", value: 1)
!248 = !DIEnumerator(name: "UCP_OP_ATTR_FIELD_CALLBACK", value: 2)
!249 = !DIEnumerator(name: "UCP_OP_ATTR_FIELD_USER_DATA", value: 4)
!250 = !DIEnumerator(name: "UCP_OP_ATTR_FIELD_DATATYPE", value: 8)
!251 = !DIEnumerator(name: "UCP_OP_ATTR_FIELD_FLAGS", value: 16)
!252 = !DIEnumerator(name: "UCP_OP_ATTR_FIELD_REPLY_BUFFER", value: 32)
!253 = !DIEnumerator(name: "UCP_OP_ATTR_FIELD_MEMORY_TYPE", value: 64)
!254 = !DIEnumerator(name: "UCP_OP_ATTR_FIELD_RECV_INFO", value: 128)
!255 = !DIEnumerator(name: "UCP_OP_ATTR_FIELD_MEMH", value: 256)
!256 = !DIEnumerator(name: "UCP_OP_ATTR_FLAG_NO_IMM_CMPL", value: 65536)
!257 = !DIEnumerator(name: "UCP_OP_ATTR_FLAG_FAST_CMPL", value: 131072)
!258 = !DIEnumerator(name: "UCP_OP_ATTR_FLAG_FORCE_IMM_CMPL", value: 262144)
!259 = !DIEnumerator(name: "UCP_OP_ATTR_FLAG_MULTI_SEND", value: 524288)
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !170, line: 135, baseType: !139, size: 32, elements: !261)
!261 = !{!262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277}
!262 = !DIEnumerator(name: "UCP_OP_ID_TAG_SEND", value: 0)
!263 = !DIEnumerator(name: "UCP_OP_ID_TAG_SEND_SYNC", value: 1)
!264 = !DIEnumerator(name: "UCP_OP_ID_AM_SEND", value: 2)
!265 = !DIEnumerator(name: "UCP_OP_ID_AM_SEND_REPLY", value: 3)
!266 = !DIEnumerator(name: "UCP_OP_ID_PUT", value: 4)
!267 = !DIEnumerator(name: "UCP_OP_ID_GET", value: 5)
!268 = !DIEnumerator(name: "UCP_OP_ID_AMO_POST", value: 6)
!269 = !DIEnumerator(name: "UCP_OP_ID_AMO_FETCH", value: 7)
!270 = !DIEnumerator(name: "UCP_OP_ID_AMO_CSWAP", value: 8)
!271 = !DIEnumerator(name: "UCP_OP_ID_API_LAST", value: 9)
!272 = !DIEnumerator(name: "UCP_OP_ID_RNDV_FIRST", value: 9)
!273 = !DIEnumerator(name: "UCP_OP_ID_RNDV_SEND", value: 9)
!274 = !DIEnumerator(name: "UCP_OP_ID_RNDV_RECV", value: 10)
!275 = !DIEnumerator(name: "UCP_OP_ID_RNDV_RECV_DROP", value: 11)
!276 = !DIEnumerator(name: "UCP_OP_ID_RNDV_LAST", value: 12)
!277 = !DIEnumerator(name: "UCP_OP_ID_LAST", value: 12)
!278 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !144, line: 16, baseType: !139, size: 32, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293}
!280 = !DIEnumerator(name: "UCS_LOG_LEVEL_FATAL", value: 0)
!281 = !DIEnumerator(name: "UCS_LOG_LEVEL_ERROR", value: 1)
!282 = !DIEnumerator(name: "UCS_LOG_LEVEL_WARN", value: 2)
!283 = !DIEnumerator(name: "UCS_LOG_LEVEL_DIAG", value: 3)
!284 = !DIEnumerator(name: "UCS_LOG_LEVEL_INFO", value: 4)
!285 = !DIEnumerator(name: "UCS_LOG_LEVEL_DEBUG", value: 5)
!286 = !DIEnumerator(name: "UCS_LOG_LEVEL_TRACE", value: 6)
!287 = !DIEnumerator(name: "UCS_LOG_LEVEL_TRACE_REQ", value: 7)
!288 = !DIEnumerator(name: "UCS_LOG_LEVEL_TRACE_DATA", value: 8)
!289 = !DIEnumerator(name: "UCS_LOG_LEVEL_TRACE_ASYNC", value: 9)
!290 = !DIEnumerator(name: "UCS_LOG_LEVEL_TRACE_FUNC", value: 10)
!291 = !DIEnumerator(name: "UCS_LOG_LEVEL_TRACE_POLL", value: 11)
!292 = !DIEnumerator(name: "UCS_LOG_LEVEL_LAST", value: 12)
!293 = !DIEnumerator(name: "UCS_LOG_LEVEL_PRINT", value: 13)
!294 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !238, line: 36, baseType: !139, size: 32, elements: !295)
!295 = !{!296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318}
!296 = !DIEnumerator(name: "UCP_REQUEST_FLAG_COMPLETED", value: 1)
!297 = !DIEnumerator(name: "UCP_REQUEST_FLAG_RELEASED", value: 2)
!298 = !DIEnumerator(name: "UCP_REQUEST_FLAG_PROTO_SEND", value: 4)
!299 = !DIEnumerator(name: "UCP_REQUEST_FLAG_USER_MEMH", value: 8)
!300 = !DIEnumerator(name: "UCP_REQUEST_FLAG_SYNC_LOCAL_COMPLETED", value: 16)
!301 = !DIEnumerator(name: "UCP_REQUEST_FLAG_SYNC_REMOTE_COMPLETED", value: 32)
!302 = !DIEnumerator(name: "UCP_REQUEST_FLAG_CALLBACK", value: 64)
!303 = !DIEnumerator(name: "UCP_REQUEST_FLAG_PROTO_INITIALIZED", value: 128)
!304 = !DIEnumerator(name: "UCP_REQUEST_FLAG_SYNC", value: 256)
!305 = !DIEnumerator(name: "UCP_REQUEST_FLAG_PROTO_AMO_PACKED", value: 512)
!306 = !DIEnumerator(name: "UCP_REQUEST_FLAG_OFFLOADED", value: 1024)
!307 = !DIEnumerator(name: "UCP_REQUEST_FLAG_BLOCK_OFFLOAD", value: 2048)
!308 = !DIEnumerator(name: "UCP_REQUEST_FLAG_STREAM_RECV_WAITALL", value: 4096)
!309 = !DIEnumerator(name: "UCP_REQUEST_FLAG_SEND_AM", value: 8192)
!310 = !DIEnumerator(name: "UCP_REQUEST_FLAG_SEND_TAG", value: 16384)
!311 = !DIEnumerator(name: "UCP_REQUEST_FLAG_RNDV_FRAG", value: 32768)
!312 = !DIEnumerator(name: "UCP_REQUEST_FLAG_RECV_AM", value: 65536)
!313 = !DIEnumerator(name: "UCP_REQUEST_FLAG_RECV_TAG", value: 131072)
!314 = !DIEnumerator(name: "UCP_REQUEST_FLAG_RKEY_INUSE", value: 262144)
!315 = !DIEnumerator(name: "UCP_REQUEST_FLAG_USER_HEADER_COPIED", value: 524288)
!316 = !DIEnumerator(name: "UCP_REQUEST_FLAG_STREAM_RECV", value: 0)
!317 = !DIEnumerator(name: "UCP_REQUEST_DEBUG_FLAG_EXTERNAL", value: 0)
!318 = !DIEnumerator(name: "UCP_REQUEST_FLAG_SUPER_VALID", value: 0)
!319 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !320, line: 62, baseType: !139, size: 32, elements: !321)
!320 = !DIFile(filename: "proto/proto.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "8905f1560da12fa20104b5956b40f906")
!321 = !{!322, !323}
!322 = !DIEnumerator(name: "UCP_PROTO_STAGE_START", value: 0)
!323 = !DIEnumerator(name: "UCP_PROTO_STAGE_LAST", value: 8)
!324 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !153, line: 703, baseType: !139, size: 32, elements: !325)
!325 = !{!326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336}
!326 = !DIEnumerator(name: "UCT_MD_FLAG_ALLOC", value: 1)
!327 = !DIEnumerator(name: "UCT_MD_FLAG_REG", value: 2)
!328 = !DIEnumerator(name: "UCT_MD_FLAG_NEED_MEMH", value: 4)
!329 = !DIEnumerator(name: "UCT_MD_FLAG_NEED_RKEY", value: 8)
!330 = !DIEnumerator(name: "UCT_MD_FLAG_ADVISE", value: 16)
!331 = !DIEnumerator(name: "UCT_MD_FLAG_FIXED", value: 32)
!332 = !DIEnumerator(name: "UCT_MD_FLAG_RKEY_PTR", value: 64)
!333 = !DIEnumerator(name: "UCT_MD_FLAG_SOCKADDR", value: 128)
!334 = !DIEnumerator(name: "UCT_MD_FLAG_INVALIDATE", value: 256)
!335 = !DIEnumerator(name: "UCT_MD_FLAG_EXPORTED_MKEY", value: 512)
!336 = !DIEnumerator(name: "UCT_MD_FLAG_REG_DMABUF", value: 1024)
!337 = !{!338, !339, !340, !343, !345, !346, !350, !355, !1913, !2788, !2793, !1147, !2796, !528, !364, !2469, !2395, !551, !2433, !1059, !780, !918, !709, !344, !2342, !351}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !341, line: 87, baseType: !342)
!341 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!342 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !341, line: 90, baseType: !344)
!344 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_status_t", file: !101, line: 86, baseType: !100)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_send_nbx_callback_t", file: !138, line: 340, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !339, !345, !339}
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_datatype_t", file: !138, line: 278, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !352, line: 27, baseType: !353)
!352 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !354, line: 45, baseType: !344)
!354 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_request_t", file: !170, line: 65, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_request", file: !238, line: 126, size: 2112, elements: !358)
!358 = !{!359, !360, !363, !366, !371}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !357, file: !238, line: 128, baseType: !345, size: 8)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !357, file: !238, line: 130, baseType: !361, size: 32, offset: 32)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !352, line: 26, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !354, line: 42, baseType: !139)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !357, file: !238, line: 132, baseType: !364, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_ptr_map_key_t", file: !365, line: 36, baseType: !343)
!365 = !DIFile(filename: "ucs/datastruct/ptr_map.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "ba93f70097103e87793db5a90e3b76dc")
!366 = !DIDerivedType(tag: DW_TAG_member, scope: !357, file: !238, line: 134, baseType: !367, size: 64, offset: 128)
!367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !357, file: !238, line: 134, size: 64, elements: !368)
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !367, file: !238, line: 135, baseType: !339, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "super_req", scope: !367, file: !238, line: 136, baseType: !355, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, scope: !357, file: !238, line: 140, baseType: !372, size: 1920, offset: 192)
!372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !357, file: !238, line: 140, size: 1920, elements: !373)
!373 = !{!374, !2686, !2779}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !372, file: !238, line: 370, baseType: !375, size: 1920)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !372, file: !238, line: 144, size: 1920, elements: !376)
!376 = !{!377, !2370, !2376, !2377, !2378, !2379, !2380, !2383, !2512, !2675, !2681, !2682, !2683, !2684, !2685}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !375, file: !238, line: 145, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_ep_h", file: !138, line: 92, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_ep", file: !381, line: 509, size: 512, elements: !382)
!381 = !DIFile(filename: "core/ucp_ep.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "4fa9d87318fa17d2fc925a59b220730c")
!382 = !{!383, !2246, !2247, !2248, !2251, !2252, !2254, !2256}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !380, file: !381, line: 510, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_worker_h", file: !138, line: 246, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_worker", file: !387, line: 268, size: 373056, elements: !388)
!387 = !DIFile(filename: "core/ucp_worker.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "936aef50bc32c28d8d12579a0d12b40a")
!388 = !{!389, !390, !497, !981, !982, !983, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1026, !1027, !1028, !1029, !1030, !1043, !1044, !1045, !1046, !1047, !1116, !1671, !1672, !1673, !1674, !1687, !1696, !1697, !1715, !1716, !1718, !1780, !1819, !1820, !1822, !1823, !1846, !1859, !1890, !1899, !2206, !2207, !2229, !2239}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !387, line: 269, baseType: !351, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "async", scope: !386, file: !387, line: 270, baseType: !391, size: 640, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_async_context_t", file: !392, line: 23, baseType: !393)
!392 = !DIFile(filename: "ucs/async/async_fwd.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "d5ece52cd24b2b44b3790e38965d2d54")
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_async_context", file: !394, line: 29, size: 640, elements: !395)
!394 = !DIFile(filename: "ucs/async/async.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "6142364f8a620cd90b5a9b861761fc16")
!395 = !{!396, !473, !475, !494}
!396 = !DIDerivedType(tag: DW_TAG_member, scope: !393, file: !394, line: 30, baseType: !397, size: 320)
!397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !393, file: !394, line: 30, size: 320, elements: !398)
!398 = !{!399, !457, !472}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !397, file: !394, line: 31, baseType: !400, size: 320)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_async_thread_context_t", file: !401, line: 29, baseType: !402)
!401 = !DIFile(filename: "ucs/async/thread.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "da7eb6f0edce9d74f8bf9034adb02701")
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_async_thread_context", file: !401, line: 24, size: 320, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, scope: !402, file: !401, line: 25, baseType: !405, size: 320)
!405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !402, file: !401, line: 25, size: 320, elements: !406)
!406 = !{!407, !424}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "spinlock", scope: !405, file: !401, line: 26, baseType: !408, size: 128)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_recursive_spinlock_t", file: !409, line: 40, baseType: !410)
!409 = !DIFile(filename: "ucs/type/spinlock.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "bb2c8956ed1d856531912b1024d70c3f")
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_recursive_spinlock", file: !409, line: 36, size: 128, elements: !411)
!411 = !{!412, !421, !422}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "super", scope: !410, file: !409, line: 37, baseType: !413, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_spinlock_t", file: !409, line: 31, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_spinlock", file: !409, line: 29, size: 32, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !414, file: !409, line: 30, baseType: !417, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_spinlock_t", file: !418, line: 103, baseType: !419)
!418 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!419 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !420)
!420 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !410, file: !409, line: 38, baseType: !420, size: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !410, file: !409, line: 39, baseType: !423, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !418, line: 27, baseType: !344)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !405, file: !401, line: 27, baseType: !425, size: 320)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_async_thread_mutex_t", file: !401, line: 21, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_async_thread_mutex", file: !401, line: 15, size: 320, elements: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !426, file: !401, line: 16, baseType: !429, size: 320)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !418, line: 72, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !418, line: 67, size: 320, elements: !431)
!431 = !{!432, !452, !456}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !430, file: !418, line: 69, baseType: !433, size: 320)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !434, line: 22, size: 320, elements: !435)
!434 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!435 = !{!436, !437, !438, !439, !440, !441, !443, !444}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !433, file: !434, line: 24, baseType: !420, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !433, file: !434, line: 25, baseType: !139, size: 32, offset: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !433, file: !434, line: 26, baseType: !420, size: 32, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !433, file: !434, line: 28, baseType: !139, size: 32, offset: 96)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !433, file: !434, line: 32, baseType: !420, size: 32, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !433, file: !434, line: 34, baseType: !442, size: 16, offset: 160)
!442 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !433, file: !434, line: 35, baseType: !442, size: 16, offset: 176)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !433, file: !434, line: 36, baseType: !445, size: 128, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !446, line: 55, baseType: !447)
!446 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !446, line: 51, size: 128, elements: !448)
!448 = !{!449, !451}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !447, file: !446, line: 53, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !447, file: !446, line: 54, baseType: !450, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !430, file: !418, line: 70, baseType: !453, size: 320)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 40)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !430, file: !418, line: 71, baseType: !342, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !397, file: !394, line: 32, baseType: !458, size: 192)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_async_signal_context_t", file: !459, line: 22, baseType: !460)
!459 = !DIFile(filename: "ucs/async/signal.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "135e943ef775271592b38f65322cd0b9")
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_async_signal_context", file: !459, line: 17, size: 192, elements: !461)
!461 = !{!462, !466, !467, !468}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !460, file: !459, line: 18, baseType: !463, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !464, line: 97, baseType: !465)
!464 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !354, line: 154, baseType: !420)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !460, file: !459, line: 19, baseType: !420, size: 32, offset: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "pthread", scope: !460, file: !459, line: 20, baseType: !423, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !460, file: !459, line: 21, baseType: !469, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "timer_t", file: !470, line: 7, baseType: !471)
!470 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/timer_t.h", directory: "", checksumkind: CSK_MD5, checksum: "b257b0db40a7b7cec2ff2d7c51baed44")
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__timer_t", file: !354, line: 172, baseType: !339)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "poll_block", scope: !397, file: !394, line: 33, baseType: !420, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !393, file: !394, line: 36, baseType: !474, size: 32, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_async_mode_t", file: !144, line: 44, baseType: !143)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !393, file: !394, line: 37, baseType: !476, size: 192, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_mpmc_queue_t", file: !477, line: 22, baseType: !478)
!477 = !DIFile(filename: "ucs/datastruct/mpmc.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "3da65d63ad2ba374c6d7f15a483e2ef3")
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_mpmc_queue", file: !477, line: 19, size: 192, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !478, file: !477, line: 20, baseType: !413, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !478, file: !477, line: 21, baseType: !482, size: 128, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_queue_head_t", file: !483, line: 12, baseType: !484)
!483 = !DIFile(filename: "ucs/datastruct/queue_types.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "337bfa8de2de4146e201b945da9ca259")
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_queue_head", file: !483, line: 27, size: 128, elements: !485)
!485 = !{!486, !492}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !484, file: !483, line: 28, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_queue_elem_t", file: !483, line: 11, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_queue_elem", file: !483, line: 19, size: 64, elements: !490)
!490 = !{!491}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !489, file: !483, line: 20, baseType: !487, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ptail", scope: !484, file: !483, line: 29, baseType: !493, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakeup", scope: !393, file: !394, line: 38, baseType: !495, size: 64, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_time_t", file: !496, line: 23, baseType: !344)
!496 = !DIFile(filename: "ucs/time/time_def.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "c32183e06bcce8778e98b1f419c838cb")
!497 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !386, file: !387, line: 271, baseType: !498, size: 64, offset: 704)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_context_h", file: !138, line: 60, baseType: !499)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_context", file: !501, line: 263, size: 7552, elements: !502)
!501 = !DIFile(filename: "core/ucp_context.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "14d6de6ecb5d76517811c5ca138085bb")
!502 = !{!503, !527, !532, !584, !586, !591, !592, !593, !595, !596, !597, !598, !627, !638, !639, !641, !865, !968, !979, !980}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "tl_cmpts", scope: !500, file: !501, line: 264, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_tl_cmpt_t", file: !501, line: 226, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_tl_cmpt", file: !501, line: 223, size: 448, elements: !507)
!507 = !{!508, !513}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "cmpt", scope: !506, file: !501, line: 224, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_component_h", file: !510, line: 78, baseType: !511)
!510 = !DIFile(filename: "uct/api/uct_def.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "2cfa90575e26a3e39073bbd74de78a87")
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "uct_component", file: !510, line: 78, flags: DIFlagFwdDecl)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !506, file: !501, line: 225, baseType: !514, size: 384, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_component_attr_t", file: !153, line: 278, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_component_attr", file: !153, line: 244, size: 384, elements: !516)
!516 = !{!517, !518, !519, !520, !526}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "field_mask", scope: !515, file: !153, line: 251, baseType: !351, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !515, file: !153, line: 254, baseType: !9, size: 128, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "md_resource_count", scope: !515, file: !153, line: 257, baseType: !139, size: 32, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "md_resources", scope: !515, file: !153, line: 272, baseType: !521, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_md_resource_desc_t", file: !153, line: 219, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_md_resource_desc", file: !153, line: 217, size: 128, elements: !524)
!524 = !{!525}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "md_name", scope: !523, file: !153, line: 218, baseType: !9, size: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !515, file: !153, line: 277, baseType: !351, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "num_cmpts", scope: !500, file: !501, line: 265, baseType: !528, size: 8, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_rsc_index_t", file: !170, line: 31, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !352, line: 24, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !354, line: 38, baseType: !531)
!531 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "tl_mds", scope: !500, file: !501, line: 267, baseType: !533, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_tl_md_t", file: !501, line: 257, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_tl_md", file: !501, line: 232, size: 4416, elements: !536)
!536 = !{!537, !541, !542, !543, !583}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "md", scope: !535, file: !501, line: 236, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_md_h", file: !510, line: 86, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "uct_md", file: !510, line: 86, flags: DIFlagFwdDecl)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "cmpt_index", scope: !535, file: !501, line: 241, baseType: !528, size: 8, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rsc", scope: !535, file: !501, line: 246, baseType: !522, size: 128, offset: 72)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !535, file: !501, line: 251, baseType: !544, size: 4096, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_md_attr_v2_t", file: !545, line: 775, baseType: !546)
!545 = !DIFile(filename: "uct/api/v2/uct_v2.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "804aa3ddb0badaf3e75bc94a03b7c4b9")
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !545, line: 688, size: 4096, elements: !547)
!547 = !{!548, !549, !550, !553, !554, !555, !556, !557, !558, !559, !560, !568, !569, !570, !578, !579}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "field_mask", scope: !546, file: !545, line: 693, baseType: !351, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "max_alloc", scope: !546, file: !545, line: 698, baseType: !351, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "max_reg", scope: !546, file: !545, line: 703, baseType: !551, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !552, line: 70, baseType: !344)
!552 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !546, file: !545, line: 709, baseType: !351, size: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "reg_mem_types", scope: !546, file: !545, line: 714, baseType: !351, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "cache_mem_types", scope: !546, file: !545, line: 719, baseType: !351, size: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "detect_mem_types", scope: !546, file: !545, line: 725, baseType: !351, size: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_mem_types", scope: !546, file: !545, line: 730, baseType: !351, size: 64, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "access_mem_types", scope: !546, file: !545, line: 735, baseType: !351, size: 64, offset: 512)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "dmabuf_mem_types", scope: !546, file: !545, line: 740, baseType: !351, size: 64, offset: 576)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "reg_cost", scope: !546, file: !545, line: 746, baseType: !561, size: 128, offset: 640)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_linear_func_t", file: !562, line: 24, baseType: !563)
!562 = !DIFile(filename: "ucs/datastruct/linear_func.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "e7c0ec7e78b0e5e3678ea6172235e328")
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !562, line: 21, size: 128, elements: !564)
!564 = !{!565, !567}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !563, file: !562, line: 22, baseType: !566, size: 64)
!566 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !563, file: !562, line: 23, baseType: !566, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "component_name", scope: !546, file: !545, line: 751, baseType: !9, size: 128, offset: 768)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_packed_size", scope: !546, file: !545, line: 756, baseType: !551, size: 64, offset: 896)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "local_cpus", scope: !546, file: !545, line: 761, baseType: !571, size: 1024, offset: 960)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_cpu_set_t", file: !572, line: 28, baseType: !573)
!572 = !DIFile(filename: "ucs/type/cpu_set.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "c2c762a5c7a8721b60757b564d788120")
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !572, line: 26, size: 1024, elements: !574)
!574 = !{!575}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ucs_bits", scope: !573, file: !572, line: 27, baseType: !576, size: 1024)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 1024, elements: !10)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_cpu_mask_t", file: !572, line: 14, baseType: !344)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "exported_mkey_packed_size", scope: !546, file: !545, line: 767, baseType: !551, size: 64, offset: 1984)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "global_id", scope: !546, file: !545, line: 774, baseType: !580, size: 2048, offset: 2048)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "pack_flags_mask", scope: !535, file: !501, line: 256, baseType: !139, size: 32, offset: 4352)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "num_mds", scope: !500, file: !501, line: 268, baseType: !585, size: 8, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_md_index_t", file: !170, line: 36, baseType: !528)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "reg_md_map", scope: !500, file: !501, line: 272, baseType: !587, size: 320, offset: 256)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 320, elements: !589)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_md_map_t", file: !170, line: 39, baseType: !351)
!589 = !{!590}
!590 = !DISubrange(count: 5)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "cache_md_map", scope: !500, file: !501, line: 275, baseType: !587, size: 320, offset: 576)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "dmabuf_reg_md_map", scope: !500, file: !501, line: 278, baseType: !588, size: 64, offset: 896)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type_detect_mds", scope: !500, file: !501, line: 281, baseType: !594, size: 40, offset: 960)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 40, elements: !589)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "num_mem_type_detect_mds", scope: !500, file: !501, line: 282, baseType: !585, size: 8, offset: 1000)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "dmabuf_mds", scope: !500, file: !501, line: 287, baseType: !594, size: 40, offset: 1008)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type_mask", scope: !500, file: !501, line: 289, baseType: !351, size: 64, offset: 1088)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "tl_rscs", scope: !500, file: !501, line: 291, baseType: !599, size: 64, offset: 1152)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_tl_resource_desc_t", file: !501, line: 208, baseType: !601)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_tl_resource_desc", file: !501, line: 201, size: 480, elements: !602)
!602 = !{!603, !620, !624, !625, !626}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "tl_rsc", scope: !601, file: !501, line: 202, baseType: !604, size: 416)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_tl_resource_desc_t", file: !153, line: 334, baseType: !605)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_tl_resource_desc", file: !153, line: 327, size: 416, elements: !606)
!606 = !{!607, !611, !615, !617}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "tl_name", scope: !605, file: !153, line: 328, baseType: !608, size: 80)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 10)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !605, file: !153, line: 329, baseType: !612, size: 256, offset: 80)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "dev_type", scope: !605, file: !153, line: 330, baseType: !616, size: 32, offset: 352)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_device_type_t", file: !153, line: 313, baseType: !152)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "sys_device", scope: !605, file: !153, line: 332, baseType: !618, size: 8, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_sys_device_t", file: !619, line: 47, baseType: !529)
!619 = !DIFile(filename: "ucs/sys/topo/base/topo.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "b8cb5c6a5a0b5b89ce20c0d863ab207f")
!620 = !DIDerivedType(tag: DW_TAG_member, name: "tl_name_csum", scope: !601, file: !501, line: 203, baseType: !621, size: 16, offset: 416)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !352, line: 25, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !354, line: 40, baseType: !623)
!623 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "md_index", scope: !601, file: !501, line: 204, baseType: !585, size: 8, offset: 432)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "dev_index", scope: !601, file: !501, line: 205, baseType: !528, size: 8, offset: 440)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !601, file: !501, line: 207, baseType: !529, size: 8, offset: 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "tl_bitmap", scope: !500, file: !501, line: 292, baseType: !628, size: 128, offset: 1216)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_tl_bitmap_t", file: !170, line: 88, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_bitmap_128_t", file: !630, line: 567, baseType: !631)
!630 = !DIFile(filename: "ucs/datastruct/bitmap.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "06a7f794d2a0e1b0fbcdd52ec34d62a5")
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !630, line: 567, size: 128, elements: !632)
!632 = !{!633}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !631, file: !630, line: 567, baseType: !634, size: 128)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 128, elements: !636)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_bitmap_word_t", file: !630, line: 21, baseType: !351)
!636 = !{!637}
!637 = !DISubrange(count: 2)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "num_tls", scope: !500, file: !501, line: 295, baseType: !528, size: 8, offset: 1344)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "proto_bitmap", scope: !500, file: !501, line: 296, baseType: !640, size: 64, offset: 1408)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_proto_id_mask_t", file: !320, line: 54, baseType: !351)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "rcache", scope: !500, file: !501, line: 299, baseType: !642, size: 64, offset: 1472)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_rcache_t", file: !644, line: 34, baseType: !645)
!644 = !DIFile(filename: "ucs/memory/rcache.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "06bf7169eb23f649f674ba38456d23c5")
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_rcache", file: !646, line: 65, size: 2560, elements: !647)
!646 = !DIFile(filename: "ucs/memory/rcache_int.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "c40c9ea5cb873a9c711cb38596ac7a7b")
!647 = !{!648, !715, !741, !773, !774, !846, !847, !848, !849, !850, !851, !856, !857, !858}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !645, file: !646, line: 66, baseType: !649, size: 640)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_rcache_params_t", file: !644, line: 36, baseType: !650)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_rcache_params", file: !644, line: 125, size: 640, elements: !651)
!651 = !{!652, !653, !654, !655, !656, !657, !710, !711, !712, !713, !714}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "region_struct_size", scope: !650, file: !644, line: 126, baseType: !551, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !650, file: !644, line: 129, baseType: !551, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "max_alignment", scope: !650, file: !644, line: 132, baseType: !551, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "ucm_events", scope: !650, file: !644, line: 133, baseType: !420, size: 32, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "ucm_event_priority", scope: !650, file: !644, line: 136, baseType: !420, size: 32, offset: 224)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !650, file: !644, line: 137, baseType: !658, size: 64, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_rcache_ops_t", file: !644, line: 35, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_rcache_ops", file: !644, line: 76, size: 192, elements: !662)
!662 = !{!663, !701, !705}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "mem_reg", scope: !661, file: !644, line: 96, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!345, !339, !642, !339, !667, !621}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_rcache_region_t", file: !644, line: 37, baseType: !669)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_rcache_region", file: !644, line: 147, size: 640, elements: !670)
!670 = !{!671, !679, !687, !688, !689, !691, !692, !693, !694, !695}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "super", scope: !669, file: !644, line: 148, baseType: !672, size: 128, align: 64)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgt_region_t", file: !673, line: 58, baseType: !674)
!673 = !DIFile(filename: "ucs/datastruct/pgtable.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "a88370ba33ea72e5a4a96f02d1bf5ee7")
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_pgt_region", file: !673, line: 100, size: 128, align: 64, elements: !675)
!675 = !{!676, !678}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !674, file: !673, line: 101, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgt_addr_t", file: !673, line: 54, baseType: !344)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !674, file: !673, line: 102, baseType: !677, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "lru_list", scope: !669, file: !644, line: 149, baseType: !680, size: 128, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_list_link_t", file: !681, line: 32, baseType: !682)
!681 = !DIFile(filename: "ucs/datastruct/list.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "560ed122fcbf30ccdb1a98bce3f12155")
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_list_link", file: !681, line: 29, size: 128, elements: !683)
!683 = !{!684, !686}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !682, file: !681, line: 30, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !682, file: !681, line: 31, baseType: !685, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_list", scope: !669, file: !644, line: 150, baseType: !680, size: 128, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "comp_list", scope: !669, file: !644, line: 151, baseType: !680, size: 128, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !669, file: !644, line: 152, baseType: !690, size: 32, offset: 512)
!690 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !361)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !669, file: !644, line: 154, baseType: !345, size: 8, offset: 544)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "prot", scope: !669, file: !644, line: 155, baseType: !529, size: 8, offset: 552)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !669, file: !644, line: 156, baseType: !529, size: 8, offset: 560)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "lru_flags", scope: !669, file: !644, line: 157, baseType: !529, size: 8, offset: 568)
!695 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !644, line: 158, baseType: !696, size: 64, offset: 576)
!696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !669, file: !644, line: 158, size: 64, elements: !697)
!697 = !{!698, !699}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !696, file: !644, line: 159, baseType: !351, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "pfn", scope: !696, file: !644, line: 160, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dereg", scope: !661, file: !644, line: 106, baseType: !702, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !339, !642, !667}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dump_region", scope: !661, file: !644, line: 119, baseType: !706, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !339, !642, !667, !709, !551}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !650, file: !644, line: 138, baseType: !339, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !650, file: !644, line: 140, baseType: !420, size: 32, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "max_regions", scope: !650, file: !644, line: 141, baseType: !344, size: 64, offset: 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !650, file: !644, line: 142, baseType: !551, size: 64, offset: 512)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "max_unreleased", scope: !650, file: !644, line: 143, baseType: !551, size: 64, offset: 576)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "pgt_lock", scope: !645, file: !646, line: 68, baseType: !716, size: 448, offset: 640)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_rwlock_t", file: !418, line: 91, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !418, line: 86, size: 448, elements: !718)
!718 = !{!719, !736, !740}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !717, file: !418, line: 88, baseType: !720, size: 448)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_rwlock_arch_t", file: !721, line: 23, size: 448, elements: !722)
!721 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h", directory: "", checksumkind: CSK_MD5, checksum: "2034038f4a99ff6cb7b9de3a3e8c2a8e")
!722 = !{!723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !734, !735}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "__readers", scope: !720, file: !721, line: 25, baseType: !139, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "__writers", scope: !720, file: !721, line: 26, baseType: !139, size: 32, offset: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "__wrphase_futex", scope: !720, file: !721, line: 27, baseType: !139, size: 32, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "__writers_futex", scope: !720, file: !721, line: 28, baseType: !139, size: 32, offset: 96)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !720, file: !721, line: 29, baseType: !139, size: 32, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !720, file: !721, line: 30, baseType: !139, size: 32, offset: 160)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "__cur_writer", scope: !720, file: !721, line: 32, baseType: !420, size: 32, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "__shared", scope: !720, file: !721, line: 33, baseType: !420, size: 32, offset: 224)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "__rwelision", scope: !720, file: !721, line: 34, baseType: !102, size: 8, offset: 256)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !720, file: !721, line: 39, baseType: !733, size: 56, offset: 264)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 56, elements: !85)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !720, file: !721, line: 42, baseType: !344, size: 64, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "__flags", scope: !720, file: !721, line: 45, baseType: !139, size: 32, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !717, file: !418, line: 89, baseType: !737, size: 448)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 56)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !717, file: !418, line: 90, baseType: !342, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "pgtable", scope: !645, file: !646, line: 70, baseType: !742, size: 384, offset: 1088)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgtable_t", file: !673, line: 57, baseType: !743)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_pgtable", file: !673, line: 133, size: 384, elements: !744)
!744 = !{!745, !750, !751, !752, !753, !754, !768}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !743, file: !673, line: 138, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgt_entry_t", file: !673, line: 59, baseType: !747)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_pgt_entry", file: !673, line: 116, size: 64, elements: !748)
!748 = !{!749}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !747, file: !673, line: 117, baseType: !677, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !743, file: !673, line: 139, baseType: !677, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !743, file: !673, line: 140, baseType: !677, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !743, file: !673, line: 141, baseType: !139, size: 32, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "num_regions", scope: !743, file: !673, line: 142, baseType: !139, size: 32, offset: 224)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "pgd_alloc_cb", scope: !743, file: !673, line: 143, baseType: !755, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgt_dir_alloc_callback_t", file: !673, line: 71, baseType: !756)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!759, !766}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgt_dir_t", file: !673, line: 60, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_pgt_dir", file: !673, line: 126, size: 1088, elements: !762)
!762 = !{!763, !765}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !761, file: !673, line: 127, baseType: !764, size: 1024)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 1024, elements: !10)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !761, file: !673, line: 128, baseType: !139, size: 32, offset: 1024)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !742)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "pgd_release_cb", scope: !743, file: !673, line: 144, baseType: !769, size: 64, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_pgt_dir_release_callback_t", file: !673, line: 81, baseType: !770)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !766, !759}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !645, file: !646, line: 73, baseType: !413, size: 32, offset: 1472)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !645, file: !646, line: 80, baseType: !775, size: 128, offset: 1536)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_mpool_t", file: !776, line: 22, baseType: !777)
!776 = !DIFile(filename: "ucs/datastruct/mpool.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "2baffe91ff5201fdab652b49084a919a")
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_mpool", file: !776, line: 66, size: 128, elements: !778)
!778 = !{!779, !787}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !777, file: !776, line: 67, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_mpool_elem_t", file: !776, line: 21, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "ucs_mpool_elem", file: !776, line: 47, size: 64, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !782, file: !776, line: 48, baseType: !780, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "mpool", scope: !782, file: !776, line: 49, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !777, file: !776, line: 68, baseType: !788, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_mpool_data_t", file: !776, line: 23, baseType: !790)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_mpool_data", file: !776, line: 75, size: 704, elements: !791)
!791 = !{!792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !809, !845}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "elem_size", scope: !790, file: !776, line: 76, baseType: !551, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !790, file: !776, line: 77, baseType: !551, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "align_offset", scope: !790, file: !776, line: 78, baseType: !551, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "grow_factor", scope: !790, file: !776, line: 79, baseType: !566, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "max_chunk_size", scope: !790, file: !776, line: 80, baseType: !551, size: 64, offset: 256)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "elems_per_chunk", scope: !790, file: !776, line: 82, baseType: !139, size: 32, offset: 320)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "quota", scope: !790, file: !776, line: 83, baseType: !139, size: 32, offset: 352)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_safe", scope: !790, file: !776, line: 84, baseType: !420, size: 32, offset: 384)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !790, file: !776, line: 85, baseType: !780, size: 64, offset: 448)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !790, file: !776, line: 86, baseType: !802, size: 64, offset: 512)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_mpool_chunk_t", file: !776, line: 20, baseType: !804)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_mpool_chunk", file: !776, line: 56, size: 192, elements: !805)
!805 = !{!806, !807, !808}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !804, file: !776, line: 57, baseType: !802, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !804, file: !776, line: 58, baseType: !339, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "num_elems", scope: !804, file: !776, line: 59, baseType: !139, size: 32, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !790, file: !776, line: 87, baseType: !810, size: 64, offset: 576)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_mpool_ops_t", file: !776, line: 24, baseType: !813)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_mpool_ops", file: !776, line: 95, size: 320, elements: !814)
!814 = !{!815, !820, !824, !828, !829}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_alloc", scope: !813, file: !776, line: 107, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!345, !786, !819, !338}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_release", scope: !813, file: !776, line: 115, baseType: !821, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !786, !339}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "obj_init", scope: !813, file: !776, line: 126, baseType: !825, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !786, !339, !339}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "obj_cleanup", scope: !813, file: !776, line: 135, baseType: !821, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "obj_str", scope: !813, file: !776, line: 145, baseType: !830, size: 64, offset: 256)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !786, !339, !833}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_string_buffer_t", file: !835, line: 94, baseType: !836)
!835 = !DIFile(filename: "ucs/datastruct/string_buffer.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "42bc35b3b5ce12d3933ffbf77d160184")
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_string_buffer", file: !835, line: 92, size: 192, elements: !837)
!837 = !{!838}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !836, file: !835, line: 93, baseType: !839, size: 192)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_array_string_buffer_t", file: !835, line: 21, baseType: !840)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !835, line: 21, size: 192, elements: !841)
!841 = !{!842, !843, !844}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !840, file: !835, line: 21, baseType: !709, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !840, file: !835, line: 21, baseType: !551, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !840, file: !835, line: 21, baseType: !551, size: 64, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !790, file: !776, line: 88, baseType: !709, size: 64, offset: 640)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "inv_q", scope: !645, file: !646, line: 85, baseType: !482, size: 128, offset: 1664)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "gc_list", scope: !645, file: !646, line: 87, baseType: !680, size: 128, offset: 1792)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "num_regions", scope: !645, file: !646, line: 90, baseType: !344, size: 64, offset: 1920)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !645, file: !646, line: 91, baseType: !551, size: 64, offset: 1984)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "unreleased_size", scope: !645, file: !646, line: 92, baseType: !551, size: 64, offset: 2048)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !645, file: !646, line: 100, baseType: !852, size: 192, offset: 2112)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !645, file: !646, line: 94, size: 192, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !852, file: !646, line: 95, baseType: !413, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !852, file: !646, line: 96, baseType: !680, size: 128, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !645, file: !646, line: 102, baseType: !709, size: 64, offset: 2304)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !645, file: !646, line: 106, baseType: !680, size: 128, offset: 2368)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "distribution", scope: !645, file: !646, line: 107, baseType: !859, size: 64, offset: 2496)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_rcache_distribution_t", file: !646, line: 63, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_rcache_distribution", file: !646, line: 60, size: 128, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !861, file: !646, line: 61, baseType: !551, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "total_size", scope: !861, file: !646, line: 62, baseType: !551, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !500, file: !501, line: 350, baseType: !866, size: 5248, offset: 1536)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !500, file: !501, line: 301, size: 5248, elements: !867)
!867 = !{!868, !869, !870, !871, !872, !883, !890, !891, !892, !896, !897, !961, !962, !963}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !866, file: !501, line: 304, baseType: !351, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "tag_sender_mask", scope: !866, file: !501, line: 305, baseType: !351, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "est_num_eps", scope: !866, file: !501, line: 308, baseType: !420, size: 32, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "est_num_ppn", scope: !866, file: !501, line: 311, baseType: !420, size: 32, offset: 160)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !866, file: !501, line: 317, baseType: !873, size: 192, offset: 192)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !866, file: !501, line: 313, size: 192, elements: !874)
!874 = !{!875, !876, !881}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !873, file: !501, line: 314, baseType: !551, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !873, file: !501, line: 315, baseType: !877, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_request_init_callback_t", file: !138, line: 289, baseType: !878)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !339}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !873, file: !501, line: 316, baseType: !882, size: 64, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_request_cleanup_callback_t", file: !138, line: 301, baseType: !878)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_methods", scope: !866, file: !501, line: 326, baseType: !884, size: 64, offset: 384)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !866, file: !501, line: 320, size: 160, elements: !886)
!886 = !{!887, !889}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !885, file: !501, line: 322, baseType: !888, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_alloc_method_t", file: !153, line: 481, baseType: !160)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "cmpt_name", scope: !885, file: !501, line: 325, baseType: !9, size: 128, offset: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "num_alloc_methods", scope: !866, file: !501, line: 327, baseType: !139, size: 32, offset: 448)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "cm_cmpts_bitmap", scope: !866, file: !501, line: 330, baseType: !628, size: 128, offset: 512)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "cm_cmpt_idxs", scope: !866, file: !501, line: 334, baseType: !893, size: 1024, offset: 640)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 1024, elements: !894)
!894 = !{!895}
!895 = !DISubrange(count: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "num_cm_cmpts", scope: !866, file: !501, line: 335, baseType: !528, size: 8, offset: 1664)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ext", scope: !866, file: !501, line: 338, baseType: !898, size: 3264, offset: 1728)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_context_config_t", file: !501, line: 160, baseType: !899)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_context_config", file: !501, line: 42, size: 3264, elements: !900)
!900 = !{!901, !902, !903, !904, !905, !906, !907, !908, !909, !911, !912, !913, !914, !916, !917, !919, !920, !921, !922, !923, !924, !925, !926, !927, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !940, !941, !942, !943, !944, !945, !946, !947, !949, !950, !951, !952, !953, !955, !956, !957, !958, !959, !960}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "bcopy_thresh", scope: !899, file: !501, line: 44, baseType: !551, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_thresh", scope: !899, file: !501, line: 46, baseType: !551, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_send_nbr_thresh", scope: !899, file: !501, line: 49, baseType: !551, size: 64, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_thresh_fallback", scope: !899, file: !501, line: 52, baseType: !551, size: 64, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_perf_diff", scope: !899, file: !501, line: 55, baseType: !566, size: 64, offset: 256)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "multi_lane_max_ratio", scope: !899, file: !501, line: 58, baseType: !566, size: 64, offset: 320)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "multi_path_ratio", scope: !899, file: !501, line: 60, baseType: !566, size: 64, offset: 384)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "zcopy_thresh", scope: !899, file: !501, line: 62, baseType: !551, size: 64, offset: 448)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_mode", scope: !899, file: !501, line: 64, baseType: !910, size: 32, offset: 512)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_rndv_mode_t", file: !170, line: 236, baseType: !169)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_ptr_seg_size", scope: !899, file: !501, line: 66, baseType: !551, size: 64, offset: 576)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "bcopy_bw", scope: !899, file: !501, line: 68, baseType: !566, size: 64, offset: 640)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "seg_size", scope: !899, file: !501, line: 70, baseType: !551, size: 64, offset: 704)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_frag_size", scope: !899, file: !501, line: 72, baseType: !915, size: 320, offset: 768)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 320, elements: !589)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_num_frags", scope: !899, file: !501, line: 74, baseType: !915, size: 320, offset: 1088)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_frag_mem_type", scope: !899, file: !501, line: 76, baseType: !918, size: 32, offset: 1408)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_memory_type_t", file: !181, line: 45, baseType: !180)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_pipeline_send_thresh", scope: !899, file: !501, line: 78, baseType: !551, size: 64, offset: 1472)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_shm_ppln_enable", scope: !899, file: !501, line: 80, baseType: !420, size: 32, offset: 1536)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "tm_thresh", scope: !899, file: !501, line: 83, baseType: !551, size: 64, offset: 1600)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "tm_force_thresh", scope: !899, file: !501, line: 85, baseType: !551, size: 64, offset: 1664)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "tm_max_bb_size", scope: !899, file: !501, line: 88, baseType: !551, size: 64, offset: 1728)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sw_rndv", scope: !899, file: !501, line: 90, baseType: !420, size: 32, offset: 1792)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "address_debug_info", scope: !899, file: !501, line: 92, baseType: !420, size: 32, offset: 1824)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "max_worker_address_name", scope: !899, file: !501, line: 94, baseType: !139, size: 32, offset: 1856)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_mode", scope: !899, file: !501, line: 96, baseType: !928, size: 32, offset: 1888)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_atomic_mode_t", file: !170, line: 210, baseType: !190)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "use_mt_mutex", scope: !899, file: !501, line: 98, baseType: !420, size: 32, offset: 1920)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "adaptive_progress", scope: !899, file: !501, line: 100, baseType: !420, size: 32, offset: 1952)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "max_eager_lanes", scope: !899, file: !501, line: 102, baseType: !139, size: 32, offset: 1984)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "max_rndv_lanes", scope: !899, file: !501, line: 104, baseType: !139, size: 32, offset: 2016)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "max_rma_lanes", scope: !899, file: !501, line: 106, baseType: !139, size: 32, offset: 2048)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "min_rndv_chunk_size", scope: !899, file: !501, line: 109, baseType: !551, size: 64, offset: 2112)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_num_eps", scope: !899, file: !501, line: 111, baseType: !551, size: 64, offset: 2176)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "estimated_num_ppn", scope: !899, file: !501, line: 113, baseType: !551, size: 64, offset: 2240)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "flush_worker_eps", scope: !899, file: !501, line: 115, baseType: !420, size: 32, offset: 2304)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "fence_mode", scope: !899, file: !501, line: 117, baseType: !939, size: 32, offset: 2336)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_fence_mode_t", file: !170, line: 221, baseType: !196)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "unified_mode", scope: !899, file: !501, line: 119, baseType: !420, size: 32, offset: 2368)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "cm_use_all_devices", scope: !899, file: !501, line: 122, baseType: !420, size: 32, offset: 2400)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "listener_backlog", scope: !899, file: !501, line: 124, baseType: !551, size: 64, offset: 2432)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "proto_enable", scope: !899, file: !501, line: 126, baseType: !420, size: 32, offset: 2496)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "proto_request_reset", scope: !899, file: !501, line: 128, baseType: !420, size: 32, offset: 2528)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_interval", scope: !899, file: !501, line: 130, baseType: !495, size: 64, offset: 2560)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_num_eps", scope: !899, file: !501, line: 133, baseType: !139, size: 32, offset: 2624)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "resolve_remote_ep_id", scope: !899, file: !501, line: 136, baseType: !948, size: 32, offset: 2656)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_on_off_auto_value_t", file: !144, line: 70, baseType: !202)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "proto_indirect_id", scope: !899, file: !501, line: 138, baseType: !948, size: 32, offset: 2688)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "reg_whole_alloc_bitmap", scope: !899, file: !501, line: 140, baseType: !139, size: 32, offset: 2720)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_put_force_flush", scope: !899, file: !501, line: 142, baseType: !420, size: 32, offset: 2752)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_memtype_direct_size", scope: !899, file: !501, line: 144, baseType: !551, size: 64, offset: 2816)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "sa_client_min_hdr_version", scope: !899, file: !501, line: 146, baseType: !954, size: 32, offset: 2880)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_object_version_t", file: !170, line: 246, baseType: !208)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_mpool_max_md", scope: !899, file: !501, line: 149, baseType: !420, size: 32, offset: 2912)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "worker_addr_version", scope: !899, file: !501, line: 151, baseType: !954, size: 32, offset: 2944)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_align_thresh", scope: !899, file: !501, line: 153, baseType: !551, size: 64, offset: 3008)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "proto_info", scope: !899, file: !501, line: 155, baseType: !420, size: 32, offset: 3072)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "select_distance_md", scope: !899, file: !501, line: 157, baseType: !709, size: 64, offset: 3136)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "proto_info_dir", scope: !899, file: !501, line: 159, baseType: !709, size: 64, offset: 3200)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "env_prefix", scope: !866, file: !501, line: 341, baseType: !709, size: 64, offset: 4992)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "worker_strong_fence", scope: !866, file: !501, line: 344, baseType: !139, size: 32, offset: 5056)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "am_mpools", scope: !866, file: !501, line: 349, baseType: !964, size: 128, offset: 5120)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !866, file: !501, line: 346, size: 128, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !964, file: !501, line: 347, baseType: !139, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !964, file: !501, line: 348, baseType: !819, size: 64, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "mt_lock", scope: !500, file: !501, line: 353, baseType: !969, size: 384, offset: 6784)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_mt_lock_t", file: !214, line: 40, baseType: !970)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_mt_lock", file: !214, line: 32, size: 384, elements: !971)
!971 = !{!972, !974}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "mt_type", scope: !970, file: !214, line: 33, baseType: !973, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_mt_type_t", file: !214, line: 26, baseType: !213)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !970, file: !214, line: 39, baseType: !975, size: 320, offset: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !970, file: !214, line: 34, size: 320, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mt_spinlock", scope: !975, file: !214, line: 37, baseType: !408, size: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mt_mutex", scope: !975, file: !214, line: 38, baseType: !429, size: 320)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !500, file: !501, line: 355, baseType: !612, size: 256, offset: 7168)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "cached_key_list", scope: !500, file: !501, line: 358, baseType: !680, size: 128, offset: 7424)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !386, file: !387, line: 272, baseType: !351, size: 64, offset: 768)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "client_id", scope: !386, file: !387, line: 273, baseType: !351, size: 64, offset: 832)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "uct", scope: !386, file: !387, line: 274, baseType: !984, size: 64, offset: 896)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_worker_h", file: !510, line: 95, baseType: !985)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_worker", file: !987, line: 382, size: 2112, elements: !988)
!987 = !DIFile(filename: "uct/api/tl.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "bef986acadba067c9ea90f0f2da8fd99")
!988 = !{!989}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "progress_q", scope: !986, file: !987, line: 383, baseType: !990, size: 2112)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_callbackq_t", file: !991, line: 35, baseType: !992)
!991 = !DIFile(filename: "ucs/datastruct/callbackq.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "13d215dba2774a4ee7e64554b00c0267")
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_callbackq", file: !991, line: 88, size: 2112, elements: !993)
!993 = !{!994, !1009}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "fast_elems", scope: !992, file: !991, line: 93, baseType: !995, size: 1536)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !996, size: 1536, elements: !1007)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_callbackq_elem_t", file: !991, line: 36, baseType: !997)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_callbackq_elem", file: !991, line: 77, size: 192, elements: !998)
!998 = !{!999, !1004, !1005, !1006}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !997, file: !991, line: 78, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_callback_t", file: !991, line: 48, baseType: !1001)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!139, !339}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !997, file: !991, line: 79, baseType: !339, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !997, file: !991, line: 80, baseType: !139, size: 32, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !997, file: !991, line: 81, baseType: !420, size: 32, offset: 160)
!1007 = !{!1008}
!1008 = !DISubrange(count: 8)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !992, file: !991, line: 99, baseType: !1010, size: 576, offset: 1536)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 576, elements: !1011)
!1011 = !{!1012}
!1012 = !DISubrange(count: 72)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "req_mp", scope: !386, file: !387, line: 275, baseType: !775, size: 128, offset: 960)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_mp", scope: !386, file: !387, line: 276, baseType: !775, size: 128, offset: 1088)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_tls", scope: !386, file: !387, line: 277, baseType: !628, size: 128, offset: 1216)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "inprogress", scope: !386, file: !387, line: 279, baseType: !420, size: 32, offset: 1344)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !386, file: !387, line: 281, baseType: !612, size: 256, offset: 1376)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "address_name", scope: !386, file: !387, line: 283, baseType: !612, size: 256, offset: 1632)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "flush_ops_count", scope: !386, file: !387, line: 285, baseType: !139, size: 32, offset: 1888)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "event_fd", scope: !386, file: !387, line: 287, baseType: !420, size: 32, offset: 1920)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "event_set", scope: !386, file: !387, line: 288, baseType: !1022, size: 64, offset: 1984)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_sys_event_set_t", file: !1024, line: 20, baseType: !1025)
!1024 = !DIFile(filename: "ucs/sys/event_set.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "6a38670269bf5b6062c11d0c966eecae")
!1025 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_sys_event_set", file: !1024, line: 20, flags: DIFlagFwdDecl)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "eventfd", scope: !386, file: !387, line: 289, baseType: !420, size: 32, offset: 2048)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "uct_events", scope: !386, file: !387, line: 290, baseType: !139, size: 32, offset: 2080)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "arm_ifaces", scope: !386, file: !387, line: 291, baseType: !680, size: 128, offset: 2112)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !386, file: !387, line: 293, baseType: !339, size: 64, offset: 2240)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ep_alloc", scope: !386, file: !387, line: 294, baseType: !1031, size: 320, offset: 2304)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_strided_alloc_t", file: !1032, line: 81, baseType: !1033)
!1032 = !DIFile(filename: "ucs/datastruct/strided_alloc.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "5d4876be3265327ba19da7d58c89fa3a")
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_strided_alloc", file: !1032, line: 75, size: 320, elements: !1034)
!1034 = !{!1035, !1039, !1040, !1041, !1042}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1033, file: !1032, line: 76, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_strided_alloc_elem_t", file: !1032, line: 67, baseType: !1038)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_strided_alloc_elem", file: !1032, line: 67, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !1033, file: !1032, line: 77, baseType: !482, size: 128, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "elem_size", scope: !1033, file: !1032, line: 78, baseType: !551, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "stride_count", scope: !1033, file: !1032, line: 79, baseType: !139, size: 32, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_count", scope: !1033, file: !1032, line: 80, baseType: !139, size: 32, offset: 288)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "stream_ready_eps", scope: !386, file: !387, line: 295, baseType: !680, size: 128, offset: 2624)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "num_all_eps", scope: !386, file: !387, line: 296, baseType: !139, size: 32, offset: 2752)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "all_eps", scope: !386, file: !387, line: 298, baseType: !680, size: 128, offset: 2816)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "internal_eps", scope: !386, file: !387, line: 300, baseType: !680, size: 128, offset: 2944)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "conn_match_ctx", scope: !386, file: !387, line: 301, baseType: !1048, size: 704, offset: 3072)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_conn_match_ctx_t", file: !1049, line: 58, baseType: !1050)
!1049 = !DIFile(filename: "ucs/datastruct/conn_match.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "cade13d47fabd64af4f8d427191d5c0f")
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_conn_match_ctx", file: !1049, line: 132, size: 704, elements: !1051)
!1051 = !{!1052, !1071, !1073, !1074}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1050, file: !1049, line: 133, baseType: !1053, size: 320)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_ucs_conn_match_t", file: !1049, line: 126, baseType: !1054)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kh_ucs_conn_match_s", file: !1049, line: 126, size: 320, elements: !1055)
!1055 = !{!1056, !1060, !1061, !1062, !1063, !1065, !1070}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !1054, file: !1049, line: 126, baseType: !1057, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint_t", file: !1058, line: 173, baseType: !1059)
!1058 = !DIFile(filename: "ucs/datastruct/khash.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "4f19cb5628fe4fe4afa8a5753fb799da")
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint32_t", file: !1058, line: 146, baseType: !139)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1054, file: !1049, line: 126, baseType: !1057, size: 32, offset: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !1054, file: !1049, line: 126, baseType: !1057, size: 32, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !1054, file: !1049, line: 126, baseType: !1057, size: 32, offset: 96)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1054, file: !1049, line: 126, baseType: !1064, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1054, file: !1049, line: 126, baseType: !1066, size: 64, offset: 192)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_conn_match_peer_t", file: !1049, line: 123, baseType: !1069)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_conn_match_peer", file: !1049, line: 123, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !1054, file: !1049, line: 126, baseType: !709, size: 64, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "max_conn_sn", scope: !1050, file: !1049, line: 134, baseType: !1072, size: 64, offset: 320)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_conn_sn_t", file: !1049, line: 28, baseType: !351)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !1050, file: !1049, line: 136, baseType: !551, size: 64, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1050, file: !1049, line: 138, baseType: !1075, size: 256, offset: 448)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_conn_match_ops_t", file: !1049, line: 116, baseType: !1076)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_conn_match_ops", file: !1049, line: 111, size: 256, elements: !1077)
!1077 = !{!1078, !1096, !1101, !1109}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "get_address", scope: !1076, file: !1049, line: 112, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_conn_match_get_address_t", file: !1049, line: 69, baseType: !1080)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!1083, !1085}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1087)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_conn_match_elem_t", file: !1049, line: 55, baseType: !1088)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_conn_match_elem", file: !1049, line: 52, size: 128, elements: !1089)
!1089 = !{!1090}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1088, file: !1049, line: 53, baseType: !1091, size: 128)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_hlist_link_t", file: !1092, line: 32, baseType: !1093)
!1092 = !DIFile(filename: "ucs/datastruct/hlist.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "bd9b5de63bce6f13ed1530d78caef72b")
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_hlist_link", file: !1092, line: 30, size: 128, elements: !1094)
!1094 = !{!1095}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1093, file: !1092, line: 31, baseType: !680, size: 128)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "get_conn_sn", scope: !1076, file: !1049, line: 113, baseType: !1097, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_conn_match_get_conn_sn_t", file: !1049, line: 80, baseType: !1098)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!1072, !1085}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "address_str", scope: !1076, file: !1049, line: 114, baseType: !1102, size: 64, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_conn_match_address_str_t", file: !1049, line: 94, baseType: !1103)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!1106, !1107, !1083, !709, !551}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1048)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "purge_cb", scope: !1076, file: !1049, line: 115, baseType: !1110, size: 64, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_conn_match_purge_cb_t", file: !1049, line: 104, baseType: !1111)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{null, !1114, !1115}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "ifaces", scope: !386, file: !387, line: 302, baseType: !1117, size: 64, offset: 3776)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_worker_iface_t", file: !170, line: 72, baseType: !1120)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_worker_iface", file: !387, line: 233, size: 4800, elements: !1121)
!1121 = !{!1122, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "iface", scope: !1120, file: !387, line: 234, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iface_h", file: !510, line: 79, baseType: !1124)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_iface", file: !987, line: 390, size: 3200, elements: !1126)
!1126 = !{!1127}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1125, file: !987, line: 391, baseType: !1128, size: 3200)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iface_ops_t", file: !987, line: 375, baseType: !1129)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_iface_ops", file: !987, line: 295, size: 3200, elements: !1130)
!1130 = !{!1131, !1142, !1153, !1180, !1185, !1194, !1196, !1201, !1206, !1211, !1216, !1222, !1228, !1233, !1238, !1243, !1248, !1254, !1259, !1264, !1270, !1275, !1280, !1302, !1307, !1322, !1331, !1336, !1341, !1343, !1463, !1476, !1478, !1483, !1488, !1496, !1503, !1508, !1510, !1515, !1520, !1525, !1527, !1532, !1538, !1540, !1545, !1643, !1649, !1655}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ep_put_short", scope: !1129, file: !987, line: 298, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_put_short_func_t", file: !987, line: 28, baseType: !1133)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!345, !1136, !1083, !139, !351, !1141}
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_h", file: !510, line: 83, baseType: !1137)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_ep", file: !987, line: 398, size: 64, elements: !1139)
!1139 = !{!1140}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "iface", scope: !1138, file: !987, line: 399, baseType: !1123, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_rkey_t", file: !510, line: 85, baseType: !343)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ep_put_bcopy", scope: !1129, file: !987, line: 299, baseType: !1143, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_put_bcopy_func_t", file: !987, line: 34, baseType: !1144)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!1147, !1136, !1149, !339, !351, !1141}
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !464, line: 108, baseType: !1148)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !354, line: 194, baseType: !342)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_pack_callback_t", file: !510, line: 598, baseType: !1150)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!551, !339, !339}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "ep_put_zcopy", scope: !1129, file: !987, line: 300, baseType: !1154, size: 64, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_put_zcopy_func_t", file: !987, line: 40, baseType: !1155)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!345, !1136, !1158, !551, !351, !1141, !1169}
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1160)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iov_t", file: !510, line: 154, baseType: !1161)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_iov", file: !510, line: 147, size: 320, elements: !1162)
!1162 = !{!1163, !1164, !1165, !1167, !1168}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1161, file: !510, line: 148, baseType: !339, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1161, file: !510, line: 149, baseType: !551, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "memh", scope: !1161, file: !510, line: 150, baseType: !1166, size: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_mem_h", file: !510, line: 84, baseType: !339)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1161, file: !510, line: 151, baseType: !551, size: 64, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1161, file: !510, line: 153, baseType: !139, size: 32, offset: 256)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_completion_t", file: !510, line: 93, baseType: !1171)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_completion", file: !153, line: 1705, size: 128, elements: !1172)
!1172 = !{!1173, !1178, !1179}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1171, file: !153, line: 1706, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_completion_callback_t", file: !510, line: 536, baseType: !1175)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !1169}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1171, file: !153, line: 1707, baseType: !420, size: 32, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1171, file: !153, line: 1708, baseType: !345, size: 8, offset: 96)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ep_get_short", scope: !1129, file: !987, line: 303, baseType: !1181, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_get_short_func_t", file: !987, line: 49, baseType: !1182)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!345, !1136, !339, !139, !351, !1141}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ep_get_bcopy", scope: !1129, file: !987, line: 304, baseType: !1186, size: 64, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_get_bcopy_func_t", file: !987, line: 55, baseType: !1187)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!345, !1136, !1190, !339, !551, !351, !1141, !1169}
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_unpack_callback_t", file: !510, line: 611, baseType: !1191)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !339, !1083, !551}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ep_get_zcopy", scope: !1129, file: !987, line: 305, baseType: !1195, size: 64, offset: 320)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_get_zcopy_func_t", file: !987, line: 63, baseType: !1155)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ep_am_short", scope: !1129, file: !987, line: 308, baseType: !1197, size: 64, offset: 384)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_am_short_func_t", file: !987, line: 72, baseType: !1198)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!345, !1136, !529, !351, !1083, !139}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ep_am_short_iov", scope: !1129, file: !987, line: 309, baseType: !1202, size: 64, offset: 448)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_am_short_iov_func_t", file: !987, line: 78, baseType: !1203)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!345, !1136, !529, !1158, !551}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ep_am_bcopy", scope: !1129, file: !987, line: 310, baseType: !1207, size: 64, offset: 512)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_am_bcopy_func_t", file: !987, line: 82, baseType: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!1147, !1136, !529, !1149, !339, !139}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "ep_am_zcopy", scope: !1129, file: !987, line: 311, baseType: !1212, size: 64, offset: 576)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_am_zcopy_func_t", file: !987, line: 88, baseType: !1213)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!345, !1136, !529, !1083, !139, !1158, !551, !139, !1169}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ep_atomic_cswap64", scope: !1129, file: !987, line: 314, baseType: !1217, size: 64, offset: 640)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_atomic_cswap64_func_t", file: !987, line: 99, baseType: !1218)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!345, !1136, !351, !351, !351, !1141, !1221, !1169}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "ep_atomic_cswap32", scope: !1129, file: !987, line: 315, baseType: !1223, size: 64, offset: 704)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_atomic_cswap32_func_t", file: !987, line: 107, baseType: !1224)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!345, !1136, !361, !361, !351, !1141, !1227, !1169}
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ep_atomic32_post", scope: !1129, file: !987, line: 316, baseType: !1229, size: 64, offset: 768)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_atomic32_post_func_t", file: !987, line: 115, baseType: !1230)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!345, !1136, !139, !361, !351, !1141}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ep_atomic64_post", scope: !1129, file: !987, line: 317, baseType: !1234, size: 64, offset: 832)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_atomic64_post_func_t", file: !987, line: 121, baseType: !1235)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!345, !1136, !139, !351, !351, !1141}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ep_atomic32_fetch", scope: !1129, file: !987, line: 318, baseType: !1239, size: 64, offset: 896)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_atomic32_fetch_func_t", file: !987, line: 127, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!345, !1136, !139, !361, !1227, !351, !1141, !1169}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ep_atomic64_fetch", scope: !1129, file: !987, line: 319, baseType: !1244, size: 64, offset: 960)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_atomic64_fetch_func_t", file: !987, line: 135, baseType: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!345, !1136, !139, !351, !1221, !351, !1141, !1169}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ep_tag_eager_short", scope: !1129, file: !987, line: 322, baseType: !1249, size: 64, offset: 1024)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_tag_eager_short_func_t", file: !987, line: 145, baseType: !1250)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!345, !1136, !1253, !1083, !551}
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_tag_t", file: !510, line: 110, baseType: !351)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ep_tag_eager_bcopy", scope: !1129, file: !987, line: 323, baseType: !1255, size: 64, offset: 1088)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_tag_eager_bcopy_func_t", file: !987, line: 150, baseType: !1256)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!1147, !1136, !1253, !351, !1149, !339, !139}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ep_tag_eager_zcopy", scope: !1129, file: !987, line: 324, baseType: !1260, size: 64, offset: 1152)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_tag_eager_zcopy_func_t", file: !987, line: 157, baseType: !1261)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!345, !1136, !1253, !351, !1158, !551, !139, !1169}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "ep_tag_rndv_zcopy", scope: !1129, file: !987, line: 325, baseType: !1265, size: 64, offset: 1216)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_tag_rndv_zcopy_func_t", file: !987, line: 165, baseType: !1266)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!1269, !1136, !1253, !1083, !139, !1158, !551, !139, !1169}
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_status_ptr_t", file: !101, line: 106, baseType: !339)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "ep_tag_rndv_cancel", scope: !1129, file: !987, line: 326, baseType: !1271, size: 64, offset: 1280)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_tag_rndv_cancel_func_t", file: !987, line: 174, baseType: !1272)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!345, !1136, !339}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ep_tag_rndv_request", scope: !1129, file: !987, line: 327, baseType: !1276, size: 64, offset: 1344)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_tag_rndv_request_func_t", file: !987, line: 176, baseType: !1277)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!345, !1136, !1253, !1083, !139, !139}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "iface_tag_recv_zcopy", scope: !1129, file: !987, line: 330, baseType: !1281, size: 64, offset: 1408)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iface_tag_recv_zcopy_func_t", file: !987, line: 184, baseType: !1282)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!345, !1123, !1253, !1253, !1158, !551, !1285}
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_tag_context_t", file: !510, line: 109, baseType: !1287)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_tag_context", file: !153, line: 1734, size: 448, elements: !1288)
!1288 = !{!1289, !1293, !1297, !1301}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "tag_consumed_cb", scope: !1287, file: !153, line: 1741, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{null, !1285}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "completed_cb", scope: !1287, file: !153, line: 1762, baseType: !1294, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{null, !1285, !1253, !351, !551, !339, !345}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_cb", scope: !1287, file: !153, line: 1777, baseType: !1298, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{null, !1285, !1253, !1083, !139, !345, !139}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1287, file: !153, line: 1781, baseType: !612, size: 256, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "iface_tag_recv_cancel", scope: !1129, file: !987, line: 331, baseType: !1303, size: 64, offset: 1472)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iface_tag_recv_cancel_func_t", file: !987, line: 191, baseType: !1304)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!345, !1123, !1285, !420}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ep_pending_add", scope: !1129, file: !987, line: 334, baseType: !1308, size: 64, offset: 1536)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_pending_add_func_t", file: !987, line: 197, baseType: !1309)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!345, !1136, !1312, !139}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_pending_req_t", file: !510, line: 94, baseType: !1314)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_pending_req", file: !153, line: 1721, size: 384, elements: !1315)
!1315 = !{!1316, !1321}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1314, file: !153, line: 1722, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_pending_callback_t", file: !510, line: 553, baseType: !1318)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!345, !1312}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1314, file: !153, line: 1723, baseType: !453, size: 320, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ep_pending_purge", scope: !1129, file: !987, line: 335, baseType: !1323, size: 64, offset: 1600)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_pending_purge_func_t", file: !987, line: 201, baseType: !1324)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{null, !1136, !1327, !339}
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_pending_purge_callback_t", file: !510, line: 586, baseType: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{null, !1312, !339}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ep_flush", scope: !1129, file: !987, line: 338, baseType: !1332, size: 64, offset: 1664)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_flush_func_t", file: !987, line: 207, baseType: !1333)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!345, !1136, !139, !1169}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ep_fence", scope: !1129, file: !987, line: 339, baseType: !1337, size: 64, offset: 1728)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_fence_func_t", file: !987, line: 211, baseType: !1338)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!345, !1136, !139}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ep_check", scope: !1129, file: !987, line: 340, baseType: !1342, size: 64, offset: 1792)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_check_func_t", file: !987, line: 213, baseType: !1333)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ep_create", scope: !1129, file: !987, line: 343, baseType: !1344, size: 64, offset: 1856)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_create_func_t", file: !987, line: 219, baseType: !1345)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!345, !1348, !1462}
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1350)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_params_t", file: !510, line: 101, baseType: !1351)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_ep_params", file: !153, line: 1272, size: 1152, elements: !1352)
!1352 = !{!1353, !1354, !1355, !1356, !1361, !1366, !1385, !1386, !1398, !1403, !1405, !1428, !1440, !1445, !1446, !1459, !1460, !1461}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "field_mask", scope: !1351, file: !153, line: 1278, baseType: !351, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "iface", scope: !1351, file: !153, line: 1284, baseType: !1123, size: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !1351, file: !153, line: 1289, baseType: !339, size: 64, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dev_addr", scope: !1351, file: !153, line: 1296, baseType: !1357, size: 64, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1359)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_device_addr_t", file: !510, line: 98, baseType: !1360)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "uct_device_addr", file: !510, line: 98, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "iface_addr", scope: !1351, file: !153, line: 1303, baseType: !1362, size: 64, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1364)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iface_addr_t", file: !510, line: 99, baseType: !1365)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "uct_iface_addr", file: !510, line: 99, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr", scope: !1351, file: !153, line: 1312, baseType: !1367, size: 64, offset: 320)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1369)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_sock_addr_t", file: !144, line: 140, baseType: !1370)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_sock_addr", file: !144, line: 137, size: 128, elements: !1371)
!1371 = !{!1372, !1382}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1370, file: !144, line: 138, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1375)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !1376, line: 180, size: 128, elements: !1377)
!1376 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!1377 = !{!1378, !1381}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !1375, file: !1376, line: 182, baseType: !1379, size: 16)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !1380, line: 28, baseType: !623)
!1380 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !1375, file: !1376, line: 183, baseType: !3, size: 112, offset: 16)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "addrlen", scope: !1370, file: !144, line: 139, baseType: !1383, size: 32, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !1376, line: 33, baseType: !1384)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !354, line: 210, baseType: !139)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr_cb_flags", scope: !1351, file: !153, line: 1322, baseType: !361, size: 32, offset: 384)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr_pack_cb", scope: !1351, file: !153, line: 1334, baseType: !1387, size: 64, offset: 448)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_cm_ep_priv_data_pack_callback_t", file: !510, line: 771, baseType: !1388)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!1147, !339, !1391, !339}
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1393)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_cm_ep_priv_data_pack_args_t", file: !510, line: 215, baseType: !1394)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_cm_ep_priv_data_pack_args", file: !510, line: 200, size: 320, elements: !1395)
!1395 = !{!1396, !1397}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "field_mask", scope: !1394, file: !510, line: 206, baseType: !351, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1394, file: !510, line: 214, baseType: !612, size: 256, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "cm", scope: !1351, file: !153, line: 1340, baseType: !1399, size: 64, offset: 512)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_cm_h", file: !510, line: 105, baseType: !1400)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_cm_t", file: !510, line: 104, baseType: !1402)
!1402 = !DICompositeType(tag: DW_TAG_structure_type, name: "uct_cm", file: !510, line: 104, flags: DIFlagFwdDecl)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "conn_request", scope: !1351, file: !153, line: 1349, baseType: !1404, size: 64, offset: 576)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_conn_request_h", file: !510, line: 112, baseType: !339)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr_cb_client", scope: !1351, file: !153, line: 1355, baseType: !1406, size: 64, offset: 640)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_cm_ep_client_connect_callback_t", file: !510, line: 721, baseType: !1407)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{null, !1136, !339, !1410}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1412)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_cm_ep_client_connect_args_t", file: !510, line: 432, baseType: !1413)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_cm_ep_client_connect_args", file: !510, line: 409, size: 192, elements: !1414)
!1414 = !{!1415, !1416, !1427}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "field_mask", scope: !1413, file: !510, line: 415, baseType: !351, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "remote_data", scope: !1413, file: !510, line: 420, baseType: !1417, size: 64, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1419)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_cm_remote_data_t", file: !510, line: 309, baseType: !1420)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_cm_remote_data", file: !510, line: 281, size: 320, elements: !1421)
!1421 = !{!1422, !1423, !1424, !1425, !1426}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "field_mask", scope: !1420, file: !510, line: 287, baseType: !351, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "dev_addr", scope: !1420, file: !510, line: 292, baseType: !1357, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "dev_addr_length", scope: !1420, file: !510, line: 297, baseType: !551, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "conn_priv_data", scope: !1420, file: !510, line: 303, baseType: !1083, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "conn_priv_data_length", scope: !1420, file: !510, line: 308, baseType: !551, size: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1413, file: !510, line: 431, baseType: !345, size: 8, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "sockaddr_cb_server", scope: !1351, file: !153, line: 1361, baseType: !1429, size: 64, offset: 704)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_cm_ep_server_conn_notify_callback_t", file: !510, line: 696, baseType: !1430)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{null, !1136, !339, !1433}
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1435)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_cm_ep_server_conn_notify_args_t", file: !510, line: 477, baseType: !1436)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_cm_ep_server_conn_notify_args", file: !510, line: 458, size: 128, elements: !1437)
!1437 = !{!1438, !1439}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "field_mask", scope: !1436, file: !510, line: 464, baseType: !351, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1436, file: !510, line: 476, baseType: !345, size: 8, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_cb", scope: !1351, file: !153, line: 1366, baseType: !1441, size: 64, offset: 768)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_disconnect_cb_t", file: !510, line: 743, baseType: !1442)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{null, !1136, !339}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "path_index", scope: !1351, file: !153, line: 1372, baseType: !139, size: 32, offset: 832)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "cm_resolve_cb", scope: !1351, file: !153, line: 1381, baseType: !1447, size: 64, offset: 896)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_cm_ep_resolve_callback_t", file: !510, line: 795, baseType: !1448)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!345, !339, !1451}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1453)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_cm_ep_resolve_args_t", file: !510, line: 249, baseType: !1454)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_cm_ep_resolve_args", file: !510, line: 224, size: 384, elements: !1455)
!1455 = !{!1456, !1457, !1458}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "field_mask", scope: !1454, file: !510, line: 230, baseType: !351, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1454, file: !510, line: 238, baseType: !612, size: 256, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1454, file: !510, line: 248, baseType: !345, size: 8, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1351, file: !153, line: 1389, baseType: !1083, size: 64, offset: 960)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "private_data_length", scope: !1351, file: !153, line: 1395, baseType: !551, size: 64, offset: 1024)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "local_sockaddr", scope: !1351, file: !153, line: 1403, baseType: !1367, size: 64, offset: 1088)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "ep_connect", scope: !1129, file: !987, line: 344, baseType: !1464, size: 64, offset: 1920)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_connect_func_t", file: !987, line: 222, baseType: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!345, !1136, !1468}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1470)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_connect_params_t", file: !510, line: 102, baseType: !1471)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_ep_connect_params", file: !153, line: 1411, size: 192, elements: !1472)
!1472 = !{!1473, !1474, !1475}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "field_mask", scope: !1471, file: !153, line: 1417, baseType: !351, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1471, file: !153, line: 1422, baseType: !1083, size: 64, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "private_data_length", scope: !1471, file: !153, line: 1428, baseType: !551, size: 64, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ep_disconnect", scope: !1129, file: !987, line: 345, baseType: !1477, size: 64, offset: 1984)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_disconnect_func_t", file: !987, line: 225, baseType: !1338)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "cm_ep_conn_notify", scope: !1129, file: !987, line: 346, baseType: !1479, size: 64, offset: 2048)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_cm_ep_conn_notify_func_t", file: !987, line: 227, baseType: !1480)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!345, !1136}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ep_destroy", scope: !1129, file: !987, line: 347, baseType: !1484, size: 64, offset: 2112)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_destroy_func_t", file: !987, line: 229, baseType: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{null, !1136}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ep_get_address", scope: !1129, file: !987, line: 348, baseType: !1489, size: 64, offset: 2176)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_get_address_func_t", file: !987, line: 231, baseType: !1490)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!345, !1136, !1493}
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_addr_t", file: !510, line: 100, baseType: !1495)
!1495 = !DICompositeType(tag: DW_TAG_structure_type, name: "uct_ep_addr", file: !510, line: 100, flags: DIFlagFwdDecl)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ep_connect_to_ep", scope: !1129, file: !987, line: 349, baseType: !1497, size: 64, offset: 2240)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ep_connect_to_ep_func_t", file: !987, line: 234, baseType: !1498)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!345, !1136, !1357, !1501}
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1494)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "iface_accept", scope: !1129, file: !987, line: 350, baseType: !1504, size: 64, offset: 2304)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iface_accept_func_t", file: !987, line: 238, baseType: !1505)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!345, !1123, !1404}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "iface_reject", scope: !1129, file: !987, line: 351, baseType: !1509, size: 64, offset: 2368)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iface_reject_func_t", file: !987, line: 241, baseType: !1505)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "iface_flush", scope: !1129, file: !987, line: 354, baseType: !1511, size: 64, offset: 2432)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iface_flush_func_t", file: !987, line: 246, baseType: !1512)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!345, !1123, !139, !1169}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "iface_fence", scope: !1129, file: !987, line: 355, baseType: !1516, size: 64, offset: 2496)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iface_fence_func_t", file: !987, line: 250, baseType: !1517)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!345, !1123, !139}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "iface_progress_enable", scope: !1129, file: !987, line: 358, baseType: !1521, size: 64, offset: 2560)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iface_progress_enable_func_t", file: !987, line: 254, baseType: !1522)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{null, !1123, !139}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "iface_progress_disable", scope: !1129, file: !987, line: 359, baseType: !1526, size: 64, offset: 2624)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iface_progress_disable_func_t", file: !987, line: 257, baseType: !1522)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "iface_progress", scope: !1129, file: !987, line: 360, baseType: !1528, size: 64, offset: 2688)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iface_progress_func_t", file: !987, line: 260, baseType: !1529)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!139, !1123}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "iface_event_fd_get", scope: !1129, file: !987, line: 363, baseType: !1533, size: 64, offset: 2752)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iface_event_fd_get_func_t", file: !987, line: 264, baseType: !1534)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!345, !1123, !1537}
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "iface_event_arm", scope: !1129, file: !987, line: 364, baseType: !1539, size: 64, offset: 2816)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iface_event_arm_func_t", file: !987, line: 267, baseType: !1517)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "iface_close", scope: !1129, file: !987, line: 367, baseType: !1541, size: 64, offset: 2880)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iface_close_func_t", file: !987, line: 272, baseType: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !1123}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "iface_query", scope: !1129, file: !987, line: 368, baseType: !1546, size: 64, offset: 2944)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iface_query_func_t", file: !987, line: 274, baseType: !1547)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!345, !1123, !1550}
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iface_attr_t", file: !510, line: 89, baseType: !1552)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_iface_attr", file: !153, line: 1025, size: 4288, elements: !1553)
!1553 = !{!1554, !1619, !1620, !1621, !1622, !1623, !1632, !1633, !1639, !1640, !1641, !1642}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1552, file: !153, line: 1121, baseType: !1555, size: 2496)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1552, file: !153, line: 1026, size: 2496, elements: !1556)
!1556 = !{!1557, !1567, !1577, !1588, !1611, !1616, !1617, !1618}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1555, file: !153, line: 1042, baseType: !1558, size: 448)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1555, file: !153, line: 1027, size: 448, elements: !1559)
!1559 = !{!1560, !1561, !1562, !1563, !1564, !1565, !1566}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "max_short", scope: !1558, file: !153, line: 1028, baseType: !551, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "max_bcopy", scope: !1558, file: !153, line: 1029, baseType: !551, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "min_zcopy", scope: !1558, file: !153, line: 1030, baseType: !551, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "max_zcopy", scope: !1558, file: !153, line: 1033, baseType: !551, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "opt_zcopy_align", scope: !1558, file: !153, line: 1036, baseType: !551, size: 64, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "align_mtu", scope: !1558, file: !153, line: 1038, baseType: !551, size: 64, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "max_iov", scope: !1558, file: !153, line: 1039, baseType: !551, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1555, file: !153, line: 1059, baseType: !1568, size: 448, offset: 448)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1555, file: !153, line: 1044, size: 448, elements: !1569)
!1569 = !{!1570, !1571, !1572, !1573, !1574, !1575, !1576}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "max_short", scope: !1568, file: !153, line: 1045, baseType: !551, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "max_bcopy", scope: !1568, file: !153, line: 1046, baseType: !551, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "min_zcopy", scope: !1568, file: !153, line: 1047, baseType: !551, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "max_zcopy", scope: !1568, file: !153, line: 1050, baseType: !551, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "opt_zcopy_align", scope: !1568, file: !153, line: 1053, baseType: !551, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "align_mtu", scope: !1568, file: !153, line: 1055, baseType: !551, size: 64, offset: 320)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "max_iov", scope: !1568, file: !153, line: 1056, baseType: !551, size: 64, offset: 384)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "am", scope: !1555, file: !153, line: 1078, baseType: !1578, size: 512, offset: 896)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1555, file: !153, line: 1061, size: 512, elements: !1579)
!1579 = !{!1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "max_short", scope: !1578, file: !153, line: 1062, baseType: !551, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "max_bcopy", scope: !1578, file: !153, line: 1064, baseType: !551, size: 64, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "min_zcopy", scope: !1578, file: !153, line: 1065, baseType: !551, size: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "max_zcopy", scope: !1578, file: !153, line: 1068, baseType: !551, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "opt_zcopy_align", scope: !1578, file: !153, line: 1071, baseType: !551, size: 64, offset: 256)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "align_mtu", scope: !1578, file: !153, line: 1073, baseType: !551, size: 64, offset: 320)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "max_hdr", scope: !1578, file: !153, line: 1074, baseType: !551, size: 64, offset: 384)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "max_iov", scope: !1578, file: !153, line: 1075, baseType: !551, size: 64, offset: 448)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1555, file: !153, line: 1112, baseType: !1589, size: 704, offset: 1408)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1555, file: !153, line: 1080, size: 704, elements: !1590)
!1590 = !{!1591, !1598, !1605}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !1589, file: !153, line: 1090, baseType: !1592, size: 256)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1589, file: !153, line: 1081, size: 256, elements: !1593)
!1593 = !{!1594, !1595, !1596, !1597}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "min_recv", scope: !1592, file: !153, line: 1082, baseType: !551, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "max_zcopy", scope: !1592, file: !153, line: 1083, baseType: !551, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "max_iov", scope: !1592, file: !153, line: 1085, baseType: !551, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "max_outstanding", scope: !1592, file: !153, line: 1088, baseType: !551, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "eager", scope: !1589, file: !153, line: 1101, baseType: !1599, size: 256, offset: 256)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1589, file: !153, line: 1092, size: 256, elements: !1600)
!1600 = !{!1601, !1602, !1603, !1604}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "max_short", scope: !1599, file: !153, line: 1093, baseType: !551, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "max_bcopy", scope: !1599, file: !153, line: 1095, baseType: !551, size: 64, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "max_zcopy", scope: !1599, file: !153, line: 1097, baseType: !551, size: 64, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "max_iov", scope: !1599, file: !153, line: 1099, baseType: !551, size: 64, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rndv", scope: !1589, file: !153, line: 1111, baseType: !1606, size: 192, offset: 512)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1589, file: !153, line: 1103, size: 192, elements: !1607)
!1607 = !{!1608, !1609, !1610}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "max_zcopy", scope: !1606, file: !153, line: 1104, baseType: !551, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "max_hdr", scope: !1606, file: !153, line: 1106, baseType: !551, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "max_iov", scope: !1606, file: !153, line: 1109, baseType: !551, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "atomic32", scope: !1555, file: !153, line: 1117, baseType: !1612, size: 128, offset: 2112)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1555, file: !153, line: 1114, size: 128, elements: !1613)
!1613 = !{!1614, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !1612, file: !153, line: 1115, baseType: !351, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "fop_flags", scope: !1612, file: !153, line: 1116, baseType: !351, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "atomic64", scope: !1555, file: !153, line: 1117, baseType: !1612, size: 128, offset: 2240)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1555, file: !153, line: 1119, baseType: !351, size: 64, offset: 2368)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !1555, file: !153, line: 1120, baseType: !351, size: 64, offset: 2432)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "device_addr_len", scope: !1552, file: !153, line: 1123, baseType: !551, size: 64, offset: 2496)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "iface_addr_len", scope: !1552, file: !153, line: 1124, baseType: !551, size: 64, offset: 2560)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "ep_addr_len", scope: !1552, file: !153, line: 1125, baseType: !551, size: 64, offset: 2624)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "max_conn_priv", scope: !1552, file: !153, line: 1126, baseType: !551, size: 64, offset: 2688)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "listen_sockaddr", scope: !1552, file: !153, line: 1129, baseType: !1624, size: 1024, offset: 2752)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !1376, line: 193, size: 1024, elements: !1625)
!1625 = !{!1626, !1627, !1631}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !1624, file: !1376, line: 195, baseType: !1379, size: 16)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !1624, file: !1376, line: 196, baseType: !1628, size: 944, offset: 16)
!1628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 944, elements: !1629)
!1629 = !{!1630}
!1630 = !DISubrange(count: 118)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !1624, file: !1376, line: 197, baseType: !344, size: 64, offset: 960)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "overhead", scope: !1552, file: !153, line: 1136, baseType: !566, size: 64, offset: 3776)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth", scope: !1552, file: !153, line: 1137, baseType: !1634, size: 128, offset: 3840)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_ppn_bandwidth_t", file: !153, line: 1018, baseType: !1635)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_ppn_bandwidth", file: !153, line: 1015, size: 128, elements: !1636)
!1636 = !{!1637, !1638}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "dedicated", scope: !1635, file: !153, line: 1016, baseType: !566, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1635, file: !153, line: 1017, baseType: !566, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1552, file: !153, line: 1138, baseType: !561, size: 128, offset: 3968)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1552, file: !153, line: 1140, baseType: !529, size: 8, offset: 4096)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_eps", scope: !1552, file: !153, line: 1141, baseType: !551, size: 64, offset: 4160)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "dev_num_paths", scope: !1552, file: !153, line: 1142, baseType: !139, size: 32, offset: 4224)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "iface_get_device_address", scope: !1129, file: !987, line: 371, baseType: !1644, size: 64, offset: 3008)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iface_get_device_address_func_t", file: !987, line: 279, baseType: !1645)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!345, !1123, !1648}
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "iface_get_address", scope: !1129, file: !987, line: 372, baseType: !1650, size: 64, offset: 3072)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iface_get_address_func_t", file: !987, line: 282, baseType: !1651)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!345, !1123, !1654}
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "iface_is_reachable", scope: !1129, file: !987, line: 373, baseType: !1656, size: 64, offset: 3136)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_iface_is_reachable_func_t", file: !987, line: 285, baseType: !1657)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!420, !1660, !1357, !1362}
!1660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1123)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1120, file: !387, line: 235, baseType: !1551, size: 4288, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !1120, file: !387, line: 236, baseType: !384, size: 64, offset: 4352)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "arm_list", scope: !1120, file: !387, line: 237, baseType: !680, size: 128, offset: 4416)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "rsc_index", scope: !1120, file: !387, line: 238, baseType: !528, size: 8, offset: 4544)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "event_fd", scope: !1120, file: !387, line: 239, baseType: !420, size: 32, offset: 4576)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "activate_count", scope: !1120, file: !387, line: 240, baseType: !139, size: 32, offset: 4608)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "check_events_id", scope: !1120, file: !387, line: 242, baseType: !420, size: 32, offset: 4640)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_recv_count", scope: !1120, file: !387, line: 243, baseType: !139, size: 32, offset: 4672)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "post_count", scope: !1120, file: !387, line: 244, baseType: !139, size: 32, offset: 4704)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1120, file: !387, line: 246, baseType: !529, size: 8, offset: 4736)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "num_ifaces", scope: !386, file: !387, line: 304, baseType: !139, size: 32, offset: 3840)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "num_active_ifaces", scope: !386, file: !387, line: 305, baseType: !139, size: 32, offset: 3872)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "scalable_tl_bitmap", scope: !386, file: !387, line: 306, baseType: !628, size: 128, offset: 3904)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "cms", scope: !386, file: !387, line: 307, baseType: !1675, size: 64, offset: 4032)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_worker_cm_t", file: !170, line: 73, baseType: !1677)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_worker_cm", file: !387, line: 253, size: 256, elements: !1678)
!1678 = !{!1679, !1680, !1686}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "cm", scope: !1677, file: !387, line: 254, baseType: !1399, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1677, file: !387, line: 255, baseType: !1681, size: 128, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_cm_attr_t", file: !510, line: 103, baseType: !1682)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_cm_attr", file: !153, line: 1435, size: 128, elements: !1683)
!1683 = !{!1684, !1685}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "field_mask", scope: !1682, file: !153, line: 1441, baseType: !351, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "max_conn_priv", scope: !1682, file: !153, line: 1447, baseType: !551, size: 64, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "cmpt_idx", scope: !1677, file: !387, line: 256, baseType: !528, size: 8, offset: 192)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "am_mps", scope: !386, file: !387, line: 308, baseType: !1688, size: 2176, offset: 4096)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_mpool_set_t", file: !1689, line: 47, baseType: !1690)
!1689 = !DIFile(filename: "ucs/datastruct/mpool_set.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "4786004bd34db86ef37c8f59f89fa5b2")
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_mpool_set", file: !1689, line: 33, size: 2176, elements: !1691)
!1691 = !{!1692, !1693, !1695}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !1690, file: !1689, line: 35, baseType: !361, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1690, file: !1689, line: 41, baseType: !1694, size: 2048, offset: 64)
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !786, size: 2048, elements: !613)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1690, file: !1689, line: 46, baseType: !339, size: 64, offset: 2112)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "reg_mp", scope: !386, file: !387, line: 309, baseType: !775, size: 128, offset: 6272)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "mpool_hash", scope: !386, file: !387, line: 310, baseType: !1698, size: 320, offset: 6400)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_worker_mpool_hash_t", file: !387, line: 224, baseType: !1699)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_ucp_worker_mpool_hash_t", file: !387, line: 223, baseType: !1700)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kh_ucp_worker_mpool_hash_s", file: !387, line: 223, size: 320, elements: !1701)
!1701 = !{!1702, !1703, !1704, !1705, !1706, !1707, !1714}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !1700, file: !387, line: 223, baseType: !1057, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1700, file: !387, line: 223, baseType: !1057, size: 32, offset: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !1700, file: !387, line: 223, baseType: !1057, size: 32, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !1700, file: !387, line: 223, baseType: !1057, size: 32, offset: 96)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1700, file: !387, line: 223, baseType: !1064, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1700, file: !387, line: 223, baseType: !1708, size: 64, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_worker_mpool_key_t", file: !387, line: 219, baseType: !1710)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_worker_mpool_key", file: !387, line: 215, size: 64, elements: !1711)
!1711 = !{!1712, !1713}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !1710, file: !387, line: 216, baseType: !918, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "sys_dev", scope: !1710, file: !387, line: 217, baseType: !618, size: 8, offset: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !1700, file: !387, line: 223, baseType: !786, size: 64, offset: 256)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_ptr_reqs", scope: !386, file: !387, line: 311, baseType: !482, size: 128, offset: 6720)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_ptr_cb_id", scope: !386, file: !387, line: 313, baseType: !1717, size: 32, offset: 6848)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_worker_cb_id_t", file: !510, line: 111, baseType: !420)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "tm", scope: !386, file: !387, line: 314, baseType: !1719, size: 1536, offset: 6912)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_tag_match_t", file: !1720, line: 101, baseType: !1721)
!1720 = !DIFile(filename: "tag/tag_match.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "54d24be310089be3366c4880621ac61e")
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_tag_match", file: !1720, line: 61, size: 1536, elements: !1722)
!1722 = !{!1723, !1737, !1743, !1760}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "expected", scope: !1721, file: !1720, line: 70, baseType: !1724, size: 384)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1721, file: !1720, line: 64, size: 384, elements: !1725)
!1725 = !{!1726, !1733, !1735, !1736}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "wildcard", scope: !1724, file: !1720, line: 65, baseType: !1727, size: 192)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_request_queue_t", file: !1720, line: 42, baseType: !1728)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1720, line: 36, size: 192, elements: !1729)
!1729 = !{!1730, !1731, !1732}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1728, file: !1720, line: 37, baseType: !482, size: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "sw_count", scope: !1728, file: !1720, line: 38, baseType: !139, size: 32, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !1728, file: !1720, line: 40, baseType: !139, size: 32, offset: 160)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1724, file: !1720, line: 66, baseType: !1734, size: 64, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "sn", scope: !1724, file: !1720, line: 67, baseType: !351, size: 64, offset: 256)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "sw_all_count", scope: !1724, file: !1720, line: 68, baseType: !139, size: 32, offset: 320)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "unexpected", scope: !1721, file: !1720, line: 76, baseType: !1738, size: 192, offset: 384)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1721, file: !1720, line: 73, size: 192, elements: !1739)
!1739 = !{!1740, !1741}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "all", scope: !1738, file: !1720, line: 74, baseType: !680, size: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1738, file: !1720, line: 75, baseType: !1742, size: 64, offset: 128)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "frag_hash", scope: !1721, file: !1720, line: 79, baseType: !1744, size: 320, offset: 576)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_ucp_tag_frag_hash_t", file: !1720, line: 54, baseType: !1745)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kh_ucp_tag_frag_hash_s", file: !1720, line: 54, size: 320, elements: !1746)
!1746 = !{!1747, !1748, !1749, !1750, !1751, !1752, !1753}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !1745, file: !1720, line: 54, baseType: !1057, size: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1745, file: !1720, line: 54, baseType: !1057, size: 32, offset: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !1745, file: !1720, line: 54, baseType: !1057, size: 32, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !1745, file: !1720, line: 54, baseType: !1057, size: 32, offset: 96)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1745, file: !1720, line: 54, baseType: !1064, size: 64, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1745, file: !1720, line: 54, baseType: !1221, size: 64, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !1745, file: !1720, line: 54, baseType: !1754, size: 64, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_tag_frag_match_t", file: !1720, line: 51, baseType: !1756)
!1756 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !1720, line: 48, size: 128, elements: !1757)
!1757 = !{!1758, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "unexp_q", scope: !1756, file: !1720, line: 49, baseType: !482, size: 128)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "exp_req", scope: !1756, file: !1720, line: 50, baseType: !355, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "offload", scope: !1721, file: !1720, line: 99, baseType: !1761, size: 640, offset: 896)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1721, file: !1720, line: 82, size: 640, elements: !1762)
!1762 = !{!1763, !1764, !1777, !1778, !1779}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "sync_reqs", scope: !1761, file: !1720, line: 83, baseType: !482, size: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "tag_hash", scope: !1761, file: !1720, line: 84, baseType: !1765, size: 320, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_ucp_tag_offload_hash_t", file: !1720, line: 21, baseType: !1766)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kh_ucp_tag_offload_hash_s", file: !1720, line: 21, size: 320, elements: !1767)
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773, !1776}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !1766, file: !1720, line: 21, baseType: !1057, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1766, file: !1720, line: 21, baseType: !1057, size: 32, offset: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !1766, file: !1720, line: 21, baseType: !1057, size: 32, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !1766, file: !1720, line: 21, baseType: !1057, size: 32, offset: 96)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1766, file: !1720, line: 21, baseType: !1064, size: 64, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1766, file: !1720, line: 21, baseType: !1774, size: 64, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_tag_t", file: !138, line: 257, baseType: !351)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !1766, file: !1720, line: 21, baseType: !1117, size: 64, offset: 256)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "iface", scope: !1761, file: !1720, line: 85, baseType: !1118, size: 64, offset: 448)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "thresh", scope: !1761, file: !1720, line: 88, baseType: !551, size: 64, offset: 512)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "zcopy_thresh", scope: !1761, file: !1720, line: 90, baseType: !551, size: 64, offset: 576)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "am", scope: !386, file: !387, line: 315, baseType: !1781, size: 192, offset: 8448)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_am_info_t", file: !1782, line: 51, baseType: !1783)
!1782 = !DIFile(filename: "core/ucp_am.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "0044f194deaaaa50afbe39f11a27b030")
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_am_info", file: !1782, line: 48, size: 192, elements: !1784)
!1784 = !{!1785, !1786}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1783, file: !1782, line: 49, baseType: !551, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "cbs", scope: !1783, file: !1782, line: 50, baseType: !1787, size: 128, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_array_ucp_am_cbs_t", file: !1782, line: 45, baseType: !1788)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1782, line: 45, size: 128, elements: !1789)
!1789 = !{!1790, !1817, !1818}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1788, file: !1782, line: 45, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_am_entry_t", file: !1782, line: 42, baseType: !1793)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_am_entry", file: !1782, line: 34, size: 192, elements: !1794)
!1794 = !{!1795, !1815, !1816}
!1795 = !DIDerivedType(tag: DW_TAG_member, scope: !1793, file: !1782, line: 35, baseType: !1796, size: 64)
!1796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1793, file: !1782, line: 35, size: 64, elements: !1797)
!1797 = !{!1798, !1803}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "cb_old", scope: !1796, file: !1782, line: 36, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_am_callback_t", file: !138, line: 613, baseType: !1800)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!345, !339, !339, !551, !378, !139}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1796, file: !1782, line: 37, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_am_recv_callback_t", file: !138, line: 670, baseType: !1805)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!345, !339, !1083, !551, !339, !551, !1808}
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1810)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_am_recv_param_t", file: !138, line: 37, baseType: !1811)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_am_recv_param", file: !220, line: 1896, size: 128, elements: !1812)
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "recv_attr", scope: !1811, file: !220, line: 1902, baseType: !351, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "reply_ep", scope: !1811, file: !220, line: 1907, baseType: !378, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1793, file: !1782, line: 39, baseType: !339, size: 64, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1793, file: !1782, line: 40, baseType: !139, size: 32, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1788, file: !1782, line: 45, baseType: !139, size: 32, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1788, file: !1782, line: 45, baseType: !139, size: 32, offset: 96)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "am_message_id", scope: !386, file: !387, line: 316, baseType: !351, size: 64, offset: 8640)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type_ep", scope: !386, file: !387, line: 317, baseType: !1821, size: 320, offset: 8704)
!1821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 320, elements: !589)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_mask", scope: !386, file: !387, line: 322, baseType: !571, size: 1024, offset: 9024)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_config_hash", scope: !386, file: !387, line: 325, baseType: !1824, size: 320, offset: 10048)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_worker_rkey_config_hash_t", file: !387, line: 207, baseType: !1825)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_ucp_worker_rkey_config_t", file: !387, line: 206, baseType: !1826)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kh_ucp_worker_rkey_config_s", file: !387, line: 206, size: 320, elements: !1827)
!1827 = !{!1828, !1829, !1830, !1831, !1832, !1833, !1844}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !1826, file: !387, line: 206, baseType: !1057, size: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1826, file: !387, line: 206, baseType: !1057, size: 32, offset: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !1826, file: !387, line: 206, baseType: !1057, size: 32, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !1826, file: !387, line: 206, baseType: !1057, size: 32, offset: 96)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1826, file: !387, line: 206, baseType: !1064, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1826, file: !387, line: 206, baseType: !1834, size: 64, offset: 192)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_rkey_config_key_t", file: !170, line: 78, baseType: !1836)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_rkey_config_key", file: !1837, line: 49, size: 128, elements: !1838)
!1837 = !DIFile(filename: "core/ucp_rkey.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "26ae1ff7cd2b1aa26fd469f7432df4b7")
!1838 = !{!1839, !1840, !1842, !1843}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "md_map", scope: !1836, file: !1837, line: 51, baseType: !588, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ep_cfg_index", scope: !1836, file: !1837, line: 54, baseType: !1841, size: 8, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_worker_cfg_index_t", file: !170, line: 58, baseType: !529)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "sys_dev", scope: !1836, file: !1837, line: 57, baseType: !618, size: 8, offset: 72)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !1836, file: !1837, line: 60, baseType: !918, size: 32, offset: 96)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !1826, file: !387, line: 206, baseType: !1845, size: 64, offset: 256)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "discard_uct_ep_hash", scope: !386, file: !387, line: 326, baseType: !1847, size: 320, offset: 10368)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_worker_discard_uct_ep_hash_t", file: !387, line: 212, baseType: !1848)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_ucp_worker_discard_uct_ep_hash_t", file: !387, line: 211, baseType: !1849)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kh_ucp_worker_discard_uct_ep_hash_s", file: !387, line: 211, size: 320, elements: !1850)
!1850 = !{!1851, !1852, !1853, !1854, !1855, !1856, !1857}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !1849, file: !387, line: 211, baseType: !1057, size: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1849, file: !387, line: 211, baseType: !1057, size: 32, offset: 32)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !1849, file: !387, line: 211, baseType: !1057, size: 32, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !1849, file: !387, line: 211, baseType: !1057, size: 32, offset: 96)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1849, file: !387, line: 211, baseType: !1064, size: 64, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1849, file: !387, line: 211, baseType: !1462, size: 64, offset: 192)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !1849, file: !387, line: 211, baseType: !1858, size: 64, offset: 256)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "ep_map", scope: !386, file: !387, line: 327, baseType: !1860, size: 768, offset: 10688)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_ptr_map_ep_t", file: !387, line: 261, baseType: !1861)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 261, size: 768, elements: !1862)
!1862 = !{!1863, !1881}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_map", scope: !1861, file: !387, line: 261, baseType: !1864, size: 384)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_ptr_map_t", file: !365, line: 47, baseType: !1865)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_ptr_map", file: !365, line: 43, size: 384, elements: !1866)
!1866 = !{!1867, !1868}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "next_id", scope: !1865, file: !365, line: 44, baseType: !351, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1865, file: !365, line: 45, baseType: !1869, size: 320, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_ptr_hash_t", file: !365, line: 40, baseType: !1870)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_ucs_ptr_map_impl_t", file: !365, line: 39, baseType: !1871)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kh_ucs_ptr_map_impl_s", file: !365, line: 39, size: 320, elements: !1872)
!1872 = !{!1873, !1874, !1875, !1876, !1877, !1878, !1880}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !1871, file: !365, line: 39, baseType: !1057, size: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1871, file: !365, line: 39, baseType: !1057, size: 32, offset: 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !1871, file: !365, line: 39, baseType: !1057, size: 32, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !1871, file: !365, line: 39, baseType: !1057, size: 32, offset: 96)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1871, file: !365, line: 39, baseType: !1064, size: 64, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1871, file: !365, line: 39, baseType: !1879, size: 64, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !1871, file: !365, line: 39, baseType: !338, size: 64, offset: 256)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !1861, file: !387, line: 261, baseType: !1882, size: 384, offset: 384)
!1882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1883, size: 384, elements: !1888)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_ptr_safe_hash_t", file: !365, line: 54, baseType: !1884)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_ptr_safe_hash", file: !365, line: 50, size: 384, elements: !1885)
!1885 = !{!1886, !1887}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1884, file: !365, line: 51, baseType: !1869, size: 320)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1884, file: !365, line: 53, baseType: !413, size: 32, offset: 320)
!1888 = !{!1889}
!1889 = !DISubrange(count: 1)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "request_map", scope: !386, file: !387, line: 329, baseType: !1891, size: 384, offset: 11456)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_ptr_map_request_t", file: !387, line: 262, baseType: !1892)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 262, size: 384, elements: !1893)
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_map", scope: !1892, file: !387, line: 262, baseType: !1864, size: 384)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !1892, file: !387, line: 262, baseType: !1896, offset: 384)
!1896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1883, elements: !1897)
!1897 = !{!1898}
!1898 = !DISubrange(count: 0)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "ep_config", scope: !386, file: !387, line: 332, baseType: !1900, size: 128, offset: 11840)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_array_ep_config_arr_t", file: !387, line: 227, baseType: !1901)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 227, size: 128, elements: !1902)
!1902 = !{!1903, !2204, !2205}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1901, file: !387, line: 227, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_ep_config_t", file: !170, line: 76, baseType: !1906)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_ep_config", file: !381, line: 343, size: 21824, elements: !1907)
!1907 = !{!1908, !1945, !1947, !1948, !1961, !1962, !1976, !1978, !2001, !2037, !2041, !2048, !2203}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1906, file: !381, line: 348, baseType: !1909, size: 3008)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_ep_config_key_t", file: !170, line: 77, baseType: !1910)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_ep_config_key", file: !381, line: 193, size: 3008, elements: !1911)
!1911 = !{!1912, !1914, !1927, !1928, !1929, !1930, !1931, !1932, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1943}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "num_lanes", scope: !1910, file: !381, line: 195, baseType: !1913, size: 8)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_lane_index_t", file: !170, line: 48, baseType: !529)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !1910, file: !381, line: 196, baseType: !1915, size: 2048, offset: 64)
!1915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1916, size: 2048, elements: !10)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_ep_config_key_lane_t", file: !381, line: 185, baseType: !1917)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_ep_config_key_lane", file: !381, line: 176, size: 128, elements: !1918)
!1918 = !{!1919, !1920, !1921, !1922, !1923, !1926}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "rsc_index", scope: !1917, file: !381, line: 177, baseType: !528, size: 8)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "dst_md_index", scope: !1917, file: !381, line: 178, baseType: !585, size: 8, offset: 8)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "dst_sys_dev", scope: !1917, file: !381, line: 179, baseType: !618, size: 8, offset: 16)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "path_index", scope: !1917, file: !381, line: 180, baseType: !529, size: 8, offset: 24)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "lane_types", scope: !1917, file: !381, line: 181, baseType: !1924, size: 32, offset: 32)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_lane_type_mask_t", file: !1925, line: 36, baseType: !361)
!1925 = !DIFile(filename: "proto/lane_type.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "d2f98f2e42606f58e008358f2d11d2f0")
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "seg_size", scope: !1917, file: !381, line: 183, baseType: !551, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "am_lane", scope: !1910, file: !381, line: 198, baseType: !1913, size: 8, offset: 2112)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "tag_lane", scope: !1910, file: !381, line: 199, baseType: !1913, size: 8, offset: 2120)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "wireup_msg_lane", scope: !1910, file: !381, line: 200, baseType: !1913, size: 8, offset: 2128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "cm_lane", scope: !1910, file: !381, line: 201, baseType: !1913, size: 8, offset: 2136)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive_lane", scope: !1910, file: !381, line: 202, baseType: !1913, size: 8, offset: 2144)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "rma_lanes", scope: !1910, file: !381, line: 205, baseType: !1933, size: 128, offset: 2152)
!1933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1913, size: 128, elements: !10)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "rma_bw_lanes", scope: !1910, file: !381, line: 208, baseType: !1933, size: 128, offset: 2280)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_ptr_lane", scope: !1910, file: !381, line: 211, baseType: !1913, size: 8, offset: 2408)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "amo_lanes", scope: !1910, file: !381, line: 214, baseType: !1933, size: 128, offset: 2416)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "am_bw_lanes", scope: !1910, file: !381, line: 217, baseType: !1933, size: 128, offset: 2544)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "rma_bw_md_map", scope: !1910, file: !381, line: 222, baseType: !588, size: 64, offset: 2688)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "rma_md_map", scope: !1910, file: !381, line: 225, baseType: !588, size: 64, offset: 2752)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "reachable_md_map", scope: !1910, file: !381, line: 230, baseType: !588, size: 64, offset: 2816)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "dst_md_cmpts", scope: !1910, file: !381, line: 235, baseType: !1942, size: 64, offset: 2880)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "err_mode", scope: !1910, file: !381, line: 238, baseType: !1944, size: 32, offset: 2944)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_err_handling_mode_t", file: !138, line: 139, baseType: !137)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "p2p_lanes", scope: !1906, file: !381, line: 353, baseType: !1946, size: 16, offset: 3008)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_lane_map_t", file: !170, line: 49, baseType: !621)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "uct_rkey_pack_flags", scope: !1906, file: !381, line: 356, baseType: !139, size: 32, offset: 3040)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "rma", scope: !1906, file: !381, line: 359, baseType: !1949, size: 8192, offset: 3072)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1950, size: 8192, elements: !10)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_ep_rma_config_t", file: !381, line: 254, baseType: !1951)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_ep_rma_config", file: !381, line: 245, size: 512, elements: !1952)
!1952 = !{!1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "max_put_short", scope: !1951, file: !381, line: 246, baseType: !1147, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "max_put_bcopy", scope: !1951, file: !381, line: 247, baseType: !551, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "max_put_zcopy", scope: !1951, file: !381, line: 248, baseType: !551, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "max_get_short", scope: !1951, file: !381, line: 249, baseType: !1147, size: 64, offset: 192)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "max_get_bcopy", scope: !1951, file: !381, line: 250, baseType: !551, size: 64, offset: 256)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "max_get_zcopy", scope: !1951, file: !381, line: 251, baseType: !551, size: 64, offset: 320)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "put_zcopy_thresh", scope: !1951, file: !381, line: 252, baseType: !551, size: 64, offset: 384)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "get_zcopy_thresh", scope: !1951, file: !381, line: 253, baseType: !551, size: 64, offset: 448)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "bcopy_thresh", scope: !1906, file: !381, line: 362, baseType: !551, size: 64, offset: 11264)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "am", scope: !1906, file: !381, line: 365, baseType: !1963, size: 2752, offset: 11328)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_ep_msg_config_t", file: !381, line: 276, baseType: !1964)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_ep_msg_config", file: !381, line: 260, size: 2752, elements: !1965)
!1965 = !{!1966, !1967, !1968, !1969, !1970, !1971, !1973, !1974, !1975}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "max_short", scope: !1964, file: !381, line: 261, baseType: !1147, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "max_bcopy", scope: !1964, file: !381, line: 262, baseType: !551, size: 64, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "max_zcopy", scope: !1964, file: !381, line: 263, baseType: !551, size: 64, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "max_hdr", scope: !1964, file: !381, line: 264, baseType: !551, size: 64, offset: 192)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "max_iov", scope: !1964, file: !381, line: 265, baseType: !551, size: 64, offset: 256)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "zcopy_thresh", scope: !1964, file: !381, line: 268, baseType: !1972, size: 1024, offset: 320)
!1972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 1024, elements: !10)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type_zcopy_thresh", scope: !1964, file: !381, line: 271, baseType: !915, size: 320, offset: 1344)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "sync_zcopy_thresh", scope: !1964, file: !381, line: 274, baseType: !1972, size: 1024, offset: 1664)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "zcopy_auto_thresh", scope: !1964, file: !381, line: 275, baseType: !529, size: 8, offset: 2688)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "md_index", scope: !1906, file: !381, line: 368, baseType: !1977, size: 128, offset: 14080)
!1977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 128, elements: !10)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "rndv", scope: !1906, file: !381, line: 383, baseType: !1979, size: 3072, offset: 14208)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1906, file: !381, line: 370, size: 3072, elements: !1980)
!1980 = !{!1981, !1991, !1992, !1998, !1999, !2000}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "get_zcopy", scope: !1979, file: !381, line: 372, baseType: !1982, size: 1344)
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_ep_rndv_zcopy_config_t", file: !381, line: 316, baseType: !1983)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_rndv_zcopy", file: !381, line: 304, size: 1344, elements: !1984)
!1984 = !{!1985, !1986, !1987, !1988, !1989}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1983, file: !381, line: 306, baseType: !551, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !1983, file: !381, line: 308, baseType: !551, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1983, file: !381, line: 311, baseType: !420, size: 32, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !1983, file: !381, line: 313, baseType: !1933, size: 128, offset: 160)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !1983, file: !381, line: 315, baseType: !1990, size: 1024, offset: 320)
!1990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 1024, elements: !10)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "put_zcopy", scope: !1979, file: !381, line: 374, baseType: !1982, size: 1344, offset: 1344)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "rma_thresh", scope: !1979, file: !381, line: 376, baseType: !1993, size: 128, offset: 2688)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_rndv_thresh_t", file: !381, line: 298, baseType: !1994)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_rndv_thresh", file: !381, line: 291, size: 128, elements: !1995)
!1995 = !{!1996, !1997}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "remote", scope: !1994, file: !381, line: 293, baseType: !551, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "local", scope: !1994, file: !381, line: 297, baseType: !551, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "am_thresh", scope: !1979, file: !381, line: 378, baseType: !1993, size: 128, offset: 2816)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_size", scope: !1979, file: !381, line: 380, baseType: !551, size: 64, offset: 2944)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_ptr_dst_mds", scope: !1979, file: !381, line: 382, baseType: !588, size: 64, offset: 3008)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1906, file: !381, line: 418, baseType: !2002, size: 3584, offset: 17280)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1906, file: !381, line: 385, size: 3584, elements: !2003)
!2003 = !{!2004, !2017, !2018, !2019, !2025, !2026, !2031}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !2002, file: !381, line: 388, baseType: !2005, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2007)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_request_send_proto_t", file: !170, line: 71, baseType: !2008)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_request_send_proto", file: !238, line: 499, size: 448, elements: !2009)
!2009 = !{!2010, !2011, !2012, !2013, !2014, !2015, !2016}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "contig_short", scope: !2008, file: !238, line: 500, baseType: !1317, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "bcopy_single", scope: !2008, file: !238, line: 501, baseType: !1317, size: 64, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "bcopy_multi", scope: !2008, file: !238, line: 502, baseType: !1317, size: 64, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "zcopy_single", scope: !2008, file: !238, line: 503, baseType: !1317, size: 64, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "zcopy_multi", scope: !2008, file: !238, line: 504, baseType: !1317, size: 64, offset: 256)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "zcopy_completion", scope: !2008, file: !238, line: 505, baseType: !1174, size: 64, offset: 320)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "only_hdr_size", scope: !2008, file: !238, line: 506, baseType: !551, size: 64, offset: 384)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "sync_proto", scope: !2002, file: !381, line: 389, baseType: !2005, size: 64, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "lane", scope: !2002, file: !381, line: 392, baseType: !1913, size: 8, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "max_eager_short", scope: !2002, file: !381, line: 395, baseType: !2020, size: 128, offset: 192)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_memtype_thresh_t", file: !381, line: 285, baseType: !2021)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_memtype_thresh", file: !381, line: 282, size: 128, elements: !2022)
!2022 = !{!2023, !2024}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "memtype_on", scope: !2021, file: !381, line: 283, baseType: !1147, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "memtype_off", scope: !2021, file: !381, line: 284, baseType: !1147, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "eager", scope: !2002, file: !381, line: 399, baseType: !1963, size: 2752, offset: 320)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "rndv", scope: !2002, file: !381, line: 407, baseType: !2027, size: 256, offset: 3072)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2002, file: !381, line: 404, size: 256, elements: !2028)
!2028 = !{!2029, !2030}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "rma_thresh", scope: !2027, file: !381, line: 405, baseType: !1993, size: 128)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "am_thresh", scope: !2027, file: !381, line: 406, baseType: !1993, size: 128, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "offload", scope: !2002, file: !381, line: 417, baseType: !2032, size: 256, offset: 3328)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2002, file: !381, line: 409, size: 256, elements: !2033)
!2033 = !{!2034, !2035, !2036}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "max_eager_short", scope: !2032, file: !381, line: 411, baseType: !2020, size: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "max_rndv_iov", scope: !2032, file: !381, line: 414, baseType: !551, size: 64, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "max_rndv_zcopy", scope: !2032, file: !381, line: 416, baseType: !551, size: 64, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !1906, file: !381, line: 424, baseType: !2038, size: 64, offset: 20864)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1906, file: !381, line: 420, size: 64, elements: !2039)
!2039 = !{!2040}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !2038, file: !381, line: 423, baseType: !2005, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "am_u", scope: !1906, file: !381, line: 436, baseType: !2042, size: 384, offset: 20928)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1906, file: !381, line: 426, size: 384, elements: !2043)
!2043 = !{!2044, !2045, !2046, !2047}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !2042, file: !381, line: 428, baseType: !2005, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "reply_proto", scope: !2042, file: !381, line: 429, baseType: !2005, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "max_eager_short", scope: !2042, file: !381, line: 432, baseType: !2020, size: 128, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "max_reply_eager_short", scope: !2042, file: !381, line: 435, baseType: !2020, size: 128, offset: 256)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "proto_select", scope: !1906, file: !381, line: 439, baseType: !2049, size: 448, offset: 21312)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_proto_select_t", file: !2050, line: 111, baseType: !2051)
!2050 = !DIFile(filename: "proto/proto_select.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "c743a8c920a2a939cb2b6a4baca43acc")
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2050, line: 102, size: 448, elements: !2052)
!2052 = !{!2053, !2196}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2051, file: !2050, line: 104, baseType: !2054, size: 320)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_ucp_proto_select_hash_t", file: !2050, line: 96, baseType: !2055)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kh_ucp_proto_select_hash_s", file: !2050, line: 96, size: 320, elements: !2056)
!2056 = !{!2057, !2058, !2059, !2060, !2061, !2062, !2065}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !2055, file: !2050, line: 96, baseType: !1057, size: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2055, file: !2050, line: 96, baseType: !1057, size: 32, offset: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !2055, file: !2050, line: 96, baseType: !1057, size: 32, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !2055, file: !2050, line: 96, baseType: !1057, size: 32, offset: 96)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2055, file: !2050, line: 96, baseType: !1064, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2055, file: !2050, line: 96, baseType: !2063, size: 64, offset: 192)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "khint64_t", file: !1058, line: 152, baseType: !344)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !2055, file: !2050, line: 96, baseType: !2066, size: 64, offset: 256)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_proto_select_elem_t", file: !2050, line: 92, baseType: !2068)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2050, line: 83, size: 192, elements: !2069)
!2069 = !{!2070, !2193, !2195}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "thresholds", scope: !2068, file: !2050, line: 85, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2073)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_proto_threshold_elem_t", file: !2050, line: 77, baseType: !2074)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2050, line: 74, size: 384, elements: !2075)
!2075 = !{!2076, !2192}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "proto_config", scope: !2074, file: !2050, line: 75, baseType: !2077, size: 320)
!2077 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_proto_config_t", file: !2050, line: 68, baseType: !2078)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2050, line: 46, size: 320, elements: !2079)
!2079 = !{!2080, !2187, !2188, !2189, !2190, !2191}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !2078, file: !2050, line: 48, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2083)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_proto_t", file: !170, line: 79, baseType: !2084)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_proto", file: !320, line: 284, size: 960, elements: !2085)
!2085 = !{!2086, !2087, !2088, !2089, !2147, !2175, !2177, !2182}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2084, file: !320, line: 285, baseType: !1106, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2084, file: !320, line: 286, baseType: !1106, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2084, file: !320, line: 287, baseType: !139, size: 32, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2084, file: !320, line: 288, baseType: !2090, size: 64, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_proto_init_func_t", file: !320, line: 208, baseType: !2091)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!345, !2094}
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2096)
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_proto_init_params_t", file: !320, line: 195, baseType: !2097)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 178, size: 576, elements: !2098)
!2098 = !{!2099, !2100, !2113, !2114, !2115, !2118, !2121, !2122, !2123, !2124}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !2097, file: !320, line: 180, baseType: !384, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "select_param", scope: !2097, file: !320, line: 181, baseType: !2101, size: 64, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2103)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_proto_select_param_t", file: !320, line: 97, baseType: !2104)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 86, size: 64, elements: !2105)
!2105 = !{!2106, !2107, !2108, !2109, !2110, !2111, !2112}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "op_id", scope: !2104, file: !320, line: 87, baseType: !529, size: 8)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !2104, file: !320, line: 88, baseType: !621, size: 16, offset: 8)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "dt_class", scope: !2104, file: !320, line: 89, baseType: !529, size: 8, offset: 24)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !2104, file: !320, line: 90, baseType: !529, size: 8, offset: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "sys_dev", scope: !2104, file: !320, line: 91, baseType: !529, size: 8, offset: 40)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "sg_count", scope: !2104, file: !320, line: 92, baseType: !529, size: 8, offset: 48)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2104, file: !320, line: 95, baseType: !529, size: 8, offset: 56)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "ep_cfg_index", scope: !2097, file: !320, line: 182, baseType: !1841, size: 8, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_cfg_index", scope: !2097, file: !320, line: 183, baseType: !1841, size: 8, offset: 136)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "ep_config_key", scope: !2097, file: !320, line: 185, baseType: !2116, size: 64, offset: 192)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1909)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_config_key", scope: !2097, file: !320, line: 186, baseType: !2119, size: 64, offset: 256)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1835)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "proto_name", scope: !2097, file: !320, line: 188, baseType: !1106, size: 64, offset: 320)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2097, file: !320, line: 192, baseType: !339, size: 64, offset: 384)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "priv_size", scope: !2097, file: !320, line: 193, baseType: !819, size: 64, offset: 448)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !2097, file: !320, line: 194, baseType: !2125, size: 64, offset: 512)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_proto_caps_t", file: !320, line: 172, baseType: !2127)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 163, size: 12544, elements: !2128)
!2128 = !{!2129, !2130, !2131, !2132, !2133}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_thresh", scope: !2127, file: !320, line: 164, baseType: !551, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_priority", scope: !2127, file: !320, line: 165, baseType: !139, size: 32, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "min_length", scope: !2127, file: !320, line: 166, baseType: !551, size: 64, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "num_ranges", scope: !2127, file: !320, line: 167, baseType: !139, size: 32, offset: 192)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2127, file: !320, line: 170, baseType: !2134, size: 12288, offset: 256)
!2134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2135, size: 12288, elements: !80)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_proto_perf_range_t", file: !320, line: 157, baseType: !2136)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 146, size: 512, elements: !2137)
!2137 = !{!2138, !2139, !2143}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "max_length", scope: !2136, file: !320, line: 148, baseType: !551, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "perf", scope: !2136, file: !320, line: 153, baseType: !2140, size: 384, offset: 64)
!2140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 384, elements: !2141)
!2141 = !{!2142}
!2142 = !DISubrange(count: 3)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2136, file: !320, line: 156, baseType: !2144, size: 64, offset: 448)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_proto_perf_node_t", file: !320, line: 58, baseType: !2146)
!2146 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_proto_perf_node", file: !320, line: 58, flags: DIFlagFwdDecl)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !2084, file: !320, line: 289, baseType: !2148, size: 64, offset: 256)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_proto_query_func_t", file: !320, line: 258, baseType: !2149)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{null, !2152, !2163}
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2154)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_proto_query_params_t", file: !320, line: 229, baseType: !2155)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 211, size: 384, elements: !2156)
!2156 = !{!2157, !2158, !2159, !2160, !2161, !2162}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !2155, file: !320, line: 213, baseType: !2081, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2155, file: !320, line: 216, baseType: !1083, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !2155, file: !320, line: 219, baseType: !384, size: 64, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "select_param", scope: !2155, file: !320, line: 222, baseType: !2101, size: 64, offset: 192)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ep_config_key", scope: !2155, file: !320, line: 225, baseType: !2116, size: 64, offset: 256)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "msg_length", scope: !2155, file: !320, line: 228, baseType: !551, size: 64, offset: 320)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_proto_query_attr_t", file: !320, line: 247, baseType: !2165)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 232, size: 1664, elements: !2166)
!2166 = !{!2167, !2168, !2169, !2173}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "max_msg_length", scope: !2165, file: !320, line: 236, baseType: !551, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "is_estimation", scope: !2165, file: !320, line: 240, baseType: !420, size: 32, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2165, file: !320, line: 243, baseType: !2170, size: 512, offset: 96)
!2170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !2171)
!2171 = !{!2172}
!2172 = !DISubrange(count: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !2165, file: !320, line: 246, baseType: !2174, size: 1024, offset: 608)
!2174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !894)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !2084, file: !320, line: 294, baseType: !2176, size: 512, offset: 320)
!2176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1317, size: 512, elements: !1007)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !2084, file: !320, line: 301, baseType: !2178, size: 64, offset: 832)
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_request_abort_func_t", file: !320, line: 268, baseType: !2179)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{null, !355, !345}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2084, file: !320, line: 308, baseType: !2183, size: 64, offset: 896)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_request_reset_func_t", file: !320, line: 278, baseType: !2184)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{null, !355}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2078, file: !2050, line: 51, baseType: !1083, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_thresh", scope: !2078, file: !2050, line: 54, baseType: !551, size: 64, offset: 128)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "ep_cfg_index", scope: !2078, file: !2050, line: 57, baseType: !1841, size: 8, offset: 192)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_cfg_index", scope: !2078, file: !2050, line: 62, baseType: !1841, size: 8, offset: 200)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "select_param", scope: !2078, file: !2050, line: 67, baseType: !2103, size: 64, offset: 208)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "max_msg_length", scope: !2074, file: !2050, line: 76, baseType: !551, size: 64, offset: 320)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "perf_ranges", scope: !2068, file: !2050, line: 88, baseType: !2194, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "priv_buf", scope: !2068, file: !2050, line: 91, baseType: !339, size: 64, offset: 128)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2051, file: !2050, line: 110, baseType: !2197, size: 128, offset: 320)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2051, file: !2050, line: 107, size: 128, elements: !2198)
!2198 = !{!2199, !2200}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2197, file: !2050, line: 108, baseType: !351, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2197, file: !2050, line: 109, baseType: !2201, size: 64, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2067)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "am_bw_prereg_md_map", scope: !1906, file: !381, line: 442, baseType: !588, size: 64, offset: 21760)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1901, file: !387, line: 227, baseType: !139, size: 32, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1901, file: !387, line: 227, baseType: !139, size: 32, offset: 96)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_config_count", scope: !386, file: !387, line: 334, baseType: !139, size: 32, offset: 11968)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_config", scope: !386, file: !387, line: 335, baseType: !2208, size: 360448, offset: 12032)
!2208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2209, size: 360448, elements: !894)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_rkey_config_t", file: !1837, line: 82, baseType: !2210)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1837, line: 67, size: 2816, elements: !2211)
!2211 = !{!2212, !2213, !2221, !2228}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2210, file: !1837, line: 69, baseType: !1835, size: 128)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "put_short", scope: !2210, file: !1837, line: 72, baseType: !2214, size: 192, offset: 128)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_proto_select_short_t", file: !2050, line: 124, baseType: !2215)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2050, line: 117, size: 192, elements: !2216)
!2216 = !{!2217, !2218, !2219, !2220}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "max_length_host_mem", scope: !2215, file: !2050, line: 118, baseType: !1147, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "max_length_unknown_mem", scope: !2215, file: !2050, line: 120, baseType: !1147, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "lane", scope: !2215, file: !2050, line: 122, baseType: !1913, size: 8, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_index", scope: !2215, file: !2050, line: 123, baseType: !585, size: 8, offset: 136)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "lanes_distance", scope: !2210, file: !1837, line: 78, baseType: !2222, size: 2048, offset: 320)
!2222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2223, size: 2048, elements: !10)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_sys_dev_distance_t", file: !619, line: 57, baseType: !2224)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_sys_dev_distance", file: !619, line: 54, size: 128, elements: !2225)
!2225 = !{!2226, !2227}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2224, file: !619, line: 55, baseType: !566, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth", scope: !2224, file: !619, line: 56, baseType: !566, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "proto_select", scope: !2210, file: !1837, line: 81, baseType: !2049, size: 448, offset: 2368)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !386, file: !387, line: 347, baseType: !2230, size: 320, offset: 372480)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !386, file: !387, line: 337, size: 320, elements: !2231)
!2231 = !{!2232, !2233, !2234, !2235, !2236, !2237, !2238}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "timerfd", scope: !2230, file: !387, line: 338, baseType: !420, size: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "cb_id", scope: !2230, file: !387, line: 340, baseType: !1717, size: 32, offset: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "last_round", scope: !2230, file: !387, line: 341, baseType: !495, size: 64, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !2230, file: !387, line: 342, baseType: !1742, size: 64, offset: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "ep_count", scope: !2230, file: !387, line: 343, baseType: !139, size: 32, offset: 192)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "iter_count", scope: !2230, file: !387, line: 344, baseType: !139, size: 32, offset: 224)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "round_count", scope: !2230, file: !387, line: 346, baseType: !551, size: 64, offset: 256)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !386, file: !387, line: 358, baseType: !2240, size: 256, offset: 372800)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !386, file: !387, line: 349, size: 256, elements: !2241)
!2241 = !{!2242, !2243, !2244, !2245}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "ep_creations", scope: !2240, file: !387, line: 351, baseType: !351, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "ep_creation_failures", scope: !2240, file: !387, line: 353, baseType: !351, size: 64, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "ep_closures", scope: !2240, file: !387, line: 355, baseType: !351, size: 64, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "ep_failures", scope: !2240, file: !387, line: 357, baseType: !351, size: 64, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !380, file: !381, line: 512, baseType: !529, size: 8, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_index", scope: !380, file: !381, line: 514, baseType: !1841, size: 8, offset: 72)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "conn_sn", scope: !380, file: !381, line: 515, baseType: !2249, size: 16, offset: 80)
!2249 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_ep_match_conn_sn_t", file: !2250, line: 23, baseType: !621)
!2250 = !DIFile(filename: "wireup/ep_match.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "102a22d4ae5d98defeb1847db138bdca")
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "am_lane", scope: !380, file: !381, line: 516, baseType: !1913, size: 8, offset: 96)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !380, file: !381, line: 517, baseType: !2253, size: 16, offset: 112)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_ep_flags_t", file: !381, line: 33, baseType: !621)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "uct_eps", scope: !380, file: !381, line: 519, baseType: !2255, size: 320, offset: 128)
!2255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1136, size: 320, elements: !589)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "ext", scope: !380, file: !381, line: 520, baseType: !2257, size: 64, offset: 448)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_ep_ext_t", file: !381, line: 503, baseType: !2259)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_ep_ext", file: !381, line: 460, size: 1472, elements: !2260)
!2260 = !{!2261, !2262, !2263, !2264, !2265, !2266, !2267, !2272, !2273, !2337, !2343, !2359, !2364, !2369}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !2259, file: !381, line: 461, baseType: !378, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !2259, file: !381, line: 462, baseType: !339, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "ep_list", scope: !2259, file: !381, line: 463, baseType: !680, size: 128, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "cm_idx", scope: !2259, file: !381, line: 464, baseType: !528, size: 8, offset: 256)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "local_ep_id", scope: !2259, file: !381, line: 465, baseType: !364, size: 64, offset: 320)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ep_id", scope: !2259, file: !381, line: 466, baseType: !364, size: 64, offset: 384)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "err_cb", scope: !2259, file: !381, line: 467, baseType: !2268, size: 64, offset: 448)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_err_handler_cb_t", file: !138, line: 357, baseType: !2269)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{null, !339, !378, !345}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "close_req", scope: !2259, file: !381, line: 468, baseType: !355, size: 64, offset: 512)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "peer_mem", scope: !2259, file: !381, line: 469, baseType: !2274, size: 64, offset: 576)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "kh_ucp_ep_peer_mem_hash_t", file: !381, line: 340, baseType: !2276)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kh_ucp_ep_peer_mem_hash_s", file: !381, line: 340, size: 320, elements: !2277)
!2277 = !{!2278, !2279, !2280, !2281, !2282, !2283, !2284}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "n_buckets", scope: !2276, file: !381, line: 340, baseType: !1057, size: 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2276, file: !381, line: 340, baseType: !1057, size: 32, offset: 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "n_occupied", scope: !2276, file: !381, line: 340, baseType: !1057, size: 32, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !2276, file: !381, line: 340, baseType: !1057, size: 32, offset: 96)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2276, file: !381, line: 340, baseType: !1064, size: 64, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2276, file: !381, line: 340, baseType: !1221, size: 64, offset: 192)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !2276, file: !381, line: 340, baseType: !2285, size: 64, offset: 256)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_ep_peer_mem_data_t", file: !381, line: 337, baseType: !2287)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 327, size: 256, elements: !2288)
!2288 = !{!2289, !2334, !2335, !2336}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "rkey", scope: !2287, file: !381, line: 329, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_rkey_h", file: !138, line: 152, baseType: !2291)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_rkey", file: !1837, line: 91, size: 256, elements: !2293)
!2293 = !{!2294, !2320, !2321}
!2294 = !DIDerivedType(tag: DW_TAG_member, scope: !2292, file: !1837, line: 92, baseType: !2295, size: 192)
!2295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2292, file: !1837, line: 92, size: 192, elements: !2296)
!2296 = !{!2297, !2314}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2295, file: !1837, line: 105, baseType: !2298, size: 192)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2295, file: !1837, line: 94, size: 192, elements: !2299)
!2299 = !{!2300, !2301, !2302, !2306, !2307, !2308, !2309, !2311, !2312, !2313}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2298, file: !1837, line: 95, baseType: !529, size: 8)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !2298, file: !1837, line: 96, baseType: !529, size: 8, offset: 8)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "max_put_short", scope: !2298, file: !1837, line: 97, baseType: !2303, size: 8, offset: 16)
!2303 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !2304, line: 24, baseType: !2305)
!2304 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !354, line: 37, baseType: !102)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "ep_cfg_index", scope: !2298, file: !1837, line: 98, baseType: !1841, size: 8, offset: 24)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "rma_lane", scope: !2298, file: !1837, line: 99, baseType: !1913, size: 8, offset: 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "amo_lane", scope: !2298, file: !1837, line: 100, baseType: !1913, size: 8, offset: 40)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "amo_proto_index", scope: !2298, file: !1837, line: 101, baseType: !2310, size: 8, offset: 48)
!2310 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_rkey_proto_index_t", file: !1837, line: 24, baseType: !529)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "rma_proto_index", scope: !2298, file: !1837, line: 102, baseType: !2310, size: 8, offset: 56)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "rma_rkey", scope: !2298, file: !1837, line: 103, baseType: !1141, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "amo_rkey", scope: !2298, file: !1837, line: 104, baseType: !1141, size: 64, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, scope: !2295, file: !1837, line: 106, baseType: !2315, size: 24)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2295, file: !1837, line: 106, size: 24, elements: !2316)
!2316 = !{!2317, !2318, !2319}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2315, file: !1837, line: 107, baseType: !529, size: 8)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !2315, file: !1837, line: 108, baseType: !529, size: 8, offset: 8)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_index", scope: !2315, file: !1837, line: 109, baseType: !1841, size: 8, offset: 16)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "md_map", scope: !2292, file: !1837, line: 115, baseType: !588, size: 64, offset: 192)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "tl_rkey", scope: !2292, file: !1837, line: 116, baseType: !2322, offset: 256)
!2322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2323, elements: !1897)
!2323 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_tl_rkey_t", file: !1837, line: 34, baseType: !2324)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_tl_rkey", file: !1837, line: 31, size: 256, elements: !2325)
!2325 = !{!2326, !2333}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "rkey", scope: !2324, file: !1837, line: 32, baseType: !2327, size: 192)
!2327 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_rkey_bundle_t", file: !153, line: 1684, baseType: !2328)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uct_rkey_bundle", file: !153, line: 1680, size: 192, elements: !2329)
!2329 = !{!2330, !2331, !2332}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "rkey", scope: !2328, file: !153, line: 1681, baseType: !1141, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2328, file: !153, line: 1682, baseType: !339, size: 64, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2328, file: !153, line: 1683, baseType: !339, size: 64, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "cmpt", scope: !2324, file: !1837, line: 33, baseType: !509, size: 64, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2287, file: !381, line: 331, baseType: !551, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "md_index", scope: !2287, file: !381, line: 333, baseType: !585, size: 8, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "uct_memh", scope: !2287, file: !381, line: 336, baseType: !1166, size: 64, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "proto_reqs", scope: !2259, file: !381, line: 472, baseType: !2338, size: 64, offset: 640)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_hlist_head_t", file: !1092, line: 40, baseType: !2339)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_hlist_head", file: !1092, line: 38, size: 64, elements: !2340)
!2340 = !{!2341}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2339, file: !1092, line: 39, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, scope: !2259, file: !381, line: 481, baseType: !2344, size: 192, offset: 704)
!2344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2259, file: !381, line: 481, size: 192, elements: !2345)
!2345 = !{!2346, !2352}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ep_match", scope: !2344, file: !381, line: 482, baseType: !2347, size: 192)
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_ep_match_elem_t", file: !2250, line: 32, baseType: !2348)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2250, line: 29, size: 192, elements: !2349)
!2349 = !{!2350, !2351}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "dest_uuid", scope: !2348, file: !2250, line: 30, baseType: !351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "conn_match", scope: !2348, file: !2250, line: 31, baseType: !1087, size: 128, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "flush_state", scope: !2344, file: !381, line: 483, baseType: !2353, size: 128)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_ep_flush_state_t", file: !381, line: 454, baseType: !2354)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 449, size: 128, elements: !2355)
!2355 = !{!2356, !2357, !2358}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "reqs", scope: !2354, file: !381, line: 450, baseType: !2338, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "send_sn", scope: !2354, file: !381, line: 452, baseType: !361, size: 32, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "cmpl_sn", scope: !2354, file: !381, line: 453, baseType: !361, size: 32, offset: 96)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !2259, file: !381, line: 490, baseType: !2360, size: 256, offset: 896)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2259, file: !381, line: 486, size: 256, elements: !2361)
!2361 = !{!2362, !2363}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "ready_list", scope: !2360, file: !381, line: 487, baseType: !680, size: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "match_q", scope: !2360, file: !381, line: 488, baseType: !482, size: 128, offset: 128)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "am", scope: !2259, file: !381, line: 496, baseType: !2365, size: 256, offset: 1152)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2259, file: !381, line: 492, size: 256, elements: !2366)
!2366 = !{!2367, !2368}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "started_ams", scope: !2365, file: !381, line: 493, baseType: !680, size: 128)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "mid_rdesc_q", scope: !2365, file: !381, line: 494, baseType: !482, size: 128, offset: 128)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "uct_eps", scope: !2259, file: !381, line: 502, baseType: !1462, size: 64, offset: 1408)
!2370 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !238, line: 146, baseType: !2371, size: 64, offset: 64)
!2371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !238, line: 146, size: 64, elements: !2372)
!2372 = !{!2373, !2374}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2371, file: !238, line: 147, baseType: !339, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "flushed_cb", scope: !2371, file: !238, line: 148, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_request_callback_t", file: !170, line: 260, baseType: !2184)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "datatype", scope: !375, file: !238, line: 150, baseType: !350, size: 64, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !375, file: !238, line: 151, baseType: !551, size: 64, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !375, file: !238, line: 152, baseType: !346, size: 64, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !375, file: !238, line: 153, baseType: !1091, size: 128, offset: 320)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "proto_config", scope: !375, file: !238, line: 156, baseType: !2381, size: 64, offset: 448)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2077)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !375, file: !238, line: 176, baseType: !2384, size: 576, offset: 512)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !375, file: !238, line: 161, size: 576, elements: !2385)
!2385 = !{!2386, !2507}
!2386 = !DIDerivedType(tag: DW_TAG_member, scope: !2384, file: !238, line: 162, baseType: !2387, size: 448)
!2387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2384, file: !238, line: 162, size: 448, elements: !2388)
!2388 = !{!2389, !2480}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dt_iter", scope: !2387, file: !238, line: 163, baseType: !2390, size: 448)
!2390 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_datatype_iter_t", file: !2391, line: 69, baseType: !2392)
!2391 = !DIFile(filename: "dt/datatype_iter.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "961ccb71660907a4154418d8e9b54829")
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2391, line: 35, size: 448, elements: !2393)
!2393 = !{!2394, !2397, !2403, !2404, !2405}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dt_class", scope: !2392, file: !2391, line: 36, baseType: !2395, size: 32)
!2395 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_dt_class_t", file: !2396, line: 22, baseType: !219)
!2396 = !DIFile(filename: "dt/dt.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "05805b6250cffae8993297ba3ca02be4")
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "mem_info", scope: !2392, file: !2391, line: 37, baseType: !2398, size: 16, offset: 32)
!2398 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_memory_info_t", file: !2396, line: 60, baseType: !2399)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2396, line: 57, size: 16, elements: !2400)
!2400 = !{!2401, !2402}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2399, file: !2396, line: 58, baseType: !529, size: 8)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "sys_dev", scope: !2399, file: !2396, line: 59, baseType: !618, size: 8, offset: 8)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2392, file: !2391, line: 39, baseType: !551, size: 64, offset: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2392, file: !2391, line: 40, baseType: !551, size: 64, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2392, file: !2391, line: 68, baseType: !2406, size: 256, offset: 192)
!2406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2392, file: !2391, line: 41, size: 256, elements: !2407)
!2407 = !{!2408, !2427, !2465}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "contig", scope: !2406, file: !2391, line: 45, baseType: !2409, size: 128)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2406, file: !2391, line: 42, size: 128, elements: !2410)
!2410 = !{!2411, !2412}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2409, file: !2391, line: 43, baseType: !339, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "memh", scope: !2409, file: !2391, line: 44, baseType: !2413, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_mem_h", file: !138, line: 167, baseType: !2414)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_mem", file: !2416, line: 28, size: 960, elements: !2417)
!2416 = !DIFile(filename: "core/ucp_mm.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "0ac0a5be17d547705b049694576c358c")
!2417 = !{!2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "super", scope: !2415, file: !2416, line: 29, baseType: !668, size: 640)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2415, file: !2416, line: 30, baseType: !498, size: 64, offset: 640)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_method", scope: !2415, file: !2416, line: 31, baseType: !888, size: 32, offset: 704)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !2415, file: !2416, line: 32, baseType: !918, size: 32, offset: 736)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_md_index", scope: !2415, file: !2416, line: 33, baseType: !585, size: 8, offset: 768)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "md_map", scope: !2415, file: !2416, line: 34, baseType: !588, size: 64, offset: 832)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2415, file: !2416, line: 35, baseType: !2413, size: 64, offset: 896)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "uct", scope: !2415, file: !2416, line: 38, baseType: !2426, offset: 960)
!2426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1166, elements: !1897)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !2406, file: !2391, line: 51, baseType: !2428, size: 256)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2406, file: !2391, line: 46, size: 256, elements: !2429)
!2429 = !{!2430, !2431, !2432, !2464}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2428, file: !2391, line: 47, baseType: !339, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2428, file: !2391, line: 48, baseType: !551, size: 64, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dt_gen", scope: !2428, file: !2391, line: 49, baseType: !2433, size: 64, offset: 128)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_dt_generic_t", file: !2435, line: 20, baseType: !2436)
!2435 = !DIFile(filename: "dt/dt_generic.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "d341e678663a017539210021db76f97e")
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_dt_generic", file: !2435, line: 17, size: 448, elements: !2437)
!2437 = !{!2438, !2439}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2436, file: !2435, line: 18, baseType: !339, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2436, file: !2435, line: 19, baseType: !2440, size: 384, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_generic_dt_ops_t", file: !220, line: 992, baseType: !2441)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_generic_dt_ops", file: !220, line: 893, size: 384, elements: !2442)
!2442 = !{!2443, !2447, !2451, !2455, !2459, !2463}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "start_pack", scope: !2441, file: !220, line: 909, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!339, !339, !1083, !551}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "start_unpack", scope: !2441, file: !220, line: 925, baseType: !2448, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!339, !339, !339, !551}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "packed_size", scope: !2441, file: !220, line: 940, baseType: !2452, size: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!551, !339}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "pack", scope: !2441, file: !220, line: 958, baseType: !2456, size: 64, offset: 192)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!551, !339, !551, !339, !551}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "unpack", scope: !2441, file: !220, line: 975, baseType: !2460, size: 64, offset: 256)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!345, !339, !551, !1083, !551}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !2441, file: !220, line: 991, baseType: !878, size: 64, offset: 320)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2428, file: !2391, line: 50, baseType: !339, size: 64, offset: 192)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !2406, file: !2391, line: 67, baseType: !2466, size: 256)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2406, file: !2391, line: 52, size: 256, elements: !2467)
!2467 = !{!2468, !2476, !2477, !2478}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !2466, file: !2391, line: 53, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2471)
!2471 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_dt_iov_t", file: !220, line: 877, baseType: !2472)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_dt_iov", file: !220, line: 874, size: 128, elements: !2473)
!2473 = !{!2474, !2475}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2472, file: !220, line: 875, baseType: !339, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2472, file: !220, line: 876, baseType: !551, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "iov_index", scope: !2466, file: !2391, line: 57, baseType: !551, size: 64, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2466, file: !2391, line: 58, baseType: !551, size: 64, offset: 128)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "memh", scope: !2466, file: !2391, line: 59, baseType: !2479, size: 64, offset: 192)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dt", scope: !2387, file: !238, line: 164, baseType: !2481, size: 384)
!2481 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_dt_state_t", file: !2396, line: 51, baseType: !2482)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_dt_state", file: !2396, line: 37, size: 384, elements: !2483)
!2483 = !{!2484, !2485}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2482, file: !2396, line: 38, baseType: !551, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dt", scope: !2482, file: !2396, line: 50, baseType: !2486, size: 320, offset: 64)
!2486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2482, file: !2396, line: 39, size: 320, elements: !2487)
!2487 = !{!2488, !2495, !2503}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "contig", scope: !2486, file: !2396, line: 40, baseType: !2489, size: 320)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_dt_reg_t", file: !2396, line: 31, baseType: !2490)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_dt_reg", file: !2396, line: 28, size: 320, elements: !2491)
!2491 = !{!2492, !2493}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "md_map", scope: !2490, file: !2396, line: 29, baseType: !588, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "memh", scope: !2490, file: !2396, line: 30, baseType: !2494, size: 256, offset: 64)
!2494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1166, size: 256, elements: !34)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !2486, file: !2396, line: 46, baseType: !2496, size: 256)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2486, file: !2396, line: 41, size: 256, elements: !2497)
!2497 = !{!2498, !2499, !2500, !2501}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2496, file: !2396, line: 42, baseType: !551, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "iovcnt_offset", scope: !2496, file: !2396, line: 43, baseType: !551, size: 64, offset: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "iovcnt", scope: !2496, file: !2396, line: 44, baseType: !551, size: 64, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dt_reg", scope: !2496, file: !2396, line: 45, baseType: !2502, size: 64, offset: 192)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !2486, file: !2396, line: 49, baseType: !2504, size: 64)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2486, file: !2396, line: 47, size: 64, elements: !2505)
!2505 = !{!2506}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2504, file: !2396, line: 48, baseType: !339, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, scope: !2384, file: !238, line: 166, baseType: !2508, size: 128, offset: 448)
!2508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2384, file: !238, line: 166, size: 128, elements: !2509)
!2509 = !{!2510, !2511}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "uct_comp", scope: !2508, file: !238, line: 168, baseType: !1170, size: 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "completed_size", scope: !2508, file: !238, line: 174, baseType: !551, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !238, line: 178, baseType: !2513, size: 384, offset: 1088)
!2513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !238, line: 178, size: 384, elements: !2514)
!2514 = !{!2515, !2525, !2550, !2555, !2563, !2571, !2610, !2614, !2620, !2625, !2635, !2639, !2646, !2654, !2660, !2664}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "wireup", scope: !2513, file: !238, line: 179, baseType: !2516, size: 160)
!2516 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_wireup_msg_t", file: !2517, line: 123, baseType: !2518)
!2517 = !DIFile(filename: "wireup/wireup.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "ce152c402028d41f90d6d8dfd5f946b0")
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_wireup_msg", file: !2517, line: 114, size: 160, elements: !2519)
!2519 = !{!2520, !2521, !2522, !2523, !2524}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2518, file: !2517, line: 115, baseType: !529, size: 8)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "err_mode", scope: !2518, file: !2517, line: 116, baseType: !529, size: 8, offset: 8)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "conn_sn", scope: !2518, file: !2517, line: 118, baseType: !2249, size: 16, offset: 16)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "src_ep_id", scope: !2518, file: !2517, line: 119, baseType: !351, size: 64, offset: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "dst_ep_id", scope: !2518, file: !2517, line: 120, baseType: !351, size: 64, offset: 96)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "msg_proto", scope: !2513, file: !238, line: 200, baseType: !2526, size: 320)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2513, file: !238, line: 181, size: 320, elements: !2527)
!2527 = !{!2528, !2529}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "message_id", scope: !2526, file: !238, line: 183, baseType: !351, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, scope: !2526, file: !238, line: 184, baseType: !2530, size: 256, offset: 64)
!2530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2526, file: !238, line: 184, size: 256, elements: !2531)
!2531 = !{!2532, !2533}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !2530, file: !238, line: 185, baseType: !1775, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "am", scope: !2530, file: !238, line: 198, baseType: !2534, size: 224)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2530, file: !238, line: 187, size: 224, elements: !2535)
!2535 = !{!2536, !2548, !2549}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2534, file: !238, line: 194, baseType: !2537, size: 192)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2534, file: !238, line: 188, size: 192, elements: !2538)
!2538 = !{!2539, !2540, !2547}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "user_ptr", scope: !2537, file: !238, line: 189, baseType: !339, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "reg_desc", scope: !2537, file: !238, line: 190, baseType: !2541, size: 64, offset: 64)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_mem_desc_t", file: !170, line: 80, baseType: !2543)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_mem_desc", file: !2416, line: 46, size: 128, elements: !2544)
!2544 = !{!2545, !2546}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "memh", scope: !2543, file: !2416, line: 47, baseType: !2413, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2543, file: !2416, line: 48, baseType: !339, size: 64, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2537, file: !238, line: 193, baseType: !361, size: 32, offset: 128)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "am_id", scope: !2534, file: !238, line: 196, baseType: !621, size: 16, offset: 192)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2534, file: !238, line: 197, baseType: !621, size: 16, offset: 208)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "rma", scope: !2513, file: !238, line: 205, baseType: !2551, size: 128)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2513, file: !238, line: 202, size: 128, elements: !2552)
!2552 = !{!2553, !2554}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr", scope: !2551, file: !238, line: 203, baseType: !351, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "rkey", scope: !2551, file: !238, line: 204, baseType: !2290, size: 64, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !2513, file: !238, line: 216, baseType: !2556, size: 256)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2513, file: !238, line: 207, size: 256, elements: !2557)
!2557 = !{!2558, !2559, !2560, !2561, !2562}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "remote_req_id", scope: !2556, file: !238, line: 209, baseType: !364, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "am_id", scope: !2556, file: !238, line: 210, baseType: !529, size: 8, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2556, file: !238, line: 211, baseType: !345, size: 8, offset: 72)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "sender_tag", scope: !2556, file: !238, line: 212, baseType: !1775, size: 64, offset: 128)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "comp_cb", scope: !2556, file: !238, line: 214, baseType: !2375, size: 64, offset: 192)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !2513, file: !238, line: 221, baseType: !2564, size: 128)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2513, file: !238, line: 218, size: 128, elements: !2565)
!2565 = !{!2566, !2567}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "req", scope: !2564, file: !238, line: 219, baseType: !1312, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "wireup_ep", scope: !2564, file: !238, line: 220, baseType: !2568, size: 64, offset: 64)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_wireup_ep_t", file: !170, line: 70, baseType: !2570)
!2570 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_wireup_ep", file: !170, line: 70, flags: DIFlagFwdDecl)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "rndv", scope: !2513, file: !238, line: 280, baseType: !2572, size: 384)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2513, file: !238, line: 223, size: 384, elements: !2573)
!2573 = !{!2574, !2575, !2576, !2577, !2582}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "remote_req_id", scope: !2572, file: !238, line: 225, baseType: !364, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "remote_address", scope: !2572, file: !238, line: 228, baseType: !351, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "rkey", scope: !2572, file: !238, line: 231, baseType: !2290, size: 64, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, scope: !2572, file: !238, line: 233, baseType: !2578, size: 64, offset: 192)
!2578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2572, file: !238, line: 233, size: 64, elements: !2579)
!2579 = !{!2580, !2581}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "mdesc", scope: !2578, file: !238, line: 235, baseType: !2541, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_ptr_addr", scope: !2578, file: !238, line: 238, baseType: !339, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, scope: !2572, file: !238, line: 241, baseType: !2583, size: 128, offset: 256)
!2583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2572, file: !238, line: 241, size: 128, elements: !2584)
!2584 = !{!2585, !2590}
!2585 = !DIDerivedType(tag: DW_TAG_member, scope: !2583, file: !238, line: 243, baseType: !2586, size: 32)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2583, file: !238, line: 243, size: 32, elements: !2587)
!2587 = !{!2588, !2589}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "lanes_map_all", scope: !2586, file: !238, line: 245, baseType: !1946, size: 16)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "lanes_count", scope: !2586, file: !238, line: 248, baseType: !529, size: 8, offset: 16)
!2590 = !DIDerivedType(tag: DW_TAG_member, scope: !2583, file: !238, line: 252, baseType: !2591, size: 128)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2583, file: !238, line: 252, size: 128, elements: !2592)
!2592 = !{!2593, !2594}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2591, file: !238, line: 254, baseType: !551, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, scope: !2591, file: !238, line: 256, baseType: !2595, size: 64, offset: 64)
!2595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2591, file: !238, line: 256, size: 64, elements: !2596)
!2596 = !{!2597, !2602, !2606}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2595, file: !238, line: 264, baseType: !2598, size: 32)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2595, file: !238, line: 258, size: 32, elements: !2599)
!2599 = !{!2600, !2601}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "flush_map", scope: !2598, file: !238, line: 260, baseType: !1946, size: 16)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "atp_map", scope: !2598, file: !238, line: 263, baseType: !1946, size: 16, offset: 16)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "ppln", scope: !2595, file: !238, line: 270, baseType: !2603, size: 64)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2595, file: !238, line: 267, size: 64, elements: !2604)
!2604 = !{!2605}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "ack_data_size", scope: !2603, file: !238, line: 269, baseType: !551, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_ptr", scope: !2595, file: !238, line: 276, baseType: !2607, size: 64)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2595, file: !238, line: 273, size: 64, elements: !2608)
!2608 = !{!2609}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "queue_elem", scope: !2607, file: !238, line: 275, baseType: !488, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_data", scope: !2513, file: !238, line: 285, baseType: !2611, size: 64)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2513, file: !238, line: 282, size: 64, elements: !2612)
!2612 = !{!2613}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "remote_req_id", scope: !2611, file: !238, line: 284, baseType: !364, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "rkey_ptr", scope: !2513, file: !238, line: 294, baseType: !2615, size: 192)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2513, file: !238, line: 287, size: 192, elements: !2616)
!2616 = !{!2617, !2618, !2619}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "queue_elem", scope: !2615, file: !238, line: 289, baseType: !488, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "remote_req_id", scope: !2615, file: !238, line: 291, baseType: !364, size: 64, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "rkey", scope: !2615, file: !238, line: 293, baseType: !2290, size: 64, offset: 128)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_rtr", scope: !2513, file: !238, line: 302, baseType: !2621, size: 128)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2513, file: !238, line: 296, size: 128, elements: !2622)
!2622 = !{!2623, !2624}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2621, file: !238, line: 299, baseType: !551, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2621, file: !238, line: 301, baseType: !551, size: 64, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2513, file: !238, line: 313, baseType: !2626, size: 160)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2513, file: !238, line: 304, size: 160, elements: !2627)
!2627 = !{!2628, !2629, !2630, !2631, !2632, !2633, !2634}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "uct_flags", scope: !2626, file: !238, line: 305, baseType: !139, size: 32)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "prog_id", scope: !2626, file: !238, line: 306, baseType: !1717, size: 32, offset: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "cmpl_sn", scope: !2626, file: !238, line: 307, baseType: !361, size: 32, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "sw_started", scope: !2626, file: !238, line: 309, baseType: !529, size: 8, offset: 96)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "sw_done", scope: !2626, file: !238, line: 310, baseType: !529, size: 8, offset: 104)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "num_lanes", scope: !2626, file: !238, line: 311, baseType: !529, size: 8, offset: 112)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "started_lanes", scope: !2626, file: !238, line: 312, baseType: !1946, size: 16, offset: 128)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate", scope: !2513, file: !238, line: 317, baseType: !2636, size: 64)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2513, file: !238, line: 315, size: 64, elements: !2637)
!2637 = !{!2638}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !2636, file: !238, line: 316, baseType: !384, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "discard_uct_ep", scope: !2513, file: !238, line: 329, baseType: !2640, size: 192)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2513, file: !238, line: 319, size: 192, elements: !2641)
!2641 = !{!2642, !2643, !2644, !2645}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "uct_ep", scope: !2640, file: !238, line: 321, baseType: !1136, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "ep_flush_flags", scope: !2640, file: !238, line: 323, baseType: !139, size: 32, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "cb_id", scope: !2640, file: !238, line: 326, baseType: !1717, size: 32, offset: 96)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "rsc_index", scope: !2640, file: !238, line: 328, baseType: !528, size: 8, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "amo", scope: !2513, file: !238, line: 336, baseType: !2647, size: 256)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2513, file: !238, line: 331, size: 256, elements: !2648)
!2648 = !{!2649, !2650, !2651, !2652}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr", scope: !2647, file: !238, line: 332, baseType: !351, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "rkey", scope: !2647, file: !238, line: 333, baseType: !2290, size: 64, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2647, file: !238, line: 334, baseType: !351, size: 64, offset: 128)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "uct_op", scope: !2647, file: !238, line: 335, baseType: !2653, size: 32, offset: 192)
!2653 = !DIDerivedType(tag: DW_TAG_typedef, name: "uct_atomic_op_t", file: !153, line: 355, baseType: !228)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "tag_offload", scope: !2513, file: !238, line: 343, baseType: !2655, size: 192)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2513, file: !238, line: 338, size: 192, elements: !2656)
!2656 = !{!2657, !2658, !2659}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2655, file: !238, line: 339, baseType: !488, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "ssend_tag", scope: !2655, file: !238, line: 340, baseType: !1775, size: 64, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "rndv_op", scope: !2655, file: !238, line: 341, baseType: !339, size: 64, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "get_reply", scope: !2513, file: !238, line: 348, baseType: !2661, size: 64)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2513, file: !238, line: 345, size: 64, elements: !2662)
!2662 = !{!2663}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "remote_req_id", scope: !2661, file: !238, line: 347, baseType: !364, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_reply", scope: !2513, file: !238, line: 355, baseType: !2665, size: 128)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2513, file: !238, line: 350, size: 128, elements: !2666)
!2666 = !{!2667, !2668}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "remote_req_id", scope: !2665, file: !238, line: 352, baseType: !364, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2665, file: !238, line: 354, baseType: !2669, size: 64, offset: 64)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_atomic_reply_t", file: !2670, line: 46, baseType: !2671)
!2670 = !DIFile(filename: "rma/rma.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "d0172056c48715e080ccef914a8bf566")
!2671 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !2670, line: 43, size: 64, elements: !2672)
!2672 = !{!2673, !2674}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "reply32", scope: !2671, file: !2670, line: 44, baseType: !361, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "reply64", scope: !2671, file: !2670, line: 45, baseType: !351, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !238, line: 358, baseType: !2676, size: 16, offset: 1472)
!2676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !238, line: 358, size: 16, elements: !2677)
!2677 = !{!2678, !2679, !2680}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "am_bw_index", scope: !2676, file: !238, line: 359, baseType: !1913, size: 8)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "multi_lane_idx", scope: !2676, file: !238, line: 360, baseType: !1913, size: 8)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "lanes_map_avail", scope: !2676, file: !238, line: 361, baseType: !1946, size: 16)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !375, file: !238, line: 363, baseType: !529, size: 8, offset: 1488)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "pending_lane", scope: !375, file: !238, line: 365, baseType: !1913, size: 8, offset: 1496)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "lane", scope: !375, file: !238, line: 367, baseType: !1913, size: 8, offset: 1504)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "proto_stage", scope: !375, file: !238, line: 368, baseType: !529, size: 8, offset: 1512)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "uct", scope: !375, file: !238, line: 369, baseType: !1313, size: 384, offset: 1536)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !372, file: !238, line: 441, baseType: !2687, size: 1856)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !372, file: !238, line: 373, size: 1856, elements: !2688)
!2688 = !{!2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2699, !2700, !2706, !2707}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2687, file: !238, line: 374, baseType: !488, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2687, file: !238, line: 375, baseType: !339, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "datatype", scope: !2687, file: !238, line: 376, baseType: !350, size: 64, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2687, file: !238, line: 377, baseType: !551, size: 64, offset: 192)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !2687, file: !238, line: 378, baseType: !918, size: 32, offset: 256)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "op_attr", scope: !2687, file: !238, line: 379, baseType: !361, size: 32, offset: 288)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2687, file: !238, line: 380, baseType: !2481, size: 384, offset: 320)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !2687, file: !238, line: 381, baseType: !2697, size: 64, offset: 704)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_worker_t", file: !387, line: 359, baseType: !386)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "uct_ctx", scope: !2687, file: !238, line: 382, baseType: !1286, size: 448, offset: 768)
!2700 = !DIDerivedType(tag: DW_TAG_member, scope: !2687, file: !238, line: 383, baseType: !2701, size: 64, offset: 1216)
!2701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2687, file: !238, line: 383, size: 64, elements: !2702)
!2702 = !{!2703, !2704, !2705}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !2701, file: !238, line: 385, baseType: !1147, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2701, file: !238, line: 388, baseType: !551, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "user_memh", scope: !2701, file: !238, line: 392, baseType: !2413, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "remote_req_id", scope: !2687, file: !238, line: 396, baseType: !364, size: 64, offset: 1280)
!2707 = !DIDerivedType(tag: DW_TAG_member, scope: !2687, file: !238, line: 404, baseType: !2708, size: 512, offset: 1344)
!2708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2687, file: !238, line: 404, size: 512, elements: !2709)
!2709 = !{!2710, !2735, !2739, !2749}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !2708, file: !238, line: 424, baseType: !2711, size: 512)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2708, file: !238, line: 405, size: 512, elements: !2712)
!2712 = !{!2713, !2714, !2715, !2716, !2728, !2729, !2734}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !2711, file: !238, line: 406, baseType: !1775, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "tag_mask", scope: !2711, file: !238, line: 407, baseType: !1775, size: 64, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "sn", scope: !2711, file: !238, line: 408, baseType: !351, size: 64, offset: 128)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !2711, file: !238, line: 409, baseType: !2717, size: 64, offset: 192)
!2717 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_tag_recv_nbx_callback_t", file: !138, line: 518, baseType: !2718)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{null, !339, !345, !2721, !339}
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2723)
!2723 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_tag_recv_info_t", file: !138, line: 30, baseType: !2724)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_tag_recv_info", file: !220, line: 1685, size: 128, elements: !2725)
!2725 = !{!2726, !2727}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "sender_tag", scope: !2724, file: !220, line: 1687, baseType: !1775, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2724, file: !220, line: 1689, baseType: !551, size: 64, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2711, file: !238, line: 410, baseType: !2723, size: 128, offset: 256)
!2729 = !DIDerivedType(tag: DW_TAG_member, scope: !2711, file: !238, line: 414, baseType: !2730, size: 64, offset: 384)
!2730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2711, file: !238, line: 414, size: 64, elements: !2731)
!2731 = !{!2732, !2733}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "rdesc", scope: !2730, file: !238, line: 415, baseType: !2541, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "non_contig_buf", scope: !2730, file: !238, line: 416, baseType: !339, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "wiface", scope: !2711, file: !238, line: 421, baseType: !1118, size: 64, offset: 448)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !2708, file: !238, line: 428, baseType: !2736, size: 64)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2708, file: !238, line: 426, size: 64, elements: !2737)
!2737 = !{!2738}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2736, file: !238, line: 427, baseType: !551, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !2708, file: !238, line: 434, baseType: !2740, size: 192)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2708, file: !238, line: 430, size: 192, elements: !2741)
!2741 = !{!2742, !2747, !2748}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !2740, file: !238, line: 431, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_stream_recv_nbx_callback_t", file: !138, line: 470, baseType: !2744)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{null, !339, !345, !551, !339}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2740, file: !238, line: 432, baseType: !551, size: 64, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2740, file: !238, line: 433, baseType: !551, size: 64, offset: 128)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "am", scope: !2708, file: !238, line: 439, baseType: !2750, size: 128)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2708, file: !238, line: 436, size: 128, elements: !2751)
!2751 = !{!2752, !2754}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !2750, file: !238, line: 437, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_am_recv_data_nbx_callback_t", file: !138, line: 540, baseType: !2744)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2750, file: !238, line: 438, baseType: !2755, size: 64, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_recv_desc_t", file: !170, line: 66, baseType: !2757)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucp_recv_desc", file: !238, line: 470, size: 384, elements: !2758)
!2758 = !{!2759, !2773, !2774, !2775, !2776}
!2759 = !DIDerivedType(tag: DW_TAG_member, scope: !2757, file: !238, line: 471, baseType: !2760, size: 256)
!2760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2757, file: !238, line: 471, size: 256, elements: !2761)
!2761 = !{!2762, !2764, !2765, !2766, !2772}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list", scope: !2760, file: !238, line: 472, baseType: !2763, size: 256)
!2763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 256, elements: !636)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "stream_queue", scope: !2760, file: !238, line: 473, baseType: !488, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "tag_frag_queue", scope: !2760, file: !238, line: 474, baseType: !488, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "am_first", scope: !2760, file: !238, line: 475, baseType: !2767, size: 192)
!2767 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_am_first_desc_t", file: !1782, line: 119, baseType: !2768)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1782, line: 116, size: 192, elements: !2769)
!2769 = !{!2770, !2771}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2768, file: !1782, line: 117, baseType: !680, size: 128)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "remaining", scope: !2768, file: !1782, line: 118, baseType: !551, size: 64, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "am_mid_queue", scope: !2760, file: !238, line: 477, baseType: !488, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2757, file: !238, line: 479, baseType: !361, size: 32, offset: 256)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "payload_offset", scope: !2757, file: !238, line: 480, baseType: !361, size: 32, offset: 288)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2757, file: !238, line: 482, baseType: !621, size: 16, offset: 320)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "release_desc_offset", scope: !2757, file: !238, line: 483, baseType: !2777, size: 16, offset: 336)
!2777 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !2304, line: 25, baseType: !2778)
!2778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !354, line: 39, baseType: !442)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "flush_worker", scope: !372, file: !238, line: 450, baseType: !2780, size: 320)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !372, file: !238, line: 443, size: 320, elements: !2781)
!2781 = !{!2782, !2783, !2784, !2785, !2786, !2787}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !2780, file: !238, line: 444, baseType: !384, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !2780, file: !238, line: 445, baseType: !346, size: 64, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "prog_id", scope: !2780, file: !238, line: 446, baseType: !1717, size: 32, offset: 128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "next_ep_ext", scope: !2780, file: !238, line: 447, baseType: !2257, size: 64, offset: 192)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "comp_count", scope: !2780, file: !238, line: 448, baseType: !420, size: 32, offset: 256)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "uct_flags", scope: !2780, file: !238, line: 449, baseType: !139, size: 32, offset: 288)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_log_component_config_t", file: !144, line: 150, baseType: !2790)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_log_component_config", file: !144, line: 146, size: 256, elements: !2791)
!2791 = !{!2792, !2794, !2795}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "log_level", scope: !2790, file: !144, line: 147, baseType: !2793, size: 32)
!2793 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_log_level_t", file: !144, line: 31, baseType: !278)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2790, file: !144, line: 148, baseType: !9, size: 128, offset: 32)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "file_filter", scope: !2790, file: !144, line: 149, baseType: !1106, size: 64, offset: 192)
!2796 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_send_callback_t", file: !138, line: 319, baseType: !2797)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{null, !339, !345}
!2800 = !{!0, !7, !12, !18, !24, !29, !31, !36, !38, !44, !49, !54, !59, !64, !67, !72, !77, !82, !87, !91, !96}
!2801 = !{i32 7, !"Dwarf Version", i32 5}
!2802 = !{i32 2, !"Debug Info Version", i32 3}
!2803 = !{i32 1, !"wchar_size", i32 4}
!2804 = !{i32 8, !"PIC Level", i32 2}
!2805 = !{i32 7, !"uwtable", i32 2}
!2806 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!2807 = distinct !DISubprogram(name: "ucs_array_ep_config_arr_grow", scope: !2, file: !2, line: 26, type: !2808, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !2811)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!345, !2810, !139}
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!2811 = !{!2812, !2813, !2814, !2815}
!2812 = !DILocalVariable(name: "array", arg: 1, scope: !2807, file: !2, line: 26, type: !2810)
!2813 = !DILocalVariable(name: "min_capacity", arg: 2, scope: !2807, file: !2, line: 26, type: !139)
!2814 = !DILocalVariable(name: "status", scope: !2807, file: !2, line: 26, type: !345)
!2815 = !DILocalVariable(name: "capacity", scope: !2807, file: !2, line: 26, type: !551)
!2816 = !{!2817, !2817, i64 0}
!2817 = !{!"any pointer", !2818, i64 0}
!2818 = !{!"omnipotent char", !2819, i64 0}
!2819 = !{!"Simple C/C++ TBAA"}
!2820 = !DILocation(line: 26, column: 1, scope: !2807)
!2821 = !{!2822, !2822, i64 0}
!2822 = !{!"int", !2818, i64 0}
!2823 = !DILocation(line: 26, column: 1, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2807, file: !2, line: 26, column: 1)
!2825 = !{!2826, !2822, i64 12}
!2826 = !{!"", !2817, i64 0, !2822, i64 8, !2822, i64 12}
!2827 = !DILocation(line: 26, column: 1, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2824, file: !2, line: 26, column: 1)
!2829 = !{!2830, !2830, i64 0}
!2830 = !{!"long", !2818, i64 0}
!2831 = !{!2818, !2818, i64 0}
!2832 = !DILocation(line: 26, column: 1, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2807, file: !2, line: 26, column: 1)
!2834 = !DILocation(line: 26, column: 1, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2833, file: !2, line: 26, column: 1)
!2836 = !DISubprogram(name: "ucs_array_grow", scope: !2837, file: !2837, line: 81, type: !2838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2837 = !DIFile(filename: "ucs/datastruct/array.inl", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "243590beb8a1c9425d0466059b056c4a")
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!345, !338, !819, !551, !551, !1106, !1106}
!2840 = distinct !DISubprogram(name: "ucs_array_ep_config_arr_reserve", scope: !2, file: !2, line: 26, type: !2808, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !2841)
!2841 = !{!2842, !2843}
!2842 = !DILocalVariable(name: "array", arg: 1, scope: !2840, file: !2, line: 26, type: !2810)
!2843 = !DILocalVariable(name: "min_capacity", arg: 2, scope: !2840, file: !2, line: 26, type: !139)
!2844 = !DILocation(line: 26, column: 1, scope: !2840)
!2845 = !DILocation(line: 26, column: 1, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2840, file: !2, line: 26, column: 1)
!2847 = !DILocation(line: 26, column: 1, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2846, file: !2, line: 26, column: 1)
!2849 = distinct !DISubprogram(name: "ucs_array_ep_config_arr_append", scope: !2, file: !2, line: 26, type: !2850, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !2852)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!345, !2810}
!2852 = !{!2853, !2854}
!2853 = !DILocalVariable(name: "array", arg: 1, scope: !2849, file: !2, line: 26, type: !2810)
!2854 = !DILocalVariable(name: "status", scope: !2849, file: !2, line: 26, type: !345)
!2855 = !DILocation(line: 26, column: 1, scope: !2849)
!2856 = !{!2826, !2822, i64 8}
!2857 = !DILocation(line: 26, column: 1, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2849, file: !2, line: 26, column: 1)
!2859 = !DILocation(line: 26, column: 1, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2858, file: !2, line: 26, column: 1)
!2861 = distinct !DISubprogram(name: "ucp_worker_is_tl_2sockaddr", scope: !2, file: !2, line: 215, type: !2862, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !2864)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!420, !384, !528}
!2864 = !{!2865, !2866}
!2865 = !DILocalVariable(name: "worker", arg: 1, scope: !2861, file: !2, line: 215, type: !384)
!2866 = !DILocalVariable(name: "rsc_index", arg: 2, scope: !2861, file: !2, line: 215, type: !528)
!2867 = !DILocation(line: 215, column: 41, scope: !2861)
!2868 = !DILocation(line: 215, column: 65, scope: !2861)
!2869 = !DILocation(line: 217, column: 41, scope: !2861)
!2870 = !DILocation(line: 217, column: 49, scope: !2861)
!2871 = !DILocation(line: 217, column: 15, scope: !2861)
!2872 = !DILocation(line: 217, column: 61, scope: !2861)
!2873 = !DILocation(line: 217, column: 65, scope: !2861)
!2874 = !{!2875, !2830, i64 296}
!2875 = !{!"uct_iface_attr", !2876, i64 0, !2830, i64 312, !2830, i64 320, !2830, i64 328, !2830, i64 336, !2883, i64 344, !2885, i64 472, !2886, i64 480, !2887, i64 496, !2818, i64 512, !2830, i64 520, !2822, i64 528}
!2876 = !{!"", !2877, i64 0, !2877, i64 56, !2878, i64 112, !2879, i64 176, !2882, i64 264, !2882, i64 280, !2830, i64 296, !2830, i64 304}
!2877 = !{!"", !2830, i64 0, !2830, i64 8, !2830, i64 16, !2830, i64 24, !2830, i64 32, !2830, i64 40, !2830, i64 48}
!2878 = !{!"", !2830, i64 0, !2830, i64 8, !2830, i64 16, !2830, i64 24, !2830, i64 32, !2830, i64 40, !2830, i64 48, !2830, i64 56}
!2879 = !{!"", !2880, i64 0, !2880, i64 32, !2881, i64 64}
!2880 = !{!"", !2830, i64 0, !2830, i64 8, !2830, i64 16, !2830, i64 24}
!2881 = !{!"", !2830, i64 0, !2830, i64 8, !2830, i64 16}
!2882 = !{!"", !2830, i64 0, !2830, i64 8}
!2883 = !{!"sockaddr_storage", !2884, i64 0, !2818, i64 2, !2830, i64 120}
!2884 = !{!"short", !2818, i64 0}
!2885 = !{!"double", !2818, i64 0}
!2886 = !{!"uct_ppn_bandwidth", !2885, i64 0, !2885, i64 8}
!2887 = !{!"", !2885, i64 0, !2885, i64 8}
!2888 = !DILocation(line: 217, column: 71, scope: !2861)
!2889 = !DILocation(line: 217, column: 13, scope: !2861)
!2890 = !DILocation(line: 217, column: 12, scope: !2861)
!2891 = !DILocation(line: 217, column: 5, scope: !2861)
!2892 = distinct !DISubprogram(name: "ucp_worker_iface_get_attr", scope: !2, file: !2, line: 129, type: !2893, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !2895)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!1550, !384, !528}
!2895 = !{!2896, !2897}
!2896 = !DILocalVariable(name: "worker", arg: 1, scope: !2892, file: !2, line: 129, type: !384)
!2897 = !DILocalVariable(name: "rsc_index", arg: 2, scope: !2892, file: !2, line: 129, type: !528)
!2898 = !DILocation(line: 129, column: 40, scope: !2892)
!2899 = !DILocation(line: 129, column: 64, scope: !2892)
!2900 = !DILocation(line: 131, column: 30, scope: !2892)
!2901 = !DILocation(line: 131, column: 38, scope: !2892)
!2902 = !DILocation(line: 131, column: 13, scope: !2892)
!2903 = !DILocation(line: 131, column: 50, scope: !2892)
!2904 = !DILocation(line: 131, column: 5, scope: !2892)
!2905 = distinct !DISubprogram(name: "ucp_rma_request_advance", scope: !14, file: !14, line: 70, type: !2906, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !2908)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!345, !355, !1147, !345, !364}
!2908 = !{!2909, !2910, !2911, !2912}
!2909 = !DILocalVariable(name: "req", arg: 1, scope: !2905, file: !14, line: 70, type: !355)
!2910 = !DILocalVariable(name: "frag_length", arg: 2, scope: !2905, file: !14, line: 70, type: !1147)
!2911 = !DILocalVariable(name: "status", arg: 3, scope: !2905, file: !14, line: 71, type: !345)
!2912 = !DILocalVariable(name: "req_id", arg: 4, scope: !2905, file: !14, line: 72, type: !364)
!2913 = !DILocation(line: 70, column: 53, scope: !2905)
!2914 = !DILocation(line: 70, column: 66, scope: !2905)
!2915 = !DILocation(line: 71, column: 51, scope: !2905)
!2916 = !DILocation(line: 72, column: 56, scope: !2905)
!2917 = !DILocation(line: 76, column: 36, scope: !2905)
!2918 = !DILocation(line: 77, column: 36, scope: !2905)
!2919 = !DILocation(line: 76, column: 5, scope: !2905)
!2920 = !DILocation(line: 79, column: 9, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2905, file: !14, line: 79, column: 9)
!2922 = !DILocation(line: 79, column: 9, scope: !2905)
!2923 = !DILocation(line: 80, column: 13, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !14, line: 80, column: 13)
!2925 = distinct !DILexicalBlock(scope: !2921, file: !14, line: 79, column: 50)
!2926 = !DILocation(line: 80, column: 20, scope: !2924)
!2927 = !DILocation(line: 80, column: 13, scope: !2925)
!2928 = !DILocation(line: 81, column: 13, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2924, file: !14, line: 80, column: 44)
!2930 = !DILocation(line: 84, column: 9, scope: !2925)
!2931 = !DILocation(line: 89, column: 25, scope: !2905)
!2932 = !DILocation(line: 89, column: 5, scope: !2905)
!2933 = !DILocation(line: 89, column: 10, scope: !2905)
!2934 = !DILocation(line: 89, column: 15, scope: !2905)
!2935 = !DILocation(line: 89, column: 22, scope: !2905)
!2936 = !DILocation(line: 90, column: 9, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2905, file: !14, line: 90, column: 9)
!2938 = !DILocation(line: 90, column: 14, scope: !2937)
!2939 = !DILocation(line: 90, column: 19, scope: !2937)
!2940 = !DILocation(line: 90, column: 26, scope: !2937)
!2941 = !DILocation(line: 90, column: 9, scope: !2905)
!2942 = !DILocation(line: 92, column: 48, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2937, file: !14, line: 90, column: 32)
!2944 = !DILocation(line: 92, column: 9, scope: !2943)
!2945 = !DILocation(line: 93, column: 9, scope: !2943)
!2946 = !DILocation(line: 95, column: 34, scope: !2905)
!2947 = !DILocation(line: 95, column: 5, scope: !2905)
!2948 = !DILocation(line: 95, column: 10, scope: !2905)
!2949 = !DILocation(line: 95, column: 15, scope: !2905)
!2950 = !DILocation(line: 95, column: 32, scope: !2905)
!2951 = !DILocation(line: 96, column: 34, scope: !2905)
!2952 = !DILocation(line: 96, column: 5, scope: !2905)
!2953 = !DILocation(line: 96, column: 10, scope: !2905)
!2954 = !DILocation(line: 96, column: 15, scope: !2905)
!2955 = !DILocation(line: 96, column: 19, scope: !2905)
!2956 = !DILocation(line: 96, column: 31, scope: !2905)
!2957 = !DILocation(line: 97, column: 5, scope: !2905)
!2958 = !DILocation(line: 98, column: 1, scope: !2905)
!2959 = distinct !DISubprogram(name: "ucp_request_send_state_advance", scope: !40, file: !40, line: 471, type: !2960, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !2964)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{null, !355, !2962, !139, !345}
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2481)
!2964 = !{!2965, !2966, !2967, !2968}
!2965 = !DILocalVariable(name: "req", arg: 1, scope: !2959, file: !40, line: 471, type: !355)
!2966 = !DILocalVariable(name: "new_dt_state", arg: 2, scope: !2959, file: !40, line: 472, type: !2962)
!2967 = !DILocalVariable(name: "proto", arg: 3, scope: !2959, file: !40, line: 473, type: !139)
!2968 = !DILocalVariable(name: "status", arg: 4, scope: !2959, file: !40, line: 473, type: !345)
!2969 = !DILocation(line: 471, column: 47, scope: !2959)
!2970 = !DILocation(line: 472, column: 54, scope: !2959)
!2971 = !DILocation(line: 473, column: 41, scope: !2959)
!2972 = !DILocation(line: 473, column: 61, scope: !2959)
!2973 = !DILocation(line: 475, column: 9, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2959, file: !40, line: 475, column: 9)
!2975 = !DILocation(line: 475, column: 16, scope: !2974)
!2976 = !DILocation(line: 475, column: 9, scope: !2959)
!2977 = !DILocation(line: 478, column: 9, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2974, file: !40, line: 475, column: 40)
!2979 = !DILocation(line: 481, column: 9, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2959, file: !40, line: 481, column: 9)
!2981 = !DILocation(line: 481, column: 9, scope: !2959)
!2982 = !DILocation(line: 482, column: 35, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2980, file: !40, line: 481, column: 50)
!2984 = !DILocation(line: 482, column: 40, scope: !2983)
!2985 = !DILocation(line: 482, column: 9, scope: !2983)
!2986 = !DILocation(line: 483, column: 9, scope: !2983)
!2987 = !DILocation(line: 486, column: 13, scope: !2959)
!2988 = !DILocation(line: 486, column: 5, scope: !2959)
!2989 = !DILocation(line: 491, column: 13, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !40, line: 491, column: 13)
!2991 = distinct !DILexicalBlock(scope: !2959, file: !40, line: 486, column: 20)
!2992 = !DILocation(line: 491, column: 13, scope: !2991)
!2993 = !DILocation(line: 493, column: 41, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2990, file: !40, line: 491, column: 51)
!2995 = !DILocation(line: 493, column: 55, scope: !2994)
!2996 = !{!2997, !2830, i64 0}
!2997 = !{!"ucp_dt_state", !2830, i64 0, !2818, i64 8}
!2998 = !DILocation(line: 493, column: 13, scope: !2994)
!2999 = !DILocation(line: 493, column: 18, scope: !2994)
!3000 = !DILocation(line: 493, column: 23, scope: !2994)
!3001 = !DILocation(line: 493, column: 29, scope: !2994)
!3002 = !DILocation(line: 493, column: 32, scope: !2994)
!3003 = !DILocation(line: 493, column: 39, scope: !2994)
!3004 = !DILocation(line: 494, column: 9, scope: !2994)
!3005 = !DILocation(line: 496, column: 13, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2990, file: !40, line: 494, column: 16)
!3007 = !DILocation(line: 496, column: 18, scope: !3006)
!3008 = !DILocation(line: 496, column: 23, scope: !3006)
!3009 = !DILocation(line: 496, column: 29, scope: !3006)
!3010 = !DILocation(line: 496, column: 42, scope: !3006)
!3011 = !DILocation(line: 496, column: 41, scope: !3006)
!3012 = !{i64 0, i64 8, !2829, i64 8, i64 8, !2829, i64 16, i64 32, !2831, i64 8, i64 8, !2829, i64 16, i64 8, !2829, i64 24, i64 8, !2829, i64 32, i64 8, !2816, i64 8, i64 8, !2816}
!3013 = !DILocation(line: 500, column: 13, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !2991, file: !40, line: 500, column: 13)
!3015 = !DILocation(line: 500, column: 20, scope: !3014)
!3016 = !DILocation(line: 500, column: 13, scope: !2991)
!3017 = !DILocation(line: 501, column: 15, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3014, file: !40, line: 500, column: 39)
!3019 = !DILocation(line: 501, column: 20, scope: !3018)
!3020 = !DILocation(line: 501, column: 25, scope: !3018)
!3021 = !DILocation(line: 501, column: 31, scope: !3018)
!3022 = !DILocation(line: 501, column: 40, scope: !3018)
!3023 = !DILocation(line: 501, column: 13, scope: !3018)
!3024 = !DILocation(line: 502, column: 9, scope: !3018)
!3025 = !DILocation(line: 503, column: 9, scope: !2991)
!3026 = !DILocation(line: 505, column: 9, scope: !2991)
!3027 = !DILocation(line: 511, column: 1, scope: !2959)
!3028 = distinct !DISubprogram(name: "ucp_send_request_invoke_uct_completion", scope: !40, file: !40, line: 450, type: !2185, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !3029)
!3029 = !{!3030}
!3030 = !DILocalVariable(name: "req", arg: 1, scope: !3028, file: !40, line: 450, type: !355)
!3031 = !DILocation(line: 450, column: 55, scope: !3028)
!3032 = !DILocation(line: 452, column: 9, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3028, file: !40, line: 452, column: 9)
!3034 = !DILocation(line: 452, column: 14, scope: !3033)
!3035 = !DILocation(line: 452, column: 19, scope: !3033)
!3036 = !DILocation(line: 452, column: 25, scope: !3033)
!3037 = !DILocation(line: 452, column: 34, scope: !3033)
!3038 = !DILocation(line: 452, column: 40, scope: !3033)
!3039 = !DILocation(line: 452, column: 9, scope: !3028)
!3040 = !DILocation(line: 453, column: 9, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3033, file: !40, line: 452, column: 46)
!3042 = !DILocation(line: 453, column: 14, scope: !3041)
!3043 = !DILocation(line: 453, column: 19, scope: !3041)
!3044 = !DILocation(line: 453, column: 25, scope: !3041)
!3045 = !DILocation(line: 453, column: 34, scope: !3041)
!3046 = !DILocation(line: 453, column: 40, scope: !3041)
!3047 = !DILocation(line: 453, column: 45, scope: !3041)
!3048 = !DILocation(line: 453, column: 50, scope: !3041)
!3049 = !DILocation(line: 453, column: 56, scope: !3041)
!3050 = !DILocation(line: 454, column: 5, scope: !3041)
!3051 = !DILocation(line: 455, column: 1, scope: !3028)
!3052 = distinct !DISubprogram(name: "ucp_put_nbi", scope: !14, file: !14, line: 187, type: !3053, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !3055)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!345, !378, !1083, !551, !351, !2290}
!3055 = !{!3056, !3057, !3058, !3059, !3060, !3061}
!3056 = !DILocalVariable(name: "ep", arg: 1, scope: !3052, file: !14, line: 187, type: !378)
!3057 = !DILocalVariable(name: "buffer", arg: 2, scope: !3052, file: !14, line: 187, type: !1083)
!3058 = !DILocalVariable(name: "length", arg: 3, scope: !3052, file: !14, line: 187, type: !551)
!3059 = !DILocalVariable(name: "remote_addr", arg: 4, scope: !3052, file: !14, line: 188, type: !351)
!3060 = !DILocalVariable(name: "rkey", arg: 5, scope: !3052, file: !14, line: 188, type: !2290)
!3061 = !DILocalVariable(name: "status_ptr", scope: !3052, file: !14, line: 190, type: !1269)
!3062 = !DILocation(line: 187, column: 35, scope: !3052)
!3063 = !DILocation(line: 187, column: 51, scope: !3052)
!3064 = !DILocation(line: 187, column: 66, scope: !3052)
!3065 = !DILocation(line: 188, column: 35, scope: !3052)
!3066 = !DILocation(line: 188, column: 59, scope: !3052)
!3067 = !DILocation(line: 190, column: 5, scope: !3052)
!3068 = !DILocation(line: 190, column: 22, scope: !3052)
!3069 = !DILocation(line: 192, column: 30, scope: !3052)
!3070 = !DILocation(line: 192, column: 34, scope: !3052)
!3071 = !DILocation(line: 192, column: 42, scope: !3052)
!3072 = !DILocation(line: 192, column: 50, scope: !3052)
!3073 = !DILocation(line: 192, column: 63, scope: !3052)
!3074 = !DILocation(line: 192, column: 18, scope: !3052)
!3075 = !DILocation(line: 192, column: 16, scope: !3052)
!3076 = !DILocation(line: 194, column: 9, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3052, file: !14, line: 194, column: 9)
!3078 = !DILocation(line: 194, column: 9, scope: !3052)
!3079 = !DILocation(line: 195, column: 26, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3077, file: !14, line: 194, column: 37)
!3081 = !DILocation(line: 195, column: 9, scope: !3080)
!3082 = !DILocation(line: 196, column: 9, scope: !3080)
!3083 = !DILocation(line: 200, column: 12, scope: !3052)
!3084 = !DILocation(line: 200, column: 5, scope: !3052)
!3085 = !DILocation(line: 201, column: 1, scope: !3052)
!3086 = distinct !DISubprogram(name: "ucp_put_nbx", scope: !14, file: !14, line: 241, type: !3087, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !3115)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!1269, !378, !1083, !551, !351, !2290, !3089}
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3091)
!3091 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_request_param_t", file: !220, line: 1814, baseType: !3092)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !220, line: 1733, size: 576, elements: !3093)
!3093 = !{!3094, !3095, !3096, !3097, !3104, !3105, !3106, !3107, !3108, !3114}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "op_attr_mask", scope: !3092, file: !220, line: 1739, baseType: !361, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3092, file: !220, line: 1742, baseType: !361, size: 32, offset: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3092, file: !220, line: 1750, baseType: !339, size: 64, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !3092, file: !220, line: 1761, baseType: !3098, size: 64, offset: 128)
!3098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3092, file: !220, line: 1756, size: 64, elements: !3099)
!3099 = !{!3100, !3101, !3102, !3103}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !3098, file: !220, line: 1757, baseType: !346, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !3098, file: !220, line: 1758, baseType: !2717, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "recv_stream", scope: !3098, file: !220, line: 1759, baseType: !2743, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "recv_am", scope: !3098, file: !220, line: 1760, baseType: !2753, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "datatype", scope: !3092, file: !220, line: 1768, baseType: !350, size: 64, offset: 192)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !3092, file: !220, line: 1773, baseType: !339, size: 64, offset: 256)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "reply_buffer", scope: !3092, file: !220, line: 1779, baseType: !339, size: 64, offset: 320)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "memory_type", scope: !3092, file: !220, line: 1788, baseType: !918, size: 32, offset: 384)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "recv_info", scope: !3092, file: !220, line: 1803, baseType: !3109, size: 64, offset: 448)
!3109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3092, file: !220, line: 1796, size: 64, elements: !3110)
!3110 = !{!3111, !3112}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3109, file: !220, line: 1797, baseType: !819, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "tag_info", scope: !3109, file: !220, line: 1800, baseType: !3113, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "memh", scope: !3092, file: !220, line: 1812, baseType: !2413, size: 64, offset: 512)
!3115 = !{!3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3127, !3128, !3129, !3130, !3131, !3135, !3139, !3142}
!3116 = !DILocalVariable(name: "ep", arg: 1, scope: !3086, file: !14, line: 241, type: !378)
!3117 = !DILocalVariable(name: "buffer", arg: 2, scope: !3086, file: !14, line: 241, type: !1083)
!3118 = !DILocalVariable(name: "count", arg: 3, scope: !3086, file: !14, line: 241, type: !551)
!3119 = !DILocalVariable(name: "remote_addr", arg: 4, scope: !3086, file: !14, line: 242, type: !351)
!3120 = !DILocalVariable(name: "rkey", arg: 5, scope: !3086, file: !14, line: 242, type: !2290)
!3121 = !DILocalVariable(name: "param", arg: 6, scope: !3086, file: !14, line: 243, type: !3089)
!3122 = !DILocalVariable(name: "worker", scope: !3086, file: !14, line: 245, type: !384)
!3123 = !DILocalVariable(name: "contig_length", scope: !3086, file: !14, line: 246, type: !551)
!3124 = !DILocalVariable(name: "datatype", scope: !3086, file: !14, line: 247, type: !350)
!3125 = !DILocalVariable(name: "rma_config", scope: !3086, file: !14, line: 248, type: !3126)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!3127 = !DILocalVariable(name: "ret", scope: !3086, file: !14, line: 249, type: !1269)
!3128 = !DILocalVariable(name: "status", scope: !3086, file: !14, line: 250, type: !345)
!3129 = !DILocalVariable(name: "req", scope: !3086, file: !14, line: 251, type: !355)
!3130 = !DILocalVariable(name: "attr_mask", scope: !3086, file: !14, line: 252, type: !361)
!3131 = !DILocalVariable(name: "__req", scope: !3132, file: !14, line: 272, type: !355)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !14, line: 272, column: 15)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !14, line: 265, column: 51)
!3134 = distinct !DILexicalBlock(scope: !3086, file: !14, line: 265, column: 9)
!3135 = !DILocalVariable(name: "_req", scope: !3136, file: !14, line: 272, type: !355)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !14, line: 272, column: 15)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !14, line: 272, column: 15)
!3138 = distinct !DILexicalBlock(scope: !3132, file: !14, line: 272, column: 15)
!3139 = !DILocalVariable(name: "_status_nc", scope: !3140, file: !14, line: 292, type: !345)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !14, line: 292, column: 18)
!3141 = distinct !DILexicalBlock(scope: !3134, file: !14, line: 291, column: 12)
!3142 = !DILabel(scope: !3086, name: "out_unlock", file: !14, line: 322)
!3143 = !DILocation(line: 241, column: 39, scope: !3086)
!3144 = !DILocation(line: 241, column: 55, scope: !3086)
!3145 = !DILocation(line: 241, column: 70, scope: !3086)
!3146 = !DILocation(line: 242, column: 39, scope: !3086)
!3147 = !DILocation(line: 242, column: 63, scope: !3086)
!3148 = !DILocation(line: 243, column: 57, scope: !3086)
!3149 = !DILocation(line: 245, column: 5, scope: !3086)
!3150 = !DILocation(line: 245, column: 18, scope: !3086)
!3151 = !DILocation(line: 245, column: 31, scope: !3086)
!3152 = !DILocation(line: 245, column: 35, scope: !3086)
!3153 = !{!3154, !2817, i64 0}
!3154 = !{!"ucp_ep", !2817, i64 0, !2818, i64 8, !2818, i64 9, !2884, i64 10, !2818, i64 12, !2884, i64 14, !2818, i64 16, !2817, i64 56}
!3155 = !DILocation(line: 246, column: 5, scope: !3086)
!3156 = !DILocation(line: 246, column: 12, scope: !3086)
!3157 = !DILocation(line: 247, column: 5, scope: !3086)
!3158 = !DILocation(line: 247, column: 20, scope: !3086)
!3159 = !DILocation(line: 248, column: 5, scope: !3086)
!3160 = !DILocation(line: 248, column: 26, scope: !3086)
!3161 = !DILocation(line: 249, column: 5, scope: !3086)
!3162 = !DILocation(line: 249, column: 22, scope: !3086)
!3163 = !DILocation(line: 250, column: 5, scope: !3086)
!3164 = !DILocation(line: 250, column: 18, scope: !3086)
!3165 = !DILocation(line: 251, column: 5, scope: !3086)
!3166 = !DILocation(line: 251, column: 20, scope: !3086)
!3167 = !DILocation(line: 252, column: 5, scope: !3086)
!3168 = !DILocation(line: 252, column: 14, scope: !3086)
!3169 = !DILocation(line: 254, column: 5, scope: !3086)
!3170 = !DILocation(line: 254, column: 5, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3086, file: !14, line: 254, column: 5)
!3172 = !DILocation(line: 254, column: 5, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3171, file: !14, line: 254, column: 5)
!3174 = !DILocation(line: 254, column: 5, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !14, line: 254, column: 5)
!3176 = distinct !DILexicalBlock(scope: !3171, file: !14, line: 254, column: 5)
!3177 = !DILocation(line: 254, column: 5, scope: !3176)
!3178 = !DILocation(line: 254, column: 5, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3175, file: !14, line: 254, column: 5)
!3180 = !DILocation(line: 254, column: 5, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3171, file: !14, line: 254, column: 5)
!3182 = !DILocation(line: 257, column: 5, scope: !3086)
!3183 = !DILocation(line: 257, column: 5, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3086, file: !14, line: 257, column: 5)
!3185 = !DILocation(line: 257, column: 5, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3184, file: !14, line: 257, column: 5)
!3187 = !DILocation(line: 262, column: 17, scope: !3086)
!3188 = !DILocation(line: 262, column: 24, scope: !3086)
!3189 = !{!3190, !2822, i64 0}
!3190 = !{!"", !2822, i64 0, !2822, i64 4, !2817, i64 8, !2818, i64 16, !2830, i64 24, !2817, i64 32, !2817, i64 40, !2818, i64 48, !2818, i64 56, !2817, i64 64}
!3191 = !DILocation(line: 262, column: 37, scope: !3086)
!3192 = !DILocation(line: 262, column: 15, scope: !3086)
!3193 = !DILocation(line: 265, column: 9, scope: !3134)
!3194 = !DILocation(line: 265, column: 17, scope: !3134)
!3195 = !{!3196, !2817, i64 88}
!3196 = !{!"ucp_worker", !2830, i64 0, !3197, i64 8, !2817, i64 88, !2830, i64 96, !2830, i64 104, !2817, i64 112, !3201, i64 120, !3201, i64 136, !3202, i64 152, !2822, i64 168, !2818, i64 172, !2818, i64 204, !2822, i64 236, !2822, i64 240, !2817, i64 248, !2822, i64 256, !2822, i64 260, !3203, i64 264, !2817, i64 280, !3204, i64 288, !3203, i64 328, !2822, i64 344, !3203, i64 352, !3203, i64 368, !3205, i64 384, !2817, i64 472, !2822, i64 480, !2822, i64 484, !3202, i64 488, !2817, i64 504, !3208, i64 512, !3201, i64 784, !3209, i64 800, !3200, i64 840, !2822, i64 856, !3210, i64 864, !3217, i64 1056, !2830, i64 1080, !2818, i64 1088, !3202, i64 1128, !3218, i64 1256, !3219, i64 1296, !3220, i64 1336, !3220, i64 1432, !2826, i64 1480, !2822, i64 1496, !2818, i64 1504, !3223, i64 46560, !2880, i64 46600}
!3197 = !{!"ucs_async_context", !2818, i64 0, !2818, i64 40, !3198, i64 48, !2830, i64 72}
!3198 = !{!"ucs_mpmc_queue", !3199, i64 0, !3200, i64 8}
!3199 = !{!"ucs_spinlock", !2822, i64 0}
!3200 = !{!"ucs_queue_head", !2817, i64 0, !2817, i64 8}
!3201 = !{!"ucs_mpool", !2817, i64 0, !2817, i64 8}
!3202 = !{!"", !2818, i64 0}
!3203 = !{!"ucs_list_link", !2817, i64 0, !2817, i64 8}
!3204 = !{!"ucs_strided_alloc", !2817, i64 0, !3200, i64 8, !2830, i64 24, !2822, i64 32, !2822, i64 36}
!3205 = !{!"ucs_conn_match_ctx", !3206, i64 0, !2830, i64 40, !2830, i64 48, !3207, i64 56}
!3206 = !{!"kh_ucs_conn_match_s", !2822, i64 0, !2822, i64 4, !2822, i64 8, !2822, i64 12, !2817, i64 16, !2817, i64 24, !2817, i64 32}
!3207 = !{!"ucs_conn_match_ops", !2817, i64 0, !2817, i64 8, !2817, i64 16, !2817, i64 24}
!3208 = !{!"ucs_mpool_set", !2822, i64 0, !2818, i64 8, !2817, i64 264}
!3209 = !{!"kh_ucp_worker_mpool_hash_s", !2822, i64 0, !2822, i64 4, !2822, i64 8, !2822, i64 12, !2817, i64 16, !2817, i64 24, !2817, i64 32}
!3210 = !{!"ucp_tag_match", !3211, i64 0, !3213, i64 48, !3214, i64 72, !3215, i64 112}
!3211 = !{!"", !3212, i64 0, !2817, i64 24, !2830, i64 32, !2822, i64 40}
!3212 = !{!"", !3200, i64 0, !2822, i64 16, !2822, i64 20}
!3213 = !{!"", !3203, i64 0, !2817, i64 16}
!3214 = !{!"kh_ucp_tag_frag_hash_s", !2822, i64 0, !2822, i64 4, !2822, i64 8, !2822, i64 12, !2817, i64 16, !2817, i64 24, !2817, i64 32}
!3215 = !{!"", !3200, i64 0, !3216, i64 16, !2817, i64 56, !2830, i64 64, !2830, i64 72}
!3216 = !{!"kh_ucp_tag_offload_hash_s", !2822, i64 0, !2822, i64 4, !2822, i64 8, !2822, i64 12, !2817, i64 16, !2817, i64 24, !2817, i64 32}
!3217 = !{!"ucp_am_info", !2830, i64 0, !2826, i64 8}
!3218 = !{!"kh_ucp_worker_rkey_config_s", !2822, i64 0, !2822, i64 4, !2822, i64 8, !2822, i64 12, !2817, i64 16, !2817, i64 24, !2817, i64 32}
!3219 = !{!"kh_ucp_worker_discard_uct_ep_hash_s", !2822, i64 0, !2822, i64 4, !2822, i64 8, !2822, i64 12, !2817, i64 16, !2817, i64 24, !2817, i64 32}
!3220 = !{!"", !3221, i64 0, !2818, i64 48}
!3221 = !{!"ucs_ptr_map", !2830, i64 0, !3222, i64 8}
!3222 = !{!"kh_ucs_ptr_map_impl_s", !2822, i64 0, !2822, i64 4, !2822, i64 8, !2822, i64 12, !2817, i64 16, !2817, i64 24, !2817, i64 32}
!3223 = !{!"", !2822, i64 0, !2822, i64 4, !2830, i64 8, !2817, i64 16, !2822, i64 24, !2822, i64 28, !2830, i64 32}
!3224 = !DILocation(line: 265, column: 26, scope: !3134)
!3225 = !DILocation(line: 265, column: 33, scope: !3134)
!3226 = !DILocation(line: 265, column: 37, scope: !3134)
!3227 = !{!3228, !2822, i64 720}
!3228 = !{!"ucp_context", !2817, i64 0, !2818, i64 8, !2817, i64 16, !2818, i64 24, !2818, i64 32, !2818, i64 72, !2830, i64 112, !2818, i64 120, !2818, i64 125, !2818, i64 126, !2830, i64 136, !2817, i64 144, !3202, i64 152, !2818, i64 168, !2830, i64 176, !2817, i64 184, !3229, i64 192, !3233, i64 848, !2818, i64 896, !3203, i64 928}
!3229 = !{!"", !2830, i64 0, !2830, i64 8, !2822, i64 16, !2822, i64 20, !3230, i64 24, !2817, i64 48, !2822, i64 56, !3202, i64 64, !2818, i64 80, !2818, i64 208, !3231, i64 216, !2817, i64 624, !2822, i64 632, !3232, i64 640}
!3230 = !{!"", !2830, i64 0, !2817, i64 8, !2817, i64 16}
!3231 = !{!"ucp_context_config", !2830, i64 0, !2830, i64 8, !2830, i64 16, !2830, i64 24, !2885, i64 32, !2885, i64 40, !2885, i64 48, !2830, i64 56, !2818, i64 64, !2830, i64 72, !2885, i64 80, !2830, i64 88, !2818, i64 96, !2818, i64 136, !2818, i64 176, !2830, i64 184, !2822, i64 192, !2830, i64 200, !2830, i64 208, !2830, i64 216, !2822, i64 224, !2822, i64 228, !2822, i64 232, !2818, i64 236, !2822, i64 240, !2822, i64 244, !2822, i64 248, !2822, i64 252, !2822, i64 256, !2830, i64 264, !2830, i64 272, !2830, i64 280, !2822, i64 288, !2818, i64 292, !2822, i64 296, !2822, i64 300, !2830, i64 304, !2822, i64 312, !2822, i64 316, !2830, i64 320, !2822, i64 328, !2818, i64 332, !2818, i64 336, !2822, i64 340, !2822, i64 344, !2830, i64 352, !2818, i64 360, !2822, i64 364, !2818, i64 368, !2830, i64 376, !2822, i64 384, !2817, i64 392, !2817, i64 400}
!3232 = !{!"", !2822, i64 0, !2817, i64 8}
!3233 = !{!"ucp_mt_lock", !2818, i64 0, !2818, i64 8}
!3234 = !DILocation(line: 265, column: 9, scope: !3086)
!3235 = !DILocation(line: 266, column: 37, scope: !3133)
!3236 = !DILocation(line: 266, column: 41, scope: !3133)
!3237 = !DILocation(line: 266, column: 49, scope: !3133)
!3238 = !DILocation(line: 266, column: 56, scope: !3133)
!3239 = !DILocation(line: 266, column: 69, scope: !3133)
!3240 = !DILocation(line: 266, column: 75, scope: !3133)
!3241 = !DILocation(line: 266, column: 18, scope: !3133)
!3242 = !DILocation(line: 266, column: 16, scope: !3133)
!3243 = !DILocation(line: 267, column: 13, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3133, file: !14, line: 267, column: 13)
!3245 = !DILocation(line: 267, column: 13, scope: !3133)
!3246 = !DILocation(line: 268, column: 19, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3244, file: !14, line: 267, column: 56)
!3248 = !DILocation(line: 268, column: 17, scope: !3247)
!3249 = !DILocation(line: 269, column: 13, scope: !3247)
!3250 = !DILocation(line: 272, column: 15, scope: !3132)
!3251 = !DILocation(line: 272, column: 15, scope: !3138)
!3252 = !DILocation(line: 272, column: 15, scope: !3136)
!3253 = !DILocation(line: 272, column: 15, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3136, file: !14, line: 272, column: 15)
!3255 = !DILocation(line: 272, column: 15, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3254, file: !14, line: 272, column: 15)
!3257 = !DILocation(line: 272, column: 15, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3256, file: !14, line: 272, column: 15)
!3259 = !DILocation(line: 272, column: 15, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3258, file: !14, line: 272, column: 15)
!3261 = !DILocation(line: 272, column: 15, scope: !3137)
!3262 = !DILocation(line: 272, column: 15, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3137, file: !14, line: 272, column: 15)
!3264 = !DILocation(line: 272, column: 15, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !14, line: 272, column: 15)
!3266 = distinct !DILexicalBlock(scope: !3263, file: !14, line: 272, column: 15)
!3267 = !DILocation(line: 272, column: 15, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3138, file: !14, line: 272, column: 15)
!3269 = !{!3190, !2817, i64 8}
!3270 = !DILocation(line: 272, column: 15, scope: !3133)
!3271 = !DILocation(line: 272, column: 13, scope: !3133)
!3272 = !DILocation(line: 275, column: 37, scope: !3133)
!3273 = !DILocation(line: 275, column: 9, scope: !3133)
!3274 = !DILocation(line: 275, column: 14, scope: !3133)
!3275 = !DILocation(line: 275, column: 19, scope: !3133)
!3276 = !DILocation(line: 275, column: 23, scope: !3133)
!3277 = !DILocation(line: 275, column: 35, scope: !3133)
!3278 = !DILocation(line: 276, column: 37, scope: !3133)
!3279 = !DILocation(line: 276, column: 9, scope: !3133)
!3280 = !DILocation(line: 276, column: 14, scope: !3133)
!3281 = !DILocation(line: 276, column: 19, scope: !3133)
!3282 = !DILocation(line: 276, column: 23, scope: !3133)
!3283 = !DILocation(line: 276, column: 35, scope: !3133)
!3284 = !DILocation(line: 278, column: 13, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3133, file: !14, line: 278, column: 13)
!3286 = !DILocation(line: 278, column: 13, scope: !3133)
!3287 = !DILocation(line: 279, column: 29, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3285, file: !14, line: 278, column: 41)
!3289 = !DILocation(line: 279, column: 27, scope: !3288)
!3290 = !DILocation(line: 280, column: 9, scope: !3288)
!3291 = !DILocation(line: 280, column: 20, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3285, file: !14, line: 280, column: 20)
!3293 = !DILocation(line: 280, column: 30, scope: !3292)
!3294 = !DILocation(line: 280, column: 20, scope: !3285)
!3295 = !DILocation(line: 281, column: 24, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3292, file: !14, line: 280, column: 60)
!3297 = !DILocation(line: 281, column: 31, scope: !3296)
!3298 = !{!3190, !2830, i64 24}
!3299 = !DILocation(line: 281, column: 22, scope: !3296)
!3300 = !DILocation(line: 282, column: 17, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3296, file: !14, line: 282, column: 17)
!3302 = !DILocation(line: 282, column: 17, scope: !3296)
!3303 = !DILocation(line: 283, column: 54, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3301, file: !14, line: 282, column: 45)
!3305 = !DILocation(line: 283, column: 64, scope: !3304)
!3306 = !DILocation(line: 283, column: 33, scope: !3304)
!3307 = !DILocation(line: 283, column: 31, scope: !3304)
!3308 = !DILocation(line: 284, column: 13, scope: !3304)
!3309 = !DILocation(line: 285, column: 9, scope: !3296)
!3310 = !DILocation(line: 288, column: 17, scope: !3133)
!3311 = !DILocation(line: 288, column: 38, scope: !3133)
!3312 = !DILocation(line: 288, column: 46, scope: !3133)
!3313 = !DILocation(line: 288, column: 22, scope: !3133)
!3314 = !DILocation(line: 288, column: 53, scope: !3133)
!3315 = !DILocation(line: 289, column: 17, scope: !3133)
!3316 = !DILocation(line: 289, column: 23, scope: !3133)
!3317 = !DILocation(line: 289, column: 34, scope: !3133)
!3318 = !DILocation(line: 289, column: 54, scope: !3133)
!3319 = !DILocation(line: 289, column: 62, scope: !3133)
!3320 = !DILocation(line: 289, column: 69, scope: !3133)
!3321 = !DILocation(line: 290, column: 17, scope: !3133)
!3322 = !DILocation(line: 290, column: 32, scope: !3133)
!3323 = !DILocation(line: 287, column: 15, scope: !3133)
!3324 = !DILocation(line: 287, column: 13, scope: !3133)
!3325 = !DILocation(line: 291, column: 5, scope: !3133)
!3326 = !DILocation(line: 292, column: 18, scope: !3140)
!3327 = !DILocation(line: 292, column: 18, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3140, file: !14, line: 292, column: 18)
!3329 = !{!3154, !2818, i64 9}
!3330 = !DILocation(line: 292, column: 18, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3328, file: !14, line: 292, column: 18)
!3332 = !DILocation(line: 292, column: 18, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3140, file: !14, line: 292, column: 18)
!3334 = !DILocation(line: 292, column: 18, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3333, file: !14, line: 292, column: 18)
!3336 = !DILocation(line: 292, column: 18, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3335, file: !14, line: 292, column: 18)
!3338 = !DILocation(line: 292, column: 18, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !14, line: 292, column: 18)
!3340 = distinct !DILexicalBlock(scope: !3337, file: !14, line: 292, column: 18)
!3341 = !{!3342, !2818, i64 0}
!3342 = !{!"ucs_log_component_config", !2818, i64 0, !2818, i64 4, !2817, i64 24}
!3343 = !DILocation(line: 292, column: 18, scope: !3340)
!3344 = !DILocation(line: 292, column: 18, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3339, file: !14, line: 292, column: 18)
!3346 = !{!3347, !2830, i64 24}
!3347 = !{!"ucp_rkey", !2818, i64 0, !2830, i64 24, !2818, i64 32}
!3348 = !DILocation(line: 292, column: 18, scope: !3141)
!3349 = !DILocation(line: 292, column: 16, scope: !3141)
!3350 = !DILocation(line: 293, column: 13, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3141, file: !14, line: 293, column: 13)
!3352 = !DILocation(line: 293, column: 20, scope: !3351)
!3353 = !DILocation(line: 293, column: 13, scope: !3141)
!3354 = !DILocation(line: 294, column: 19, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3351, file: !14, line: 293, column: 31)
!3356 = !DILocation(line: 294, column: 17, scope: !3355)
!3357 = !DILocation(line: 295, column: 13, scope: !3355)
!3358 = !DILocation(line: 299, column: 13, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3141, file: !14, line: 299, column: 13)
!3360 = !DILocation(line: 0, scope: !3359)
!3361 = !DILocation(line: 299, column: 13, scope: !3141)
!3362 = !DILocation(line: 301, column: 22, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3359, file: !14, line: 300, column: 72)
!3364 = !DILocation(line: 301, column: 20, scope: !3363)
!3365 = !DILocation(line: 305, column: 17, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3363, file: !14, line: 305, column: 17)
!3367 = !DILocation(line: 305, column: 17, scope: !3363)
!3368 = !DILocation(line: 306, column: 23, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3366, file: !14, line: 305, column: 60)
!3370 = !DILocation(line: 306, column: 21, scope: !3369)
!3371 = !DILocation(line: 307, column: 17, scope: !3369)
!3372 = !DILocation(line: 309, column: 9, scope: !3363)
!3373 = !DILocation(line: 311, column: 13, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3141, file: !14, line: 311, column: 13)
!3375 = !DILocation(line: 311, column: 13, scope: !3141)
!3376 = !DILocation(line: 312, column: 17, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3374, file: !14, line: 311, column: 82)
!3378 = !DILocation(line: 313, column: 13, scope: !3377)
!3379 = !DILocation(line: 316, column: 37, scope: !3141)
!3380 = !DILocation(line: 316, column: 23, scope: !3141)
!3381 = !DILocation(line: 316, column: 42, scope: !3141)
!3382 = !DILocation(line: 316, column: 46, scope: !3141)
!3383 = !DILocation(line: 316, column: 52, scope: !3141)
!3384 = !DILocation(line: 316, column: 58, scope: !3141)
!3385 = !DILocation(line: 316, column: 20, scope: !3141)
!3386 = !DILocation(line: 317, column: 35, scope: !3141)
!3387 = !DILocation(line: 317, column: 39, scope: !3141)
!3388 = !DILocation(line: 317, column: 47, scope: !3141)
!3389 = !DILocation(line: 317, column: 54, scope: !3141)
!3390 = !DILocation(line: 317, column: 67, scope: !3141)
!3391 = !DILocation(line: 318, column: 35, scope: !3141)
!3392 = !DILocation(line: 318, column: 84, scope: !3141)
!3393 = !{!3394, !2817, i64 8}
!3394 = !{!"ucp_rma_proto", !2817, i64 0, !2817, i64 8, !2817, i64 16}
!3395 = !DILocation(line: 319, column: 35, scope: !3141)
!3396 = !DILocation(line: 319, column: 47, scope: !3141)
!3397 = !{!3398, !2830, i64 48}
!3398 = !{!"ucp_ep_rma_config", !2830, i64 0, !2830, i64 8, !2830, i64 16, !2830, i64 24, !2830, i64 32, !2830, i64 40, !2830, i64 48, !2830, i64 56}
!3399 = !DILocation(line: 319, column: 65, scope: !3141)
!3400 = !DILocation(line: 317, column: 15, scope: !3141)
!3401 = !DILocation(line: 317, column: 13, scope: !3141)
!3402 = !DILocation(line: 322, column: 1, scope: !3086)
!3403 = !DILocation(line: 324, column: 12, scope: !3086)
!3404 = !DILocation(line: 324, column: 5, scope: !3086)
!3405 = !DILocation(line: 325, column: 1, scope: !3086)
!3406 = !DISubprogram(name: "ucp_request_free", scope: !220, file: !220, line: 3882, type: !879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3407 = distinct !DISubprogram(name: "ucp_put_nb", scope: !14, file: !14, line: 203, type: !3408, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !3410)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!1269, !378, !1083, !551, !351, !2290, !2796}
!3410 = !{!3411, !3412, !3413, !3414, !3415, !3416, !3417}
!3411 = !DILocalVariable(name: "ep", arg: 1, scope: !3407, file: !14, line: 203, type: !378)
!3412 = !DILocalVariable(name: "buffer", arg: 2, scope: !3407, file: !14, line: 203, type: !1083)
!3413 = !DILocalVariable(name: "length", arg: 3, scope: !3407, file: !14, line: 203, type: !551)
!3414 = !DILocalVariable(name: "remote_addr", arg: 4, scope: !3407, file: !14, line: 204, type: !351)
!3415 = !DILocalVariable(name: "rkey", arg: 5, scope: !3407, file: !14, line: 204, type: !2290)
!3416 = !DILocalVariable(name: "cb", arg: 6, scope: !3407, file: !14, line: 205, type: !2796)
!3417 = !DILocalVariable(name: "param", scope: !3407, file: !14, line: 207, type: !3091)
!3418 = !DILocation(line: 203, column: 38, scope: !3407)
!3419 = !DILocation(line: 203, column: 54, scope: !3407)
!3420 = !DILocation(line: 203, column: 69, scope: !3407)
!3421 = !DILocation(line: 204, column: 38, scope: !3407)
!3422 = !DILocation(line: 204, column: 62, scope: !3407)
!3423 = !DILocation(line: 205, column: 49, scope: !3407)
!3424 = !DILocation(line: 207, column: 5, scope: !3407)
!3425 = !DILocation(line: 207, column: 25, scope: !3407)
!3426 = !DILocation(line: 207, column: 33, scope: !3407)
!3427 = !DILocation(line: 209, column: 50, scope: !3407)
!3428 = !DILocation(line: 209, column: 12, scope: !3407)
!3429 = !DILocation(line: 212, column: 24, scope: !3407)
!3430 = !DILocation(line: 212, column: 28, scope: !3407)
!3431 = !DILocation(line: 212, column: 36, scope: !3407)
!3432 = !DILocation(line: 212, column: 44, scope: !3407)
!3433 = !DILocation(line: 212, column: 57, scope: !3407)
!3434 = !DILocation(line: 212, column: 12, scope: !3407)
!3435 = !DILocation(line: 213, column: 1, scope: !3407)
!3436 = !DILocation(line: 212, column: 5, scope: !3407)
!3437 = distinct !DISubprogram(name: "ucp_put_send_short", scope: !14, file: !14, line: 216, type: !3438, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !3440)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!345, !378, !1083, !551, !351, !2290, !3089}
!3440 = !{!3441, !3442, !3443, !3444, !3445, !3446, !3447, !3450}
!3441 = !DILocalVariable(name: "ep", arg: 1, scope: !3437, file: !14, line: 216, type: !378)
!3442 = !DILocalVariable(name: "buffer", arg: 2, scope: !3437, file: !14, line: 216, type: !1083)
!3443 = !DILocalVariable(name: "length", arg: 3, scope: !3437, file: !14, line: 216, type: !551)
!3444 = !DILocalVariable(name: "remote_addr", arg: 4, scope: !3437, file: !14, line: 217, type: !351)
!3445 = !DILocalVariable(name: "rkey", arg: 5, scope: !3437, file: !14, line: 217, type: !2290)
!3446 = !DILocalVariable(name: "param", arg: 6, scope: !3437, file: !14, line: 218, type: !3089)
!3447 = !DILocalVariable(name: "rkey_config", scope: !3437, file: !14, line: 220, type: !3448)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2209)
!3450 = !DILocalVariable(name: "tl_rkey", scope: !3437, file: !14, line: 221, type: !1141)
!3451 = !DILocation(line: 216, column: 29, scope: !3437)
!3452 = !DILocation(line: 216, column: 45, scope: !3437)
!3453 = !DILocation(line: 216, column: 60, scope: !3437)
!3454 = !DILocation(line: 217, column: 29, scope: !3437)
!3455 = !DILocation(line: 217, column: 53, scope: !3437)
!3456 = !DILocation(line: 218, column: 47, scope: !3437)
!3457 = !DILocation(line: 220, column: 5, scope: !3437)
!3458 = !DILocation(line: 220, column: 30, scope: !3437)
!3459 = !DILocation(line: 221, column: 5, scope: !3437)
!3460 = !DILocation(line: 221, column: 16, scope: !3437)
!3461 = !DILocation(line: 223, column: 9, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3437, file: !14, line: 223, column: 9)
!3463 = !DILocation(line: 223, column: 9, scope: !3437)
!3464 = !DILocation(line: 225, column: 9, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3462, file: !14, line: 224, column: 77)
!3466 = !DILocation(line: 228, column: 35, scope: !3437)
!3467 = !DILocation(line: 228, column: 39, scope: !3437)
!3468 = !DILocation(line: 228, column: 47, scope: !3437)
!3469 = !DILocation(line: 228, column: 19, scope: !3437)
!3470 = !DILocation(line: 228, column: 17, scope: !3437)
!3471 = !DILocation(line: 229, column: 9, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3437, file: !14, line: 229, column: 9)
!3473 = !DILocation(line: 229, column: 9, scope: !3437)
!3474 = !DILocation(line: 231, column: 9, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3472, file: !14, line: 230, column: 59)
!3476 = !DILocation(line: 234, column: 36, scope: !3437)
!3477 = !DILocation(line: 234, column: 42, scope: !3437)
!3478 = !DILocation(line: 234, column: 55, scope: !3437)
!3479 = !DILocation(line: 234, column: 65, scope: !3437)
!3480 = !{!3481, !2818, i64 33}
!3481 = !{!"", !3482, i64 0, !3483, i64 16, !2818, i64 40, !3484, i64 296}
!3482 = !{!"ucp_rkey_config_key", !2830, i64 0, !2818, i64 8, !2818, i64 9, !2818, i64 12}
!3483 = !{!"", !2830, i64 0, !2830, i64 8, !2818, i64 16, !2818, i64 17}
!3484 = !{!"", !3485, i64 0, !3486, i64 40}
!3485 = !{!"kh_ucp_proto_select_hash_s", !2822, i64 0, !2822, i64 4, !2822, i64 8, !2822, i64 12, !2817, i64 16, !2817, i64 24, !2817, i64 32}
!3486 = !{!"", !2830, i64 0, !2817, i64 8}
!3487 = !DILocation(line: 234, column: 15, scope: !3437)
!3488 = !DILocation(line: 234, column: 13, scope: !3437)
!3489 = !DILocation(line: 235, column: 12, scope: !3437)
!3490 = !{!3481, !2818, i64 32}
!3491 = !DILocation(line: 235, column: 5, scope: !3437)
!3492 = !DILocation(line: 239, column: 1, scope: !3437)
!3493 = distinct !DISubprogram(name: "ucs_mpool_get_inline", scope: !3494, file: !3494, line: 17, type: !3495, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !3497)
!3494 = !DIFile(filename: "ucs/datastruct/mpool.inl", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "426c9967c37a610c828dac847bea1cd3")
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!339, !786}
!3497 = !{!3498, !3499, !3500}
!3498 = !DILocalVariable(name: "mp", arg: 1, scope: !3493, file: !3494, line: 17, type: !786)
!3499 = !DILocalVariable(name: "elem", scope: !3493, file: !3494, line: 19, type: !780)
!3500 = !DILocalVariable(name: "obj", scope: !3493, file: !3494, line: 20, type: !339)
!3501 = !DILocation(line: 17, column: 55, scope: !3493)
!3502 = !DILocation(line: 19, column: 5, scope: !3493)
!3503 = !DILocation(line: 19, column: 23, scope: !3493)
!3504 = !DILocation(line: 20, column: 5, scope: !3493)
!3505 = !DILocation(line: 20, column: 11, scope: !3493)
!3506 = !DILocation(line: 22, column: 9, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3493, file: !3494, line: 22, column: 9)
!3508 = !{!3201, !2817, i64 0}
!3509 = !DILocation(line: 22, column: 9, scope: !3493)
!3510 = !DILocation(line: 23, column: 35, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3507, file: !3494, line: 22, column: 45)
!3512 = !DILocation(line: 23, column: 16, scope: !3511)
!3513 = !DILocation(line: 23, column: 9, scope: !3511)
!3514 = !DILocation(line: 27, column: 12, scope: !3493)
!3515 = !DILocation(line: 27, column: 16, scope: !3493)
!3516 = !DILocation(line: 27, column: 10, scope: !3493)
!3517 = !DILocation(line: 29, column: 20, scope: !3493)
!3518 = !DILocation(line: 29, column: 26, scope: !3493)
!3519 = !DILocation(line: 29, column: 5, scope: !3493)
!3520 = !DILocation(line: 29, column: 9, scope: !3493)
!3521 = !DILocation(line: 29, column: 18, scope: !3493)
!3522 = !DILocation(line: 30, column: 19, scope: !3493)
!3523 = !DILocation(line: 30, column: 5, scope: !3493)
!3524 = !DILocation(line: 30, column: 17, scope: !3493)
!3525 = !DILocation(line: 33, column: 11, scope: !3493)
!3526 = !DILocation(line: 33, column: 16, scope: !3493)
!3527 = !DILocation(line: 33, column: 9, scope: !3493)
!3528 = !DILocation(line: 35, column: 12, scope: !3493)
!3529 = !DILocation(line: 35, column: 5, scope: !3493)
!3530 = !DILocation(line: 36, column: 1, scope: !3493)
!3531 = distinct !DISubprogram(name: "ucp_request_reset_internal", scope: !40, file: !40, line: 205, type: !3532, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !3534)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{null, !355, !384}
!3534 = !{!3535, !3536}
!3535 = !DILocalVariable(name: "req", arg: 1, scope: !3531, file: !40, line: 205, type: !355)
!3536 = !DILocalVariable(name: "worker", arg: 2, scope: !3531, file: !40, line: 205, type: !384)
!3537 = !DILocation(line: 205, column: 43, scope: !3531)
!3538 = !DILocation(line: 205, column: 61, scope: !3531)
!3539 = !DILocation(line: 210, column: 1, scope: !3531)
!3540 = distinct !DISubprogram(name: "ucp_request_id_reset", scope: !40, file: !40, line: 199, type: !2185, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !3541)
!3541 = !{!3542}
!3542 = !DILocalVariable(name: "req", arg: 1, scope: !3540, file: !40, line: 199, type: !355)
!3543 = !DILocation(line: 199, column: 69, scope: !3540)
!3544 = !DILocation(line: 201, column: 5, scope: !3540)
!3545 = !DILocation(line: 201, column: 10, scope: !3540)
!3546 = !DILocation(line: 201, column: 13, scope: !3540)
!3547 = !{!3548, !2830, i64 8}
!3548 = !{!"ucp_request", !2818, i64 0, !2822, i64 4, !2830, i64 8, !2818, i64 16, !2818, i64 24}
!3549 = !DILocation(line: 202, column: 1, scope: !3540)
!3550 = distinct !DISubprogram(name: "ucp_contig_dt_length", scope: !3551, file: !3551, line: 39, type: !3552, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !3554)
!3551 = !DIFile(filename: "dt/dt_contig.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "a3caecd1115b28b93596c5d01dc0b7b3")
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!551, !350, !551}
!3554 = !{!3555, !3556}
!3555 = !DILocalVariable(name: "datatype", arg: 1, scope: !3550, file: !3551, line: 39, type: !350)
!3556 = !DILocalVariable(name: "count", arg: 2, scope: !3550, file: !3551, line: 39, type: !551)
!3557 = !DILocation(line: 39, column: 58, scope: !3550)
!3558 = !DILocation(line: 39, column: 75, scope: !3550)
!3559 = !DILocation(line: 42, column: 12, scope: !3550)
!3560 = !DILocation(line: 42, column: 44, scope: !3550)
!3561 = !DILocation(line: 42, column: 20, scope: !3550)
!3562 = !DILocation(line: 42, column: 18, scope: !3550)
!3563 = !DILocation(line: 42, column: 5, scope: !3550)
!3564 = distinct !DISubprogram(name: "ucp_proto_request_send_op", scope: !3565, file: !3565, line: 227, type: !3566, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !3570)
!3565 = !DIFile(filename: "proto/proto_common.inl", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "ab512043fca1d298b3d8dbb7e1554d84")
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!1269, !378, !3568, !1841, !355, !3569, !1083, !551, !350, !551, !3089, !551, !621}
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_operation_id_t", file: !170, line: 155, baseType: !260)
!3570 = !{!3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587}
!3571 = !DILocalVariable(name: "ep", arg: 1, scope: !3564, file: !3565, line: 227, type: !378)
!3572 = !DILocalVariable(name: "proto_select", arg: 2, scope: !3564, file: !3565, line: 227, type: !3568)
!3573 = !DILocalVariable(name: "rkey_cfg_index", arg: 3, scope: !3564, file: !3565, line: 228, type: !1841)
!3574 = !DILocalVariable(name: "req", arg: 4, scope: !3564, file: !3565, line: 229, type: !355)
!3575 = !DILocalVariable(name: "op_id", arg: 5, scope: !3564, file: !3565, line: 229, type: !3569)
!3576 = !DILocalVariable(name: "buffer", arg: 6, scope: !3564, file: !3565, line: 230, type: !1083)
!3577 = !DILocalVariable(name: "count", arg: 7, scope: !3564, file: !3565, line: 230, type: !551)
!3578 = !DILocalVariable(name: "datatype", arg: 8, scope: !3564, file: !3565, line: 231, type: !350)
!3579 = !DILocalVariable(name: "contig_length", arg: 9, scope: !3564, file: !3565, line: 231, type: !551)
!3580 = !DILocalVariable(name: "param", arg: 10, scope: !3564, file: !3565, line: 232, type: !3089)
!3581 = !DILocalVariable(name: "header_length", arg: 11, scope: !3564, file: !3565, line: 233, type: !551)
!3582 = !DILocalVariable(name: "op_flags", arg: 12, scope: !3564, file: !3565, line: 233, type: !621)
!3583 = !DILocalVariable(name: "worker", scope: !3564, file: !3565, line: 235, type: !384)
!3584 = !DILocalVariable(name: "sel_param", scope: !3564, file: !3565, line: 236, type: !2103)
!3585 = !DILocalVariable(name: "status", scope: !3564, file: !3565, line: 237, type: !345)
!3586 = !DILocalVariable(name: "sg_count", scope: !3564, file: !3565, line: 238, type: !529)
!3587 = !DILocalVariable(name: "_status", scope: !3588, file: !3565, line: 261, type: !345)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !3565, line: 261, column: 9)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !3565, line: 259, column: 50)
!3590 = distinct !DILexicalBlock(scope: !3564, file: !3565, line: 259, column: 9)
!3591 = !DILocation(line: 227, column: 36, scope: !3564)
!3592 = !DILocation(line: 227, column: 60, scope: !3564)
!3593 = !DILocation(line: 228, column: 50, scope: !3564)
!3594 = !DILocation(line: 229, column: 42, scope: !3564)
!3595 = !DILocation(line: 229, column: 66, scope: !3564)
!3596 = !DILocation(line: 230, column: 39, scope: !3564)
!3597 = !DILocation(line: 230, column: 54, scope: !3564)
!3598 = !DILocation(line: 231, column: 42, scope: !3564)
!3599 = !DILocation(line: 231, column: 59, scope: !3564)
!3600 = !DILocation(line: 232, column: 54, scope: !3564)
!3601 = !DILocation(line: 233, column: 34, scope: !3564)
!3602 = !{!2884, !2884, i64 0}
!3603 = !DILocation(line: 233, column: 58, scope: !3564)
!3604 = !DILocation(line: 235, column: 5, scope: !3564)
!3605 = !DILocation(line: 235, column: 18, scope: !3564)
!3606 = !DILocation(line: 235, column: 27, scope: !3564)
!3607 = !DILocation(line: 235, column: 31, scope: !3564)
!3608 = !DILocation(line: 236, column: 5, scope: !3564)
!3609 = !DILocation(line: 236, column: 30, scope: !3564)
!3610 = !DILocation(line: 237, column: 5, scope: !3564)
!3611 = !DILocation(line: 237, column: 18, scope: !3564)
!3612 = !DILocation(line: 238, column: 5, scope: !3564)
!3613 = !DILocation(line: 238, column: 13, scope: !3564)
!3614 = !DILocation(line: 240, column: 33, scope: !3564)
!3615 = !DILocation(line: 240, column: 38, scope: !3564)
!3616 = !DILocation(line: 240, column: 5, scope: !3564)
!3617 = !DILocation(line: 242, column: 5, scope: !3564)
!3618 = !DILocation(line: 246, column: 45, scope: !3564)
!3619 = !DILocation(line: 246, column: 52, scope: !3564)
!3620 = !DILocation(line: 246, column: 59, scope: !3564)
!3621 = !DILocation(line: 247, column: 33, scope: !3564)
!3622 = !DILocation(line: 247, column: 43, scope: !3564)
!3623 = !DILocation(line: 247, column: 48, scope: !3564)
!3624 = !DILocation(line: 247, column: 53, scope: !3564)
!3625 = !DILocation(line: 247, column: 59, scope: !3564)
!3626 = !DILocation(line: 247, column: 67, scope: !3564)
!3627 = !DILocation(line: 248, column: 34, scope: !3564)
!3628 = !DILocation(line: 248, column: 39, scope: !3564)
!3629 = !DILocation(line: 248, column: 44, scope: !3564)
!3630 = !DILocation(line: 248, column: 50, scope: !3564)
!3631 = !DILocation(line: 248, column: 58, scope: !3564)
!3632 = !DILocation(line: 248, column: 68, scope: !3564)
!3633 = !DILocation(line: 246, column: 5, scope: !3564)
!3634 = !DILocation(line: 250, column: 14, scope: !3564)
!3635 = !DILocation(line: 250, column: 12, scope: !3564)
!3636 = !DILocation(line: 253, column: 9, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3564, file: !3565, line: 253, column: 9)
!3638 = !DILocation(line: 253, column: 16, scope: !3637)
!3639 = !DILocation(line: 253, column: 9, scope: !3564)
!3640 = !DILocation(line: 254, column: 9, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !3565, line: 254, column: 9)
!3642 = distinct !DILexicalBlock(scope: !3637, file: !3565, line: 253, column: 27)
!3643 = !DILocation(line: 254, column: 9, scope: !3642)
!3644 = !DILocation(line: 254, column: 9, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3641, file: !3565, line: 254, column: 9)
!3646 = !DILocation(line: 255, column: 16, scope: !3642)
!3647 = !DILocation(line: 255, column: 9, scope: !3642)
!3648 = !DILocation(line: 258, column: 5, scope: !3564)
!3649 = !DILocation(line: 259, column: 9, scope: !3590)
!3650 = !DILocation(line: 259, column: 14, scope: !3590)
!3651 = !{!3548, !2822, i64 4}
!3652 = !DILocation(line: 259, column: 20, scope: !3590)
!3653 = !DILocation(line: 259, column: 9, scope: !3564)
!3654 = !DILocation(line: 261, column: 9, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3589, file: !3565, line: 261, column: 9)
!3656 = !DILocation(line: 261, column: 9, scope: !3589)
!3657 = !DILocation(line: 261, column: 9, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3659, file: !3565, line: 261, column: 9)
!3659 = distinct !DILexicalBlock(scope: !3655, file: !3565, line: 261, column: 9)
!3660 = !DILocation(line: 261, column: 9, scope: !3659)
!3661 = !DILocation(line: 261, column: 9, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3658, file: !3565, line: 261, column: 9)
!3663 = !{!3548, !2818, i64 0}
!3664 = !{!3190, !2817, i64 32}
!3665 = !DILocation(line: 261, column: 9, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3659, file: !3565, line: 261, column: 9)
!3667 = !DILocation(line: 261, column: 9, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3666, file: !3565, line: 261, column: 9)
!3669 = !DILocation(line: 261, column: 9, scope: !3588)
!3670 = !DILocation(line: 261, column: 9, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3588, file: !3565, line: 261, column: 9)
!3672 = !DILocation(line: 261, column: 9, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3671, file: !3565, line: 261, column: 9)
!3674 = !DILocation(line: 264, column: 5, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3564, file: !3565, line: 264, column: 5)
!3676 = !DILocation(line: 264, column: 5, scope: !3564)
!3677 = !DILocation(line: 264, column: 5, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3679, file: !3565, line: 264, column: 5)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !3565, line: 264, column: 5)
!3680 = distinct !DILexicalBlock(scope: !3675, file: !3565, line: 264, column: 5)
!3681 = !DILocation(line: 264, column: 5, scope: !3679)
!3682 = !DILocation(line: 264, column: 5, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3679, file: !3565, line: 264, column: 5)
!3684 = !DILocation(line: 264, column: 5, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3683, file: !3565, line: 264, column: 5)
!3686 = !DILocation(line: 264, column: 5, scope: !3680)
!3687 = !DILocation(line: 265, column: 5, scope: !3564)
!3688 = !DILocation(line: 265, column: 5, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3564, file: !3565, line: 265, column: 5)
!3690 = !DILocation(line: 265, column: 5, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3689, file: !3565, line: 265, column: 5)
!3692 = !DILocation(line: 267, column: 12, scope: !3564)
!3693 = !DILocation(line: 267, column: 16, scope: !3564)
!3694 = !DILocation(line: 267, column: 5, scope: !3564)
!3695 = !DILocation(line: 268, column: 1, scope: !3564)
!3696 = distinct !DISubprogram(name: "ucp_rkey_config", scope: !3697, file: !3697, line: 35, type: !3698, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !3701)
!3697 = !DIFile(filename: "core/ucp_rkey.inl", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "08f487654ae500d6e80c7e852538a4c3")
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!3700, !384, !2290}
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!3701 = !{!3702, !3703}
!3702 = !DILocalVariable(name: "worker", arg: 1, scope: !3696, file: !3697, line: 35, type: !384)
!3703 = !DILocalVariable(name: "rkey", arg: 2, scope: !3696, file: !3697, line: 35, type: !2290)
!3704 = !DILocation(line: 35, column: 30, scope: !3696)
!3705 = !DILocation(line: 35, column: 49, scope: !3696)
!3706 = !DILocation(line: 38, column: 13, scope: !3696)
!3707 = !DILocation(line: 38, column: 21, scope: !3696)
!3708 = !DILocation(line: 38, column: 33, scope: !3696)
!3709 = !DILocation(line: 38, column: 39, scope: !3696)
!3710 = !DILocation(line: 38, column: 5, scope: !3696)
!3711 = !DISubprogram(name: "ucp_rkey_resolve_inner", scope: !1837, file: !1837, line: 159, type: !3712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{null, !2290, !378}
!3714 = !DISubprogram(name: "ucs_log_dispatch", scope: !3715, file: !3715, line: 118, type: !3716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3715 = !DIFile(filename: "ucs/debug/log_def.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "ed8d01d248f99ff4fb4b4b3ef49d1a2d")
!3716 = !DISubroutineType(types: !3717)
!3717 = !{null, !1106, !139, !1106, !2793, !2788, !1106, null}
!3718 = distinct !DISubprogram(name: "uct_ep_put_short", scope: !153, file: !153, line: 2844, type: !1134, scopeLine: 2846, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !3719)
!3719 = !{!3720, !3721, !3722, !3723, !3724}
!3720 = !DILocalVariable(name: "ep", arg: 1, scope: !3718, file: !153, line: 2844, type: !1136)
!3721 = !DILocalVariable(name: "buffer", arg: 2, scope: !3718, file: !153, line: 2844, type: !1083)
!3722 = !DILocalVariable(name: "length", arg: 3, scope: !3718, file: !153, line: 2844, type: !139)
!3723 = !DILocalVariable(name: "remote_addr", arg: 4, scope: !3718, file: !153, line: 2845, type: !351)
!3724 = !DILocalVariable(name: "rkey", arg: 5, scope: !3718, file: !153, line: 2845, type: !1141)
!3725 = !DILocation(line: 2844, column: 55, scope: !3718)
!3726 = !DILocation(line: 2844, column: 71, scope: !3718)
!3727 = !DILocation(line: 2844, column: 88, scope: !3718)
!3728 = !DILocation(line: 2845, column: 55, scope: !3718)
!3729 = !DILocation(line: 2845, column: 79, scope: !3718)
!3730 = !DILocation(line: 2847, column: 12, scope: !3718)
!3731 = !DILocation(line: 2847, column: 16, scope: !3718)
!3732 = !{!3733, !2817, i64 0}
!3733 = !{!"uct_ep", !2817, i64 0}
!3734 = !DILocation(line: 2847, column: 23, scope: !3718)
!3735 = !DILocation(line: 2847, column: 27, scope: !3718)
!3736 = !{!3737, !2817, i64 0}
!3737 = !{!"uct_iface", !3738, i64 0}
!3738 = !{!"uct_iface_ops", !2817, i64 0, !2817, i64 8, !2817, i64 16, !2817, i64 24, !2817, i64 32, !2817, i64 40, !2817, i64 48, !2817, i64 56, !2817, i64 64, !2817, i64 72, !2817, i64 80, !2817, i64 88, !2817, i64 96, !2817, i64 104, !2817, i64 112, !2817, i64 120, !2817, i64 128, !2817, i64 136, !2817, i64 144, !2817, i64 152, !2817, i64 160, !2817, i64 168, !2817, i64 176, !2817, i64 184, !2817, i64 192, !2817, i64 200, !2817, i64 208, !2817, i64 216, !2817, i64 224, !2817, i64 232, !2817, i64 240, !2817, i64 248, !2817, i64 256, !2817, i64 264, !2817, i64 272, !2817, i64 280, !2817, i64 288, !2817, i64 296, !2817, i64 304, !2817, i64 312, !2817, i64 320, !2817, i64 328, !2817, i64 336, !2817, i64 344, !2817, i64 352, !2817, i64 360, !2817, i64 368, !2817, i64 376, !2817, i64 384, !2817, i64 392}
!3739 = !DILocation(line: 2847, column: 40, scope: !3718)
!3740 = !DILocation(line: 2847, column: 44, scope: !3718)
!3741 = !DILocation(line: 2847, column: 52, scope: !3718)
!3742 = !DILocation(line: 2847, column: 60, scope: !3718)
!3743 = !DILocation(line: 2847, column: 73, scope: !3718)
!3744 = !DILocation(line: 2847, column: 5, scope: !3718)
!3745 = distinct !DISubprogram(name: "ucp_ep_get_fast_lane", scope: !3746, file: !3746, line: 26, type: !3747, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !3749)
!3746 = !DIFile(filename: "core/ucp_ep.inl", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "5ec3648d9c236419c48997cbb10bad9a")
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!1136, !378, !1913}
!3749 = !{!3750, !3751}
!3750 = !DILocalVariable(name: "ep", arg: 1, scope: !3745, file: !3746, line: 26, type: !378)
!3751 = !DILocalVariable(name: "lane_index", arg: 2, scope: !3745, file: !3746, line: 27, type: !1913)
!3752 = !DILocation(line: 26, column: 67, scope: !3745)
!3753 = !DILocation(line: 27, column: 75, scope: !3745)
!3754 = !DILocation(line: 30, column: 12, scope: !3745)
!3755 = !DILocation(line: 30, column: 16, scope: !3745)
!3756 = !DILocation(line: 30, column: 24, scope: !3745)
!3757 = !DILocation(line: 30, column: 5, scope: !3745)
!3758 = distinct !DISubprogram(name: "ucp_ep_config", scope: !3746, file: !3746, line: 20, type: !3759, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !3761)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!1904, !378}
!3761 = !{!3762}
!3762 = !DILocalVariable(name: "ep", arg: 1, scope: !3758, file: !3746, line: 20, type: !378)
!3763 = !DILocation(line: 20, column: 55, scope: !3758)
!3764 = !DILocation(line: 23, column: 13, scope: !3758)
!3765 = !{!3196, !2817, i64 1480}
!3766 = !DILocation(line: 23, column: 5, scope: !3758)
!3767 = distinct !DISubprogram(name: "ucp_rma_nonblocking", scope: !14, file: !14, line: 167, type: !3768, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !3770)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!1269, !378, !1083, !551, !351, !2290, !1317, !551, !3089}
!3770 = !{!3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3783}
!3771 = !DILocalVariable(name: "ep", arg: 1, scope: !3767, file: !14, line: 167, type: !378)
!3772 = !DILocalVariable(name: "buffer", arg: 2, scope: !3767, file: !14, line: 167, type: !1083)
!3773 = !DILocalVariable(name: "length", arg: 3, scope: !3767, file: !14, line: 167, type: !551)
!3774 = !DILocalVariable(name: "remote_addr", arg: 4, scope: !3767, file: !14, line: 168, type: !351)
!3775 = !DILocalVariable(name: "rkey", arg: 5, scope: !3767, file: !14, line: 168, type: !2290)
!3776 = !DILocalVariable(name: "progress_cb", arg: 6, scope: !3767, file: !14, line: 169, type: !1317)
!3777 = !DILocalVariable(name: "zcopy_thresh", arg: 7, scope: !3767, file: !14, line: 169, type: !551)
!3778 = !DILocalVariable(name: "param", arg: 8, scope: !3767, file: !14, line: 170, type: !3089)
!3779 = !DILocalVariable(name: "status", scope: !3767, file: !14, line: 172, type: !345)
!3780 = !DILocalVariable(name: "req", scope: !3767, file: !14, line: 173, type: !355)
!3781 = !DILocalVariable(name: "__req", scope: !3782, file: !14, line: 175, type: !355)
!3782 = distinct !DILexicalBlock(scope: !3767, file: !14, line: 175, column: 11)
!3783 = !DILocalVariable(name: "_req", scope: !3784, file: !14, line: 175, type: !355)
!3784 = distinct !DILexicalBlock(scope: !3785, file: !14, line: 175, column: 11)
!3785 = distinct !DILexicalBlock(scope: !3786, file: !14, line: 175, column: 11)
!3786 = distinct !DILexicalBlock(scope: !3782, file: !14, line: 175, column: 11)
!3787 = !DILocation(line: 167, column: 30, scope: !3767)
!3788 = !DILocation(line: 167, column: 46, scope: !3767)
!3789 = !DILocation(line: 167, column: 61, scope: !3767)
!3790 = !DILocation(line: 168, column: 30, scope: !3767)
!3791 = !DILocation(line: 168, column: 54, scope: !3767)
!3792 = !DILocation(line: 169, column: 44, scope: !3767)
!3793 = !DILocation(line: 169, column: 64, scope: !3767)
!3794 = !DILocation(line: 170, column: 48, scope: !3767)
!3795 = !DILocation(line: 172, column: 5, scope: !3767)
!3796 = !DILocation(line: 172, column: 18, scope: !3767)
!3797 = !DILocation(line: 173, column: 5, scope: !3767)
!3798 = !DILocation(line: 173, column: 20, scope: !3767)
!3799 = !DILocation(line: 175, column: 11, scope: !3782)
!3800 = !DILocation(line: 175, column: 11, scope: !3786)
!3801 = !DILocation(line: 175, column: 11, scope: !3784)
!3802 = !DILocation(line: 175, column: 11, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3784, file: !14, line: 175, column: 11)
!3804 = !DILocation(line: 175, column: 11, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !3803, file: !14, line: 175, column: 11)
!3806 = !DILocation(line: 175, column: 11, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3805, file: !14, line: 175, column: 11)
!3808 = !DILocation(line: 175, column: 11, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3807, file: !14, line: 175, column: 11)
!3810 = !DILocation(line: 175, column: 11, scope: !3785)
!3811 = !DILocation(line: 175, column: 11, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3785, file: !14, line: 175, column: 11)
!3813 = !DILocation(line: 175, column: 11, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3815, file: !14, line: 175, column: 11)
!3815 = distinct !DILexicalBlock(scope: !3812, file: !14, line: 175, column: 11)
!3816 = !DILocation(line: 175, column: 11, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3786, file: !14, line: 175, column: 11)
!3818 = !DILocation(line: 175, column: 11, scope: !3767)
!3819 = !DILocation(line: 175, column: 9, scope: !3767)
!3820 = !DILocation(line: 178, column: 35, scope: !3767)
!3821 = !DILocation(line: 178, column: 40, scope: !3767)
!3822 = !DILocation(line: 178, column: 44, scope: !3767)
!3823 = !DILocation(line: 178, column: 52, scope: !3767)
!3824 = !DILocation(line: 178, column: 60, scope: !3767)
!3825 = !DILocation(line: 178, column: 73, scope: !3767)
!3826 = !DILocation(line: 179, column: 35, scope: !3767)
!3827 = !DILocation(line: 179, column: 48, scope: !3767)
!3828 = !DILocation(line: 179, column: 62, scope: !3767)
!3829 = !DILocation(line: 178, column: 14, scope: !3767)
!3830 = !DILocation(line: 178, column: 12, scope: !3767)
!3831 = !DILocation(line: 180, column: 9, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3767, file: !14, line: 180, column: 9)
!3833 = !DILocation(line: 180, column: 9, scope: !3767)
!3834 = !DILocation(line: 181, column: 16, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3832, file: !14, line: 180, column: 41)
!3836 = !DILocation(line: 181, column: 9, scope: !3835)
!3837 = !DILocation(line: 184, column: 33, scope: !3767)
!3838 = !DILocation(line: 184, column: 38, scope: !3767)
!3839 = !DILocation(line: 184, column: 12, scope: !3767)
!3840 = !DILocation(line: 184, column: 5, scope: !3767)
!3841 = !DILocation(line: 185, column: 1, scope: !3767)
!3842 = distinct !DISubprogram(name: "ucp_get_nbi", scope: !14, file: !14, line: 327, type: !3843, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !3845)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!345, !378, !339, !551, !351, !2290}
!3845 = !{!3846, !3847, !3848, !3849, !3850, !3851}
!3846 = !DILocalVariable(name: "ep", arg: 1, scope: !3842, file: !14, line: 327, type: !378)
!3847 = !DILocalVariable(name: "buffer", arg: 2, scope: !3842, file: !14, line: 327, type: !339)
!3848 = !DILocalVariable(name: "length", arg: 3, scope: !3842, file: !14, line: 327, type: !551)
!3849 = !DILocalVariable(name: "remote_addr", arg: 4, scope: !3842, file: !14, line: 328, type: !351)
!3850 = !DILocalVariable(name: "rkey", arg: 5, scope: !3842, file: !14, line: 328, type: !2290)
!3851 = !DILocalVariable(name: "status_ptr", scope: !3842, file: !14, line: 330, type: !1269)
!3852 = !DILocation(line: 327, column: 35, scope: !3842)
!3853 = !DILocation(line: 327, column: 45, scope: !3842)
!3854 = !DILocation(line: 327, column: 60, scope: !3842)
!3855 = !DILocation(line: 328, column: 35, scope: !3842)
!3856 = !DILocation(line: 328, column: 59, scope: !3842)
!3857 = !DILocation(line: 330, column: 5, scope: !3842)
!3858 = !DILocation(line: 330, column: 22, scope: !3842)
!3859 = !DILocation(line: 332, column: 30, scope: !3842)
!3860 = !DILocation(line: 332, column: 34, scope: !3842)
!3861 = !DILocation(line: 332, column: 42, scope: !3842)
!3862 = !DILocation(line: 332, column: 50, scope: !3842)
!3863 = !DILocation(line: 332, column: 63, scope: !3842)
!3864 = !DILocation(line: 332, column: 18, scope: !3842)
!3865 = !DILocation(line: 332, column: 16, scope: !3842)
!3866 = !DILocation(line: 334, column: 9, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3842, file: !14, line: 334, column: 9)
!3868 = !DILocation(line: 334, column: 9, scope: !3842)
!3869 = !DILocation(line: 335, column: 26, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3867, file: !14, line: 334, column: 37)
!3871 = !DILocation(line: 335, column: 9, scope: !3870)
!3872 = !DILocation(line: 336, column: 9, scope: !3870)
!3873 = !DILocation(line: 340, column: 12, scope: !3842)
!3874 = !DILocation(line: 340, column: 5, scope: !3842)
!3875 = !DILocation(line: 341, column: 1, scope: !3842)
!3876 = distinct !DISubprogram(name: "ucp_get_nbx", scope: !14, file: !14, line: 355, type: !3877, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !3879)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!1269, !378, !339, !551, !351, !2290, !3089}
!3879 = !{!3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3897, !3901, !3904}
!3880 = !DILocalVariable(name: "ep", arg: 1, scope: !3876, file: !14, line: 355, type: !378)
!3881 = !DILocalVariable(name: "buffer", arg: 2, scope: !3876, file: !14, line: 355, type: !339)
!3882 = !DILocalVariable(name: "count", arg: 3, scope: !3876, file: !14, line: 355, type: !551)
!3883 = !DILocalVariable(name: "remote_addr", arg: 4, scope: !3876, file: !14, line: 356, type: !351)
!3884 = !DILocalVariable(name: "rkey", arg: 5, scope: !3876, file: !14, line: 356, type: !2290)
!3885 = !DILocalVariable(name: "param", arg: 6, scope: !3876, file: !14, line: 357, type: !3089)
!3886 = !DILocalVariable(name: "worker", scope: !3876, file: !14, line: 359, type: !384)
!3887 = !DILocalVariable(name: "contig_length", scope: !3876, file: !14, line: 360, type: !551)
!3888 = !DILocalVariable(name: "rma_config", scope: !3876, file: !14, line: 361, type: !3126)
!3889 = !DILocalVariable(name: "ret", scope: !3876, file: !14, line: 362, type: !1269)
!3890 = !DILocalVariable(name: "status", scope: !3876, file: !14, line: 363, type: !345)
!3891 = !DILocalVariable(name: "req", scope: !3876, file: !14, line: 364, type: !355)
!3892 = !DILocalVariable(name: "datatype", scope: !3876, file: !14, line: 365, type: !343)
!3893 = !DILocalVariable(name: "__req", scope: !3894, file: !14, line: 381, type: !355)
!3894 = distinct !DILexicalBlock(scope: !3895, file: !14, line: 381, column: 15)
!3895 = distinct !DILexicalBlock(scope: !3896, file: !14, line: 379, column: 51)
!3896 = distinct !DILexicalBlock(scope: !3876, file: !14, line: 379, column: 9)
!3897 = !DILocalVariable(name: "_req", scope: !3898, file: !14, line: 381, type: !355)
!3898 = distinct !DILexicalBlock(scope: !3899, file: !14, line: 381, column: 15)
!3899 = distinct !DILexicalBlock(scope: !3900, file: !14, line: 381, column: 15)
!3900 = distinct !DILexicalBlock(scope: !3894, file: !14, line: 381, column: 15)
!3901 = !DILocalVariable(name: "_status_nc", scope: !3902, file: !14, line: 397, type: !345)
!3902 = distinct !DILexicalBlock(scope: !3903, file: !14, line: 397, column: 18)
!3903 = distinct !DILexicalBlock(scope: !3896, file: !14, line: 396, column: 12)
!3904 = !DILabel(scope: !3876, name: "out_unlock", file: !14, line: 409)
!3905 = !DILocation(line: 355, column: 39, scope: !3876)
!3906 = !DILocation(line: 355, column: 49, scope: !3876)
!3907 = !DILocation(line: 355, column: 64, scope: !3876)
!3908 = !DILocation(line: 356, column: 39, scope: !3876)
!3909 = !DILocation(line: 356, column: 63, scope: !3876)
!3910 = !DILocation(line: 357, column: 57, scope: !3876)
!3911 = !DILocation(line: 359, column: 5, scope: !3876)
!3912 = !DILocation(line: 359, column: 18, scope: !3876)
!3913 = !DILocation(line: 359, column: 28, scope: !3876)
!3914 = !DILocation(line: 359, column: 32, scope: !3876)
!3915 = !DILocation(line: 360, column: 5, scope: !3876)
!3916 = !DILocation(line: 360, column: 12, scope: !3876)
!3917 = !DILocation(line: 361, column: 5, scope: !3876)
!3918 = !DILocation(line: 361, column: 26, scope: !3876)
!3919 = !DILocation(line: 362, column: 5, scope: !3876)
!3920 = !DILocation(line: 362, column: 22, scope: !3876)
!3921 = !DILocation(line: 363, column: 5, scope: !3876)
!3922 = !DILocation(line: 363, column: 18, scope: !3876)
!3923 = !DILocation(line: 364, column: 5, scope: !3876)
!3924 = !DILocation(line: 364, column: 20, scope: !3876)
!3925 = !DILocation(line: 365, column: 5, scope: !3876)
!3926 = !DILocation(line: 365, column: 15, scope: !3876)
!3927 = !DILocation(line: 367, column: 9, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3876, file: !14, line: 367, column: 9)
!3929 = !DILocation(line: 367, column: 9, scope: !3876)
!3930 = !DILocation(line: 368, column: 9, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3928, file: !14, line: 367, column: 78)
!3932 = !DILocation(line: 371, column: 5, scope: !3876)
!3933 = !DILocation(line: 371, column: 5, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3876, file: !14, line: 371, column: 5)
!3935 = !DILocation(line: 371, column: 5, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3934, file: !14, line: 371, column: 5)
!3937 = !DILocation(line: 371, column: 5, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3939, file: !14, line: 371, column: 5)
!3939 = distinct !DILexicalBlock(scope: !3934, file: !14, line: 371, column: 5)
!3940 = !DILocation(line: 371, column: 5, scope: !3939)
!3941 = !DILocation(line: 371, column: 5, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3938, file: !14, line: 371, column: 5)
!3943 = !DILocation(line: 371, column: 5, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3934, file: !14, line: 371, column: 5)
!3945 = !DILocation(line: 374, column: 5, scope: !3876)
!3946 = !DILocation(line: 374, column: 5, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3876, file: !14, line: 374, column: 5)
!3948 = !DILocation(line: 374, column: 5, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3947, file: !14, line: 374, column: 5)
!3950 = !DILocation(line: 379, column: 9, scope: !3896)
!3951 = !DILocation(line: 379, column: 17, scope: !3896)
!3952 = !DILocation(line: 379, column: 26, scope: !3896)
!3953 = !DILocation(line: 379, column: 33, scope: !3896)
!3954 = !DILocation(line: 379, column: 37, scope: !3896)
!3955 = !DILocation(line: 379, column: 9, scope: !3876)
!3956 = !DILocation(line: 380, column: 47, scope: !3895)
!3957 = !DILocation(line: 380, column: 20, scope: !3895)
!3958 = !DILocation(line: 380, column: 18, scope: !3895)
!3959 = !DILocation(line: 381, column: 15, scope: !3894)
!3960 = !DILocation(line: 381, column: 15, scope: !3900)
!3961 = !DILocation(line: 381, column: 15, scope: !3898)
!3962 = !DILocation(line: 381, column: 15, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3898, file: !14, line: 381, column: 15)
!3964 = !DILocation(line: 381, column: 15, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3963, file: !14, line: 381, column: 15)
!3966 = !DILocation(line: 381, column: 15, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3965, file: !14, line: 381, column: 15)
!3968 = !DILocation(line: 381, column: 15, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3967, file: !14, line: 381, column: 15)
!3970 = !DILocation(line: 381, column: 15, scope: !3899)
!3971 = !DILocation(line: 381, column: 15, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3899, file: !14, line: 381, column: 15)
!3973 = !DILocation(line: 381, column: 15, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3975, file: !14, line: 381, column: 15)
!3975 = distinct !DILexicalBlock(scope: !3972, file: !14, line: 381, column: 15)
!3976 = !DILocation(line: 381, column: 15, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3900, file: !14, line: 381, column: 15)
!3978 = !DILocation(line: 381, column: 15, scope: !3895)
!3979 = !DILocation(line: 381, column: 13, scope: !3895)
!3980 = !DILocation(line: 385, column: 42, scope: !3895)
!3981 = !DILocation(line: 385, column: 9, scope: !3895)
!3982 = !DILocation(line: 385, column: 14, scope: !3895)
!3983 = !DILocation(line: 385, column: 19, scope: !3895)
!3984 = !DILocation(line: 385, column: 23, scope: !3895)
!3985 = !DILocation(line: 385, column: 40, scope: !3895)
!3986 = !DILocation(line: 386, column: 42, scope: !3895)
!3987 = !DILocation(line: 386, column: 9, scope: !3895)
!3988 = !DILocation(line: 386, column: 14, scope: !3895)
!3989 = !DILocation(line: 386, column: 19, scope: !3895)
!3990 = !DILocation(line: 386, column: 23, scope: !3895)
!3991 = !DILocation(line: 386, column: 40, scope: !3895)
!3992 = !DILocation(line: 387, column: 9, scope: !3895)
!3993 = !DILocation(line: 387, column: 14, scope: !3895)
!3994 = !DILocation(line: 387, column: 19, scope: !3895)
!3995 = !DILocation(line: 387, column: 25, scope: !3895)
!3996 = !DILocation(line: 387, column: 40, scope: !3895)
!3997 = !DILocation(line: 388, column: 13, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3895, file: !14, line: 388, column: 13)
!3999 = !DILocation(line: 388, column: 13, scope: !3895)
!4000 = !DILocation(line: 389, column: 50, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3998, file: !14, line: 388, column: 41)
!4002 = !DILocation(line: 389, column: 60, scope: !4001)
!4003 = !DILocation(line: 389, column: 29, scope: !4001)
!4004 = !DILocation(line: 389, column: 27, scope: !4001)
!4005 = !DILocation(line: 390, column: 9, scope: !4001)
!4006 = !DILocation(line: 393, column: 17, scope: !3895)
!4007 = !DILocation(line: 393, column: 38, scope: !3895)
!4008 = !DILocation(line: 393, column: 46, scope: !3895)
!4009 = !DILocation(line: 393, column: 22, scope: !3895)
!4010 = !DILocation(line: 393, column: 53, scope: !3895)
!4011 = !DILocation(line: 394, column: 17, scope: !3895)
!4012 = !DILocation(line: 394, column: 23, scope: !3895)
!4013 = !DILocation(line: 394, column: 34, scope: !3895)
!4014 = !DILocation(line: 394, column: 54, scope: !3895)
!4015 = !DILocation(line: 394, column: 62, scope: !3895)
!4016 = !DILocation(line: 394, column: 69, scope: !3895)
!4017 = !DILocation(line: 395, column: 17, scope: !3895)
!4018 = !DILocation(line: 395, column: 32, scope: !3895)
!4019 = !DILocation(line: 392, column: 15, scope: !3895)
!4020 = !DILocation(line: 392, column: 13, scope: !3895)
!4021 = !DILocation(line: 396, column: 5, scope: !3895)
!4022 = !DILocation(line: 397, column: 18, scope: !3902)
!4023 = !DILocation(line: 397, column: 18, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !3902, file: !14, line: 397, column: 18)
!4025 = !DILocation(line: 397, column: 18, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4024, file: !14, line: 397, column: 18)
!4027 = !DILocation(line: 397, column: 18, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3902, file: !14, line: 397, column: 18)
!4029 = !DILocation(line: 397, column: 18, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4028, file: !14, line: 397, column: 18)
!4031 = !DILocation(line: 397, column: 18, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4030, file: !14, line: 397, column: 18)
!4033 = !DILocation(line: 397, column: 18, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4035, file: !14, line: 397, column: 18)
!4035 = distinct !DILexicalBlock(scope: !4032, file: !14, line: 397, column: 18)
!4036 = !DILocation(line: 397, column: 18, scope: !4035)
!4037 = !DILocation(line: 397, column: 18, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4034, file: !14, line: 397, column: 18)
!4039 = !DILocation(line: 397, column: 18, scope: !3903)
!4040 = !DILocation(line: 397, column: 16, scope: !3903)
!4041 = !DILocation(line: 398, column: 13, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !3903, file: !14, line: 398, column: 13)
!4043 = !DILocation(line: 398, column: 20, scope: !4042)
!4044 = !DILocation(line: 398, column: 13, scope: !3903)
!4045 = !DILocation(line: 399, column: 19, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4042, file: !14, line: 398, column: 31)
!4047 = !DILocation(line: 399, column: 17, scope: !4046)
!4048 = !DILocation(line: 400, column: 13, scope: !4046)
!4049 = !DILocation(line: 403, column: 37, scope: !3903)
!4050 = !DILocation(line: 403, column: 23, scope: !3903)
!4051 = !DILocation(line: 403, column: 42, scope: !3903)
!4052 = !DILocation(line: 403, column: 46, scope: !3903)
!4053 = !DILocation(line: 403, column: 52, scope: !3903)
!4054 = !DILocation(line: 403, column: 58, scope: !3903)
!4055 = !DILocation(line: 403, column: 20, scope: !3903)
!4056 = !DILocation(line: 404, column: 42, scope: !3903)
!4057 = !DILocation(line: 404, column: 46, scope: !3903)
!4058 = !DILocation(line: 404, column: 54, scope: !3903)
!4059 = !DILocation(line: 404, column: 61, scope: !3903)
!4060 = !DILocation(line: 404, column: 74, scope: !3903)
!4061 = !DILocation(line: 405, column: 42, scope: !3903)
!4062 = !DILocation(line: 405, column: 91, scope: !3903)
!4063 = !{!3394, !2817, i64 16}
!4064 = !DILocation(line: 406, column: 42, scope: !3903)
!4065 = !DILocation(line: 406, column: 54, scope: !3903)
!4066 = !{!3398, !2830, i64 56}
!4067 = !DILocation(line: 406, column: 72, scope: !3903)
!4068 = !DILocation(line: 404, column: 22, scope: !3903)
!4069 = !DILocation(line: 404, column: 20, scope: !3903)
!4070 = !DILocation(line: 409, column: 1, scope: !3876)
!4071 = !DILocation(line: 411, column: 12, scope: !3876)
!4072 = !DILocation(line: 411, column: 5, scope: !3876)
!4073 = !DILocation(line: 412, column: 1, scope: !3876)
!4074 = distinct !DISubprogram(name: "ucp_get_nb", scope: !14, file: !14, line: 343, type: !4075, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4077)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!1269, !378, !339, !551, !351, !2290, !2796}
!4077 = !{!4078, !4079, !4080, !4081, !4082, !4083, !4084}
!4078 = !DILocalVariable(name: "ep", arg: 1, scope: !4074, file: !14, line: 343, type: !378)
!4079 = !DILocalVariable(name: "buffer", arg: 2, scope: !4074, file: !14, line: 343, type: !339)
!4080 = !DILocalVariable(name: "length", arg: 3, scope: !4074, file: !14, line: 343, type: !551)
!4081 = !DILocalVariable(name: "remote_addr", arg: 4, scope: !4074, file: !14, line: 344, type: !351)
!4082 = !DILocalVariable(name: "rkey", arg: 5, scope: !4074, file: !14, line: 344, type: !2290)
!4083 = !DILocalVariable(name: "cb", arg: 6, scope: !4074, file: !14, line: 345, type: !2796)
!4084 = !DILocalVariable(name: "param", scope: !4074, file: !14, line: 347, type: !3091)
!4085 = !DILocation(line: 343, column: 38, scope: !4074)
!4086 = !DILocation(line: 343, column: 48, scope: !4074)
!4087 = !DILocation(line: 343, column: 63, scope: !4074)
!4088 = !DILocation(line: 344, column: 38, scope: !4074)
!4089 = !DILocation(line: 344, column: 62, scope: !4074)
!4090 = !DILocation(line: 345, column: 49, scope: !4074)
!4091 = !DILocation(line: 347, column: 5, scope: !4074)
!4092 = !DILocation(line: 347, column: 25, scope: !4074)
!4093 = !DILocation(line: 347, column: 33, scope: !4074)
!4094 = !DILocation(line: 349, column: 50, scope: !4074)
!4095 = !DILocation(line: 349, column: 12, scope: !4074)
!4096 = !DILocation(line: 352, column: 24, scope: !4074)
!4097 = !DILocation(line: 352, column: 28, scope: !4074)
!4098 = !DILocation(line: 352, column: 36, scope: !4074)
!4099 = !DILocation(line: 352, column: 44, scope: !4074)
!4100 = !DILocation(line: 352, column: 57, scope: !4074)
!4101 = !DILocation(line: 352, column: 12, scope: !4074)
!4102 = !DILocation(line: 353, column: 1, scope: !4074)
!4103 = !DILocation(line: 352, column: 5, scope: !4074)
!4104 = distinct !DISubprogram(name: "ucp_request_param_datatype", scope: !40, file: !40, line: 972, type: !4105, scopeLine: 973, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4107)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!350, !3089}
!4107 = !{!4108}
!4108 = !DILocalVariable(name: "param", arg: 1, scope: !4104, file: !40, line: 972, type: !3089)
!4109 = !DILocation(line: 972, column: 55, scope: !4104)
!4110 = !DILocation(line: 974, column: 13, scope: !4104)
!4111 = !DILocation(line: 974, column: 20, scope: !4104)
!4112 = !DILocation(line: 974, column: 33, scope: !4104)
!4113 = !DILocation(line: 974, column: 12, scope: !4104)
!4114 = !DILocation(line: 975, column: 12, scope: !4104)
!4115 = !DILocation(line: 975, column: 19, scope: !4104)
!4116 = !DILocation(line: 974, column: 5, scope: !4104)
!4117 = distinct !DISubprogram(name: "ucp_put", scope: !14, file: !14, line: 414, type: !3053, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4118)
!4118 = !{!4119, !4120, !4121, !4122, !4123}
!4119 = !DILocalVariable(name: "ep", arg: 1, scope: !4117, file: !14, line: 414, type: !378)
!4120 = !DILocalVariable(name: "buffer", arg: 2, scope: !4117, file: !14, line: 414, type: !1083)
!4121 = !DILocalVariable(name: "length", arg: 3, scope: !4117, file: !14, line: 414, type: !551)
!4122 = !DILocalVariable(name: "remote_addr", arg: 4, scope: !4117, file: !14, line: 414, type: !351)
!4123 = !DILocalVariable(name: "rkey", arg: 5, scope: !4117, file: !14, line: 414, type: !2290)
!4124 = !DILocation(line: 414, column: 1, scope: !4117)
!4125 = !DILocation(line: 418, column: 25, scope: !4117)
!4126 = !DILocation(line: 418, column: 29, scope: !4117)
!4127 = !DILocation(line: 419, column: 36, scope: !4117)
!4128 = !DILocation(line: 419, column: 40, scope: !4117)
!4129 = !DILocation(line: 419, column: 48, scope: !4117)
!4130 = !DILocation(line: 419, column: 56, scope: !4117)
!4131 = !DILocation(line: 419, column: 69, scope: !4117)
!4132 = !DILocation(line: 419, column: 25, scope: !4117)
!4133 = !DILocation(line: 418, column: 12, scope: !4117)
!4134 = !DILocation(line: 418, column: 5, scope: !4117)
!4135 = distinct !DISubprogram(name: "ucp_rma_wait", scope: !89, file: !89, line: 59, type: !4136, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4138)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!345, !384, !339, !1106}
!4138 = !{!4139, !4140, !4141, !4142, !4143}
!4139 = !DILocalVariable(name: "worker", arg: 1, scope: !4135, file: !89, line: 59, type: !384)
!4140 = !DILocalVariable(name: "user_req", arg: 2, scope: !4135, file: !89, line: 59, type: !339)
!4141 = !DILocalVariable(name: "op_name", arg: 3, scope: !4135, file: !89, line: 60, type: !1106)
!4142 = !DILocalVariable(name: "status", scope: !4135, file: !89, line: 62, type: !345)
!4143 = !DILocalVariable(name: "req", scope: !4135, file: !89, line: 63, type: !355)
!4144 = !DILocation(line: 59, column: 54, scope: !4135)
!4145 = !DILocation(line: 59, column: 68, scope: !4135)
!4146 = !DILocation(line: 60, column: 53, scope: !4135)
!4147 = !DILocation(line: 62, column: 5, scope: !4135)
!4148 = !DILocation(line: 62, column: 18, scope: !4135)
!4149 = !DILocation(line: 63, column: 5, scope: !4135)
!4150 = !DILocation(line: 63, column: 20, scope: !4135)
!4151 = !DILocation(line: 65, column: 9, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4135, file: !89, line: 65, column: 9)
!4153 = !DILocation(line: 65, column: 9, scope: !4135)
!4154 = !DILocation(line: 66, column: 9, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4152, file: !89, line: 65, column: 39)
!4156 = !DILocation(line: 67, column: 16, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4152, file: !89, line: 67, column: 16)
!4158 = !DILocation(line: 67, column: 16, scope: !4152)
!4159 = !DILocation(line: 68, column: 9, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4157, file: !89, line: 67, column: 56)
!4161 = !DILocation(line: 68, column: 9, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4160, file: !89, line: 68, column: 9)
!4163 = !DILocation(line: 68, column: 9, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4165, file: !89, line: 68, column: 9)
!4165 = distinct !DILexicalBlock(scope: !4162, file: !89, line: 68, column: 9)
!4166 = !DILocation(line: 68, column: 9, scope: !4165)
!4167 = !DILocation(line: 68, column: 9, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4164, file: !89, line: 68, column: 9)
!4169 = !DILocation(line: 70, column: 16, scope: !4160)
!4170 = !DILocation(line: 70, column: 9, scope: !4160)
!4171 = !DILocation(line: 72, column: 31, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4157, file: !89, line: 71, column: 12)
!4173 = !DILocation(line: 72, column: 40, scope: !4172)
!4174 = !DILocation(line: 72, column: 13, scope: !4172)
!4175 = !DILocation(line: 73, column: 9, scope: !4172)
!4176 = !DILocation(line: 74, column: 33, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4172, file: !89, line: 73, column: 12)
!4178 = !DILocation(line: 74, column: 13, scope: !4177)
!4179 = !DILocation(line: 75, column: 9, scope: !4177)
!4180 = !DILocation(line: 75, column: 20, scope: !4172)
!4181 = !DILocation(line: 75, column: 25, scope: !4172)
!4182 = !DILocation(line: 75, column: 31, scope: !4172)
!4183 = !DILocation(line: 75, column: 18, scope: !4172)
!4184 = distinct !{!4184, !4175, !4185, !4186}
!4185 = !DILocation(line: 75, column: 60, scope: !4172)
!4186 = !{!"llvm.loop.mustprogress"}
!4187 = !DILocation(line: 76, column: 18, scope: !4172)
!4188 = !DILocation(line: 76, column: 23, scope: !4172)
!4189 = !DILocation(line: 76, column: 16, scope: !4172)
!4190 = !DILocation(line: 77, column: 29, scope: !4172)
!4191 = !DILocation(line: 77, column: 9, scope: !4172)
!4192 = !DILocation(line: 78, column: 16, scope: !4172)
!4193 = !DILocation(line: 78, column: 9, scope: !4172)
!4194 = !DILocation(line: 80, column: 1, scope: !4135)
!4195 = distinct !DISubprogram(name: "ucp_get", scope: !14, file: !14, line: 424, type: !3843, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4196)
!4196 = !{!4197, !4198, !4199, !4200, !4201}
!4197 = !DILocalVariable(name: "ep", arg: 1, scope: !4195, file: !14, line: 424, type: !378)
!4198 = !DILocalVariable(name: "buffer", arg: 2, scope: !4195, file: !14, line: 424, type: !339)
!4199 = !DILocalVariable(name: "length", arg: 3, scope: !4195, file: !14, line: 424, type: !551)
!4200 = !DILocalVariable(name: "remote_addr", arg: 4, scope: !4195, file: !14, line: 424, type: !351)
!4201 = !DILocalVariable(name: "rkey", arg: 5, scope: !4195, file: !14, line: 424, type: !2290)
!4202 = !DILocation(line: 424, column: 1, scope: !4195)
!4203 = !DILocation(line: 428, column: 25, scope: !4195)
!4204 = !DILocation(line: 428, column: 29, scope: !4195)
!4205 = !DILocation(line: 429, column: 36, scope: !4195)
!4206 = !DILocation(line: 429, column: 40, scope: !4195)
!4207 = !DILocation(line: 429, column: 48, scope: !4195)
!4208 = !DILocation(line: 429, column: 56, scope: !4195)
!4209 = !DILocation(line: 429, column: 69, scope: !4195)
!4210 = !DILocation(line: 429, column: 25, scope: !4195)
!4211 = !DILocation(line: 428, column: 12, scope: !4195)
!4212 = !DILocation(line: 428, column: 5, scope: !4195)
!4213 = distinct !DISubprogram(name: "ucp_worker_iface", scope: !2, file: !2, line: 112, type: !4214, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4216)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!1118, !384, !528}
!4216 = !{!4217, !4218, !4219, !4220, !4222}
!4217 = !DILocalVariable(name: "worker", arg: 1, scope: !4213, file: !2, line: 112, type: !384)
!4218 = !DILocalVariable(name: "rsc_index", arg: 2, scope: !4213, file: !2, line: 112, type: !528)
!4219 = !DILocalVariable(name: "tl_bitmap", scope: !4213, file: !2, line: 114, type: !628)
!4220 = !DILocalVariable(name: "_word_index", scope: !4221, file: !2, line: 122, type: !551)
!4221 = distinct !DILexicalBlock(scope: !4213, file: !2, line: 122, column: 27)
!4222 = !DILocalVariable(name: "_popcount", scope: !4221, file: !2, line: 122, type: !551)
!4223 = !DILocation(line: 112, column: 31, scope: !4213)
!4224 = !DILocation(line: 112, column: 55, scope: !4213)
!4225 = !DILocation(line: 114, column: 5, scope: !4213)
!4226 = !DILocation(line: 114, column: 21, scope: !4213)
!4227 = !DILocation(line: 116, column: 9, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4213, file: !2, line: 116, column: 9)
!4229 = !DILocation(line: 116, column: 19, scope: !4228)
!4230 = !DILocation(line: 116, column: 9, scope: !4213)
!4231 = !DILocation(line: 117, column: 9, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4228, file: !2, line: 116, column: 41)
!4233 = !DILocation(line: 120, column: 17, scope: !4213)
!4234 = !DILocation(line: 120, column: 25, scope: !4213)
!4235 = !DILocation(line: 120, column: 34, scope: !4213)
!4236 = !{i64 0, i64 16, !2831}
!4237 = !DILocation(line: 122, column: 12, scope: !4213)
!4238 = !DILocation(line: 122, column: 20, scope: !4213)
!4239 = !{!3196, !2817, i64 472}
!4240 = !DILocation(line: 122, column: 27, scope: !4221)
!4241 = !DILocation(line: 122, column: 27, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4221, file: !2, line: 122, column: 27)
!4243 = !DILocation(line: 122, column: 27, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4242, file: !2, line: 122, column: 27)
!4245 = !DILocation(line: 122, column: 27, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4247, file: !2, line: 122, column: 27)
!4247 = distinct !DILexicalBlock(scope: !4244, file: !2, line: 122, column: 27)
!4248 = !DILocation(line: 122, column: 27, scope: !4247)
!4249 = !DILocation(line: 122, column: 27, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4246, file: !2, line: 122, column: 27)
!4251 = !DILocation(line: 122, column: 27, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4246, file: !2, line: 122, column: 27)
!4253 = distinct !{!4253, !4241, !4241, !4186}
!4254 = !DILocation(line: 122, column: 27, scope: !4213)
!4255 = !DILocation(line: 122, column: 5, scope: !4213)
!4256 = !DILocation(line: 123, column: 1, scope: !4213)
!4257 = !DISubprogram(name: "ucp_request_send_state_ff", scope: !238, file: !238, line: 537, type: !2180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4258 = !DISubprogram(name: "ucs_fatal_error_format", scope: !4259, file: !4259, line: 88, type: !4260, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4259 = !DIFile(filename: "ucs/debug/assert.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "4e96cd73de008c23dbc0cd8583d97789")
!4260 = !DISubroutineType(types: !4261)
!4261 = !{null, !1106, !139, !1106, !1106, null}
!4262 = distinct !DISubprogram(name: "ucp_proto_select_is_short", scope: !4263, file: !4263, line: 142, type: !4264, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4268)
!4263 = !DIFile(filename: "proto/proto_select.inl", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "1881493bf9177865188316d1ed3196ba")
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!420, !378, !4266, !1147}
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2214)
!4268 = !{!4269, !4270, !4271}
!4269 = !DILocalVariable(name: "ep", arg: 1, scope: !4262, file: !4263, line: 142, type: !378)
!4270 = !DILocalVariable(name: "proto_short", arg: 2, scope: !4262, file: !4263, line: 143, type: !4266)
!4271 = !DILocalVariable(name: "length", arg: 3, scope: !4262, file: !4263, line: 144, type: !1147)
!4272 = !DILocation(line: 142, column: 36, scope: !4262)
!4273 = !DILocation(line: 143, column: 59, scope: !4262)
!4274 = !DILocation(line: 144, column: 35, scope: !4262)
!4275 = !DILocation(line: 146, column: 12, scope: !4262)
!4276 = !{!3483, !2830, i64 8}
!4277 = !DILocation(line: 146, column: 70, scope: !4262)
!4278 = !DILocation(line: 147, column: 14, scope: !4262)
!4279 = !DILocation(line: 147, column: 24, scope: !4262)
!4280 = !DILocation(line: 147, column: 37, scope: !4262)
!4281 = !{!3483, !2830, i64 0}
!4282 = !DILocation(line: 147, column: 21, scope: !4262)
!4283 = !DILocation(line: 147, column: 58, scope: !4262)
!4284 = !DILocation(line: 148, column: 13, scope: !4262)
!4285 = !DILocation(line: 0, scope: !4262)
!4286 = !DILocation(line: 146, column: 5, scope: !4262)
!4287 = distinct !DISubprogram(name: "ucp_rkey_get_tl_rkey", scope: !3697, file: !3697, line: 42, type: !4288, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4290)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{!1141, !2290, !585}
!4290 = !{!4291, !4292}
!4291 = !DILocalVariable(name: "rkey", arg: 1, scope: !4287, file: !3697, line: 42, type: !2290)
!4292 = !DILocalVariable(name: "rkey_index", arg: 2, scope: !4287, file: !3697, line: 42, type: !585)
!4293 = !DILocation(line: 42, column: 33, scope: !4287)
!4294 = !DILocation(line: 42, column: 54, scope: !4287)
!4295 = !DILocation(line: 44, column: 9, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4287, file: !3697, line: 44, column: 9)
!4297 = !DILocation(line: 44, column: 20, scope: !4296)
!4298 = !DILocation(line: 44, column: 9, scope: !4287)
!4299 = !DILocation(line: 45, column: 9, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4296, file: !3697, line: 44, column: 42)
!4301 = !DILocation(line: 49, column: 12, scope: !4287)
!4302 = !DILocation(line: 49, column: 18, scope: !4287)
!4303 = !DILocation(line: 49, column: 26, scope: !4287)
!4304 = !DILocation(line: 49, column: 38, scope: !4287)
!4305 = !DILocation(line: 49, column: 43, scope: !4287)
!4306 = !{!4307, !2830, i64 0}
!4307 = !{!"ucp_tl_rkey", !4308, i64 0, !2817, i64 24}
!4308 = !{!"uct_rkey_bundle", !2830, i64 0, !2817, i64 8, !2817, i64 16}
!4309 = !DILocation(line: 49, column: 5, scope: !4287)
!4310 = !DILocation(line: 50, column: 1, scope: !4287)
!4311 = distinct !DISubprogram(name: "ucs_memtype_cache_is_empty", scope: !4312, file: !4312, line: 98, type: !4313, scopeLine: 99, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98)
!4312 = !DIFile(filename: "ucs/memory/memtype_cache.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "33b0be5a49877272c5cee2a1bd4f99ad")
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!420}
!4315 = !DILocation(line: 100, column: 13, scope: !4311)
!4316 = !DILocation(line: 100, column: 47, scope: !4311)
!4317 = !DILocation(line: 100, column: 56, scope: !4311)
!4318 = !DILocation(line: 101, column: 13, scope: !4311)
!4319 = !DILocation(line: 101, column: 48, scope: !4311)
!4320 = !DILocation(line: 101, column: 56, scope: !4311)
!4321 = !{!4322, !2822, i64 84}
!4322 = !{!"ucs_memtype_cache", !2818, i64 0, !4323, i64 56}
!4323 = !{!"ucs_pgtable", !4324, i64 0, !2830, i64 8, !2830, i64 16, !2822, i64 24, !2822, i64 28, !2817, i64 32, !2817, i64 40}
!4324 = !{!"ucs_pgt_entry", !2830, i64 0}
!4325 = !DILocation(line: 101, column: 68, scope: !4311)
!4326 = !DILocation(line: 0, scope: !4311)
!4327 = !DILocation(line: 100, column: 5, scope: !4311)
!4328 = !DISubprogram(name: "ucs_mpool_get_grow", scope: !776, file: !776, line: 299, type: !3495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4329 = distinct !DISubprogram(name: "ucp_contig_dt_elem_size", scope: !3551, file: !3551, line: 31, type: !4330, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4332)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!551, !350}
!4332 = !{!4333}
!4333 = !DILocalVariable(name: "datatype", arg: 1, scope: !4329, file: !3551, line: 31, type: !350)
!4334 = !DILocation(line: 31, column: 61, scope: !4329)
!4335 = !DILocation(line: 33, column: 12, scope: !4329)
!4336 = !DILocation(line: 33, column: 21, scope: !4329)
!4337 = !DILocation(line: 33, column: 5, scope: !4329)
!4338 = distinct !DISubprogram(name: "ucp_proto_request_send_init", scope: !3565, file: !3565, line: 220, type: !4339, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4341)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{null, !355, !378, !361}
!4341 = !{!4342, !4343, !4344}
!4342 = !DILocalVariable(name: "req", arg: 1, scope: !4338, file: !3565, line: 220, type: !355)
!4343 = !DILocalVariable(name: "ep", arg: 2, scope: !4338, file: !3565, line: 220, type: !378)
!4344 = !DILocalVariable(name: "flags", arg: 3, scope: !4338, file: !3565, line: 220, type: !361)
!4345 = !DILocation(line: 220, column: 44, scope: !4338)
!4346 = !DILocation(line: 220, column: 58, scope: !4338)
!4347 = !DILocation(line: 220, column: 71, scope: !4338)
!4348 = !DILocation(line: 222, column: 50, scope: !4338)
!4349 = !DILocation(line: 222, column: 48, scope: !4338)
!4350 = !DILocation(line: 222, column: 5, scope: !4338)
!4351 = !DILocation(line: 222, column: 10, scope: !4338)
!4352 = !DILocation(line: 222, column: 18, scope: !4338)
!4353 = !DILocation(line: 223, column: 20, scope: !4338)
!4354 = !DILocation(line: 223, column: 5, scope: !4338)
!4355 = !DILocation(line: 223, column: 10, scope: !4338)
!4356 = !DILocation(line: 223, column: 15, scope: !4338)
!4357 = !DILocation(line: 223, column: 18, scope: !4338)
!4358 = !DILocation(line: 224, column: 1, scope: !4338)
!4359 = distinct !DISubprogram(name: "ucp_datatype_iter_init", scope: !4360, file: !4360, line: 96, type: !4361, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4365)
!4360 = !DIFile(filename: "dt/datatype_iter.inl", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "81854f7feef2efa3fba052b38d3c5ed1")
!4361 = !DISubroutineType(types: !4362)
!4362 = !{null, !498, !339, !551, !350, !551, !420, !4363, !4364}
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!4365 = !{!4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374}
!4366 = !DILocalVariable(name: "context", arg: 1, scope: !4359, file: !4360, line: 96, type: !498)
!4367 = !DILocalVariable(name: "buffer", arg: 2, scope: !4359, file: !4360, line: 96, type: !339)
!4368 = !DILocalVariable(name: "count", arg: 3, scope: !4359, file: !4360, line: 96, type: !551)
!4369 = !DILocalVariable(name: "datatype", arg: 4, scope: !4359, file: !4360, line: 97, type: !350)
!4370 = !DILocalVariable(name: "contig_length", arg: 5, scope: !4359, file: !4360, line: 97, type: !551)
!4371 = !DILocalVariable(name: "is_pack", arg: 6, scope: !4359, file: !4360, line: 98, type: !420)
!4372 = !DILocalVariable(name: "dt_iter", arg: 7, scope: !4359, file: !4360, line: 98, type: !4363)
!4373 = !DILocalVariable(name: "sg_count", arg: 8, scope: !4359, file: !4360, line: 99, type: !4364)
!4374 = !DILocalVariable(name: "iov_length", scope: !4359, file: !4360, line: 101, type: !551)
!4375 = !DILocation(line: 96, column: 38, scope: !4359)
!4376 = !DILocation(line: 96, column: 53, scope: !4359)
!4377 = !DILocation(line: 96, column: 68, scope: !4359)
!4378 = !DILocation(line: 97, column: 39, scope: !4359)
!4379 = !DILocation(line: 97, column: 56, scope: !4359)
!4380 = !DILocation(line: 98, column: 28, scope: !4359)
!4381 = !DILocation(line: 98, column: 58, scope: !4359)
!4382 = !DILocation(line: 99, column: 33, scope: !4359)
!4383 = !DILocation(line: 101, column: 5, scope: !4359)
!4384 = !DILocation(line: 101, column: 12, scope: !4359)
!4385 = !DILocation(line: 103, column: 5, scope: !4359)
!4386 = !DILocation(line: 103, column: 14, scope: !4359)
!4387 = !DILocation(line: 103, column: 23, scope: !4359)
!4388 = !{!4389, !2830, i64 16}
!4389 = !{!"", !2818, i64 0, !4390, i64 4, !2830, i64 8, !2830, i64 16, !2818, i64 24}
!4390 = !{!"", !2818, i64 0, !2818, i64 1}
!4391 = !DILocation(line: 104, column: 44, scope: !4359)
!4392 = !DILocation(line: 104, column: 25, scope: !4359)
!4393 = !DILocation(line: 104, column: 5, scope: !4359)
!4394 = !DILocation(line: 104, column: 14, scope: !4359)
!4395 = !DILocation(line: 104, column: 23, scope: !4359)
!4396 = !{!4389, !2818, i64 0}
!4397 = !DILocation(line: 106, column: 9, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4359, file: !4360, line: 106, column: 9)
!4399 = !DILocation(line: 106, column: 9, scope: !4359)
!4400 = !DILocation(line: 107, column: 39, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4398, file: !4360, line: 106, column: 63)
!4402 = !DILocation(line: 107, column: 48, scope: !4401)
!4403 = !DILocation(line: 107, column: 56, scope: !4401)
!4404 = !DILocation(line: 107, column: 71, scope: !4401)
!4405 = !DILocation(line: 108, column: 39, scope: !4401)
!4406 = !DILocation(line: 107, column: 9, scope: !4401)
!4407 = !DILocation(line: 109, column: 10, scope: !4401)
!4408 = !DILocation(line: 109, column: 19, scope: !4401)
!4409 = !DILocation(line: 110, column: 5, scope: !4401)
!4410 = !DILocation(line: 110, column: 16, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4398, file: !4360, line: 110, column: 16)
!4412 = !DILocation(line: 110, column: 25, scope: !4411)
!4413 = !DILocation(line: 110, column: 34, scope: !4411)
!4414 = !DILocation(line: 110, column: 16, scope: !4398)
!4415 = !DILocation(line: 111, column: 61, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4411, file: !4360, line: 110, column: 55)
!4417 = !DILocation(line: 111, column: 69, scope: !4416)
!4418 = !DILocation(line: 111, column: 22, scope: !4416)
!4419 = !DILocation(line: 111, column: 20, scope: !4416)
!4420 = !DILocation(line: 112, column: 36, scope: !4416)
!4421 = !DILocation(line: 112, column: 45, scope: !4416)
!4422 = !DILocation(line: 112, column: 53, scope: !4416)
!4423 = !DILocation(line: 112, column: 60, scope: !4416)
!4424 = !DILocation(line: 112, column: 70, scope: !4416)
!4425 = !DILocation(line: 113, column: 36, scope: !4416)
!4426 = !DILocation(line: 113, column: 45, scope: !4416)
!4427 = !DILocation(line: 112, column: 9, scope: !4416)
!4428 = !DILocation(line: 114, column: 5, scope: !4416)
!4429 = !DILocation(line: 116, column: 40, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4411, file: !4360, line: 114, column: 12)
!4431 = !DILocation(line: 116, column: 49, scope: !4430)
!4432 = !DILocation(line: 116, column: 57, scope: !4430)
!4433 = !DILocation(line: 116, column: 64, scope: !4430)
!4434 = !DILocation(line: 117, column: 40, scope: !4430)
!4435 = !DILocation(line: 117, column: 49, scope: !4430)
!4436 = !DILocation(line: 116, column: 9, scope: !4430)
!4437 = !DILocation(line: 118, column: 10, scope: !4430)
!4438 = !DILocation(line: 118, column: 19, scope: !4430)
!4439 = !DILocation(line: 120, column: 1, scope: !4359)
!4440 = distinct !DISubprogram(name: "ucp_proto_select_param_init", scope: !4263, file: !4263, line: 117, type: !4441, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4446)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{null, !4443, !3569, !361, !621, !2395, !4444, !529}
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2398)
!4446 = !{!4447, !4448, !4449, !4450, !4451, !4452, !4453}
!4447 = !DILocalVariable(name: "select_param", arg: 1, scope: !4440, file: !4263, line: 117, type: !4443)
!4448 = !DILocalVariable(name: "op_id", arg: 2, scope: !4440, file: !4263, line: 118, type: !3569)
!4449 = !DILocalVariable(name: "op_attr_mask", arg: 3, scope: !4440, file: !4263, line: 118, type: !361)
!4450 = !DILocalVariable(name: "op_flags", arg: 4, scope: !4440, file: !4263, line: 119, type: !621)
!4451 = !DILocalVariable(name: "dt_class", arg: 5, scope: !4440, file: !4263, line: 119, type: !2395)
!4452 = !DILocalVariable(name: "mem_info", arg: 6, scope: !4440, file: !4263, line: 120, type: !4444)
!4453 = !DILocalVariable(name: "sg_count", arg: 7, scope: !4440, file: !4263, line: 120, type: !529)
!4454 = !DILocation(line: 117, column: 55, scope: !4440)
!4455 = !DILocation(line: 118, column: 48, scope: !4440)
!4456 = !DILocation(line: 118, column: 64, scope: !4440)
!4457 = !DILocation(line: 119, column: 38, scope: !4440)
!4458 = !DILocation(line: 119, column: 63, scope: !4440)
!4459 = !DILocation(line: 120, column: 54, scope: !4440)
!4460 = !DILocation(line: 120, column: 72, scope: !4440)
!4461 = !DILocation(line: 122, column: 9, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4440, file: !4263, line: 122, column: 9)
!4463 = !DILocation(line: 122, column: 18, scope: !4462)
!4464 = !DILocation(line: 122, column: 9, scope: !4440)
!4465 = !DILocation(line: 124, column: 5, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4462, file: !4263, line: 122, column: 42)
!4467 = !DILocation(line: 124, column: 16, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4462, file: !4263, line: 124, column: 16)
!4469 = !DILocation(line: 124, column: 25, scope: !4468)
!4470 = !DILocation(line: 124, column: 16, scope: !4462)
!4471 = !DILocation(line: 126, column: 5, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4468, file: !4263, line: 124, column: 46)
!4473 = !DILocation(line: 131, column: 32, scope: !4440)
!4474 = !DILocation(line: 131, column: 5, scope: !4440)
!4475 = !DILocation(line: 131, column: 19, scope: !4440)
!4476 = !DILocation(line: 131, column: 30, scope: !4440)
!4477 = !{!4478, !2818, i64 0}
!4478 = !{!"", !2818, i64 0, !2884, i64 1, !2818, i64 3, !2818, i64 4, !2818, i64 5, !2818, i64 6, !2818, i64 7}
!4479 = !DILocation(line: 132, column: 32, scope: !4440)
!4480 = !DILocation(line: 133, column: 66, scope: !4440)
!4481 = !DILocation(line: 133, column: 32, scope: !4440)
!4482 = !DILocation(line: 132, column: 41, scope: !4440)
!4483 = !DILocation(line: 132, column: 5, scope: !4440)
!4484 = !DILocation(line: 132, column: 19, scope: !4440)
!4485 = !DILocation(line: 132, column: 30, scope: !4440)
!4486 = !{!4478, !2884, i64 1}
!4487 = !DILocation(line: 134, column: 32, scope: !4440)
!4488 = !DILocation(line: 134, column: 5, scope: !4440)
!4489 = !DILocation(line: 134, column: 19, scope: !4440)
!4490 = !DILocation(line: 134, column: 30, scope: !4440)
!4491 = !{!4478, !2818, i64 3}
!4492 = !DILocation(line: 135, column: 32, scope: !4440)
!4493 = !DILocation(line: 135, column: 42, scope: !4440)
!4494 = !{!4390, !2818, i64 0}
!4495 = !DILocation(line: 135, column: 5, scope: !4440)
!4496 = !DILocation(line: 135, column: 19, scope: !4440)
!4497 = !DILocation(line: 135, column: 30, scope: !4440)
!4498 = !{!4478, !2818, i64 4}
!4499 = !DILocation(line: 136, column: 32, scope: !4440)
!4500 = !DILocation(line: 136, column: 42, scope: !4440)
!4501 = !{!4390, !2818, i64 1}
!4502 = !DILocation(line: 136, column: 5, scope: !4440)
!4503 = !DILocation(line: 136, column: 19, scope: !4440)
!4504 = !DILocation(line: 136, column: 30, scope: !4440)
!4505 = !{!4478, !2818, i64 5}
!4506 = !DILocation(line: 137, column: 32, scope: !4440)
!4507 = !DILocation(line: 137, column: 5, scope: !4440)
!4508 = !DILocation(line: 137, column: 19, scope: !4440)
!4509 = !DILocation(line: 137, column: 30, scope: !4440)
!4510 = !{!4478, !2818, i64 6}
!4511 = !DILocation(line: 138, column: 5, scope: !4440)
!4512 = !DILocation(line: 138, column: 19, scope: !4440)
!4513 = !DILocation(line: 138, column: 30, scope: !4440)
!4514 = !{!4478, !2818, i64 7}
!4515 = !DILocation(line: 139, column: 1, scope: !4440)
!4516 = distinct !DISubprogram(name: "ucp_proto_request_lookup_proto", scope: !3565, file: !3565, line: 195, type: !4517, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4519)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!345, !384, !378, !355, !3568, !1841, !2101, !551}
!4519 = !{!4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527}
!4520 = !DILocalVariable(name: "worker", arg: 1, scope: !4516, file: !3565, line: 196, type: !384)
!4521 = !DILocalVariable(name: "ep", arg: 2, scope: !4516, file: !3565, line: 196, type: !378)
!4522 = !DILocalVariable(name: "req", arg: 3, scope: !4516, file: !3565, line: 196, type: !355)
!4523 = !DILocalVariable(name: "proto_select", arg: 4, scope: !4516, file: !3565, line: 197, type: !3568)
!4524 = !DILocalVariable(name: "rkey_cfg_index", arg: 5, scope: !4516, file: !3565, line: 197, type: !1841)
!4525 = !DILocalVariable(name: "sel_param", arg: 6, scope: !4516, file: !3565, line: 198, type: !2101)
!4526 = !DILocalVariable(name: "msg_length", arg: 7, scope: !4516, file: !3565, line: 198, type: !551)
!4527 = !DILocalVariable(name: "thresh_elem", scope: !4516, file: !3565, line: 200, type: !2071)
!4528 = !DILocation(line: 196, column: 22, scope: !4516)
!4529 = !DILocation(line: 196, column: 39, scope: !4516)
!4530 = !DILocation(line: 196, column: 58, scope: !4516)
!4531 = !DILocation(line: 197, column: 29, scope: !4516)
!4532 = !DILocation(line: 197, column: 66, scope: !4516)
!4533 = !DILocation(line: 198, column: 41, scope: !4516)
!4534 = !DILocation(line: 198, column: 59, scope: !4516)
!4535 = !DILocation(line: 200, column: 5, scope: !4516)
!4536 = !DILocation(line: 200, column: 39, scope: !4516)
!4537 = !DILocation(line: 202, column: 43, scope: !4516)
!4538 = !DILocation(line: 202, column: 51, scope: !4516)
!4539 = !DILocation(line: 202, column: 65, scope: !4516)
!4540 = !DILocation(line: 202, column: 69, scope: !4516)
!4541 = !DILocation(line: 203, column: 43, scope: !4516)
!4542 = !DILocation(line: 203, column: 59, scope: !4516)
!4543 = !DILocation(line: 203, column: 70, scope: !4516)
!4544 = !DILocation(line: 202, column: 19, scope: !4516)
!4545 = !DILocation(line: 202, column: 17, scope: !4516)
!4546 = !DILocation(line: 215, column: 33, scope: !4516)
!4547 = !DILocation(line: 215, column: 39, scope: !4516)
!4548 = !DILocation(line: 215, column: 52, scope: !4516)
!4549 = !DILocation(line: 215, column: 66, scope: !4516)
!4550 = !DILocation(line: 215, column: 5, scope: !4516)
!4551 = !DILocation(line: 217, column: 1, scope: !4516)
!4552 = !DILocation(line: 216, column: 5, scope: !4516)
!4553 = distinct !DISubprogram(name: "ucp_request_put", scope: !40, file: !40, line: 213, type: !2185, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4554)
!4554 = !{!4555}
!4555 = !DILocalVariable(name: "req", arg: 1, scope: !4553, file: !40, line: 213, type: !355)
!4556 = !DILocation(line: 213, column: 32, scope: !4553)
!4557 = !DILocation(line: 215, column: 5, scope: !4553)
!4558 = !DILocation(line: 215, column: 5, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4553, file: !40, line: 215, column: 5)
!4560 = !DILocation(line: 215, column: 5, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4559, file: !40, line: 215, column: 5)
!4562 = !DILocation(line: 219, column: 26, scope: !4553)
!4563 = !DILocation(line: 219, column: 5, scope: !4553)
!4564 = !DILocation(line: 220, column: 1, scope: !4553)
!4565 = distinct !DISubprogram(name: "ucp_request_send", scope: !40, file: !40, line: 355, type: !2185, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4566)
!4566 = !{!4567}
!4567 = !DILocalVariable(name: "req", arg: 1, scope: !4565, file: !40, line: 355, type: !355)
!4568 = !DILocation(line: 355, column: 33, scope: !4565)
!4569 = !DILocation(line: 357, column: 5, scope: !4565)
!4570 = !DILocation(line: 357, column: 34, scope: !4565)
!4571 = !DILocation(line: 357, column: 13, scope: !4565)
!4572 = !DILocation(line: 357, column: 12, scope: !4565)
!4573 = distinct !{!4573, !4569, !4574, !4186}
!4574 = !DILocation(line: 357, column: 39, scope: !4565)
!4575 = !DILocation(line: 358, column: 1, scope: !4565)
!4576 = distinct !DISubprogram(name: "ucp_datatype_class", scope: !4577, file: !4577, line: 28, type: !4578, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4580)
!4577 = !DIFile(filename: "dt/dt.inl", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "9417c3c63368002eb0043cdaf84ebd65")
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!2395, !350}
!4580 = !{!4581}
!4581 = !DILocalVariable(name: "datatype", arg: 1, scope: !4576, file: !4577, line: 28, type: !350)
!4582 = !DILocation(line: 28, column: 35, scope: !4576)
!4583 = !DILocation(line: 30, column: 29, scope: !4576)
!4584 = !DILocation(line: 30, column: 38, scope: !4576)
!4585 = !DILocation(line: 30, column: 12, scope: !4576)
!4586 = !DILocation(line: 30, column: 5, scope: !4576)
!4587 = distinct !DISubprogram(name: "ucp_datatype_contig_iter_init", scope: !4360, file: !4360, line: 35, type: !4588, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4590)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{null, !498, !339, !551, !350, !4363}
!4590 = !{!4591, !4592, !4593, !4594, !4595}
!4591 = !DILocalVariable(name: "context", arg: 1, scope: !4587, file: !4360, line: 35, type: !498)
!4592 = !DILocalVariable(name: "buffer", arg: 2, scope: !4587, file: !4360, line: 35, type: !339)
!4593 = !DILocalVariable(name: "length", arg: 3, scope: !4587, file: !4360, line: 35, type: !551)
!4594 = !DILocalVariable(name: "datatype", arg: 4, scope: !4587, file: !4360, line: 36, type: !350)
!4595 = !DILocalVariable(name: "dt_iter", arg: 5, scope: !4587, file: !4360, line: 36, type: !4363)
!4596 = !DILocation(line: 35, column: 45, scope: !4587)
!4597 = !DILocation(line: 35, column: 60, scope: !4587)
!4598 = !DILocation(line: 35, column: 75, scope: !4587)
!4599 = !DILocation(line: 36, column: 46, scope: !4587)
!4600 = !DILocation(line: 36, column: 77, scope: !4587)
!4601 = !DILocation(line: 38, column: 23, scope: !4587)
!4602 = !DILocation(line: 38, column: 32, scope: !4587)
!4603 = !DILocation(line: 38, column: 40, scope: !4587)
!4604 = !DILocation(line: 38, column: 49, scope: !4587)
!4605 = !DILocation(line: 38, column: 58, scope: !4587)
!4606 = !DILocation(line: 38, column: 5, scope: !4587)
!4607 = !DILocation(line: 39, column: 39, scope: !4587)
!4608 = !DILocation(line: 39, column: 5, scope: !4587)
!4609 = !DILocation(line: 39, column: 14, scope: !4587)
!4610 = !DILocation(line: 39, column: 37, scope: !4587)
!4611 = !{!4389, !2830, i64 8}
!4612 = !DILocation(line: 40, column: 39, scope: !4587)
!4613 = !DILocation(line: 40, column: 5, scope: !4587)
!4614 = !DILocation(line: 40, column: 14, scope: !4587)
!4615 = !DILocation(line: 40, column: 26, scope: !4587)
!4616 = !DILocation(line: 40, column: 37, scope: !4587)
!4617 = !DILocation(line: 41, column: 5, scope: !4587)
!4618 = !DILocation(line: 41, column: 14, scope: !4587)
!4619 = !DILocation(line: 41, column: 26, scope: !4587)
!4620 = !DILocation(line: 41, column: 37, scope: !4587)
!4621 = !DILocation(line: 42, column: 1, scope: !4587)
!4622 = distinct !DISubprogram(name: "ucp_dt_iov_length", scope: !4623, file: !4623, line: 27, type: !4624, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4626)
!4623 = !DIFile(filename: "dt/dt_iov.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "b51be05cad1da76c8df880d8b6f9a77a")
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!551, !2469, !551}
!4626 = !{!4627, !4628, !4629, !4630}
!4627 = !DILocalVariable(name: "iov", arg: 1, scope: !4622, file: !4623, line: 27, type: !2469)
!4628 = !DILocalVariable(name: "iovcnt", arg: 2, scope: !4622, file: !4623, line: 27, type: !551)
!4629 = !DILocalVariable(name: "iov_it", scope: !4622, file: !4623, line: 29, type: !551)
!4630 = !DILocalVariable(name: "total_length", scope: !4622, file: !4623, line: 29, type: !551)
!4631 = !DILocation(line: 27, column: 60, scope: !4622)
!4632 = !DILocation(line: 27, column: 72, scope: !4622)
!4633 = !DILocation(line: 29, column: 5, scope: !4622)
!4634 = !DILocation(line: 29, column: 12, scope: !4622)
!4635 = !DILocation(line: 29, column: 20, scope: !4622)
!4636 = !DILocation(line: 31, column: 17, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4622, file: !4623, line: 31, column: 5)
!4638 = !DILocation(line: 31, column: 10, scope: !4637)
!4639 = !DILocation(line: 31, column: 22, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4637, file: !4623, line: 31, column: 5)
!4641 = !DILocation(line: 31, column: 31, scope: !4640)
!4642 = !DILocation(line: 31, column: 29, scope: !4640)
!4643 = !DILocation(line: 31, column: 5, scope: !4637)
!4644 = !DILocation(line: 33, column: 25, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4640, file: !4623, line: 31, column: 49)
!4646 = !DILocation(line: 33, column: 29, scope: !4645)
!4647 = !DILocation(line: 33, column: 37, scope: !4645)
!4648 = !{!4649, !2830, i64 8}
!4649 = !{!"ucp_dt_iov", !2817, i64 0, !2830, i64 8}
!4650 = !DILocation(line: 33, column: 22, scope: !4645)
!4651 = !DILocation(line: 34, column: 5, scope: !4645)
!4652 = !DILocation(line: 31, column: 39, scope: !4640)
!4653 = !DILocation(line: 31, column: 5, scope: !4640)
!4654 = distinct !{!4654, !4643, !4655, !4186}
!4655 = !DILocation(line: 34, column: 5, scope: !4637)
!4656 = !DILocation(line: 36, column: 12, scope: !4622)
!4657 = !DILocation(line: 37, column: 1, scope: !4622)
!4658 = !DILocation(line: 36, column: 5, scope: !4622)
!4659 = distinct !DISubprogram(name: "ucp_datatype_iov_iter_init", scope: !4360, file: !4360, line: 45, type: !4660, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4662)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{null, !498, !339, !551, !350, !551, !4363, !4364}
!4662 = !{!4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4675}
!4663 = !DILocalVariable(name: "context", arg: 1, scope: !4659, file: !4360, line: 45, type: !498)
!4664 = !DILocalVariable(name: "buffer", arg: 2, scope: !4659, file: !4360, line: 45, type: !339)
!4665 = !DILocalVariable(name: "count", arg: 3, scope: !4659, file: !4360, line: 45, type: !551)
!4666 = !DILocalVariable(name: "datatype", arg: 4, scope: !4659, file: !4360, line: 46, type: !350)
!4667 = !DILocalVariable(name: "length", arg: 5, scope: !4659, file: !4360, line: 46, type: !551)
!4668 = !DILocalVariable(name: "dt_iter", arg: 6, scope: !4659, file: !4360, line: 47, type: !4363)
!4669 = !DILocalVariable(name: "sg_count", arg: 7, scope: !4659, file: !4360, line: 47, type: !4364)
!4670 = !DILocalVariable(name: "iov", scope: !4659, file: !4360, line: 49, type: !2469)
!4671 = !DILocalVariable(name: "_min_a", scope: !4672, file: !4360, line: 61, type: !551)
!4672 = distinct !DILexicalBlock(scope: !4673, file: !4360, line: 61, column: 21)
!4673 = distinct !DILexicalBlock(scope: !4674, file: !4360, line: 60, column: 32)
!4674 = distinct !DILexicalBlock(scope: !4659, file: !4360, line: 60, column: 9)
!4675 = !DILocalVariable(name: "_min_b", scope: !4672, file: !4360, line: 61, type: !551)
!4676 = !DILocation(line: 45, column: 42, scope: !4659)
!4677 = !DILocation(line: 45, column: 57, scope: !4659)
!4678 = !DILocation(line: 45, column: 72, scope: !4659)
!4679 = !DILocation(line: 46, column: 43, scope: !4659)
!4680 = !DILocation(line: 46, column: 60, scope: !4659)
!4681 = !DILocation(line: 47, column: 49, scope: !4659)
!4682 = !DILocation(line: 47, column: 67, scope: !4659)
!4683 = !DILocation(line: 49, column: 5, scope: !4659)
!4684 = !DILocation(line: 49, column: 25, scope: !4659)
!4685 = !DILocation(line: 49, column: 52, scope: !4659)
!4686 = !DILocation(line: 51, column: 36, scope: !4659)
!4687 = !DILocation(line: 51, column: 5, scope: !4659)
!4688 = !DILocation(line: 51, column: 14, scope: !4659)
!4689 = !DILocation(line: 51, column: 34, scope: !4659)
!4690 = !DILocation(line: 52, column: 36, scope: !4659)
!4691 = !DILocation(line: 52, column: 5, scope: !4659)
!4692 = !DILocation(line: 52, column: 14, scope: !4659)
!4693 = !DILocation(line: 52, column: 23, scope: !4659)
!4694 = !DILocation(line: 52, column: 34, scope: !4659)
!4695 = !DILocation(line: 56, column: 5, scope: !4659)
!4696 = !DILocation(line: 56, column: 14, scope: !4659)
!4697 = !DILocation(line: 56, column: 23, scope: !4659)
!4698 = !DILocation(line: 56, column: 34, scope: !4659)
!4699 = !DILocation(line: 57, column: 5, scope: !4659)
!4700 = !DILocation(line: 57, column: 14, scope: !4659)
!4701 = !DILocation(line: 57, column: 23, scope: !4659)
!4702 = !DILocation(line: 57, column: 34, scope: !4659)
!4703 = !DILocation(line: 58, column: 5, scope: !4659)
!4704 = !DILocation(line: 58, column: 14, scope: !4659)
!4705 = !DILocation(line: 58, column: 23, scope: !4659)
!4706 = !DILocation(line: 58, column: 34, scope: !4659)
!4707 = !DILocation(line: 60, column: 9, scope: !4674)
!4708 = !DILocation(line: 60, column: 9, scope: !4659)
!4709 = !DILocation(line: 61, column: 21, scope: !4672)
!4710 = !DILocation(line: 61, column: 21, scope: !4673)
!4711 = !DILocation(line: 61, column: 10, scope: !4673)
!4712 = !DILocation(line: 61, column: 19, scope: !4673)
!4713 = !DILocation(line: 62, column: 27, scope: !4673)
!4714 = !DILocation(line: 62, column: 36, scope: !4673)
!4715 = !DILocation(line: 62, column: 41, scope: !4673)
!4716 = !{!4649, !2817, i64 0}
!4717 = !DILocation(line: 62, column: 49, scope: !4673)
!4718 = !DILocation(line: 62, column: 54, scope: !4673)
!4719 = !DILocation(line: 62, column: 63, scope: !4673)
!4720 = !DILocation(line: 62, column: 72, scope: !4673)
!4721 = !DILocation(line: 62, column: 9, scope: !4673)
!4722 = !DILocation(line: 63, column: 5, scope: !4673)
!4723 = !DILocation(line: 64, column: 10, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4674, file: !4360, line: 63, column: 12)
!4725 = !DILocation(line: 64, column: 19, scope: !4724)
!4726 = !DILocation(line: 65, column: 35, scope: !4724)
!4727 = !DILocation(line: 65, column: 44, scope: !4724)
!4728 = !DILocation(line: 65, column: 9, scope: !4724)
!4729 = !DILocation(line: 67, column: 1, scope: !4659)
!4730 = distinct !DISubprogram(name: "ucp_datatype_generic_iter_init", scope: !4360, file: !4360, line: 70, type: !4731, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4733)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{null, !498, !339, !551, !350, !420, !4363}
!4733 = !{!4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741}
!4734 = !DILocalVariable(name: "context", arg: 1, scope: !4730, file: !4360, line: 70, type: !498)
!4735 = !DILocalVariable(name: "buffer", arg: 2, scope: !4730, file: !4360, line: 70, type: !339)
!4736 = !DILocalVariable(name: "count", arg: 3, scope: !4730, file: !4360, line: 71, type: !551)
!4737 = !DILocalVariable(name: "datatype", arg: 4, scope: !4730, file: !4360, line: 71, type: !350)
!4738 = !DILocalVariable(name: "is_pack", arg: 5, scope: !4730, file: !4360, line: 72, type: !420)
!4739 = !DILocalVariable(name: "dt_iter", arg: 6, scope: !4730, file: !4360, line: 72, type: !4363)
!4740 = !DILocalVariable(name: "dt_gen", scope: !4730, file: !4360, line: 74, type: !2433)
!4741 = !DILocalVariable(name: "state", scope: !4730, file: !4360, line: 75, type: !339)
!4742 = !DILocation(line: 70, column: 46, scope: !4730)
!4743 = !DILocation(line: 70, column: 61, scope: !4730)
!4744 = !DILocation(line: 71, column: 39, scope: !4730)
!4745 = !DILocation(line: 71, column: 61, scope: !4730)
!4746 = !DILocation(line: 72, column: 36, scope: !4730)
!4747 = !DILocation(line: 72, column: 66, scope: !4730)
!4748 = !DILocation(line: 74, column: 5, scope: !4730)
!4749 = !DILocation(line: 74, column: 23, scope: !4730)
!4750 = !DILocation(line: 74, column: 50, scope: !4730)
!4751 = !DILocation(line: 74, column: 32, scope: !4730)
!4752 = !DILocation(line: 75, column: 5, scope: !4730)
!4753 = !DILocation(line: 75, column: 11, scope: !4730)
!4754 = !DILocation(line: 77, column: 9, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4730, file: !4360, line: 77, column: 9)
!4756 = !DILocation(line: 77, column: 9, scope: !4730)
!4757 = !DILocation(line: 78, column: 17, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4755, file: !4360, line: 77, column: 18)
!4759 = !DILocation(line: 78, column: 25, scope: !4758)
!4760 = !DILocation(line: 78, column: 29, scope: !4758)
!4761 = !{!4762, !2817, i64 8}
!4762 = !{!"ucp_dt_generic", !2817, i64 0, !4763, i64 8}
!4763 = !{!"ucp_generic_dt_ops", !2817, i64 0, !2817, i64 8, !2817, i64 16, !2817, i64 24, !2817, i64 32, !2817, i64 40}
!4764 = !DILocation(line: 78, column: 40, scope: !4758)
!4765 = !DILocation(line: 78, column: 48, scope: !4758)
!4766 = !{!4762, !2817, i64 0}
!4767 = !DILocation(line: 78, column: 57, scope: !4758)
!4768 = !DILocation(line: 78, column: 65, scope: !4758)
!4769 = !DILocation(line: 78, column: 15, scope: !4758)
!4770 = !DILocation(line: 79, column: 5, scope: !4758)
!4771 = !DILocation(line: 80, column: 17, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4755, file: !4360, line: 79, column: 12)
!4773 = !DILocation(line: 80, column: 25, scope: !4772)
!4774 = !DILocation(line: 80, column: 29, scope: !4772)
!4775 = !{!4762, !2817, i64 16}
!4776 = !DILocation(line: 80, column: 42, scope: !4772)
!4777 = !DILocation(line: 80, column: 50, scope: !4772)
!4778 = !DILocation(line: 80, column: 59, scope: !4772)
!4779 = !DILocation(line: 80, column: 67, scope: !4772)
!4780 = !DILocation(line: 80, column: 15, scope: !4772)
!4781 = !DILocation(line: 83, column: 36, scope: !4730)
!4782 = !DILocation(line: 83, column: 44, scope: !4730)
!4783 = !DILocation(line: 83, column: 48, scope: !4730)
!4784 = !{!4762, !2817, i64 24}
!4785 = !DILocation(line: 83, column: 60, scope: !4730)
!4786 = !DILocation(line: 83, column: 5, scope: !4730)
!4787 = !DILocation(line: 83, column: 14, scope: !4730)
!4788 = !DILocation(line: 83, column: 34, scope: !4730)
!4789 = !DILocation(line: 84, column: 36, scope: !4730)
!4790 = !DILocation(line: 84, column: 5, scope: !4730)
!4791 = !DILocation(line: 84, column: 14, scope: !4730)
!4792 = !DILocation(line: 84, column: 27, scope: !4730)
!4793 = !DILocation(line: 84, column: 34, scope: !4730)
!4794 = !DILocation(line: 85, column: 36, scope: !4730)
!4795 = !DILocation(line: 85, column: 5, scope: !4730)
!4796 = !DILocation(line: 85, column: 14, scope: !4730)
!4797 = !DILocation(line: 85, column: 27, scope: !4730)
!4798 = !DILocation(line: 85, column: 34, scope: !4730)
!4799 = !DILocation(line: 86, column: 36, scope: !4730)
!4800 = !DILocation(line: 86, column: 5, scope: !4730)
!4801 = !DILocation(line: 86, column: 14, scope: !4730)
!4802 = !DILocation(line: 86, column: 27, scope: !4730)
!4803 = !DILocation(line: 86, column: 34, scope: !4730)
!4804 = !DILocation(line: 87, column: 36, scope: !4730)
!4805 = !DILocation(line: 87, column: 5, scope: !4730)
!4806 = !DILocation(line: 87, column: 14, scope: !4730)
!4807 = !DILocation(line: 87, column: 27, scope: !4730)
!4808 = !DILocation(line: 87, column: 34, scope: !4730)
!4809 = !DILocation(line: 88, column: 31, scope: !4730)
!4810 = !DILocation(line: 88, column: 40, scope: !4730)
!4811 = !DILocation(line: 88, column: 5, scope: !4730)
!4812 = !DILocation(line: 89, column: 1, scope: !4730)
!4813 = distinct !DISubprogram(name: "ucp_memory_detect", scope: !501, file: !501, line: 624, type: !4814, scopeLine: 626, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4817)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{null, !498, !1083, !551, !4816}
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!4817 = !{!4818, !4819, !4820, !4821, !4822}
!4818 = !DILocalVariable(name: "context", arg: 1, scope: !4813, file: !501, line: 624, type: !498)
!4819 = !DILocalVariable(name: "address", arg: 2, scope: !4813, file: !501, line: 624, type: !1083)
!4820 = !DILocalVariable(name: "length", arg: 3, scope: !4813, file: !501, line: 624, type: !551)
!4821 = !DILocalVariable(name: "mem_info", arg: 4, scope: !4813, file: !501, line: 625, type: !4816)
!4822 = !DILocalVariable(name: "mem_info_internal", scope: !4813, file: !501, line: 627, type: !4823)
!4823 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs_memory_info_t", file: !4312, line: 36, baseType: !4824)
!4824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucs_memory_info", file: !4312, line: 31, size: 192, elements: !4825)
!4825 = !{!4826, !4827, !4828, !4829}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4824, file: !4312, line: 32, baseType: !918, size: 32)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "sys_dev", scope: !4824, file: !4312, line: 33, baseType: !618, size: 8, offset: 32)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !4824, file: !4312, line: 34, baseType: !339, size: 64, offset: 64)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_length", scope: !4824, file: !4312, line: 35, baseType: !551, size: 64, offset: 128)
!4830 = !DILocation(line: 624, column: 33, scope: !4813)
!4831 = !DILocation(line: 624, column: 54, scope: !4813)
!4832 = !DILocation(line: 624, column: 70, scope: !4813)
!4833 = !DILocation(line: 625, column: 38, scope: !4813)
!4834 = !DILocation(line: 627, column: 5, scope: !4813)
!4835 = !DILocation(line: 627, column: 23, scope: !4813)
!4836 = !DILocation(line: 629, column: 32, scope: !4813)
!4837 = !DILocation(line: 629, column: 41, scope: !4813)
!4838 = !DILocation(line: 629, column: 50, scope: !4813)
!4839 = !DILocation(line: 629, column: 5, scope: !4813)
!4840 = !DILocation(line: 631, column: 43, scope: !4813)
!4841 = !{!4842, !2818, i64 0}
!4842 = !{!"ucs_memory_info", !2818, i64 0, !2818, i64 4, !2817, i64 8, !2830, i64 16}
!4843 = !DILocation(line: 631, column: 25, scope: !4813)
!4844 = !DILocation(line: 631, column: 5, scope: !4813)
!4845 = !DILocation(line: 631, column: 15, scope: !4813)
!4846 = !DILocation(line: 631, column: 23, scope: !4813)
!4847 = !DILocation(line: 632, column: 43, scope: !4813)
!4848 = !{!4842, !2818, i64 4}
!4849 = !DILocation(line: 632, column: 5, scope: !4813)
!4850 = !DILocation(line: 632, column: 15, scope: !4813)
!4851 = !DILocation(line: 632, column: 23, scope: !4813)
!4852 = !DILocation(line: 633, column: 1, scope: !4813)
!4853 = distinct !DISubprogram(name: "ucp_memory_detect_internal", scope: !501, file: !501, line: 584, type: !4854, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4857)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{null, !498, !1083, !551, !4856}
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4857 = !{!4858, !4859, !4860, !4861, !4862, !4863}
!4858 = !DILocalVariable(name: "context", arg: 1, scope: !4853, file: !501, line: 584, type: !498)
!4859 = !DILocalVariable(name: "address", arg: 2, scope: !4853, file: !501, line: 584, type: !1083)
!4860 = !DILocalVariable(name: "length", arg: 3, scope: !4853, file: !501, line: 585, type: !551)
!4861 = !DILocalVariable(name: "mem_info", arg: 4, scope: !4853, file: !501, line: 585, type: !4856)
!4862 = !DILocalVariable(name: "status", scope: !4853, file: !501, line: 587, type: !345)
!4863 = !DILabel(scope: !4853, name: "out_host_mem", file: !501, line: 618)
!4864 = !DILocation(line: 584, column: 42, scope: !4853)
!4865 = !DILocation(line: 584, column: 63, scope: !4853)
!4866 = !DILocation(line: 585, column: 35, scope: !4853)
!4867 = !DILocation(line: 585, column: 62, scope: !4853)
!4868 = !DILocation(line: 587, column: 5, scope: !4853)
!4869 = !DILocation(line: 587, column: 18, scope: !4853)
!4870 = !DILocation(line: 589, column: 9, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4853, file: !501, line: 589, column: 9)
!4872 = !{!3228, !2818, i64 125}
!4873 = !DILocation(line: 589, column: 9, scope: !4853)
!4874 = !DILocation(line: 590, column: 9, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4871, file: !501, line: 589, column: 60)
!4876 = !DILocation(line: 593, column: 39, scope: !4853)
!4877 = !DILocation(line: 593, column: 48, scope: !4853)
!4878 = !DILocation(line: 593, column: 56, scope: !4853)
!4879 = !DILocation(line: 593, column: 14, scope: !4853)
!4880 = !DILocation(line: 593, column: 12, scope: !4853)
!4881 = !DILocation(line: 594, column: 9, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4853, file: !501, line: 594, column: 9)
!4883 = !DILocation(line: 594, column: 9, scope: !4853)
!4884 = !DILocation(line: 595, column: 9, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4882, file: !501, line: 594, column: 48)
!4886 = !DILocation(line: 595, column: 9, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4885, file: !501, line: 595, column: 9)
!4888 = !DILocation(line: 595, column: 9, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4887, file: !501, line: 595, column: 9)
!4890 = !DILocation(line: 598, column: 9, scope: !4885)
!4891 = !DILocation(line: 599, column: 16, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4882, file: !501, line: 599, column: 16)
!4893 = !DILocation(line: 599, column: 16, scope: !4882)
!4894 = !DILocation(line: 600, column: 13, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4896, file: !501, line: 600, column: 13)
!4896 = distinct !DILexicalBlock(scope: !4892, file: !501, line: 599, column: 46)
!4897 = !DILocation(line: 600, column: 13, scope: !4896)
!4898 = !DILocation(line: 601, column: 13, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4895, file: !501, line: 600, column: 70)
!4900 = !DILocation(line: 601, column: 13, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4899, file: !501, line: 601, column: 13)
!4902 = !DILocation(line: 601, column: 13, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4901, file: !501, line: 601, column: 13)
!4904 = !DILocation(line: 604, column: 40, scope: !4899)
!4905 = !DILocation(line: 604, column: 49, scope: !4899)
!4906 = !DILocation(line: 604, column: 58, scope: !4899)
!4907 = !DILocation(line: 604, column: 66, scope: !4899)
!4908 = !DILocation(line: 604, column: 13, scope: !4899)
!4909 = !DILocation(line: 605, column: 9, scope: !4899)
!4910 = !DILocation(line: 606, column: 13, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4895, file: !501, line: 605, column: 16)
!4912 = !DILocation(line: 606, column: 13, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4911, file: !501, line: 606, column: 13)
!4914 = !DILocation(line: 606, column: 13, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4913, file: !501, line: 606, column: 13)
!4916 = !DILocation(line: 611, column: 5, scope: !4896)
!4917 = !DILocation(line: 612, column: 36, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4892, file: !501, line: 611, column: 12)
!4919 = !DILocation(line: 612, column: 45, scope: !4918)
!4920 = !DILocation(line: 612, column: 54, scope: !4918)
!4921 = !DILocation(line: 612, column: 62, scope: !4918)
!4922 = !DILocation(line: 612, column: 9, scope: !4918)
!4923 = !DILocation(line: 616, column: 5, scope: !4853)
!4924 = !DILocation(line: 618, column: 1, scope: !4853)
!4925 = !DILocation(line: 620, column: 30, scope: !4853)
!4926 = !DILocation(line: 620, column: 5, scope: !4853)
!4927 = !DILocation(line: 621, column: 1, scope: !4853)
!4928 = !DISubprogram(name: "ucs_memtype_cache_lookup", scope: !4312, file: !4312, line: 63, type: !4929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{!345, !1083, !551, !4856}
!4931 = !DISubprogram(name: "ucp_memory_detect_slowpath", scope: !501, file: !501, line: 511, type: !4854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4932 = distinct !DISubprogram(name: "ucs_memory_info_set_host", scope: !4312, file: !4312, line: 111, type: !4933, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4935)
!4933 = !DISubroutineType(types: !4934)
!4934 = !{null, !4856}
!4935 = !{!4936}
!4936 = !DILocalVariable(name: "mem_info", arg: 1, scope: !4932, file: !4312, line: 111, type: !4856)
!4937 = !DILocation(line: 111, column: 45, scope: !4932)
!4938 = !DILocation(line: 113, column: 5, scope: !4932)
!4939 = !DILocation(line: 113, column: 15, scope: !4932)
!4940 = !DILocation(line: 113, column: 28, scope: !4932)
!4941 = !DILocation(line: 114, column: 5, scope: !4932)
!4942 = !DILocation(line: 114, column: 15, scope: !4932)
!4943 = !DILocation(line: 114, column: 28, scope: !4932)
!4944 = !DILocation(line: 115, column: 5, scope: !4932)
!4945 = !DILocation(line: 115, column: 15, scope: !4932)
!4946 = !DILocation(line: 115, column: 28, scope: !4932)
!4947 = !{!4842, !2817, i64 8}
!4948 = !DILocation(line: 116, column: 5, scope: !4932)
!4949 = !DILocation(line: 116, column: 15, scope: !4932)
!4950 = !DILocation(line: 116, column: 28, scope: !4932)
!4951 = !{!4842, !2830, i64 16}
!4952 = !DILocation(line: 117, column: 1, scope: !4932)
!4953 = distinct !DISubprogram(name: "ucp_memory_info_set_host", scope: !501, file: !501, line: 577, type: !4954, scopeLine: 578, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4956)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{null, !4816}
!4956 = !{!4957}
!4957 = !DILocalVariable(name: "mem_info", arg: 1, scope: !4953, file: !501, line: 577, type: !4816)
!4958 = !DILocation(line: 577, column: 45, scope: !4953)
!4959 = !DILocation(line: 579, column: 5, scope: !4953)
!4960 = !DILocation(line: 579, column: 15, scope: !4953)
!4961 = !DILocation(line: 579, column: 23, scope: !4953)
!4962 = !DILocation(line: 580, column: 5, scope: !4953)
!4963 = !DILocation(line: 580, column: 15, scope: !4953)
!4964 = !DILocation(line: 580, column: 23, scope: !4953)
!4965 = !DILocation(line: 581, column: 1, scope: !4953)
!4966 = distinct !DISubprogram(name: "ucp_dt_to_generic", scope: !2435, file: !2435, line: 28, type: !4967, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4969)
!4967 = !DISubroutineType(types: !4968)
!4968 = !{!2433, !350}
!4969 = !{!4970}
!4970 = !DILocalVariable(name: "datatype", arg: 1, scope: !4966, file: !2435, line: 28, type: !350)
!4971 = !DILocation(line: 28, column: 52, scope: !4966)
!4972 = !DILocation(line: 30, column: 39, scope: !4966)
!4973 = !DILocation(line: 30, column: 48, scope: !4966)
!4974 = !DILocation(line: 30, column: 31, scope: !4966)
!4975 = !DILocation(line: 30, column: 5, scope: !4966)
!4976 = distinct !DISubprogram(name: "ucp_proto_select_op_attr_to_flags", scope: !4263, file: !4263, line: 60, type: !4977, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4979)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!529, !361}
!4979 = !{!4980}
!4980 = !DILocalVariable(name: "op_attr_mask", arg: 1, scope: !4976, file: !4263, line: 60, type: !361)
!4981 = !DILocation(line: 60, column: 44, scope: !4976)
!4982 = !DILocation(line: 65, column: 12, scope: !4976)
!4983 = !DILocation(line: 65, column: 25, scope: !4976)
!4984 = !DILocation(line: 65, column: 5, scope: !4976)
!4985 = distinct !DISubprogram(name: "ucp_proto_select_lookup", scope: !4263, file: !4263, line: 76, type: !4986, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !4988)
!4986 = !DISubroutineType(types: !4987)
!4987 = !{!2071, !384, !3568, !1841, !1841, !2101, !551}
!4988 = !{!4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !5002}
!4989 = !DILocalVariable(name: "worker", arg: 1, scope: !4985, file: !4263, line: 76, type: !384)
!4990 = !DILocalVariable(name: "proto_select", arg: 2, scope: !4985, file: !4263, line: 76, type: !3568)
!4991 = !DILocalVariable(name: "ep_cfg_index", arg: 3, scope: !4985, file: !4263, line: 77, type: !1841)
!4992 = !DILocalVariable(name: "rkey_cfg_index", arg: 4, scope: !4985, file: !4263, line: 78, type: !1841)
!4993 = !DILocalVariable(name: "select_param", arg: 5, scope: !4985, file: !4263, line: 79, type: !2101)
!4994 = !DILocalVariable(name: "msg_length", arg: 6, scope: !4985, file: !4263, line: 80, type: !551)
!4995 = !DILocalVariable(name: "select_elem", scope: !4985, file: !4263, line: 82, type: !2201)
!4996 = !DILocalVariable(name: "key", scope: !4985, file: !4263, line: 83, type: !4997)
!4997 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_proto_select_key_t", file: !4263, line: 24, baseType: !4998)
!4998 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !4263, line: 21, size: 64, elements: !4999)
!4999 = !{!5000, !5001}
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4998, file: !4263, line: 22, baseType: !2103, size: 64)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !4998, file: !4263, line: 23, baseType: !351, size: 64)
!5002 = !DILocalVariable(name: "khiter", scope: !4985, file: !4263, line: 84, type: !5003)
!5003 = !DIDerivedType(tag: DW_TAG_typedef, name: "khiter_t", file: !1058, line: 174, baseType: !1057)
!5004 = !DILocation(line: 76, column: 38, scope: !4985)
!5005 = !DILocation(line: 76, column: 66, scope: !4985)
!5006 = !DILocation(line: 77, column: 48, scope: !4985)
!5007 = !DILocation(line: 78, column: 48, scope: !4985)
!5008 = !DILocation(line: 79, column: 57, scope: !4985)
!5009 = !DILocation(line: 80, column: 32, scope: !4985)
!5010 = !DILocation(line: 82, column: 5, scope: !4985)
!5011 = !DILocation(line: 82, column: 36, scope: !4985)
!5012 = !DILocation(line: 83, column: 5, scope: !4985)
!5013 = !DILocation(line: 83, column: 28, scope: !4985)
!5014 = !DILocation(line: 84, column: 5, scope: !4985)
!5015 = !DILocation(line: 84, column: 14, scope: !4985)
!5016 = !DILocation(line: 87, column: 18, scope: !4985)
!5017 = !DILocation(line: 87, column: 17, scope: !4985)
!5018 = !{i64 0, i64 1, !2831, i64 1, i64 2, !3602, i64 3, i64 1, !2831, i64 4, i64 1, !2831, i64 5, i64 1, !2831, i64 6, i64 1, !2831, i64 7, i64 1, !2831}
!5019 = !DILocation(line: 89, column: 9, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !4985, file: !4263, line: 89, column: 9)
!5021 = !{!3484, !2830, i64 40}
!5022 = !DILocation(line: 89, column: 9, scope: !4985)
!5023 = !DILocation(line: 90, column: 23, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5020, file: !4263, line: 89, column: 57)
!5025 = !DILocation(line: 90, column: 37, scope: !5024)
!5026 = !DILocation(line: 90, column: 43, scope: !5024)
!5027 = !{!3484, !2817, i64 48}
!5028 = !DILocation(line: 90, column: 21, scope: !5024)
!5029 = !DILocation(line: 91, column: 5, scope: !5024)
!5030 = !DILocation(line: 92, column: 18, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5020, file: !4263, line: 91, column: 12)
!5032 = !DILocation(line: 92, column: 16, scope: !5031)
!5033 = !DILocation(line: 93, column: 13, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5031, file: !4263, line: 93, column: 13)
!5035 = !{!3484, !2822, i64 0}
!5036 = !DILocation(line: 93, column: 13, scope: !5031)
!5037 = !DILocation(line: 95, column: 28, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !5034, file: !4263, line: 93, column: 64)
!5039 = !{!3484, !2817, i64 32}
!5040 = !DILocation(line: 95, column: 25, scope: !5038)
!5041 = !DILocation(line: 96, column: 9, scope: !5038)
!5042 = !DILocation(line: 97, column: 56, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5034, file: !4263, line: 96, column: 16)
!5044 = !DILocation(line: 97, column: 64, scope: !5043)
!5045 = !DILocation(line: 98, column: 56, scope: !5043)
!5046 = !DILocation(line: 99, column: 56, scope: !5043)
!5047 = !DILocation(line: 97, column: 27, scope: !5043)
!5048 = !DILocation(line: 97, column: 25, scope: !5043)
!5049 = !DILocation(line: 101, column: 17, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5043, file: !4263, line: 101, column: 17)
!5051 = !DILocation(line: 101, column: 17, scope: !5043)
!5052 = !DILocation(line: 102, column: 17, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5050, file: !4263, line: 101, column: 52)
!5054 = !DILocation(line: 106, column: 41, scope: !5031)
!5055 = !DILocation(line: 106, column: 9, scope: !5031)
!5056 = !DILocation(line: 106, column: 23, scope: !5031)
!5057 = !DILocation(line: 106, column: 29, scope: !5031)
!5058 = !DILocation(line: 106, column: 35, scope: !5031)
!5059 = !DILocation(line: 107, column: 37, scope: !5031)
!5060 = !DILocation(line: 107, column: 9, scope: !5031)
!5061 = !DILocation(line: 107, column: 23, scope: !5031)
!5062 = !DILocation(line: 107, column: 29, scope: !5031)
!5063 = !DILocation(line: 107, column: 35, scope: !5031)
!5064 = !DILocation(line: 110, column: 47, scope: !4985)
!5065 = !DILocation(line: 110, column: 60, scope: !4985)
!5066 = !DILocation(line: 110, column: 12, scope: !4985)
!5067 = !DILocation(line: 110, column: 5, scope: !4985)
!5068 = !DILocation(line: 111, column: 1, scope: !4985)
!5069 = distinct !DISubprogram(name: "ucp_proto_request_set_proto", scope: !3565, file: !3565, line: 170, type: !5070, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5072)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{null, !355, !2381, !551}
!5072 = !{!5073, !5074, !5075}
!5073 = !DILocalVariable(name: "req", arg: 1, scope: !5069, file: !3565, line: 170, type: !355)
!5074 = !DILocalVariable(name: "proto_config", arg: 2, scope: !5069, file: !3565, line: 171, type: !2381)
!5075 = !DILocalVariable(name: "msg_length", arg: 3, scope: !5069, file: !3565, line: 172, type: !551)
!5076 = !DILocation(line: 170, column: 56, scope: !5069)
!5077 = !DILocation(line: 171, column: 67, scope: !5069)
!5078 = !DILocation(line: 172, column: 48, scope: !5069)
!5079 = !DILocation(line: 176, column: 30, scope: !5069)
!5080 = !DILocation(line: 176, column: 5, scope: !5069)
!5081 = !DILocation(line: 176, column: 10, scope: !5069)
!5082 = !DILocation(line: 176, column: 15, scope: !5069)
!5083 = !DILocation(line: 176, column: 28, scope: !5069)
!5084 = !DILocation(line: 181, column: 33, scope: !5069)
!5085 = !DILocation(line: 181, column: 5, scope: !5069)
!5086 = !DILocation(line: 182, column: 1, scope: !5069)
!5087 = distinct !DISubprogram(name: "kh_get_ucp_proto_select_hash", scope: !4263, file: !4263, line: 27, type: !5088, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5092)
!5088 = !DISubroutineType(types: !5089)
!5089 = !{!1057, !5090, !2064}
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2054)
!5092 = !{!5093, !5094, !5095, !5098, !5099, !5100, !5101}
!5093 = !DILocalVariable(name: "h", arg: 1, scope: !5087, file: !4263, line: 27, type: !5090)
!5094 = !DILocalVariable(name: "key", arg: 2, scope: !5087, file: !4263, line: 27, type: !2064)
!5095 = !DILocalVariable(name: "k", scope: !5096, file: !4263, line: 27, type: !1057)
!5096 = distinct !DILexicalBlock(scope: !5097, file: !4263, line: 27, column: 1)
!5097 = distinct !DILexicalBlock(scope: !5087, file: !4263, line: 27, column: 1)
!5098 = !DILocalVariable(name: "i", scope: !5096, file: !4263, line: 27, type: !1057)
!5099 = !DILocalVariable(name: "last", scope: !5096, file: !4263, line: 27, type: !1057)
!5100 = !DILocalVariable(name: "mask", scope: !5096, file: !4263, line: 27, type: !1057)
!5101 = !DILocalVariable(name: "step", scope: !5096, file: !4263, line: 27, type: !1057)
!5102 = !DILocation(line: 27, column: 1, scope: !5087)
!5103 = !DILocation(line: 27, column: 1, scope: !5097)
!5104 = !{!3485, !2822, i64 0}
!5105 = !DILocation(line: 27, column: 1, scope: !5096)
!5106 = !{!3485, !2817, i64 16}
!5107 = !{!3485, !2817, i64 24}
!5108 = !DILocation(line: 0, scope: !5096)
!5109 = !DILocation(line: 27, column: 1, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !5096, file: !4263, line: 27, column: 1)
!5111 = !DILocation(line: 27, column: 1, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5110, file: !4263, line: 27, column: 1)
!5113 = distinct !{!5113, !5105, !5105, !4186}
!5114 = !DISubprogram(name: "ucp_proto_select_lookup_slow", scope: !2050, file: !2050, line: 140, type: !5115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5115 = !DISubroutineType(types: !5116)
!5116 = !{!2066, !384, !3568, !1841, !1841, !2101}
!5117 = distinct !DISubprogram(name: "ucp_proto_select_thresholds_search", scope: !4263, file: !4263, line: 32, type: !5118, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5120)
!5118 = !DISubroutineType(types: !5119)
!5119 = !{!2071, !2201, !551}
!5120 = !{!5121, !5122, !5123}
!5121 = !DILocalVariable(name: "select_elem", arg: 1, scope: !5117, file: !4263, line: 32, type: !2201)
!5122 = !DILocalVariable(name: "msg_length", arg: 2, scope: !5117, file: !4263, line: 33, type: !551)
!5123 = !DILocalVariable(name: "thresholds", scope: !5117, file: !4263, line: 35, type: !2071)
!5124 = !DILocation(line: 32, column: 67, scope: !5117)
!5125 = !DILocation(line: 33, column: 43, scope: !5117)
!5126 = !DILocation(line: 35, column: 5, scope: !5117)
!5127 = !DILocation(line: 35, column: 39, scope: !5117)
!5128 = !DILocation(line: 35, column: 52, scope: !5117)
!5129 = !DILocation(line: 35, column: 65, scope: !5117)
!5130 = !{!5131, !2817, i64 0}
!5131 = !{!"", !2817, i64 0, !2817, i64 8, !2817, i64 16}
!5132 = !DILocation(line: 42, column: 5, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5117, file: !4263, line: 42, column: 5)
!5134 = !{!5135, !2830, i64 40}
!5135 = !{!"", !5136, i64 0, !2830, i64 40}
!5136 = !{!"", !2817, i64 0, !2817, i64 8, !2830, i64 16, !2818, i64 24, !2818, i64 25, !4478, i64 26}
!5137 = !DILocation(line: 42, column: 5, scope: !5117)
!5138 = !DILocation(line: 42, column: 5, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5133, file: !4263, line: 42, column: 5)
!5140 = !DILocation(line: 42, column: 5, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5117, file: !4263, line: 42, column: 5)
!5142 = !DILocation(line: 42, column: 5, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5141, file: !4263, line: 42, column: 5)
!5144 = !DILocation(line: 42, column: 5, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5117, file: !4263, line: 42, column: 5)
!5146 = !DILocation(line: 42, column: 5, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5145, file: !4263, line: 42, column: 5)
!5148 = !DILocation(line: 44, column: 45, scope: !5117)
!5149 = !DILocation(line: 44, column: 56, scope: !5117)
!5150 = !DILocation(line: 44, column: 61, scope: !5117)
!5151 = !DILocation(line: 44, column: 12, scope: !5117)
!5152 = !DILocation(line: 44, column: 5, scope: !5117)
!5153 = !DILocation(line: 45, column: 1, scope: !5117)
!5154 = !DISubprogram(name: "ucp_proto_thresholds_search_slow", scope: !2050, file: !2050, line: 148, type: !5155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5155 = !DISubroutineType(types: !5156)
!5156 = !{!2071, !2071, !551}
!5157 = distinct !DISubprogram(name: "ucp_proto_request_set_stage", scope: !3565, file: !3565, line: 150, type: !5158, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5160)
!5158 = !DISubroutineType(types: !5159)
!5159 = !{null, !355, !529}
!5160 = !{!5161, !5162, !5163}
!5161 = !DILocalVariable(name: "req", arg: 1, scope: !5157, file: !3565, line: 150, type: !355)
!5162 = !DILocalVariable(name: "proto_stage", arg: 2, scope: !5157, file: !3565, line: 150, type: !529)
!5163 = !DILocalVariable(name: "proto", scope: !5157, file: !3565, line: 152, type: !2081)
!5164 = !DILocation(line: 150, column: 44, scope: !5157)
!5165 = !DILocation(line: 150, column: 57, scope: !5157)
!5166 = !DILocation(line: 152, column: 5, scope: !5157)
!5167 = !DILocation(line: 152, column: 24, scope: !5157)
!5168 = !DILocation(line: 152, column: 32, scope: !5157)
!5169 = !DILocation(line: 152, column: 37, scope: !5157)
!5170 = !DILocation(line: 152, column: 42, scope: !5157)
!5171 = !DILocation(line: 152, column: 56, scope: !5157)
!5172 = !{!5136, !2817, i64 0}
!5173 = !DILocation(line: 157, column: 5, scope: !5157)
!5174 = !DILocation(line: 157, column: 5, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5157, file: !3565, line: 157, column: 5)
!5176 = !DILocation(line: 157, column: 5, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5175, file: !3565, line: 157, column: 5)
!5178 = !DILocation(line: 159, column: 29, scope: !5157)
!5179 = !DILocation(line: 159, column: 5, scope: !5157)
!5180 = !DILocation(line: 159, column: 10, scope: !5157)
!5181 = !DILocation(line: 159, column: 15, scope: !5157)
!5182 = !DILocation(line: 159, column: 27, scope: !5157)
!5183 = !DILocation(line: 165, column: 30, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5185, file: !3565, line: 164, column: 12)
!5185 = distinct !DILexicalBlock(scope: !5157, file: !3565, line: 162, column: 9)
!5186 = !DILocation(line: 165, column: 37, scope: !5184)
!5187 = !DILocation(line: 165, column: 46, scope: !5184)
!5188 = !DILocation(line: 165, column: 9, scope: !5184)
!5189 = !DILocation(line: 165, column: 14, scope: !5184)
!5190 = !DILocation(line: 165, column: 19, scope: !5184)
!5191 = !DILocation(line: 165, column: 23, scope: !5184)
!5192 = !DILocation(line: 165, column: 28, scope: !5184)
!5193 = !DILocation(line: 167, column: 1, scope: !5157)
!5194 = distinct !DISubprogram(name: "ucs_mpool_put_inline", scope: !3494, file: !3494, line: 72, type: !879, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5195)
!5195 = !{!5196, !5197, !5198}
!5196 = !DILocalVariable(name: "obj", arg: 1, scope: !5194, file: !3494, line: 72, type: !339)
!5197 = !DILocalVariable(name: "elem", scope: !5194, file: !3494, line: 74, type: !780)
!5198 = !DILocalVariable(name: "mp", scope: !5194, file: !3494, line: 75, type: !786)
!5199 = !DILocation(line: 72, column: 47, scope: !5194)
!5200 = !DILocation(line: 74, column: 5, scope: !5194)
!5201 = !DILocation(line: 74, column: 23, scope: !5194)
!5202 = !DILocation(line: 75, column: 5, scope: !5194)
!5203 = !DILocation(line: 75, column: 18, scope: !5194)
!5204 = !DILocation(line: 77, column: 34, scope: !5194)
!5205 = !DILocation(line: 77, column: 12, scope: !5194)
!5206 = !DILocation(line: 77, column: 10, scope: !5194)
!5207 = !DILocation(line: 78, column: 12, scope: !5194)
!5208 = !DILocation(line: 78, column: 18, scope: !5194)
!5209 = !DILocation(line: 78, column: 10, scope: !5194)
!5210 = !DILocation(line: 79, column: 31, scope: !5194)
!5211 = !DILocation(line: 79, column: 35, scope: !5194)
!5212 = !DILocation(line: 79, column: 5, scope: !5194)
!5213 = !DILocation(line: 83, column: 1, scope: !5194)
!5214 = distinct !DISubprogram(name: "ucs_mpool_obj_to_elem", scope: !3494, file: !3494, line: 60, type: !5215, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5217)
!5215 = !DISubroutineType(types: !5216)
!5216 = !{!780, !339}
!5217 = !{!5218, !5219}
!5218 = !DILocalVariable(name: "obj", arg: 1, scope: !5214, file: !3494, line: 60, type: !339)
!5219 = !DILocalVariable(name: "elem", scope: !5214, file: !3494, line: 62, type: !780)
!5220 = !DILocation(line: 60, column: 61, scope: !5214)
!5221 = !DILocation(line: 62, column: 5, scope: !5214)
!5222 = !DILocation(line: 62, column: 23, scope: !5214)
!5223 = !DILocation(line: 62, column: 49, scope: !5214)
!5224 = !DILocation(line: 62, column: 53, scope: !5214)
!5225 = !DILocation(line: 64, column: 12, scope: !5214)
!5226 = !DILocation(line: 65, column: 1, scope: !5214)
!5227 = !DILocation(line: 64, column: 5, scope: !5214)
!5228 = distinct !DISubprogram(name: "ucs_mpool_add_to_freelist", scope: !3494, file: !3494, line: 38, type: !5229, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5231)
!5229 = !DISubroutineType(types: !5230)
!5230 = !{null, !786, !780, !420}
!5231 = !{!5232, !5233, !5234, !5235}
!5232 = !DILocalVariable(name: "mp", arg: 1, scope: !5228, file: !3494, line: 38, type: !786)
!5233 = !DILocalVariable(name: "elem", arg: 2, scope: !5228, file: !3494, line: 38, type: !780)
!5234 = !DILocalVariable(name: "add_to_tail", arg: 3, scope: !5228, file: !3494, line: 39, type: !420)
!5235 = !DILocalVariable(name: "tail", scope: !5228, file: !3494, line: 41, type: !780)
!5236 = !DILocation(line: 38, column: 59, scope: !5228)
!5237 = !DILocation(line: 38, column: 81, scope: !5228)
!5238 = !DILocation(line: 39, column: 50, scope: !5228)
!5239 = !DILocation(line: 41, column: 5, scope: !5228)
!5240 = !DILocation(line: 41, column: 23, scope: !5228)
!5241 = !DILocation(line: 43, column: 9, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5228, file: !3494, line: 43, column: 9)
!5243 = !DILocation(line: 43, column: 9, scope: !5228)
!5244 = !DILocation(line: 44, column: 9, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5242, file: !3494, line: 43, column: 22)
!5246 = !DILocation(line: 44, column: 20, scope: !5245)
!5247 = !DILocation(line: 45, column: 13, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5245, file: !3494, line: 45, column: 13)
!5249 = !DILocation(line: 45, column: 17, scope: !5248)
!5250 = !DILocation(line: 45, column: 26, scope: !5248)
!5251 = !DILocation(line: 45, column: 13, scope: !5245)
!5252 = !DILocation(line: 46, column: 28, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5248, file: !3494, line: 45, column: 35)
!5254 = !DILocation(line: 46, column: 13, scope: !5253)
!5255 = !DILocation(line: 46, column: 17, scope: !5253)
!5256 = !DILocation(line: 46, column: 26, scope: !5253)
!5257 = !DILocation(line: 47, column: 9, scope: !5253)
!5258 = !DILocation(line: 48, column: 20, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5248, file: !3494, line: 47, column: 16)
!5260 = !DILocation(line: 48, column: 24, scope: !5259)
!5261 = !{!3201, !2817, i64 8}
!5262 = !DILocation(line: 48, column: 30, scope: !5259)
!5263 = !{!5264, !2817, i64 56}
!5264 = !{!"ucs_mpool_data", !2830, i64 0, !2830, i64 8, !2830, i64 16, !2885, i64 24, !2830, i64 32, !2822, i64 40, !2822, i64 44, !2822, i64 48, !2817, i64 56, !2817, i64 64, !2817, i64 72, !2817, i64 80}
!5265 = !DILocation(line: 48, column: 18, scope: !5259)
!5266 = !DILocation(line: 50, column: 26, scope: !5259)
!5267 = !DILocation(line: 50, column: 13, scope: !5259)
!5268 = !DILocation(line: 50, column: 24, scope: !5259)
!5269 = !DILocation(line: 53, column: 26, scope: !5245)
!5270 = !DILocation(line: 53, column: 9, scope: !5245)
!5271 = !DILocation(line: 53, column: 13, scope: !5245)
!5272 = !DILocation(line: 53, column: 19, scope: !5245)
!5273 = !DILocation(line: 53, column: 24, scope: !5245)
!5274 = !DILocation(line: 54, column: 5, scope: !5245)
!5275 = !DILocation(line: 55, column: 22, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5242, file: !3494, line: 54, column: 12)
!5277 = !DILocation(line: 55, column: 26, scope: !5276)
!5278 = !DILocation(line: 55, column: 9, scope: !5276)
!5279 = !DILocation(line: 55, column: 20, scope: !5276)
!5280 = !DILocation(line: 56, column: 24, scope: !5276)
!5281 = !DILocation(line: 56, column: 9, scope: !5276)
!5282 = !DILocation(line: 56, column: 13, scope: !5276)
!5283 = !DILocation(line: 56, column: 22, scope: !5276)
!5284 = !DILocation(line: 58, column: 1, scope: !5228)
!5285 = distinct !DISubprogram(name: "ucp_request_try_send", scope: !40, file: !40, line: 328, type: !5286, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5288)
!5286 = !DISubroutineType(types: !5287)
!5287 = !{!420, !355}
!5288 = !{!5289, !5290}
!5289 = !DILocalVariable(name: "req", arg: 1, scope: !5285, file: !40, line: 328, type: !355)
!5290 = !DILocalVariable(name: "status", scope: !5285, file: !40, line: 330, type: !345)
!5291 = !DILocation(line: 328, column: 68, scope: !5285)
!5292 = !DILocation(line: 330, column: 5, scope: !5285)
!5293 = !DILocation(line: 330, column: 18, scope: !5285)
!5294 = !DILocation(line: 334, column: 14, scope: !5285)
!5295 = !DILocation(line: 334, column: 19, scope: !5285)
!5296 = !DILocation(line: 334, column: 24, scope: !5285)
!5297 = !DILocation(line: 334, column: 28, scope: !5285)
!5298 = !DILocation(line: 334, column: 34, scope: !5285)
!5299 = !DILocation(line: 334, column: 39, scope: !5285)
!5300 = !DILocation(line: 334, column: 44, scope: !5285)
!5301 = !DILocation(line: 334, column: 12, scope: !5285)
!5302 = !DILocation(line: 335, column: 9, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5285, file: !40, line: 335, column: 9)
!5304 = !DILocation(line: 335, column: 16, scope: !5303)
!5305 = !DILocation(line: 335, column: 9, scope: !5285)
!5306 = !DILocation(line: 337, column: 9, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5303, file: !40, line: 335, column: 27)
!5308 = !DILocation(line: 338, column: 16, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5303, file: !40, line: 338, column: 16)
!5310 = !DILocation(line: 338, column: 23, scope: !5309)
!5311 = !DILocation(line: 338, column: 16, scope: !5303)
!5312 = !DILocation(line: 340, column: 9, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5309, file: !40, line: 338, column: 42)
!5314 = !DILocation(line: 341, column: 16, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5309, file: !40, line: 341, column: 16)
!5316 = !DILocation(line: 341, column: 23, scope: !5315)
!5317 = !DILocation(line: 341, column: 16, scope: !5309)
!5318 = !DILocation(line: 343, column: 40, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5315, file: !40, line: 341, column: 47)
!5320 = !DILocation(line: 343, column: 16, scope: !5319)
!5321 = !DILocation(line: 343, column: 9, scope: !5319)
!5322 = !DILocation(line: 346, column: 5, scope: !5285)
!5323 = !DILocation(line: 347, column: 1, scope: !5285)
!5324 = !DISubprogram(name: "ucp_request_pending_add", scope: !238, file: !238, line: 515, type: !5286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5325 = !DISubprogram(name: "ucs_status_string", scope: !101, file: !101, line: 121, type: !5326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5326 = !DISubroutineType(types: !5327)
!5327 = !{!1106, !345}
!5328 = distinct !DISubprogram(name: "ucp_rma_request_init", scope: !14, file: !14, line: 124, type: !5329, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5331)
!5329 = !DISubroutineType(types: !5330)
!5330 = !{!345, !355, !378, !1083, !551, !351, !2290, !1317, !551, !3089}
!5331 = !{!5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342}
!5332 = !DILocalVariable(name: "req", arg: 1, scope: !5328, file: !14, line: 124, type: !355)
!5333 = !DILocalVariable(name: "ep", arg: 2, scope: !5328, file: !14, line: 124, type: !378)
!5334 = !DILocalVariable(name: "buffer", arg: 3, scope: !5328, file: !14, line: 124, type: !1083)
!5335 = !DILocalVariable(name: "length", arg: 4, scope: !5328, file: !14, line: 125, type: !551)
!5336 = !DILocalVariable(name: "remote_addr", arg: 5, scope: !5328, file: !14, line: 125, type: !351)
!5337 = !DILocalVariable(name: "rkey", arg: 6, scope: !5328, file: !14, line: 125, type: !2290)
!5338 = !DILocalVariable(name: "cb", arg: 7, scope: !5328, file: !14, line: 126, type: !1317)
!5339 = !DILocalVariable(name: "zcopy_thresh", arg: 8, scope: !5328, file: !14, line: 126, type: !551)
!5340 = !DILocalVariable(name: "param", arg: 9, scope: !5328, file: !14, line: 127, type: !3089)
!5341 = !DILocalVariable(name: "context", scope: !5328, file: !14, line: 129, type: !498)
!5342 = !DILocalVariable(name: "status", scope: !5328, file: !14, line: 130, type: !345)
!5343 = !DILocation(line: 124, column: 37, scope: !5328)
!5344 = !DILocation(line: 124, column: 51, scope: !5328)
!5345 = !DILocation(line: 124, column: 67, scope: !5328)
!5346 = !DILocation(line: 125, column: 29, scope: !5328)
!5347 = !DILocation(line: 125, column: 46, scope: !5328)
!5348 = !DILocation(line: 125, column: 70, scope: !5328)
!5349 = !DILocation(line: 126, column: 45, scope: !5328)
!5350 = !DILocation(line: 126, column: 56, scope: !5328)
!5351 = !DILocation(line: 127, column: 49, scope: !5328)
!5352 = !DILocation(line: 129, column: 5, scope: !5328)
!5353 = !DILocation(line: 129, column: 19, scope: !5328)
!5354 = !DILocation(line: 129, column: 29, scope: !5328)
!5355 = !DILocation(line: 129, column: 33, scope: !5328)
!5356 = !DILocation(line: 129, column: 41, scope: !5328)
!5357 = !DILocation(line: 130, column: 5, scope: !5328)
!5358 = !DILocation(line: 130, column: 18, scope: !5328)
!5359 = !DILocation(line: 132, column: 5, scope: !5328)
!5360 = !DILocation(line: 132, column: 10, scope: !5328)
!5361 = !DILocation(line: 132, column: 31, scope: !5328)
!5362 = !DILocation(line: 133, column: 33, scope: !5328)
!5363 = !DILocation(line: 133, column: 5, scope: !5328)
!5364 = !DILocation(line: 133, column: 10, scope: !5328)
!5365 = !DILocation(line: 133, column: 15, scope: !5328)
!5366 = !DILocation(line: 133, column: 31, scope: !5328)
!5367 = !DILocation(line: 134, column: 40, scope: !5328)
!5368 = !DILocation(line: 134, column: 5, scope: !5328)
!5369 = !DILocation(line: 134, column: 10, scope: !5328)
!5370 = !DILocation(line: 134, column: 15, scope: !5328)
!5371 = !DILocation(line: 134, column: 31, scope: !5328)
!5372 = !DILocation(line: 135, column: 5, scope: !5328)
!5373 = !DILocation(line: 135, column: 10, scope: !5328)
!5374 = !DILocation(line: 135, column: 15, scope: !5328)
!5375 = !DILocation(line: 135, column: 31, scope: !5328)
!5376 = !DILocation(line: 136, column: 61, scope: !5328)
!5377 = !DILocation(line: 136, column: 70, scope: !5328)
!5378 = !DILocation(line: 137, column: 61, scope: !5328)
!5379 = !DILocation(line: 137, column: 69, scope: !5328)
!5380 = !DILocation(line: 136, column: 33, scope: !5328)
!5381 = !DILocation(line: 136, column: 5, scope: !5328)
!5382 = !DILocation(line: 136, column: 10, scope: !5328)
!5383 = !DILocation(line: 136, column: 15, scope: !5328)
!5384 = !DILocation(line: 136, column: 31, scope: !5328)
!5385 = !DILocation(line: 138, column: 33, scope: !5328)
!5386 = !DILocation(line: 138, column: 5, scope: !5328)
!5387 = !DILocation(line: 138, column: 10, scope: !5328)
!5388 = !DILocation(line: 138, column: 15, scope: !5328)
!5389 = !DILocation(line: 138, column: 31, scope: !5328)
!5390 = !DILocation(line: 139, column: 33, scope: !5328)
!5391 = !DILocation(line: 139, column: 5, scope: !5328)
!5392 = !DILocation(line: 139, column: 10, scope: !5328)
!5393 = !DILocation(line: 139, column: 15, scope: !5328)
!5394 = !DILocation(line: 139, column: 19, scope: !5328)
!5395 = !DILocation(line: 139, column: 31, scope: !5328)
!5396 = !DILocation(line: 140, column: 33, scope: !5328)
!5397 = !DILocation(line: 140, column: 5, scope: !5328)
!5398 = !DILocation(line: 140, column: 10, scope: !5328)
!5399 = !DILocation(line: 140, column: 15, scope: !5328)
!5400 = !DILocation(line: 140, column: 19, scope: !5328)
!5401 = !DILocation(line: 140, column: 31, scope: !5328)
!5402 = !DILocation(line: 141, column: 33, scope: !5328)
!5403 = !DILocation(line: 141, column: 5, scope: !5328)
!5404 = !DILocation(line: 141, column: 10, scope: !5328)
!5405 = !DILocation(line: 141, column: 15, scope: !5328)
!5406 = !DILocation(line: 141, column: 19, scope: !5328)
!5407 = !DILocation(line: 141, column: 31, scope: !5328)
!5408 = !DILocation(line: 142, column: 33, scope: !5328)
!5409 = !DILocation(line: 142, column: 39, scope: !5328)
!5410 = !DILocation(line: 142, column: 45, scope: !5328)
!5411 = !DILocation(line: 142, column: 5, scope: !5328)
!5412 = !DILocation(line: 142, column: 10, scope: !5328)
!5413 = !DILocation(line: 142, column: 15, scope: !5328)
!5414 = !DILocation(line: 142, column: 31, scope: !5328)
!5415 = !DILocation(line: 143, column: 33, scope: !5328)
!5416 = !DILocation(line: 143, column: 61, scope: !5328)
!5417 = !DILocation(line: 143, column: 5, scope: !5328)
!5418 = !DILocation(line: 144, column: 34, scope: !5328)
!5419 = !DILocation(line: 145, column: 35, scope: !5328)
!5420 = !DILocation(line: 145, column: 44, scope: !5328)
!5421 = !DILocation(line: 145, column: 42, scope: !5328)
!5422 = !DILocation(line: 145, column: 34, scope: !5328)
!5423 = !DILocation(line: 144, column: 5, scope: !5328)
!5424 = !DILocation(line: 152, column: 9, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5328, file: !14, line: 152, column: 9)
!5426 = !DILocation(line: 152, column: 18, scope: !5425)
!5427 = !DILocation(line: 152, column: 16, scope: !5425)
!5428 = !DILocation(line: 152, column: 9, scope: !5328)
!5429 = !DILocation(line: 153, column: 9, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5425, file: !14, line: 152, column: 32)
!5431 = !DILocation(line: 156, column: 45, scope: !5328)
!5432 = !DILocation(line: 157, column: 59, scope: !5328)
!5433 = !DILocation(line: 157, column: 45, scope: !5328)
!5434 = !DILocation(line: 157, column: 64, scope: !5328)
!5435 = !DILocation(line: 157, column: 68, scope: !5328)
!5436 = !{!5437, !2830, i64 344}
!5437 = !{!"ucp_ep_config", !5438, i64 0, !2884, i64 376, !2822, i64 380, !2818, i64 384, !2830, i64 1408, !5439, i64 1416, !2818, i64 1760, !5440, i64 1776, !5443, i64 2160, !5447, i64 2608, !5448, i64 2616, !3484, i64 2664, !2830, i64 2720}
!5438 = !{!"ucp_ep_config_key", !2818, i64 0, !2818, i64 8, !2818, i64 264, !2818, i64 265, !2818, i64 266, !2818, i64 267, !2818, i64 268, !2818, i64 269, !2818, i64 285, !2818, i64 301, !2818, i64 302, !2818, i64 318, !2830, i64 336, !2830, i64 344, !2830, i64 352, !2817, i64 360, !2818, i64 368}
!5439 = !{!"ucp_ep_msg_config", !2830, i64 0, !2830, i64 8, !2830, i64 16, !2830, i64 24, !2830, i64 32, !2818, i64 40, !2818, i64 168, !2818, i64 208, !2818, i64 336}
!5440 = !{!"", !5441, i64 0, !5441, i64 168, !5442, i64 336, !5442, i64 352, !2830, i64 368, !2830, i64 376}
!5441 = !{!"ucp_rndv_zcopy", !2830, i64 0, !2830, i64 8, !2822, i64 16, !2818, i64 20, !2818, i64 40}
!5442 = !{!"ucp_rndv_thresh", !2830, i64 0, !2830, i64 8}
!5443 = !{!"", !2817, i64 0, !2817, i64 8, !2818, i64 16, !5444, i64 24, !5439, i64 40, !5445, i64 384, !5446, i64 416}
!5444 = !{!"ucp_memtype_thresh", !2830, i64 0, !2830, i64 8}
!5445 = !{!"", !5442, i64 0, !5442, i64 16}
!5446 = !{!"", !5444, i64 0, !2830, i64 16, !2830, i64 24}
!5447 = !{!"", !2817, i64 0}
!5448 = !{!"", !2817, i64 0, !2817, i64 8, !5444, i64 16, !5444, i64 32}
!5449 = !DILocation(line: 158, column: 45, scope: !5328)
!5450 = !DILocation(line: 156, column: 14, scope: !5328)
!5451 = !DILocation(line: 156, column: 12, scope: !5328)
!5452 = !DILocation(line: 159, column: 9, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5328, file: !14, line: 159, column: 9)
!5454 = !DILocation(line: 159, column: 16, scope: !5453)
!5455 = !DILocation(line: 159, column: 9, scope: !5328)
!5456 = !DILocation(line: 160, column: 16, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5453, file: !14, line: 159, column: 27)
!5458 = !DILocation(line: 160, column: 9, scope: !5457)
!5459 = !DILocation(line: 163, column: 45, scope: !5328)
!5460 = !DILocation(line: 163, column: 50, scope: !5328)
!5461 = !DILocation(line: 163, column: 55, scope: !5328)
!5462 = !DILocation(line: 163, column: 60, scope: !5328)
!5463 = !DILocation(line: 163, column: 12, scope: !5328)
!5464 = !DILocation(line: 163, column: 5, scope: !5328)
!5465 = !DILocation(line: 164, column: 1, scope: !5328)
!5466 = distinct !DISubprogram(name: "ucp_rma_send_request", scope: !89, file: !89, line: 40, type: !5467, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5469)
!5467 = !DISubroutineType(types: !5468)
!5468 = !{!1269, !355, !3089}
!5469 = !{!5470, !5471, !5472}
!5470 = !DILocalVariable(name: "req", arg: 1, scope: !5466, file: !89, line: 40, type: !355)
!5471 = !DILocalVariable(name: "param", arg: 2, scope: !5466, file: !89, line: 40, type: !3089)
!5472 = !DILocalVariable(name: "_status", scope: !5473, file: !89, line: 48, type: !345)
!5473 = distinct !DILexicalBlock(scope: !5474, file: !89, line: 48, column: 9)
!5474 = distinct !DILexicalBlock(scope: !5475, file: !89, line: 44, column: 50)
!5475 = distinct !DILexicalBlock(scope: !5466, file: !89, line: 44, column: 9)
!5476 = !DILocation(line: 40, column: 37, scope: !5466)
!5477 = !DILocation(line: 40, column: 69, scope: !5466)
!5478 = !DILocation(line: 42, column: 22, scope: !5466)
!5479 = !DILocation(line: 42, column: 5, scope: !5466)
!5480 = !DILocation(line: 44, column: 9, scope: !5475)
!5481 = !DILocation(line: 44, column: 14, scope: !5475)
!5482 = !DILocation(line: 44, column: 20, scope: !5475)
!5483 = !DILocation(line: 44, column: 9, scope: !5466)
!5484 = !DILocation(line: 48, column: 9, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5474, file: !89, line: 48, column: 9)
!5486 = !DILocation(line: 48, column: 9, scope: !5474)
!5487 = !DILocation(line: 48, column: 9, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5489, file: !89, line: 48, column: 9)
!5489 = distinct !DILexicalBlock(scope: !5485, file: !89, line: 48, column: 9)
!5490 = !DILocation(line: 48, column: 9, scope: !5489)
!5491 = !DILocation(line: 48, column: 9, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5488, file: !89, line: 48, column: 9)
!5493 = !DILocation(line: 48, column: 9, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5489, file: !89, line: 48, column: 9)
!5495 = !DILocation(line: 48, column: 9, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5494, file: !89, line: 48, column: 9)
!5497 = !DILocation(line: 48, column: 9, scope: !5473)
!5498 = !DILocation(line: 48, column: 9, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5473, file: !89, line: 48, column: 9)
!5500 = !DILocation(line: 48, column: 9, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5499, file: !89, line: 48, column: 9)
!5502 = !DILocation(line: 51, column: 5, scope: !5466)
!5503 = !DILocation(line: 51, column: 5, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5466, file: !89, line: 51, column: 5)
!5505 = !DILocation(line: 51, column: 5, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5504, file: !89, line: 51, column: 5)
!5507 = !DILocation(line: 54, column: 5, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5466, file: !89, line: 54, column: 5)
!5509 = !DILocation(line: 54, column: 5, scope: !5466)
!5510 = !DILocation(line: 54, column: 5, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5512, file: !89, line: 54, column: 5)
!5512 = distinct !DILexicalBlock(scope: !5513, file: !89, line: 54, column: 5)
!5513 = distinct !DILexicalBlock(scope: !5508, file: !89, line: 54, column: 5)
!5514 = !DILocation(line: 54, column: 5, scope: !5512)
!5515 = !DILocation(line: 54, column: 5, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5512, file: !89, line: 54, column: 5)
!5517 = !DILocation(line: 54, column: 5, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5516, file: !89, line: 54, column: 5)
!5519 = !DILocation(line: 54, column: 5, scope: !5513)
!5520 = !DILocation(line: 56, column: 12, scope: !5466)
!5521 = !DILocation(line: 56, column: 16, scope: !5466)
!5522 = !DILocation(line: 56, column: 5, scope: !5466)
!5523 = !DILocation(line: 57, column: 1, scope: !5466)
!5524 = distinct !DISubprogram(name: "ucp_request_get_memory_type", scope: !40, file: !40, line: 979, type: !5525, scopeLine: 981, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5527)
!5525 = !DISubroutineType(types: !5526)
!5526 = !{!918, !498, !1083, !551, !3089}
!5527 = !{!5528, !5529, !5530, !5531, !5532}
!5528 = !DILocalVariable(name: "context", arg: 1, scope: !5524, file: !40, line: 979, type: !498)
!5529 = !DILocalVariable(name: "address", arg: 2, scope: !5524, file: !40, line: 979, type: !1083)
!5530 = !DILocalVariable(name: "length", arg: 3, scope: !5524, file: !40, line: 980, type: !551)
!5531 = !DILocalVariable(name: "param", arg: 4, scope: !5524, file: !40, line: 980, type: !3089)
!5532 = !DILocalVariable(name: "mem_info", scope: !5524, file: !40, line: 982, type: !2398)
!5533 = !DILocation(line: 979, column: 43, scope: !5524)
!5534 = !DILocation(line: 979, column: 64, scope: !5524)
!5535 = !DILocation(line: 980, column: 36, scope: !5524)
!5536 = !DILocation(line: 980, column: 71, scope: !5524)
!5537 = !DILocation(line: 982, column: 5, scope: !5524)
!5538 = !DILocation(line: 982, column: 23, scope: !5524)
!5539 = !DILocation(line: 984, column: 11, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5524, file: !40, line: 984, column: 9)
!5541 = !DILocation(line: 984, column: 18, scope: !5540)
!5542 = !DILocation(line: 984, column: 31, scope: !5540)
!5543 = !DILocation(line: 984, column: 64, scope: !5540)
!5544 = !DILocation(line: 985, column: 10, scope: !5540)
!5545 = !DILocation(line: 985, column: 17, scope: !5540)
!5546 = !{!3190, !2818, i64 48}
!5547 = !DILocation(line: 985, column: 29, scope: !5540)
!5548 = !DILocation(line: 984, column: 9, scope: !5524)
!5549 = !DILocation(line: 986, column: 27, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5540, file: !40, line: 985, column: 58)
!5551 = !DILocation(line: 986, column: 36, scope: !5550)
!5552 = !DILocation(line: 986, column: 45, scope: !5550)
!5553 = !DILocation(line: 986, column: 9, scope: !5550)
!5554 = !DILocation(line: 988, column: 44, scope: !5550)
!5555 = !DILocation(line: 988, column: 16, scope: !5550)
!5556 = !DILocation(line: 988, column: 9, scope: !5550)
!5557 = !DILocation(line: 992, column: 12, scope: !5524)
!5558 = !DILocation(line: 992, column: 19, scope: !5524)
!5559 = !DILocation(line: 992, column: 5, scope: !5524)
!5560 = !DILocation(line: 993, column: 1, scope: !5524)
!5561 = distinct !DISubprogram(name: "ucp_request_send_state_init", scope: !40, file: !40, line: 383, type: !5562, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5564)
!5562 = !DISubroutineType(types: !5563)
!5563 = !{null, !355, !350, !551}
!5564 = !{!5565, !5566, !5567, !5568, !5569}
!5565 = !DILocalVariable(name: "req", arg: 1, scope: !5561, file: !40, line: 383, type: !355)
!5566 = !DILocalVariable(name: "datatype", arg: 2, scope: !5561, file: !40, line: 383, type: !350)
!5567 = !DILocalVariable(name: "dt_count", arg: 3, scope: !5561, file: !40, line: 384, type: !551)
!5568 = !DILocalVariable(name: "dt_gen", scope: !5561, file: !40, line: 386, type: !2433)
!5569 = !DILocalVariable(name: "state_gen", scope: !5561, file: !40, line: 387, type: !339)
!5570 = !DILocation(line: 383, column: 44, scope: !5561)
!5571 = !DILocation(line: 383, column: 64, scope: !5561)
!5572 = !DILocation(line: 384, column: 36, scope: !5561)
!5573 = !DILocation(line: 386, column: 5, scope: !5561)
!5574 = !DILocation(line: 386, column: 23, scope: !5561)
!5575 = !DILocation(line: 387, column: 5, scope: !5561)
!5576 = !DILocation(line: 387, column: 23, scope: !5561)
!5577 = !DILocation(line: 394, column: 5, scope: !5561)
!5578 = !DILocation(line: 394, column: 10, scope: !5561)
!5579 = !DILocation(line: 394, column: 15, scope: !5561)
!5580 = !DILocation(line: 394, column: 21, scope: !5561)
!5581 = !DILocation(line: 394, column: 30, scope: !5561)
!5582 = !DILocation(line: 394, column: 35, scope: !5561)
!5583 = !DILocation(line: 396, column: 13, scope: !5561)
!5584 = !DILocation(line: 396, column: 22, scope: !5561)
!5585 = !DILocation(line: 396, column: 5, scope: !5561)
!5586 = !DILocation(line: 398, column: 9, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5561, file: !40, line: 396, column: 49)
!5588 = !DILocation(line: 398, column: 14, scope: !5587)
!5589 = !DILocation(line: 398, column: 19, scope: !5587)
!5590 = !DILocation(line: 398, column: 25, scope: !5587)
!5591 = !DILocation(line: 398, column: 28, scope: !5587)
!5592 = !DILocation(line: 398, column: 38, scope: !5587)
!5593 = !DILocation(line: 398, column: 49, scope: !5587)
!5594 = !DILocation(line: 399, column: 9, scope: !5587)
!5595 = !DILocation(line: 401, column: 9, scope: !5587)
!5596 = !DILocation(line: 401, column: 14, scope: !5587)
!5597 = !DILocation(line: 401, column: 19, scope: !5587)
!5598 = !DILocation(line: 401, column: 25, scope: !5587)
!5599 = !DILocation(line: 401, column: 28, scope: !5587)
!5600 = !DILocation(line: 401, column: 35, scope: !5587)
!5601 = !DILocation(line: 401, column: 49, scope: !5587)
!5602 = !DILocation(line: 402, column: 9, scope: !5587)
!5603 = !DILocation(line: 402, column: 14, scope: !5587)
!5604 = !DILocation(line: 402, column: 19, scope: !5587)
!5605 = !DILocation(line: 402, column: 25, scope: !5587)
!5606 = !DILocation(line: 402, column: 28, scope: !5587)
!5607 = !DILocation(line: 402, column: 35, scope: !5587)
!5608 = !DILocation(line: 402, column: 49, scope: !5587)
!5609 = !DILocation(line: 403, column: 51, scope: !5587)
!5610 = !DILocation(line: 403, column: 9, scope: !5587)
!5611 = !DILocation(line: 403, column: 14, scope: !5587)
!5612 = !DILocation(line: 403, column: 19, scope: !5587)
!5613 = !DILocation(line: 403, column: 25, scope: !5587)
!5614 = !DILocation(line: 403, column: 28, scope: !5587)
!5615 = !DILocation(line: 403, column: 35, scope: !5587)
!5616 = !DILocation(line: 403, column: 49, scope: !5587)
!5617 = !DILocation(line: 404, column: 9, scope: !5587)
!5618 = !DILocation(line: 404, column: 14, scope: !5587)
!5619 = !DILocation(line: 404, column: 19, scope: !5587)
!5620 = !DILocation(line: 404, column: 25, scope: !5587)
!5621 = !DILocation(line: 404, column: 28, scope: !5587)
!5622 = !DILocation(line: 404, column: 35, scope: !5587)
!5623 = !DILocation(line: 404, column: 49, scope: !5587)
!5624 = !DILocation(line: 405, column: 9, scope: !5587)
!5625 = !DILocation(line: 407, column: 39, scope: !5587)
!5626 = !DILocation(line: 407, column: 21, scope: !5587)
!5627 = !DILocation(line: 407, column: 19, scope: !5587)
!5628 = !DILocation(line: 408, column: 21, scope: !5587)
!5629 = !DILocation(line: 408, column: 29, scope: !5587)
!5630 = !DILocation(line: 408, column: 33, scope: !5587)
!5631 = !DILocation(line: 408, column: 44, scope: !5587)
!5632 = !DILocation(line: 408, column: 52, scope: !5587)
!5633 = !DILocation(line: 408, column: 61, scope: !5587)
!5634 = !DILocation(line: 408, column: 66, scope: !5587)
!5635 = !DILocation(line: 408, column: 71, scope: !5587)
!5636 = !DILocation(line: 409, column: 44, scope: !5587)
!5637 = !DILocation(line: 408, column: 19, scope: !5587)
!5638 = !DILocation(line: 410, column: 47, scope: !5587)
!5639 = !DILocation(line: 410, column: 9, scope: !5587)
!5640 = !DILocation(line: 410, column: 14, scope: !5587)
!5641 = !DILocation(line: 410, column: 19, scope: !5587)
!5642 = !DILocation(line: 410, column: 25, scope: !5587)
!5643 = !DILocation(line: 410, column: 28, scope: !5587)
!5644 = !DILocation(line: 410, column: 39, scope: !5587)
!5645 = !DILocation(line: 410, column: 45, scope: !5587)
!5646 = !DILocation(line: 411, column: 9, scope: !5587)
!5647 = !DILocation(line: 413, column: 9, scope: !5587)
!5648 = !DILocation(line: 415, column: 1, scope: !5561)
!5649 = distinct !DISubprogram(name: "ucp_request_send_state_reset", scope: !40, file: !40, line: 418, type: !5650, scopeLine: 420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5652)
!5650 = !DISubroutineType(types: !5651)
!5651 = !{null, !355, !1174, !139}
!5652 = !{!5653, !5654, !5655}
!5653 = !DILocalVariable(name: "req", arg: 1, scope: !5649, file: !40, line: 418, type: !355)
!5654 = !DILocalVariable(name: "comp_cb", arg: 2, scope: !5649, file: !40, line: 419, type: !1174)
!5655 = !DILocalVariable(name: "proto", arg: 3, scope: !5649, file: !40, line: 419, type: !139)
!5656 = !DILocation(line: 418, column: 45, scope: !5649)
!5657 = !DILocation(line: 419, column: 56, scope: !5649)
!5658 = !DILocation(line: 419, column: 74, scope: !5649)
!5659 = !DILocation(line: 421, column: 13, scope: !5649)
!5660 = !DILocation(line: 421, column: 5, scope: !5649)
!5661 = !DILocation(line: 421, column: 20, scope: !5649)
!5662 = !DILocation(line: 428, column: 9, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5649, file: !40, line: 421, column: 20)
!5664 = !DILocation(line: 428, column: 14, scope: !5663)
!5665 = !DILocation(line: 428, column: 19, scope: !5663)
!5666 = !DILocation(line: 428, column: 25, scope: !5663)
!5667 = !DILocation(line: 428, column: 34, scope: !5663)
!5668 = !DILocation(line: 428, column: 41, scope: !5663)
!5669 = !DILocation(line: 429, column: 9, scope: !5663)
!5670 = !DILocation(line: 429, column: 14, scope: !5663)
!5671 = !DILocation(line: 429, column: 19, scope: !5663)
!5672 = !DILocation(line: 429, column: 25, scope: !5663)
!5673 = !DILocation(line: 429, column: 34, scope: !5663)
!5674 = !DILocation(line: 429, column: 41, scope: !5663)
!5675 = !DILocation(line: 434, column: 41, scope: !5663)
!5676 = !DILocation(line: 434, column: 9, scope: !5663)
!5677 = !DILocation(line: 434, column: 14, scope: !5663)
!5678 = !DILocation(line: 434, column: 19, scope: !5663)
!5679 = !DILocation(line: 434, column: 25, scope: !5663)
!5680 = !DILocation(line: 434, column: 34, scope: !5663)
!5681 = !DILocation(line: 434, column: 39, scope: !5663)
!5682 = !DILocation(line: 435, column: 9, scope: !5663)
!5683 = !DILocation(line: 435, column: 14, scope: !5663)
!5684 = !DILocation(line: 435, column: 19, scope: !5663)
!5685 = !DILocation(line: 435, column: 25, scope: !5663)
!5686 = !DILocation(line: 435, column: 28, scope: !5663)
!5687 = !DILocation(line: 435, column: 39, scope: !5663)
!5688 = !DILocation(line: 437, column: 13, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5663, file: !40, line: 437, column: 13)
!5690 = !DILocation(line: 437, column: 19, scope: !5689)
!5691 = !DILocation(line: 437, column: 13, scope: !5663)
!5692 = !DILocation(line: 442, column: 9, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5689, file: !40, line: 437, column: 55)
!5694 = !DILocation(line: 443, column: 9, scope: !5663)
!5695 = !DILocation(line: 445, column: 9, scope: !5663)
!5696 = !DILocation(line: 447, column: 1, scope: !5649)
!5697 = distinct !DISubprogram(name: "ucp_rma_request_bcopy_completion", scope: !14, file: !14, line: 100, type: !1176, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5698)
!5698 = !{!5699, !5700}
!5699 = !DILocalVariable(name: "self", arg: 1, scope: !5697, file: !14, line: 100, type: !1169)
!5700 = !DILocalVariable(name: "req", scope: !5697, file: !14, line: 102, type: !355)
!5701 = !DILocation(line: 100, column: 64, scope: !5697)
!5702 = !DILocation(line: 102, column: 5, scope: !5697)
!5703 = !DILocation(line: 102, column: 20, scope: !5697)
!5704 = !DILocation(line: 102, column: 26, scope: !5697)
!5705 = !DILocation(line: 105, column: 9, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5697, file: !14, line: 105, column: 9)
!5707 = !DILocation(line: 105, column: 9, scope: !5697)
!5708 = !DILocation(line: 106, column: 37, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5706, file: !14, line: 105, column: 68)
!5710 = !DILocation(line: 106, column: 9, scope: !5709)
!5711 = !DILocation(line: 107, column: 35, scope: !5709)
!5712 = !DILocation(line: 107, column: 40, scope: !5709)
!5713 = !DILocation(line: 107, column: 46, scope: !5709)
!5714 = !{!5715, !2818, i64 12}
!5715 = !{!"uct_completion", !2817, i64 0, !2822, i64 8, !2818, i64 12}
!5716 = !DILocation(line: 107, column: 9, scope: !5709)
!5717 = !DILocation(line: 108, column: 5, scope: !5709)
!5718 = !DILocation(line: 109, column: 1, scope: !5697)
!5719 = distinct !DISubprogram(name: "ucp_rma_request_zcopy_completion", scope: !14, file: !14, line: 111, type: !1176, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5720)
!5720 = !{!5721, !5722}
!5721 = !DILocalVariable(name: "self", arg: 1, scope: !5719, file: !14, line: 111, type: !1169)
!5722 = !DILocalVariable(name: "req", scope: !5719, file: !14, line: 113, type: !355)
!5723 = !DILocation(line: 111, column: 64, scope: !5719)
!5724 = !DILocation(line: 113, column: 5, scope: !5719)
!5725 = !DILocation(line: 113, column: 20, scope: !5719)
!5726 = !DILocation(line: 113, column: 26, scope: !5719)
!5727 = !DILocation(line: 116, column: 9, scope: !5728)
!5728 = distinct !DILexicalBlock(scope: !5719, file: !14, line: 116, column: 9)
!5729 = !DILocation(line: 116, column: 9, scope: !5719)
!5730 = !DILocation(line: 117, column: 37, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5728, file: !14, line: 116, column: 68)
!5732 = !DILocation(line: 117, column: 9, scope: !5731)
!5733 = !DILocation(line: 118, column: 39, scope: !5731)
!5734 = !DILocation(line: 118, column: 9, scope: !5731)
!5735 = !DILocation(line: 119, column: 35, scope: !5731)
!5736 = !DILocation(line: 119, column: 40, scope: !5731)
!5737 = !DILocation(line: 119, column: 46, scope: !5731)
!5738 = !DILocation(line: 119, column: 9, scope: !5731)
!5739 = !DILocation(line: 120, column: 5, scope: !5731)
!5740 = !DILocation(line: 121, column: 1, scope: !5719)
!5741 = distinct !DISubprogram(name: "ucp_send_request_set_user_memh", scope: !40, file: !40, line: 659, type: !5742, scopeLine: 661, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5744)
!5742 = !DISubroutineType(types: !5743)
!5743 = !{!345, !355, !588, !3089}
!5744 = !{!5745, !5746, !5747, !5748}
!5745 = !DILocalVariable(name: "req", arg: 1, scope: !5741, file: !40, line: 659, type: !355)
!5746 = !DILocalVariable(name: "md_map", arg: 2, scope: !5741, file: !40, line: 659, type: !588)
!5747 = !DILocalVariable(name: "param", arg: 3, scope: !5741, file: !40, line: 660, type: !3089)
!5748 = !DILocalVariable(name: "status", scope: !5741, file: !40, line: 662, type: !345)
!5749 = !DILocation(line: 659, column: 47, scope: !5741)
!5750 = !DILocation(line: 659, column: 65, scope: !5741)
!5751 = !DILocation(line: 660, column: 59, scope: !5741)
!5752 = !DILocation(line: 662, column: 5, scope: !5741)
!5753 = !DILocation(line: 662, column: 18, scope: !5741)
!5754 = !DILocation(line: 664, column: 41, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5741, file: !40, line: 664, column: 9)
!5756 = !DILocation(line: 664, column: 46, scope: !5755)
!5757 = !DILocation(line: 664, column: 53, scope: !5755)
!5758 = !DILocation(line: 664, column: 58, scope: !5755)
!5759 = !DILocation(line: 664, column: 63, scope: !5755)
!5760 = !DILocation(line: 665, column: 41, scope: !5755)
!5761 = !DILocation(line: 665, column: 46, scope: !5755)
!5762 = !DILocation(line: 665, column: 51, scope: !5755)
!5763 = !DILocation(line: 665, column: 59, scope: !5755)
!5764 = !DILocation(line: 665, column: 64, scope: !5755)
!5765 = !DILocation(line: 665, column: 69, scope: !5755)
!5766 = !DILocation(line: 666, column: 60, scope: !5755)
!5767 = !DILocation(line: 666, column: 65, scope: !5755)
!5768 = !DILocation(line: 666, column: 70, scope: !5755)
!5769 = !DILocation(line: 666, column: 41, scope: !5755)
!5770 = !DILocation(line: 664, column: 10, scope: !5755)
!5771 = !DILocation(line: 664, column: 9, scope: !5741)
!5772 = !DILocation(line: 668, column: 16, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5755, file: !40, line: 667, column: 51)
!5774 = !DILocation(line: 668, column: 9, scope: !5773)
!5775 = !DILocation(line: 675, column: 39, scope: !5741)
!5776 = !DILocation(line: 675, column: 44, scope: !5741)
!5777 = !DILocation(line: 675, column: 52, scope: !5741)
!5778 = !DILocation(line: 675, column: 59, scope: !5741)
!5779 = !{!3190, !2817, i64 64}
!5780 = !DILocation(line: 676, column: 40, scope: !5741)
!5781 = !DILocation(line: 676, column: 45, scope: !5741)
!5782 = !DILocation(line: 676, column: 50, scope: !5741)
!5783 = !DILocation(line: 676, column: 56, scope: !5741)
!5784 = !DILocation(line: 676, column: 59, scope: !5741)
!5785 = !DILocation(line: 675, column: 5, scope: !5741)
!5786 = !DILocation(line: 677, column: 5, scope: !5741)
!5787 = !DILocation(line: 678, column: 1, scope: !5741)
!5788 = distinct !DISubprogram(name: "ucp_request_send_buffer_reg_lane", scope: !40, file: !40, line: 540, type: !5789, scopeLine: 542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5791)
!5789 = !DISubroutineType(types: !5790)
!5790 = !{!345, !355, !1913, !139}
!5791 = !{!5792, !5793, !5794}
!5792 = !DILocalVariable(name: "req", arg: 1, scope: !5788, file: !40, line: 540, type: !355)
!5793 = !DILocalVariable(name: "lane", arg: 2, scope: !5788, file: !40, line: 540, type: !1913)
!5794 = !DILocalVariable(name: "uct_flags", arg: 3, scope: !5788, file: !40, line: 541, type: !139)
!5795 = !DILocation(line: 540, column: 49, scope: !5788)
!5796 = !DILocation(line: 540, column: 71, scope: !5788)
!5797 = !DILocation(line: 541, column: 43, scope: !5788)
!5798 = !DILocation(line: 543, column: 51, scope: !5788)
!5799 = !DILocation(line: 543, column: 56, scope: !5788)
!5800 = !DILocation(line: 543, column: 65, scope: !5788)
!5801 = !DILocation(line: 543, column: 12, scope: !5788)
!5802 = !DILocation(line: 543, column: 5, scope: !5788)
!5803 = distinct !DISubprogram(name: "ucp_send_request_id_release", scope: !40, file: !40, line: 1029, type: !2185, scopeLine: 1030, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5804)
!5804 = !{!5805, !5806, !5807}
!5805 = !DILocalVariable(name: "req", arg: 1, scope: !5803, file: !40, line: 1029, type: !355)
!5806 = !DILocalVariable(name: "ep", scope: !5803, file: !40, line: 1031, type: !378)
!5807 = !DILocalVariable(name: "status", scope: !5803, file: !40, line: 1032, type: !345)
!5808 = !DILocation(line: 1029, column: 76, scope: !5803)
!5809 = !DILocation(line: 1031, column: 5, scope: !5803)
!5810 = !DILocation(line: 1031, column: 14, scope: !5803)
!5811 = !DILocation(line: 1032, column: 5, scope: !5803)
!5812 = !DILocation(line: 1032, column: 31, scope: !5803)
!5813 = !DILocation(line: 1036, column: 10, scope: !5803)
!5814 = !DILocation(line: 1036, column: 15, scope: !5803)
!5815 = !DILocation(line: 1036, column: 20, scope: !5803)
!5816 = !DILocation(line: 1036, column: 8, scope: !5803)
!5817 = !DILocation(line: 1038, column: 14, scope: !5803)
!5818 = !DILocation(line: 1038, column: 12, scope: !5803)
!5819 = !DILocation(line: 1039, column: 38, scope: !5803)
!5820 = !DILocation(line: 1039, column: 56, scope: !5803)
!5821 = !DILocation(line: 1039, column: 60, scope: !5803)
!5822 = !DILocation(line: 1039, column: 5, scope: !5803)
!5823 = !DILocation(line: 1041, column: 9, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5803, file: !40, line: 1041, column: 9)
!5825 = !DILocation(line: 1041, column: 16, scope: !5824)
!5826 = !DILocation(line: 1041, column: 9, scope: !5803)
!5827 = !DILocation(line: 1042, column: 24, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5824, file: !40, line: 1041, column: 27)
!5829 = !DILocation(line: 1042, column: 28, scope: !5828)
!5830 = !{!3154, !2817, i64 56}
!5831 = !DILocation(line: 1042, column: 33, scope: !5828)
!5832 = !DILocation(line: 1042, column: 46, scope: !5828)
!5833 = !DILocation(line: 1042, column: 51, scope: !5828)
!5834 = !DILocation(line: 1042, column: 56, scope: !5828)
!5835 = !DILocation(line: 1042, column: 9, scope: !5828)
!5836 = !DILocation(line: 1043, column: 5, scope: !5828)
!5837 = !DILocation(line: 1045, column: 26, scope: !5803)
!5838 = !DILocation(line: 1045, column: 5, scope: !5803)
!5839 = !DILocation(line: 1046, column: 1, scope: !5803)
!5840 = distinct !DISubprogram(name: "ucp_request_complete_send", scope: !40, file: !40, line: 223, type: !2180, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5841)
!5841 = !{!5842, !5843, !5844}
!5842 = !DILocalVariable(name: "req", arg: 1, scope: !5840, file: !40, line: 223, type: !355)
!5843 = !DILocalVariable(name: "status", arg: 2, scope: !5840, file: !40, line: 223, type: !345)
!5844 = !DILocalVariable(name: "_flags", scope: !5845, file: !40, line: 234, type: !361)
!5845 = distinct !DILexicalBlock(scope: !5840, file: !40, line: 234, column: 5)
!5846 = !DILocation(line: 223, column: 42, scope: !5840)
!5847 = !DILocation(line: 223, column: 60, scope: !5840)
!5848 = !DILocation(line: 225, column: 5, scope: !5840)
!5849 = !DILocation(line: 225, column: 5, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5840, file: !40, line: 225, column: 5)
!5851 = !DILocation(line: 225, column: 5, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5850, file: !40, line: 225, column: 5)
!5853 = !DILocation(line: 234, column: 5, scope: !5845)
!5854 = !DILocation(line: 234, column: 5, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5845, file: !40, line: 234, column: 5)
!5856 = !DILocation(line: 234, column: 5, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5855, file: !40, line: 234, column: 5)
!5858 = !DILocation(line: 234, column: 5, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5845, file: !40, line: 234, column: 5)
!5860 = !DILocation(line: 234, column: 5, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5859, file: !40, line: 234, column: 5)
!5862 = !DILocation(line: 234, column: 5, scope: !5840)
!5863 = !DILocation(line: 235, column: 1, scope: !5840)
!5864 = distinct !DISubprogram(name: "ucs_ptr_map_del_request", scope: !40, file: !40, line: 24, type: !5865, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5868)
!5865 = !DISubroutineType(types: !5866)
!5866 = !{!345, !5867, !364}
!5867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!5868 = !{!5869, !5870}
!5869 = !DILocalVariable(name: "map", arg: 1, scope: !5864, file: !40, line: 24, type: !5867)
!5870 = !DILocalVariable(name: "key", arg: 2, scope: !5864, file: !40, line: 24, type: !364)
!5871 = !DILocation(line: 24, column: 1, scope: !5864)
!5872 = distinct !DISubprogram(name: "ucp_request_ptr_map_status_check", scope: !40, file: !40, line: 996, type: !5873, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5875)
!5873 = !DISubroutineType(types: !5874)
!5874 = !{null, !345, !1106, !378, !339}
!5875 = !{!5876, !5877, !5878, !5879}
!5876 = !DILocalVariable(name: "status", arg: 1, scope: !5872, file: !40, line: 996, type: !345)
!5877 = !DILocalVariable(name: "action_str", arg: 2, scope: !5872, file: !40, line: 996, type: !1106)
!5878 = !DILocalVariable(name: "ep", arg: 3, scope: !5872, file: !40, line: 997, type: !378)
!5879 = !DILocalVariable(name: "ptr", arg: 4, scope: !5872, file: !40, line: 997, type: !339)
!5880 = !DILocation(line: 996, column: 47, scope: !5872)
!5881 = !DILocation(line: 996, column: 67, scope: !5872)
!5882 = !DILocation(line: 997, column: 43, scope: !5872)
!5883 = !DILocation(line: 997, column: 53, scope: !5872)
!5884 = !DILocation(line: 1002, column: 1, scope: !5872)
!5885 = distinct !DISubprogram(name: "ucs_hlist_del", scope: !1092, file: !1092, line: 158, type: !5886, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5889)
!5886 = !DISubroutineType(types: !5887)
!5887 = !{null, !5888, !2342}
!5888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!5889 = !{!5890, !5891}
!5890 = !DILocalVariable(name: "head", arg: 1, scope: !5885, file: !1092, line: 158, type: !5888)
!5891 = !DILocalVariable(name: "elem", arg: 2, scope: !5885, file: !1092, line: 158, type: !2342)
!5892 = !DILocation(line: 158, column: 33, scope: !5885)
!5893 = !DILocation(line: 158, column: 57, scope: !5885)
!5894 = !DILocation(line: 160, column: 26, scope: !5885)
!5895 = !DILocation(line: 160, column: 32, scope: !5885)
!5896 = !DILocation(line: 160, column: 38, scope: !5885)
!5897 = !DILocation(line: 160, column: 46, scope: !5885)
!5898 = !DILocation(line: 160, column: 52, scope: !5885)
!5899 = !{!5900, !2817, i64 0}
!5900 = !{!"ucs_hlist_head", !2817, i64 0}
!5901 = !DILocation(line: 160, column: 43, scope: !5885)
!5902 = !DILocation(line: 160, column: 5, scope: !5885)
!5903 = !DILocation(line: 161, column: 1, scope: !5885)
!5904 = distinct !DISubprogram(name: "ucs_ptr_map_del", scope: !5905, file: !5905, line: 124, type: !5906, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5910)
!5905 = !DIFile(filename: "ucs/datastruct/ptr_map.inl", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "1c921e0f337b460c566528da0f1b56f5")
!5906 = !DISubroutineType(types: !5907)
!5907 = !{!345, !5908, !364, !420, !5909}
!5908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!5909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!5910 = !{!5911, !5912, !5913, !5914, !5915}
!5911 = !DILocalVariable(name: "map", arg: 1, scope: !5904, file: !5905, line: 124, type: !5908)
!5912 = !DILocalVariable(name: "key", arg: 2, scope: !5904, file: !5905, line: 124, type: !364)
!5913 = !DILocalVariable(name: "is_put_thread_safe", arg: 3, scope: !5904, file: !5905, line: 125, type: !420)
!5914 = !DILocalVariable(name: "safe_hash", arg: 4, scope: !5904, file: !5905, line: 125, type: !5909)
!5915 = !DILocalVariable(name: "dummy", scope: !5904, file: !5905, line: 127, type: !339)
!5916 = !DILocation(line: 124, column: 32, scope: !5904)
!5917 = !DILocation(line: 124, column: 55, scope: !5904)
!5918 = !DILocation(line: 125, column: 21, scope: !5904)
!5919 = !DILocation(line: 125, column: 62, scope: !5904)
!5920 = !DILocation(line: 127, column: 5, scope: !5904)
!5921 = !DILocation(line: 127, column: 24, scope: !5904)
!5922 = !DILocation(line: 128, column: 28, scope: !5904)
!5923 = !DILocation(line: 128, column: 33, scope: !5904)
!5924 = !DILocation(line: 128, column: 49, scope: !5904)
!5925 = !DILocation(line: 128, column: 69, scope: !5904)
!5926 = !DILocation(line: 128, column: 12, scope: !5904)
!5927 = !DILocation(line: 129, column: 1, scope: !5904)
!5928 = !DILocation(line: 128, column: 5, scope: !5904)
!5929 = distinct !DISubprogram(name: "ucs_ptr_map_get", scope: !5905, file: !5905, line: 100, type: !5930, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5932)
!5930 = !DISubroutineType(types: !5931)
!5931 = !{!345, !5908, !364, !420, !338, !420, !5909}
!5932 = !{!5933, !5934, !5935, !5936, !5937, !5938, !5939}
!5933 = !DILocalVariable(name: "map", arg: 1, scope: !5929, file: !5905, line: 100, type: !5908)
!5934 = !DILocalVariable(name: "key", arg: 2, scope: !5929, file: !5905, line: 100, type: !364)
!5935 = !DILocalVariable(name: "extract", arg: 3, scope: !5929, file: !5905, line: 100, type: !420)
!5936 = !DILocalVariable(name: "ptr_p", arg: 4, scope: !5929, file: !5905, line: 101, type: !338)
!5937 = !DILocalVariable(name: "is_put_thread_safe", arg: 5, scope: !5929, file: !5905, line: 101, type: !420)
!5938 = !DILocalVariable(name: "safe_hash", arg: 6, scope: !5929, file: !5905, line: 102, type: !5909)
!5939 = !DILocalVariable(name: "status", scope: !5929, file: !5905, line: 104, type: !345)
!5940 = !DILocation(line: 100, column: 32, scope: !5929)
!5941 = !DILocation(line: 100, column: 55, scope: !5929)
!5942 = !DILocation(line: 100, column: 64, scope: !5929)
!5943 = !DILocation(line: 101, column: 24, scope: !5929)
!5944 = !DILocation(line: 101, column: 35, scope: !5929)
!5945 = !DILocation(line: 102, column: 38, scope: !5929)
!5946 = !DILocation(line: 104, column: 5, scope: !5929)
!5947 = !DILocation(line: 104, column: 18, scope: !5929)
!5948 = !DILocation(line: 106, column: 9, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5929, file: !5905, line: 106, column: 9)
!5950 = !DILocation(line: 106, column: 9, scope: !5929)
!5951 = !DILocation(line: 107, column: 25, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5949, file: !5905, line: 106, column: 53)
!5953 = !DILocation(line: 107, column: 18, scope: !5952)
!5954 = !DILocation(line: 107, column: 10, scope: !5952)
!5955 = !DILocation(line: 107, column: 16, scope: !5952)
!5956 = !DILocation(line: 108, column: 9, scope: !5952)
!5957 = !DILocation(line: 111, column: 32, scope: !5929)
!5958 = !DILocation(line: 111, column: 37, scope: !5929)
!5959 = !DILocation(line: 111, column: 43, scope: !5929)
!5960 = !DILocation(line: 111, column: 48, scope: !5929)
!5961 = !DILocation(line: 111, column: 57, scope: !5929)
!5962 = !DILocation(line: 111, column: 14, scope: !5929)
!5963 = !DILocation(line: 111, column: 12, scope: !5929)
!5964 = !DILocation(line: 112, column: 9, scope: !5965)
!5965 = distinct !DILexicalBlock(scope: !5929, file: !5905, line: 112, column: 9)
!5966 = !DILocation(line: 112, column: 9, scope: !5929)
!5967 = !DILocation(line: 113, column: 16, scope: !5968)
!5968 = distinct !DILexicalBlock(scope: !5965, file: !5905, line: 112, column: 48)
!5969 = !DILocation(line: 113, column: 9, scope: !5968)
!5970 = !DILocation(line: 116, column: 9, scope: !5971)
!5971 = distinct !DILexicalBlock(scope: !5929, file: !5905, line: 116, column: 9)
!5972 = !DILocation(line: 116, column: 9, scope: !5929)
!5973 = !DILocation(line: 117, column: 40, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5971, file: !5905, line: 116, column: 29)
!5975 = !DILocation(line: 117, column: 45, scope: !5974)
!5976 = !DILocation(line: 117, column: 50, scope: !5974)
!5977 = !DILocation(line: 117, column: 59, scope: !5974)
!5978 = !DILocation(line: 117, column: 66, scope: !5974)
!5979 = !DILocation(line: 117, column: 18, scope: !5974)
!5980 = !DILocation(line: 117, column: 16, scope: !5974)
!5981 = !DILocation(line: 118, column: 5, scope: !5974)
!5982 = !DILocation(line: 120, column: 12, scope: !5929)
!5983 = !DILocation(line: 120, column: 5, scope: !5929)
!5984 = !DILocation(line: 121, column: 1, scope: !5929)
!5985 = distinct !DISubprogram(name: "ucs_ptr_hash_get", scope: !5905, file: !5905, line: 61, type: !5986, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !5989)
!5986 = !DISubroutineType(types: !5987)
!5987 = !{!345, !5988, !364, !420, !338}
!5988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!5989 = !{!5990, !5991, !5992, !5993, !5994}
!5990 = !DILocalVariable(name: "hash", arg: 1, scope: !5985, file: !5905, line: 61, type: !5988)
!5991 = !DILocalVariable(name: "key", arg: 2, scope: !5985, file: !5905, line: 61, type: !364)
!5992 = !DILocalVariable(name: "extract", arg: 3, scope: !5985, file: !5905, line: 61, type: !420)
!5993 = !DILocalVariable(name: "ptr_p", arg: 4, scope: !5985, file: !5905, line: 62, type: !338)
!5994 = !DILocalVariable(name: "iter", scope: !5985, file: !5905, line: 64, type: !5003)
!5995 = !DILocation(line: 61, column: 34, scope: !5985)
!5996 = !DILocation(line: 61, column: 58, scope: !5985)
!5997 = !DILocation(line: 61, column: 67, scope: !5985)
!5998 = !DILocation(line: 62, column: 25, scope: !5985)
!5999 = !DILocation(line: 64, column: 5, scope: !5985)
!6000 = !DILocation(line: 64, column: 14, scope: !5985)
!6001 = !DILocation(line: 66, column: 12, scope: !5985)
!6002 = !DILocation(line: 66, column: 10, scope: !5985)
!6003 = !DILocation(line: 67, column: 9, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5985, file: !5905, line: 67, column: 9)
!6005 = !{!3222, !2822, i64 0}
!6006 = !DILocation(line: 67, column: 9, scope: !5985)
!6007 = !DILocation(line: 68, column: 10, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !6004, file: !5905, line: 67, column: 45)
!6009 = !DILocation(line: 68, column: 16, scope: !6008)
!6010 = !DILocation(line: 69, column: 9, scope: !6008)
!6011 = !DILocation(line: 72, column: 14, scope: !5985)
!6012 = !{!3222, !2817, i64 32}
!6013 = !DILocation(line: 72, column: 6, scope: !5985)
!6014 = !DILocation(line: 72, column: 12, scope: !5985)
!6015 = !DILocation(line: 73, column: 9, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !5985, file: !5905, line: 73, column: 9)
!6017 = !DILocation(line: 73, column: 9, scope: !5985)
!6018 = !DILocation(line: 74, column: 9, scope: !6019)
!6019 = distinct !DILexicalBlock(scope: !6016, file: !5905, line: 73, column: 18)
!6020 = !DILocation(line: 75, column: 5, scope: !6019)
!6021 = !DILocation(line: 76, column: 5, scope: !5985)
!6022 = !DILocation(line: 77, column: 1, scope: !5985)
!6023 = !DISubprogram(name: "ucs_ptr_safe_hash_get", scope: !365, file: !365, line: 95, type: !6024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6024 = !DISubroutineType(types: !6025)
!6025 = !{!345, !5908, !364, !420, !338, !5909}
!6026 = distinct !DISubprogram(name: "kh_get_ucs_ptr_map_impl", scope: !5905, file: !5905, line: 33, type: !6027, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !6031)
!6027 = !DISubroutineType(types: !6028)
!6028 = !{!1057, !6029, !364}
!6029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6030, size: 64)
!6030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1870)
!6031 = !{!6032, !6033, !6034, !6037, !6038, !6039, !6040}
!6032 = !DILocalVariable(name: "h", arg: 1, scope: !6026, file: !5905, line: 33, type: !6029)
!6033 = !DILocalVariable(name: "key", arg: 2, scope: !6026, file: !5905, line: 33, type: !364)
!6034 = !DILocalVariable(name: "k", scope: !6035, file: !5905, line: 33, type: !1057)
!6035 = distinct !DILexicalBlock(scope: !6036, file: !5905, line: 33, column: 1)
!6036 = distinct !DILexicalBlock(scope: !6026, file: !5905, line: 33, column: 1)
!6037 = !DILocalVariable(name: "i", scope: !6035, file: !5905, line: 33, type: !1057)
!6038 = !DILocalVariable(name: "last", scope: !6035, file: !5905, line: 33, type: !1057)
!6039 = !DILocalVariable(name: "mask", scope: !6035, file: !5905, line: 33, type: !1057)
!6040 = !DILocalVariable(name: "step", scope: !6035, file: !5905, line: 33, type: !1057)
!6041 = !DILocation(line: 33, column: 1, scope: !6026)
!6042 = !DILocation(line: 33, column: 1, scope: !6036)
!6043 = !DILocation(line: 33, column: 1, scope: !6035)
!6044 = !{!3222, !2817, i64 16}
!6045 = !{!3222, !2817, i64 24}
!6046 = !DILocation(line: 0, scope: !6035)
!6047 = !DILocation(line: 33, column: 1, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6035, file: !5905, line: 33, column: 1)
!6049 = !DILocation(line: 33, column: 1, scope: !6050)
!6050 = distinct !DILexicalBlock(scope: !6048, file: !5905, line: 33, column: 1)
!6051 = distinct !{!6051, !6043, !6043, !4186}
!6052 = distinct !DISubprogram(name: "kh_del_ucs_ptr_map_impl", scope: !5905, file: !5905, line: 33, type: !6053, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !6056)
!6053 = !DISubroutineType(types: !6054)
!6054 = !{null, !6055, !1057}
!6055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!6056 = !{!6057, !6058}
!6057 = !DILocalVariable(name: "h", arg: 1, scope: !6052, file: !5905, line: 33, type: !6055)
!6058 = !DILocalVariable(name: "x", arg: 2, scope: !6052, file: !5905, line: 33, type: !1057)
!6059 = !DILocation(line: 33, column: 1, scope: !6052)
!6060 = !DILocation(line: 33, column: 1, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !6052, file: !5905, line: 33, column: 1)
!6062 = !DILocation(line: 33, column: 1, scope: !6063)
!6063 = distinct !DILexicalBlock(scope: !6061, file: !5905, line: 33, column: 1)
!6064 = !{!3222, !2822, i64 4}
!6065 = distinct !DISubprogram(name: "ucs_hlist_del_common", scope: !1092, file: !1092, line: 130, type: !6066, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !6068)
!6066 = !DISubroutineType(types: !6067)
!6067 = !{null, !5888, !2342, !420}
!6068 = !{!6069, !6070, !6071}
!6069 = !DILocalVariable(name: "head", arg: 1, scope: !6065, file: !1092, line: 130, type: !5888)
!6070 = !DILocalVariable(name: "elem", arg: 2, scope: !6065, file: !1092, line: 130, type: !2342)
!6071 = !DILocalVariable(name: "is_head", arg: 3, scope: !6065, file: !1092, line: 131, type: !420)
!6072 = !DILocation(line: 130, column: 40, scope: !6065)
!6073 = !DILocation(line: 130, column: 64, scope: !6065)
!6074 = !DILocation(line: 131, column: 26, scope: !6065)
!6075 = !DILocation(line: 133, column: 28, scope: !6076)
!6076 = distinct !DILexicalBlock(scope: !6065, file: !1092, line: 133, column: 9)
!6077 = !DILocation(line: 133, column: 34, scope: !6076)
!6078 = !DILocation(line: 133, column: 9, scope: !6076)
!6079 = !DILocation(line: 133, column: 9, scope: !6065)
!6080 = !DILocation(line: 137, column: 9, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6076, file: !1092, line: 133, column: 41)
!6082 = !DILocation(line: 137, column: 15, scope: !6081)
!6083 = !DILocation(line: 137, column: 19, scope: !6081)
!6084 = !DILocation(line: 138, column: 5, scope: !6081)
!6085 = !DILocation(line: 139, column: 13, scope: !6086)
!6086 = distinct !DILexicalBlock(scope: !6087, file: !1092, line: 139, column: 13)
!6087 = distinct !DILexicalBlock(scope: !6076, file: !1092, line: 138, column: 12)
!6088 = !DILocation(line: 139, column: 13, scope: !6087)
!6089 = !DILocation(line: 141, column: 25, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !6086, file: !1092, line: 139, column: 22)
!6091 = !{!6092, !2817, i64 8}
!6092 = !{!"ucs_hlist_link", !3203, i64 0}
!6093 = !DILocation(line: 141, column: 13, scope: !6090)
!6094 = !DILocation(line: 141, column: 19, scope: !6090)
!6095 = !DILocation(line: 141, column: 23, scope: !6090)
!6096 = !DILocation(line: 142, column: 9, scope: !6090)
!6097 = !DILocation(line: 143, column: 23, scope: !6087)
!6098 = !DILocation(line: 143, column: 29, scope: !6087)
!6099 = !DILocation(line: 143, column: 9, scope: !6087)
!6100 = !DILocation(line: 145, column: 1, scope: !6065)
!6101 = distinct !DISubprogram(name: "ucs_list_is_empty", scope: !681, file: !681, line: 112, type: !6102, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !6104)
!6102 = !DISubroutineType(types: !6103)
!6103 = !{!420, !1742}
!6104 = !{!6105}
!6105 = !DILocalVariable(name: "head", arg: 1, scope: !6101, file: !681, line: 112, type: !1742)
!6106 = !DILocation(line: 112, column: 54, scope: !6101)
!6107 = !DILocation(line: 114, column: 12, scope: !6101)
!6108 = !DILocation(line: 114, column: 18, scope: !6101)
!6109 = !{!3203, !2817, i64 8}
!6110 = !DILocation(line: 114, column: 26, scope: !6101)
!6111 = !DILocation(line: 114, column: 23, scope: !6101)
!6112 = !DILocation(line: 114, column: 5, scope: !6101)
!6113 = distinct !DISubprogram(name: "ucs_list_del", scope: !681, file: !681, line: 103, type: !6114, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !6116)
!6114 = !DISubroutineType(types: !6115)
!6115 = !{null, !1742}
!6116 = !{!6117}
!6117 = !DILocalVariable(name: "elem", arg: 1, scope: !6113, file: !681, line: 103, type: !1742)
!6118 = !DILocation(line: 103, column: 50, scope: !6113)
!6119 = !DILocation(line: 105, column: 24, scope: !6113)
!6120 = !DILocation(line: 105, column: 30, scope: !6113)
!6121 = !DILocation(line: 105, column: 5, scope: !6113)
!6122 = !DILocation(line: 105, column: 11, scope: !6113)
!6123 = !{!3203, !2817, i64 0}
!6124 = !DILocation(line: 105, column: 17, scope: !6113)
!6125 = !DILocation(line: 105, column: 22, scope: !6113)
!6126 = !DILocation(line: 106, column: 24, scope: !6113)
!6127 = !DILocation(line: 106, column: 30, scope: !6113)
!6128 = !DILocation(line: 106, column: 5, scope: !6113)
!6129 = !DILocation(line: 106, column: 11, scope: !6113)
!6130 = !DILocation(line: 106, column: 17, scope: !6113)
!6131 = !DILocation(line: 106, column: 22, scope: !6113)
!6132 = !DILocation(line: 107, column: 1, scope: !6113)
!6133 = distinct !DISubprogram(name: "ucp_request_send_buffer_dereg", scope: !40, file: !40, line: 585, type: !2185, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !6134)
!6134 = !{!6135}
!6135 = !DILocalVariable(name: "req", arg: 1, scope: !6133, file: !40, line: 585, type: !355)
!6136 = !DILocation(line: 585, column: 78, scope: !6133)
!6137 = !DILocation(line: 587, column: 30, scope: !6133)
!6138 = !DILocation(line: 587, column: 35, scope: !6133)
!6139 = !DILocation(line: 587, column: 40, scope: !6133)
!6140 = !DILocation(line: 587, column: 44, scope: !6133)
!6141 = !DILocation(line: 587, column: 52, scope: !6133)
!6142 = !DILocation(line: 587, column: 61, scope: !6133)
!6143 = !DILocation(line: 587, column: 66, scope: !6133)
!6144 = !DILocation(line: 587, column: 71, scope: !6133)
!6145 = !DILocation(line: 588, column: 31, scope: !6133)
!6146 = !DILocation(line: 588, column: 36, scope: !6133)
!6147 = !DILocation(line: 588, column: 41, scope: !6133)
!6148 = !DILocation(line: 588, column: 47, scope: !6133)
!6149 = !DILocation(line: 588, column: 51, scope: !6133)
!6150 = !DILocation(line: 587, column: 5, scope: !6133)
!6151 = !DILocation(line: 589, column: 1, scope: !6133)
!6152 = !DISubprogram(name: "ucp_request_memory_dereg", scope: !238, file: !238, line: 523, type: !6153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6153 = !DISubroutineType(types: !6154)
!6154 = !{null, !6155, !350, !6157, !355}
!6155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6156, size: 64)
!6156 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucp_context_t", file: !501, line: 359, baseType: !500)
!6157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!6158 = distinct !DISubprogram(name: "ucp_request_is_user_memh_valid", scope: !40, file: !40, line: 625, type: !6159, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !6162)
!6159 = !DISubroutineType(types: !6160)
!6160 = !{!420, !355, !3089, !339, !551, !350, !918, !6161}
!6161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!6162 = !{!6163, !6164, !6165, !6166, !6167, !6168, !6169}
!6163 = !DILocalVariable(name: "req", arg: 1, scope: !6158, file: !40, line: 625, type: !355)
!6164 = !DILocalVariable(name: "param", arg: 2, scope: !6158, file: !40, line: 626, type: !3089)
!6165 = !DILocalVariable(name: "buffer", arg: 3, scope: !6158, file: !40, line: 626, type: !339)
!6166 = !DILocalVariable(name: "length", arg: 4, scope: !6158, file: !40, line: 627, type: !551)
!6167 = !DILocalVariable(name: "datatype", arg: 5, scope: !6158, file: !40, line: 627, type: !350)
!6168 = !DILocalVariable(name: "mem_type", arg: 6, scope: !6158, file: !40, line: 628, type: !918)
!6169 = !DILocalVariable(name: "status_p", arg: 7, scope: !6158, file: !40, line: 629, type: !6161)
!6170 = !DILocation(line: 625, column: 47, scope: !6158)
!6171 = !DILocation(line: 626, column: 59, scope: !6158)
!6172 = !DILocation(line: 626, column: 72, scope: !6158)
!6173 = !DILocation(line: 627, column: 39, scope: !6158)
!6174 = !DILocation(line: 627, column: 62, scope: !6158)
!6175 = !DILocation(line: 628, column: 50, scope: !6158)
!6176 = !DILocation(line: 629, column: 46, scope: !6158)
!6177 = !DILocation(line: 632, column: 11, scope: !6178)
!6178 = distinct !DILexicalBlock(scope: !6158, file: !40, line: 632, column: 9)
!6179 = !DILocation(line: 632, column: 18, scope: !6178)
!6180 = !DILocation(line: 632, column: 31, scope: !6178)
!6181 = !DILocation(line: 632, column: 57, scope: !6178)
!6182 = !DILocation(line: 633, column: 10, scope: !6178)
!6183 = !DILocation(line: 632, column: 9, scope: !6158)
!6184 = !DILocation(line: 634, column: 10, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6178, file: !40, line: 633, column: 38)
!6186 = !DILocation(line: 634, column: 19, scope: !6185)
!6187 = !DILocation(line: 635, column: 9, scope: !6185)
!6188 = !DILocation(line: 655, column: 5, scope: !6158)
!6189 = !DILocation(line: 656, column: 1, scope: !6158)
!6190 = distinct !DISubprogram(name: "ucp_request_init_dt_reg_from_memh", scope: !40, file: !40, line: 600, type: !6191, scopeLine: 602, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !6193)
!6191 = !DISubroutineType(types: !6192)
!6192 = !{null, !355, !588, !2413, !2502}
!6193 = !{!6194, !6195, !6196, !6197, !6198, !6199}
!6194 = !DILocalVariable(name: "req", arg: 1, scope: !6190, file: !40, line: 600, type: !355)
!6195 = !DILocalVariable(name: "md_map", arg: 2, scope: !6190, file: !40, line: 600, type: !588)
!6196 = !DILocalVariable(name: "memh", arg: 3, scope: !6190, file: !40, line: 601, type: !2413)
!6197 = !DILocalVariable(name: "dt_reg", arg: 4, scope: !6190, file: !40, line: 601, type: !2502)
!6198 = !DILocalVariable(name: "md_index", scope: !6190, file: !40, line: 603, type: !585)
!6199 = !DILocalVariable(name: "memh_index", scope: !6190, file: !40, line: 603, type: !585)
!6200 = !DILocation(line: 600, column: 50, scope: !6190)
!6201 = !DILocation(line: 600, column: 68, scope: !6190)
!6202 = !DILocation(line: 601, column: 45, scope: !6190)
!6203 = !DILocation(line: 601, column: 65, scope: !6190)
!6204 = !DILocation(line: 603, column: 5, scope: !6190)
!6205 = !DILocation(line: 603, column: 20, scope: !6190)
!6206 = !DILocation(line: 603, column: 30, scope: !6190)
!6207 = !DILocation(line: 609, column: 5, scope: !6190)
!6208 = !DILocation(line: 609, column: 10, scope: !6190)
!6209 = !DILocation(line: 609, column: 16, scope: !6190)
!6210 = !DILocation(line: 610, column: 17, scope: !6190)
!6211 = !DILocation(line: 611, column: 5, scope: !6212)
!6212 = distinct !DILexicalBlock(scope: !6190, file: !40, line: 611, column: 5)
!6213 = !{!6214, !2830, i64 104}
!6214 = !{!"ucp_mem", !6215, i64 0, !2817, i64 80, !2818, i64 88, !2818, i64 92, !2818, i64 96, !2830, i64 104, !2817, i64 112, !2818, i64 120}
!6215 = !{!"ucs_rcache_region", !6216, i64 0, !3203, i64 16, !3203, i64 32, !3203, i64 48, !2822, i64 64, !2818, i64 68, !2818, i64 69, !2818, i64 70, !2818, i64 71, !2818, i64 72}
!6216 = !{!"ucs_pgt_region", !2830, i64 0, !2830, i64 8}
!6217 = !DILocation(line: 611, column: 5, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6212, file: !40, line: 611, column: 5)
!6219 = !DILocation(line: 612, column: 13, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6221, file: !40, line: 612, column: 13)
!6221 = distinct !DILexicalBlock(scope: !6218, file: !40, line: 611, column: 46)
!6222 = !DILocation(line: 612, column: 22, scope: !6220)
!6223 = !DILocation(line: 612, column: 20, scope: !6220)
!6224 = !DILocation(line: 612, column: 13, scope: !6221)
!6225 = !DILocation(line: 613, column: 42, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6220, file: !40, line: 612, column: 41)
!6227 = !DILocation(line: 613, column: 48, scope: !6226)
!6228 = !DILocation(line: 613, column: 52, scope: !6226)
!6229 = !DILocation(line: 613, column: 13, scope: !6226)
!6230 = !DILocation(line: 613, column: 21, scope: !6226)
!6231 = !DILocation(line: 613, column: 36, scope: !6226)
!6232 = !DILocation(line: 613, column: 40, scope: !6226)
!6233 = !DILocation(line: 614, column: 42, scope: !6226)
!6234 = !DILocation(line: 614, column: 13, scope: !6226)
!6235 = !DILocation(line: 614, column: 21, scope: !6226)
!6236 = !DILocation(line: 614, column: 39, scope: !6226)
!6237 = !{!6238, !2830, i64 0}
!6238 = !{!"ucp_dt_reg", !2830, i64 0, !2818, i64 8}
!6239 = !DILocation(line: 615, column: 17, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6226, file: !40, line: 615, column: 17)
!6241 = !DILocation(line: 615, column: 28, scope: !6240)
!6242 = !DILocation(line: 615, column: 17, scope: !6226)
!6243 = !DILocation(line: 616, column: 17, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6240, file: !40, line: 615, column: 47)
!6245 = !DILocation(line: 618, column: 9, scope: !6226)
!6246 = !DILocation(line: 619, column: 5, scope: !6221)
!6247 = distinct !{!6247, !6211, !6248, !4186}
!6248 = !DILocation(line: 619, column: 5, scope: !6212)
!6249 = !DILocation(line: 620, column: 1, scope: !6190)
!6250 = distinct !DISubprogram(name: "ucs_ffs64", scope: !6251, file: !6251, line: 23, type: !6252, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !6254)
!6251 = !DIFile(filename: "ucs/arch/x86_64/bitops.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src", checksumkind: CSK_MD5, checksum: "0d1aab16c9a0d6a81cee8a4e1a72f601")
!6252 = !DISubroutineType(types: !6253)
!6253 = !{!139, !351}
!6254 = !{!6255, !6256}
!6255 = !DILocalVariable(name: "n", arg: 1, scope: !6250, file: !6251, line: 23, type: !351)
!6256 = !DILocalVariable(name: "result", scope: !6250, file: !6251, line: 25, type: !351)
!6257 = !DILocation(line: 23, column: 56, scope: !6250)
!6258 = !DILocation(line: 25, column: 5, scope: !6250)
!6259 = !DILocation(line: 25, column: 14, scope: !6250)
!6260 = !DILocation(line: 28, column: 16, scope: !6250)
!6261 = !DILocation(line: 26, column: 5, scope: !6250)
!6262 = !{i64 760095}
!6263 = !DILocation(line: 29, column: 12, scope: !6250)
!6264 = !DILocation(line: 30, column: 1, scope: !6250)
!6265 = !DILocation(line: 29, column: 5, scope: !6250)
!6266 = distinct !DISubprogram(name: "ucp_request_send_buffer_reg_lane_check", scope: !40, file: !40, line: 525, type: !6267, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !6269)
!6267 = !DISubroutineType(types: !6268)
!6268 = !{!345, !355, !1913, !588, !139}
!6269 = !{!6270, !6271, !6272, !6273, !6274}
!6270 = !DILocalVariable(name: "req", arg: 1, scope: !6266, file: !40, line: 525, type: !355)
!6271 = !DILocalVariable(name: "lane", arg: 2, scope: !6266, file: !40, line: 525, type: !1913)
!6272 = !DILocalVariable(name: "prev_md_map", arg: 3, scope: !6266, file: !40, line: 526, type: !588)
!6273 = !DILocalVariable(name: "uct_flags", arg: 4, scope: !6266, file: !40, line: 526, type: !139)
!6274 = !DILocalVariable(name: "md_map", scope: !6266, file: !40, line: 528, type: !588)
!6275 = !DILocation(line: 525, column: 55, scope: !6266)
!6276 = !DILocation(line: 525, column: 77, scope: !6266)
!6277 = !DILocation(line: 526, column: 53, scope: !6266)
!6278 = !DILocation(line: 526, column: 75, scope: !6266)
!6279 = !DILocation(line: 528, column: 5, scope: !6266)
!6280 = !DILocation(line: 528, column: 18, scope: !6266)
!6281 = !DILocation(line: 530, column: 26, scope: !6282)
!6282 = distinct !DILexicalBlock(scope: !6266, file: !40, line: 530, column: 9)
!6283 = !DILocation(line: 530, column: 31, scope: !6282)
!6284 = !DILocation(line: 530, column: 36, scope: !6282)
!6285 = !DILocation(line: 530, column: 40, scope: !6282)
!6286 = !DILocation(line: 530, column: 11, scope: !6282)
!6287 = !DILocation(line: 530, column: 47, scope: !6282)
!6288 = !{!6289, !2830, i64 24}
!6289 = !{!"", !2830, i64 0, !2830, i64 8, !2830, i64 16, !2830, i64 24, !2830, i64 32, !2830, i64 40, !2830, i64 48, !2830, i64 56, !2830, i64 64, !2830, i64 72, !2887, i64 80, !2818, i64 96, !2830, i64 112, !3202, i64 120, !2830, i64 248, !2818, i64 256}
!6290 = !DILocation(line: 530, column: 53, scope: !6282)
!6291 = !DILocation(line: 530, column: 9, scope: !6266)
!6292 = !DILocation(line: 531, column: 9, scope: !6293)
!6293 = distinct !DILexicalBlock(scope: !6282, file: !40, line: 530, column: 79)
!6294 = !DILocation(line: 535, column: 14, scope: !6266)
!6295 = !DILocation(line: 535, column: 61, scope: !6266)
!6296 = !DILocation(line: 535, column: 59, scope: !6266)
!6297 = !DILocation(line: 535, column: 12, scope: !6266)
!6298 = !DILocation(line: 536, column: 40, scope: !6266)
!6299 = !DILocation(line: 536, column: 45, scope: !6266)
!6300 = !DILocation(line: 536, column: 53, scope: !6266)
!6301 = !DILocation(line: 536, column: 12, scope: !6266)
!6302 = !DILocation(line: 536, column: 5, scope: !6266)
!6303 = !DILocation(line: 537, column: 1, scope: !6266)
!6304 = distinct !DISubprogram(name: "ucp_ep_md_attr", scope: !3746, file: !3746, line: 157, type: !6305, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !6309)
!6305 = !DISubroutineType(types: !6306)
!6306 = !{!6307, !378, !1913}
!6307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6308, size: 64)
!6308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!6309 = !{!6310, !6311, !6312}
!6310 = !DILocalVariable(name: "ep", arg: 1, scope: !6304, file: !3746, line: 157, type: !378)
!6311 = !DILocalVariable(name: "lane", arg: 2, scope: !6304, file: !3746, line: 157, type: !1913)
!6312 = !DILocalVariable(name: "context", scope: !6304, file: !3746, line: 159, type: !498)
!6313 = !DILocation(line: 157, column: 63, scope: !6304)
!6314 = !DILocation(line: 157, column: 84, scope: !6304)
!6315 = !DILocation(line: 159, column: 5, scope: !6304)
!6316 = !DILocation(line: 159, column: 19, scope: !6304)
!6317 = !DILocation(line: 159, column: 29, scope: !6304)
!6318 = !DILocation(line: 159, column: 33, scope: !6304)
!6319 = !DILocation(line: 159, column: 41, scope: !6304)
!6320 = !DILocation(line: 160, column: 13, scope: !6304)
!6321 = !DILocation(line: 160, column: 22, scope: !6304)
!6322 = !{!3228, !2817, i64 16}
!6323 = !DILocation(line: 160, column: 45, scope: !6304)
!6324 = !DILocation(line: 160, column: 49, scope: !6304)
!6325 = !DILocation(line: 160, column: 29, scope: !6304)
!6326 = !DILocation(line: 160, column: 56, scope: !6304)
!6327 = !DILocation(line: 161, column: 1, scope: !6304)
!6328 = !DILocation(line: 160, column: 5, scope: !6304)
!6329 = distinct !DISubprogram(name: "ucp_ep_md_index", scope: !3746, file: !3746, line: 146, type: !6330, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !6332)
!6330 = !DISubroutineType(types: !6331)
!6331 = !{!585, !378, !1913}
!6332 = !{!6333, !6334}
!6333 = !DILocalVariable(name: "ep", arg: 1, scope: !6329, file: !3746, line: 146, type: !378)
!6334 = !DILocalVariable(name: "lane", arg: 2, scope: !6329, file: !3746, line: 146, type: !1913)
!6335 = !DILocation(line: 146, column: 55, scope: !6329)
!6336 = !DILocation(line: 146, column: 76, scope: !6329)
!6337 = !DILocation(line: 148, column: 26, scope: !6329)
!6338 = !DILocation(line: 148, column: 12, scope: !6329)
!6339 = !DILocation(line: 148, column: 31, scope: !6329)
!6340 = !DILocation(line: 148, column: 40, scope: !6329)
!6341 = !DILocation(line: 148, column: 5, scope: !6329)
!6342 = distinct !DISubprogram(name: "ucp_request_send_buffer_reg", scope: !40, file: !40, line: 514, type: !6343, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !98, retainedNodes: !6345)
!6343 = !DISubroutineType(types: !6344)
!6344 = !{!345, !355, !588, !139}
!6345 = !{!6346, !6347, !6348}
!6346 = !DILocalVariable(name: "req", arg: 1, scope: !6342, file: !40, line: 514, type: !355)
!6347 = !DILocalVariable(name: "md_map", arg: 2, scope: !6342, file: !40, line: 514, type: !588)
!6348 = !DILocalVariable(name: "uct_flags", arg: 3, scope: !6342, file: !40, line: 515, type: !139)
!6349 = !DILocation(line: 514, column: 44, scope: !6342)
!6350 = !DILocation(line: 514, column: 62, scope: !6342)
!6351 = !DILocation(line: 515, column: 38, scope: !6342)
!6352 = !DILocation(line: 517, column: 35, scope: !6342)
!6353 = !DILocation(line: 517, column: 40, scope: !6342)
!6354 = !DILocation(line: 517, column: 45, scope: !6342)
!6355 = !DILocation(line: 517, column: 49, scope: !6342)
!6356 = !DILocation(line: 517, column: 57, scope: !6342)
!6357 = !DILocation(line: 517, column: 66, scope: !6342)
!6358 = !DILocation(line: 518, column: 42, scope: !6342)
!6359 = !DILocation(line: 518, column: 47, scope: !6342)
!6360 = !DILocation(line: 518, column: 52, scope: !6342)
!6361 = !DILocation(line: 518, column: 60, scope: !6342)
!6362 = !DILocation(line: 518, column: 65, scope: !6342)
!6363 = !DILocation(line: 518, column: 70, scope: !6342)
!6364 = !DILocation(line: 519, column: 35, scope: !6342)
!6365 = !DILocation(line: 519, column: 40, scope: !6342)
!6366 = !DILocation(line: 519, column: 45, scope: !6342)
!6367 = !DILocation(line: 519, column: 56, scope: !6342)
!6368 = !DILocation(line: 519, column: 61, scope: !6342)
!6369 = !DILocation(line: 519, column: 66, scope: !6342)
!6370 = !DILocation(line: 519, column: 72, scope: !6342)
!6371 = !DILocation(line: 520, column: 54, scope: !6342)
!6372 = !DILocation(line: 520, column: 59, scope: !6342)
!6373 = !DILocation(line: 520, column: 64, scope: !6342)
!6374 = !DILocation(line: 520, column: 35, scope: !6342)
!6375 = !DILocation(line: 520, column: 74, scope: !6342)
!6376 = !DILocation(line: 521, column: 35, scope: !6342)
!6377 = !DILocation(line: 517, column: 12, scope: !6342)
!6378 = !DILocation(line: 517, column: 5, scope: !6342)
!6379 = !DISubprogram(name: "ucp_request_memory_reg", scope: !238, file: !238, line: 518, type: !6380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6380 = !DISubroutineType(types: !6381)
!6381 = !{!345, !6155, !588, !339, !551, !350, !6157, !918, !355, !139}
!6382 = !DISubprogram(name: "ucp_worker_progress", scope: !220, file: !220, line: 2267, type: !6383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6383 = !DISubroutineType(types: !6384)
!6384 = !{!139, !384}
!6385 = !DISubprogram(name: "ucp_request_release", scope: !6386, file: !6386, line: 41, type: !879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6386 = !DIFile(filename: "api/ucp_compat.h", directory: "/local-ssd/ucx-imxvliwpzgzcqa2wiesponuyfnek2h3t-build/aidengro/spack-stage-ucx-1.14.1-imxvliwpzgzcqa2wiesponuyfnek2h3t/spack-src/src/ucp", checksumkind: CSK_MD5, checksum: "36a235047572d6e0cfebd20e38a3ef52")
